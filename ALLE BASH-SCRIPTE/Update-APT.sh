#!/bin/bash

set -e

echo "1. Paketliste wird aktualisiert."
sudo apt update

echo "2. Führe Upgrades durch."
sudo apt upgrade -y

echo "3. Entferne nicht mehr benötigte Pakete."
sudo apt autoremove -y
sudo apt autoclean -y

echo "Alle Updates sind nun abgeschlossen!"
