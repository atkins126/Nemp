// Project: Nemp - Noch ein MP3-Player
// Generated by HelpNDoc - https://www.helpndoc.com

unit NempHelp;

interface

const
  // Format: HELP_help-id = help-context
  HELP_Nemp_Main = 10000; 				 // Topic: "Nemp - Noch ein Mp3-Player"
  HELP_News = 2; 				 // Topic: "Neuigkeiten"
  HELP_Install = 1; 				 // Topic: "Installation und portable Installation"
  HELP_UpdateCleanup = 105; 				 // Topic: "Update bereinigen"
  HELP_Wizard = 3; 				 // Topic: "Der Nemp-Wizard"
  HELP_FirstSteps = 4; 				 // Topic: "Erste Schritte"
  HELP_GeneralControl = 5; 				 // Topic: "Allgemeine Bedienung"
  HELP_MobileFestplattenCloudundPortabi = 11; 				 // Topic: "Mobile Festplatten, Cloud und Portabilität"
  HELP_PlayerAndPlaylist_Main = 6; 				 // Topic: "Player und Playlist"
  HELP_Controls = 7; 				 // Topic: "Anzeige und Steuerung im Player"
  HELP_EqualizerAndEffects = 14; 				 // Topic: "Equalizer und Effekte"
  HELP_Headphones = 15; 				 // Topic: "Kopfhörer"
  HELP_Playlist = 16; 				 // Topic: "Die Nemp-Playlist"
  HELP_FavoritePlaylists = 17; 				 // Topic: "Favoriten-Playlists"
  HELP_CleanupPlaylist = 18; 				 // Topic: "Playlist aufräumen"
  HELP_ReplayGain = 19; 				 // Topic: "ReplayGain"
  HELP_SpecialFeatures = 21; 				 // Topic: "Special Features"
  HELP_MediaLibrary_Main = 20; 				 // Topic: "Die Medienbibliothek"
  HELP_BuildMediaLibrary = 22; 				 // Topic: "Medienbibliothek aufbauen und pflegen"
  HELP_BrowseMediaLibrary = 25; 				 // Topic: "Stöbern in der Medienbibliothek"
  HELP_SearchMediaLibrary = 27; 				 // Topic: "Suche in der Medienbibliothek"
  HELP_CleanupLibrary = 97; 				 // Topic: "Medienbibliothek aufräumen"
  HELP_Categories = 23; 				 // Topic: "Konfiguration der Medienbibliothek"
  HELP_ChangeCategories = 98; 				 // Topic: "Kategorien: Dateien zuweisen"
  HELP_Treeview = 24; 				 // Topic: "Ebenen in der Baumansicht"
  HELP_DefinitionAlbum = 26; 				 // Topic: "Gruppierung und Sortierung"
  HELP_Marker = 36; 				 // Topic: "Markierungen"
  HELP_Webradio = 37; 				 // Topic: "Webradio"
  HELP_CSVExport = 38; 				 // Topic: "Export"
  HELP_Metadata = 28; 				 // Topic: "Metadaten ("ID3-Tags")"
  HELP_MetaDataQuickEdit = 44; 				 // Topic: "Einfache Bearbeitung"
  HELP_MetaDataExtendedEdit = 47; 				 // Topic: "Datei-Details"
  HELP_MetaDataAutomaticRating = 46; 				 // Topic: "Automatische Bewertung und Abspielzähler"
  HELP_MetadataCover = 34; 				 // Topic: "Cover"
  HELP_MetaDataExtendedTags = 50; 				 // Topic: "Erweiterte Tags"
  HELP_MetadataUnicode = 48; 				 // Topic: "Unicode"
  HELP_MetadataCDDA = 99; 				 // Topic: "Audio-CDs"
  HELP_GUIMain = 12; 				 // Topic: "Anpassen der Oberfläche"
  HELP_Languages = 10; 				 // Topic: "Sprachen"
  HELP_Skins = 31; 				 // Topic: "Skins"
  HELP_SkinsGrafiken = 49; 				 // Topic: "Grafiken"
  HELP_SkinsIni = 54; 				 // Topic: "Konfigurationsdatei"
  HELP_SkinsStyle = 55; 				 // Topic: "Style-Datei"
  HELP_FormDesigner = 13; 				 // Topic: "Form-Designer"
  HELP_Einzelfenster = 8; 				 // Topic: "Einzelfenster"
  HELP_PartyMode = 9; 				 // Topic: "Party-Modus"
  HELP_Tools = 29; 				 // Topic: "Tools"
  HELP_WebServer = 41; 				 // Topic: "Der Nemp Webserver"
  HELP_WebServerTemplates = 101; 				 // Topic: "Webserver: Templates"
  HELP_WebServerStaticPages = 102; 				 // Topic: "Webserver: statische Seiten und Dateien"
  HELP_WebServerDynamicPages = 103; 				 // Topic: "Webserver: dynamische Seiten"
  HELP_WebServerPlayerControl = 104; 				 // Topic: "Webserver: Steuerung des Players"
  HELP_Scrobbeln = 39; 				 // Topic: "Scrobbeln"
  HELP_HappyBirthdayTimer = 40; 				 // Topic: "Geburtstags-Timer"
  HELP_SleepTimer = 43; 				 // Topic: "Automatischer Shutdown, Einschlaf-Timer"
  HELP_DSPPlugins = 107; 				 // Topic: "Winamp DSP PLugins"
  HELP_KeyboardDisaplay = 42; 				 // Topic: "Tastatur-Display"
  HELP_TagCloudEditor = 35; 				 // Topic: "Tagwolken-Editor"
  HELP_NempAPI = 32; 				 // Topic: "Die Nemp API"
  HELP_Einstellungen = 30; 				 // Topic: "Einstellungen"
  HELP_SettingsGeneral = 56; 				 // Topic: "Allgemeine Einstellungen"
  HELP_SettingsPlayback = 57; 				 // Topic: "Wiedergabe"
  HELP_SettingsPlaylist = 52; 				 // Topic: "Playlist"
  HELP_SettingsFileManagement = 51; 				 // Topic: "Datei-Management"
  HELP_SettingsConfigLibrary = 58; 				 // Topic: "Konfiguration der Medienbibliothek"
  HELP_SettingsListView = 59; 				 // Topic: "Listen-Einstellungen"
  HELP_SettingsFonts = 60; 				 // Topic: "Schriftarten und Party-Modus"
  HELP_SettingsCoverflow = 61; 				 // Topic: "3D Coverflow"
  HELP_SettingsMetadata = 45; 				 // Topic: "Metadaten"
  HELP_SettingsSearch = 62; 				 // Topic: "Suchoptionen"
  HELP_SettingsWebradio = 63; 				 // Topic: "Webradio"
  HELP_SettingsEffects = 64; 				 // Topic: "Effekte und ReplayGain"
  HELP_SettingsBirthday = 65; 				 // Topic: "Geburtstags-Timer"
  HELP_SettingsLastFM = 66; 				 // Topic: "LastFM (scrobbeln)"
  HELP_SettingsWebserver = 67; 				 // Topic: "Webserver"
  HELP_SettingsControls = 68; 				 // Topic: "Steuerung"
  HELP_WindowsRegistry = 69; 				 // Topic: "Windows: Dateitypen-Registrierung"
  HELP_VersionHistory = 33; 				 // Topic: "Versionsgeschichte"
  HELP_Version52 = 106; 				 // Topic: "Version 5.2"
  HELP_Version51 = 100; 				 // Topic: "Version 5.1"
  HELP_Version50 = 96; 				 // Topic: "Version 5.0"
  HELP_Version415 = 53; 				 // Topic: "Version 4.15"
  HELP_Version414 = 70; 				 // Topic: "Version 4.14"
  HELP_Version413 = 71; 				 // Topic: "Version 4.13"
  HELP_Version412 = 72; 				 // Topic: "Version 4.12"
  HELP_Version411 = 73; 				 // Topic: "Version 4.11"
  HELP_Version410 = 74; 				 // Topic: "Version 4.10"
  HELP_Version49 = 75; 				 // Topic: "Version 4.9"
  HELP_Version48 = 76; 				 // Topic: "Version 4.8"
  HELP_Version47 = 77; 				 // Topic: "Version 4.7"
  HELP_Version46 = 78; 				 // Topic: "Version 4.6"
  HELP_Version45 = 79; 				 // Topic: "Version 4.5"
  HELP_Version44 = 80; 				 // Topic: "Version 4.4"
  HELP_Version43 = 81; 				 // Topic: "Version 4.3"
  HELP_Version42 = 82; 				 // Topic: "Version 4.2"
  HELP_Version41 = 83; 				 // Topic: "Version 4.1"
  HELP_Version40 = 84; 				 // Topic: "Version 4.0 - Nemp wird Open Source"
  HELP_Version33 = 85; 				 // Topic: "Version 3.3"
  HELP_Version32 = 86; 				 // Topic: "Version 3.2"
  HELP_Version31 = 87; 				 // Topic: "Version 3.1"
  HELP_Version30 = 88; 				 // Topic: "Version 3.0"
  HELP_Version25 = 89; 				 // Topic: "Version 2.5"
  HELP_Version24 = 90; 				 // Topic: "Version 2.4"
  HELP_Version23 = 91; 				 // Topic: "Version 2.3"
  HELP_Version22 = 92; 				 // Topic: "Version 2.2"
  HELP_Version21 = 93; 				 // Topic: "Version 2.1 - Nemp wird zum mp3-Player"
  HELP_Version20 = 94; 				 // Topic: "Version 2.0"
  HELP_Version10 = 95; 				 // Topic: "Version 1.0"
  HELP_Dummy = 0; 				 // Topic: "Dummy"

implementation

end.
