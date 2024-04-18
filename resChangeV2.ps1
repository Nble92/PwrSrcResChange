$firstEventXml = Get-WinEvent -LogName System | Where-Object {$_.Id -eq 105} | Select-Object -First 1 | ForEach-Object { $_.ToXml() }



# Convert string to XML object
$xml = [xml]$firstEventXml
$acOnline = $xml.Event.EventData.Data | Where-Object {$_.Name -eq 'AcOnline'} | Select-Object -ExpandProperty '#text'

Write-Output "Plugged in? : " $acOnline

if ($acOnline -eq "true") {

    Write-Output "Boom"
    nircmd.exe setdisplay 3840 2160 32

}
else {
        nircmd.exe setdisplay 1920 1200 32
}