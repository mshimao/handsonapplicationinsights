Import-Module SqlServer

CD SQLSERVER:\SQL\localhost\SQLEXPRESS2014
Set-SqlNetworkConfiguration -Credential $credential -Protocol TCP -Port 1433 -NoServiceRestart -AcceptSelfSignedCertificate