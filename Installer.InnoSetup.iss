[Setup]
AppName=FLIF-GUI
AppVerName=FLIF-GUI 0.3
AppPublisher=Sylde.net
AppPublisherURL=http://sylde.net
DefaultDirName={localappdata}\FLIF-GUI
DisableDirPage=yes
DisableReadyPage=no
DisableFinishedPage=no
Compression=lzma/ultra
SolidCompression=yes
DisableProgramGroupPage=true
CreateUninstallRegKey=true
Uninstallable=true
UninstallDisplayIcon={app}\FileMill.exe
SetupIconFile=FileMill.ico
ShowLanguageDialog=no
AllowCancelDuringInstall=no
PrivilegesRequired=lowest
OutputBaseFilename=FLIF-GUI.0.3.Setup

[Files]
Source: "FlifGui\*"; DestDir: "{app}"; Flags: overwritereadonly ignoreversion recursesubdirs
Source: "licence.txt"; DestDir: "{app}"; Flags: overwritereadonly ignoreversion recursesubdirs

[Run]
Filename: "{app}\licence.txt"; Description: "Show licence"; Flags: postinstall shellexec nowait
Filename: "{app}\FileMill.exe"; Description: "Start FLIF-GUI"; Flags: postinstall nowait

[Icons]
Name: "{userdesktop}\FLIF-GUI"; Filename: "{app}\FileMill.exe"; WorkingDir: "{app}"
Name: "{userstartmenu}\FLIF-GUI"; Filename: "{app}\FileMill.exe"; WorkingDir: "{app}"

[UninstallDelete]
Type: filesandordirs; Name: "{app}"

[code]
function UpdateReadyMemo(Space, NewLine, MemoUserInfoInfo, MemoDirInfo, MemoTypeInfo, MemoComponentsInfo, MemoGroupInfo, MemoTasksInfo: String): String;
var
  s_MessageChemin:String;
begin
  s_MessageChemin:='FLIF-GUI will be installed in:';
  Result:=s_MessageChemin+#13+ExpandConstant('{app}');
end;