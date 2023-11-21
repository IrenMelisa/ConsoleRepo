$applicationName = "ConsoleApp1"
$projectsDirectory = "$env:GITHUB_WORKSPACE\ConsoleAppNew\ConsoleApp1"
$ApplicationStartDate = Get-Date
$configuration = "Debug"
$applicationLog = "logTMP"
    $msiFolder = "$env:GITHUB_WORKSPACE\ConsoleAppNew\ConsoleApp1\MSI"
#$programFilesDirectory = "C:\Program Files (x86)"

    # Set log name
    $logFileName = "$msiFolder\$applicationName.log"

    # Set installer path
    $msiPath = "$msiFolder\Middleware.VFDE.I01-1.0.0.0.msi"

Write-Host "envs: $env:GITHUB_WORKSPACE"
	
# Install application
#  Start-Process -FilePath "msiexec" -ArgumentList "/i ""$msiPath"" /passive /log ""$logFileName"" INSTALLDIR=""${env:ProgramFiles(x86)}\$applicationName\1.0""" -Wait -Passthru | Out-Null
Invoke-Command -ComputerName dea059yw.eito-dublin.local -ScriptBlock { 
 mkdir "D:\tmp"
}
Write-Host "OUT"
