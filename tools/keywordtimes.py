#!/usr/bin/env python

#  Copyright 2014 Nokia Solutions and Networks
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

"""\
This is a tool that helps you to profile where the most of the time in your test cases is consumed.
This is helpful for example in situations where you want to optimise the test execution times.
"""

from __future__ import division, print_function

import argparse
import functools
import math

from robot.api import ExecutionResult, ResultVisitor


class KeywordTimes(ResultVisitor):

    def __init__(self):
        self.keywords = {}

    def end_keyword(self, keyword):
        name = keyword.name
        if name not in self.keywords:
            self.keywords[name] = KeywordsTime(name)
        self.keywords[name].elapsedtimes.append(keyword.elapsedtime)


@functools.total_ordering
class KeywordsTime(object):

    def __init__(self, name):
        self.name = name
        self.elapsedtimes = []

    @property
    def elapsed(self):
        return sum(self.elapsedtimes) / 1000

    @property
    def calls(self):
        return len(self.elapsedtimes)

    @property
    def average_time(self):
        return round(self.elapsed / self.calls, 3)

    @property
    def median_time(self):
        s = sorted(self.elapsedtimes)
        half = (len(s) - 1) / 2
        half_low = int(math.floor(half))
        half_high = int(math.ceil(half))
        return round((s[half_low] + s[half_high]) / 2000, 3)

    @property
    def variance(self):
        squares = [(t / 1000) ** 2 for t in self.elapsedtimes]
        return sum(squares) / len(squares) - (self.elapsed / self.calls) ** 2

    @property
    def standard_deviation(self):
        return round(self.variance ** 0.5, 3)

    @property
    def stdev_per_avgtime(self):
        if self.average_time == 0:
            return 0
        return round(100 * self.standard_deviation / self.average_time, 2)

    def __eq__(self, other):
        return (isinstance(other, KeywordsTime)
                and self.elapsed == other.elapsed)

    def __lt__(self, other):
        return other.elapsed < self.elapsed


def _print_results(times, shown_keywords, limit):
    s = sorted(times.keywords.values())
    print('Total time (s) |   Calls | Avg time (s) | Median time (s) | Stdev (s) | Stdev/avg time % | Keyword name')
    shown = 0
    for k in s:
        if shown == shown_keywords:
            break
        if limit is not None and k.stdev_per_avgtime > limit:
            continue
        shown += 1
        print('{k.elapsed:>14} | '
              '{k.calls:>7} | '
              '{k.average_time:>12} | '
              '{k.median_time:>15} | '
              '{k.standard_deviation:>9} | '
              '{k.stdev_per_avgtime:>16} | '
              u'{k.name}'.format(k=k))
    print('Showing %d of total keywords %d' % (shown, len(times.keywords)))


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--limit', '-l', type=float, help='Filter out keywords with larger percentage'
            ' of stdev/avg time than LIMIT. This helps by filtering out most used "primitive" keywords'
            ' such as Sleep and Run Keyword If etc. and let\'s you focus on the keywords that very often'
            ' take a lot of time to execute (in other words are most fruitful places to focus optimisation effort).')
    parser.add_argument('--show', '-s', default=100, type=int, help='Max number of shown keywords. Default is 100.')
    parser.add_argument('source', help='output from a Robot Framework execution to analyze')
    args = parser.parse_args()
    try:
      resu = ExecutionResult(args.source)
      times = KeywordTimes()
      resu.visit(times)
      _print_results(times, args.show, args.limit)
    except:
        print(__doc__)
        raise
