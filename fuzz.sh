#!/bin/bash
CC=/usr/bin/afl-gcc-fast CXX=/usr/bin/afl-g++-fast ./configure
sudo afl-system-config
afl-fuzz -i seeds -o output -x gpp.dict -- src/gpp
