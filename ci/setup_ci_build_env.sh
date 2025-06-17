#!/bin/bash

set -exuo pipefail

ESP8266_TOOLCHAIN_URL="https://dl.espressif.com/dl/xtensa-lx106-elf-linux64-1.22.0-92-g8facf4c-5.2.0.tar.gz"
XTENSA_TOOLCHAIN_URL="https://github.com/espressif/crosstool-NG/releases/download/esp-15.1.0_20250607/xtensa-esp-elf-15.1.0_20250607-x86_64-linux-gnu.tar.xz"
RISCV_TOOLCHAIN_URL="https://github.com/espressif/crosstool-NG/releases/download/esp-15.1.0_20250607/riscv32-esp-elf-15.1.0_20250607-x86_64-linux-gnu.tar.xz"

# Setup shell script to download & configure ESP8266 & ESP32 toolchains
# for building the flasher stub program

mkdir -p ${TOOLCHAIN_DIR}
cd ${TOOLCHAIN_DIR}

if ! [ -d ${ESP8266_BINDIR} ]; then
    wget --continue --no-verbose "${ESP8266_TOOLCHAIN_URL}"
    tar zxf $(basename ${ESP8266_TOOLCHAIN_URL})
fi

if ! [ -d ${XTENSA_BINDIR} ]; then
    # gitlab CI image may already have this file
    wget --continue --no-verbose "${XTENSA_TOOLCHAIN_URL}"
    tar Jxf $(basename ${XTENSA_TOOLCHAIN_URL})
fi

if ! [ -d ${RISCV_BINDIR} ]; then
    # gitlab CI image may already have this file
    wget --continue --no-verbose "${RISCV_TOOLCHAIN_URL}"
    tar Jxf $(basename ${RISCV_TOOLCHAIN_URL})
fi
