foreach($app in (Get-AppxPackage)) {
  switch($app.name) {
    "Microsoft.WindowsStore" {}
    "Microsoft.DesktopAppInstaller" {}
    "Microsoft.WindowsNotepad" {}
    "Microsoft.ScreenSketch" {}
    default { Remove-AppxPackage $app }
  }
}
