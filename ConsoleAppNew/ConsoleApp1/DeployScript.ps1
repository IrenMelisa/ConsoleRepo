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

try{
throw "Bad thing happened"
}
catch
{ Write-Host "catching errors"
  echo "random_number=$(($RANDOM % 2))" >> $GITHUB_OUTPUT
}

Write-Host "envs: $env:GITHUB_WORKSPACE"
$ComputerName = "dea059yw.eito-dublin.local"
$DriveLetter = "D"
$Path = "IRA"
New-Item -Path \\$ComputerName\$DriveLetter$\$Path -type directory -Force 

# Install application
#  Start-Process -FilePath "msiexec" -ArgumentList "/i ""$msiPath"" /passive /log ""$logFileName"" INSTALLDIR=""${env:ProgramFiles(x86)}\$applicationName\1.0""" -Wait -Passthru | Out-Null
#Invoke-Command -ComputerName dea059yw.eito-dublin.local -ScriptBlock { 
#New-Item "D:\IRA" -ItemType Directory
#}
Write-Host "OUT"
