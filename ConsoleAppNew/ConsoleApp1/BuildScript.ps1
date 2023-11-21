$application = "ConsoleApp1"
$visualStudioDirectory = "c:\Program Files (x86)\Microsoft Visual Studio 11.0"
$projectsDirectory = "ConsoleAppNew"
        Write-Host "Building $application" -ForegroundColor Cyan
        $exitCode = (Start-Process -FilePath "$visualStudioDirectory\Common7\IDE\devenv.exe" -ArgumentList """$projectsDirectory\$application\$application.sln"" /Build Release /Out $application.log" -PassThru -Wait).ExitCode

        # Check result
        if($exitCode -eq 0 -and (Select-String -Path "$application.log" -Pattern "0 failed" -Quiet) -eq "true")
        {
            Write-Host "$application built succesfully" -ForegroundColor Green
        }
        else
        {
            Write-Host "$application not built succesfully" -ForegroundColor Red
            WaitForKeyPress
        }
