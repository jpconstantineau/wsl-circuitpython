cd ~/circuitpython
make -C mpy-cross
cd ~/circuitpython/ports/nrf
make clean BOARD=pca10100

make V=1 BOARD=pca10100 sd
make V=1 BOARD=pca10100 flash
