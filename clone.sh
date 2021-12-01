cd ~
git clone https://github.com/adafruit/circuitpython.git
cd ~/circuitpython
#git submodule sync --quiet --recursive
#git submodule update --init --progress
make fetch-submodules

pip3 install -r requirements-dev.txt
pip3 install --upgrade click==7.1.2

