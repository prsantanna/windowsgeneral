# --------------------------------------------------------------------------------------------------------------------
# Script: Windows_AllowGuestSMB.ps1 - Script to change "AllowInsecureGuestAuth" key to allow Guest access in SMB2 and SMB3 disabled by default in Windows
# Contact: Paulo Roberto Sant´anna Cardoso (contato@paulosantanna.com)
# Compatibility: Windows Server 2019/Windows 10
# Blog: paulosantanna.com
# Date: 30/07/2021
# ---------------------------------------------------------------------------------------------------------------------
# To enable guest authentication by setting the "AllowInsecureGuestAuth" setting value from 0 to 1
Set-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\LanmanWorkstation\" -Name "AllowInsecureGuestAuth" -Value 1
# To check the value of the "AllowInsecureGuestAuth" key after changing
Get-ItemProperty -Path "HKLM:\Software\Policies\Microsoft\Windows\LanmanWorkstation\"


