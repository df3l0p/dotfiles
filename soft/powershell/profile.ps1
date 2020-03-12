<#
To put in $profile.CurrentUserAllHosts
#>
function Prompt
{
     $env:UserName + "@" + $env:COMPUTERNAME + " " + (Get-Location) + "> "
}

<#
    Functions
#>
function Run-ElevatedCommand {
    param(
        $binary
    )
    powershell.exe Start-Process $binary -Verb runAs
}


<#
    Alias
#>
Set-Alias paint "C:\Windows\System32\mspaint.exe"
Set-Alias alert Display-Alert
Set-Alias cal Write-Calendar
Set-Alias rename Rename-Items
Set-Alias colors Write-ColorScheme
Set-Alias ll Get-ChildItem
Set-Alias sudo Run-ElevatedCommand
