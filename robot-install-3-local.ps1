./helper-source.ps1
py -m ensurepip
py -m pip install -U pip wheel setuptools
py -m pip install -U -r ./data/packages.txt -r ./data/packages-robot.txt -r ./data/ide.txt
