python3.10 -m pip install -U pip
python3.10 -m pip install -U \
--upgrade-strategy eager \
-r ./data/packages-robot.txt \
-r ./data/ide.txt \
-r ./data/support_tools.txt

python3.10 -m webdrivermanager chrome firefox