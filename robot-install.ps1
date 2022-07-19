py -m ensurepip
py -m pip install -U pip wheel setuptools
py -m pip install -U --upgrade-strategy eager `
    -r ./data/packages-robot.txt `
    -r ./data/ide.txt `

py -m webdrivermanager chrome firefox