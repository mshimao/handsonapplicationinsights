$xml = [xml](Get-Content 'C:\inetpub\wwwroot\demoappinsights\web.config')

$Dictionary = @{
    'Connection-Default-Datasource' = '.\SQLEXPRESS2014'
    'Connection-Default-DB'     = 'demoappinsights'
    'Connection-Default-User' = 'sa'
    'Connection-Default-Password' = 'sa!2014'
}

foreach($key in $Dictionary.Keys)
{
    Write-Host "Locating key: '$key' in XML"
    # Use XPath to find the appropriate node
    if(($addKey = $xml.SelectSingleNode("//appSettings/add[@key = '$key']")))
    {
        Write-Host "Found key: '$key' in XML, updating value to $($Dictionary[$key])"
        $addKey.SetAttribute('value',$Dictionary[$key])
    }
}

$xml.Save("C:\inetpub\wwwroot\demoappinsights\web.config")