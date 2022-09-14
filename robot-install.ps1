py -m ensurepip
py -m pip install -U pip setuptools
py -m pip install -U --upgrade-strategy eager `
    -r ./data/packages-robot.txt `
    -r ./data/ide.txt `
    -r ./data/support_tools.txt

py -m webdrivermanager chrome firefox