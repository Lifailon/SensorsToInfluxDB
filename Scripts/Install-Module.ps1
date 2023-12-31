$path = $(($env:PSModulePath -split ";")[0]) + "\Get-Sensor"
if (Test-Path $path) {
    Remove-Item $path -Force -Recurse
    New-Item -ItemType Directory -Path $path
} else {
    New-Item -ItemType Directory -Path $path
}
Invoke-RestMethod https://raw.githubusercontent.com/Lifailon/SensorsToInfluxDB/rsa/Get-Sensor/Get-Sensor.psm1 -OutFile "$path\Get-Sensor.psm1"