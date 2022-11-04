py -m ensurepip
py -m pip install -U pip setuptools wheel

# binary install https://www.lfd.uci.edu/~gohlke/pythonlibs
# https://www.lfd.uci.edu/~gohlke/pythonlibs/#lxml

py -m pip install --upgrade `
    -r ./data/packages-robot.txt `
    -r ./data/ide.txt `
    -r ./data/support_tools.txt `
    ./bin/lxml-4.9.0-cp311-cp311-win_amd64.whl

py -m webdrivermanager chrome firefox

py -m robot.run --version