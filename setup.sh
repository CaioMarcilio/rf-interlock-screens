#!/bin/bash

echo "---- Installing Anaconda ----"
sudo wget https://repo.anaconda.com/archive/Anaconda3-2022.10-Linux-x86_64.sh
sudo ./Anaconda3-2022.10-Linux-x86_64.sh

echo "---- Preparing Environment ----"
conda create -n rf-interlock-screens python=3.8 "pyqt >=5,<5.15" pip numpy scipy six psutil pyqtgraph pydm -c conda-forge
conda activate rf-interlock-screens

echo "Finished installation"