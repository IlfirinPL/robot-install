@pushd %~dp0
@SET PYTHONIOENCODING="UTF-8"
@SET PY_PYTHON=3.9
@title RF Python  %PY_PYTHON%
@set PYTHON_HOME_INSTALL=%LOCALAPPDATA%\Programs\Python\Python39
@set PATH=%LOCALAPPDATA%\rasjani\WebDriverManager\bin;%PYTHON_HOME_INSTALL%;%PYTHON_HOME_INSTALL%\scripts;C:\Python39;C:\Python39\scripts;%PATH%
@py -m robotide.__init__