./helper-source.ps1
py -m ensurepip
py -m pip uninstall enum34 robotframework-excel -yqq
py -m pip install -U --force -r ./../data/packages.txt
py -m pip install -U --force -r ./../data/packages-robot.txt
py -m pip install -U --force -r ./../data/ide.txt
