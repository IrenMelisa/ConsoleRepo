try{
throw "Bad thing happened"
Write-Host "do not play"
}
catch
{ Write-Host "catching errors"
  echo "random_number=$(($RANDOM % 2))" >> $GITHUB_OUTPUT
  $a = "Hello, World"
  exit -1
  return  $GITHUB_OUTPUT
  Write-Host "do not play1"  
}
