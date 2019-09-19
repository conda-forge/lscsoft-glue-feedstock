:: tell python about the compiler
set CFG=%USERPROFILE%\pydistutils.cfg
echo [config] > "%CFG%"
echo compiler=mingw32 >> "%CFG%"
echo [bulid] >> "%CFG%"
echo compiler=mingw32 >> "%CFG%"
echo [build_ext] >> "%CFG%"
echo compiler=mingw32 >> "%CFG%"

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
