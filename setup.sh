sudo apt update && upgrade
sudo apt install python3 python3-pip ipython3
sudo apt install build-essential
sudo add-apt-repository ppa:pybricks/ppa
sudo apt install git gettext uncrustify

curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update
sudo apt install gh


curl -l https://armkeil.blob.core.windows.net/developer/Files/downloads/gnu-rm/10-2020q4/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2 -o ~/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2
mkdir ~/bin
cd ~/bin
tar xvf ~/gcc-arm-none-eabi-10-2020-q4-major-x86_64-linux.tar.bz2


echo 'export PATH=/home/$USER/bin/gcc-arm-none-eabi-10-2020-q4-major/bin:$PATH' | sudo tee -a  ~/.bash_profile
echo 'export PATH=/home/$USER/.local/bin:$PATH' | sudo tee -a  ~/.bash_profile

export PATH=/home/$USER/bin/gcc-arm-none-eabi-10-2020-q4-major/bin:$PATH
export PATH=/home/$USER/.local/bin:$PATH

which arm-none-eabi-gcc


cd ~
git clone https://github.com/adafruit/circuitpython.git
cd ~/circuitpython
git submodule sync --quiet --recursive
git submodule update --init --progress

pip3 install -r requirements-dev.txt
pip3 install --upgrade click==7.1.2


cd ~/circuitpython/port/nrf
make BOARD=pca10100 V=2
