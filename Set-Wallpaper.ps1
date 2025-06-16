# Config
$imageUrl = "https://res.cloudinary.com/dynwv0xx7/image/upload/dom-special.jpg"
$imagePath = "$env:TEMP\wallpaper.jpg"

# Download the image
Invoke-WebRequest -Uri $imageUrl -OutFile $imagePath -UseBasicParsing

# Set as wallpaper
Add-Type @"
using System.Runtime.InteropServices;
public class Wallpaper {
    [DllImport("user32.dll", SetLastError = true)]
    public static extern bool SystemParametersInfo(int uAction, int uParam, string lpvParam, int fuWinIni);
}
"@

[Wallpaper]::SystemParametersInfo(20, 0, $imagePath, 1 -bor 2)

# Open Task Scheduler
# Create a new task
# Trigger: Daily at your preferred time (e.g., 9 AM)
# Action:
# Program/script: powershell.exe
# Add arguments: -ExecutionPolicy Bypass -File "C:\Path\To\Set-Wallpaper.ps1"
# Save the task
