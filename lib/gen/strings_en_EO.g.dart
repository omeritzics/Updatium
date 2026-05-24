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
class TranslationsEnEo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEnEo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.enEo,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-EO>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEnEo _root = this; // ignore: unused_field

	@override 
	TranslationsEnEo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEnEo(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Nevalida apo-URL {}';
	@override String get noReleaseFound => 'Ne eblas trovi taŭgan eldonon';
	@override String get noVersionFound => 'Ne eblas determini la eldonversion';
	@override String get urlMatchesNoSource => 'La URL ne konformas al konata fonto';
	@override String get cantInstallOlderVersion => 'Ne eblas instali malnovan version de la Apo';
	@override String get appIdMismatch => 'La identigilo de la elŝutita pakaĵo ne konformas al la identigilo de la ekzistanta apo';
	@override String get functionNotImplemented => 'Tiu klaso ne fasonadas tiun funkcion';
	@override String get placeholder => 'Rezervilo';
	@override String get someErrors => 'Eraroj okazis';
	@override String get unexpectedError => 'Neatendita eraro';
	@override String get ok => 'Okej';
	@override String get and => 'kaj';
	@override String get githubPATLabel => 'Github persona atingoĵetono';
	@override String get includePrereleases => 'Inkluzivi la pra-eldonojn';
	@override String get fallbackToOlderReleases => 'Reveno al malnovaj versioj';
	@override String get filterReleaseTitlesByRegEx => 'Filtri la eldontitoljn per regula esprimo';
	@override String get invalidRegEx => 'Nevalida regula esprimo';
	@override String get noDescription => 'Neniu priskribo';
	@override String get cancel => 'Nuligi';
	@override String get kContinue => 'Daŭrigi';
	@override String get requiredInBrackets => '(Neprigata)';
	@override String get dropdownNoOptsError => 'ERARO: LA MALVOLVANTA LISTO DEVAS HAVI ALMENAŬ UNU OPCION';
	@override String get color => 'Koloro';
	@override String get standard => 'Norma';
	@override String get custom => 'Agordita';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Uzi Material You kolorojn';
	@override String get githubStarredRepos => 'Stelaj GitHub-deponejoj';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Uzantnomo';
	@override String get wrongArgNum => 'Malĝusta nombro da provizitaj argumentoj';
	@override String get xIsTrackOnly => '{} estas nur sekvitaj';
	@override String get source => 'Fonto';
	@override String get app => 'Apo';
	@override String get appsFromSourceAreTrackOnly => 'Apoj el tiu fonto estas \'Nur sekvitaj\'.';
	@override String get youPickedTrackOnly => 'Vi selektis la opcion \'Nur sekvitaj\'.';
	@override String get trackOnlyAppDescription => 'La apo estas sekvota por ĝisdatigoj, sed Updatium ne povos elŝuti aŭ instali ĝin.';
	@override String get cancelled => 'Nuligita';
	@override String get appAlreadyAdded => 'Jam aldonita apo';
	@override String get alreadyUpToDateQuestion => 'Ĉu la apo estas ĝisdata?';
	@override String get addApp => 'Aldoni apon';
	@override String get appSourceURL => 'URL de la apofonto';
	@override String get error => 'Eraro';
	@override String get add => 'Aldoni';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Serĉi (nur kelkaj fontoj)';
	@override String get search => 'Serĉi';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Kromaj opcioj por {}';
	@override String get supportedSources => 'Taskiĝata fontoj';
	@override String get trackOnlyInBrackets => '(Nur sekvita)';
	@override String get searchableInBrackets => '(Serĉebla)';
	@override String get appsString => 'Apoj';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Neniu apo';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Neniu apo por filtri';
	@override String get byX => 'Laŭ {}';
	@override String get percentProgress => 'Progreso: {}%';
	@override String get pleaseWait => 'Bonvolu atendi';
	@override String get updateAvailable => 'Havebla ĝisdatigo';
	@override String get notInstalled => 'Neinstalita';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'Pseŭdoversio';
	@override String get selectAll => 'Selekti ĉion';
	@override String get deselectX => 'Malselekti {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} estas farigota de Updatium sed restos instalata en la disponaĵo.';
	@override String get removeSelectedAppsQuestion => 'Farigi la selektitajn apojn?';
	@override String get removeSelectedApps => 'Farigi la selektitajn apojn';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Ĝisdatigi {}';
	@override String get installX => 'Instali {}';
	@override String get markXTrackOnlyAsUpdated => 'Marki {}\n(Nur sekvita)\nkiel ĝisdata';
	@override String get changeX => 'Ŝanĝi {}';
	@override String get installUpdateApps => 'Instali/ĝisdatigi apojn';
	@override String get installUpdateSelectedApps => 'Instali/ĝisdatigi la selektitajn apojn';
	@override String get markXSelectedAppsAsUpdated => 'Marki la {} selektitajn apojn kiel ĝisdataj?';
	@override String get no => 'Ne';
	@override String get yes => 'Jes';
	@override String get markSelectedAppsUpdated => 'Marki la selektitajn apojn kiel ĝisdataj';
	@override String get pinToTop => 'Alpingli supre';
	@override String get unpinFromTop => 'Malalpingli el supro';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Rekomenci la instaladostaton de la selektitaj apoj?';
	@override String get installStatusOfXWillBeResetExplanation => 'Instaladostato de ĉiuj selektitaj apoj estas rekomencota.\n\nTio povas utili kiam la versio de la montrata application en Updatium estas malĝusta kaŭze de malsukcesaj ĝidatigoj aŭ aliaj problemoj.';
	@override String get customLinkMessage => 'Tiuj ligiloj funkcias en disponaĵoj kun Updatium instalita';
	@override String get shareAppConfigLinks => 'Diskonigi la apo-agordojn kiel HTML ligilo';
	@override String get resetInstallStatus => 'Rekomenci la instaladostaton de la apoj';
	@override String get more => 'Pli';
	@override String get removeOutdatedFilter => 'Forigi la filtron de malmodernaj apoj';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Nur montri malmodernajn apojn';
	@override String get filter => 'Filtro';
	@override String get filterApps => 'Filtri la apojn';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Aponomo';
	@override String get author => 'Aŭtoro';
	@override String get upToDateApps => 'Ĝisdataj apoj';
	@override String get nonInstalledApps => 'Neinstalita apoj';
	@override String get importExport => 'Importi/Eksporti';
	@override String get settings => 'Agordoj';
	@override String get exportedTo => 'Eksportita en {}';
	@override String get updatiumExport => 'Eksporti Updatium-n';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Nevalida enigo';
	@override String get importedX => 'Importita {}';
	@override String get updatiumImport => 'Importi Updatium-n';
	@override String get importFromURLList => 'Eksporti el URL-listo';
	@override String get searchQuery => 'Informmendo de serĉo';
	@override String get appURLList => 'Listo de URLj de la apo';
	@override String get line => 'Horizontalo';
	@override String get searchX => 'Serĉi {}';
	@override String get noResults => 'Neniu rezulto';
	@override String get importX => 'Importi {}';
	@override String get importedAppsIdDisclaimer => 'La importitaj apoj povas montriĝi malĝuste kiel "Neinstalitaj".\nPor solvi tion, reinstalu ilin per Updatium.\nTiu ne afekcios la apodatumoj.\n\nAkefcias nur la URL-ajn lak triajn importmetodojn.';
	@override String get importErrors => 'Eraroj de importado';
	@override String get importedXOfYApps => '{} apoj el {} importitaj.';
	@override String get followingURLsHadErrors => 'La sekvantaj URLj havis erarojn:';
	@override String get selectURL => 'Selekti URLn';
	@override String get selectURLs => 'Selekti URLjn';
	@override String get pick => 'Elekti';
	@override String get theme => 'Temo';
	@override String get dark => 'Malhela';
	@override String get light => 'Hela';
	@override String get followSystem => 'Konformi al sistemo';
	@override String get followSystemThemeExplanation => 'Konformi al sistemtemo nur eblas kun triaj aplikaĵoj.';
	@override String get useBlackTheme => 'Uzi puran nigran temon';
	@override String get appSortBy => 'Klasi apojn laŭ';
	@override String get authorName => 'Aŭtoro/Nomo';
	@override String get nameAuthor => 'Nomo/Aŭtoro';
	@override String get asAdded => 'Aldondato';
	@override String get appSortOrder => 'Ordo de la apoklasifiko';
	@override String get ascending => 'Kreskanta';
	@override String get descending => 'Malkreskanta';
	@override String get bgUpdateCheckInterval => 'Serĉo-intertempo de fonaj ĝisdatigoj';
	@override String get neverManualOnly => 'Neniam - Nur Malaŭtomata';
	@override String get appearance => 'Aspekto';
	@override String get pinUpdates => 'Alpingli ĝisatigojn en la supro de la langeto \'Apoj\'';
	@override String get updates => 'Ĝisdatigoj';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Fontspecifa';
	@override String get appSource => 'Apofonto';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Neniu protokolo';
	@override String get appLogs => 'Apoprotokoloj';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Fermi';
	@override String get share => 'Diskonigi';
	@override String get appNotFound => 'Netrovebla apo';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'eksporto-updatium';
	@override String get pickAnAPK => 'Selektu APKn';
	@override String get appHasMoreThanOnePackage => '{} havas pli ol unu pakaĵon:';
	@override String get deviceSupportsXArch => 'Via disponaĵo taskiĝas la CPU-arkitekturon {}.';
	@override String get deviceSupportsFollowingArchs => 'Via disponaĵo taskiĝas la sekvantajn CPU-arkitekturojn:';
	@override String get warning => 'Avertu';
	@override String get sourceIsXButPackageFromYPrompt => 'La apofonto estas \'{}\' sed la pakaĵo de ĝisdatigo devenas de \'{}\'. Daŭrigi?';
	@override String get updatesAvailable => 'Haveblaj ĝisdatigoj';
	@override String get updatesAvailableNotifDescription => 'Sciigas al la uzanto, ke ĝisdatigoj haveblas por unu aŭ pluraj apoj sekvitaj fare de Updatium.';
	@override String get noNewUpdates => 'Neniu nova ĝisdatigo.';
	@override String get xHasAnUpdate => '{} havas ĝisdatigon.';
	@override String get appsUpdated => 'Ĝisdataj apoj';
	@override String get appsNotUpdated => 'Malsukcesis ĝisdatigi aplikaĵojn';
	@override String get appsUpdatedNotifDescription => 'Sciigas al la uzanto, ke ĝisdatigoj de unu aŭ pluraj apoj estas instalitaj fone.';
	@override String get xWasUpdatedToY => '{} estas ĝidatigita en {}.';
	@override String get xWasNotUpdatedToY => 'Malsukcesas ĝisdatigi de {} en {}.';
	@override String get errorCheckingUpdates => 'Eraro serĉante ĝisdatigojn';
	@override String get errorCheckingUpdatesNotifDescription => 'Sciigas al la uzanto, kiam la serĉo de fonaj ĝisdatigoj malsukcesas.';
	@override String get appsRemoved => 'Forigitaj Apoj';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Sciigas al la uzanto, ke unu aŭ pluraj apoj estas forigitaj kaŭze de eraroj dum ilia ŝarĝado.';
	@override String get xWasRemovedDueToErrorY => '{} estas forigita kaŭze de tiu eraro: {}';
	@override String get completeAppInstallation => 'Kompleta instalado de la apo';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium devas esti malfermita por instali apojn';
	@override String get completeAppInstallationNotifDescription => 'Petas la uzanton reiri en Updatium por fini la instaladon de apo';
	@override String get checkingForUpdates => 'Serĉante ĝisdatigojn';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Dumtempa sciigo kiu aperas dum la serĉo de ĝisdatigoj';
	@override String get pleaseAllowInstallPerm => 'Bonvolu permesi al Updatium instali apojn';
	@override String get trackOnly => 'Nur sekvita';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Eraro {}';
	@override String get versionCorrectionDisabled => 'Versiokorekto malaktivigita (ŝajnas, ke la kromaĵo ne funkcias)';
	@override String get unknown => 'Nekonata';
	@override String get none => 'Nenio';
	@override String get all => 'All';
	@override String get never => 'Neniam';
	@override String get latestVersion => 'Lasta versio';
	@override String get installedVersionX => 'Instalita versio: {}';
	@override String get lastUpdateCheckX => 'Lasta serĉo de ĝisdatigoj: {}';
	@override String get remove => 'Forigi';
	@override String get quickLinks => 'Quick Links';
	@override String get yesMarkUpdated => 'Jes, marki kiel ĝisdata';
	@override String get fdroid => 'Oficiala F-Droid';
	@override String get appIdOrName => 'Identigilo aŭ nomo de la apo';
	@override String get appId => 'Identigilo de la apo';
	@override String get appWithIdOrNameNotFound => 'Neniu apo estas trovita kun tiu identigilo aŭ nomo';
	@override String get reposHaveMultipleApps => 'Deponejoj povas enhavi plurajn apojn';
	@override String get fdroidThirdPartyRepo => 'Tria deponejo de F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instali';
	@override String get markInstalled => 'Marki kiel instalita';
	@override String get update => 'Ĝisdatigi';
	@override String get updated => 'Ĝisdatiĝis';
	@override String get markUpdated => 'Marki kiel ĝisdata';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Kromaj opcioj';
	@override String get disableVersionDetection => 'Malaktivigi la versiodetekto';
	@override String get noVersionDetectionExplanation => 'Tiu opcio devas esti uzata nur por apoj, kie la versiodetekto ne funkcias ĝuste.';
	@override String get downloadingX => 'Elŝutante {}';
	@override String get downloadX => 'Elŝuti {}';
	@override String get downloadedX => 'Elŝutita {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Aktiva versio';
	@override String get downloadNotifDescription => 'Sciigas al la uzanto pri la progreso de apo-elŝuton';
	@override String get noAPKFound => 'Neniu trovita APK';
	@override String get noVersionDetection => 'Neniu versiodetekto';
	@override String get categorize => 'Kategorii';
	@override String get categories => 'Kategorioj';
	@override String get category => 'Kategorio';
	@override String get noCategory => 'Neniu kategorio';
	@override String get noCategories => 'Neniuj kategorioj';
	@override String get categoryDeleteQuestion => 'Forigi la kategoriojn?';
	@override String get categoryDeleteWarning => 'Ĉiuj apoj el forigitaj kategorioj iĝos nekategoriitaj.';
	@override String get addCategory => 'Aldoni kategorion';
	@override String get label => 'Etikedo';
	@override String get language => 'Lingvo';
	@override String get copiedToClipboard => 'Kopiita en la tondujo';
	@override String get storagePermissionDenied => 'Permeso de stoko malkonsentita';
	@override String get selectedCategorizeWarning => 'Tio substituos ĉiujn difinitajn kategoriojn de la selektitaj apoj.';
	@override String get filterAPKsByRegEx => 'Filtri APKj per regula esprimo';
	@override String get removeFromUpdatium => 'Forigi el Updatium';
	@override String get uninstallFromDevice => 'Malinstali el la disponaĵo';
	@override String get onlyWorksWithNonVersionDetectApps => 'Funkcias nur por apoj kun malaktiva versiodetekto.';
	@override String get releaseDateAsVersion => 'Uzi eldondato kiel versioĉeno';
	@override String get releaseTitleAsVersion => 'Use release title as version string';
	@override String get releaseDateAsVersionExplanation => 'Tiu opcio devas esti uzata nur por apoj, por kiu la versiodetekto ne funkcias ĝuste, sed eldondato estas havebla.';
	@override String get changes => 'Modifoj';
	@override String get releaseDate => 'Eldondato';
	@override String get importFromURLsInFile => 'Importi el URLj en dosiero (kiel OPML)';
	@override String get versionDetectionExplanation => 'Akordigi la versioĉeno laŭ la versio detektita fare de la operaciumo';
	@override String get versionDetection => 'Versiodetekto';
	@override String get standardVersionDetection => 'Norma versiodetekto';
	@override String get groupByCategory => 'Grupigi per kategorio';
	@override String get listView => 'Lista vido';
	@override String get gridView => 'Krada vido';
	@override String get autoApkFilterByArch => 'Provi filtri APKj per CPU-arkitekturo se ebla';
	@override String get autoLinkFilterByArch => 'Attempt to filter links by CPU architecture if possible';
	@override String get overrideSource => 'Substitui la fonton';
	@override String get dontShowAgain => 'Ne plu montri';
	@override String get dontShowTrackOnlyWarnings => 'Ne plu montri \'Nur sekvita\' avertojn';
	@override String get dontShowAPKOriginWarnings => 'Ne plu montri avertojn pri APK-origino';
	@override String get moveNonInstalledAppsToBottom => 'Movi neinstalatajn apojn al malsupro de la langeto Apoj';
	@override String get gitlabPATLabel => 'GitLab persona atingoĵetono';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Pri';
	@override String get requiresCredentialsInSettings => '{} bezonas kromajn informojn (en Agordoj)';
	@override String get checkOnStart => 'Serĉi ĝisdatigojn starte';
	@override String get safeMode => 'Sekura reĝimo';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Aldoni apo estas malaktiva en sekura reĝimo';
	@override String get tryInferAppIdFromCode => 'Provi dedukti la identigilon de la apo el la fontkodo';
	@override String get removeOnExternalUninstall => 'Aŭtomate forigi ekstere malinstalitajn apojn';
	@override String get pickHighestVersionCode => 'Aŭtomate selekti la plej ĵusan version el APK-kodo';
	@override String get checkUpdateOnDetailPage => 'Serĉi ĝisdatigojn dum la malfermo de la detala apopaĝo';
	@override String get disablePageTransitions => 'Malaktivigi la animaciojn de paĝotransiro';
	@override String get reversePageTransitions => 'Inversigi la animaciojn de paĝotransiro';
	@override String get minStarCount => 'Minimuma nombro da steloj';
	@override String get addInfoBelow => 'Aldonu ĉi tiu informo ĉi-suba.';
	@override String get addInfoInSettings => 'Aldonu tiu informo en la agordoj.';
	@override String get githubSourceNote => 'La kvantolimo de GitHub povas esti evitata danke al API-ŝlosilo.';
	@override String get sortByLastLinkSegment => 'Klasi laŭ la lasta segmento de la ligilo';
	@override String get filterReleaseNotesByRegEx => 'Filtri versionotojn per regula esprimo';
	@override String get customLinkFilterRegex => 'Filtro de APK-ligilo agordita per regula esprimo (defaŭlte \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Provitaj apoĝisdatigoj';
	@override String get appsPossiblyUpdatedNotifDescription => 'Sciigas al la uzanto, ke ĝisdatigoj de unu aŭ pluraj apoj eble estas aplikitaj fone';
	@override String get xWasPossiblyUpdatedToY => '{} povas esti ĝisdata kiel {}.';
	@override String get enableBackgroundUpdates => 'Aktivigi fonajn ĝisdatigojn';
	@override String get backgroundUpdateReqsExplanation => 'Fonaj ĝisdatigoj ne eblas por ĉiuj apoj.';
	@override String get backgroundUpdateLimitsExplanation => 'La sukceso de fona instalado povas esti nur determinata dum la malfermo de Updatium.';
	@override String get verifyLatestTag => 'Inspekti la etikedon \'latest\'';
	@override String get intermediateLinkRegex => 'Filtri por \'pera\' vizitota ligilo';
	@override String get filterByLinkText => 'Filtri ligilojn laŭ ligiloteksto';
	@override String get matchLinksOutsideATags => 'Match links outside <a> tags';
	@override String get intermediateLinkNotFound => 'Netrovebla pera ligilo';
	@override String get intermediateLink => 'Pera ligilo';
	@override String get exemptFromBackgroundUpdates => 'Escepti el la fonaj ĝisdatigoj (se aktiva)';
	@override String get bgUpdatesOnWiFiOnly => 'Malaktivigi fonajn ĝisdatigojn se sen vifio';
	@override String get bgUpdatesWhileChargingOnly => 'Disable background updates when not charging';
	@override String get autoSelectHighestVersionCode => 'Aŭtomate selekti la plej ĵusan version de la APK-kodo';
	@override String get versionExtractionRegEx => 'Ekstrakti la versioĉenon per regula esprimo';
	@override String get trimVersionString => 'Mallongigi la versioĉenon per regula esprimo';
	@override String get matchGroupToUseForX => 'Konformecogrupo uzota por "{}"';
	@override String get matchGroupToUse => 'Grupo de konformeco uzota por la eltiraĵo de la versio per regula esprimo';
	@override String get highlightTouchTargets => 'Emfazi malpi evidentajn klavojn';
	@override String get pickExportDir => 'Selekti la dosierujon de eksporto';
	@override String get autoExportOnChanges => 'Aŭtomate eksporti dum modifoj';
	@override String get includeSettings => 'Inkluzivi la agordojn';
	@override String get filterVersionsByRegEx => 'Filtri versiojn per regula esprimo';
	@override String get trySelectingSuggestedVersionCode => 'Provi selekti la sugestitan version fare de la APK-kodo';
	@override String get dontSortReleasesList => 'Konservi la ordo de la API-versio';
	@override String get reverseSort => 'Inversigi klasifikon';
	@override String get takeFirstLink => 'Uzi la unuan ligilon';
	@override String get skipSort => 'Salti la klasifikon';
	@override String get debugMenu => 'Menu de eraroserĉado';
	@override String get bgTaskStarted => 'Fona tasko startita - inspektu la protokolojn.';
	@override String get runBgCheckNow => 'Ruli la serĉo de fonaj ĝisdatigoj nun';
	@override String get versionExtractWholePage => 'Apliki eltiraĵon de la versioĉeno per regula esprimo al la tuta paĝo';
	@override String get installing => 'Instalante';
	@override String get skipUpdateNotifications => 'Salti la sciigojn de ĝisdatigo';
	@override String get updatesAvailableNotifChannel => 'Haveblaj ĝisdatigoj';
	@override String get appsUpdatedNotifChannel => 'Ĝisdataj aplikaĵoj';
	@override String get appsPossiblyUpdatedNotifChannel => 'Provitaj apoĝisdatigoj';
	@override String get errorCheckingUpdatesNotifChannel => 'Eraro serĉante ĝisdatigojn';
	@override String get appsRemovedNotifChannel => 'Forigitaj aplikaĵoj';
	@override String get downloadingXNotifChannel => 'Elŝutante {}';
	@override String get completeAppInstallationNotifChannel => 'Kompleta apo instalado';
	@override String get checkingForUpdatesNotifChannel => 'Serĉante ĝisdatigojn';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Nur serĉi la ĝisdatigojn de instalitaj kaj \'nur sekvitaj\' apoj';
	@override String get supportFixedAPKURL => 'Taskiĝo de la fiksaj APK URLj';
	@override String get selectX => 'Selekti {}';
	@override String get parallelDownloads => 'Permesi dumajn elŝutojn';
	@override String get useShizuku => 'Uzi Shizuku aŭ Sui por instali';
	@override String get shizukuBinderNotFound => 'La servo Shizuku estas netrovebla';
	@override String get shizukuOld => 'Malnova versio de Shizuku (<11) - bonvolu ĝisdatigi ĝin';
	@override String get shizukuOldAndroidWithADB => 'Shizuku funkcias en Android < 8.1 kun ADB - bonvolu ĝisdatigi Android aŭ uzu Sui anstataŭe';
	@override String get shizukuPretendToBeGooglePlay => 'Determini Google Play kiel instalfonto (se Shizuku estas uzata)';
	@override String get useSystemFont => 'Uzi la sistema tiparo';
	@override String get useVersionCodeAsOSVersion => 'Uzi versiokodo de la apo kiel versio detektita fare de la operaciumo';
	@override String get requestHeader => 'Titolo de la informmendo';
	@override String get useLatestAssetDateAsReleaseDate => 'Uzi la lastan publikigitan elementon kiel eldondato';
	@override String get defaultPseudoVersioningMethod => 'Defaŭlta metodo de fikcia versio';
	@override String get partialAPKHash => 'Parta APKa haketo';
	@override String get APKLinkHash => 'Haketo de la APKa ligilo';
	@override String get directAPKLink => 'Rekta APKa ligilo';
	@override String get pseudoVersionInUse => 'Pseŭdoversio estas uzata';
	@override String get installedVersion => 'Instalita';
	@override String get installed => 'Instalita';
	@override String get notInstalledApps => 'Ne instalita';
	@override String get latest => 'Lasta versio';
	@override String get invertRegEx => 'Inversigi la regula esprimo';
	@override String get note => 'Noto';
	@override String get selfHostedNote => 'La malvolvanta listo "{}" povas esti uzata por aliri al memgastigataj/agordata instancoj el ajna fonto.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'La APK ne povis esti analizita (neakordigebla aŭ nekompleta elŝuto)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Diskonigi novajn aplikaĵojn kun AppVerifier (se havebla)';
	@override String get appVerifierInstructionToast => 'Diskonigu kun AppVerifier, poste revenu ĉi tie kiam preta.';
	@override String get wiki => 'Helpo/Vikio';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Allow insecure HTTP requests';
	@override String get stayOneVersionBehind => 'Stay one version behind latest';
	@override String get useFirstApkOfVersion => 'Auto-select first of multiple APKs';
	@override String get refreshBeforeDownload => 'Refresh app details before download';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Name';
	@override String get smartname => 'Name (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sort Method';
	@override String get welcome => 'Welcome';
	@override String get batteryOptimizationNote => 'Note that background downloads may work more reliably if you disable OS battery optimizations for Updatium.';
	@override String get fileDeletionError => 'Failed to delete file (try deleting it manually then try again): "{}"';
	@override String get foregroundService => 'Updatium foreground service';
	@override String get foregroundServiceExplanation => 'Use a foreground service for update checking (more reliable, consumes more power)';
	@override String get fgServiceNotice => 'This notification is required for background update checking (it can be hidden in the OS settings)';
	@override String get excludeSecrets => 'Exclude secrets';
	@override String get GHReqPrefix => '\'omeritzics/Updatium\' instance for GitHub requests';
	@override String get includeZips => 'Include ZIP files';
	@override String get zippedApkFilterRegEx => 'Filter APKs inside ZIP';
	@override String get multipleSigners => 'Multiple Signers';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Forigi la aplikaĵon?',
		other: 'Forigi la aplikaĵojn?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Tro da informmendoj (limigita kvanto) - reprovu en {count} minuto',
		other: 'Tro da informmendoj (limigita kvanto) - reprovu en {count} minutoj',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'La serĉo de fonaj ĝisdatigoj renkontis al {error}, nova programota provo en {count} minuto',
		other: 'La serĉo de fonaj ĝisdatigoj renkontis al {error}, nova programota provo en {count} minutoj',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'La serĉo de fonaj ĝisdatigoj trovis {count} ĝisdatigon - la uzanto estas sciigota se necesa',
		other: 'La serĉo de fonaj ĝisdatigoj trovis {count} ĝisdatigojn - la uzanto estas sciigota se necesa',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{count} Apo',
		other: '{count} Apoj',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{count} URL',
		other: '{count} URLj',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{count} minuto',
		other: '{count} minutoj',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{count} horo',
		other: '{count} horoj',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{count} tago',
		other: '{count} tagoj',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Purigis {n} protokolon (antaŭe = {before}, malantaŭe = {after})',
		other: 'Purigis {n} protokolojn (antaŭe = {before}, malantaŭe = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{app} kaj 1 alia apo havas ĝisdatigojn.',
		other: '{app} kaj {count} aliaj apoj havas ĝisdatigojn.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{app} kaj 1 alia apo ĝisdatiĝis.',
		other: '{app} kaj {count} aliaj apoj ĝisdatiĝis.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Ne eblas ĝisdatigi {app} kaj 1 alian apon.',
		other: 'Ne eblas ĝisdatigi {app} et {count} aliajn apojn.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{app} kaj 1 alia apo eble ĝisdatiĝis.',
		other: '{app} kaj {count} aliaj apoj eble ĝisdatiĝis.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: '{count} APK',
		other: '{count} APKj',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Certificate Hash',
		other: 'Certificate Hashes',
	);
	@override String get securityDisclaimerTitle => 'Sekureca kaj Jura Malrespondeco';
	@override String get license => 'Permesilo';
	@override String get licenseText => 'Ĉi tiu aplikaĵo estas distribuita sub la GPL v3 Permesilo.';
	@override String get disclaimer => 'Malrespondeco';
	@override String get disclaimerText => 'Ĉi tiu aplikaĵo ne distribuas, gastigas aŭ verigas iujn el la eksteraj aplikaĵoj. La uzanto portas la plenan respondecon por la sekureco kaj laŭleĝeco de iu ajn programaro instalita tra ĉi tiu ilo.';
	@override String get privacy => 'Privateco';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Akcepti kaj Daŭrigi';
	@override String get decline => 'Rifuzi';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Ĉu vi ŝatas Updatium?';
	@override String get githubStarPromptContent => 'Updatium estas volontula malfermitkoda komunuma projekto, kiun mi ellaboris en mia libera tempo. Se vi ŝatus subteni la projekton, bonvolu konsideri doni al ĝi stelon en GitHub por helpi nin atingi pli da uzantoj kaj kontribuantoj. Vi ne estos rememorita pri tio denove. Antaŭdankon! :)';
	@override String get githubStarPromptStar => 'Doni stelon';
	@override String get githubStarPromptDontShowAgain => 'Ne montri denove';
	@override String get sourceCode => 'Fontokodo';
	@override String get developedBy => 'Disvolvita de';
	@override String get appDescription => 'Aligebla Android-aplika katalogo, kiu permesas al vi aktualigi viajn aplikaojn rekte de iliaj APK-fontoj.';
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

