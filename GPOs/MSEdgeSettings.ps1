# Warning: Before executing any script, command, or software obtained from the Internet, ensure that you have carefully reviewed and fully understood its functionality.
#          Running unverified or untrusted code may result in system damage, data loss, or security breaches.
# Disclaimer: The author assumes no responsibility or liability for any damage, data loss, or other issues that may arise from the use or misuse of this script or information. Use it at your own risk.
# Option 1
# iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/celalettinb-art/windows/refs/heads/main/GPOs/MSEdgeSettings.ps1'))
# Option 2
# $url = "https://raw.githubusercontent.com/celalettinb-art/windows/refs/heads/main/GPOs/MSEdgeSettings.ps1"
# irm $url | iex

$path = "HKLM:\Software\Policies\Microsoft\Edge"
if (!(Test-Path $path)){New-Item -Path $path -Force | Out-Null}

reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v HideFirstRunExperience /t REG_DWORD /d 1 /f # Erstausführungs-Erlebnis deaktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v BingAdsSuppression /t REG_DWORD /d 1 /f # Werbeanzeigen in Bing deaktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v AutoImportAtFirstRun /t REG_DWORD /d 4 /f # Von anderen Browser importieren deaktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v DiagnosticData /t REG_DWORD /d 0 /f # Senden von Diagnosedaten deaktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v PersonalizationReportingEnabled /t REG_DWORD /d 0 /f # Personalisierung und Nutzungsdaten an Microsoft senden deaktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v SyncDisabled /t REG_DWORD /d 0 /f # Synchronisierung von Daten mit Microsoft-Synchronisierungsdiensten deaktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge\Recommended" /v FavoritesBarEnabled /t REG_DWORD /d 1 /f # Favoritenleiste aktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge\Recommended" /v DefaultSearchProviderEnabled /t REG_DWORD /d 1 /f # Standardsuchanbieter aktivieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge\Recommended" /v DefaultSearchProviderSuggestURL /d "https://www.google.de/complete/search?output=chrome&q={searchTerms}" /t REG_SZ /f # Standard-Suchanbieter-URL für Vorschläge
reg.exe add "HKLM\Software\Policies\Microsoft\Edge\Recommended" /v DefaultSearchProviderSearchURL /d "https://www.google.de/search?q={searchTerms}&{google:RLZ}{google:originalQueryForSuggestion}{google:assistedQueryStats}{google:searchFieldtrialParameter}{google:searchClient}{google:sourceId}ie={inputEncoding}" /t REG_SZ /f # Such-URL für den Standardsuchanbieter
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v RestoreOnStartup /t REG_DWORD /d 4 /f # Startseite
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v NewTabPageAllowedBackgroundTypes /t REG_DWORD /d 3 /f # Hintergrundtyp konfigurieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v HomepageLocation /d "https://www.google.de" /t REG_SZ /f # Homepage-URL
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v ShowHomeButton /t REG_DWORD /d 1 /f # Schaltfläche „Startseite“ auf Symbolleiste anzeigen
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v NewTabPageLocation /d "https://www.google.de" /t REG_SZ /f # URL für die neue Tabseite konfigurieren
reg.exe add "HKLM\Software\Policies\Microsoft\Edge\RestoreOnStartupURLs" /v 1 /d "https://www.google.de" /t REG_SZ /f # Websites, die beim Start des Browsers geöffnet werden sollen
reg.exe add "HKLM\Software\Policies\Microsoft\Edge" /v NewTabPageContentEnabled /t REG_DWORD /d 0 /f # Microsoft-Inhalte
