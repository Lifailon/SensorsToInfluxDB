# SensorToInfluxDB

Module for monitoring of load and temperature sensors via Open Hardware Monitor with sending to Influx database

## Install

1. Download software **[Open Hardware Monitor](https://openhardwaremonitor.org)**:

```PowerShell
$zip = "$home\Documents\ohm.zip"
Invoke-RestMethod https://openhardwaremonitor.org/files/openhardwaremonitor-v0.9.6.zip -OutFile $path
$path = $zip -replace ".zip"
Expand-Archive -Path $zip -DestinationPath $path
```

2. Run the server:

Run **OpenHardwareMonitor.exe** and click Options -> Remote Web Server -> **Run**. \
Port default: 8085.

3. Check connection

On the client side (this can be locally) check the module operation:

```PowerShell
Import-Module .\Get-Sensor.psm1
Get-Sensor -Server 192.168.3.100 -Port 8085
```

## Example

```PowerShell
PS C:\Users\lifailon\Desktop> Get-Sensor -Server 192.168.3.100

Server        : 192.168.3.100
CPU           : Intel Core i5-10400
MEM_Used_Proc : 49,6 %
MEM_Used      : 15,8 GB
MEM_Available : 16,1 GB
CPU_Load      : 2,7 %
CPU_Temp      : 26,0 °C
GPU           : Radeon RX 570 Series
GPU_Load      : 0,0 %
GPU_Temp      : 36,0 °C
GPU_Fan       : 0 RPM
HDD           : {WDC WD2005FBYZ-01YCBB2, Generic Hard Disk}
HDD_Load      : {89,2 %, 28,6 %}
HDD_Temp      : 33,0 °C
```