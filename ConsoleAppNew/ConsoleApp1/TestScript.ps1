$LocalTestDir="C:\tmp\test"
echo 'in file'
if (Test-Path $LocalTestDir -PathType Container) {
  Write-Host "$LocalTestDir exists"
}
else {
  New-Item $LocalTestDir -ItemType Directory
}
Set-Content "$LocalTestDir\test.txt" 'Hello World'
Get-Content "$LocalTestDir\test.txt"
