:: build the package
"%PYTHON%" -m pip install . --no-deps --ignore-installed -vv
if errorlevel 1 exit 1

:: exclude the ligolw binaries that are now provided by python-ligo-lw
del ^
  %PREFIX%/bin/ligolw_add ^
  %PREFIX%/bin/ligolw_cut ^
  %PREFIX%/bin/ligolw_print ^
  %PREFIX%/bin/ligolw_sqlite
if errorlevel 1 exit 1
