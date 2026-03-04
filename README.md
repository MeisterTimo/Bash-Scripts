# Bash-Script Tutorial

Als Beispiel nehmen wir ein Script namens: `test.sh`

Um das Bash-Script auszuführen, einfach in den Ordner gehen, wo die Datei liegt,  
und dann Folgendes eingeben: `./test.sh`

Wenn das Script noch nicht ausführbar ist, sollte so eine Meldung kommen: `bash: ./test.sh: Keine Berechtigung`

Um das zu beheben, muss die Datei, also das Script, ausführbar sein.

### Skript ausführbar machen
Dafür muss man in das Terminal folgenden Befehl eingeben: `chmod +x test.sh`

> WICHTIG NOCH: Niemals ein Bash-Script ausführen, ohne dessen Inhalt zu verstehen, denn in solchen Bash-Scripts kann auch Schadcode enthalten sein. Also besser einmal mehr nachlesen und verstehen, als blind irgendwas auszuführen!
> 
> INFO: Dieses Tutorial wurde auf einem reinen Debian-Betriebssystem von mir getestet.  
> Es wird bei vielen anderen Linux-Distros sehr wahrscheinlich genau so funktionieren, aber es gibt seltene Ausnahmen.
