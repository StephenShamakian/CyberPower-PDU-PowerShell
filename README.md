# CyberPower-PDU-PowerShell
PowerShell Script to automate the control of CyberPower PDUs. Useful for integration with monitoring systems and automatic recovery actions.

## EXAMPLES 

Reboot Outlet 7:

	PS C:\> .\PDU-Outlet-Control.ps1 -pduHost "HOST/IP" -pduSnmpWriteCommunity "SNMP WRITE COMMUNITY NAME" -outletId 7 -outletAction "reboot"

Turn Off Outlet 7:

	PS C:\> .\PDU-Outlet-Control.ps1 -pduHost "HOST/IP" -pduSnmpWriteCommunity "SNMP WRITE COMMUNITY NAME" -outletId 7 -outletAction "off"

Turn On Outlet 7:

	PS C:\> .\PDU-Outlet-Control.ps1 -pduHost "HOST/IP" -pduSnmpWriteCommunity "SNMP WRITE COMMUNITY NAME" -outletId 7 -outletAction "on"
