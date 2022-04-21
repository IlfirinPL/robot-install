py -m pip install -U pip wheel setuptools
py -m pip install -U --upgrade-strategy eager `
    -r ./data/packages-robot.txt `
    -r ./data/ide.txt `
    -r ./data/rpa.txt `
    --no-deps robotframework `
    --no-deps setuptools

py -m webdrivermanager chrome firefox