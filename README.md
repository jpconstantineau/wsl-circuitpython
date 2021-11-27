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
