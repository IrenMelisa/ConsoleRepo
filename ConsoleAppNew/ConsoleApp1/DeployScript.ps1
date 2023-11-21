$applicationName = "ConsoleApp1"
# $msBuildExecutable = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\MSBuild\Current\Bin\MSBuild.exe"
$projectsDirectory = "$env:GITHUB_WORKSPACE\ConsoleAppNew\ConsoleApp1"
$ApplicationStartDate = Get-Date
$configuration = "Debug"
$applicationLog = "logTMP"
    $msiFolder = "$env:GITHUB_WORKSPACE\ConsoleAppNew\MSI"
$maximumRetries = 1
$programFilesDirectory = "C:\Program Files (x86)"

    # Set log name
    $logFileName = "$msiFolder\$applicationName.log"

    # Set installer path
    $msiPath = "$msiFolder\Middleware.VFDE.I01-1.0.0.0.msi"

Write-Host "envs: $env:GITHUB_WORKSPACE"
	
# Install application
  Start-Process -FilePath "msiexec" -ArgumentList "/i ""$msiPath"" /passive /log ""$logFileName"" INSTALLDIR=""$programFilesDirectory\$applicationName\1.0""" -Wait -Passthru | Out-Null
Write-Host "OUT"
