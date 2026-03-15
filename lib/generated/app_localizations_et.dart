// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Estonian (`et`).
class AppLocalizationsEt extends AppLocalizations {
  AppLocalizationsEt([String locale = 'et']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Pole kehtiv $arg1 äpi URL';
  }

  @override
  String get noReleaseFound => 'Sobivat väljaannet ei leitud';

  @override
  String get noVersionFound => 'Ei suutnud tuvastada väljaande versiooni';

  @override
  String get urlMatchesNoSource => 'URL ei vasta tuntud allikale';

  @override
  String get cantInstallOlderVersion =>
      'Ei saa installida äpi vanemat versiooni';

  @override
  String get appIdMismatch =>
      'Allalaaditud paketi ID ei vasta olemasolevale äpi ID-le';

  @override
  String get functionNotImplemented =>
      'See klass pole seda funktsiooni implementeerinud';

  @override
  String get placeholder => 'Kohatäide';

  @override
  String get someErrors => 'Tekkis mõned vead';

  @override
  String get unexpectedError => 'Ootamatu viga';

  @override
  String get ok => 'Olgu';

  @override
  String get and => 'ja';

  @override
  String get githubPATLabel =>
      'GitHub\'i isiklik juurdepääsutunnus (suurendab piirangut)';

  @override
  String get includePrereleases => 'Kaasa eelversioonid';

  @override
  String get fallbackToOlderReleases => 'Varuvariant vanematele väljaannetele';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filtreeri väljaannete pealkirju regulaaravaldisega';

  @override
  String get invalidRegEx => 'Vigane regulaaravaldis';

  @override
  String get noDescription => 'Kirjeldus puudub';

  @override
  String get cancel => 'Tühista';

  @override
  String get requiredInBrackets => '(kohustuslik)';

  @override
  String get dropdownNoOptsError =>
      'VIGA: RIPPLOENDIS PEAB OLEMA VÄHEMALT ÜKS VALIK';

  @override
  String get color => 'Värv';

  @override
  String get standard => 'Standard';

  @override
  String get custom => 'Kohandatud';

  @override
  String get useMaterialYou => 'Kasuta Material You värve';

  @override
  String get githubStarredRepos => 'GitHub\'i tärniga repod';

  @override
  String get uname => 'Kasutajanimi';

