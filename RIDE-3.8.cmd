@pushd %~dp0
@SET PYTHONIOENCODING="UTF-8"
@SET PY_PYTHON=3.8
@title RF Python  %PY_PYTHON%
@set PYTHON_HOME_INSTALL=%LOCALAPPDATA%\Programs\Python\Python38
@set PATH=%LOCALAPPDATA%\salabs_\WebDriverManager\bin;%PYTHON_HOME_INSTALL%;%PYTHON_HOME_INSTALL%\scripts;C:\Python38;C:\Python38\scripts;%PATH%
@py -%PY_PYTHON% -m robotide.__init__

