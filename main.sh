#!/bin/bash

# Guion postinstalacion
# Autor: anmomu92
#

# ----- Constantes ----- #

# ----- Variables ----- #

# ----- Lógica ----- #

# Comprobacion de usuario
if [ "$(id -u)" -eq 0 ]; then
    echo "##############"
    echo "Este guion no se debe ejecutar como super usuario"
    echo "##############"fernando diaz villanueva
fi

printf "\n:: GUION POSTINSTALACION DE ANMOMU92\n\n"

# Actualizacion de repositorios
sudo pacman --noconfirm --needed -Syu

# Requisitos
source modulos/requisitos.sh

# Dotfiles
source modulos/dotfiles.sh

# Shell
source modulos/shell.sh

# Bluetooth
source modulos/bluetooth.sh
