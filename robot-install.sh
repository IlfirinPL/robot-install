python3 -m pip install -U pip
python3 -m pip install -U \
--upgrade-strategy eager \
-r ./data/packages-robot.txt \
-r ./data/ide.txt \
-r ./data/rpa.txt \

python3 -m webdrivermanager chrome firefox