#!/bin/bash

# Autor: anmomu92

printf "\n:: ACTIVANDO BLUETOOTH\n\n"

if lsmod | grep -q btusb; then
    printf "El módulo bluetooth está activo\n\n"

    sudo systemctl start bluetooth
    sudo systemctl enable bluetooth
else
    printf "\nEl módulo bluetooth no está activo\n\n"
fi
