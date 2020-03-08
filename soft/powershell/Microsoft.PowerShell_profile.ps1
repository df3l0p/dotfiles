<#
    Prompt setup requires the PowerLine module:
    # install-module powerline -AllowClobber
#>
function prompt {
    Get-SegmentedPath
    "`t"
    Get-Elapsed
    Get-Date -f "T"
    "`n"
    New-PromptText { "I $(New-PromptText -Fg Red -EFg White "&hearts;$([char]27)[30m") PS" } -Bg White -EBg Red -Fg Black
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
Set-Alias sudo Run-ElevatedCommand
