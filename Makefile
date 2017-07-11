#TODO change TOOLCHAIN variable to your toolchain path
export TOOLCHAIN=arm-linux-gnueabihf-

.PHONY: adb

all: adb

adb:
	make -C adb

adb_clean:
	make -C adb clean
