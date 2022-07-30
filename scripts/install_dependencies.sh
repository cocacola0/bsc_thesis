sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y install build-essential cmake unzip pkg-config libstdc++.i686\
	libjpeg-dev libpng-dev libtiff-dev libavcodec-dev libavformat-dev \
	libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk-3-dev \
	libcanberra-gtk* libatlas-base-dev gfortran python3-dev libusb-1.0-0-dev \

pip install numpy
pip install "picamera[array]"
pip install imutils

git clone --depth 1 https://github.com/openvinotoolkit/open_model_zoo
cd open_model_zoo/tools/model_tools && python3 -m pip install -r requirements.in
cd ..
cd ..
cd ..
python3 inference.py

rm -rf open_model_zoo