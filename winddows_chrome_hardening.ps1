#CHROME NOTIFICATIONS
if ((Test-Path -LiteralPath "Registry::\HKEY_CURRENT_USER\Software\Policies\Google\Chrome") -ne $true) {

    New-Item "Registry::\HKEY_CURRENT_USER\Software\Policies\Google\Chrome" -force -ea SilentlyContinue
    New-ItemProperty -LiteralPath 'Registry::\HKEY_CURRENT_USER\Software\Policies\Google\Chrome' -Name 'DefaultNotificationsSetting' -Value '1' -PropertyType DWord
}
else
{
    Set-ItemProperty -LiteralPath 'Registry::\HKEY_CURRENT_USER\Software\Policies\Google\Chrome' -Name 'DefaultNotificationsSetting' -Value '1'
}


if ((Test-Path -LiteralPath "Registry::\HKEY_CURRENT_USER\Software\Policies\Microsoft\Edge") -ne $true) { 
    New-Item "Registry::\HKEY_CURRENT_USER\Software\Policies\Microsoft\Edge" -force -ea SilentlyContinue
    New-ItemProperty -LiteralPath 'Registry::\HKEY_CURRENT_USER\Software\Policies\Microsoft\Edge' -Name 'DefaultNotificationsSetting' -Value '1' -PropertyType DWord
}
else
{
    Set-ItemProperty -LiteralPath 'Registry::\HKEY_CURRENT_USER\Software\Policies\Microsoft\Edge' -Name 'DefaultNotificationsSetting' -Value '1'
}
