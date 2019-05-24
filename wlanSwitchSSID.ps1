$winterfaces = netsh wlan show interfaces

$wssidresult = $winterfaces | Select-String -Pattern '\sSSID'

$ssidname = ($wssidresult -split ":")[-1].Trim() -replace ""

echo "Currently connected to: $ssidname"

echo "Switching network..."

IF ($ssidname -eq "East Colony_443/C") {
	netsh wlan connect name = "SSID"
}

ELSE {
	IF ($ssidname -eq "SSID") {
		netsh wlan connect name = "East Colony_443/C"
	}
}

echo "Please wait."

Start-Sleep 3

echo "Done!"

$winterfaces = netsh wlan show interfaces

$wssidresult = $winterfaces | Select-String -Pattern '\sSSID'

$ssidname = ($wssidresult -split ":")[-1].Trim() -replace ""

IF ($ssidname -eq "") {
	echo "Encountered a problem."
}

ELSE {
		echo "Now connected to:  $ssidname"
	}

exit