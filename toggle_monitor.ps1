# toggle_monitor.ps1
$MonitorId = "__"

# Example: "DISPLAY\TMX1401\5&1F08C561&0&UID256"

# Get current status
$device = Get-PnpDevice -InstanceId $MonitorId

if ($device.Status -eq "OK") {
    Write-Host "Monitor is enabled. Disabling..."
    Disable-PnpDevice -InstanceId $MonitorId -Confirm:$false
} else {
    Write-Host "Monitor is disabled. Enabling..."
    Enable-PnpDevice -InstanceId $MonitorId -Confirm:$false
}
