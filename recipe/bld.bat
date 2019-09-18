:: build the package
%PYTHON% -m pip install . --no-deps --ignore-installed -vv
if errorlevel 1 exit 1

:: exclude the ligolw binaries that are now provided by python-ligo-lw
del ^
  %LIBRARY_BIN%\ligolw_add ^
  %LIBRARY_BIN%\ligolw_cut ^
  %LIBRARY_BIN%\ligolw_print ^
  %LIBRARY_BIN%\ligolw_sqlite
if errorlevel 1 exit 1
