#!/bin/bash

# Build the GUI Applications
echo "::step::Building the EGSnrc GUI applications..."

export QTDIR=/usr/lib/qt5
cd /workspaces/EGSnrc/HEN_HOUSE/gui/ && make --quiet --print-directory
cd /workspaces/EGSnrc/HEN_HOUSE/egs++/view/ && make --quiet --print-directory
