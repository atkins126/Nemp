; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Nemp - Noch ein MP3-Player"
#define MyAppVersion "5.2.0"
#define MyAppPublisher "Daniel Gau�mann"
#define MyAppURL "https://www.gausi.de"
#define MyAppExeName "nemp.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{D4FC64F7-CC71-4917-A1D2-254B8F55733E}-Nemp
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
LicenseFile=licence.txt
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputDir=_Setup\
OutputBaseFilename=NempSetup
SetupIconFile=src\New Icons\NempMainIcon.ico
UninstallDisplayIcon={app}\nemp.exe,0
Compression=lzma
SolidCompression=yes
WizardStyle=modern

//[InstallDelete]
//Type: files; Name: "{app}\UseLocalData.cfg"
//Type: files; Name: "{app}\DONT_UseLocalData.cfg"


[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl,nemp_en.isl"
Name: "german"; MessagesFile: "compiler:Languages\German.isl,nemp_ger.isl"; LicenseFile: "licence_DE.txt"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "bin\nemp.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\UseLocalData.cfg"; DestDir: "{app}"; DestName:"UseLocalData.cfg"; Check: IsModeSelected(1)
Source: "bin\UseLocalData.cfg"; DestDir: "{app}"; DestName:"DONT_UseLocalData.cfg"; Check: IsModeSelected(0)
Source: "bin\*"; Excludes: "UseLocalData.cfg"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Code]
var
  UsagePage: TInputOptionWizardPage;
  UsagePageID: Integer; 
  IsUpdateInstall: Boolean;

function IsModeSelected(Mode: Integer): Boolean;
begin
  Result := (UsagePage.SelectedValueIndex = Mode) and (not IsUpdateInstall);
end;

function NextButtonClick(apage: Integer): boolean;
begin
  if  aPage=wpSelectDir then 
  begin     
    if (pos(ExpandConstant('{commonpf}'), WizardDirValue) = 1) then  
      UsagePage.SelectedValueIndex := 0       
    else
      UsagePage.SelectedValueIndex := 1; 
  end;    
  result := True;
end;

procedure InitializeWizard();
begin 
  IsUpdateInstall := False;
  UsagePage :=
    CreateInputOptionPage(
      wpSelectDir, CustomMessage('InstallMode'), CustomMessage('InstallModeHint'), CustomMessage('InstallModeSubCaption'), True, False);
  UsagePage.Add(CustomMessage('DontUseLocalData'));
  UsagePage.Add(CustomMessage('UseLocalData'));
  UsagePageID := UsagePage.ID;
end;

function ShouldSkipPage(PageID: Integer): Boolean;
begin
    result := False;
    if PageID = UsagePageID then
    begin
        if (pos(ExpandConstant('{commonpf}'), WizardDirValue) = 1) then
        begin
            UsagePage.SelectedValueIndex := 0
            result := true;
        end else
        begin
            if (WizardForm.PrevAppDir <> '') then begin
              IsUpdateInstall := True;
              result := true;
            end;
            // todo: Check for new install/update by checking "nemp.exe" ???
            // and setting a new varibale to "do not change UseLocalDir" ???
        end;
    end;
end;	        

