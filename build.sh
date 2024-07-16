#!/bin/sh

./scripts/feeds update -a
./scripts/feeds install -a
make menuconfig

make download -j64
make V=s -j64
