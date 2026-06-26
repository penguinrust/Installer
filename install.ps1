$link = "https://github.com/penguinrust/Installer/releases/latest/download/PenguinCordInstaller.exe"

$outfile = "$env:TEMP\PenguinCordInstaller.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
