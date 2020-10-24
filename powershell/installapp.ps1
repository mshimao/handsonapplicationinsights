Install-Module –Name IISAdministration
Import-Module IISAdministration

$package = "C:\Handson\handsonapplicationinsights\appgx\DeploymentUnit1.zip"

$appName = "demoappinsights"
$physicalPath = "C:\inetpub\wwwroot\demoappinsights"
$siteName = "Default Web Site"

New-Item -ItemType Directory -Force -Path $physicalPath
Expand-Archive -LiteralPath $package -DestinationPath $physicalPath

$appPool = $sm.ApplicationPools[$appName]
if ($appPool -eq $null) {
    $appPool = $sm.ApplicationPools.Add($appName)
}

$site = $sm.Sites[$siteName]
$app = $site.Applications["/$appName"]
if ($app -eq $null) {
    $app = $site.Applications.Add("/$appName", $physicalPath)
}
$app.ApplicationPoolName = $appName
 
$sm.CommitChanges()
