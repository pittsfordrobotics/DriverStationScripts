echo "Changing Driver Station to Development Mode..."

# enables firewall
Set-NetFirewallProfile -All -Enabled True -Confirm:$false

# enables wifi adapter
Enable-NetAdapter -Name "Wi-Fi" -Confirm:$false

# enables windows defender
Set-MpPreference -DisableRealtimeMonitoring $false

# start superfetch
net.exe start superfetch

# turns on windows update
sc.exe start wuauserv

# opens driver station
& "C:\Program Files (x86)\FRC Driver Station\DriverStation.exe"

# opens limelight camera in firefox
& "C:\Program Files\Mozilla Firefox\firefox.exe" "http://10.31.81.11:5800"

echo "Done!"
Read-Host "Press any enter to quit"