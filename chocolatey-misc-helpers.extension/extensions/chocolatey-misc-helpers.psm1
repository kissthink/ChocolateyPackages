# chocolatey-misc-helpers.extension v0.0.3 (pre) (09-21-2018) by Bill Curran - public domain

$scriptRoot = Split-Path -Path $MyInvocation.MyCommand.Definition

$publicFunctions = @(
    'Show-ToastMessage',
    'Show-Patreon',
	'Show-PayPal',
    'Start-CheckandStop',
	'Start-WaitandStop',
	'Start-WaitandStopActual',
    'Test-Dependency'
)
 
Get-ChildItem -Path "$scriptRoot\*.ps1" | ForEach-Object { . $_ }
Export-ModuleMember -Function $publicFunctions