#!/bin/sh

scp -o StrictHostKeyChecking=no -i ./privateKey script/create-jdbc.* opc@{JCS_PUBLIC_IP}:/tmp/
ssh -o StrictHostKeyChecking=no -i ./privateKey opc@{JCS_PUBLIC_IP} "chmod +x /tmp/create-jdbc.sh"
ssh -o StrictHostKeyChecking=no -i ./privateKey opc@{JCS_PUBLIC_IP} "/tmp/create-jdbc.sh"

