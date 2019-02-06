#!/bin/bash

# build the package
${PYTHON} -m pip install . --no-deps --ignore-installed -vv

# exclude the ligolw binaries that are now provided by python-ligo-lw
rm -vf \
  ${PREFIX}/bin/ligolw_add \
  ${PREFIX}/bin/ligolw_cut \
  ${PREFIX}/bin/ligolw_print \
  ${PREFIX}/bin/ligolw_sqlite
