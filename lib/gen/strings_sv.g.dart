///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsSv with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsSv({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.sv,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <sv>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsSv _root = this; // ignore: unused_field

	@override 
	TranslationsSv $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsSv(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Inte giltig {} App-URL';
	@override String get noReleaseFound => 'Kunde inte hitta en lämplig releaseversion';
	@override String get noVersionFound => 'Kunde inte bestämma releaseversion';
	@override String get urlMatchesNoSource => 'URL matchar inte känd källa';
	@override String get cantInstallOlderVersion => 'Kan inte installera en äldre version av en app';
	@override String get appIdMismatch => 'Nerladdat paket-ID matchar inte nuvarande App-ID';
	@override String get functionNotImplemented => 'Den här klassen har inte implementerat den här funktionen';
	@override String get placeholder => 'Platshållare';
	@override String get someErrors => 'Några fel uppstod';
	@override String get unexpectedError => 'Oväntat fel';
	@override String get ok => 'Okej';
	@override String get and => 'och';
	@override String get githubPATLabel => 'GitHub Personal Access Token';
	@override String get includePrereleases => 'Inkludera förreleaser';
	@override String get fallbackToOlderReleases => 'Fall tillbaka till äldre releaser';
	@override String get filterReleaseTitlesByRegEx => 'Filtrera utgivningstitlar efter reguljärt uttryck';
	@override String get invalidRegEx => 'Ogiltigt reguljärt uttryck';
	@override String get noDescription => 'Ingen beskrivning';
	@override String get cancel => 'Avbryt';
	@override String get kContinue => 'Fortsätt';
	@override String get requiredInBrackets => '(Kräver)';
	@override String get dropdownNoOptsError => 'FEL: DROPDOWN MÅSTE HA MINST ETT OPT';
	@override String get color => 'Färg';
	@override String get standard => 'Standard';
	@override String get custom => 'Anpassad';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Använd Material You-färger';
	@override String get githubStarredRepos => 'GitHub Stjärnmärkta Förråd';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Användarnamn';
	@override String get wrongArgNum => 'Fel antal argument har angetts';
	@override String get xIsTrackOnly => '{} är \'Följ-Endast\'';
	@override String get source => 'Källa';
	@override String get app => 'App';
	@override String get appsFromSourceAreTrackOnly => 'Apparna från denna källa är \'Följ-Endast\'.';
	@override String get youPickedTrackOnly => 'Du har markerat \'Följ-Endast\'-alternativet';
	@override String get trackOnlyAppDescription => 'Appen kommer följas för uppdateringar men Updatium kommer inte ladda ner eller installera den.';
	@override String get cancelled => 'Avbruten';
	@override String get appAlreadyAdded => 'App redan tillagd';
	@override String get alreadyUpToDateQuestion => 'App redan uppdaterad?';
	@override String get addApp => 'Lägg till App';
	@override String get appSourceURL => 'URL till Appkälla';
	@override String get error => 'Fel';
	@override String get add => 'Lägg till';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Sök (Bara några källor)';
	@override String get search => 'Sök';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Ytterligare Alternativ för {}';
	@override String get supportedSources => 'Stödda Källor';
	@override String get trackOnlyInBrackets => '(Följ-Endast)';
	@override String get searchableInBrackets => '(Sökbar)';
	@override String get appsString => 'Appar';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Inga Appar';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Inga Appar för Filter';
	@override String get byX => 'Av {}';
	@override String get percentProgress => 'Framsteg: {}%';
	@override String get pleaseWait => 'Vänta';
	@override String get updateAvailable => 'Uppdatering Tillgänglig';
	@override String get notInstalled => 'Inte Installerad';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudoversion';
	@override String get selectAll => 'Välj Alla';
	@override String get deselectX => 'Avmarkera {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} kommer tas bort från Updatium men kommer vara fortsatt installerad på enheten.';
	@override String get removeSelectedAppsQuestion => 'Ta bort markerade Appar?';
	@override String get removeSelectedApps => 'Ta bort markerade Appar';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Uppdatera {}';
	@override String get installX => 'Installera {}';
	@override String get markXTrackOnlyAsUpdated => 'Märk {}\n(Följ-Endast)\nsom Uppdaterad';
	@override String get changeX => 'Byt {}';
	@override String get installUpdateApps => 'Installera/Uppdatera Appar';
	@override String get installUpdateSelectedApps => 'Installera/Uppdatera Markerade Appar';
	@override String get markXSelectedAppsAsUpdated => 'Märk {} markerade Appar som Uppdaterade?';
	@override String get no => 'Nej';
	@override String get yes => 'Ja';
	@override String get markSelectedAppsUpdated => 'Märk Valda Appar som Uppdaterade';
	@override String get pinToTop => 'Nåla fast högst upp';
	@override String get unpinFromTop => 'Avnåla';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Återställ Installationsstatus för valda Appar?';
	@override String get installStatusOfXWillBeResetExplanation => 'Installationsstatusen för de markerade apparna kommer återställas.\n\n Detta kan hjälpa när appversionen visad i Obtanium är fel på grund av misslyckade uppdateringar eller andra orsaker.';
	@override String get customLinkMessage => 'Dessa länkar fungerar på enheter med Updatium installerat';
	@override String get shareAppConfigLinks => 'Dela appkonfiguration som HTML-länk';
	@override String get resetInstallStatus => 'Återställ Installationstatus';
	@override String get more => 'Mer';
	@override String get removeOutdatedFilter => 'Ta bort Utgånga App-filtret';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Visa Endast Utgånga Appar';
	@override String get filter => 'Filtrera';
	@override String get filterApps => 'Filtrera Appar';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Appnamn';
	@override String get author => 'Utvecklare';
	@override String get upToDateApps => 'Uppdaterade Appar';
	@override String get nonInstalledApps => 'Icke-Installerade Appar';
	@override String get importExport => 'Importera/Exportera';
	@override String get settings => 'Inställningar';
	@override String get exportedTo => 'Exporterad till {}';
	@override String get updatiumExport => 'Updatiumexport';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Ogiltig inmatning';
	@override String get importedX => 'Importerad {}';
	@override String get updatiumImport => 'Updatium Import';
	@override String get importFromURLList => 'Importera från URL-lista';
	@override String get searchQuery => 'Sökförfrågan';
	@override String get appURLList => 'App URL-lista';
	@override String get line => 'Linje';
	@override String get searchX => 'Sök {}';
	@override String get noResults => 'Inga resultat';
	@override String get importX => 'Importera {}';
	@override String get importedAppsIdDisclaimer => 'Importerade Appar kan felaktigt visas som "Inte Installerad".\nFör att fixa detta återinstallera dem genom Updatium.\nDetta skall inte påverka appdata.\n\n Påverkar endast URL:en och tredjepartsimportermetoder.';
	@override String get importErrors => 'Importfel';
	@override String get importedXOfYApps => '{} av {} Appar importerade.';
	@override String get followingURLsHadErrors => 'Följande URL:er hade fel:';
	@override String get selectURL => 'Välj URL';
	@override String get selectURLs => 'Välj URL:er';
	@override String get pick => 'Välj';
	@override String get theme => 'Tema';
	@override String get dark => 'Mörkt';
	@override String get light => 'Ljust';
	@override String get followSystem => 'Följ System';
	@override String get followSystemThemeExplanation => 'Följande systemtema är endast möjligt med hjälp av tredjepartsapplikationer';
	@override String get useBlackTheme => 'Använd svart tema';
	@override String get appSortBy => 'Sortera Appar via';
	@override String get authorName => 'Utvecklare/Namn';
	@override String get nameAuthor => 'Namn/Utvecklare';
	@override String get asAdded => 'Som tillagd';
	@override String get appSortOrder => 'Appsorteringsordning';
	@override String get ascending => 'Stigande';
	@override String get descending => 'Fallande';
	@override String get bgUpdateCheckInterval => 'Bakgrundsuppdateringskollfrekvens';
	@override String get neverManualOnly => 'Aldrig - Endast manuell';
	@override String get appearance => 'Utseende';
	@override String get pinUpdates => 'Fäst uppdateringar högst upp i appvyn';
	@override String get updates => 'Uppdateringar';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Källspecifik';
	@override String get appSource => 'Appkälla';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Inga Loggar';
	@override String get appLogs => 'Apploggar';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Stäng';
	@override String get share => 'Dela';
	@override String get appNotFound => 'App ej funnen';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Välj en APK';
	@override String get appHasMoreThanOnePackage => '{} har fler än ett paket:';
	@override String get deviceSupportsXArch => 'Din enhet stödjer {} CPU-arkiktektur.';
	@override String get deviceSupportsFollowingArchs => 'YDin enhet stödjer följande CPU-arkitekturer:';
	@override String get warning => 'Varning';
	@override String get sourceIsXButPackageFromYPrompt => 'Appens källa är \'{}\' men releasepaketet kommer från \'{}\'. Vill du fortsätta?';
	@override String get updatesAvailable => 'Uppdateringar Tillgängliga';
	@override String get updatesAvailableNotifDescription => 'Aviserar användaren att det finns uppdateringar tillgängaliga för en eller fler Appar som följs av Updatium';
	@override String get noNewUpdates => 'Inga nya uppdateringar.';
	@override String get xHasAnUpdate => '{} har en uppdatering.';
	@override String get appsUpdated => 'Appar Uppdaterade';
	@override String get appsNotUpdated => 'Misslyckades med att uppdatera applikationer';
	@override String get appsUpdatedNotifDescription => 'Meddelar användaren att uppdateringar av en eller flera appar har tillämpats i bakgrunden';
	@override String get xWasUpdatedToY => '{} uppdaterades till {}.';
	@override String get xWasNotUpdatedToY => 'Det gick inte att uppdatera {} till {}.';
	@override String get errorCheckingUpdates => 'Fel vid uppdateringskoll';
	@override String get errorCheckingUpdatesNotifDescription => 'En aviserings som visar när bakgrundsuppdateringarkollar misslyckas';
	@override String get appsRemoved => 'Appar borttagna';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Aviserar användaren när en eller fler Appar togs bort på grund av fel när de laddades';
	@override String get xWasRemovedDueToErrorY => '{} togs bort på grund av detta felet: {}';
	@override String get completeAppInstallation => 'Gör klar appinstallation';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium måste vara öppet för att installera Appar';
	@override String get completeAppInstallationNotifDescription => 'Frågar användaren att återvända till Obtaiunium när appinstallation är klar';
	@override String get checkingForUpdates => 'Kollar efter Uppdateringar';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Övergående meddelande som visas när du söker efter uppdateringar';
	@override String get pleaseAllowInstallPerm => 'Tillåt Obtanium att installera Appar';
	@override String get trackOnly => 'Följ-Endast';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Fel {}';
	@override String get versionCorrectionDisabled => 'Versionskorrigering inaktiverat (plugin verkar inte fungera)';
	@override String get unknown => 'Okänd';
	@override String get none => 'Ingen';
	@override String get all => 'Alla';
	@override String get never => 'Aldrig';
	@override String get latestVersion => 'Senaste Version';
	@override String get installedVersionX => 'Installerad Version: {}';
	@override String get lastUpdateCheckX => 'Senaste uppdateringskoll: {}';
	@override String get remove => 'Ta bort';
	@override String get quickLinks => 'Snabblänkar';
	@override String get yesMarkUpdated => 'Ja, Märk som Uppdaterad';
	@override String get fdroid => 'F-Droid Officiell';
	@override String get appIdOrName => 'App-ID eller Namn';
	@override String get appId => 'App-ID';
	@override String get appWithIdOrNameNotFound => 'Ingen App funnen med det namnet eller ID';
	@override String get reposHaveMultipleApps => 'Förråd kan innehålla flera ApparR';
	@override String get fdroidThirdPartyRepo => 'F-Droid Tredjeparts Förråd';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Installera';
	@override String get markInstalled => 'Märk Installerad';
	@override String get update => 'Uppdatera';
	@override String get updated => 'Uppdaterad';
	@override String get markUpdated => 'Märk Uppdaterad';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Ytterligare Alternativ';
	@override String get disableVersionDetection => 'Inaktivera versionsdetektering';
	@override String get noVersionDetectionExplanation => 'Det här alternativet bör endast användas för appar där versionsidentifiering inte fungerar korrekt.';
	@override String get downloadingX => 'Laddar ner {}';
	@override String get downloadX => 'Ladda ner {}';
	@override String get downloadedX => 'Nedladdad {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Frigör tillgång';
	@override String get downloadNotifDescription => 'Meddelar användaren om framstegen med att ladda ner en app';
	@override String get noAPKFound => 'Ingen APK funnen';
	@override String get noVersionDetection => 'Ingen versiondetektering';
	@override String get categorize => 'Kategorisera';
	@override String get categories => 'Kategorier';
	@override String get category => 'Kategori';
	@override String get noCategory => 'Ingen Kategori';
	@override String get noCategories => 'Inga Kategorier';
	@override String get categoryDeleteQuestion => 'Ta Bort Kategorier?';
	@override String get categoryDeleteWarning => 'Alla Appar i de borttagna kategorierna kommer att märkas som okategoriserade.';
	@override String get addCategory => 'Lägg till Kategori';
	@override String get label => 'Märka';
	@override String get language => 'Språk';
	@override String get copiedToClipboard => 'Kopierat till Urklipp';
	@override String get storagePermissionDenied => 'Lagringsbehörighet nekad';
	@override String get selectedCategorizeWarning => 'Detta kommer att ersätta alla befintliga kategoriinställningar för de valda apparna.';
	@override String get filterAPKsByRegEx => 'Filtrera APK-filer efter reguljärt uttryck';
	@override String get removeFromUpdatium => 'Ta bort från Updatium';
	@override String get uninstallFromDevice => 'Avinstallera från Enheten';
	@override String get onlyWorksWithNonVersionDetectApps => 'Fungerar bara för Appar med versionsdetektering inaktiverat..';
	@override String get releaseDateAsVersion => 'Använd releasedatum som version';
	@override String get releaseTitleAsVersion => 'Använd release-titel som versionssträng';
	@override String get releaseDateAsVersionExplanation => 'Det här alternativet bör endast användas för appar där versionsidentifiering inte fungerar korrekt, men ett releasedatum är tillgängligt.';
	@override String get changes => 'Ändringar';
	@override String get releaseDate => 'Releasedatum';
	@override String get importFromURLsInFile => 'Importera från URL:er i fil (som OPML)';
	@override String get versionDetectionExplanation => 'Sammanställ versionssträng med version upptäckt från OS';
	@override String get versionDetection => 'Versionsdetektering';
	@override String get standardVersionDetection => 'Standardversionsdetektering';
	@override String get groupByCategory => 'Gruppera via Kategori';
	@override String get listView => 'Listvy';
	@override String get gridView => 'Rutnätsvy';
	@override String get autoApkFilterByArch => 'Försök att filtrera APK-filer efter CPU-arkitektur om möjligt';
	@override String get autoLinkFilterByArch => 'Försök att filtrera länkar efter CPU-arkitektur om möjligt';
	@override String get overrideSource => 'Överskrid Källa';
	@override String get dontShowAgain => 'Visa inte detta igen';
	@override String get dontShowTrackOnlyWarnings => 'Visa inte \'Följ-Endast\' varningar';
	@override String get dontShowAPKOriginWarnings => 'Visa inte APK-ursprung varningar';
	@override String get moveNonInstalledAppsToBottom => 'Flytta icke-installerade appar till botten av appvyn';
	@override String get gitlabPATLabel => 'Personligt åtkomsttoken för GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Om';
	@override String get requiresCredentialsInSettings => '{}: This needs additional credentials (in Settings)';
	@override String get checkOnStart => 'Kolla efter uppdateringar vid start';
	@override String get safeMode => 'Säkert läge';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Lägg till app är inaktiverat i säkert läge';
	@override String get tryInferAppIdFromCode => 'Försök härleda app-id från källkoden';
	@override String get removeOnExternalUninstall => 'Ta bort externt avinstallerade appar automatiskt';
	@override String get pickHighestVersionCode => 'Välj automatiskt högsta versionskod APK';
	@override String get checkUpdateOnDetailPage => 'Sök efter uppdateringar om att öppna en app-detaljsida';
	@override String get disablePageTransitions => 'Inaktivera sidövergångsanimationer';
	@override String get reversePageTransitions => 'Animeringar för omvänd sidövergång';
	@override String get minStarCount => 'Minsta antal stjärnmarkeringar';
	@override String get addInfoBelow => 'Lägg till denna information nedanför.';
	@override String get addInfoInSettings => 'Lägg till denna information i Inställningar.';
	@override String get githubSourceNote => 'GitHub-hastighetsbegränsning kan undvikas med en API-nyckel.';
	@override String get sortByLastLinkSegment => 'Sortera endast efter det sista segmentet av länken';
	@override String get filterReleaseNotesByRegEx => 'Filtrera versionskommentarer efter reguljärt uttryck';
	@override String get customLinkFilterRegex => 'Anpassad APK-länkfiltrera efter reguljärt uttryck (standard \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Appuppdateringar försökte';
	@override String get appsPossiblyUpdatedNotifDescription => 'Meddelar användaren om att uppdateringar av en eller flera appar potentiellt har tillämpats i bakgrunden';
	@override String get xWasPossiblyUpdatedToY => '{} kan ha uppdaterats till {}.';
	@override String get enableBackgroundUpdates => 'Aktivera Bakgrundsuppdateringar';
	@override String get backgroundUpdateReqsExplanation => 'Bakgrundsuppdateringar är inte möjligt för alla appar.';
	@override String get backgroundUpdateLimitsExplanation => 'Framgången för en bakgrundsinstallation kan bara avgöras när Updatium öppnas.';
	@override String get verifyLatestTag => 'Verifiera \'senaste\'-taggen';
	@override String get intermediateLinkRegex => 'Filtrera för en "mellanliggande" länk att besöka';
	@override String get filterByLinkText => 'Filtrera länkar efter länktext';
	@override String get matchLinksOutsideATags => 'Matcha länkar utanför <a>-taggar';
	@override String get intermediateLinkNotFound => 'Mellanlänk hittades inte';
	@override String get intermediateLink => 'Mellanlänk';
	@override String get exemptFromBackgroundUpdates => 'Undta från bakgrundsuppdateringar (om aktiverad)';
	@override String get bgUpdatesOnWiFiOnly => 'Inaktivera Bakgrundsuppdateringar utan Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Inaktivera bakgrundsuppdateringar när du inte laddar';
	@override String get autoSelectHighestVersionCode => 'Välj automatiskt högsta versionskod APK';
	@override String get versionExtractionRegEx => 'Version Extraction RegEx';
	@override String get trimVersionString => 'Trimma versionssträng med RegEx';
	@override String get matchGroupToUseForX => 'Matchningsgrupp att använda för "{}"';
	@override String get matchGroupToUse => 'Match Group to Use';
	@override String get highlightTouchTargets => 'Markera mindre uppenbara beröringsobjekt';
	@override String get pickExportDir => 'Välj Exportsökväg';
	@override String get autoExportOnChanges => 'Automatisk export vid ändringar';
	@override String get includeSettings => 'Inkludera inställningar';
	@override String get filterVersionsByRegEx => 'Filtrera versioner efter reguljärt uttryck';
	@override String get trySelectingSuggestedVersionCode => 'Försök att välja föreslagen versionCode APK';
	@override String get dontSortReleasesList => 'Behåll släpporder från API';
	@override String get reverseSort => 'Omvänd sortering';
	@override String get takeFirstLink => 'Ta första länken';
	@override String get skipSort => 'Hoppa över sortering';
	@override String get debugMenu => 'Felsökningsmeny';
	@override String get bgTaskStarted => 'Bakgrundsuppgift startat - kontrollera loggar.';
	@override String get runBgCheckNow => 'Kör Bakgrundsuppdateringskoll Nu';
	@override String get versionExtractWholePage => 'Tillämpa Regex för versionssträngextraktion på hela sidan';
	@override String get installing => 'Installerar';
	@override String get skipUpdateNotifications => 'Hoppa över uppdateringsmeddelanden';
	@override String get updatesAvailableNotifChannel => 'Uppdateringar tillgängliga';
	@override String get appsUpdatedNotifChannel => 'Appar uppdaterade';
	@override String get appsPossiblyUpdatedNotifChannel => 'Appuppdateringar försökte';
	@override String get errorCheckingUpdatesNotifChannel => 'Fel vid sökning efter uppdateringar';
	@override String get appsRemovedNotifChannel => 'Appar borttagna';
	@override String get downloadingXNotifChannel => 'Laddar ner {}';
	@override String get completeAppInstallationNotifChannel => 'Fullständig appinstallation';
	@override String get checkingForUpdatesNotifChannel => 'Kollar efter uppdateringar';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Kontrollera bara installerade appar och endast spårbara appar för uppdateringar';
	@override String get supportFixedAPKURL => 'Stöd fasta APK-webbadresser';
	@override String get selectX => 'Välj {}';
	@override String get parallelDownloads => 'Tillåt parallella nedladdningar';
	@override String get useShizuku => 'Använd Shizuku eller Sui för att installera';
	@override String get shizukuBinderNotFound => 'Shizuku is not running';
	@override String get shizukuOld => 'Gammal Shizuku-version (<11) - uppdatera den';
	@override String get shizukuOldAndroidWithADB => 'Shizuku körs på Android < 8.1 med ADB - uppdatera Android eller använd Sui istället';
	@override String get shizukuPretendToBeGooglePlay => 'Ange Google Play som installationskälla (om Shizuku används)';
	@override String get useSystemFont => 'Använd systemteckensnittet';
	@override String get useVersionCodeAsOSVersion => 'Använd appversionskoden som OS-upptäckt version';
	@override String get requestHeader => 'Rubrik för begäran';
	@override String get useLatestAssetDateAsReleaseDate => 'Använd senaste tillgångsuppladdning som releasedatum';
	@override String get defaultPseudoVersioningMethod => 'Standard pseudoversionsmetod';
	@override String get partialAPKHash => 'Delvis APK-hash';
	@override String get APKLinkHash => 'APK-länk Hash';
	@override String get directAPKLink => 'Direkt APK-länk';
	@override String get pseudoVersionInUse => 'En pseudoversion används';
	@override String get installedVersion => 'Installerad';
	@override String get installed => 'Installerad';
	@override String get notInstalledApps => 'Inte installerad';
	@override String get latest => 'Senaste';
	@override String get invertRegEx => 'Invertera reguljärt uttryck';
	@override String get note => 'Anmärkning';
	@override String get selfHostedNote => 'Rullgardinsmenyn "{}" kan användas för att nå självhostade/anpassade instanser av valfri källa.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK kunde inte analyseras (inkompatibel eller partiell nedladdning)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Dela nya appar med AppVerifier (om tillgängligt)';
	@override String get appVerifierInstructionToast => 'Dela till AppVerifier och återvänd sedan hit när du är klar.';
	@override String get wiki => 'Hjälp/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Tillåt osäkra HTTP-förfrågningar';
	@override String get stayOneVersionBehind => 'Håll dig en version bakom den senaste';
	@override String get useFirstApkOfVersion => 'Välj automatiskt den första av flera APK:er';
	@override String get refreshBeforeDownload => 'Uppdatera appdetaljerna före nedladdning';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Namn';
	@override String get smartname => 'Namn (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sorteringsmetod';
	@override String get welcome => 'Välkommen';
	@override String get batteryOptimizationNote => 'Observera att nedladdningar i bakgrunden kan fungera mer tillförlitligt om du inaktiverar OS-batterioptimeringar för Updatium.';
	@override String get fileDeletionError => 'Misslyckades med att radera filen (försök radera den manuellt och försök sedan igen): "{}"';
	@override String get foregroundService => 'Updatium förgrundstjänst';
	@override String get foregroundServiceExplanation => 'Använd en förgrundstjänst för uppdateringskontroll (mer tillförlitlig, förbrukar mer ström)';
	@override String get fgServiceNotice => 'Detta meddelande krävs för bakgrundsuppdateringskontroll (det kan döljas i OS-inställningarna)';
	@override String get excludeSecrets => 'Utesluta hemligheter';
	@override String get GHReqPrefix => 'Instansen "omeritzics/Updatium" för GitHub-förfrågningar';
	@override String get includeZips => 'Inkludera ZIP-filer';
	@override String get zippedApkFilterRegEx => 'Filtrera APK:er inuti ZIP';
	@override String get multipleSigners => 'Flera signers';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Ta Bort App?',
		other: 'Ta Bort Appar?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'För många förfrågningar (begränsat pris) - försök igen om {count} minut',
		other: 'För många förfrågningar (begränsat pris) - försök igen om {count} minuter',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'BG-uppdateringskontroll påträffade en {error}, kommer att schemalägga ett nytt försök om {count} minut',
		other: 'BG-uppdateringskontroll påträffade en {error}, kommer att schemalägga ett nytt försök om {count} minuter',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'BG-uppdateringskontroll hittades {count} uppdatering - kommer att meddela användaren om det behövs',
		other: 'BG-uppdateringskontroll hittades {count} uppdateringar - kommer att meddela användaren om det behövs',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{count} App',
		other: '{count} Appar',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{count} URL',
		other: '{count} URL:er',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{count} minut',
		other: '{count} minuter',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{count} timme',
		other: '{count} timmar',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{count} dag',
		other: '{count} dagar',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Rensade {n} logg (före = {before}, efter = {after})',
		other: 'Rensade {n} loggar (före = {before}, efter = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{app} och 1 app till har tillgängliga uppdateringar.',
		other: '{app} och {count} appar till har tillgängliga uppdateringar.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{app} och 1 till app uppdaterades.',
		other: '{app} och {count} appar till uppdaterades.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Misslyckades med att uppdatera {app} och ytterligare 1 app.',
		other: 'Det gick inte att uppdatera {app} och {count} fler appar.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{app} och 1 till app kan ha uppdaterats.',
		other: '{app} och {count} appar till kan ha uppdaterats.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: '{count} APK',
		other: '{count} APK:er',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n,
		one: 'Certificate Hash',
		other: 'Certificate Hashes',
	);
	@override String get securityDisclaimerTitle => 'Säkerhets- och Juridiskt Ansvarsfriskrivning';
	@override String get license => 'Licens';
	@override String get licenseText => 'Denna applikation distribueras under GPL v3-licensen.';
	@override String get disclaimer => 'Ansvarsfriskrivning';
	@override String get disclaimerText => 'Denna applikation distribuerar, är värd för eller verifierar inga av de externa applikationerna. Användaren bär det fulla ansvaret för säkerheten och lagligheten för eventuell programvara som installeras genom detta verktyg.\n\nhttps://github.com/omeritzics/Updatium är den enda officiella platsen att ladda ner Updatium - det avrådes starkt från att ladda ner den från andra platser eftersom nedladdning från icke-officiella källor inte är säker.';
	@override String get privacy => 'Integritet';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Acceptera och fortsätt';
	@override String get decline => 'Avvisa';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Gillar du Updatium?';
	@override String get githubStarPromptContent => 'Updatium är ett volontärt open source-communityprojekt som jag utvecklat på min fritid. Om du vill stödja projektet, överväg vänligen att ge det en stjärna på GitHub för att hjälpa oss nå fler användare och bidragsgivare. Du kommer inte att påminnas om detta igen. Tack på förhand! :)';
	@override String get githubStarPromptStar => 'Ge stjärna';
	@override String get githubStarPromptDontShowAgain => 'Visa inte igen';
	@override String get sourceCode => 'Källkod';
	@override String get developedBy => 'Utvecklad av';
	@override String get appDescription => 'En anpassningsbar Android-appkatalog som låter dig uppdatera dina appar direkt från deras APK-källor.';
	@override String get safeModeEnabled => 'Safe Mode is enabled';
	@override String get safeModeDisabled => 'Safe Mode is disabled';
	@override String get safeModeDisable => 'Disable Safe Mode';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Safe Mode Administration';
	@override String get safeModeSetupDescription => 'Set a password to enable Safe Mode. Once enabled, Safe Mode prevents adding new apps and can only be disabled with the password.';
	@override String get safeModeToggleDescription => 'Enter your password to toggle Safe Mode on or off.';
	@override String get safeModeSetPassword => 'Set Password';
	@override String get safeModeConfirmPassword => 'Confirm Password';
	@override String get safeModeEnterPassword => 'Enter Password';
	@override String get safeModePasswordHint => 'Minimum 8 characters';
	@override String get safeModePasswordTooShort => 'Password must be at least 8 characters long';
	@override String get safeModePasswordMismatch => 'Passwords do not match';
	@override String get safeModePasswordIncorrect => 'Incorrect password';
	@override String get safeModePasswordError => 'Error setting password. Please try again.';
	@override String get safeModeEnable => 'Enable Safe Mode';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} taps remaining to disable Safe Mode';
	@override String get safeModeEnabledHint => 'Safe Mode enabled. Tap on the version number in the Settings many times to disable.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Got it';
	@override String get version => 'Version';
	@override String get open => 'Open';
	@override String get added => 'Added';
	@override String get fileExists => 'File already exists';
	@override String get fileExistsPrompt => 'A file with this name already exists. Please enter a new name for the downloaded file:';
	@override String get fileName => 'File name';
	@override String get downloadCancelled => 'Download cancelled';
	@override String get showInFileManager => 'Show in file manager';
	@override String get usedOpenSourcePackages => 'Used open-source packages';
	@override String get pleaseWaitOperationInProgress => 'Please wait, operation in progress';
	@override String get selectSourceFirst => 'Select a source first';
	@override String get completeAdditionalSettingsFirst => 'Complete additional settings first';
	@override String get addAppToCollection => 'Add this app to your collection';
	@override String get enterSearchTermsFirst => 'Enter search terms first';
	@override String get searchForApps => 'Search for apps';
}

