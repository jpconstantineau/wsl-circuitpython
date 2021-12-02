# wsl-circuitpython

when you have WSL installed on windows

### Install Distribution:

```
wsl --install -d Ubuntu
```

Enter username

Enter password

```
cd ~
git clone https://github.com/jpconstantineau/wsl-circuitpython.git
cd wsl-circuitpython
git config --global user.name "FIRST_NAME LAST_NAME"
git config --global user.email "MY_NAME@example.com"
./setup.sh
```

### UnInstall and Delete Distribution

wsl --unregister Ubuntu


### Windows Prerequisites

* Install jlink: https://www.segger.com/downloads/jlink/JLink_Windows_V758d_x86_64.exe
* Install nrf52 command line tools https://www.nordicsemi.com/Products/Development-tools/nRF-Command-Line-Tools/Download?lang=en#infotabs
