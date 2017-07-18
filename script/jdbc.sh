#!/bin/sh

scp -i ./privateKey script/create-jdbc.* opc@140.86.1.66:/tmp/
ssh -i ./privateKey opc@140.86.1.66 "chmod +x /tmp/create-jdbc.sh"

