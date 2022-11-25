foreach($app in (Get-AppxPackage)) switch($app.name) {
  "Microsoft.WindowsStore" {}
  "Microsoft.DesktopAppInstaller" {}
  "Microsoft.WindowsNotepad" {}
  default { Remove-AppxPackage $app }
}
