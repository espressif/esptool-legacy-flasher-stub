/*
 sram range: 0x4081'0000 ~ 0x4086'7FFF (384KB)
*/
MEMORY {
  iram : org = 0x40810000, len = 0x1000
  dram : org = 0x40811000, len = 0x18000
}

ENTRY(stub_main)

SECTIONS {
  .text : ALIGN(4) {
    *(.literal)
    *(.text .text.*)
  } > iram

  .bss : ALIGN(4) {
    _bss_start = ABSOLUTE(.);
    *(.bss)
    _bss_end = ABSOLUTE(.);
  } > dram

  .data : ALIGN(4) {
    *(.data)
    *(.rodata .rodata.*)
  } > dram
}

INCLUDE "rom_32h4.ld"
