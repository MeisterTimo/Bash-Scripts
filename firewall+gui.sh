#!/bin/bash

set -e

echo "Prüfe Root Rechte..."
if [ "$EUID" -ne 0 ]; then
echo "Für dieses Skript werden root rechte benötigt!"
echo "Bitte führe es mit sudo aus: sudo $0"
exit 1
fi
echo "Root Rechte OK!"

echo "Paketliste wird aktualisiert..."
apt update

echo "Firewall und GUI werden installiert..."
apt install -y ufw gufw

ufw default deny incoming
ufw default allow outgoing
echo "Standardkonfigurationen der Firewall wurden festgelegt!"

echo "Möchtest du SSH erlauben? (J/N)"
read x
if [ "$x" = "J" ] || [ "$x" = "j" ] || [ "$x" = "Y" ] || [ "$x" = "y" ]; then
ufw allow ssh
echo "SSH wurde zugelassen!"
else 
echo "SSH wurde abgelehnt!"
fi

ufw --force enable
echo "Die Installation und Konfiguration war erfolgreich!"
echo "Die Firewall ist nun aktiv! Status:"
ufw status verbose
