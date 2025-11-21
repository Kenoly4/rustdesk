; RustDesk Custom Installer
[Setup]
AppName=RustDesk
AppVersion=1.0
DefaultDirName={pf}\RustDesk
DefaultGroupName=RustDesk
OutputBaseFilename=RustDesk-Custom-Installer
Compression=lzma
SolidCompression=yes

[Files]
Source: "rustdesk\rustdesk.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "rustdesk\RustDesk.toml"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\RustDesk"; Filename: "{app}\rustdesk.exe"
Name: "{userdesktop}\RustDesk"; Filename: "{app}\rustdesk.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "Create Desktop Icon"; Flags: unchecked

[Run]
Filename: "{app}\rustdesk.exe"; Description: "Start RustDesk"; Flags: nowait postinstall skipifsilent
