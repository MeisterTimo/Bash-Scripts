#!/bin/bash

set -e # Skript wird gestoppt, wenn ein Fehler auftritt

echo "1. Paketliste aktualisieren"
sudo apt update

echo "2. Führe Upgrades durch"
sudo apt upgrade -y

echo "3. Entferne nicht mehr benötigte Pakete"
sudo apt autoremove -y
sudo apt autoclean -y

echo "4. Flatpak Updates (falls installiert)"
if command -v flatpak &> /dev/null; then
    sudo flatpak update -y
    sudo flatpak uninstall --unused -y
else
    echo "Flatpak ist nicht installiert, überspringe."
fi

echo "Alle Updates sind nun abgeschlossen!"
