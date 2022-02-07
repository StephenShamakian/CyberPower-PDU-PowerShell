param(
    $pduHost,
    $pduSnmpWriteCommunity,
    $outletId,
    $outletAction
)

if($outletAction -eq "on"){
    $actionId = 1
}elseif($outletAction -eq "off"){
    $actionId = 2
}elseif($outletAction -eq "reboot"){
    $actionId = 3
}else{
    Write-Error "Incorrect Outlet Action Specified - Allowed: on/off/reboot"
}

$SNMP = New-Object -ComObject olePrn.OleSNMP
$SNMP.open($pduHost,$pduSnmpWriteCommunity,1,1000)

$OutletName = $SNMP.get(".1.3.6.1.4.1.3808.1.1.3.3.3.1.1.2.$outletId")

if($OutletName){
    Write-Host "Found PDU Outlet: $OutletName!"

    Write-Host "Applying action ($outletAction) to outlet ($OutletName)..." -NoNewline
    $SNMP.set(".1.3.6.1.4.1.3808.1.1.3.3.3.1.1.4.$outletId", $actionId)
    Write-Host " Success!" -ForegroundColor Green
}

$SNMP.Close()