[InstallDelete]
Type: files; Name: "{app}\HTML\WebServer-Readme.pdf"
Type: files; Name: "{app}\HTML\Default\images\add.png"
Type: files; Name: "{app}\HTML\Default\images\addnext.png"
Type: files; Name: "{app}\HTML\Default\images\delete.png"
Type: files; Name: "{app}\HTML\Default\images\download.png"
Type: files; Name: "{app}\HTML\Default\images\fail.png"
Type: files; Name: "{app}\HTML\Default\images\info.png"
Type: files; Name: "{app}\HTML\Default\images\library.png"
Type: files; Name: "{app}\HTML\Default\images\list.png"
Type: files; Name: "{app}\HTML\Default\images\move-down.png"
Type: files; Name: "{app}\HTML\Default\images\move-up.png"
Type: files; Name: "{app}\HTML\Default\images\pause.png"
Type: files; Name: "{app}\HTML\Default\images\playback-start.png"
Type: files; Name: "{app}\HTML\Default\images\playback-stop.png"
Type: files; Name: "{app}\HTML\Default\images\search.png"
Type: files; Name: "{app}\HTML\Default\images\skip-backward.png"
Type: files; Name: "{app}\HTML\Default\images\skip-forward.png"
Type: files; Name: "{app}\HTML\Default\images\success.png"
Type: files; Name: "{app}\HTML\Default\images\volume-down.png"
Type: files; Name: "{app}\HTML\Default\images\volume-up.png"
Type: files; Name: "{app}\HTML\Default\images\vote.png"
Type: files; Name: "{app}\HTML\Default\images\votesmall.png"
Type: files; Name: "{app}\HTML\Default\default_cover.png"
Type: files; Name: "{app}\HTML\Default\favicon.ico"
Type: files; Name: "{app}\HTML\Default\help.html"
Type: files; Name: "{app}\HTML\Default\jquery-1.7.1.min.js"
Type: files; Name: "{app}\HTML\Default\jquery-ui.css"
Type: files; Name: "{app}\HTML\Default\jquery-ui.min.js"
Type: files; Name: "{app}\HTML\Default\main.css"
Type: files; Name: "{app}\HTML\Default\nemp.js"
Type: files; Name: "{app}\HTML\Default\PaginationMain.tpl"
Type: files; Name: "{app}\HTML\Default\PaginationOther.tpl"
Type: files; Name: "{app}\HTML\Default\PaginationNextPage.tpl"
Type: files; Name: "{app}\HTML\Default\PaginationPrevPage.tpl"
Type: files; Name: "{app}\HTML\Default\PlayerControls.tpl"
Type: files; Name: "{app}\HTML\Default\BtnControlNext.tpl"
Type: files; Name: "{app}\HTML\Default\BtnControlPlay.tpl"
Type: files; Name: "{app}\HTML\Default\BtnControlPause.tpl"
Type: files; Name: "{app}\HTML\Default\BtnControlPrev.tpl"
Type: files; Name: "{app}\HTML\Default\BtnControlStop.tpl"
Type: files; Name: "{app}\HTML\Default\ItemSearchResult.tpl"
Type: files; Name: "{app}\HTML\Default\ItemPlaylist.tpl"
Type: files; Name: "{app}\HTML\Default\ItemPlaylistDetails.tpl"
Type: files; Name: "{app}\HTML\Default\ItemSearchDetails.tpl"
Type: files; Name: "{app}\HTML\Default\Menu.tpl"
Type: files; Name: "{app}\HTML\Default\MenuLibraryBrowse.tpl"
Type: files; Name: "{app}\HTML\Default\ItemPlayer.tpl"
Type: files; Name: "{app}\HTML\No Javascript\images\add.png"
Type: files; Name: "{app}\HTML\No Javascript\images\addnext.png"
Type: files; Name: "{app}\HTML\No Javascript\images\delete.png"
Type: files; Name: "{app}\HTML\No Javascript\images\download.png"
Type: files; Name: "{app}\HTML\No Javascript\images\info.png"
Type: files; Name: "{app}\HTML\No Javascript\images\library.png"
Type: files; Name: "{app}\HTML\No Javascript\images\list.png"
Type: files; Name: "{app}\HTML\No Javascript\images\move-down.png"
Type: files; Name: "{app}\HTML\No Javascript\images\move-up.png"
Type: files; Name: "{app}\HTML\No Javascript\images\pause.png"
Type: files; Name: "{app}\HTML\No Javascript\images\playback-start.png"
Type: files; Name: "{app}\HTML\No Javascript\images\playback-stop.png"
Type: files; Name: "{app}\HTML\No Javascript\images\search.png"
Type: files; Name: "{app}\HTML\No Javascript\images\skip-backward.png"
Type: files; Name: "{app}\HTML\No Javascript\images\skip-forward.png"
Type: files; Name: "{app}\HTML\No Javascript\images\vote.png"
Type: files; Name: "{app}\HTML\No Javascript\images\votesmall.png"
Type: files; Name: "{app}\HTML\No Javascript\default_cover.png"
Type: files; Name: "{app}\HTML\No Javascript\favicon.ico"
Type: files; Name: "{app}\HTML\No Javascript\help.html"
Type: files; Name: "{app}\HTML\No Javascript\main.css"
Type: files; Name: "{app}\HTML\No Javascript\PaginationMain.tpl"
Type: files; Name: "{app}\HTML\No Javascript\PaginationOther.tpl"
Type: files; Name: "{app}\HTML\No Javascript\PaginationNextPage.tpl"
Type: files; Name: "{app}\HTML\No Javascript\PaginationPrevPage.tpl"
Type: files; Name: "{app}\HTML\No Javascript\PlayerControls.tpl"
Type: files; Name: "{app}\HTML\No Javascript\BtnControlNext.tpl"
Type: files; Name: "{app}\HTML\No Javascript\BtnControlPlay.tpl"
Type: files; Name: "{app}\HTML\No Javascript\BtnControlPause.tpl"
Type: files; Name: "{app}\HTML\No Javascript\BtnControlPrev.tpl"
Type: files; Name: "{app}\HTML\No Javascript\BtnControlStop.tpl"
Type: files; Name: "{app}\HTML\No Javascript\ItemSearchResult.tpl" 
Type: files; Name: "{app}\HTML\No Javascript\ItemPlaylist.tpl"
Type: files; Name: "{app}\HTML\No Javascript\ItemPlaylistDetails.tpl" 
Type: files; Name: "{app}\HTML\No Javascript\ItemSearchDetails.tpl"
Type: files; Name: "{app}\HTML\No Javascript\Menu.tpl" 
Type: files; Name: "{app}\HTML\No Javascript\MenuLibraryBrowse.tpl"
Type: files; Name: "{app}\HTML\No Javascript\ItemPlayer.tpl" 
Type: files; Name: "{app}\HTML\Party\images\add.png"
Type: files; Name: "{app}\HTML\Party\images\addnext.png"
Type: files; Name: "{app}\HTML\Party\images\delete.png"
Type: files; Name: "{app}\HTML\Party\images\download.png"
Type: files; Name: "{app}\HTML\Party\images\fail.png"
Type: files; Name: "{app}\HTML\Party\images\info.png"
Type: files; Name: "{app}\HTML\Party\images\library.png"
Type: files; Name: "{app}\HTML\Party\images\list.png"
Type: files; Name: "{app}\HTML\Party\images\move-down.png"
Type: files; Name: "{app}\HTML\Party\images\move-up.png"
Type: files; Name: "{app}\HTML\Party\images\nemp.png"
Type: files; Name: "{app}\HTML\Party\images\pause.png"
Type: files; Name: "{app}\HTML\Party\images\playback-start.png"
Type: files; Name: "{app}\HTML\Party\images\playback-stop.png"
Type: files; Name: "{app}\HTML\Party\images\search.png"
Type: files; Name: "{app}\HTML\Party\images\skip-backward.png"
Type: files; Name: "{app}\HTML\Party\images\skip-forward.png"
Type: files; Name: "{app}\HTML\Party\images\success.png"
Type: files; Name: "{app}\HTML\Party\images\volume-down.png"
Type: files; Name: "{app}\HTML\Party\images\volume-up.png"
Type: files; Name: "{app}\HTML\Party\images\vote.png"
Type: files; Name: "{app}\HTML\Party\images\votesmall.png"      
Type: files; Name: "{app}\HTML\Party\admin\Body.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnControlNext.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnControlPause.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnControlPlay.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnControlPrev.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnControlStop.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnFileAdd.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnFileAddNext.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnFileDelete.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnFileDownload.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnFileMoveDown.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnFileMoveUp.tpl"
Type: files; Name: "{app}\HTML\Party\admin\BtnFilePlayNow.tpl"
Type: files; Name: "{app}\HTML\Party\admin\ItemPlaylist.tpl"
Type: files; Name: "{app}\HTML\Party\admin\ItemPlaylistDetails.tpl"
Type: files; Name: "{app}\HTML\Party\admin\ItemSearchDetails.tpl"
Type: files; Name: "{app}\HTML\Party\admin\ItemSearchResult.tpl"
Type: files; Name: "{app}\HTML\Party\admin\PagePlayer.tpl"
Type: files; Name: "{app}\HTML\Party\admin\PlayerControls.tpl"      
Type: files; Name: "{app}\HTML\Party\Body.tpl"
Type: files; Name: "{app}\HTML\Party\BtnFileDownload.tpl"
Type: files; Name: "{app}\HTML\Party\BtnFileVote.tpl"
Type: files; Name: "{app}\HTML\Party\default_cover.png"
Type: files; Name: "{app}\HTML\Party\favicon.ico"
Type: files; Name: "{app}\HTML\Party\help.html"
Type: files; Name: "{app}\HTML\Party\ItemBrowseAlbum.tpl"
Type: files; Name: "{app}\HTML\Party\ItemBrowseArtist.tpl"
Type: files; Name: "{app}\HTML\Party\ItemBrowseGenre.tpl"
Type: files; Name: "{app}\HTML\Party\ItemPlayer.tpl"
Type: files; Name: "{app}\HTML\Party\ItemPlaylist.tpl"
Type: files; Name: "{app}\HTML\Party\ItemPlaylistDetails.tpl"
Type: files; Name: "{app}\HTML\Party\ItemSearchDetails.tpl"
Type: files; Name: "{app}\HTML\Party\ItemSearchResult.tpl"
Type: files; Name: "{app}\HTML\Party\jquery-1.7.1.min.js"
Type: files; Name: "{app}\HTML\Party\jquery-ui.css"
Type: files; Name: "{app}\HTML\Party\jquery-ui.min.js"
Type: files; Name: "{app}\HTML\Party\main.css"
Type: files; Name: "{app}\HTML\Party\main_admin.css"
Type: files; Name: "{app}\HTML\Party\Menu.tpl"
Type: files; Name: "{app}\HTML\Party\MenuLibraryBrowse.tpl"
Type: files; Name: "{app}\HTML\Party\PageError.tpl"
Type: files; Name: "{app}\HTML\Party\PageLibrary.tpl"
Type: files; Name: "{app}\HTML\Party\PageLibraryDetails.tpl"
Type: files; Name: "{app}\HTML\Party\PagePlayer.tpl"
Type: files; Name: "{app}\HTML\Party\PagePlaylist.tpl"
Type: files; Name: "{app}\HTML\Party\PagePlaylistDetails.tpl"
Type: files; Name: "{app}\HTML\Party\Pagination.tpl"
Type: files; Name: "{app}\HTML\Party\PaginationMain.tpl"
Type: files; Name: "{app}\HTML\Party\PaginationNextPage.tpl"
Type: files; Name: "{app}\HTML\Party\PaginationOther.tpl"
Type: files; Name: "{app}\HTML\Party\PaginationPrevPage.tpl"
Type: files; Name: "{app}\HTML\Party\party.js"
Type: files; Name: "{app}\HTML\Party\party_admin.js"
Type: files; Name: "{app}\HTML\Party\WarningNoFiles.tpl"
Type: dirifempty; Name: "{app}\HTML\No Javascript\images"
Type: dirifempty; Name: "{app}\HTML\Default\images"
Type: dirifempty; Name: "{app}\HTML\Party\admin"
Type: dirifempty; Name: "{app}\HTML\Party\images"
Type: dirifempty; Name: "{app}\HTML\Party"

