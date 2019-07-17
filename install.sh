#!/bin/bash

sudo chmod +x c++proj && sudo cp c++proj /usr/local/bin/
if [ $? -eq 0 ]; then
    echo Installation succeded
else
    echo Installation failed
fi