  @override
  String get wrongArgNum => 'Vale arv argumente antud';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 on ainult jälgimiseks';
  }

  @override
  String get source => 'Allikas';

  @override
  String get app => 'Äpp';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Selle allika äpid on \'ainult jälgimiseks\'.';

  @override
  String get youPickedTrackOnly => 'Olete valinud \'ainult jälgimise\' valiku.';

  @override
  String get trackOnlyAppDescription =>
      'Äpi jälgitakse uuenduste jaoks, kuid Updatium ei saa seda alla laadida ega installida.';

  @override
  String get cancelled => 'Tühistatud';

  @override
  String get appAlreadyAdded => 'Äpp on juba lisatud';

  @override
  String get alreadyUpToDateQuestion => 'Äpp on juba ajakohane?';

  @override
  String get addApp => 'Lisa äpp';

  @override
  String get appSourceURL => 'Äpi allika URL';

  @override
  String get error => 'Viga';

  @override
  String get add => 'Lisa';

  @override
  String get searchSomeSourcesLabel => 'Otsi (ainult mõned allikad)';

  @override
  String get search => 'Otsi';

  @override
  String additionalOptsFor(String arg1) {
    return 'Lisavalikud $arg1 jaoks';
  }

  @override
  String get supportedSources => 'Toetatud allikad';

  @override
  String get trackOnlyInBrackets => '(ainult jälgimine)';

  @override
  String get searchableInBrackets => '(otsitav)';

  @override
  String get appsString => 'Äpid';

  @override
  String get noApps => 'Tere tulemast!';

  @override
  String get noAppsSubtext =>
      'Saate lisada oma esimese äpi, valides allolevat \'Lisa äpp\' nuppu.';

  @override
  String get noAppsForFilter => 'Filtrile äpe ei leitud';

  @override
  String byX(String arg1) {
    return 'Autor: $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Edenemine: $arg1%';
  }

  @override
  String get pleaseWait => 'Palun oodake';

  @override
  String get updateAvailable => 'Uuendus saadaval';

  @override
  String get notInstalled => 'Pole installitud';

  @override
  String get pseudoVersion => 'pseudo-versioon';

  @override
  String get selectAll => 'Vali kõik';

  @override
  String deselectX(String arg1) {
    return 'Tühista $arg1 valik';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 eemaldatakse Updatiumist, kuid jääb seadmesse installituks.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Eemalda valitud äpid?';

  @override
  String get removeSelectedApps => 'Eemalda valitud äpid';

  @override
  String updateX(String arg1) {
    return 'Uuenda $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Installi $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Märgi $arg1\n(ainult jälgimine)\nuuendatuks';
  }

  @override
  String changeX(String arg1) {
    return 'Muuda $arg1';
  }

  @override
  String get installUpdateApps => 'Installi/uuenda äpid';

  @override
  String get installUpdateSelectedApps => 'Installi/uuenda valitud äpid';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Märgi $arg1 valitud äpi uuendatuks?';
  }

  @override
  String get no => 'Ei';

  @override
  String get yes => 'Jah';

  @override
  String get markSelectedAppsUpdated => 'Märgi valitud äpid uuendatuks';

  @override
  String get pinToTop => 'Kinnita üles';

  @override
  String get unpinFromTop => 'Eemalda kinnitus ülevalt';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Lähtesta valitud äpide installimise olek?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Kõikide valitud äpide installimise olek lähtestatakse.\n\nSee võib aidata, kui Updatiumis näidatav äpi versioon on vale nurkunud uuenduste või muude probleemide tõttu.';

  @override
  String get customLinkMessage =>
      'Need lingid töötavad seadmetel, kuhu on installitud Updatium';

  @override
  String get shareAppConfigLinks => 'Jaga äpi konfiguratsiooni HTML-lingina';

  @override
  String get shareSelectedAppURLs => 'Jaga valitud äpide URL-e';

  @override
  String get resetInstallStatus => 'Lähtesta installimise olek';

  @override
  String get more => 'Rohkem';

  @override
  String get removeOutdatedFilter => 'Eemalda aegunud äppide filter';

  @override
  String get showOutdatedOnly => 'Näita ainult aegunud äppe';

  @override
  String get filter => 'Filter';

  @override
  String get filterApps => 'Filtreeri äpid';

  @override
  String get appName => 'Äpi nimi';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Ajakohased äpid';

  @override
  String get nonInstalledApps => 'Installimata äpid';

  @override
  String get importExport => 'Import/eksport';

  @override
  String get settings => 'Seaded';

  @override
  String exportedTo(String arg1) {
    return 'Eksporditud asukohta $arg1';
  }

  @override
  String get updatiumExport => 'Updatiumi eksport';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Vigane sisend';

  @override
  String importedX(String arg1) {
    return 'Imporditud $arg1';
  }

  @override
  String get updatiumImport => 'Updatiumi import';

  @override
  String get importFromURLList => 'Impordi URL-loendist';

  @override
  String get searchQuery => 'Otsingupäring';

  @override
  String get appURLList => 'Äpi URL-loend';

  @override
  String get line => 'Rida';

  @override
  String searchX(String arg1) {
    return 'Otsi $arg1';
  }

  @override
  String get noResults => 'Tulemusi ei leitud';

  @override
  String importX(String arg1) {
    return 'Impordi $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Imporditud äpid võivad valesti näidata kui \"pole installitud\".\nSelle parandamiseks installige need uuesti Updatiumi kaudu.\nSee ei tohiks mõjutada äpi andmeid.\n\nMõjutab ainult URL- ja kolmanda osapoole importimeetodeid.';

  @override
  String get importErrors => 'Importimisvead';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1 / $arg2 äpi imporditud.';
  }

  @override
  String get followingURLsHadErrors => 'Järgmistel URL-idel olid vead:';

  @override
  String get selectURL => 'Vali URL';

  @override
  String get selectURLs => 'Vali URL-id';

  @override
  String get pick => 'Vali';

  @override
  String get theme => 'Teema';

  @override
  String get dark => 'Tume';

  @override
  String get light => 'Hele';

  @override
  String get followSystem => 'Järgi süsteemi';

  @override
  String get followSystemThemeExplanation =>
      'Süsteemi teema järgimine on võimalik ainult kolmandate osapoolte rakenduste abil';

  @override
  String get useBlackTheme => 'Kasuta puhtalt musta tumedat teemat';

  @override
  String get appSortBy => 'Äpide sorteerimine';

  @override
  String get authorName => 'Autor/nimi';

  @override
  String get nameAuthor => 'Nimi/autor';

  @override
  String get asAdded => 'Nagu lisatud';

  @override
  String get appSortOrder => 'Äpide sortimisjärjekord';

  @override
  String get ascending => 'Kasvav';

  @override
  String get descending => 'Kahanev';

  @override
  String get bgUpdateCheckInterval => 'Taustauuenduste kontrollimise intervall';

  @override
  String get neverManualOnly => 'Mitte kunagi - ainult käsitsi';

  @override
  String get appearance => 'Välimus';

  @override
  String get pinUpdates => 'Kinnita uuendused äpide vaate ülaossa';

  @override
  String get updates => 'Uuendused';

  @override
  String get sourceSpecific => 'Allikapõhine';

  @override
  String get appSource => 'Äpi allikas';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Logisid puuduvad';

  @override
  String get appLogs => 'Äpi logid';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Sulge';

  @override
  String get share => 'Jaga';

  @override
  String get appNotFound => 'Äppi ei leitud';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-eksport';

  @override
  String get pickAnAPK => 'Vali APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1-l on rohkem kui üks pakett:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Teie seade toetab $arg1 CPU-arhitektuuri.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Teie seade toetab järgmisi CPU-arhitektuure:';

  @override
  String get warning => 'Hoiatus';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Äpi allikas on \'$arg1\', kuid väljaandepakett tuleb allikast \'$arg2\'. Jätkame?';
  }

  @override
  String get updatesAvailable => 'Uuendusi saadaval';

  @override
  String get updatesAvailableNotifDescription =>
      'Teavitab kasutajat, et Updatiumi poolt jälgitavatele ühele või enamale äpile on uuendusi saadaval';

  @override
  String get noNewUpdates => 'Uusi uuendusi pole.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1-l on uuendus.';
  }

  @override
  String get appsUpdated => 'Äpid uuendatud';

  @override
  String get appsNotUpdated => 'Äppide uuendamine ebaõnnestus';

  @override
  String get appsUpdatedNotifDescription =>
      'Teavitab kasutajat, et ühe või enama äpi uuendused rakendati taustal';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 uuendati versioonile $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return '$arg1 uuendamine versioonile $arg2 ebaõnnestus.';
  }

  @override
  String get errorCheckingUpdates => 'Viga uuenduste kontrollimisel';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Teavitus, mis ilmub, kui taustauuenduste kontrollimine ebaõnnestub';

  @override
  String get appsRemoved => 'Äpid eemaldatud';

  @override
  String get appsRemovedNotifDescription =>
      'Teavitab kasutajat, et üks või rohkem äppi eemaldati nende laadimisel tekkinud vigade tõttu';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 eemaldati järgmise vea tõttu: $arg2';
  }

  @override
  String get completeAppInstallation => 'Lõpeta äpi installimine';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium peab olema avetud äppide installimiseks';

  @override
  String get completeAppInstallationNotifDescription =>
      'Palub kasutajal naasta Updatiumi äpi installimise lõpetamiseks';

  @override
  String get checkingForUpdates => 'Uuenduste kontrollimine';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Ajutine teavitus, mis ilmub uuendusi kontrollides';

  @override
  String get pleaseAllowInstallPerm =>
      'Palun lubage Updatiumil äppe installida';

  @override
  String get trackOnly => 'Ainult jälgimine';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Viga $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Versiooni parandamine keelatud (plugin näib ei töötavat)';

  @override
  String get unknown => 'Tundmatu';

  @override
  String get none => 'Pole';

  @override
  String get all => 'Kõik';

  @override
  String get never => 'Mitte kunagi';

  @override
  String latestVersionX(String arg1) {
    return 'Viimane: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Installitud: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Viimane uuenduste kontroll: $arg1';
  }

  @override
  String get remove => 'Eemalda';

  @override
  String get yesMarkUpdated => 'Jah, märgi uuendatuks';

  @override
  String get fdroid => 'F-Droid ametlik';

  @override
  String get appIdOrName => 'Äpi ID või nimi';

  @override
  String get appId => 'Äpi ID';

  @override
  String get appWithIdOrNameNotFound => 'Selle ID või nimega äppi ei leitud';

  @override
  String get reposHaveMultipleApps => 'Repod võivad sisaldada mitut äppi';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid kolmanda osapoole repo';

  @override
  String get gitlab => 'GitLab';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get izzyondroid => 'IzzyOnDroid';

  @override
  String get sourcehut => 'SourceHut';

  @override
  String get apkcombo => 'APKCombo';

  @override
  String get apkpure => 'APKPure';

  @override
  String get aptoide => 'Aptoide';

  @override
  String get uptodown => 'Uptodown';

  @override
  String get huaweiappgallery => 'Huawei App Gallery';

  @override
  String get rustore => 'RuStore';

  @override
  String get jenkins => 'Jenkins';

  @override
  String get apkmirror => 'APKMirror';

  @override
  String get telegramapp => 'Telegram App';

  @override
  String get neutroncode => 'NeutronCode';

  @override
  String get html => 'HTML';

  @override
  String get install => 'Installi';

  @override
  String get markInstalled => 'Märgi installituks';

  @override
  String get update => 'Uuenda';

  @override
  String get updated => 'Uuendatud';

  @override
  String get markUpdated => 'Märgi uuendatuks';

  @override
  String get additionalOptions => 'Lisavalikud';

  @override
  String get disableVersionDetection => 'Keela versiooni tuvastamine';

  @override
  String get noVersionDetectionExplanation =>
      'Seda valikut tuleks kasutada ainult äppide puhul, kus versiooni tuvastamine ei tööta korrektselt.';

  @override
  String downloadingX(String arg1) {
    return '$arg1 allalaadimine';
  }

  @override
  String downloadX(String arg1) {
    return 'Laadi $arg1 alla';
  }

  @override
  String downloadedX(String arg1) {
    return '$arg1 allalaaditud';
  }

  @override
  String get releaseAsset => 'Väljaande vara';

  @override
  String get downloadNotifDescription =>
      'Teavitab kasutajat äpi allalaadimise edenemisest';

  @override
  String get noAPKFound => 'APK-d ei leitud';

  @override
  String get noVersionDetection => 'Versiooni tuvastamine puudub';

  @override
  String get categorize => 'Kategoriseeri';

  @override
  String get categories => 'Kategooriad';

  @override
  String get category => 'Kategooria';

  @override
  String get noCategory => 'Kategooria puudub';

  @override
  String get noCategories => 'Kategooriad puuduvad';

  @override
  String get deleteCategoriesQuestion => 'Kustutada kategooriad?';

  @override
  String get categoryDeleteWarning =>
      'Kõik kustutatud kategooriate äpid seatakse kategoriseerimataks.';

  @override
  String get addCategory => 'Lisa kategooria';

  @override
  String get label => 'Silt';

  @override
  String get language => 'Keel';

  @override
  String get copiedToClipboard => 'Kopeeritud lõikelauale';

  @override
  String get storagePermissionDenied => 'Salvestusruumi luba keelatud';

  @override
  String get selectedCategorizeWarning =>
      'See asendab kõik olemasolevad kategooria seaded valitud äppide jaoks.';

  @override
  String get filterAPKsByRegEx => 'Filtreeri APK-sid regulaaravaldisega';

  @override
  String get removeFromUpdatium => 'Eemalda Updatiumist';

  @override
  String get uninstallFromDevice => 'Desinstalli seadmest';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Töötab ainult versiooni tuvastamiseta äppide puhul.';

  @override
  String get releaseDateAsVersion =>
      'Kasuta väljaande kuupäeva versiooni stringina';

  @override
  String get releaseTitleAsVersion =>
      'Kasuta väljaande pealkirja versiooni stringina';

  @override
  String get releaseDateAsVersionExplanation =>
      'Seda valikut tuleks kasutada ainult äppide puhul, kus versiooni tuvastamine ei tööta korrektselt, kuid väljaande kuupäev on saadaval.';

  @override
  String get changes => 'Muudatused';

  @override
  String get releaseDate => 'Väljaande kuupäev';

  @override
  String get importFromURLsInFile => 'Impordi URL-id failist (nagu OPML)';

  @override
  String get versionDetectionExplanation =>
      'Võrdle versiooni stringiga operatsioonisüsteemi tuvastatud versiooni';

  @override
  String get versionDetection => 'Versiooni tuvastamine';

  @override
  String get standardVersionDetection => 'Standardne versiooni tuvastamine';

  @override
  String get groupByCategory => 'Grupeeri kategooria järgi';

  @override
  String get listView => 'Loendivaade';

  @override
  String get gridView => 'Ruudustikuvaade';

  @override
  String get autoApkFilterByArch =>
      'Proovi filtreerida APK-sid CPU-arhitektuuri järgi, kui võimalik';

  @override
  String get autoLinkFilterByArch =>
      'Proovi filtreerida linke CPU-arhitektuuri järgi, kui võimalik';

  @override
  String get overrideSource => 'Tühista allikas';

  @override
  String get dontShowAgain => 'Ära näita uuesti';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Ära näita \'ainult jälgimise\' hoiatusi';

  @override
  String get dontShowAPKOriginWarnings => 'Ära näita APK päritolu hoiatusi';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Liiguta installimata äpid äpide vaate alumisse ossa';

  @override
  String get hideNonInstalledApps => 'Peida installimata äpid';

  @override
  String get gitlabPATLabel => 'GitLabi isiklik juurdepääsutunnus';

  @override
  String get about => 'Programmist';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1 vajab lisandmed (seadetes)';
  }

  @override
  String get checkOnStart => 'Kontrolli uuendusi käivitamisel';

  @override
  String get safeMode => 'Turvarežiim';

  @override
  String get safeModeDescription =>
      'Peida Lisa rakendus leht ja näita selle asemel Import/Eksport';

  @override
  String get safeModeAddAppDisabled =>
      'Rakenduse lisamine on turvarežiimis keelatud';

  @override
  String get tryInferAppIdFromCode => 'Proovi tuletada appi ID lähtekoodist';

  @override
  String get removeOnExternalUninstall =>
      'Eemalda automaatselt väliselt desinstallitud äpid';

  @override
  String get pickHighestVersionCode =>
      'Automaatselt vali kõrgeima versioonikoodiga APK';

  @override
  String get checkUpdateOnDetailPage =>
      'Kontrolli uuendusi äpi detaillehe avamisel';

  @override
  String get disablePageTransitions => 'Keela lehe üleminekute animatsioonid';

  @override
  String get reversePageTransitions =>
      'Pööra lehe üleminekute animatsioonid ümber';

  @override
  String get minStarCount => 'Minimaalne tärnide arv';

  @override
  String get addInfoBelow => 'Lisa see info alla.';

  @override
  String get addInfoInSettings => 'Lisa see info seadetes.';

  @override
  String get githubSourceNote =>
      'GitHub\'i piirangutest saab vältida API võtme kasutamisega.';

  @override
  String get sortByLastLinkSegment =>
      'Sorteeri ainult lingi viimase segmendi järgi';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filtreeri väljaande märkmeid regulaaravaldisega';

  @override
  String get customLinkFilterRegex =>
      'Kohandatud APK lingi filter regulaaravaldisega (vaikimisi \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Äpi uuendamise katse';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Teavitab kasutajat, et ühe või enama äpi uuendused võidi rakendada taustal';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 võidi uuendada versioonile $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'Luba taustauuendused';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Taustauuendused ei pruugi olla võimalikud kõikide äppide puhul.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Taustalise installimise edu saab kindlaks teha ainult Updatiumi avamisel.';

  @override
  String get verifyLatestTag => 'Kinnita \'latest\' silt';

  @override
  String get intermediateLinkRegex =>
      'Filtreeri \'vahelingu\' lingi külastamiseks';

  @override
  String get filterByLinkText => 'Filtreeri linke lingi teksti järgi';

  @override
  String get matchLinksOutsideATags => 'Otsi linke <a> siltidest väljaspool';

  @override
  String get intermediateLinkNotFound => 'Vahelingu linki ei leitud';

  @override
  String get intermediateLink => 'Vahelingu link';

  @override
  String get exemptFromBackgroundUpdates =>
      'Vabasta taustauuendustest (kui lubatud)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Keela taustauuendused, kui pole Wi-Fi võrgus';

  @override
  String get bgUpdatesWhileChargingOnly => 'Keela taustauuendused, kui ei lae';

  @override
  String get autoSelectHighestVersionCode =>
      'Automaatselt vali kõrgeima versioonikoodiga APK';

  @override
  String get versionExtractionRegEx => 'Versiooni stringi eraldamise RegEx';

  @override
  String get trimVersionString => 'Kärbi versiooni stringi RegEx-iga';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Kasutatav vaste grupp \"$arg1\" jaoks';
  }

  @override
  String get matchGroupToUse =>
      'Kasutatav vaste grupp versiooni stringi eraldamise RegEx-ile';

  @override
  String get highlightTouchTargets => 'Tõsta vähem ilmsed puutepunktid esile';

  @override
  String get pickExportDir => 'Vali ekspordi kataloog';

  @override
  String get autoExportOnChanges => 'Automaatselt ekspordi muudatuste korral';

  @override
  String get includeSettings => 'Kaasa seaded';

  @override
  String get filterVersionsByRegEx => 'Filtreeri versioone regulaaravaldisega';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Proovi valida soovitatud versioonikoodiga APK';

  @override
  String get dontSortReleasesList => 'Säilita väljaannete järjekord API-st';

  @override
  String get reverseSort => 'Pööra sortimine ümber';

  @override
  String get takeFirstLink => 'Võta esimene link';

  @override
  String get skipSort => 'Jäta sortimine vahele';

  @override
  String get debugMenu => 'Silumismenüü';

  @override
  String get bgTaskStarted => 'Taustatöö alustatud - vaadake logisid.';

  @override
  String get runBgCheckNow => 'Käivita taustauuenduste kontroll kohe';

  @override
  String get versionExtractWholePage =>
      'Rakenda versiooni stringi eraldamise RegEx kogu lehele';

  @override
  String get installing => 'Installimine';

  @override
  String get skipUpdateNotifications => 'Jäta uuenduste teavitused vahele';

  @override
  String get updatesAvailableNotifChannel => 'Uuendusi saadaval';

  @override
  String get appsUpdatedNotifChannel => 'Äpid uuendatud';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Äpi uuendamise katse';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Viga uuenduste kontrollimisel';

  @override
  String get appsRemovedNotifChannel => 'Äpid eemaldatud';

  @override
  String downloadingXNotifChannel(String arg1) {
    return '$arg1 allalaadimine';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Lõpeta äpi installimine';

  @override
  String get checkingForUpdatesNotifChannel => 'Uuenduste kontrollimine';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Kontrolli uuendusi ainult installitud ja ainult jälgitavate äppide jaoks';

  @override
  String get supportFixedAPKURL => 'Toeta fikseeritud APK URL-e';

  @override
  String selectX(String arg1) {
    return 'Vali $arg1';
  }

  @override
  String get parallelDownloads => 'Luba paralleelsed allalaadimised';

  @override
  String get useShizuku => 'Kasuta Shizuku või Sui installimiseks';

  @override
  String get shizukuBinderNotFound => 'Shizuku teenus ei tööta';

  @override
  String get shizukuOld => 'Vana Shizuku versioon (<11) - uuendage see';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku töötab Android < 8.1 ADB-ga - uuendage Android või kasutage hoopis Sui-t';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Määra Google Play installimise allikaks (kui Shizuku\'t kasutatakse)';

  @override
  String get useSystemFont => 'Kasuta süsteemi fonti';

  @override
  String get useVersionCodeAsOSVersion =>
      'Kasuta äpi versioonikoodi operatsioonisüsteemi tuvastatud versioonina';

  @override
  String get requestHeader => 'Päringu päis';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Kasuta viimase vara üleslaadimist väljaande kuupäevana';

  @override
  String get defaultPseudoVersioningMethod =>
      'Vaikimisi pseudo-versioonimise meetod';

  @override
  String get partialAPKHash => 'Osaline APK räsi';

  @override
  String get directAPKLink => 'Otsene APK link';

  @override
  String get pseudoVersionInUse => 'Pseudo-versioon on kasutusel';

  @override
  String get installed => 'Installitud';

  @override
  String get latest => 'Viimane';

  @override
  String get invertRegEx => 'Pööra regulaaravaldis ümber';

  @override
  String get note => 'Märkus';

  @override
  String selfHostedNote(String arg1) {
    return '\"$arg1\" rippmenüüd saab kasutada iseseisvate/kohandatud allikate instantsidele juurdepääsuks.';
  }

  @override
  String get badDownload =>
      'APK-d ei suudetud parsida (ühildumatu või osaline allalaadimine)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Jaga uusi äppe AppVerifier-iga (kui saadaval)';

  @override
  String get appVerifierInstructionToast =>
      'Jaga AppVerifier-iga, naaske siia, kui olete valmis.';

  @override
  String get wiki => 'Abi/wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Luba ebaturvalised HTTP päringud';

  @override
  String get stayOneVersionBehind => 'Jää ühe versiooni viimasele järgnemaks';

  @override
  String get useFirstApkOfVersion =>
      'Automaatselt vali mitme APK seast esimene';

  @override
  String get refreshBeforeDownload =>
      'Värskenda äpi detaile enne allalaadimist';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Nimi';

  @override
  String get smartname => 'Nimi (nutikas)';

  @override
  String get sortMethod => 'Sortimismeetod';

  @override
  String get welcome => 'Tere tulemast';

  @override
  String get documentationLinksNote =>
      'Allpool lingitud Updatiumi GitHub leht sisaldab linke videotele, artiklitele, aruteludele ja muudele ressurssidele, mis aitavad teil mõista, kuidas rakendust kasutada.';

  @override
  String get batteryOptimizationNote =>
      'Pange tähele, et taustalised allalaadimised võivad töötada usaldusväärsemalt, kui lülitate Updatiumi seadetes üle \"taustateenusele\" ja/või keelate Updatiumile oma operatsioonisüsteemi seadetes aku optimeerimine.';

  @override
  String fileDeletionError(String arg1) {
    return 'Faili kustutamine ebaõnnestus (proovige kustutada käsitsi ja proovige uuesti): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Updatiumi taustateenus';

  @override
  String get foregroundServiceExplanation =>
      'Kasuta taustateenust uuenduste kontrollimiseks (usaldusväärsem, tarbib rohkem energiat)';

  @override
  String get fgServiceNotice =>
      'See teavitus on vajalik taustauuenduste kontrollimiseks (seda saab peita operatsioonisüsteemi seadetes)';

  @override
  String get excludeSecrets => 'Välista saladused';

  @override
  String get includeZips => 'Kaasa ZIP failid';

  @override
  String get zippedApkFilterRegEx => 'Filtreeri APK-sid ZIP-i sees';

  @override
  String get googleVerificationWarningP1 =>
      'Google on teatanud, et alates 2026./2027. aastast vajavad kõik \"sertifitseeritud\" Androidi seadmed, et arendaja esitaks isiklikud identiteediandmed otse Google\'le.\n\nPärast seda võib Updatium lõpetada töötamise sertifitseeritud Androidi seadmetel.';

  @override
  String get googleVerificationWarningP2 =>
      'Lisateabe saamiseks minge aadressile https://keepandroidopen.org/.';

  @override
  String get googleVerificationWarningP3 =>
      'Pange tähele, et lühikesel tähtajal võib olla võimalik installida \"kinnitamata\" (mittesobivad) äpid \"täiustatud protsessi\" kaudu, mille Google on lubanud implementeerida pärast laia vastukaja oma teadaandele, kuid nad ei ole üksikasjaliselt kirjeldanud, kuidas see töötab, mistõttu on selge, kas see tõesti säilitab kasutajate vabadused praktilises mõttes.\n\nIgatahes, Google\'i samm on oluline samm vaba üldotstarbelise arvutamise lõpule füüsiliste isikute jaoks.\n\nMitte-sertifitseeritud operatsioonisüsteemid, nagu GrapheneOS, peaksid jääda mõjutamata niikaua kui neil on lubatud olemas olla.';

  @override
  String get multipleSigners => 'Mitu allkirjastajat';

  @override
  String get securityDisclaimerTitle => 'Turvalisuse ja juriidiline lahtiütlus';

  @override
  String get license => 'Litsents';

  @override
  String get licenseText => 'See rakendus levitatakse GPL v3 litsentsi alusel.';

  @override
  String get disclaimer => 'Lahtiütlus';

  @override
  String get disclaimerText =>
      'See rakendus ei levita, ei majuta ega kinnita ühtegi välist rakendust. Kasutaja kannab täielikut vastutust kõigi selle tööriistaga installitud tarkvara turvalisuse ja seaduslikkuse eest.\n\nhttps://github.com/omeritzics/Updatium on ainus ametlik koht Updatiumi allalaadimiseks - on tugevasti soovitatud mitte alla laadida teist kohtadest, kuna allalaadimine mitteametlikelt allikatest ei ole turvaline.';

  @override
  String get privacy => 'Privaatsus';

  @override
  String get privacyText =>
      'See rakendus on privaatsuskeskne ja ei kogu isiklikke andmeid.';

  @override
  String get acceptAndContinue => 'Nõustu & Jätka';

  @override
  String get decline => 'Keeldu';

  @override
  String get githubStarPromptTitle => 'Enjoying Updatium?';

  @override
  String get githubStarPromptContent =>
      'Updatium is a voluntary, open-source community project developed in my free time. If you\'d like to support the project, please consider starring it on GitHub to help us reach more users and contributors. You won\'t be nudged about this again. Thank you in advance! :)';

  @override
  String get githubStarPromptStar => 'Star';

  @override
  String get githubStarPromptDontShowAgain => 'Don\'t show again';

  @override
  String get aPKLinkHash => 'APK lingi räsi';

  @override
  String get gHReqPrefix =>
      '\'sky22333/hubproxy\' instants GitHub päringute jaoks';

  @override
  String get continueAction => 'Jätka';

  @override
  String apps(int count) {
    return '$count Apps';
  }

  @override
  String apk(int count) {
    return '$count APKs';
  }

  @override
  String minute(int count) {
    return '$count minutes';
  }
}
