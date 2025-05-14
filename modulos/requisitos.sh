#!/bin/bash

# ----- Variables ----- #
declare -a requirements

printf "\n:: SE VA A PROCEDER A LA INSTALACION DE REQUISITOS\n\n"

# ----- Lógica ----- #
mapfile -t requirements <requisitos.txt
sudo pacman --needed -S ${requirements[@]}
