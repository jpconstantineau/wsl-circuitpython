sudo apt update && upgrade
sudo apt install python3 python3-pip ipython3
sudo apt install build-essential
sudo add-apt-repository ppa:pybricks/ppa
sudo apt install git gettext uncrustify

curl -l https://developer.arm.com/-/media/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2?revision=ca0cbf9c-9de2-491c-ac48-898b5bbc0443&la=en&hash=68760A8AE66026BCF99F05AC017A6A50C6FD832A
mkdir ~/bin
cd ~/bin
tar xvf ~/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2

export PATH=/home/$USER/bin/gcc-arm-none-eabi-10-2020-q4-major/bin:$PATH

which arm-none-eabi-gcc


cd ~
git clone https://github.com/adafruit/circuitpython.git
cd circuitpython
git submodule sync --quiet --recursive
git submodule update --init --progress

pip3 install -r requirements-dev.txt
pip3 install --upgrade click==7.1.2


cd port/nrf
make BOARD=pca10100 V=2
