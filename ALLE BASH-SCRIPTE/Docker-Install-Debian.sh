#!/bin/bash

set -e

echo "1. Vorbereiten der Docker-Installation"
sudo apt update
sudo apt install -y ca-certificates curl

echo "2. Docker GPG-Schlüssel wurden erfolgreich hinzugefügt."
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

echo "3. Docker-Repository wurde erfolgreich eingetragen."
sudo tee /etc/apt/sources.list.d/docker.sources <<EOF
Types: deb
URIs: https://download.docker.com/linux/debian
Suites: $(. /etc/os-release && echo "$VERSION_CODENAME")
Components: stable
Signed-By: /etc/apt/keyrings/docker.asc
EOF

echo "4. Paketlisten werden aktualisiert."
sudo apt update

echo "5. Docker wird installiert."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "Docker-Installation abgeschlossen."
