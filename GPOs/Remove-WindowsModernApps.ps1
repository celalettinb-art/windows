# Warning: Before executing any script, command, or software obtained from the Internet, ensure that you have carefully reviewed and fully understood its functionality.
#          Running unverified or untrusted code may result in system damage, data loss, or security breaches.
# Disclaimer: The author assumes no responsibility or liability for any damage, data loss, or other issues that may arise from the use or misuse of this script or information. Use it at your own risk.
# Run in PS: iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/celalettinb-art/windows/refs/heads/main/GPOs/Remove-WindowsModernApps.ps1'))


$apps = @(
"Clipchamp.Clipchamp",
"Microsoft.BingNews",
"Microsoft.BingSearch",
"Microsoft.BingWeather",
"Microsoft.XboxApp",
"Microsoft.Xbox.TCUI",
"Microsoft.XboxGamingOverlay",
"Microsoft.XboxIdentityProvider",
"Microsoft.XboxSpeechToTextOverlay",
"Microsoft.XboxGameSpeechWindow",
"Microsoft.YourPhone",
"Microsoft.ZuneMusic"
"Microsoft.Todos",
"Microsoft.OutlookForWindows",
"Microsoft.PowerAutomateDesktop",
"MicrosoftCorporationII.QuickAssist",
"Microsoft.MicrosoftSolitaireCollection",
"Microsoft.GamingApp",
"Microsoft.WindowsFeedbackHub"
)

foreach ($app in $apps) {
    Get-AppxPackage -AllUsers -Name $app | Remove-AppxPackage -AllUsers
}
