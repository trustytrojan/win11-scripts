# uninstalls all apps except the ones i like to have
foreach($app in (Get-AppxPackage)) {
  switch($app.name) {
    "Microsoft.WindowsStore" {}
    "Microsoft.DesktopAppInstaller" {}
    "Microsoft.WindowsNotepad" {}
    "Microsoft.ScreenSketch" {}
    default { Remove-AppxPackage $app }
  }
}

# enables old context menu
# credit to https://github.com/teeotsa/windows-11-debloat
New-Item -Path "HKCU:\SOFTWARE\Classes\CLSID" -Force | Out-Null
New-Item -Path "HKCU:\SOFTWARE\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}" -Force | Out-Null
New-Item -Path "HKCU:\SOFTWARE\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" -Force -Value "" | Out-Null
Restart-Process -Process explorer

# delete this annoying start menu entry
rm "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Accessories\System Tools\Character Map.lnk"
