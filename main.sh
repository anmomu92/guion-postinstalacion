#!/bin/bash

# Guion postinstalacion
# Autor: anmomu92
#

# ----- Constantes ----- #
WORKING_DIR="$(pwd)"

# ----- Variables ----- #
declare -a requirements

# ----- Lógica ----- #

if [ "$(id -u)" -eq 0 ]; then
    echo "##############"
    echo "Este guion no se debe ejecutar como super usuario"
    echo "##############"
fi

printf "\n:: GUION POSTINSTALACION DE ANMOMU92\n\n"

sudo pacman --noconfirm --needed -Syu

# Instalación de requisitos
printf "\n:: SE VA A PROCEDER A LA INSTALACION DE REQUISITOS\n\n"
mapfile -t requirements <requisitos.txt
sudo pacman --needed -S ${requirements[@]}

# Bluetooth
source modulos/bluetooth.sh