/// The flat map containing all translations for locale <sv>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsSv {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Inte giltig {} App-URL',
			'noReleaseFound' => 'Kunde inte hitta en lämplig releaseversion',
			'noVersionFound' => 'Kunde inte bestämma releaseversion',
			'urlMatchesNoSource' => 'URL matchar inte känd källa',
			'cantInstallOlderVersion' => 'Kan inte installera en äldre version av en app',
			'appIdMismatch' => 'Nerladdat paket-ID matchar inte nuvarande App-ID',
			'functionNotImplemented' => 'Den här klassen har inte implementerat den här funktionen',
			'placeholder' => 'Platshållare',
			'someErrors' => 'Några fel uppstod',
			'unexpectedError' => 'Oväntat fel',
			'ok' => 'Okej',
			'and' => 'och',
			'githubPATLabel' => 'GitHub Personal Access Token',
			'includePrereleases' => 'Inkludera förreleaser',
			'fallbackToOlderReleases' => 'Fall tillbaka till äldre releaser',
			'filterReleaseTitlesByRegEx' => 'Filtrera utgivningstitlar efter reguljärt uttryck',
			'invalidRegEx' => 'Ogiltigt reguljärt uttryck',
			'noDescription' => 'Ingen beskrivning',
			'cancel' => 'Avbryt',
			'kContinue' => 'Fortsätt',
			'requiredInBrackets' => '(Kräver)',
			'dropdownNoOptsError' => 'FEL: DROPDOWN MÅSTE HA MINST ETT OPT',
			'color' => 'Färg',
			'standard' => 'Standard',
			'custom' => 'Anpassad',
			'primary' => 'Primary',
			'useMaterialYou' => 'Använd Material You-färger',
			'githubStarredRepos' => 'GitHub Stjärnmärkta Förråd',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Användarnamn',
			'wrongArgNum' => 'Fel antal argument har angetts',
			'xIsTrackOnly' => '{} är \'Följ-Endast\'',
			'source' => 'Källa',
			'app' => 'App',
			'appsFromSourceAreTrackOnly' => 'Apparna från denna källa är \'Följ-Endast\'.',
			'youPickedTrackOnly' => 'Du har markerat \'Följ-Endast\'-alternativet',
			'trackOnlyAppDescription' => 'Appen kommer följas för uppdateringar men Updatium kommer inte ladda ner eller installera den.',
			'cancelled' => 'Avbruten',
			'appAlreadyAdded' => 'App redan tillagd',
			'alreadyUpToDateQuestion' => 'App redan uppdaterad?',
			'addApp' => 'Lägg till App',
			'appSourceURL' => 'URL till Appkälla',
			'error' => 'Fel',
			'add' => 'Lägg till',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Sök (Bara några källor)',
			'search' => 'Sök',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Ytterligare Alternativ för {}',
			'supportedSources' => 'Stödda Källor',
			'trackOnlyInBrackets' => '(Följ-Endast)',
			'searchableInBrackets' => '(Sökbar)',
			'appsString' => 'Appar',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Inga Appar',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Inga Appar för Filter',
			'byX' => 'Av {}',
			'percentProgress' => 'Framsteg: {}%',
			'pleaseWait' => 'Vänta',
			'updateAvailable' => 'Uppdatering Tillgänglig',
			'notInstalled' => 'Inte Installerad',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudoversion',
			'selectAll' => 'Välj Alla',
			'deselectX' => 'Avmarkera {}',
			'xWillBeRemovedButRemainInstalled' => '{} kommer tas bort från Updatium men kommer vara fortsatt installerad på enheten.',
			'removeSelectedAppsQuestion' => 'Ta bort markerade Appar?',
			'removeSelectedApps' => 'Ta bort markerade Appar',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Uppdatera {}',
			'installX' => 'Installera {}',
			'markXTrackOnlyAsUpdated' => 'Märk {}\n(Följ-Endast)\nsom Uppdaterad',
			'changeX' => 'Byt {}',
			'installUpdateApps' => 'Installera/Uppdatera Appar',
			'installUpdateSelectedApps' => 'Installera/Uppdatera Markerade Appar',
			'markXSelectedAppsAsUpdated' => 'Märk {} markerade Appar som Uppdaterade?',
			'no' => 'Nej',
			'yes' => 'Ja',
			'markSelectedAppsUpdated' => 'Märk Valda Appar som Uppdaterade',
			'pinToTop' => 'Nåla fast högst upp',
			'unpinFromTop' => 'Avnåla',
			'resetInstallStatusForSelectedAppsQuestion' => 'Återställ Installationsstatus för valda Appar?',
			'installStatusOfXWillBeResetExplanation' => 'Installationsstatusen för de markerade apparna kommer återställas.\n\n Detta kan hjälpa när appversionen visad i Obtanium är fel på grund av misslyckade uppdateringar eller andra orsaker.',
			'customLinkMessage' => 'Dessa länkar fungerar på enheter med Updatium installerat',
			'shareAppConfigLinks' => 'Dela appkonfiguration som HTML-länk',
			'resetInstallStatus' => 'Återställ Installationstatus',
			'more' => 'Mer',
			'removeOutdatedFilter' => 'Ta bort Utgånga App-filtret',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Visa Endast Utgånga Appar',
			'filter' => 'Filtrera',
			'filterApps' => 'Filtrera Appar',
			'filterDays' => 'Filter days',
			'appName' => 'Appnamn',
			'author' => 'Utvecklare',
			'upToDateApps' => 'Uppdaterade Appar',
			'nonInstalledApps' => 'Icke-Installerade Appar',
			'importExport' => 'Importera/Exportera',
			'settings' => 'Inställningar',
			'exportedTo' => 'Exporterad till {}',
			'updatiumExport' => 'Updatiumexport',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Ogiltig inmatning',
			'importedX' => 'Importerad {}',
			'updatiumImport' => 'Updatium Import',
			'importFromURLList' => 'Importera från URL-lista',
			'searchQuery' => 'Sökförfrågan',
			'appURLList' => 'App URL-lista',
			'line' => 'Linje',
			'searchX' => 'Sök {}',
			'noResults' => 'Inga resultat',
			'importX' => 'Importera {}',
			'importedAppsIdDisclaimer' => 'Importerade Appar kan felaktigt visas som "Inte Installerad".\nFör att fixa detta återinstallera dem genom Updatium.\nDetta skall inte påverka appdata.\n\n Påverkar endast URL:en och tredjepartsimportermetoder.',
			'importErrors' => 'Importfel',
			'importedXOfYApps' => '{} av {} Appar importerade.',
			'followingURLsHadErrors' => 'Följande URL:er hade fel:',
			'selectURL' => 'Välj URL',
			'selectURLs' => 'Välj URL:er',
			'pick' => 'Välj',
			'theme' => 'Tema',
			'dark' => 'Mörkt',
			'light' => 'Ljust',
			'followSystem' => 'Följ System',
			'followSystemThemeExplanation' => 'Följande systemtema är endast möjligt med hjälp av tredjepartsapplikationer',
			'useBlackTheme' => 'Använd svart tema',
			'appSortBy' => 'Sortera Appar via',
			'authorName' => 'Utvecklare/Namn',
			'nameAuthor' => 'Namn/Utvecklare',
			'asAdded' => 'Som tillagd',
			'appSortOrder' => 'Appsorteringsordning',
			'ascending' => 'Stigande',
			'descending' => 'Fallande',
			'bgUpdateCheckInterval' => 'Bakgrundsuppdateringskollfrekvens',
			'neverManualOnly' => 'Aldrig - Endast manuell',
			'appearance' => 'Utseende',
			'pinUpdates' => 'Fäst uppdateringar högst upp i appvyn',
			'updates' => 'Uppdateringar',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Källspecifik',
			'appSource' => 'Appkälla',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Inga Loggar',
			'appLogs' => 'Apploggar',
			'appLogsHint' => 'View application logs',
			'close' => 'Stäng',
			'share' => 'Dela',
			'appNotFound' => 'App ej funnen',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Välj en APK',
			'appHasMoreThanOnePackage' => '{} har fler än ett paket:',
			'deviceSupportsXArch' => 'Din enhet stödjer {} CPU-arkiktektur.',
			'deviceSupportsFollowingArchs' => 'YDin enhet stödjer följande CPU-arkitekturer:',
			'warning' => 'Varning',
			'sourceIsXButPackageFromYPrompt' => 'Appens källa är \'{}\' men releasepaketet kommer från \'{}\'. Vill du fortsätta?',
			'updatesAvailable' => 'Uppdateringar Tillgängliga',
			'updatesAvailableNotifDescription' => 'Aviserar användaren att det finns uppdateringar tillgängaliga för en eller fler Appar som följs av Updatium',
			'noNewUpdates' => 'Inga nya uppdateringar.',
			'xHasAnUpdate' => '{} har en uppdatering.',
			'appsUpdated' => 'Appar Uppdaterade',
			'appsNotUpdated' => 'Misslyckades med att uppdatera applikationer',
			'appsUpdatedNotifDescription' => 'Meddelar användaren att uppdateringar av en eller flera appar har tillämpats i bakgrunden',
			'xWasUpdatedToY' => '{} uppdaterades till {}.',
			'xWasNotUpdatedToY' => 'Det gick inte att uppdatera {} till {}.',
			'errorCheckingUpdates' => 'Fel vid uppdateringskoll',
			'errorCheckingUpdatesNotifDescription' => 'En aviserings som visar när bakgrundsuppdateringarkollar misslyckas',
			'appsRemoved' => 'Appar borttagna',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Aviserar användaren när en eller fler Appar togs bort på grund av fel när de laddades',
			'xWasRemovedDueToErrorY' => '{} togs bort på grund av detta felet: {}',
			'completeAppInstallation' => 'Gör klar appinstallation',
			'updatiumMustBeOpenToInstallApps' => 'Updatium måste vara öppet för att installera Appar',
			'completeAppInstallationNotifDescription' => 'Frågar användaren att återvända till Obtaiunium när appinstallation är klar',
			'checkingForUpdates' => 'Kollar efter Uppdateringar',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Övergående meddelande som visas när du söker efter uppdateringar',
			'pleaseAllowInstallPerm' => 'Tillåt Obtanium att installera Appar',
			'trackOnly' => 'Följ-Endast',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Fel {}',
			'versionCorrectionDisabled' => 'Versionskorrigering inaktiverat (plugin verkar inte fungera)',
			'unknown' => 'Okänd',
			'none' => 'Ingen',
			'all' => 'Alla',
			'never' => 'Aldrig',
			'latestVersion' => 'Senaste Version',
			'installedVersionX' => 'Installerad Version: {}',
			'lastUpdateCheckX' => 'Senaste uppdateringskoll: {}',
			'remove' => 'Ta bort',
			'quickLinks' => 'Snabblänkar',
			'yesMarkUpdated' => 'Ja, Märk som Uppdaterad',
			'fdroid' => 'F-Droid Officiell',
			'appIdOrName' => 'App-ID eller Namn',
			'appId' => 'App-ID',
			'appWithIdOrNameNotFound' => 'Ingen App funnen med det namnet eller ID',
			'reposHaveMultipleApps' => 'Förråd kan innehålla flera ApparR',
			'fdroidThirdPartyRepo' => 'F-Droid Tredjeparts Förråd',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Installera',
			'markInstalled' => 'Märk Installerad',
			'update' => 'Uppdatera',
			'updated' => 'Uppdaterad',
			'markUpdated' => 'Märk Uppdaterad',
			'download' => 'Download',
			'additionalOptions' => 'Ytterligare Alternativ',
			'disableVersionDetection' => 'Inaktivera versionsdetektering',
			'noVersionDetectionExplanation' => 'Det här alternativet bör endast användas för appar där versionsidentifiering inte fungerar korrekt.',
			'downloadingX' => 'Laddar ner {}',
			'downloadX' => 'Ladda ner {}',
			'downloadedX' => 'Nedladdad {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Frigör tillgång',
			'downloadNotifDescription' => 'Meddelar användaren om framstegen med att ladda ner en app',
			'noAPKFound' => 'Ingen APK funnen',
			'noVersionDetection' => 'Ingen versiondetektering',
			'categorize' => 'Kategorisera',
			'categories' => 'Kategorier',
			'category' => 'Kategori',
			'noCategory' => 'Ingen Kategori',
			'noCategories' => 'Inga Kategorier',
			'categoryDeleteQuestion' => 'Ta Bort Kategorier?',
			'categoryDeleteWarning' => 'Alla Appar i de borttagna kategorierna kommer att märkas som okategoriserade.',
			'addCategory' => 'Lägg till Kategori',
			'label' => 'Märka',
			'language' => 'Språk',
			'copiedToClipboard' => 'Kopierat till Urklipp',
			'storagePermissionDenied' => 'Lagringsbehörighet nekad',
			'selectedCategorizeWarning' => 'Detta kommer att ersätta alla befintliga kategoriinställningar för de valda apparna.',
			'filterAPKsByRegEx' => 'Filtrera APK-filer efter reguljärt uttryck',
			'removeFromUpdatium' => 'Ta bort från Updatium',
			'uninstallFromDevice' => 'Avinstallera från Enheten',
			'onlyWorksWithNonVersionDetectApps' => 'Fungerar bara för Appar med versionsdetektering inaktiverat..',
			'releaseDateAsVersion' => 'Använd releasedatum som version',
			'releaseTitleAsVersion' => 'Använd release-titel som versionssträng',
			'releaseDateAsVersionExplanation' => 'Det här alternativet bör endast användas för appar där versionsidentifiering inte fungerar korrekt, men ett releasedatum är tillgängligt.',
			'changes' => 'Ändringar',
			'releaseDate' => 'Releasedatum',
			'importFromURLsInFile' => 'Importera från URL:er i fil (som OPML)',
			'versionDetectionExplanation' => 'Sammanställ versionssträng med version upptäckt från OS',
			'versionDetection' => 'Versionsdetektering',
			'standardVersionDetection' => 'Standardversionsdetektering',
			'groupByCategory' => 'Gruppera via Kategori',
			'listView' => 'Listvy',
			'gridView' => 'Rutnätsvy',
			'autoApkFilterByArch' => 'Försök att filtrera APK-filer efter CPU-arkitektur om möjligt',
			'autoLinkFilterByArch' => 'Försök att filtrera länkar efter CPU-arkitektur om möjligt',
			'overrideSource' => 'Överskrid Källa',
			'dontShowAgain' => 'Visa inte detta igen',
			'dontShowTrackOnlyWarnings' => 'Visa inte \'Följ-Endast\' varningar',
			'dontShowAPKOriginWarnings' => 'Visa inte APK-ursprung varningar',
			'moveNonInstalledAppsToBottom' => 'Flytta icke-installerade appar till botten av appvyn',
			'gitlabPATLabel' => 'Personligt åtkomsttoken för GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Om',
			'requiresCredentialsInSettings' => '{}: This needs additional credentials (in Settings)',
			'checkOnStart' => 'Kolla efter uppdateringar vid start',
			'safeMode' => 'Säkert läge',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Lägg till app är inaktiverat i säkert läge',
			'tryInferAppIdFromCode' => 'Försök härleda app-id från källkoden',
			'removeOnExternalUninstall' => 'Ta bort externt avinstallerade appar automatiskt',
			'pickHighestVersionCode' => 'Välj automatiskt högsta versionskod APK',
			'checkUpdateOnDetailPage' => 'Sök efter uppdateringar om att öppna en app-detaljsida',
			'disablePageTransitions' => 'Inaktivera sidövergångsanimationer',
			'reversePageTransitions' => 'Animeringar för omvänd sidövergång',
			'minStarCount' => 'Minsta antal stjärnmarkeringar',
			'addInfoBelow' => 'Lägg till denna information nedanför.',
			'addInfoInSettings' => 'Lägg till denna information i Inställningar.',
			'githubSourceNote' => 'GitHub-hastighetsbegränsning kan undvikas med en API-nyckel.',
			'sortByLastLinkSegment' => 'Sortera endast efter det sista segmentet av länken',
			'filterReleaseNotesByRegEx' => 'Filtrera versionskommentarer efter reguljärt uttryck',
			'customLinkFilterRegex' => 'Anpassad APK-länkfiltrera efter reguljärt uttryck (standard \'.apk$\')',
			'appsPossiblyUpdated' => 'Appuppdateringar försökte',
			'appsPossiblyUpdatedNotifDescription' => 'Meddelar användaren om att uppdateringar av en eller flera appar potentiellt har tillämpats i bakgrunden',
			'xWasPossiblyUpdatedToY' => '{} kan ha uppdaterats till {}.',
			'enableBackgroundUpdates' => 'Aktivera Bakgrundsuppdateringar',
			'backgroundUpdateReqsExplanation' => 'Bakgrundsuppdateringar är inte möjligt för alla appar.',
			'backgroundUpdateLimitsExplanation' => 'Framgången för en bakgrundsinstallation kan bara avgöras när Updatium öppnas.',
			'verifyLatestTag' => 'Verifiera \'senaste\'-taggen',
			'intermediateLinkRegex' => 'Filtrera för en "mellanliggande" länk att besöka',
			'filterByLinkText' => 'Filtrera länkar efter länktext',
			'matchLinksOutsideATags' => 'Matcha länkar utanför <a>-taggar',
			'intermediateLinkNotFound' => 'Mellanlänk hittades inte',
			'intermediateLink' => 'Mellanlänk',
			'exemptFromBackgroundUpdates' => 'Undta från bakgrundsuppdateringar (om aktiverad)',
			'bgUpdatesOnWiFiOnly' => 'Inaktivera Bakgrundsuppdateringar utan Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Inaktivera bakgrundsuppdateringar när du inte laddar',
			'autoSelectHighestVersionCode' => 'Välj automatiskt högsta versionskod APK',
			'versionExtractionRegEx' => 'Version Extraction RegEx',
			'trimVersionString' => 'Trimma versionssträng med RegEx',
			'matchGroupToUseForX' => 'Matchningsgrupp att använda för "{}"',
			'matchGroupToUse' => 'Match Group to Use',
			'highlightTouchTargets' => 'Markera mindre uppenbara beröringsobjekt',
			'pickExportDir' => 'Välj Exportsökväg',
			'autoExportOnChanges' => 'Automatisk export vid ändringar',
			'includeSettings' => 'Inkludera inställningar',
			'filterVersionsByRegEx' => 'Filtrera versioner efter reguljärt uttryck',
			'trySelectingSuggestedVersionCode' => 'Försök att välja föreslagen versionCode APK',
			'dontSortReleasesList' => 'Behåll släpporder från API',
			'reverseSort' => 'Omvänd sortering',
			'takeFirstLink' => 'Ta första länken',
			'skipSort' => 'Hoppa över sortering',
			'debugMenu' => 'Felsökningsmeny',
			'bgTaskStarted' => 'Bakgrundsuppgift startat - kontrollera loggar.',
			'runBgCheckNow' => 'Kör Bakgrundsuppdateringskoll Nu',
			'versionExtractWholePage' => 'Tillämpa Regex för versionssträngextraktion på hela sidan',
			'installing' => 'Installerar',
			'skipUpdateNotifications' => 'Hoppa över uppdateringsmeddelanden',
			'updatesAvailableNotifChannel' => 'Uppdateringar tillgängliga',
			'appsUpdatedNotifChannel' => 'Appar uppdaterade',
			'appsPossiblyUpdatedNotifChannel' => 'Appuppdateringar försökte',
			'errorCheckingUpdatesNotifChannel' => 'Fel vid sökning efter uppdateringar',
			'appsRemovedNotifChannel' => 'Appar borttagna',
			'downloadingXNotifChannel' => 'Laddar ner {}',
			'completeAppInstallationNotifChannel' => 'Fullständig appinstallation',
			'checkingForUpdatesNotifChannel' => 'Kollar efter uppdateringar',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Kontrollera bara installerade appar och endast spårbara appar för uppdateringar',
			'supportFixedAPKURL' => 'Stöd fasta APK-webbadresser',
			'selectX' => 'Välj {}',
			'parallelDownloads' => 'Tillåt parallella nedladdningar',
			'useShizuku' => 'Använd Shizuku eller Sui för att installera',
			'shizukuBinderNotFound' => 'Shizuku is not running',
			'shizukuOld' => 'Gammal Shizuku-version (<11) - uppdatera den',
			'shizukuOldAndroidWithADB' => 'Shizuku körs på Android < 8.1 med ADB - uppdatera Android eller använd Sui istället',
			'shizukuPretendToBeGooglePlay' => 'Ange Google Play som installationskälla (om Shizuku används)',
			'useSystemFont' => 'Använd systemteckensnittet',
			'useVersionCodeAsOSVersion' => 'Använd appversionskoden som OS-upptäckt version',
			'requestHeader' => 'Rubrik för begäran',
			'useLatestAssetDateAsReleaseDate' => 'Använd senaste tillgångsuppladdning som releasedatum',
			'defaultPseudoVersioningMethod' => 'Standard pseudoversionsmetod',
			'partialAPKHash' => 'Delvis APK-hash',
			'APKLinkHash' => 'APK-länk Hash',
			'directAPKLink' => 'Direkt APK-länk',
			'pseudoVersionInUse' => 'En pseudoversion används',
			'installedVersion' => 'Installerad',
			'installed' => 'Installerad',
			'notInstalledApps' => 'Inte installerad',
			'latest' => 'Senaste',
			'invertRegEx' => 'Invertera reguljärt uttryck',
			'note' => 'Anmärkning',
			'selfHostedNote' => 'Rullgardinsmenyn "{}" kan användas för att nå självhostade/anpassade instanser av valfri källa.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK kunde inte analyseras (inkompatibel eller partiell nedladdning)',
			'beforeNewInstallsShareToAppVerifier' => 'Dela nya appar med AppVerifier (om tillgängligt)',
			'appVerifierInstructionToast' => 'Dela till AppVerifier och återvänd sedan hit när du är klar.',
			'wiki' => 'Hjälp/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Tillåt osäkra HTTP-förfrågningar',
			'stayOneVersionBehind' => 'Håll dig en version bakom den senaste',
			'useFirstApkOfVersion' => 'Välj automatiskt den första av flera APK:er',
			'refreshBeforeDownload' => 'Uppdatera appdetaljerna före nedladdning',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Namn',
			'smartname' => 'Namn (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sorteringsmetod',
			'welcome' => 'Välkommen',
			'batteryOptimizationNote' => 'Observera att nedladdningar i bakgrunden kan fungera mer tillförlitligt om du inaktiverar OS-batterioptimeringar för Updatium.',
			'fileDeletionError' => 'Misslyckades med att radera filen (försök radera den manuellt och försök sedan igen): "{}"',
			'foregroundService' => 'Updatium förgrundstjänst',
			'foregroundServiceExplanation' => 'Använd en förgrundstjänst för uppdateringskontroll (mer tillförlitlig, förbrukar mer ström)',
			'fgServiceNotice' => 'Detta meddelande krävs för bakgrundsuppdateringskontroll (det kan döljas i OS-inställningarna)',
			'excludeSecrets' => 'Utesluta hemligheter',
			'GHReqPrefix' => 'Instansen "omeritzics/Updatium" för GitHub-förfrågningar',
			'includeZips' => 'Inkludera ZIP-filer',
			'zippedApkFilterRegEx' => 'Filtrera APK:er inuti ZIP',
			'multipleSigners' => 'Flera signers',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Ta Bort App?', other: 'Ta Bort Appar?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'För många förfrågningar (begränsat pris) - försök igen om {count} minut', other: 'För många förfrågningar (begränsat pris) - försök igen om {count} minuter', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'BG-uppdateringskontroll påträffade en {error}, kommer att schemalägga ett nytt försök om {count} minut', other: 'BG-uppdateringskontroll påträffade en {error}, kommer att schemalägga ett nytt försök om {count} minuter', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'BG-uppdateringskontroll hittades {count} uppdatering - kommer att meddela användaren om det behövs', other: 'BG-uppdateringskontroll hittades {count} uppdateringar - kommer att meddela användaren om det behövs', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{count} App', other: '{count} Appar', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{count} URL', other: '{count} URL:er', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{count} minut', other: '{count} minuter', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{count} timme', other: '{count} timmar', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{count} dag', other: '{count} dagar', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Rensade {n} logg (före = {before}, efter = {after})', other: 'Rensade {n} loggar (före = {before}, efter = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{app} och 1 app till har tillgängliga uppdateringar.', other: '{app} och {count} appar till har tillgängliga uppdateringar.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{app} och 1 till app uppdaterades.', other: '{app} och {count} appar till uppdaterades.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Misslyckades med att uppdatera {app} och ytterligare 1 app.', other: 'Det gick inte att uppdatera {app} och {count} fler appar.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{app} och 1 till app kan ha uppdaterats.', other: '{app} och {count} appar till kan ha uppdaterats.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: '{count} APK', other: '{count} APK:er', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('sv'))(n, one: 'Certificate Hash', other: 'Certificate Hashes', ), 
			'securityDisclaimerTitle' => 'Säkerhets- och Juridiskt Ansvarsfriskrivning',
			'license' => 'Licens',
			'licenseText' => 'Denna applikation distribueras under GPL v3-licensen.',
			'disclaimer' => 'Ansvarsfriskrivning',
			'disclaimerText' => 'Denna applikation distribuerar, är värd för eller verifierar inga av de externa applikationerna. Användaren bär det fulla ansvaret för säkerheten och lagligheten för eventuell programvara som installeras genom detta verktyg.\n\nhttps://github.com/omeritzics/Updatium är den enda officiella platsen att ladda ner Updatium - det avrådes starkt från att ladda ner den från andra platser eftersom nedladdning från icke-officiella källor inte är säker.',
			'privacy' => 'Integritet',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Acceptera och fortsätt',
			'decline' => 'Avvisa',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Gillar du Updatium?',
			'githubStarPromptContent' => 'Updatium är ett volontärt open source-communityprojekt som jag utvecklat på min fritid. Om du vill stödja projektet, överväg vänligen att ge det en stjärna på GitHub för att hjälpa oss nå fler användare och bidragsgivare. Du kommer inte att påminnas om detta igen. Tack på förhand! :)',
			'githubStarPromptStar' => 'Ge stjärna',
			'githubStarPromptDontShowAgain' => 'Visa inte igen',
			'sourceCode' => 'Källkod',
			'developedBy' => 'Utvecklad av',
			'appDescription' => 'En anpassningsbar Android-appkatalog som låter dig uppdatera dina appar direkt från deras APK-källor.',
			'safeModeEnabled' => 'Safe Mode is enabled',
			'safeModeDisabled' => 'Safe Mode is disabled',
			'safeModeDisable' => 'Disable Safe Mode',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Safe Mode Administration',
			'safeModeSetupDescription' => 'Set a password to enable Safe Mode. Once enabled, Safe Mode prevents adding new apps and can only be disabled with the password.',
			'safeModeToggleDescription' => 'Enter your password to toggle Safe Mode on or off.',
			'safeModeSetPassword' => 'Set Password',
			'safeModeConfirmPassword' => 'Confirm Password',
			'safeModeEnterPassword' => 'Enter Password',
			'safeModePasswordHint' => 'Minimum 8 characters',
			'safeModePasswordTooShort' => 'Password must be at least 8 characters long',
			'safeModePasswordMismatch' => 'Passwords do not match',
			'safeModePasswordIncorrect' => 'Incorrect password',
			'safeModePasswordError' => 'Error setting password. Please try again.',
			'safeModeEnable' => 'Enable Safe Mode',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} taps remaining to disable Safe Mode',
			'safeModeEnabledHint' => 'Safe Mode enabled. Tap on the version number in the Settings many times to disable.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Got it',
			'version' => 'Version',
			'open' => 'Open',
			'added' => 'Added',
			'fileExists' => 'File already exists',
			'fileExistsPrompt' => 'A file with this name already exists. Please enter a new name for the downloaded file:',
			'fileName' => 'File name',
			'downloadCancelled' => 'Download cancelled',
			'showInFileManager' => 'Show in file manager',
			'usedOpenSourcePackages' => 'Used open-source packages',
			'pleaseWaitOperationInProgress' => 'Please wait, operation in progress',
			'selectSourceFirst' => 'Select a source first',
			'completeAdditionalSettingsFirst' => 'Complete additional settings first',
			'addAppToCollection' => 'Add this app to your collection',
			'enterSearchTermsFirst' => 'Enter search terms first',
			'searchForApps' => 'Search for apps',
			_ => null,
		};
	}
}
