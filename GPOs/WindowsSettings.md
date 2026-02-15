* For Current User
~~~
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v HideFileExt /t REG_DWORD /d 0 /f # Dateierweiterungen anzeigen
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v LaunchTo /t REG_DWORD /d 1 /f # Ändern des Ansicht im File Explorer # 1 = This PC; 2 = Quick access; 3 = Downloads
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Search" /v SearchboxTaskbarMode /t REG_DWORD /d 0 /f # Remove Searchbox
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowTaskViewButton /t REG_DWORD /d 0 /f # Remove Taskview
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v ShowCortanaButton /t REG_DWORD /d 0 /f # Remove Cortana Button
reg.exe add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v NoPinningStoreToTaskbar /t REG_DWORD /d 1 /f # Unpin Microsoft Store from Taskbar
reg.exe add "HKCU\Software\Policies\Microsoft\Windows\" /v DisableWindowsConsumerFeatures /t REG_DWORD /d 1 /f # Werbung im Startmenü unterdrücken
reg.exe add "HKCU\Software\Policies\Microsoft\Windows\" /v DisableSoftLanding /t REG_DWORD /d 1 /f # Windows-Tipps unterdrücken
reg.exe add "HKCU\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager" /v SilentInstalledAppsEnabled /t REG_DWORD /d 0 /f # Automatische Installation von Apps verhindern
~~~
* For all users
~~~
reg.exe load HKLM\DefaultUser C:\Users\Default\NTUSER.DAT
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name HideFileExt -Value 0 -Type DWord
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name LaunchTo -Value 1 -Type DWord
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Microsoft\Windows\CurrentVersion\Search' -Name SearchboxTaskbarMode -Value 0 -Type DWord
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name ShowTaskViewButton -Value 0 -Type DWord
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name ShowCortanaButton -Value 0 -Type DWord
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Policies\Microsoft\Windows\' -Name DisableWindowsConsumerFeatures -Value 1 -Type DWord
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Policies\Microsoft\Windows\' -Name DisableSoftLanding -Value 1 -Type DWord
New-ItemProperty -Path 'HKLM:\Defaultuser\Software\Microsoft\Windows\CurrentVersion\ContentDeliveryManager' -Name SubscribedContent-310093Enabled -Value 0 -Type DWord # Disable Windows Welcome Experience in Edge
reg.exe unload HKLM\DefaultUser
reg.exe add "HKLM\Software\Policies\Microsoft\Windows\Explorer" /v NoPinningStoreToTaskbar /t REG_DWORD /d 1 /f # Unpin Microsoft Store from Taskbar
reg.exe add "HKLM\System\CurrentControlSet\Control\Session Manager\Power" /v HiberbootEnabled /t REG_DWORD /d 0 /f # Hibernate deaktivieren
~~~
