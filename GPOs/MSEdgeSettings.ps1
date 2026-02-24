###

New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name HideFirstRunExperience -Value 1 -Type DWord # Erstausführungs-Erlebnis deaktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name BingAdsSuppression -Value 1 -Type DWord # Werbeanzeigen in Bing deaktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name AutoImportAtFirstRun -Value 4 -Type DWord # Von anderen Browser importieren deaktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name DiagnosticData -Value 0 -Type DWord # Senden von Diagnosedaten deaktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name PersonalizationReportingEnabled -Value 0 -Type DWord # Personalisierung und Nutzungsdaten an Microsoft senden deaktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name SyncDisabled -Value 0 -Type DWord # Synchronisierung von Daten mit Microsoft-Synchronisierungsdiensten deaktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge\Recommended' -Name FavoritesBarEnabled -Value 1 -Type DWord # Favoritenleiste aktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge\Recommended' -Name DefaultSearchProviderEnabled -Value 0 -Type DWord # Standardsuchanbieter aktivieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge\Recommended' -Name DefaultSearchProviderSuggestURL -Value "https://www.google.de/complete/search?output=chrome&q={searchTerms}" -Type DWord # Standard-Suchanbieter-URL für Vorschläge
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge\Recommended' -Name DefaultSearchProviderSearchURL -Value "https://www.google.de/search?q={searchTerms}&{google:RLZ}{google:originalQueryForSuggestion}{google:assistedQueryStats}{google:searchFieldtrialParameter}{google:searchClient}{google:sourceId}ie={inputEncoding}" -Type String # Such-URL für den Standardsuchanbieter
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name RestoreOnStartup -Value 4 -Type DWord # Startseite
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name NewTabPageAllowedBackgroundTypes -Value 3 -Type DWord # Hintergrundtyp konfigurieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name HomepageLocation -Value "https://www.google.de" -Type String # Homepage-URL
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name ShowHomeButton -Value 1 -Type DWord # Schaltfläche „Startseite“ auf Symbolleiste anzeigen
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name NewTabPageLocation -Value "https://www.google.de" -Type String # URL für die neue Tabseite konfigurieren
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge\RestoreOnStartupURLs' -Name 1 -Value "https://www.google.de" -Type String # Websites, die beim Start des Browsers geöffnet werden sollen
New-ItemProperty -Path 'HKLM:\Software\Policies\Microsoft\Edge' -Name NewTabPageContentEnabled -Value 0 -Type DWord # Microsoft-Inhalte
