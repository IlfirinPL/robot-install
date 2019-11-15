@pushd %~dp0
@SET PYTHONIOENCODING="UTF-8"
@SET PY_PYTHON=3.7
@title RF Python  %PY_PYTHON%
@set PYTHON_HOME_INSTALL=%LOCALAPPDATA%\Programs\Python\Python37
@set PATH=%PYTHON_HOME_INSTALL%;%PYTHON_HOME_INSTALL%\scripts;C:\Python37;C:\Python37\scripts;%PATH%
@py -%PY_PYTHON% -m robotide.__init__

