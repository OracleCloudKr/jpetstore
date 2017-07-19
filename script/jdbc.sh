#!/bin/sh

scp -o StrictHostKeyChecking=no -i ./privateKey script/create-jdbc.* opc@140.86.1.66:/tmp/
ssh -o StrictHostKeyChecking=no -i ./privateKey opc@140.86.1.66 "chmod +x /tmp/create-jdbc.sh"
ssh -o StrictHostKeyChecking=no -i ./privateKey opc@140.86.1.66 "/tmp/create-jdbc.sh"

