
Import-Module IISAdministration

$package = 'C:\Handson\handsonapplicationinsights\appgx\DeploymentUnit1.zip'

$appName = 'demoappinsights'
$physicalPath = 'C:\inetpub\wwwroot\demoappinsights'
$siteName = 'Default Web Site'
$siteAppPool = 'DefaultAppPool'

New-Item -ItemType Directory -Force -Path $physicalPath
Expand-Archive -LiteralPath $package -DestinationPath $physicalPath

New-WebApplication -Name $appName -Site $siteName  -PhysicalPath $physicalPath -ApplicationPool $siteAppPool 

Write-Host "App installed."