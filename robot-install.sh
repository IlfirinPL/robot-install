alias python="python3.11"

python --version

python -m pip install -U pip

python -m pip install -U \
--upgrade-strategy eager \
-r ./data/packages-robot.txt \
-r ./data/ide.txt \
-r ./data/support_tools.txt

python -m webdrivermanager chrome firefox