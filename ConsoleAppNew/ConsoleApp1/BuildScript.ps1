$application = "ConsoleApp1"
$msBuildExecutable = "C:\Program Files (x86)\Microsoft Visual Studio\2019\BuildTools\MSBuild\Current\Bin\MSBuild.exe"
$projectsDirectory = "ConsoleAppNew"
$ApplicationStartDate = Get-Date
$configuration = "Debug"

        Write-Host "Building $application" -ForegroundColor Cyan

	$exitCode = (Start-Process `
		-FilePath $msBuildExecutable 
		-ArgumentList """$projectsDirectory\$application.sln"" $target /p:Configuration=$configuration /p:VisualStudioVersion=12.0 /fl /flp:logfile=$application.log;verbosity=normal" 
		-PassThru -Wait 
	).ExitCode

	# Check result
	if($exitCode -eq 0)
	{
		Write-Host "$application built successfully in $(New-TimeSpan $ApplicationStartDate (Get-Date))" -ForegroundColor Green
	}
	else
	{
		Write-Host "$application not built successfully" -ForegroundColor Red
	}
