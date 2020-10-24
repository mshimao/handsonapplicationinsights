Add-PSSnapin WDdeploySnapin3.0

$package = "C:\Handson\handsonapplicationinsights\appgx\DeploymentUnit1.zip"

Restore-WDPackage $package -Parameters @{"IIS Web Application Name"= "DemoAppInsights"}