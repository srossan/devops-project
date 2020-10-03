#!/bin/bash

# Setup (will work out of the root's user home directory)
cd ~

# Clone github repository for this project
git clone git@github.com:srossan/devops-project.git

# Create python virtual machine
python3 -m venv ~/.udacity-devops
source ~/.udacity-devops/bin/activate
cd devops-project
