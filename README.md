# Automatically Mail&ProxyAddress add when creating a ActiveDirectory User
1.Am Windows AD Server ein Ordner mit der Bezeichnung "Script" im Root Verzeichnis erstellen

2.ProxyAddress.ps1 in den Script Ordner Hochladen

3.ProxyAddress.ps1 bearbeiten, die richtige domain eingeben und die korrekte OU wo die Benutzer eingetragen/erstellt werden.

4.Automatisieren mit der Aufgebanplanung, jedes mal wenn ein neuer Bentzer erstellt wird, wird das Scrit ProxyAddress.ps1 ausgeführt

5.Aufgebanplanung öffnen

6.Das CheckProxyAddress.xml in der Aufgebanplanung importieren und bestätigen.

7.Benutzer erstellen und kontrollieren ob unter "mail" und "ProxyAddress" die richtigen Daten eingetragen sind.


