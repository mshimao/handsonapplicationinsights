$PathVariables=$env:Path
$PathVariables
 
 
IF (-not $PathVariables.Contains( "C:\Program Files (x86)\Microsoft SQL Server\140\DAC\bin"))
{
write-host "SQLPackage.exe path is not found, Update the environment variable"
$env:Path = $env:Path + ";C:\Program Files (x86)\Microsoft SQL Server\120\DAC\bin;" 
}
$command = $Script:SqlPackage
    
if ([System.IO.File]::Exists($command) -ne $True) {
    Write-Host "The sqlpackage.exe is not present on the system. This is an important part of making the bacpac file. Please install latest SQL Server Management Studio on the machine and run the cmdlet again. `r`nVisit this link:`r`ndocs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms" -ForegroundColor Yellow
    Write-Error "The sqlpackage.exe is missing on the system." -ErrorAction Stop
}

$DatabaseServer = ".\SQLEXPRESS2014"
$DatabaseName = "demoappinsights"
$BacPacfile = "C:\Handson\handsonapplicationinsights\appgx\demoappinsights.bacpac"
$SqlUser = "sa"
$SqlPwd = "sa!2014"
$param = "/a:import /tsn:$DatabaseServer /tdn:$DatabaseName /sf:$BacPacfile /tu:$SqlUser /tp:$SqlPwd /p:CommandTimeout=1200"

Start-Process -FilePath $command -ArgumentList  $param  -NoNewWindow -Wait