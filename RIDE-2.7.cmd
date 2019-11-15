@pushd %~dp0
@SET PYTHONIOENCODING="UTF-8"
@SET PY_PYTHON=2.7
@title RF Python  %PY_PYTHON%
@set PYTHON_HOME_INSTALL=%LOCALAPPDATA%\Programs\Python\Python27
@set PATH=%PYTHON_HOME_INSTALL%;%PYTHON_HOME_INSTALL%\scripts;C:\Python27;C:\Python27\scripts;%PATH%
@py -%PY_PYTHON% -m robotide.__init__ || python -m robotide.__init__
