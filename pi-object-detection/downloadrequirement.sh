#!/bin/bash

if [ $# -eq 0 ]; then
  DATA_DIR="/tmp"
else
  DATA_DIR="$1"
fi

# Install required packages
sudo apt-get update
sudo apt-get dist-upgrade
python3 -m pip3 install -y numpy
python3 -m pip3 install -y Pillow
python3 -m pip3 install -y picamera
sudo apt-get install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get install libxvidcore-dev libx264-dev
sudo apt-get install qt4-dev-tools libatlas-base-dev
python3 -m pip3 install -y opencv-python==3.4.6.27

echo -e "All Module Installed"
echo -e "Files downloaded to ${DATA_DIR}"
