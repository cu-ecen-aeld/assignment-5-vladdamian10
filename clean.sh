#!/bin/bash
SCRIPT_DIR=$(cd $(dirname $0); pwd)

echo "Executing make -C ${SCRIPT_DIR}/buildroot distclean"
make -C ${SCRIPT_DIR}/buildroot distclean

echo "done"

exit 0

