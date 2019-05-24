$winterfaces = netsh wlan show interfaces

$wssidresult = $winterfaces | Select-String -Pattern '\sSSID'

$ssidname = ($wssidresult -split ":")[-1].Trim() -replace ""

echo "Currently connected to: $ssidname"

echo "Switching network..."

IF ($ssidname -eq "Wlan_1") {
	netsh wlan connect name = "Wlan_2"
}

ELSE {
	IF ($ssidname -eq "Wlan_2") {
		netsh wlan connect name = "Wlan_1"
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
