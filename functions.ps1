function Write-Log {
    [CmdletBinding()]
    param(
        [string]$logPath="C:\temp",
        [string]$logName="app.log",
        [switch]$onConsole,
        [ValidateSet("ERROR","WARN","INFO")][string]$logLevel='',
        [Parameter(ValueFromPipeline)][string[]]$logMessage=''
        
        )

    if (!(Test-Path $logPath\$logName)){
        New-Item -ItemType File -Force $logPath\$logName |Out-Null
    }

    function now() {
        Get-Date -UFormat "[%m-%d-%y::%H:%M:%S]"
    }

    foreach ($msg in $logMessage){
        Write-Output "$(now) $logLevel $msg" |Out-File -Append $logPath\$logName
        if($onConsole){Write-Host "$(now) [$logLevel] $msg" }
    }

}

