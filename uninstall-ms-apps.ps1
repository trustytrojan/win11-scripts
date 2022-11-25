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
