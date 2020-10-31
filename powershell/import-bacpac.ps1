$PathVariables=$env:Path
$PathVariables
 
 
IF (-not $PathVariables.Contains( "C:\Program Files (x86)\Microsoft SQL Server\140\DAC\bin"))
{
write-host "SQLPackage.exe path is not found, Update the environment variable"
$env:Path = $env:Path + ";C:\Program Files (x86)\Microsoft SQL Server\120\DAC\bin;" 
}
$command = "sqlpackage.exe"
    

$DatabaseServer = ".\SQLEXPRESS2014"
$DatabaseName = "demoappinsights"
$BacPacfile = "C:\Handson\handsonapplicationinsights\appgx\demoappinsights.bacpac"
$SqlUser = "sa"
$SqlPwd = "sa!2014"
$param = "/a:import /tsn:$DatabaseServer /tdn:$DatabaseName /sf:$BacPacfile /tu:$SqlUser /tp:$SqlPwd /p:CommandTimeout=1200"

Start-Process -FilePath $command -ArgumentList  $param  -NoNewWindow -Wait
Write-Host "Database installed."