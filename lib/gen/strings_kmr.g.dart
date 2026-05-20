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
class TranslationsKmr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKmr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.kmr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <kmr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKmr _root = this; // ignore: unused_field

	@override 
	TranslationsKmr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKmr(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'URL-ya {} a nederbasdar a sepanê nîne';
	@override String get noReleaseFound => 'Berdana guncaw nehat dîtin';
	@override String get noVersionFound => 'Guhertoya berdanê nehat dîtin';
	@override String get urlMatchesNoSource => 'URL ne bi çavkaniyeke naskirî re têkildar nabe';
	@override String get cantInstallOlderVersion => 'Nikare guhertoyeke kevntir a sepanê saz bike';
	@override String get appIdMismatch => 'ID-ya pakêta daxistî ne bi ID-ya sepana heyî re têkildar nabe';
	@override String get functionNotImplemented => 'Ev pol ev fonksiyon ne pêk aniye';
	@override String get placeholder => 'Cîhê vala';
	@override String get someErrors => 'Çend çewtî çêbûn';
	@override String get unexpectedError => 'Çewtiya neyekta';
	@override String get ok => 'Temam';
	@override String get and => 'û';
	@override String get githubPATLabel => 'Tokenê gihîna kesanî ya GitHub';
	@override String get includePrereleases => 'Berdana berê tê de bike';
	@override String get fallbackToOlderReleases => 'Vegerîne berdanên kevntir';
	@override String get filterReleaseTitlesByRegEx => 'Sernavên berdanan bi rêzika birêkûpêlkî parzûn bike';
	@override String get invalidRegEx => 'Rêzika birêkûpêlkî ya nederbasdar';
	@override String get noDescription => 'Bê daxuyanî';
	@override String get cancel => 'Betal bike';
	@override String get kContinue => 'Bidomîne';
	@override String get requiredInBrackets => '(pêwîst)';
	@override String get dropdownNoOptsError => 'ÇEWTÎ: MENUYA DROPDOWN DIVÊ KEMÊN JI YEK OPSYONÊ BIHE';
	@override String get color => 'Reng';
	@override String get standard => 'Standard';
	@override String get custom => 'Xweser';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Rengên Material You bi kar bîne';
	@override String get githubStarredRepos => 'Depoyên GitHub yên stêrkdar';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Navê bikarhêner';
	@override String get wrongArgNum => 'Hejmarê çewt ya argumentan hat pêkandin';
	@override String get xIsTrackOnly => '{} tenê ji bo trackingê ye';
	@override String get source => 'Çavkanî';
	@override String get app => 'Sepan';
	@override String get appsFromSourceAreTrackOnly => 'Sepanên ji vê çavkaniyê \'tenê ji bo trackingê\' ne.';
	@override String get youPickedTrackOnly => 'Hûn vebijêrka \'tenê ji bo trackingê\' hilbijartin.';
	@override String get trackOnlyAppDescription => 'Sepan ji bo rojanekirinê dê were tracking, lê Updatium nikare wê saz bike an jî daxe.';
	@override String get cancelled => 'Betal hat';
	@override String get appAlreadyAdded => 'Sepan jixwe hatibe zêdekirin';
	@override String get alreadyUpToDateQuestion => 'Sepan jixwe rojane ye?';
	@override String get addApp => 'Sepanê Zêde Bike';
	@override String get appSourceURL => 'URL-ya çavkaniya sepanê';
	@override String get error => 'Çewtî';
	@override String get add => 'Zêde bike';
	@override String get advanced => 'Pêveketî';
	@override String get searchSomeSourcesLabel => 'Bigere (tenê hin çavkaniyên)';
	@override String get search => 'Bigere';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Vebijêrkên zêde ji bo {}';
	@override String get supportedSources => 'Çavkaniyên destekkirî';
	@override String get trackOnlyInBrackets => '(tenê ji bo trackingê)';
	@override String get searchableInBrackets => '(bigere)';
	@override String get appsString => 'Sepanên';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Bi xêr hatî!';
	@override String get noAppsSubtext => 'Dikarî yekem sepanê xwe bi lêdana \'Sepanê Zêde Bike\' jêr zêde bikî.';
	@override String get noAppsForFilter => 'Sepanên ji bo parzûnê tune ne';
	@override String get byX => 'Li hêla {}';
	@override String get percentProgress => 'Pêvejin: {}%';
	@override String get pleaseWait => 'Ji kerema xwe re bisekinin';
	@override String get updateAvailable => 'Rojankirin heye';
	@override String get notInstalled => 'Ne sazkirî';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-guherto';
	@override String get selectAll => 'Hemî hilbijêre';
	@override String get deselectX => '{} hilbijêre';
	@override String get xWillBeRemovedButRemainInstalled => '{} dê ji Updatium were rakirin lê li ser cîhazê maye.';
	@override String get removeSelectedAppsQuestion => 'Sepanên hilbijartî rakirin?';
	@override String get removeSelectedApps => 'Sepanên hilbijartî rakirin';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} rojane bike';
	@override String get installX => '{} saz bike';
	@override String get markXTrackOnlyAsUpdated => '{} nîshan bike\n(tenê ji bo trackingê)\nwek rojane';
	@override String get changeX => '{} biguherîne';
	@override String get installUpdateApps => 'Sepanan saz bike/rojane bike';
	@override String get installUpdateSelectedApps => 'Sepanên hilbijartî saz bike/rojane bike';
	@override String get markXSelectedAppsAsUpdated => '{} sepanên hilbijartî wek rojane nîshan bike?';
	@override String get no => 'Na';
	@override String get yes => 'Erê';
	@override String get markSelectedAppsUpdated => 'Sepanên hilbijartî wek rojane nîshan bike';
	@override String get pinToTop => 'Bi jor ve girêdin';
	@override String get unpinFromTop => 'Jêr girêdin';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Rewaza sazkirinê ji bo sepanên hilbijartî reset bike?';
	@override String get installStatusOfXWillBeResetExplanation => 'Rewaza sazkirinê ya her sepanên hilbijartî dê were resetkirin.\n\nEv dikare alîkariyê bike gava guhertoya sepanê ku di Updatium de tê xuyakirin çewt ji ber rojanekirinên têkçûyî an pirsgirêkên din.';
	@override String get customLinkMessage => 'Ev girêdan li ser cîhazên ku Updatium sazkirî xebitîn';
	@override String get shareAppConfigLinks => 'Mîhengên sepanê wek girêdana HTML parve bike';
	@override String get resetInstallStatus => 'Rewaza sazkirinê reset bike';
	@override String get more => 'Zêdetir';
	@override String get removeOutdatedFilter => 'Parzûna sepanên ne-rojane rake';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Tenê sepanên ne-rojane nîshan bike';
	@override String get filter => 'Parzûn';
	@override String get filterApps => 'Sepanan parzûn bike';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Navê sepanê';
	@override String get author => 'Nivîskar';
	@override String get upToDateApps => 'Sepanên rojane';
	@override String get nonInstalledApps => 'Sepanên ne-sazkirî';
	@override String get importExport => 'Der/daxwaz';
	@override String get settings => 'Mîheng';
	@override String get exportedTo => 'Hat derxistin {}';
	@override String get updatiumExport => 'Derxistina Updatium';
	@override String get failedToExport => 'Derxistin têk çû';
	@override String get exportAlreadyInProgress => 'Derxistin jixwe didome';
	@override String get exportDirNotAccessible => 'Peldanka derxistinê ne gihîstî ye';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Çêkirina pelê derxistinê têk çû';
	@override String get invalidInput => 'Têketina nederbasdar';
	@override String get importedX => 'Hat daxistin {}';
	@override String get updatiumImport => 'Daxistina Updatium';
	@override String get importFromURLList => 'Ji lîsteya URL-yan daxe';
	@override String get searchQuery => 'Lêgerîna lêgerînê';
	@override String get appURLList => 'Lîsteya URL-ên sepanan';
	@override String get line => 'Rêz';
	@override String get searchX => '{} bigere';
	@override String get noResults => 'Encam nehat dîtin';
	@override String get importX => '{} daxe';
	@override String get importedAppsIdDisclaimer => 'Sepanên daxistî dibe ku bi çewtî wek \'ne-sazkirî\' xuya bibin.\nJi bo çareserkirina vê, ji nû ve bi Updatium saz bikin.\nEv dê ne bandorê daneyên sepanê bike.\n\nTenê li ser rêbaza URL-yan û daxitinên ji aliyê sêyemîn bandor dike.';
	@override String get importErrors => 'Çewtîên daxistinê';
	@override String get importedXOfYApps => '{} ji {} sepanan hatin daxistin.';
	@override String get followingURLsHadErrors => 'URL-ên jêrîn çewtî hebûn:';
	@override String get selectURL => 'URL hilbijêre';
	@override String get selectURLs => 'URL-yan hilbijêre';
	@override String get pick => 'Hilbijêre';
	@override String get theme => 'Dirb';
	@override String get dark => 'Tarî';
	@override String get light => 'Ronahî';
	@override String get followSystem => 'Li gor pergalê';
	@override String get followSystemThemeExplanation => 'Li gor dirbê pergalê tenê bi sepanên sêyemîn re dibe';
	@override String get useBlackTheme => 'Dirbê tarî yê rehet a tevî bi kar bîne';
	@override String get appSortBy => 'Rêzkirina sepanan li gor';
	@override String get authorName => 'Nivîskar/nav';
	@override String get nameAuthor => 'Nav/nivîskar';
	@override String get asAdded => 'Li gor zêdekirinê';
	@override String get appSortOrder => 'Rêza rêzkirina sepanan';
	@override String get ascending => 'Bilind';
	@override String get descending => 'Jêr';
	@override String get bgUpdateCheckInterval => 'Navbera kontrola rojanekirinê li paqijî';
	@override String get neverManualOnly => 'Qet - tenê bi destan';
	@override String get appearance => 'Xuyan';
	@override String get pinUpdates => 'Rojankirinan li jora dîtina sepanan girêdin';
	@override String get updates => 'Rojankirin';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Specîfîkî çavkaniyê';
	@override String get appSource => 'Çavkaniya sepanê';
	@override String get appSourceHint => 'Depoya çavkaniya sepanê veke';
	@override String get noLogs => 'Tune log';
	@override String get appLogs => 'Logên sepanê';
	@override String get appLogsHint => 'Logên sepanê bibîne';
	@override String get close => 'Bigire';
	@override String get share => 'Parve bike';
	@override String get appNotFound => 'Sepan nehat dîtin';
	@override String get networkError => 'Girêdana torê têk çû';
	@override String get invalidUrlFormat => 'Formata URL-ya nederbasdar';
	@override String get accessDenied => 'Gihîstin hat redkirin';
	@override String get importFailed => 'Daxistin têk çû';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Yek APK hilbijêre';
	@override String get appHasMoreThanOnePackage => '{} ji yek pakêtê zêdetir heye:';
	@override String get deviceSupportsXArch => 'Cîhaza te arîtektura CPU ya {} destek dike.';
	@override String get deviceSupportsFollowingArchs => 'Cîhaza te arîtekturên CPU yên jêrîn destek dike:';
	@override String get warning => 'Hiyar';
	@override String get sourceIsXButPackageFromYPrompt => 'Çavkaniya sepanê \'{}\' lê pakêta berdanê ji \'{}\' tê. Bidomîne?';
	@override String get updatesAvailable => 'Rojankirin heye';
	@override String get updatesAvailableNotifDescription => 'Bikarhêner dide zanîn ku rojanekirin ji bo yek an zêdetir sepanên ku Updatium dike heye';
	@override String get noNewUpdates => 'Rojankirina nû tune.';
	@override String get xHasAnUpdate => '{} rojanekirin heye.';
	@override String get appsUpdated => 'Sepan hatin rojanekirin';
	@override String get appsNotUpdated => 'Rojankirina sepanan têk çû';
	@override String get appsUpdatedNotifDescription => 'Bikarhêner dide zanîn ku rojanekirin ji bo yek an zêdetir sepanan li paqijî hatin sepandin';
	@override String get xWasUpdatedToY => '{} hat rojanekirin bo {}.';
	@override String get xWasNotUpdatedToY => 'Rojankirina {} bo {} têk çû.';
	@override String get errorCheckingUpdates => 'Çewtî di kontrola rojanekirinê de';
	@override String get errorCheckingUpdatesNotifDescription => 'Agahdarî ku xuya dibe gava kontrola rojanekirinê li paqijî têk diçe';
	@override String get appsRemoved => 'Sepan hatin rakirin';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Bikarhêner dide zanîn ku yek an zêdetir sepan ji ber çewtiyan dema barkirinê hatin rakirin';
	@override String get xWasRemovedDueToErrorY => '{} ji ber vê çewtiyê hat rakirin: {}';
	@override String get completeAppInstallation => 'Sazkirina sepanê temam bike';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium divê vekirî be ji bo sazkirina sepanan';
	@override String get completeAppInstallationNotifDescription => 'Daxwazê li bikarhêner dike ku vegere Updatium ji bo temamkirina sazkirina sepanê';
	@override String get checkingForUpdates => 'Rojankirin tên kontrolkirin';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Agahdariya derbasbar a dema kontrola rojanekirinê de xuya dibe';
	@override String get pleaseAllowInstallPerm => 'Ji kerema xwe re destûrê bidin Updatium ku sepanan saz bike';
	@override String get trackOnly => 'Tenê ji bo trackingê';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Çewtî {}';
	@override String get versionCorrectionDisabled => 'Rêzberkirina guhertoyê neçalak (plugin xuya nake xebitîn)';
	@override String get unknown => 'Nenas';
	@override String get none => 'Yek jî tune';
	@override String get all => 'Hemî';
	@override String get never => 'Qet';
	@override String get latestVersion => 'Herî dawî';
	@override String get installedVersionX => 'Sazkirî: {}';
	@override String get lastUpdateCheckX => 'Kontrola rojanekirinê ya dawî: {}';
	@override String get remove => 'Rake';
	@override String get quickLinks => 'Girêdanên Lez';
	@override String get yesMarkUpdated => 'Erê, wek rojane nîshan bike';
	@override String get fdroid => 'F-Droid fermî';
	@override String get appIdOrName => 'ID an jî navê sepanê';
	@override String get appId => 'ID-ya sepanê';
	@override String get appWithIdOrNameNotFound => 'Sepan bi wê ID-ê an navê nehat dîtin';
	@override String get reposHaveMultipleApps => 'Depo diken xwedî sepanên pirbin in';
	@override String get fdroidThirdPartyRepo => 'Depoya sêyemîn a F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Saz bike';
	@override String get markInstalled => 'Wek sazkirî nîshan bike';
	@override String get update => 'Rojane bike';
	@override String get updated => 'Rojane';
	@override String get markUpdated => 'Wek rojane nîshan bike';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Vebijêrkên zêde';
	@override String get disableVersionDetection => 'Nasîna guhertoyê neçalak bike';
	@override String get noVersionDetectionExplanation => 'Ev vebijêrk divê tenê ji bo sepanên ku nasîna guhertoyê rast naxebit were bikar anîn.';
	@override String get downloadingX => '{} tê daxistin';
	@override String get downloadX => '{} daxe';
	@override String get downloadedX => '{} hat daxistin';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Çavkaniya berdanê';
	@override String get downloadNotifDescription => 'Bikarhêner dide zanîn li ser pêvejîna daxistina sepanê';
	@override String get noAPKFound => 'APK nehat dîtin';
	@override String get noVersionDetection => 'Bê nasîna guhertoyê';
	@override String get categorize => 'Kategorî bike';
	@override String get categories => 'Kategorî';
	@override String get category => 'Kategorî';
	@override String get noCategory => 'Bê kategorî';
	@override String get noCategories => 'Kategorî tune ne';
	@override String get categoryDeleteQuestion => 'Kategorî jê bibin?';
	@override String get categoryDeleteWarning => 'Hemî sepanên di kategoriyan yên jêbirî de dê werin wek bê-kategorî sazkirin.';
	@override String get addCategory => 'Kategorî zêde bike';
	@override String get label => 'Etîket';
	@override String get language => 'Ziman';
	@override String get copiedToClipboard => 'Hat kopîkirin bo clipboard';
	@override String get storagePermissionDenied => 'Destûra hilanînê hat redkirin';
	@override String get selectedCategorizeWarning => 'Ev dê her mîhengên kategoriyên heyî yên sepanên hilbijartî biguherîne.';
	@override String get filterAPKsByRegEx => 'APK-yan bi rêzika birêkûpêlkî parzûn bike';
	@override String get removeFromUpdatium => 'Ji Updatium rake';
	@override String get uninstallFromDevice => 'Ji cîhazê rake';
	@override String get onlyWorksWithNonVersionDetectApps => 'Tenê ji bo sepanên ku nasîna guhertoyê neçalak e xebitîne.';
	@override String get releaseDateAsVersion => 'Dîroka berdanê wek rêzika guhertoyê bi kar bîne';
	@override String get releaseTitleAsVersion => 'Sernava berdanê wek rêzika guhertoyê bi kar bîne';
	@override String get releaseDateAsVersionExplanation => 'Ev vebijêrk divê tenê ji bo sepanên ku nasîna guhertoyê rast naxebit lê dîroka berdanê heye were bikar anîn.';
	@override String get changes => 'Guherîn';
	@override String get releaseDate => 'Dîroka berdanê';
	@override String get importFromURLsInFile => 'Ji URL-yan di pel de (wek OPML) daxe';
	@override String get versionDetectionExplanation => 'Rêzika guhertoyê bi guhertoya hatî ji OS re hevgirtin bike';
	@override String get versionDetection => 'Nasîna guhertoyê';
	@override String get standardVersionDetection => 'Nasîna guhertoyê ya standard';
	@override String get groupByCategory => 'Li gor kategoriyê kom bike';
	@override String get listView => 'Dîtina lîsteyê';
	@override String get gridView => 'Dîtina torê';
	@override String get autoApkFilterByArch => 'Hewl bide ku APK-yan li gor arîtektura CPU parzûn bike heke dibe';
	@override String get autoLinkFilterByArch => 'Hewl bide ku girêdan li gor arîtektura CPU parzûn bike heke dibe';
	@override String get overrideSource => 'Çavkaniyê derbas bike';
	@override String get dontShowAgain => 'Vê nede nîshan din';
	@override String get dontShowTrackOnlyWarnings => 'Hiyarên \'tenê ji bo trackingê\' nede nîshan';
	@override String get dontShowAPKOriginWarnings => 'Hiyarên li ser çavkaniya APK nede nîshan';
	@override String get moveNonInstalledAppsToBottom => 'Sepanên ne-sazkirî bike jêr dîtina sepanan';
	@override String get gitlabPATLabel => 'Tokenê gihîna kesanî ya GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Derbar';
	@override String get requiresCredentialsInSettings => '{} hewceyê nasnameyên zêde heye (di Mîhengan de)';
	@override String get checkOnStart => 'Rojankirinê li ser destpêkê kontrol bike';
	@override String get safeMode => 'Moda Ewle';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Sepanê Zêde Bike di Moda Ewle de neçalak e';
	@override String get tryInferAppIdFromCode => 'Hewl bide ku ID-ya sepanê ji kodê çavkaniyê bixwîne';
	@override String get removeOnExternalUninstall => 'Sepanên ku derve hatin rakirin otomatîk rake';
	@override String get pickHighestVersionCode => 'APK-ya bi herî bilind a kodê guhertoyê otomatîk hilbijêre';
	@override String get checkUpdateOnDetailPage => 'Rojankirinê li ser vekirina rûpela detalî ya sepanê kontrol bike';
	@override String get disablePageTransitions => 'Animasyonên derbasbûna rûpelan neçalak bike';
	@override String get reversePageTransitions => 'Animasyonên derbasbûna rûpelan berev bike';
	@override String get minStarCount => 'Kêmê stêrkan';
	@override String get addInfoBelow => 'Vê agahiyan jêr zêde bikin.';
	@override String get addInfoInSettings => 'Vê agahiyan di Mîhengan de zêde bikin.';
	@override String get githubSourceNote => 'Sînorkirina rate ya GitHub dikare bi karanîna mifteya API were revandin.';
	@override String get sortByLastLinkSegment => 'Tenê li gor bepa dawî ya girêdanê rêz bike';
	@override String get filterReleaseNotesByRegEx => 'Notên berdanê bi rêzika birêkûpêlkî parzûn bike';
	@override String get customLinkFilterRegex => 'Parzûna xweser a girêdanên APK bi rêzika birêkûpêlkî (standard \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Hewlên rojanekirina sepanan hatin dan';
	@override String get appsPossiblyUpdatedNotifDescription => 'Bikarhêner dide zanîn ku dibe ku rojanekirin ji bo yek an zêdetir sepanan li paqijî hatin sepandin';
	@override String get xWasPossiblyUpdatedToY => 'Dibe ku {} hat rojanekirin bo {}.';
	@override String get enableBackgroundUpdates => 'Rojankirina li paqijî çalak bike';
	@override String get backgroundUpdateReqsExplanation => 'Rojankirina li paqijî dibe ku ji bo hemî sepanan nebe.';
	@override String get backgroundUpdateLimitsExplanation => 'Serketiya sazkirina li paqijî tenê gava Updatium vekirî ye dikare were destnîshan kirin.';
	@override String get verifyLatestTag => 'Etîketa \'latest\' kontrol bike';
	@override String get intermediateLinkRegex => 'Parzûna girêdana \'navîn\' a ji bo serdanê';
	@override String get filterByLinkText => 'Girêdan li gor nivîsa girêdanê parzûn bike';
	@override String get matchLinksOutsideATags => 'Girêdanên li derveyê etîketên <a> hevgirtin bike';
	@override String get intermediateLinkNotFound => 'Girêdana navîn nehat dîtin';
	@override String get intermediateLink => 'Girêdana navîn';
	@override String get exemptFromBackgroundUpdates => 'Ji rojanekirina li paqijî bexshîne (ger çalak be)';
	@override String get bgUpdatesOnWiFiOnly => 'Rojankirina li paqijî neçalak bike gava ne li Wi-Fi ye';
	@override String get bgUpdatesWhileChargingOnly => 'Rojankirina li paqijî neçalak bike gava ne di xwarinê de ye';
	@override String get autoSelectHighestVersionCode => 'APK-ya bi herî bilind a versionCode otomatîk hilbijêre';
	@override String get versionExtractionRegEx => 'Rêzika birêkûpêlkî ya derxistina rêzika guhertoyê';
	@override String get trimVersionString => 'Rêzika guhertoyê bi rêzika birêkûpêlkî kurt bike';
	@override String get matchGroupToUseForX => 'Koma hevgirtinê ji bo "{}" were bikar anîn';
	@override String get matchGroupToUse => 'Koma hevgirtinê ji bo rêzika birêkûpêlkî ya derxistina rêzika guhertoyê were bikar anîn';
	@override String get highlightTouchTargets => 'Armancên destê kêmtir xuya nîshan bike';
	@override String get pickExportDir => 'Peldanka derxistinê hilbijêre';
	@override String get autoExportOnChanges => 'Derxistina otomatîk li ser guherînan';
	@override String get includeSettings => 'Mîhengan tê de bike';
	@override String get filterVersionsByRegEx => 'Guhertoyan bi rêzika birêkûpêlkî parzûn bike';
	@override String get trySelectingSuggestedVersionCode => 'Hewl bide ku APK-ya versionCode ya pêveniyê hilbijêre';
	@override String get dontSortReleasesList => 'Rêza berdanan ji API re bigire';
	@override String get reverseSort => 'Rêz berev bike';
	@override String get takeFirstLink => 'Yekem girêdan bigire';
	@override String get skipSort => 'Rêzkirinê paqij bike';
	@override String get debugMenu => 'Menûya çewtkirinê';
	@override String get bgTaskStarted => 'Karê li paqijî dest pê kir - kontrola logan bike.';
	@override String get runBgCheckNow => 'Kontrola rojanekirinê ya li paqijî niha bike';
	@override String get versionExtractWholePage => 'Rêzika birêkûpêlkî ya derxistina rêzika guhertoyê li ser hemû rûpelê bi kar bîne';
	@override String get installing => 'Tê sazkirin';
	@override String get skipUpdateNotifications => 'Agahdariyên rojanekirinê paqij bike';
	@override String get updatesAvailableNotifChannel => 'Rojankirin heye';
	@override String get appsUpdatedNotifChannel => 'Sepan hatin rojanekirin';
	@override String get appsPossiblyUpdatedNotifChannel => 'Hewlên rojanekirina sepanan';
	@override String get errorCheckingUpdatesNotifChannel => 'Çewtî di kontrola rojanekirinê de';
	@override String get appsRemovedNotifChannel => 'Sepan hatin rakirin';
	@override String get downloadingXNotifChannel => '{} tê daxistin';
	@override String get completeAppInstallationNotifChannel => 'Sazkirina sepanê temam bike';
	@override String get checkingForUpdatesNotifChannel => 'Rojankirin tên kontrolkirin';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Tenê sepanên sazkirî û yên tenê ji bo trackingê kontrol bike';
	@override String get supportFixedAPKURL => 'URL-ên APK yên sabît destek bike';
	@override String get selectX => '{} hilbijêre';
	@override String get parallelDownloads => 'Destûrê daxitinên paralel bide';
	@override String get useShizuku => 'Ji bo sazkirinê Shizuku an Sui bi kar bîne';
	@override String get shizukuBinderNotFound => 'Xizmeta Shizuku naxebitîne';
	@override String get shizukuOld => 'Guhertoya kevn a Shizuku (<11) - rojane bike';
	@override String get shizukuOldAndroidWithADB => 'Shizuku li ser Android < 8.1 bi ADB dixebite - Android rojane bike an jî bi Sui re biguherîne';
	@override String get shizukuPretendToBeGooglePlay => 'Google Play wek çavkaniya sazkirinê saz bike (ger Shizuku were bikar anîn)';
	@override String get useSystemFont => 'Fontê pergalê bi kar bîne';
	@override String get useVersionCodeAsOSVersion => 'Koda guhertoyê ya sepanê wek guhertoya hatî ji OS re bi kar bîne';
	@override String get requestHeader => 'Sernava daxwazê';
	@override String get useLatestAssetDateAsReleaseDate => 'Dîroka barkirina çavkaniya herî dawî wek dîroka berdanê bi kar bîne';
	@override String get defaultPseudoVersioningMethod => 'Rêbaza pseudo-guhertoyê ya standard';
	@override String get partialAPKHash => 'Hasha partiya APK';
	@override String get APKLinkHash => 'Hasha girêdana APK';
	@override String get directAPKLink => 'Girêdana rasterast a APK';
	@override String get pseudoVersionInUse => 'Pseudo-guherto tê bikar anîn';
	@override String get installedVersion => 'Sazkirî';
	@override String get installed => 'Sazkirî';
	@override String get notInstalledApps => 'Ne sazkirî';
	@override String get latest => 'Herî dawî';
	@override String get invertRegEx => 'Rêzika birêkûpêlkî berev bike';
	@override String get note => 'Not';
	@override String get selfHostedNote => 'Menuya dropdown "{}" dikare were bikar anîn ji bo gihiztina mînakên xweser/bi xwe hatin hilandin yên her çavkaniyekê.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK nehat parzekirin (nagire an daxistina parti)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Sepanên nû li AppVerifier parve bike (ger hebe)';
	@override String get appVerifierInstructionToast => 'Li AppVerifier parve bike, pañê vegere vir gava amade bû.';
	@override String get wiki => 'Alîkarî/wiki';
	@override String get wikiHint => 'Dokumentasyona wiki ya Updatium veke';
	@override String get allowInsecure => 'Daxwazên HTTP-ê yên neewle destûr bide';
	@override String get stayOneVersionBehind => 'Yek guherto li paqijî bimîne';
	@override String get useFirstApkOfVersion => 'Yekem ji APK-ên pirbin otomatîk hilbijêre';
	@override String get refreshBeforeDownload => 'Berî daxistinê detalîên sepanê nû bike';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nav';
	@override String get smartname => 'Nav (jîr)';
	@override String get smartPlusDate => 'Jîr + Dîrok';
	@override String get sortMethod => 'Rêbaza rêzkirinê';
	@override String get welcome => 'Bi xêr hatî';
	@override String get batteryOptimizationNote => 'Binihêrin ku daxistinên li paqijî dibe ku zêdetir bixebitin gava hûn li setên Updatium bigihîjin \'xizmeta li pê\' û/yan optimîzasyona bataryê ji bo Updatium di setên OS-ê xwe de neçalak bikin.';
	@override String get fileDeletionError => 'Jêbirina pelê têk çû (hewl bide ku bi destan jê bibin pañê dîsa biceribîne): "{}"';
	@override String get foregroundService => 'Xizmeta li pê ya Updatium';
	@override String get foregroundServiceExplanation => 'Ji bo kontrola rojanekirinê xizmetek li pê bi kar bîne (zêdetir pêbawer, zêdetir hêzê dixwe)';
	@override String get fgServiceNotice => 'Ev agahdarî ji bo kontrola rojanekirinê ya li paqijî pêwîst e (dikare li setên OS de were veberkirin)';
	@override String get excludeSecrets => 'Sîrên derve';
	@override String get GHReqPrefix => 'mînak \'omeritzics/Updatium\' ji bo daxwazên GitHub';
	@override String get includeZips => 'Pelên ZIP tê de bike';
	@override String get zippedApkFilterRegEx => 'APK-ên li hundirê ZIP-yan parzûn bike';
	@override String get multipleSigners => 'Sazkarên Pir';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: 'Sepan rakirin?',
		other: 'Sepanên rakirin?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: 'Zêde daxwaz (hat sînor kirin) - dîsa {count} deqeyê de biceribîne',
		other: 'Zêde daxwaz (hat sînor kirin) - dîsa {count} deqeyan de biceribîne',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: 'Kontrola rojanekirinê ya li paqijî rastî {error} hat, dê kontrola dubarekirinê di {count} deqeyê de plan bike',
		other: 'Kontrola rojanekirinê ya li paqijî rastî {error} hat, dê kontrola dubarekirinê di {count} deqeyan de plan bike',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: 'Kontrola rojanekirinê ya li paqijî {count} rojanekirin dît - dê bikarhêner agahdar bike heke pêwîst be',
		other: 'Kontrola rojanekirinê ya li paqijî {count} rojanekirin dît - dê bikarhêner agahdar bike heke pêwîst be',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{count} Sepan',
		other: '{count} Sepan',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{count} URL',
		other: '{count} URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{count} deqe',
		other: '{count} deqe',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{count} saet',
		other: '{count} saet',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{count} roj',
		other: '{count} roj',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{n} log hate jêbirin (berê = {before}, pa = {after})',
		other: '{n} log hatin jêbirin (berê = {before}, pa = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{app} û sepanek din jî rojanekirin heye.',
		other: '{app} û {count} sepanên din jî rojanekirin heye.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{app} û sepanek din jî hat rojanekirin.',
		other: '{app} û {count} sepanên din jî hatin rojanekirin.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: 'Rojankirina {app} û sepanek din jî têk çû.',
		other: 'Rojankirina {app} û {count} sepanên din jî têk çû.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{app} û sepanek din jî dibe ku hat rojanekirin.',
		other: '{app} û {count} sepanên din jî dibe ku hatin rojanekirin.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n,
		one: 'Hasha Sertîfîkayê',
		other: 'Hashên Sertîfîkayan',
	);
	@override String get securityDisclaimerTitle => 'Betalkirina Ewlekarî û Pirsgirêkên Qanûnî';
	@override String get license => 'Lîsans';
	@override String get licenseText => 'Ev sepan li bin Lîsansa GPL v3 tê belavkirin.';
	@override String get disclaimer => 'Betalkirin';
	@override String get disclaimerText => 'Ev sepan sepanên derveyî nayê belavkirin, nakirin an jî kontrolkirin. Bikarhêner berpirsyariya temamî ji bo ewlehiyê û qanûnîbûna her nivîsbariya ku bi vê amûrê tê sazkirin digire.\n\nhttps://github.com/omeritzics/Updatium tenê cihê fermî ye ji bo daxistina Updatium - pir tê pêniyazkirin ku wê ji cihên din daxizin ji ber ku çavkaniyên nefermî neewle ne.';
	@override String get privacy => 'Nexberî';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Bipejirîne û Bidomîne';
	@override String get decline => 'Red bike';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Ji Updatium hez dikin?';
	@override String get githubStarPromptContent => 'Updatium projeyeke komelayî, xweser, open-source e ku di dema azad a min de hat pêktin. Ger hûn dixwazin projeyê biparêzin, ji kerema xwe re li ser GitHub stêrê wê bidin ku alîkariya me bikin ku bigihijin bikarhênerên zêdetir û bekarhêner. Dê carên din hûn li ser vê neyên xwestin. Spas ji pê ve! :)';
	@override String get githubStarPromptStar => 'Stêrê bidin';
	@override String get githubStarPromptDontShowAgain => 'Vê nede nîshan din';
	@override String get sourceCode => 'Koda Çavkanî';
	@override String get developedBy => 'Pêk hatiye ji aliyê';
	@override String get appDescription => 'Katalogeke sepanên Android a ku dikare were xweserkirin û dihêle ku hûn sepanên xwe rasterast ji çavkaniyên APK yên wan rojane bikin.';
	@override String get safeModeEnabled => 'Moda Ewle çalak e';
	@override String get safeModeDisabled => 'Moda Ewle neçalak e';
	@override String get safeModeDisable => 'Moda Ewle neçalak bike';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Rêveberiya Moda Ewle';
	@override String get safeModeSetupDescription => 'Kelîmeya serê were saz bike ji bo çalakkirina Moda Ewle. Pi çalakkirinê, Moda Ewle sepanên nû zêdekirinê qedexe dike û tenê bi kelîmeya serê dikare were neçalak kirin.';
	@override String get safeModeToggleDescription => 'Kelîmeya serê binivîse ji bo guhertina Moda Ewle.';
	@override String get safeModeSetPassword => 'Kelîmeya serê saz bike';
	@override String get safeModeConfirmPassword => 'Kelîmeya serê pejirîne';
	@override String get safeModeEnterPassword => 'Kelîmeya serê binivîse';
	@override String get safeModePasswordHint => 'Kêmî 8 nîşan';
	@override String get safeModePasswordTooShort => 'Kelîmeya serê kêmî 8 nîşanî ye';
	@override String get safeModePasswordMismatch => 'Kelîmeyên serê nepejirînin';
	@override String get safeModePasswordIncorrect => 'Kelîmeya serê ne rast e';
	@override String get safeModePasswordError => 'Çewtî di sazkirina kelîmeya serê de - dîsa biceribîne';
	@override String get safeModeEnable => 'Moda Ewle çalak bike';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} tapên mayî hene ji bo neçalakkirina Moda Ewle';
	@override String get safeModeEnabledHint => 'Moda Ewle çalak bû. Li ser hejmara versiyonê di De rê de pir car bikin ji bo neçalakkirinê.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Fahm kir';
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