[UninstallDelete]
Type: files; Name: "{userappdata}\Gausi\Nemp\Nemp.ini"
Type: files; Name: "{userappdata}\Gausi\Nemp\CoverCache"
Type: files; Name: "{userappdata}\Gausi\Nemp\Hotkeys.ini"
Type: files; Name: "{userappdata}\Gausi\Nemp\Nemp.npl"
Type: files; Name: "{userappdata}\Gausi\Nemp\Nemp.gmp"
Type: files; Name: "{userappdata}\Gausi\Nemp\NempWebServer.ini"
Type: files; Name: "{userappdata}\Gausi\Nemp\tag_ignore"
Type: files; Name: "{userappdata}\Gausi\Nemp\tag_merge"
Type: files; Name: "{userappdata}\Gausi\Nemp\temp.npl"
Type: files; Name: "{userappdata}\Gausi\Nemp\temp.old.npl"
Type: files; Name: "{userappdata}\Gausi\Nemp\Nemp_EQ.ini"
Type: files; Name: "{userappdata}\Gausi\Nemp\RandomPlaylist.ini"
Type: files; Name: "{userappdata}\Gausi\Nemp\Nemp-PlayerLog.log"
Type: filesandordirs; Name: "{userappdata}\Gausi\Nemp\Cover"
Type: filesandordirs; Name: "{userappdata}\Gausi\Nemp\Export"
Type: filesandordirs; Name: "{userappdata}\Gausi\Nemp\Playlists"
Type: filesandordirs; Name: "{userappdata}\Gausi\Nemp\Plugins"
Type: dirifempty; Name: "{userappdata}\Gausi\Nemp\Webradio"
Type: dirifempty; Name: "{userappdata}\Gausi\Nemp"
Type: dirifempty; Name: "{userappdata}\Gausi"
// delete user data for portable installations
Type: files; Name: "{app}\Data\Nemp.ini"
Type: files; Name: "{app}\Data\CoverCache"
Type: files; Name: "{app}\Data\Hotkeys.ini"
Type: files; Name: "{app}\Data\Nemp.npl"
Type: files; Name: "{app}\Data\Nemp.gmp"
Type: files; Name: "{app}\Data\NempWebServer.ini"
Type: files; Name: "{app}\Data\tag_ignore"
Type: files; Name: "{app}\Data\tag_merge"
Type: files; Name: "{app}\Data\temp.npl"
Type: files; Name: "{app}\Data\temp.old.npl"
Type: files; Name: "{app}\Data\Nemp_EQ.ini"
Type: files; Name: "{app}\Data\RandomPlaylist.ini"
Type: files; Name: "{app}\Data\Nemp-PlayerLog.log"
Type: filesandordirs; Name: "{app}\Data\Cover"
Type: filesandordirs; Name: "{app}\Data\Export"
Type: filesandordirs; Name: "{app}\Data\Plugins"
Type: dirifempty; Name: "{app}\Data\Webradio"
Type: dirifempty; Name: "{app}\Data\Playlists"
Type: dirifempty; Name: "{app}\Data\"
