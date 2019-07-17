#!/bin/bash

if [ -d "/home/$USER/bin" ]; then
    echo "Local /bin found"
else 
    echo "Local '/bin' not found. Creating one now."
    mkdir ~/bin/
fi

echo "Installing c++proj"

cp c++proj ~/bin
if [ $? -eq 0 ]; then
    echo Installation succeded
else
    echo Installation failed
fi
echo "PATH=/home/$USER/bin:$PATH" >> ~/.bashrc
source ~/.bashrc
