### Machine Settings
#### Taskleisteneinstellungen
##### Widgets deaktivieren (ab Windows 11 24H2)
~~~
Comuterkonfiguration > Richtlinien > Administrative Vorlagen > Windows-Komponenten > Widgets
Zulassen von Widgets > Deaktiviert
~~~
##### Suche auf der Taskleiste
~~~
Comuterkonfiguration > Richtlinien > Administrative Vorlagen > Windows-Komponenten > Suche
Konfiguriert die Suche auf der Taskleiste > Aktiviert > Auf der Taskleiste suchen > Ausblenden
~~~
##### Taskview deaktivieren
~~~
Comuterkonfiguration > Richtlinien > Administrative Vorlagen > Startmenü und Taskleiste
Schaltfläche „TaskView“ ausblenden > Aktiviert
~~~

### User Settings
#### Windows Explorer Einstellungen (Datei-Explorer)
##### Datei-Explorer öffnen für: Dieser PC
~~~
Benutzerkonfiguration > Einstellungen > Windows-Einstellungen > Registrierung
Struktur: HKEY_CURRENT_USER
Schlüsselpfad: Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
Wertname: LaunchTo
Werttyp: REG_DWORD
Wertdaten: 1
~~~   
##### Erweiterungen bei bekannten Dateitypen ausblenden: Abwählen
~~~
Benutzerkonfiguration > Einstellungen > Windows-Einstellungen > Registrierung
Struktur: HKEY_CURRENT_USER
Schlüsselpfad: Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
Wertname: HideFileExt
Werttyp: REG_DWORD
Wertdaten: 0
~~~
##### Verteckte Dateien und Ordner: Ausgeblendete Dateien, Ordner und Laufwerke anzeigen
~~~
Benutzerkonfiguration > Einstellungen > Windows-Einstellungen > Registrierung
Struktur: HKEY_CURRENT_USER
Schlüsselpfad: Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
Wertname: Hidden
Werttyp: REG_DWORD
Wertdaten: 1
~~~
