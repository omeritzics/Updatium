// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'Inte giltig $p0 App-URL';
  }

  @override
  String get noReleaseFound => 'Kunde inte hitta en lämplig releaseversion';

  @override
  String get noVersionFound => 'Kunde inte bestämma releaseversion';

  @override
  String get urlMatchesNoSource => 'URL matchar inte känd källa';

  @override
  String get cantInstallOlderVersion => 'Kan inte installera en äldre version av en app';

  @override
  String get appIdMismatch => 'Nerladdat paket-ID matchar inte nuvarande App-ID';

  @override
  String get functionNotImplemented => 'Den här klassen har inte implementerat den här funktionen';

  @override
  String get placeholder => 'Platshållare';

  @override
  String get someErrors => 'Några fel uppstod';

  @override
  String get unexpectedError => 'Oväntat fel';

  @override
  String get ok => 'Okej';

  @override
  String get and => 'och';

  @override
  String get githubPATLabel => 'GitHub Personal Access Token (ökar hastighetsgräns)';

  @override
  String get includePrereleases => 'Inkludera förreleaser';

  @override
  String get fallbackToOlderReleases => 'Fall tillbaka till äldre releaser';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtrera utgivningstitlar efter reguljärt uttryck';

  @override
  String get invalidRegEx => 'Ogiltigt reguljärt uttryck';

  @override
  String get noDescription => 'Ingen beskrivning';

  @override
  String get cancel => 'Avbryt';

  @override
  String get continue => 'Fortsätt';

  @override
  String get requiredInBrackets => '(Kräver)';

  @override
  String get dropdownNoOptsError => 'FEL: DROPDOWN MÅSTE HA MINST ETT OPT';

  @override
  String get color => 'Färg';

  @override
  String get standard => 'Standard';

  @override
  String get custom => 'Anpassad';

  @override
  String get useMaterialYou => 'Använd Material You-färger';

  @override
  String get githubStarredRepos => 'GitHub Stjärnmärkta Förråd';

  @override
  String get uname => 'Användarnamn';

  @override
  String get wrongArgNum => 'Fel antal argument har angetts';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 är \'Följ-Endast\'';
  }

  @override
  String get source => 'Källa';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly => 'Apparna från denna källa är \'Följ-Endast\'.';

  @override
  String get youPickedTrackOnly => 'Du har markerat \'Följ-Endast\'-alternativet';

  @override
  String get trackOnlyAppDescription => 'Appen kommer följas för uppdateringar men Updatium kommer inte ladda ner eller installera den.';

  @override
  String get cancelled => 'Avbruten';

  @override
  String get appAlreadyAdded => 'App redan tillagd';

  @override
  String get alreadyUpToDateQuestion => 'App redan uppdaterad?';

  @override
  String get addApp => 'Lägg till App';

  @override
  String get appSourceURL => 'URL till Appkälla';

  @override
  String get error => 'Fel';

  @override
  String get add => 'Lägg till';

  @override
  String get searchSomeSourcesLabel => 'Sök (Bara några källor)';

  @override
  String get search => 'Sök';

  @override
  String additionalOptsFor(Object p0) {
    return 'Ytterligare Alternativ för $p0';
  }

  @override
  String get supportedSources => 'Stödda Källor';

  @override
  String get trackOnlyInBrackets => '(Följ-Endast)';

  @override
  String get searchableInBrackets => '(Sökbar)';

  @override
  String get appsString => 'Appar';

  @override
  String get noApps => 'Inga Appar';

  @override
  String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Inga Appar för Filter';

  @override
  String byX(Object p0) {
    return 'Av $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Framsteg: $p0%';
  }

  @override
  String get pleaseWait => 'Vänta';

  @override
  String get updateAvailable => 'Uppdatering Tillgänglig';

  @override
  String get notInstalled => 'Inte Installerad';

  @override
  String get pseudoVersion => 'pseudoversion';

  @override
  String get selectAll => 'Välj Alla';

  @override
  String deselectX(Object p0) {
    return 'Avmarkera $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 kommer tas bort från Updatium men kommer vara fortsatt installerad på enheten.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Ta bort markerade Appar?';

  @override
  String get removeSelectedApps => 'Ta bort markerade Appar';

  @override
  String updateX(Object p0) {
    return 'Uppdatera $p0';
  }

  @override
  String installX(Object p0) {
    return 'Installera $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Märk $p0\n(Följ-Endast)\nsom Uppdaterad';
  }

  @override
  String changeX(Object p0) {
    return 'Byt $p0';
  }

  @override
  String get installUpdateApps => 'Installera/Uppdatera Appar';

  @override
  String get installUpdateSelectedApps => 'Installera/Uppdatera Markerade Appar';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Märk $p0 markerade Appar som Uppdaterade?';
  }

  @override
  String get no => 'Nej';

  @override
  String get yes => 'Ja';

  @override
  String get markSelectedAppsUpdated => 'Märk Valda Appar som Uppdaterade';

  @override
  String get pinToTop => 'Nåla fast högst upp';

  @override
  String get unpinFromTop => 'Avnåla';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Återställ Installationsstatus för valda Appar?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Installationsstatusen för de markerade apparna kommer återställas.\n\n Detta kan hjälpa när appversionen visad i Obtanium är fel på grund av misslyckade uppdateringar eller andra orsaker.';

  @override
  String get customLinkMessage => 'Dessa länkar fungerar på enheter med Updatium installerat';

  @override
  String get shareAppConfigLinks => 'Dela appkonfiguration som HTML-länk';

  @override
  String get shareSelectedAppURLs => 'Dela Valda Appars URL:er';

  @override
  String get resetInstallStatus => 'Återställ Installationstatus';

  @override
  String get more => 'Mer';

  @override
  String get removeOutdatedFilter => 'Ta bort Utgånga App-filtret';

  @override
  String get showOutdatedOnly => 'Visa Endast Utgånga Appar';

  @override
  String get filter => 'Filtrera';

  @override
  String get filterApps => 'Filtrera Appar';

  @override
  String get appName => 'Appnamn';

  @override
  String get author => 'Utvecklare';

  @override
  String get upToDateApps => 'Uppdaterade Appar';

  @override
  String get nonInstalledApps => 'Icke-Installerade Appar';

  @override
  String get importExport => 'Importera/Exportera';

  @override
  String get settings => 'Inställningar';

  @override
  String exportedTo(Object p0) {
    return 'Exporterad till $p0';
  }

  @override
  String get updatiumExport => 'Updatiumexport';

  @override
  String get invalidInput => 'Ogiltig inmatning';

  @override
  String importedX(Object p0) {
    return 'Importerad $p0';
  }

  @override
  String get updatiumImport => 'Updatium Import';

  @override
  String get importFromURLList => 'Importera från URL-lista';

  @override
  String get searchQuery => 'Sökförfrågan';

  @override
  String get appURLList => 'App URL-lista';

  @override
  String get line => 'Linje';

  @override
  String searchX(Object p0) {
    return 'Sök $p0';
  }

  @override
  String get noResults => 'Inga resultat';

  @override
  String importX(Object p0) {
    return 'Importera $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Importerade Appar kan felaktigt visas som \"Inte Installerad\".\nFör att fixa detta återinstallera dem genom Updatium.\nDetta skall inte påverka appdata.\n\n Påverkar endast URL:en och tredjepartsimportermetoder.';

  @override
  String get importErrors => 'Importfel';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 av $p1 Appar importerade.';
  }

  @override
  String get followingURLsHadErrors => 'Följande URL:er hade fel:';

  @override
  String get selectURL => 'Välj URL';

  @override
  String get selectURLs => 'Välj URL:er';

  @override
  String get pick => 'Välj';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Mörkt';

  @override
  String get light => 'Ljust';

  @override
  String get followSystem => 'Följ System';

  @override
  String get followSystemThemeExplanation => 'Följande systemtema är endast möjligt med hjälp av tredjepartsapplikationer';

  @override
  String get useBlackTheme => 'Använd svart tema';

  @override
  String get appSortBy => 'Sortera Appar via';

  @override
  String get authorName => 'Utvecklare/Namn';

  @override
  String get nameAuthor => 'Namn/Utvecklare';

  @override
  String get asAdded => 'Som tillagd';

  @override
  String get appSortOrder => 'Appsorteringsordning';

  @override
  String get ascending => 'Stigande';

  @override
  String get descending => 'Fallande';

  @override
  String get bgUpdateCheckInterval => 'Bakgrundsuppdateringskollfrekvens';

  @override
  String get neverManualOnly => 'Aldrig - Endast manuell';

  @override
  String get appearance => 'Utseende';

  @override
  String get pinUpdates => 'Fäst uppdateringar högst upp i appvyn';

  @override
  String get updates => 'Uppdateringar';

  @override
  String get sourceSpecific => 'Källspecifik';

  @override
  String get appSource => 'Appkälla';

  @override
  String get noLogs => 'Inga Loggar';

  @override
  String get appLogs => 'Apploggar';

  @override
  String get close => 'Stäng';

  @override
  String get share => 'Dela';

  @override
  String get appNotFound => 'App ej funnen';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-export';

  @override
  String get pickAnAPK => 'Välj en APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 har fler än ett paket:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Din enhet stödjer $p0 CPU-arkiktektur.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'YDin enhet stödjer följande CPU-arkitekturer:';

  @override
  String get warning => 'Varning';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'Appens källa är \'$p0\' men releasepaketet kommer från \'$p1\'. Vill du fortsätta?';
  }

  @override
  String get updatesAvailable => 'Uppdateringar Tillgängliga';

  @override
  String get updatesAvailableNotifDescription => 'Aviserar användaren att det finns uppdateringar tillgängaliga för en eller fler Appar som följs av Updatium';

  @override
  String get noNewUpdates => 'Inga nya uppdateringar.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 har en uppdatering.';
  }

  @override
  String get appsUpdated => 'Appar Uppdaterade';

  @override
  String get appsNotUpdated => 'Misslyckades med att uppdatera applikationer';

  @override
  String get appsUpdatedNotifDescription => 'Meddelar användaren att uppdateringar av en eller flera appar har tillämpats i bakgrunden';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 uppdaterades till $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Det gick inte att uppdatera $p0 till $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Fel vid uppdateringskoll';

  @override
  String get errorCheckingUpdatesNotifDescription => 'En aviserings som visar när bakgrundsuppdateringarkollar misslyckas';

  @override
  String get appsRemoved => 'Appar borttagna';

  @override
  String get appsRemovedNotifDescription => 'Aviserar användaren när en eller fler Appar togs bort på grund av fel när de laddades';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 togs bort på grund av detta felet: $p1';
  }

  @override
  String get completeAppInstallation => 'Gör klar appinstallation';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium måste vara öppet för att installera Appar';

  @override
  String get completeAppInstallationNotifDescription => 'Frågar användaren att återvända till Obtaiunium när appinstallation är klar';

  @override
  String get checkingForUpdates => 'Kollar efter Uppdateringar';

  @override
  String get checkingForUpdatesNotifDescription => 'Övergående meddelande som visas när du söker efter uppdateringar';

  @override
  String get pleaseAllowInstallPerm => 'Tillåt Obtanium att installera Appar';

  @override
  String get trackOnly => 'Följ-Endast';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Fel $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Versionskorrigering inaktiverat (plugin verkar inte fungera)';

  @override
  String get unknown => 'Okänd';

  @override
  String get none => 'Ingen';

  @override
  String get all => 'Alla';

  @override
  String get never => 'Aldrig';

  @override
  String latestVersionX(Object p0) {
    return 'Senaste Version: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Installerad Version: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Senaste uppdateringskoll: $p0';
  }

  @override
  String get remove => 'Ta bort';

  @override
  String get yesMarkUpdated => 'Ja, Märk som Uppdaterad';

  @override
  String get fdroid => 'F-Droid Officiell';

  @override
  String get appIdOrName => 'App-ID eller Namn';

  @override
  String get appId => 'App-ID';

  @override
  String get appWithIdOrNameNotFound => 'Ingen App funnen med det namnet eller ID';

  @override
  String get reposHaveMultipleApps => 'Förråd kan innehålla flera ApparR';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid Tredjeparts Förråd';

  @override
  String get install => 'Installera';

  @override
  String get markInstalled => 'Märk Installerad';

  @override
  String get update => 'Uppdatera';

  @override
  String get updated => 'Uppdaterad';

  @override
  String get markUpdated => 'Märk Uppdaterad';

  @override
  String get additionalOptions => 'Ytterligare Alternativ';

  @override
  String get disableVersionDetection => 'Inaktivera versionsdetektering';

  @override
  String get noVersionDetectionExplanation => 'Det här alternativet bör endast användas för appar där versionsidentifiering inte fungerar korrekt.';

  @override
  String downloadingX(Object p0) {
    return 'Laddar ner $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Ladda ner $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Nedladdad $p0';
  }

  @override
  String get releaseAsset => 'Frigör tillgång';

  @override
  String get downloadNotifDescription => 'Meddelar användaren om framstegen med att ladda ner en app';

  @override
  String get noAPKFound => 'Ingen APK funnen';

  @override
  String get noVersionDetection => 'Ingen versiondetektering';

  @override
  String get categorize => 'Kategorisera';

  @override
  String get categories => 'Kategorier';

  @override
  String get category => 'Kategori';

  @override
  String get noCategory => 'Ingen Kategori';

  @override
  String get noCategories => 'Inga Kategorier';

  @override
  String get deleteCategoriesQuestion => 'Ta Bort Kategorier?';

  @override
  String get categoryDeleteWarning => 'Alla Appar i de borttagna kategorierna kommer att märkas som okategoriserade.';

  @override
  String get addCategory => 'Lägg till Kategori';

  @override
  String get label => 'Märka';

  @override
  String get language => 'Språk';

  @override
  String get copiedToClipboard => 'Kopierat till Urklipp';

  @override
  String get storagePermissionDenied => 'Lagringsbehörighet nekad';

  @override
  String get selectedCategorizeWarning => 'Detta kommer att ersätta alla befintliga kategoriinställningar för de valda apparna.';

  @override
  String get filterAPKsByRegEx => 'Filtrera APK-filer efter reguljärt uttryck';

  @override
  String get removeFromUpdatium => 'Ta bort från Updatium';

  @override
  String get uninstallFromDevice => 'Avinstallera från Enheten';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Fungerar bara för Appar med versionsdetektering inaktiverat..';

  @override
  String get releaseDateAsVersion => 'Använd releasedatum som version';

  @override
  String get releaseTitleAsVersion => 'Använd release-titel som versionssträng';

  @override
  String get releaseDateAsVersionExplanation => 'Det här alternativet bör endast användas för appar där versionsidentifiering inte fungerar korrekt, men ett releasedatum är tillgängligt.';

  @override
  String get changes => 'Ändringar';

  @override
  String get releaseDate => 'Releasedatum';

  @override
  String get importFromURLsInFile => 'Importera från URL:er i fil (som OPML)';

  @override
  String get versionDetectionExplanation => 'Sammanställ versionssträng med version upptäckt från OS';

  @override
  String get versionDetection => 'Versionsdetektering';

  @override
  String get standardVersionDetection => 'Standardversionsdetektering';

  @override
  String get groupByCategory => 'Gruppera via Kategori';

  @override
  String get listView => 'Listvy';

  @override
  String get gridView => 'Rutnätsvy';

  @override
  String get autoApkFilterByArch => 'Försök att filtrera APK-filer efter CPU-arkitektur om möjligt';

  @override
  String get autoLinkFilterByArch => 'Försök att filtrera länkar efter CPU-arkitektur om möjligt';

  @override
  String get overrideSource => 'Överskrid Källa';

  @override
  String get dontShowAgain => 'Visa inte detta igen';

  @override
  String get dontShowTrackOnlyWarnings => 'Visa inte \'Följ-Endast\' varningar';

  @override
  String get dontShowAPKOriginWarnings => 'Visa inte APK-ursprung varningar';

  @override
  String get moveNonInstalledAppsToBottom => 'Flytta icke-installerade appar till botten av appvyn';

  @override
  String get hideNonInstalledApps => 'Dölj icke-installerade appar';

  @override
  String get gitlabPATLabel => 'Personligt åtkomsttoken för GitLab';

  @override
  String get about => 'Om';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0: This needs additional credentials (in Settings)';
  }

  @override
  String get checkOnStart => 'Kolla efter uppdateringar vid start';

  @override
  String get tryInferAppIdFromCode => 'Försök härleda app-id från källkoden';

  @override
  String get removeOnExternalUninstall => 'Ta bort externt avinstallerade appar automatiskt';

  @override
  String get pickHighestVersionCode => 'Välj automatiskt högsta versionskod APK';

  @override
  String get checkUpdateOnDetailPage => 'Sök efter uppdateringar om att öppna en app-detaljsida';

  @override
  String get disablePageTransitions => 'Inaktivera sidövergångsanimationer';

  @override
  String get reversePageTransitions => 'Animeringar för omvänd sidövergång';

  @override
  String get minStarCount => 'Minsta antal stjärnmarkeringar';

  @override
  String get addInfoBelow => 'Lägg till denna information nedanför.';

  @override
  String get addInfoInSettings => 'Lägg till denna information i Inställningar.';

  @override
  String get githubSourceNote => 'GitHub-hastighetsbegränsning kan undvikas med en API-nyckel.';

  @override
  String get sortByLastLinkSegment => 'Sortera endast efter det sista segmentet av länken';

  @override
  String get filterReleaseNotesByRegEx => 'Filtrera versionskommentarer efter reguljärt uttryck';

  @override
  String get customLinkFilterRegex => 'Anpassad APK-länkfiltrera efter reguljärt uttryck (standard \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Appuppdateringar försökte';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Meddelar användaren om att uppdateringar av en eller flera appar potentiellt har tillämpats i bakgrunden';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 kan ha uppdaterats till $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Aktivera Bakgrundsuppdateringar';

  @override
  String get backgroundUpdateReqsExplanation => 'Bakgrundsuppdateringar är inte möjligt för alla appar.';

  @override
  String get backgroundUpdateLimitsExplanation => 'Framgången för en bakgrundsinstallation kan bara avgöras när Updatium öppnas.';

  @override
  String get verifyLatestTag => 'Verifiera \'senaste\'-taggen';

  @override
  String get intermediateLinkRegex => 'Filtrera för en \"mellanliggande\" länk att besöka';

  @override
  String get filterByLinkText => 'Filtrera länkar efter länktext';

  @override
  String get matchLinksOutsideATags => 'Matcha länkar utanför <a>-taggar';

  @override
  String get intermediateLinkNotFound => 'Mellanlänk hittades inte';

  @override
  String get intermediateLink => 'Mellanlänk';

  @override
  String get exemptFromBackgroundUpdates => 'Undta från bakgrundsuppdateringar (om aktiverad)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Inaktivera Bakgrundsuppdateringar utan Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Inaktivera bakgrundsuppdateringar när du inte laddar';

  @override
  String get autoSelectHighestVersionCode => 'Välj automatiskt högsta versionskod APK';

  @override
  String get versionExtractionRegEx => 'Version Extraction RegEx';

  @override
  String get trimVersionString => 'Trimma versionssträng med RegEx';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Matchningsgrupp att använda för \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Match Group to Use';

  @override
  String get highlightTouchTargets => 'Markera mindre uppenbara beröringsobjekt';

  @override
  String get pickExportDir => 'Välj Exportsökväg';

  @override
  String get autoExportOnChanges => 'Automatisk export vid ändringar';

  @override
  String get includeSettings => 'Inkludera inställningar';

  @override
  String get filterVersionsByRegEx => 'Filtrera versioner efter reguljärt uttryck';

  @override
  String get trySelectingSuggestedVersionCode => 'Försök att välja föreslagen versionCode APK';

  @override
  String get dontSortReleasesList => 'Behåll släpporder från API';

  @override
  String get reverseSort => 'Omvänd sortering';

  @override
  String get takeFirstLink => 'Ta första länken';

  @override
  String get skipSort => 'Hoppa över sortering';

  @override
  String get debugMenu => 'Felsökningsmeny';

  @override
  String get bgTaskStarted => 'Bakgrundsuppgift startat - kontrollera loggar.';

  @override
  String get runBgCheckNow => 'Kör Bakgrundsuppdateringskoll Nu';

  @override
  String get versionExtractWholePage => 'Tillämpa Regex för versionssträngextraktion på hela sidan';

  @override
  String get installing => 'Installerar';

  @override
  String get skipUpdateNotifications => 'Hoppa över uppdateringsmeddelanden';

  @override
  String get updatesAvailableNotifChannel => 'Uppdateringar tillgängliga';

  @override
  String get appsUpdatedNotifChannel => 'Appar uppdaterade';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Appuppdateringar försökte';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Fel vid sökning efter uppdateringar';

  @override
  String get appsRemovedNotifChannel => 'Appar borttagna';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Laddar ner $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Fullständig appinstallation';

  @override
  String get checkingForUpdatesNotifChannel => 'Kollar efter uppdateringar';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Kontrollera bara installerade appar och endast spårbara appar för uppdateringar';

  @override
  String get supportFixedAPKURL => 'Stöd fasta APK-webbadresser';

  @override
  String selectX(Object p0) {
    return 'Välj $p0';
  }

  @override
  String get parallelDownloads => 'Tillåt parallella nedladdningar';

  @override
  String get useShizuku => 'Använd Shizuku eller Sui för att installera';

  @override
  String get shizukuBinderNotFound => 'Shizuku is not running';

  @override
  String get shizukuOld => 'Gammal Shizuku-version (<11) - uppdatera den';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku körs på Android < 8.1 med ADB - uppdatera Android eller använd Sui istället';

  @override
  String get shizukuPretendToBeGooglePlay => 'Ange Google Play som installationskälla (om Shizuku används)';

  @override
  String get useSystemFont => 'Använd systemteckensnittet';

  @override
  String get useVersionCodeAsOSVersion => 'Använd appversionskoden som OS-upptäckt version';

  @override
  String get requestHeader => 'Rubrik för begäran';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Använd senaste tillgångsuppladdning som releasedatum';

  @override
  String get defaultPseudoVersioningMethod => 'Standard pseudoversionsmetod';

  @override
  String get partialAPKHash => 'Delvis APK-hash';

  @override
  String get apkLinkHash => 'APK-länk Hash';

  @override
  String get directAPKLink => 'Direkt APK-länk';

  @override
  String get pseudoVersionInUse => 'En pseudoversion används';

  @override
  String get installed => 'Installerad';

  @override
  String get latest => 'Senast';

  @override
  String get invertRegEx => 'Invertera reguljärt uttryck';

  @override
  String get note => 'Anmärkning';

  @override
  String selfHostedNote(Object p0) {
    return 'Rullgardinsmenyn \"$p0\" kan användas för att nå självhostade/anpassade instanser av valfri källa.';
  }

  @override
  String get badDownload => 'APK kunde inte analyseras (inkompatibel eller partiell nedladdning)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Dela nya appar med AppVerifier (om tillgängligt)';

  @override
  String get appVerifierInstructionToast => 'Dela till AppVerifier och återvänd sedan hit när du är klar.';

  @override
  String get wiki => 'Hjälp/Wiki';

  @override
  String get allowInsecure => 'Tillåt osäkra HTTP-förfrågningar';

  @override
  String get stayOneVersionBehind => 'Håll dig en version bakom den senaste';

  @override
  String get useFirstApkOfVersion => 'Välj automatiskt den första av flera APK:er';

  @override
  String get refreshBeforeDownload => 'Uppdatera appdetaljerna före nedladdning';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Namn';

  @override
  String get smartname => 'Namn (Smart)';

  @override
  String get sortMethod => 'Sorteringsmetod';

  @override
  String get welcome => 'Välkommen';

  @override
  String get documentationLinksNote => 'Updatium GitHub-sidan som länkas nedan innehåller länkar till videor, artiklar, diskussioner och andra resurser som hjälper dig att förstå hur du använder appen.';

  @override
  String get batteryOptimizationNote => 'Observera att nedladdningar i bakgrunden kan fungera mer tillförlitligt om du inaktiverar OS-batterioptimeringar för Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'Misslyckades med att radera filen (försök radera den manuellt och försök sedan igen): \"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium förgrundstjänst';

  @override
  String get foregroundServiceExplanation => 'Använd en förgrundstjänst för uppdateringskontroll (mer tillförlitlig, förbrukar mer ström)';

  @override
  String get fgServiceNotice => 'Detta meddelande krävs för bakgrundsuppdateringskontroll (det kan döljas i OS-inställningarna)';

  @override
  String get excludeSecrets => 'Utesluta hemligheter';

  @override
  String get ghReqPrefix => 'Instansen \"sky22333/hubproxy\" för GitHub-förfrågningar';

  @override
  String get includeZips => 'Inkludera ZIP-filer';

  @override
  String get zippedApkFilterRegEx => 'Filtrera APK:er inuti ZIP';

  @override
  String get googleVerificationWarningP1 => 'Google har meddelat att alla appar på \"certifierade\" Android-enheter kommer att kräva att utvecklaren skickar personuppgifter direkt till Google.\n\nEfter det kan Updatium sluta fungera på certifierade Android-enheter.';

  @override
  String get googleVerificationWarningP2 => 'Gå till https://keepandroidopen.org/ för mer information.';

  @override
  String get googleVerificationWarningP3 => 'Observera att på kort sikt kan det fortsätta att vara möjligt att installera \"overifierade\" (icke-kompatibla) appar genom en \"avancerad flöde\" -process som Google har lovat att genomföra efter bred backlash till deras tillkännagivande, men de har inte detaljerat hur detta skulle fungera så det är oklart om det verkligen kommer att bevara användarfrihet på något praktiskt sätt.\n\nGoogles flytt är ett viktigt steg mot slutet av gratis, allmänt ändamål datorer för individer.\n\nIcke-certifierade operativsystem, som GrapheneOS, bör inte påverkas av detta så länge de får fortsätta att existera.';

  @override
  String get multipleSigners => 'Flera signers';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ta Bort Appar?',
      one: 'Ta Bort App?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'För många förfrågningar (begränsat pris) - försök igen om $count minuter',
      one: 'För många förfrågningar (begränsat pris) - försök igen om $count minut',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'BG-uppdateringskontroll påträffade en $count, kommer att schemalägga ett nytt försök om $count minuter',
      one: 'BG-uppdateringskontroll påträffade en $count, kommer att schemalägga ett nytt försök om $count minut',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'BG-uppdateringskontroll hittades $count uppdateringar - kommer att meddela användaren om det behövs',
      one: 'BG-uppdateringskontroll hittades $count uppdatering - kommer att meddela användaren om det behövs',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Appar',
      one: '$count App',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URL:er',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuter',
      one: '$count minut',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count timmar',
      one: '$count timme',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagar',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Rensade $n loggar (före = $before, efter = $after)',
      one: 'Rensade $n logg (före = $before, efter = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count och $count appar till har tillgängliga uppdateringar.',
      one: '$count och 1 app till har tillgängliga uppdateringar.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count och $count appar till uppdaterades.',
      one: '$count och 1 till app uppdaterades.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Det gick inte att uppdatera $count och $count fler appar.',
      one: 'Misslyckades med att uppdatera $count och ytterligare 1 app.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count och $count appar till kan ha uppdaterats.',
      one: '$count och 1 till app kan ha uppdaterats.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APK:er',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Certificate Hashes',
      one: 'Certificate Hash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Säkerhets- och Juridiskt Ansvarsfriskrivning';

  @override
  String get license => 'Licens';

  @override
  String get licenseText => 'Denna applikation distribueras under GPL v3-licensen.';

  @override
  String get disclaimer => 'Ansvarsfriskrivning';

  @override
  String get disclaimerText => 'Denna applikation distribuerar, är värd för eller verifierar inga av de externa applikationerna. Användaren bär det fulla ansvaret för säkerheten och lagligheten för eventuell programvara som installeras genom detta verktyg.\n\nhttps://github.com/omeritzics/Updatium är den enda officiella platsen att ladda ner Updatium - det avrådes starkt från att ladda ner den från andra platser eftersom nedladdning från icke-officiella källor inte är säker.';

  @override
  String get privacy => 'Integritet';

  @override
  String get privacyText => 'Denna app är integritetsfokuserad och samlar inte in personlig data.';

  @override
  String get acceptAndContinue => 'Acceptera och fortsätt';

  @override
  String get decline => 'Avvisa';
}