/// The flat map containing all translations for locale <en-EO>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEnEo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Nevalida apo-URL {}',
			'noReleaseFound' => 'Ne eblas trovi taŭgan eldonon',
			'noVersionFound' => 'Ne eblas determini la eldonversion',
			'urlMatchesNoSource' => 'La URL ne konformas al konata fonto',
			'cantInstallOlderVersion' => 'Ne eblas instali malnovan version de la Apo',
			'appIdMismatch' => 'La identigilo de la elŝutita pakaĵo ne konformas al la identigilo de la ekzistanta apo',
			'functionNotImplemented' => 'Tiu klaso ne fasonadas tiun funkcion',
			'placeholder' => 'Rezervilo',
			'someErrors' => 'Eraroj okazis',
			'unexpectedError' => 'Neatendita eraro',
			'ok' => 'Okej',
			'and' => 'kaj',
			'githubPATLabel' => 'Github persona atingoĵetono',
			'includePrereleases' => 'Inkluzivi la pra-eldonojn',
			'fallbackToOlderReleases' => 'Reveno al malnovaj versioj',
			'filterReleaseTitlesByRegEx' => 'Filtri la eldontitoljn per regula esprimo',
			'invalidRegEx' => 'Nevalida regula esprimo',
			'noDescription' => 'Neniu priskribo',
			'cancel' => 'Nuligi',
			'kContinue' => 'Daŭrigi',
			'requiredInBrackets' => '(Neprigata)',
			'dropdownNoOptsError' => 'ERARO: LA MALVOLVANTA LISTO DEVAS HAVI ALMENAŬ UNU OPCION',
			'color' => 'Koloro',
			'standard' => 'Norma',
			'custom' => 'Agordita',
			'primary' => 'Primary',
			'useMaterialYou' => 'Uzi Material You kolorojn',
			'githubStarredRepos' => 'Stelaj GitHub-deponejoj',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Uzantnomo',
			'wrongArgNum' => 'Malĝusta nombro da provizitaj argumentoj',
			'xIsTrackOnly' => '{} estas nur sekvitaj',
			'source' => 'Fonto',
			'app' => 'Apo',
			'appsFromSourceAreTrackOnly' => 'Apoj el tiu fonto estas \'Nur sekvitaj\'.',
			'youPickedTrackOnly' => 'Vi selektis la opcion \'Nur sekvitaj\'.',
			'trackOnlyAppDescription' => 'La apo estas sekvota por ĝisdatigoj, sed Updatium ne povos elŝuti aŭ instali ĝin.',
			'cancelled' => 'Nuligita',
			'appAlreadyAdded' => 'Jam aldonita apo',
			'alreadyUpToDateQuestion' => 'Ĉu la apo estas ĝisdata?',
			'addApp' => 'Aldoni apon',
			'appSourceURL' => 'URL de la apofonto',
			'error' => 'Eraro',
			'add' => 'Aldoni',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Serĉi (nur kelkaj fontoj)',
			'search' => 'Serĉi',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Kromaj opcioj por {}',
			'supportedSources' => 'Taskiĝata fontoj',
			'trackOnlyInBrackets' => '(Nur sekvita)',
			'searchableInBrackets' => '(Serĉebla)',
			'appsString' => 'Apoj',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Neniu apo',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Neniu apo por filtri',
			'byX' => 'Laŭ {}',
			'percentProgress' => 'Progreso: {}%',
			'pleaseWait' => 'Bonvolu atendi',
			'updateAvailable' => 'Havebla ĝisdatigo',
			'notInstalled' => 'Neinstalita',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'Pseŭdoversio',
			'selectAll' => 'Selekti ĉion',
			'deselectX' => 'Malselekti {}',
			'xWillBeRemovedButRemainInstalled' => '{} estas farigota de Updatium sed restos instalata en la disponaĵo.',
			'removeSelectedAppsQuestion' => 'Farigi la selektitajn apojn?',
			'removeSelectedApps' => 'Farigi la selektitajn apojn',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Ĝisdatigi {}',
			'installX' => 'Instali {}',
			'markXTrackOnlyAsUpdated' => 'Marki {}\n(Nur sekvita)\nkiel ĝisdata',
			'changeX' => 'Ŝanĝi {}',
			'installUpdateApps' => 'Instali/ĝisdatigi apojn',
			'installUpdateSelectedApps' => 'Instali/ĝisdatigi la selektitajn apojn',
			'markXSelectedAppsAsUpdated' => 'Marki la {} selektitajn apojn kiel ĝisdataj?',
			'no' => 'Ne',
			'yes' => 'Jes',
			'markSelectedAppsUpdated' => 'Marki la selektitajn apojn kiel ĝisdataj',
			'pinToTop' => 'Alpingli supre',
			'unpinFromTop' => 'Malalpingli el supro',
			'resetInstallStatusForSelectedAppsQuestion' => 'Rekomenci la instaladostaton de la selektitaj apoj?',
			'installStatusOfXWillBeResetExplanation' => 'Instaladostato de ĉiuj selektitaj apoj estas rekomencota.\n\nTio povas utili kiam la versio de la montrata application en Updatium estas malĝusta kaŭze de malsukcesaj ĝidatigoj aŭ aliaj problemoj.',
			'customLinkMessage' => 'Tiuj ligiloj funkcias en disponaĵoj kun Updatium instalita',
			'shareAppConfigLinks' => 'Diskonigi la apo-agordojn kiel HTML ligilo',
			'resetInstallStatus' => 'Rekomenci la instaladostaton de la apoj',
			'more' => 'Pli',
			'removeOutdatedFilter' => 'Forigi la filtron de malmodernaj apoj',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Nur montri malmodernajn apojn',
			'filter' => 'Filtro',
			'filterApps' => 'Filtri la apojn',
			'filterDays' => 'Filter days',
			'appName' => 'Aponomo',
			'author' => 'Aŭtoro',
			'upToDateApps' => 'Ĝisdataj apoj',
			'nonInstalledApps' => 'Neinstalita apoj',
			'importExport' => 'Importi/Eksporti',
			'settings' => 'Agordoj',
			'exportedTo' => 'Eksportita en {}',
			'updatiumExport' => 'Eksporti Updatium-n',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Nevalida enigo',
			'importedX' => 'Importita {}',
			'updatiumImport' => 'Importi Updatium-n',
			'importFromURLList' => 'Eksporti el URL-listo',
			'searchQuery' => 'Informmendo de serĉo',
			'appURLList' => 'Listo de URLj de la apo',
			'line' => 'Horizontalo',
			'searchX' => 'Serĉi {}',
			'noResults' => 'Neniu rezulto',
			'importX' => 'Importi {}',
			'importedAppsIdDisclaimer' => 'La importitaj apoj povas montriĝi malĝuste kiel "Neinstalitaj".\nPor solvi tion, reinstalu ilin per Updatium.\nTiu ne afekcios la apodatumoj.\n\nAkefcias nur la URL-ajn lak triajn importmetodojn.',
			'importErrors' => 'Eraroj de importado',
			'importedXOfYApps' => '{} apoj el {} importitaj.',
			'followingURLsHadErrors' => 'La sekvantaj URLj havis erarojn:',
			'selectURL' => 'Selekti URLn',
			'selectURLs' => 'Selekti URLjn',
			'pick' => 'Elekti',
			'theme' => 'Temo',
			'dark' => 'Malhela',
			'light' => 'Hela',
			'followSystem' => 'Konformi al sistemo',
			'followSystemThemeExplanation' => 'Konformi al sistemtemo nur eblas kun triaj aplikaĵoj.',
			'useBlackTheme' => 'Uzi puran nigran temon',
			'appSortBy' => 'Klasi apojn laŭ',
			'authorName' => 'Aŭtoro/Nomo',
			'nameAuthor' => 'Nomo/Aŭtoro',
			'asAdded' => 'Aldondato',
			'appSortOrder' => 'Ordo de la apoklasifiko',
			'ascending' => 'Kreskanta',
			'descending' => 'Malkreskanta',
			'bgUpdateCheckInterval' => 'Serĉo-intertempo de fonaj ĝisdatigoj',
			'neverManualOnly' => 'Neniam - Nur Malaŭtomata',
			'appearance' => 'Aspekto',
			'pinUpdates' => 'Alpingli ĝisatigojn en la supro de la langeto \'Apoj\'',
			'updates' => 'Ĝisdatigoj',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Fontspecifa',
			'appSource' => 'Apofonto',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Neniu protokolo',
			'appLogs' => 'Apoprotokoloj',
			'appLogsHint' => 'View application logs',
			'close' => 'Fermi',
			'share' => 'Diskonigi',
			'appNotFound' => 'Netrovebla apo',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'eksporto-updatium',
			'pickAnAPK' => 'Selektu APKn',
			'appHasMoreThanOnePackage' => '{} havas pli ol unu pakaĵon:',
			'deviceSupportsXArch' => 'Via disponaĵo taskiĝas la CPU-arkitekturon {}.',
			'deviceSupportsFollowingArchs' => 'Via disponaĵo taskiĝas la sekvantajn CPU-arkitekturojn:',
			'warning' => 'Avertu',
			'sourceIsXButPackageFromYPrompt' => 'La apofonto estas \'{}\' sed la pakaĵo de ĝisdatigo devenas de \'{}\'. Daŭrigi?',
			'updatesAvailable' => 'Haveblaj ĝisdatigoj',
			'updatesAvailableNotifDescription' => 'Sciigas al la uzanto, ke ĝisdatigoj haveblas por unu aŭ pluraj apoj sekvitaj fare de Updatium.',
			'noNewUpdates' => 'Neniu nova ĝisdatigo.',
			'xHasAnUpdate' => '{} havas ĝisdatigon.',
			'appsUpdated' => 'Ĝisdataj apoj',
			'appsNotUpdated' => 'Malsukcesis ĝisdatigi aplikaĵojn',
			'appsUpdatedNotifDescription' => 'Sciigas al la uzanto, ke ĝisdatigoj de unu aŭ pluraj apoj estas instalitaj fone.',
			'xWasUpdatedToY' => '{} estas ĝidatigita en {}.',
			'xWasNotUpdatedToY' => 'Malsukcesas ĝisdatigi de {} en {}.',
			'errorCheckingUpdates' => 'Eraro serĉante ĝisdatigojn',
			'errorCheckingUpdatesNotifDescription' => 'Sciigas al la uzanto, kiam la serĉo de fonaj ĝisdatigoj malsukcesas.',
			'appsRemoved' => 'Forigitaj Apoj',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Sciigas al la uzanto, ke unu aŭ pluraj apoj estas forigitaj kaŭze de eraroj dum ilia ŝarĝado.',
			'xWasRemovedDueToErrorY' => '{} estas forigita kaŭze de tiu eraro: {}',
			'completeAppInstallation' => 'Kompleta instalado de la apo',
			'updatiumMustBeOpenToInstallApps' => 'Updatium devas esti malfermita por instali apojn',
			'completeAppInstallationNotifDescription' => 'Petas la uzanton reiri en Updatium por fini la instaladon de apo',
			'checkingForUpdates' => 'Serĉante ĝisdatigojn',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Dumtempa sciigo kiu aperas dum la serĉo de ĝisdatigoj',
			'pleaseAllowInstallPerm' => 'Bonvolu permesi al Updatium instali apojn',
			'trackOnly' => 'Nur sekvita',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Eraro {}',
			'versionCorrectionDisabled' => 'Versiokorekto malaktivigita (ŝajnas, ke la kromaĵo ne funkcias)',
			'unknown' => 'Nekonata',
			'none' => 'Nenio',
			'all' => 'All',
			'never' => 'Neniam',
			'latestVersion' => 'Lasta versio',
			'installedVersionX' => 'Instalita versio: {}',
			'lastUpdateCheckX' => 'Lasta serĉo de ĝisdatigoj: {}',
			'remove' => 'Forigi',
			'quickLinks' => 'Quick Links',
			'yesMarkUpdated' => 'Jes, marki kiel ĝisdata',
			'fdroid' => 'Oficiala F-Droid',
			'appIdOrName' => 'Identigilo aŭ nomo de la apo',
			'appId' => 'Identigilo de la apo',
			'appWithIdOrNameNotFound' => 'Neniu apo estas trovita kun tiu identigilo aŭ nomo',
			'reposHaveMultipleApps' => 'Deponejoj povas enhavi plurajn apojn',
			'fdroidThirdPartyRepo' => 'Tria deponejo de F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instali',
			'markInstalled' => 'Marki kiel instalita',
			'update' => 'Ĝisdatigi',
			'updated' => 'Ĝisdatiĝis',
			'markUpdated' => 'Marki kiel ĝisdata',
			'download' => 'Download',
			'additionalOptions' => 'Kromaj opcioj',
			'disableVersionDetection' => 'Malaktivigi la versiodetekto',
			'noVersionDetectionExplanation' => 'Tiu opcio devas esti uzata nur por apoj, kie la versiodetekto ne funkcias ĝuste.',
			'downloadingX' => 'Elŝutante {}',
			'downloadX' => 'Elŝuti {}',
			'downloadedX' => 'Elŝutita {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Aktiva versio',
			'downloadNotifDescription' => 'Sciigas al la uzanto pri la progreso de apo-elŝuton',
			'noAPKFound' => 'Neniu trovita APK',
			'noVersionDetection' => 'Neniu versiodetekto',
			'categorize' => 'Kategorii',
			'categories' => 'Kategorioj',
			'category' => 'Kategorio',
			'noCategory' => 'Neniu kategorio',
			'noCategories' => 'Neniuj kategorioj',
			'categoryDeleteQuestion' => 'Forigi la kategoriojn?',
			'categoryDeleteWarning' => 'Ĉiuj apoj el forigitaj kategorioj iĝos nekategoriitaj.',
			'addCategory' => 'Aldoni kategorion',
			'label' => 'Etikedo',
			'language' => 'Lingvo',
			'copiedToClipboard' => 'Kopiita en la tondujo',
			'storagePermissionDenied' => 'Permeso de stoko malkonsentita',
			'selectedCategorizeWarning' => 'Tio substituos ĉiujn difinitajn kategoriojn de la selektitaj apoj.',
			'filterAPKsByRegEx' => 'Filtri APKj per regula esprimo',
			'removeFromUpdatium' => 'Forigi el Updatium',
			'uninstallFromDevice' => 'Malinstali el la disponaĵo',
			'onlyWorksWithNonVersionDetectApps' => 'Funkcias nur por apoj kun malaktiva versiodetekto.',
			'releaseDateAsVersion' => 'Uzi eldondato kiel versioĉeno',
			'releaseTitleAsVersion' => 'Use release title as version string',
			'releaseDateAsVersionExplanation' => 'Tiu opcio devas esti uzata nur por apoj, por kiu la versiodetekto ne funkcias ĝuste, sed eldondato estas havebla.',
			'changes' => 'Modifoj',
			'releaseDate' => 'Eldondato',
			'importFromURLsInFile' => 'Importi el URLj en dosiero (kiel OPML)',
			'versionDetectionExplanation' => 'Akordigi la versioĉeno laŭ la versio detektita fare de la operaciumo',
			'versionDetection' => 'Versiodetekto',
			'standardVersionDetection' => 'Norma versiodetekto',
			'groupByCategory' => 'Grupigi per kategorio',
			'listView' => 'Lista vido',
			'gridView' => 'Krada vido',
			'autoApkFilterByArch' => 'Provi filtri APKj per CPU-arkitekturo se ebla',
			'autoLinkFilterByArch' => 'Attempt to filter links by CPU architecture if possible',
			'overrideSource' => 'Substitui la fonton',
			'dontShowAgain' => 'Ne plu montri',
			'dontShowTrackOnlyWarnings' => 'Ne plu montri \'Nur sekvita\' avertojn',
			'dontShowAPKOriginWarnings' => 'Ne plu montri avertojn pri APK-origino',
			'moveNonInstalledAppsToBottom' => 'Movi neinstalatajn apojn al malsupro de la langeto Apoj',
			'gitlabPATLabel' => 'GitLab persona atingoĵetono',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Pri',
			'requiresCredentialsInSettings' => '{} bezonas kromajn informojn (en Agordoj)',
			'checkOnStart' => 'Serĉi ĝisdatigojn starte',
			'safeMode' => 'Sekura reĝimo',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Aldoni apo estas malaktiva en sekura reĝimo',
			'tryInferAppIdFromCode' => 'Provi dedukti la identigilon de la apo el la fontkodo',
			'removeOnExternalUninstall' => 'Aŭtomate forigi ekstere malinstalitajn apojn',
			'pickHighestVersionCode' => 'Aŭtomate selekti la plej ĵusan version el APK-kodo',
			'checkUpdateOnDetailPage' => 'Serĉi ĝisdatigojn dum la malfermo de la detala apopaĝo',
			'disablePageTransitions' => 'Malaktivigi la animaciojn de paĝotransiro',
			'reversePageTransitions' => 'Inversigi la animaciojn de paĝotransiro',
			'minStarCount' => 'Minimuma nombro da steloj',
			'addInfoBelow' => 'Aldonu ĉi tiu informo ĉi-suba.',
			'addInfoInSettings' => 'Aldonu tiu informo en la agordoj.',
			'githubSourceNote' => 'La kvantolimo de GitHub povas esti evitata danke al API-ŝlosilo.',
			'sortByLastLinkSegment' => 'Klasi laŭ la lasta segmento de la ligilo',
			'filterReleaseNotesByRegEx' => 'Filtri versionotojn per regula esprimo',
			'customLinkFilterRegex' => 'Filtro de APK-ligilo agordita per regula esprimo (defaŭlte \'.apk$\')',
			'appsPossiblyUpdated' => 'Provitaj apoĝisdatigoj',
			'appsPossiblyUpdatedNotifDescription' => 'Sciigas al la uzanto, ke ĝisdatigoj de unu aŭ pluraj apoj eble estas aplikitaj fone',
			'xWasPossiblyUpdatedToY' => '{} povas esti ĝisdata kiel {}.',
			'enableBackgroundUpdates' => 'Aktivigi fonajn ĝisdatigojn',
			'backgroundUpdateReqsExplanation' => 'Fonaj ĝisdatigoj ne eblas por ĉiuj apoj.',
			'backgroundUpdateLimitsExplanation' => 'La sukceso de fona instalado povas esti nur determinata dum la malfermo de Updatium.',
			'verifyLatestTag' => 'Inspekti la etikedon \'latest\'',
			'intermediateLinkRegex' => 'Filtri por \'pera\' vizitota ligilo',
			'filterByLinkText' => 'Filtri ligilojn laŭ ligiloteksto',
			'matchLinksOutsideATags' => 'Match links outside <a> tags',
			'intermediateLinkNotFound' => 'Netrovebla pera ligilo',
			'intermediateLink' => 'Pera ligilo',
			'exemptFromBackgroundUpdates' => 'Escepti el la fonaj ĝisdatigoj (se aktiva)',
			'bgUpdatesOnWiFiOnly' => 'Malaktivigi fonajn ĝisdatigojn se sen vifio',
			'bgUpdatesWhileChargingOnly' => 'Disable background updates when not charging',
			'autoSelectHighestVersionCode' => 'Aŭtomate selekti la plej ĵusan version de la APK-kodo',
			'versionExtractionRegEx' => 'Ekstrakti la versioĉenon per regula esprimo',
			'trimVersionString' => 'Mallongigi la versioĉenon per regula esprimo',
			'matchGroupToUseForX' => 'Konformecogrupo uzota por "{}"',
			'matchGroupToUse' => 'Grupo de konformeco uzota por la eltiraĵo de la versio per regula esprimo',
			'highlightTouchTargets' => 'Emfazi malpi evidentajn klavojn',
			'pickExportDir' => 'Selekti la dosierujon de eksporto',
			'autoExportOnChanges' => 'Aŭtomate eksporti dum modifoj',
			'includeSettings' => 'Inkluzivi la agordojn',
			'filterVersionsByRegEx' => 'Filtri versiojn per regula esprimo',
			'trySelectingSuggestedVersionCode' => 'Provi selekti la sugestitan version fare de la APK-kodo',
			'dontSortReleasesList' => 'Konservi la ordo de la API-versio',
			'reverseSort' => 'Inversigi klasifikon',
			'takeFirstLink' => 'Uzi la unuan ligilon',
			'skipSort' => 'Salti la klasifikon',
			'debugMenu' => 'Menu de eraroserĉado',
			'bgTaskStarted' => 'Fona tasko startita - inspektu la protokolojn.',
			'runBgCheckNow' => 'Ruli la serĉo de fonaj ĝisdatigoj nun',
			'versionExtractWholePage' => 'Apliki eltiraĵon de la versioĉeno per regula esprimo al la tuta paĝo',
			'installing' => 'Instalante',
			'skipUpdateNotifications' => 'Salti la sciigojn de ĝisdatigo',
			'updatesAvailableNotifChannel' => 'Haveblaj ĝisdatigoj',
			'appsUpdatedNotifChannel' => 'Ĝisdataj aplikaĵoj',
			'appsPossiblyUpdatedNotifChannel' => 'Provitaj apoĝisdatigoj',
			'errorCheckingUpdatesNotifChannel' => 'Eraro serĉante ĝisdatigojn',
			'appsRemovedNotifChannel' => 'Forigitaj aplikaĵoj',
			'downloadingXNotifChannel' => 'Elŝutante {}',
			'completeAppInstallationNotifChannel' => 'Kompleta apo instalado',
			'checkingForUpdatesNotifChannel' => 'Serĉante ĝisdatigojn',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Nur serĉi la ĝisdatigojn de instalitaj kaj \'nur sekvitaj\' apoj',
			'supportFixedAPKURL' => 'Taskiĝo de la fiksaj APK URLj',
			'selectX' => 'Selekti {}',
			'parallelDownloads' => 'Permesi dumajn elŝutojn',
			'useShizuku' => 'Uzi Shizuku aŭ Sui por instali',
			'shizukuBinderNotFound' => 'La servo Shizuku estas netrovebla',
			'shizukuOld' => 'Malnova versio de Shizuku (<11) - bonvolu ĝisdatigi ĝin',
			'shizukuOldAndroidWithADB' => 'Shizuku funkcias en Android < 8.1 kun ADB - bonvolu ĝisdatigi Android aŭ uzu Sui anstataŭe',
			'shizukuPretendToBeGooglePlay' => 'Determini Google Play kiel instalfonto (se Shizuku estas uzata)',
			'useSystemFont' => 'Uzi la sistema tiparo',
			'useVersionCodeAsOSVersion' => 'Uzi versiokodo de la apo kiel versio detektita fare de la operaciumo',
			'requestHeader' => 'Titolo de la informmendo',
			'useLatestAssetDateAsReleaseDate' => 'Uzi la lastan publikigitan elementon kiel eldondato',
			'defaultPseudoVersioningMethod' => 'Defaŭlta metodo de fikcia versio',
			'partialAPKHash' => 'Parta APKa haketo',
			'APKLinkHash' => 'Haketo de la APKa ligilo',
			'directAPKLink' => 'Rekta APKa ligilo',
			'pseudoVersionInUse' => 'Pseŭdoversio estas uzata',
			'installedVersion' => 'Instalita',
			'installed' => 'Instalita',
			'notInstalledApps' => 'Ne instalita',
			'latest' => 'Lasta versio',
			'invertRegEx' => 'Inversigi la regula esprimo',
			'note' => 'Noto',
			'selfHostedNote' => 'La malvolvanta listo "{}" povas esti uzata por aliri al memgastigataj/agordata instancoj el ajna fonto.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'La APK ne povis esti analizita (neakordigebla aŭ nekompleta elŝuto)',
			'beforeNewInstallsShareToAppVerifier' => 'Diskonigi novajn aplikaĵojn kun AppVerifier (se havebla)',
			'appVerifierInstructionToast' => 'Diskonigu kun AppVerifier, poste revenu ĉi tie kiam preta.',
			'wiki' => 'Helpo/Vikio',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Allow insecure HTTP requests',
			'stayOneVersionBehind' => 'Stay one version behind latest',
			'useFirstApkOfVersion' => 'Auto-select first of multiple APKs',
			'refreshBeforeDownload' => 'Refresh app details before download',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Name',
			'smartname' => 'Name (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sort Method',
			'welcome' => 'Welcome',
			'batteryOptimizationNote' => 'Note that background downloads may work more reliably if you disable OS battery optimizations for Updatium.',
			'fileDeletionError' => 'Failed to delete file (try deleting it manually then try again): "{}"',
			'foregroundService' => 'Updatium foreground service',
			'foregroundServiceExplanation' => 'Use a foreground service for update checking (more reliable, consumes more power)',
			'fgServiceNotice' => 'This notification is required for background update checking (it can be hidden in the OS settings)',
			'excludeSecrets' => 'Exclude secrets',
			'GHReqPrefix' => '\'omeritzics/Updatium\' instance for GitHub requests',
			'includeZips' => 'Include ZIP files',
			'zippedApkFilterRegEx' => 'Filter APKs inside ZIP',
			'multipleSigners' => 'Multiple Signers',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Forigi la aplikaĵon?', other: 'Forigi la aplikaĵojn?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Tro da informmendoj (limigita kvanto) - reprovu en {count} minuto', other: 'Tro da informmendoj (limigita kvanto) - reprovu en {count} minutoj', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'La serĉo de fonaj ĝisdatigoj renkontis al {error}, nova programota provo en {count} minuto', other: 'La serĉo de fonaj ĝisdatigoj renkontis al {error}, nova programota provo en {count} minutoj', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'La serĉo de fonaj ĝisdatigoj trovis {count} ĝisdatigon - la uzanto estas sciigota se necesa', other: 'La serĉo de fonaj ĝisdatigoj trovis {count} ĝisdatigojn - la uzanto estas sciigota se necesa', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{count} Apo', other: '{count} Apoj', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{count} URL', other: '{count} URLj', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{count} minuto', other: '{count} minutoj', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{count} horo', other: '{count} horoj', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{count} tago', other: '{count} tagoj', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Purigis {n} protokolon (antaŭe = {before}, malantaŭe = {after})', other: 'Purigis {n} protokolojn (antaŭe = {before}, malantaŭe = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{app} kaj 1 alia apo havas ĝisdatigojn.', other: '{app} kaj {count} aliaj apoj havas ĝisdatigojn.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{app} kaj 1 alia apo ĝisdatiĝis.', other: '{app} kaj {count} aliaj apoj ĝisdatiĝis.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Ne eblas ĝisdatigi {app} kaj 1 alian apon.', other: 'Ne eblas ĝisdatigi {app} et {count} aliajn apojn.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{app} kaj 1 alia apo eble ĝisdatiĝis.', other: '{app} kaj {count} aliaj apoj eble ĝisdatiĝis.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: '{count} APK', other: '{count} APKj', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n, one: 'Certificate Hash', other: 'Certificate Hashes', ), 
			'securityDisclaimerTitle' => 'Sekureca kaj Jura Malrespondeco',
			'license' => 'Permesilo',
			'licenseText' => 'Ĉi tiu aplikaĵo estas distribuita sub la GPL v3 Permesilo.',
			'disclaimer' => 'Malrespondeco',
			'disclaimerText' => 'Ĉi tiu aplikaĵo ne distribuas, gastigas aŭ verigas iujn el la eksteraj aplikaĵoj. La uzanto portas la plenan respondecon por la sekureco kaj laŭleĝeco de iu ajn programaro instalita tra ĉi tiu ilo.',
			'privacy' => 'Privateco',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Akcepti kaj Daŭrigi',
			'decline' => 'Rifuzi',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Ĉu vi ŝatas Updatium?',
			'githubStarPromptContent' => 'Updatium estas volontula malfermitkoda komunuma projekto, kiun mi ellaboris en mia libera tempo. Se vi ŝatus subteni la projekton, bonvolu konsideri doni al ĝi stelon en GitHub por helpi nin atingi pli da uzantoj kaj kontribuantoj. Vi ne estos rememorita pri tio denove. Antaŭdankon! :)',
			'githubStarPromptStar' => 'Doni stelon',
			'githubStarPromptDontShowAgain' => 'Ne montri denove',
			'sourceCode' => 'Fontokodo',
			'developedBy' => 'Disvolvita de',
			'appDescription' => 'Aligebla Android-aplika katalogo, kiu permesas al vi aktualigi viajn aplikaojn rekte de iliaj APK-fontoj.',
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
