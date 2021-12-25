echo "Changing Driver Station to Competition Mode..."

# disables firewall
Set-NetFirewallProfile -All -Enabled False -Confirm:$false

# disables wifi adapter
Disable-NetAdapter -Name "Wi-Fi" -Confirm:$false

# disables windows defender
Set-MpPreference -DisableRealtimeMonitoring $true

# disables superfetch
net.exe stop superfetch

# turns off windows update
sc.exe stop wuauserv

# opens driver station
& "C:\Program Files (x86)\FRC Driver Station\DriverStation.exe"

# opens limelight camera in firefox
& "C:\Program Files\Mozilla Firefox\firefox.exe" "http://10.31.81.11:5800"

echo "Done!"
Read-Host "Press any enter to quit"