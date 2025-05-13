#!/bin/bash

# Guion postinstalacion
# Autor: anmomu92
#

if [ "$(id -u)" -eq 0 ]; then
    echo "##############"
    echo "Este guion no se debe ejecutar como super usuario"
    echo "##############"
fi

printf "\n:: GUION POSTINSTALACION DE ANMOMU92\n\n"

sudo pacman --noconfirm --needed -Syu
