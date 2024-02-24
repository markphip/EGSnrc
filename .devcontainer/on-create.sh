#!/bin/bash

# This runs when the devcontainer is being created

# Install required packages
echo "::step::Installing required packages for EGSnrc ..."
sudo apt update
sudo apt install -y git gcc g++ gfortran make tk wish grace libmotif-dev expect qtbase5-dev

# Build the application
echo "::step::Building EGSnrc ..."
export USER=vscode
/workspaces/EGSnrc/HEN_HOUSE/scripts/configure.expect devcontainer.conf 1 || true

# Configure .bashrc
echo "export EGS_HOME=/workspaces/EGSnrc/egs_home/" >> ~/.bashrc
echo "export EGS_CONFIG=/workspaces/EGSnrc/HEN_HOUSE/specs/devcontainer.conf" >> ~/.bashrc
echo "source /workspaces/EGSnrc/HEN_HOUSE/scripts/egsnrc_bashrc_additions" >> ~/.bashrc
