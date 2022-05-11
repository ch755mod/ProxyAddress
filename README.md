# Automatically Mail&ProxyAddress add when creating a ActiveDirectory User
Am Windows AD Server ein Ordner mit der Bezeichnung "Script" im Root Verzeichnis erstellen
ProxyAddress.ps1 in den Script Ordner Hochladen
ProxyAddress.ps1 bearbeiten, die richtige domain eingeben und die korrekte OU wo die Benutzer eingetragen/erstellt werden.
Automatisieren mit der Aufgebanplanung, jedes mal wenn ein neuer Bentzer erstellt wird, wird das Scrit ProxyAddress.ps1 ausgeführt
Aufgebanplanung öffnen
Das CheckProxyAddress.xml in der Aufgebanplanung importieren und bestätigen.
Benutzer erstellen und kontrollieren ob unter "mail" und "ProxyAddress" die richtigen Daten eingetragen sind.