/// The flat map containing all translations for locale <kmr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKmr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'URL-ya {} a nederbasdar a sepanê nîne',
			'noReleaseFound' => 'Berdana guncaw nehat dîtin',
			'noVersionFound' => 'Guhertoya berdanê nehat dîtin',
			'urlMatchesNoSource' => 'URL ne bi çavkaniyeke naskirî re têkildar nabe',
			'cantInstallOlderVersion' => 'Nikare guhertoyeke kevntir a sepanê saz bike',
			'appIdMismatch' => 'ID-ya pakêta daxistî ne bi ID-ya sepana heyî re têkildar nabe',
			'functionNotImplemented' => 'Ev pol ev fonksiyon ne pêk aniye',
			'placeholder' => 'Cîhê vala',
			'someErrors' => 'Çend çewtî çêbûn',
			'unexpectedError' => 'Çewtiya neyekta',
			'ok' => 'Temam',
			'and' => 'û',
			'githubPATLabel' => 'Tokenê gihîna kesanî ya GitHub',
			'includePrereleases' => 'Berdana berê tê de bike',
			'fallbackToOlderReleases' => 'Vegerîne berdanên kevntir',
			'filterReleaseTitlesByRegEx' => 'Sernavên berdanan bi rêzika birêkûpêlkî parzûn bike',
			'invalidRegEx' => 'Rêzika birêkûpêlkî ya nederbasdar',
			'noDescription' => 'Bê daxuyanî',
			'cancel' => 'Betal bike',
			'kContinue' => 'Bidomîne',
			'requiredInBrackets' => '(pêwîst)',
			'dropdownNoOptsError' => 'ÇEWTÎ: MENUYA DROPDOWN DIVÊ KEMÊN JI YEK OPSYONÊ BIHE',
			'color' => 'Reng',
			'standard' => 'Standard',
			'custom' => 'Xweser',
			'primary' => 'Primary',
			'useMaterialYou' => 'Rengên Material You bi kar bîne',
			'githubStarredRepos' => 'Depoyên GitHub yên stêrkdar',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Navê bikarhêner',
			'wrongArgNum' => 'Hejmarê çewt ya argumentan hat pêkandin',
			'xIsTrackOnly' => '{} tenê ji bo trackingê ye',
			'source' => 'Çavkanî',
			'app' => 'Sepan',
			'appsFromSourceAreTrackOnly' => 'Sepanên ji vê çavkaniyê \'tenê ji bo trackingê\' ne.',
			'youPickedTrackOnly' => 'Hûn vebijêrka \'tenê ji bo trackingê\' hilbijartin.',
			'trackOnlyAppDescription' => 'Sepan ji bo rojanekirinê dê were tracking, lê Updatium nikare wê saz bike an jî daxe.',
			'cancelled' => 'Betal hat',
			'appAlreadyAdded' => 'Sepan jixwe hatibe zêdekirin',
			'alreadyUpToDateQuestion' => 'Sepan jixwe rojane ye?',
			'addApp' => 'Sepanê Zêde Bike',
			'appSourceURL' => 'URL-ya çavkaniya sepanê',
			'error' => 'Çewtî',
			'add' => 'Zêde bike',
			'advanced' => 'Pêveketî',
			'searchSomeSourcesLabel' => 'Bigere (tenê hin çavkaniyên)',
			'search' => 'Bigere',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Vebijêrkên zêde ji bo {}',
			'supportedSources' => 'Çavkaniyên destekkirî',
			'trackOnlyInBrackets' => '(tenê ji bo trackingê)',
			'searchableInBrackets' => '(bigere)',
			'appsString' => 'Sepanên',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Bi xêr hatî!',
			'noAppsSubtext' => 'Dikarî yekem sepanê xwe bi lêdana \'Sepanê Zêde Bike\' jêr zêde bikî.',
			'noAppsForFilter' => 'Sepanên ji bo parzûnê tune ne',
			'byX' => 'Li hêla {}',
			'percentProgress' => 'Pêvejin: {}%',
			'pleaseWait' => 'Ji kerema xwe re bisekinin',
			'updateAvailable' => 'Rojankirin heye',
			'notInstalled' => 'Ne sazkirî',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-guherto',
			'selectAll' => 'Hemî hilbijêre',
			'deselectX' => '{} hilbijêre',
			'xWillBeRemovedButRemainInstalled' => '{} dê ji Updatium were rakirin lê li ser cîhazê maye.',
			'removeSelectedAppsQuestion' => 'Sepanên hilbijartî rakirin?',
			'removeSelectedApps' => 'Sepanên hilbijartî rakirin',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} rojane bike',
			'installX' => '{} saz bike',
			'markXTrackOnlyAsUpdated' => '{} nîshan bike\n(tenê ji bo trackingê)\nwek rojane',
			'changeX' => '{} biguherîne',
			'installUpdateApps' => 'Sepanan saz bike/rojane bike',
			'installUpdateSelectedApps' => 'Sepanên hilbijartî saz bike/rojane bike',
			'markXSelectedAppsAsUpdated' => '{} sepanên hilbijartî wek rojane nîshan bike?',
			'no' => 'Na',
			'yes' => 'Erê',
			'markSelectedAppsUpdated' => 'Sepanên hilbijartî wek rojane nîshan bike',
			'pinToTop' => 'Bi jor ve girêdin',
			'unpinFromTop' => 'Jêr girêdin',
			'resetInstallStatusForSelectedAppsQuestion' => 'Rewaza sazkirinê ji bo sepanên hilbijartî reset bike?',
			'installStatusOfXWillBeResetExplanation' => 'Rewaza sazkirinê ya her sepanên hilbijartî dê were resetkirin.\n\nEv dikare alîkariyê bike gava guhertoya sepanê ku di Updatium de tê xuyakirin çewt ji ber rojanekirinên têkçûyî an pirsgirêkên din.',
			'customLinkMessage' => 'Ev girêdan li ser cîhazên ku Updatium sazkirî xebitîn',
			'shareAppConfigLinks' => 'Mîhengên sepanê wek girêdana HTML parve bike',
			'resetInstallStatus' => 'Rewaza sazkirinê reset bike',
			'more' => 'Zêdetir',
			'removeOutdatedFilter' => 'Parzûna sepanên ne-rojane rake',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Tenê sepanên ne-rojane nîshan bike',
			'filter' => 'Parzûn',
			'filterApps' => 'Sepanan parzûn bike',
			'filterDays' => 'Filter days',
			'appName' => 'Navê sepanê',
			'author' => 'Nivîskar',
			'upToDateApps' => 'Sepanên rojane',
			'nonInstalledApps' => 'Sepanên ne-sazkirî',
			'importExport' => 'Der/daxwaz',
			'settings' => 'Mîheng',
			'exportedTo' => 'Hat derxistin {}',
			'updatiumExport' => 'Derxistina Updatium',
			'failedToExport' => 'Derxistin têk çû',
			'exportAlreadyInProgress' => 'Derxistin jixwe didome',
			'exportDirNotAccessible' => 'Peldanka derxistinê ne gihîstî ye',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Çêkirina pelê derxistinê têk çû',
			'invalidInput' => 'Têketina nederbasdar',
			'importedX' => 'Hat daxistin {}',
			'updatiumImport' => 'Daxistina Updatium',
			'importFromURLList' => 'Ji lîsteya URL-yan daxe',
			'searchQuery' => 'Lêgerîna lêgerînê',
			'appURLList' => 'Lîsteya URL-ên sepanan',
			'line' => 'Rêz',
			'searchX' => '{} bigere',
			'noResults' => 'Encam nehat dîtin',
			'importX' => '{} daxe',
			'importedAppsIdDisclaimer' => 'Sepanên daxistî dibe ku bi çewtî wek \'ne-sazkirî\' xuya bibin.\nJi bo çareserkirina vê, ji nû ve bi Updatium saz bikin.\nEv dê ne bandorê daneyên sepanê bike.\n\nTenê li ser rêbaza URL-yan û daxitinên ji aliyê sêyemîn bandor dike.',
			'importErrors' => 'Çewtîên daxistinê',
			'importedXOfYApps' => '{} ji {} sepanan hatin daxistin.',
			'followingURLsHadErrors' => 'URL-ên jêrîn çewtî hebûn:',
			'selectURL' => 'URL hilbijêre',
			'selectURLs' => 'URL-yan hilbijêre',
			'pick' => 'Hilbijêre',
			'theme' => 'Dirb',
			'dark' => 'Tarî',
			'light' => 'Ronahî',
			'followSystem' => 'Li gor pergalê',
			'followSystemThemeExplanation' => 'Li gor dirbê pergalê tenê bi sepanên sêyemîn re dibe',
			'useBlackTheme' => 'Dirbê tarî yê rehet a tevî bi kar bîne',
			'appSortBy' => 'Rêzkirina sepanan li gor',
			'authorName' => 'Nivîskar/nav',
			'nameAuthor' => 'Nav/nivîskar',
			'asAdded' => 'Li gor zêdekirinê',
			'appSortOrder' => 'Rêza rêzkirina sepanan',
			'ascending' => 'Bilind',
			'descending' => 'Jêr',
			'bgUpdateCheckInterval' => 'Navbera kontrola rojanekirinê li paqijî',
			'neverManualOnly' => 'Qet - tenê bi destan',
			'appearance' => 'Xuyan',
			'pinUpdates' => 'Rojankirinan li jora dîtina sepanan girêdin',
			'updates' => 'Rojankirin',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Specîfîkî çavkaniyê',
			'appSource' => 'Çavkaniya sepanê',
			'appSourceHint' => 'Depoya çavkaniya sepanê veke',
			'noLogs' => 'Tune log',
			'appLogs' => 'Logên sepanê',
			'appLogsHint' => 'Logên sepanê bibîne',
			'close' => 'Bigire',
			'share' => 'Parve bike',
			'appNotFound' => 'Sepan nehat dîtin',
			'networkError' => 'Girêdana torê têk çû',
			'invalidUrlFormat' => 'Formata URL-ya nederbasdar',
			'accessDenied' => 'Gihîstin hat redkirin',
			'importFailed' => 'Daxistin têk çû',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Yek APK hilbijêre',
			'appHasMoreThanOnePackage' => '{} ji yek pakêtê zêdetir heye:',
			'deviceSupportsXArch' => 'Cîhaza te arîtektura CPU ya {} destek dike.',
			'deviceSupportsFollowingArchs' => 'Cîhaza te arîtekturên CPU yên jêrîn destek dike:',
			'warning' => 'Hiyar',
			'sourceIsXButPackageFromYPrompt' => 'Çavkaniya sepanê \'{}\' lê pakêta berdanê ji \'{}\' tê. Bidomîne?',
			'updatesAvailable' => 'Rojankirin heye',
			'updatesAvailableNotifDescription' => 'Bikarhêner dide zanîn ku rojanekirin ji bo yek an zêdetir sepanên ku Updatium dike heye',
			'noNewUpdates' => 'Rojankirina nû tune.',
			'xHasAnUpdate' => '{} rojanekirin heye.',
			'appsUpdated' => 'Sepan hatin rojanekirin',
			'appsNotUpdated' => 'Rojankirina sepanan têk çû',
			'appsUpdatedNotifDescription' => 'Bikarhêner dide zanîn ku rojanekirin ji bo yek an zêdetir sepanan li paqijî hatin sepandin',
			'xWasUpdatedToY' => '{} hat rojanekirin bo {}.',
			'xWasNotUpdatedToY' => 'Rojankirina {} bo {} têk çû.',
			'errorCheckingUpdates' => 'Çewtî di kontrola rojanekirinê de',
			'errorCheckingUpdatesNotifDescription' => 'Agahdarî ku xuya dibe gava kontrola rojanekirinê li paqijî têk diçe',
			'appsRemoved' => 'Sepan hatin rakirin',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Bikarhêner dide zanîn ku yek an zêdetir sepan ji ber çewtiyan dema barkirinê hatin rakirin',
			'xWasRemovedDueToErrorY' => '{} ji ber vê çewtiyê hat rakirin: {}',
			'completeAppInstallation' => 'Sazkirina sepanê temam bike',
			'updatiumMustBeOpenToInstallApps' => 'Updatium divê vekirî be ji bo sazkirina sepanan',
			'completeAppInstallationNotifDescription' => 'Daxwazê li bikarhêner dike ku vegere Updatium ji bo temamkirina sazkirina sepanê',
			'checkingForUpdates' => 'Rojankirin tên kontrolkirin',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Agahdariya derbasbar a dema kontrola rojanekirinê de xuya dibe',
			'pleaseAllowInstallPerm' => 'Ji kerema xwe re destûrê bidin Updatium ku sepanan saz bike',
			'trackOnly' => 'Tenê ji bo trackingê',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Çewtî {}',
			'versionCorrectionDisabled' => 'Rêzberkirina guhertoyê neçalak (plugin xuya nake xebitîn)',
			'unknown' => 'Nenas',
			'none' => 'Yek jî tune',
			'all' => 'Hemî',
			'never' => 'Qet',
			'latestVersion' => 'Herî dawî',
			'installedVersionX' => 'Sazkirî: {}',
			'lastUpdateCheckX' => 'Kontrola rojanekirinê ya dawî: {}',
			'remove' => 'Rake',
			'quickLinks' => 'Girêdanên Lez',
			'yesMarkUpdated' => 'Erê, wek rojane nîshan bike',
			'fdroid' => 'F-Droid fermî',
			'appIdOrName' => 'ID an jî navê sepanê',
			'appId' => 'ID-ya sepanê',
			'appWithIdOrNameNotFound' => 'Sepan bi wê ID-ê an navê nehat dîtin',
			'reposHaveMultipleApps' => 'Depo diken xwedî sepanên pirbin in',
			'fdroidThirdPartyRepo' => 'Depoya sêyemîn a F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Saz bike',
			'markInstalled' => 'Wek sazkirî nîshan bike',
			'update' => 'Rojane bike',
			'updated' => 'Rojane',
			'markUpdated' => 'Wek rojane nîshan bike',
			'download' => 'Download',
			'additionalOptions' => 'Vebijêrkên zêde',
			'disableVersionDetection' => 'Nasîna guhertoyê neçalak bike',
			'noVersionDetectionExplanation' => 'Ev vebijêrk divê tenê ji bo sepanên ku nasîna guhertoyê rast naxebit were bikar anîn.',
			'downloadingX' => '{} tê daxistin',
			'downloadX' => '{} daxe',
			'downloadedX' => '{} hat daxistin',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Çavkaniya berdanê',
			'downloadNotifDescription' => 'Bikarhêner dide zanîn li ser pêvejîna daxistina sepanê',
			'noAPKFound' => 'APK nehat dîtin',
			'noVersionDetection' => 'Bê nasîna guhertoyê',
			'categorize' => 'Kategorî bike',
			'categories' => 'Kategorî',
			'category' => 'Kategorî',
			'noCategory' => 'Bê kategorî',
			'noCategories' => 'Kategorî tune ne',
			'categoryDeleteQuestion' => 'Kategorî jê bibin?',
			'categoryDeleteWarning' => 'Hemî sepanên di kategoriyan yên jêbirî de dê werin wek bê-kategorî sazkirin.',
			'addCategory' => 'Kategorî zêde bike',
			'label' => 'Etîket',
			'language' => 'Ziman',
			'copiedToClipboard' => 'Hat kopîkirin bo clipboard',
			'storagePermissionDenied' => 'Destûra hilanînê hat redkirin',
			'selectedCategorizeWarning' => 'Ev dê her mîhengên kategoriyên heyî yên sepanên hilbijartî biguherîne.',
			'filterAPKsByRegEx' => 'APK-yan bi rêzika birêkûpêlkî parzûn bike',
			'removeFromUpdatium' => 'Ji Updatium rake',
			'uninstallFromDevice' => 'Ji cîhazê rake',
			'onlyWorksWithNonVersionDetectApps' => 'Tenê ji bo sepanên ku nasîna guhertoyê neçalak e xebitîne.',
			'releaseDateAsVersion' => 'Dîroka berdanê wek rêzika guhertoyê bi kar bîne',
			'releaseTitleAsVersion' => 'Sernava berdanê wek rêzika guhertoyê bi kar bîne',
			'releaseDateAsVersionExplanation' => 'Ev vebijêrk divê tenê ji bo sepanên ku nasîna guhertoyê rast naxebit lê dîroka berdanê heye were bikar anîn.',
			'changes' => 'Guherîn',
			'releaseDate' => 'Dîroka berdanê',
			'importFromURLsInFile' => 'Ji URL-yan di pel de (wek OPML) daxe',
			'versionDetectionExplanation' => 'Rêzika guhertoyê bi guhertoya hatî ji OS re hevgirtin bike',
			'versionDetection' => 'Nasîna guhertoyê',
			'standardVersionDetection' => 'Nasîna guhertoyê ya standard',
			'groupByCategory' => 'Li gor kategoriyê kom bike',
			'listView' => 'Dîtina lîsteyê',
			'gridView' => 'Dîtina torê',
			'autoApkFilterByArch' => 'Hewl bide ku APK-yan li gor arîtektura CPU parzûn bike heke dibe',
			'autoLinkFilterByArch' => 'Hewl bide ku girêdan li gor arîtektura CPU parzûn bike heke dibe',
			'overrideSource' => 'Çavkaniyê derbas bike',
			'dontShowAgain' => 'Vê nede nîshan din',
			'dontShowTrackOnlyWarnings' => 'Hiyarên \'tenê ji bo trackingê\' nede nîshan',
			'dontShowAPKOriginWarnings' => 'Hiyarên li ser çavkaniya APK nede nîshan',
			'moveNonInstalledAppsToBottom' => 'Sepanên ne-sazkirî bike jêr dîtina sepanan',
			'gitlabPATLabel' => 'Tokenê gihîna kesanî ya GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Derbar',
			'requiresCredentialsInSettings' => '{} hewceyê nasnameyên zêde heye (di Mîhengan de)',
			'checkOnStart' => 'Rojankirinê li ser destpêkê kontrol bike',
			'safeMode' => 'Moda Ewle',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Sepanê Zêde Bike di Moda Ewle de neçalak e',
			'tryInferAppIdFromCode' => 'Hewl bide ku ID-ya sepanê ji kodê çavkaniyê bixwîne',
			'removeOnExternalUninstall' => 'Sepanên ku derve hatin rakirin otomatîk rake',
			'pickHighestVersionCode' => 'APK-ya bi herî bilind a kodê guhertoyê otomatîk hilbijêre',
			'checkUpdateOnDetailPage' => 'Rojankirinê li ser vekirina rûpela detalî ya sepanê kontrol bike',
			'disablePageTransitions' => 'Animasyonên derbasbûna rûpelan neçalak bike',
			'reversePageTransitions' => 'Animasyonên derbasbûna rûpelan berev bike',
			'minStarCount' => 'Kêmê stêrkan',
			'addInfoBelow' => 'Vê agahiyan jêr zêde bikin.',
			'addInfoInSettings' => 'Vê agahiyan di Mîhengan de zêde bikin.',
			'githubSourceNote' => 'Sînorkirina rate ya GitHub dikare bi karanîna mifteya API were revandin.',
			'sortByLastLinkSegment' => 'Tenê li gor bepa dawî ya girêdanê rêz bike',
			'filterReleaseNotesByRegEx' => 'Notên berdanê bi rêzika birêkûpêlkî parzûn bike',
			'customLinkFilterRegex' => 'Parzûna xweser a girêdanên APK bi rêzika birêkûpêlkî (standard \'.apk$\')',
			'appsPossiblyUpdated' => 'Hewlên rojanekirina sepanan hatin dan',
			'appsPossiblyUpdatedNotifDescription' => 'Bikarhêner dide zanîn ku dibe ku rojanekirin ji bo yek an zêdetir sepanan li paqijî hatin sepandin',
			'xWasPossiblyUpdatedToY' => 'Dibe ku {} hat rojanekirin bo {}.',
			'enableBackgroundUpdates' => 'Rojankirina li paqijî çalak bike',
			'backgroundUpdateReqsExplanation' => 'Rojankirina li paqijî dibe ku ji bo hemî sepanan nebe.',
			'backgroundUpdateLimitsExplanation' => 'Serketiya sazkirina li paqijî tenê gava Updatium vekirî ye dikare were destnîshan kirin.',
			'verifyLatestTag' => 'Etîketa \'latest\' kontrol bike',
			'intermediateLinkRegex' => 'Parzûna girêdana \'navîn\' a ji bo serdanê',
			'filterByLinkText' => 'Girêdan li gor nivîsa girêdanê parzûn bike',
			'matchLinksOutsideATags' => 'Girêdanên li derveyê etîketên <a> hevgirtin bike',
			'intermediateLinkNotFound' => 'Girêdana navîn nehat dîtin',
			'intermediateLink' => 'Girêdana navîn',
			'exemptFromBackgroundUpdates' => 'Ji rojanekirina li paqijî bexshîne (ger çalak be)',
			'bgUpdatesOnWiFiOnly' => 'Rojankirina li paqijî neçalak bike gava ne li Wi-Fi ye',
			'bgUpdatesWhileChargingOnly' => 'Rojankirina li paqijî neçalak bike gava ne di xwarinê de ye',
			'autoSelectHighestVersionCode' => 'APK-ya bi herî bilind a versionCode otomatîk hilbijêre',
			'versionExtractionRegEx' => 'Rêzika birêkûpêlkî ya derxistina rêzika guhertoyê',
			'trimVersionString' => 'Rêzika guhertoyê bi rêzika birêkûpêlkî kurt bike',
			'matchGroupToUseForX' => 'Koma hevgirtinê ji bo "{}" were bikar anîn',
			'matchGroupToUse' => 'Koma hevgirtinê ji bo rêzika birêkûpêlkî ya derxistina rêzika guhertoyê were bikar anîn',
			'highlightTouchTargets' => 'Armancên destê kêmtir xuya nîshan bike',
			'pickExportDir' => 'Peldanka derxistinê hilbijêre',
			'autoExportOnChanges' => 'Derxistina otomatîk li ser guherînan',
			'includeSettings' => 'Mîhengan tê de bike',
			'filterVersionsByRegEx' => 'Guhertoyan bi rêzika birêkûpêlkî parzûn bike',
			'trySelectingSuggestedVersionCode' => 'Hewl bide ku APK-ya versionCode ya pêveniyê hilbijêre',
			'dontSortReleasesList' => 'Rêza berdanan ji API re bigire',
			'reverseSort' => 'Rêz berev bike',
			'takeFirstLink' => 'Yekem girêdan bigire',
			'skipSort' => 'Rêzkirinê paqij bike',
			'debugMenu' => 'Menûya çewtkirinê',
			'bgTaskStarted' => 'Karê li paqijî dest pê kir - kontrola logan bike.',
			'runBgCheckNow' => 'Kontrola rojanekirinê ya li paqijî niha bike',
			'versionExtractWholePage' => 'Rêzika birêkûpêlkî ya derxistina rêzika guhertoyê li ser hemû rûpelê bi kar bîne',
			'installing' => 'Tê sazkirin',
			'skipUpdateNotifications' => 'Agahdariyên rojanekirinê paqij bike',
			'updatesAvailableNotifChannel' => 'Rojankirin heye',
			'appsUpdatedNotifChannel' => 'Sepan hatin rojanekirin',
			'appsPossiblyUpdatedNotifChannel' => 'Hewlên rojanekirina sepanan',
			'errorCheckingUpdatesNotifChannel' => 'Çewtî di kontrola rojanekirinê de',
			'appsRemovedNotifChannel' => 'Sepan hatin rakirin',
			'downloadingXNotifChannel' => '{} tê daxistin',
			'completeAppInstallationNotifChannel' => 'Sazkirina sepanê temam bike',
			'checkingForUpdatesNotifChannel' => 'Rojankirin tên kontrolkirin',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Tenê sepanên sazkirî û yên tenê ji bo trackingê kontrol bike',
			'supportFixedAPKURL' => 'URL-ên APK yên sabît destek bike',
			'selectX' => '{} hilbijêre',
			'parallelDownloads' => 'Destûrê daxitinên paralel bide',
			'useShizuku' => 'Ji bo sazkirinê Shizuku an Sui bi kar bîne',
			'shizukuBinderNotFound' => 'Xizmeta Shizuku naxebitîne',
			'shizukuOld' => 'Guhertoya kevn a Shizuku (<11) - rojane bike',
			'shizukuOldAndroidWithADB' => 'Shizuku li ser Android < 8.1 bi ADB dixebite - Android rojane bike an jî bi Sui re biguherîne',
			'shizukuPretendToBeGooglePlay' => 'Google Play wek çavkaniya sazkirinê saz bike (ger Shizuku were bikar anîn)',
			'useSystemFont' => 'Fontê pergalê bi kar bîne',
			'useVersionCodeAsOSVersion' => 'Koda guhertoyê ya sepanê wek guhertoya hatî ji OS re bi kar bîne',
			'requestHeader' => 'Sernava daxwazê',
			'useLatestAssetDateAsReleaseDate' => 'Dîroka barkirina çavkaniya herî dawî wek dîroka berdanê bi kar bîne',
			'defaultPseudoVersioningMethod' => 'Rêbaza pseudo-guhertoyê ya standard',
			'partialAPKHash' => 'Hasha partiya APK',
			'APKLinkHash' => 'Hasha girêdana APK',
			'directAPKLink' => 'Girêdana rasterast a APK',
			'pseudoVersionInUse' => 'Pseudo-guherto tê bikar anîn',
			'installedVersion' => 'Sazkirî',
			'installed' => 'Sazkirî',
			'notInstalledApps' => 'Ne sazkirî',
			'latest' => 'Herî dawî',
			'invertRegEx' => 'Rêzika birêkûpêlkî berev bike',
			'note' => 'Not',
			'selfHostedNote' => 'Menuya dropdown "{}" dikare were bikar anîn ji bo gihiztina mînakên xweser/bi xwe hatin hilandin yên her çavkaniyekê.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK nehat parzekirin (nagire an daxistina parti)',
			'beforeNewInstallsShareToAppVerifier' => 'Sepanên nû li AppVerifier parve bike (ger hebe)',
			'appVerifierInstructionToast' => 'Li AppVerifier parve bike, pañê vegere vir gava amade bû.',
			'wiki' => 'Alîkarî/wiki',
			'wikiHint' => 'Dokumentasyona wiki ya Updatium veke',
			'allowInsecure' => 'Daxwazên HTTP-ê yên neewle destûr bide',
			'stayOneVersionBehind' => 'Yek guherto li paqijî bimîne',
			'useFirstApkOfVersion' => 'Yekem ji APK-ên pirbin otomatîk hilbijêre',
			'refreshBeforeDownload' => 'Berî daxistinê detalîên sepanê nû bike',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nav',
			'smartname' => 'Nav (jîr)',
			'smartPlusDate' => 'Jîr + Dîrok',
			'sortMethod' => 'Rêbaza rêzkirinê',
			'welcome' => 'Bi xêr hatî',
			'batteryOptimizationNote' => 'Binihêrin ku daxistinên li paqijî dibe ku zêdetir bixebitin gava hûn li setên Updatium bigihîjin \'xizmeta li pê\' û/yan optimîzasyona bataryê ji bo Updatium di setên OS-ê xwe de neçalak bikin.',
			'fileDeletionError' => 'Jêbirina pelê têk çû (hewl bide ku bi destan jê bibin pañê dîsa biceribîne): "{}"',
			'foregroundService' => 'Xizmeta li pê ya Updatium',
			'foregroundServiceExplanation' => 'Ji bo kontrola rojanekirinê xizmetek li pê bi kar bîne (zêdetir pêbawer, zêdetir hêzê dixwe)',
			'fgServiceNotice' => 'Ev agahdarî ji bo kontrola rojanekirinê ya li paqijî pêwîst e (dikare li setên OS de were veberkirin)',
			'excludeSecrets' => 'Sîrên derve',
			'GHReqPrefix' => 'mînak \'omeritzics/Updatium\' ji bo daxwazên GitHub',
			'includeZips' => 'Pelên ZIP tê de bike',
			'zippedApkFilterRegEx' => 'APK-ên li hundirê ZIP-yan parzûn bike',
			'multipleSigners' => 'Sazkarên Pir',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: 'Sepan rakirin?', other: 'Sepanên rakirin?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: 'Zêde daxwaz (hat sînor kirin) - dîsa {count} deqeyê de biceribîne', other: 'Zêde daxwaz (hat sînor kirin) - dîsa {count} deqeyan de biceribîne', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: 'Kontrola rojanekirinê ya li paqijî rastî {error} hat, dê kontrola dubarekirinê di {count} deqeyê de plan bike', other: 'Kontrola rojanekirinê ya li paqijî rastî {error} hat, dê kontrola dubarekirinê di {count} deqeyan de plan bike', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: 'Kontrola rojanekirinê ya li paqijî {count} rojanekirin dît - dê bikarhêner agahdar bike heke pêwîst be', other: 'Kontrola rojanekirinê ya li paqijî {count} rojanekirin dît - dê bikarhêner agahdar bike heke pêwîst be', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{count} Sepan', other: '{count} Sepan', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{count} URL', other: '{count} URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{count} deqe', other: '{count} deqe', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{count} saet', other: '{count} saet', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{count} roj', other: '{count} roj', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{n} log hate jêbirin (berê = {before}, pa = {after})', other: '{n} log hatin jêbirin (berê = {before}, pa = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{app} û sepanek din jî rojanekirin heye.', other: '{app} û {count} sepanên din jî rojanekirin heye.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{app} û sepanek din jî hat rojanekirin.', other: '{app} û {count} sepanên din jî hatin rojanekirin.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: 'Rojankirina {app} û sepanek din jî têk çû.', other: 'Rojankirina {app} û {count} sepanên din jî têk çû.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{app} û sepanek din jî dibe ku hat rojanekirin.', other: '{app} û {count} sepanên din jî dibe ku hatin rojanekirin.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('kmr'))(n, one: 'Hasha Sertîfîkayê', other: 'Hashên Sertîfîkayan', ), 
			'securityDisclaimerTitle' => 'Betalkirina Ewlekarî û Pirsgirêkên Qanûnî',
			'license' => 'Lîsans',
			'licenseText' => 'Ev sepan li bin Lîsansa GPL v3 tê belavkirin.',
			'disclaimer' => 'Betalkirin',
			'disclaimerText' => 'Ev sepan sepanên derveyî nayê belavkirin, nakirin an jî kontrolkirin. Bikarhêner berpirsyariya temamî ji bo ewlehiyê û qanûnîbûna her nivîsbariya ku bi vê amûrê tê sazkirin digire.\n\nhttps://github.com/omeritzics/Updatium tenê cihê fermî ye ji bo daxistina Updatium - pir tê pêniyazkirin ku wê ji cihên din daxizin ji ber ku çavkaniyên nefermî neewle ne.',
			'privacy' => 'Nexberî',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Bipejirîne û Bidomîne',
			'decline' => 'Red bike',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Ji Updatium hez dikin?',
			'githubStarPromptContent' => 'Updatium projeyeke komelayî, xweser, open-source e ku di dema azad a min de hat pêktin. Ger hûn dixwazin projeyê biparêzin, ji kerema xwe re li ser GitHub stêrê wê bidin ku alîkariya me bikin ku bigihijin bikarhênerên zêdetir û bekarhêner. Dê carên din hûn li ser vê neyên xwestin. Spas ji pê ve! :)',
			'githubStarPromptStar' => 'Stêrê bidin',
			'githubStarPromptDontShowAgain' => 'Vê nede nîshan din',
			'sourceCode' => 'Koda Çavkanî',
			'developedBy' => 'Pêk hatiye ji aliyê',
			'appDescription' => 'Katalogeke sepanên Android a ku dikare were xweserkirin û dihêle ku hûn sepanên xwe rasterast ji çavkaniyên APK yên wan rojane bikin.',
			'safeModeEnabled' => 'Moda Ewle çalak e',
			'safeModeDisabled' => 'Moda Ewle neçalak e',
			'safeModeDisable' => 'Moda Ewle neçalak bike',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Rêveberiya Moda Ewle',
			'safeModeSetupDescription' => 'Kelîmeya serê were saz bike ji bo çalakkirina Moda Ewle. Pi çalakkirinê, Moda Ewle sepanên nû zêdekirinê qedexe dike û tenê bi kelîmeya serê dikare were neçalak kirin.',
			'safeModeToggleDescription' => 'Kelîmeya serê binivîse ji bo guhertina Moda Ewle.',
			'safeModeSetPassword' => 'Kelîmeya serê saz bike',
			'safeModeConfirmPassword' => 'Kelîmeya serê pejirîne',
			'safeModeEnterPassword' => 'Kelîmeya serê binivîse',
			'safeModePasswordHint' => 'Kêmî 8 nîşan',
			'safeModePasswordTooShort' => 'Kelîmeya serê kêmî 8 nîşanî ye',
			'safeModePasswordMismatch' => 'Kelîmeyên serê nepejirînin',
			'safeModePasswordIncorrect' => 'Kelîmeya serê ne rast e',
			'safeModePasswordError' => 'Çewtî di sazkirina kelîmeya serê de - dîsa biceribîne',
			'safeModeEnable' => 'Moda Ewle çalak bike',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} tapên mayî hene ji bo neçalakkirina Moda Ewle',
			'safeModeEnabledHint' => 'Moda Ewle çalak bû. Li ser hejmara versiyonê di De rê de pir car bikin ji bo neçalakkirinê.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Fahm kir',
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
