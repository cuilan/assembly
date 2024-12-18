#!/usr/bin/env python
# -*- coding: utf-8 -*-

"""
@author: zhang.yan
@date: 2024-12-17 
"""

def dec2hex():
    for i in range(15):
        print(f"DEC: {i:02d} \tHEX: {i:x} \tOCT: {i:02o} \tBIN: {i:04b}")


def hex2bin_write():
    with open("hex.bin", "wb") as f:
        for i in range(256):
            byte = i.to_bytes(1, byteorder='big')
            f.write(byte)


def dec2DoubleHex():
    with open("test.bin", "wb") as f:
        for var in range(256):
            var = str(var)
            var = int(var, base=16)
            b = var.to_bytes(2, byteorder='little')
            print(b)
            f.write(b)


if __name__ == "__main__":
    # dec2hex()
    # hex2bin_write()
    dec2DoubleHex()
