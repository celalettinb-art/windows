# Warning: Before executing any script, command, or software obtained from the Internet, ensure that you have carefully reviewed and fully understood its functionality.
#          Running unverified or untrusted code may result in system damage, data loss, or security breaches.
# Disclaimer: The author assumes no responsibility or liability for any damage, data loss, or other issues that may arise from the use or misuse of this script or information. Use it at your own risk.
# Run in PS: iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/celalettinb-art/windows/refs/heads/main/GPOs/File-Explorer_TaskbarSettings.ps1'))

# Machine settings
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /t REG_DWORD /d 0 /f # Widgets deaktivieren (ab Windows 11 24H2)
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v SearchOnTaskbarMode /t REG_DWORD /d 0 /f # Suche auf der Taskleiste
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v HideTaskViewButton /t REG_DWORD /d 1 /f # Taskview deaktivieren
reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Explorer" /v NoPinningStoreToTaskbar /t REG_DWORD /d 1 /f # MS Store von der Taskleiste entfernen

# User settings
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f # Datei-Explorer öffnen für: Dieser PC
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f # Erweiterungen bei bekannten Dateitypen ausblenden: Abwählen
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v Hidden /t REG_DWORD /d 1 /f # Verteckte Dateien und Ordner: Ausgeblendete Dateien, Ordner und Laufwerke anzeigen
