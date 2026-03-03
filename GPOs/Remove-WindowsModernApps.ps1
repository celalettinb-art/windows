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
