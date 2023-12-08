try{
throw "Bad thing happened"
Write-Host "do not play"
}
catch
{ Write-Host "catching errors 66"
  echo "ERRCODE=66" >> $env:GITHUB_OUTPUT
  return  $GITHUB_OUTPUT
  Write-Host "do not play1"
  
}
