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
class TranslationsEt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.et,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <et>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEt _root = this; // ignore: unused_field

	@override 
	TranslationsEt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEt(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Pole kehtiv {} äpi URL';
	@override String get noReleaseFound => 'Sobivat väljaannet ei leitud';
	@override String get noVersionFound => 'Ei suutnud tuvastada väljaande versiooni';
	@override String get urlMatchesNoSource => 'URL ei vasta tuntud allikale';
	@override String get cantInstallOlderVersion => 'Ei saa installida äpi vanemat versiooni';
	@override String get appIdMismatch => 'Allalaaditud paketi ID ei vasta olemasolevale äpi ID-le';
	@override String get functionNotImplemented => 'See klass pole seda funktsiooni implementeerinud';
	@override String get placeholder => 'Kohatäide';
	@override String get someErrors => 'Tekkis mõned vead';
	@override String get unexpectedError => 'Ootamatu viga';
	@override String get ok => 'Olgu';
	@override String get and => 'ja';
	@override String get githubPATLabel => 'GitHub\'i isiklik juurdepääsutunnus';
	@override String get includePrereleases => 'Kaasa eelversioonid';
	@override String get fallbackToOlderReleases => 'Varuvariant vanematele väljaannetele';
	@override String get filterReleaseTitlesByRegEx => 'Filtreeri väljaannete pealkirju regulaaravaldisega';
	@override String get invalidRegEx => 'Vigane regulaaravaldis';
	@override String get noDescription => 'Kirjeldus puudub';
	@override String get cancel => 'Tühista';
	@override String get kContinue => 'Jätka';
	@override String get requiredInBrackets => '(kohustuslik)';
	@override String get dropdownNoOptsError => 'VIGA: RIPPLOENDIS PEAB OLEMA VÄHEMALT ÜKS VALIK';
	@override String get color => 'Värv';
	@override String get standard => 'Standard';
	@override String get custom => 'Kohandatud';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Kasuta Material You värve';
	@override String get githubStarredRepos => 'GitHub\'i tärniga repod';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Kasutajanimi';
	@override String get wrongArgNum => 'Vale arv argumente antud';
	@override String get xIsTrackOnly => '{} on ainult jälgimiseks';
	@override String get source => 'Allikas';
	@override String get app => 'Äpp';
	@override String get appsFromSourceAreTrackOnly => 'Selle allika äpid on \'ainult jälgimiseks\'.';
	@override String get youPickedTrackOnly => 'Olete valinud \'ainult jälgimise\' valiku.';
	@override String get trackOnlyAppDescription => 'Äpi jälgitakse uuenduste jaoks, kuid Updatium ei saa seda alla laadida ega installida.';
	@override String get cancelled => 'Tühistatud';
	@override String get appAlreadyAdded => 'Äpp on juba lisatud';
	@override String get alreadyUpToDateQuestion => 'Äpp on juba ajakohane?';
	@override String get addApp => 'Lisa äpp';
	@override String get appSourceURL => 'Äpi allika URL';
	@override String get error => 'Viga';
	@override String get add => 'Lisa';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Otsi (ainult mõned allikad)';
	@override String get search => 'Otsi';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Lisavalikud {} jaoks';
	@override String get supportedSources => 'Toetatud allikad';
	@override String get trackOnlyInBrackets => '(ainult jälgimine)';
	@override String get searchableInBrackets => '(otsitav)';
	@override String get appsString => 'Äpid';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Tere tulemast!';
	@override String get noAppsSubtext => 'Saate lisada oma esimese äpi, valides allolevat \'Lisa äpp\' nuppu.';
	@override String get noAppsForFilter => 'Filtrile äpe ei leitud';
	@override String get byX => 'Autor: {}';
	@override String get percentProgress => 'Edenemine: {}%';
	@override String get pleaseWait => 'Palun oodake';
	@override String get updateAvailable => 'Uuendus saadaval';
	@override String get notInstalled => 'Pole installitud';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versioon';
	@override String get selectAll => 'Vali kõik';
	@override String get deselectX => 'Tühista {} valik';
	@override String get xWillBeRemovedButRemainInstalled => '{} eemaldatakse Updatiumist, kuid jääb seadmesse installituks.';
	@override String get removeSelectedAppsQuestion => 'Eemalda valitud äpid?';
	@override String get removeSelectedApps => 'Eemalda valitud äpid';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Uuenda {}';
	@override String get installX => 'Installi {}';
	@override String get markXTrackOnlyAsUpdated => 'Märgi {}\n(ainult jälgimine)\nuuendatuks';
	@override String get changeX => 'Muuda {}';
	@override String get installUpdateApps => 'Installi/uuenda äpid';
	@override String get installUpdateSelectedApps => 'Installi/uuenda valitud äpid';
	@override String get markXSelectedAppsAsUpdated => 'Märgi {} valitud äpi uuendatuks?';
	@override String get no => 'Ei';
	@override String get yes => 'Jah';
	@override String get markSelectedAppsUpdated => 'Märgi valitud äpid uuendatuks';
	@override String get pinToTop => 'Kinnita üles';
	@override String get unpinFromTop => 'Eemalda kinnitus ülevalt';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Lähtesta valitud äpide installimise olek?';
	@override String get installStatusOfXWillBeResetExplanation => 'Kõikide valitud äpide installimise olek lähtestatakse.\n\nSee võib aidata, kui Updatiumis näidatav äpi versioon on vale nurkunud uuenduste või muude probleemide tõttu.';
	@override String get customLinkMessage => 'Need lingid töötavad seadmetel, kuhu on installitud Updatium';
	@override String get shareAppConfigLinks => 'Jaga äpi konfiguratsiooni HTML-lingina';
	@override String get resetInstallStatus => 'Lähtesta installimise olek';
	@override String get more => 'Rohkem';
	@override String get removeOutdatedFilter => 'Eemalda aegunud äppide filter';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Näita ainult aegunud äppe';
	@override String get filter => 'Filter';
	@override String get filterApps => 'Filtreeri äpid';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Äpi nimi';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Ajakohased äpid';
	@override String get nonInstalledApps => 'Installimata äpid';
	@override String get importExport => 'Import/eksport';
	@override String get settings => 'Seaded';
	@override String get exportedTo => 'Eksporditud asukohta {}';
	@override String get updatiumExport => 'Updatiumi eksport';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Vigane sisend';
	@override String get importedX => 'Imporditud {}';
	@override String get updatiumImport => 'Updatiumi import';
	@override String get importFromURLList => 'Impordi URL-loendist';
	@override String get searchQuery => 'Otsingupäring';
	@override String get appURLList => 'Äpi URL-loend';
	@override String get line => 'Rida';
	@override String get searchX => 'Otsi {}';
	@override String get noResults => 'Tulemusi ei leitud';
	@override String get importX => 'Impordi {}';
	@override String get importedAppsIdDisclaimer => 'Imporditud äpid võivad valesti näidata kui "pole installitud".\nSelle parandamiseks installige need uuesti Updatiumi kaudu.\nSee ei tohiks mõjutada äpi andmeid.\n\nMõjutab ainult URL- ja kolmanda osapoole importimeetodeid.';
	@override String get importErrors => 'Importimisvead';
	@override String get importedXOfYApps => '{} / {} äpi imporditud.';
	@override String get followingURLsHadErrors => 'Järgmistel URL-idel olid vead:';
	@override String get selectURL => 'Vali URL';
	@override String get selectURLs => 'Vali URL-id';
	@override String get pick => 'Vali';
	@override String get theme => 'Teema';
	@override String get dark => 'Tume';
	@override String get light => 'Hele';
	@override String get followSystem => 'Järgi süsteemi';
	@override String get followSystemThemeExplanation => 'Süsteemi teema järgimine on võimalik ainult kolmandate osapoolte rakenduste abil';
	@override String get useBlackTheme => 'Kasuta puhtalt musta tumedat teemat';
	@override String get appSortBy => 'Äpide sorteerimine';
	@override String get authorName => 'Autor/nimi';
	@override String get nameAuthor => 'Nimi/autor';
	@override String get asAdded => 'Nagu lisatud';
	@override String get appSortOrder => 'Äpide sortimisjärjekord';
	@override String get ascending => 'Kasvav';
	@override String get descending => 'Kahanev';
	@override String get bgUpdateCheckInterval => 'Taustauuenduste kontrollimise intervall';
	@override String get neverManualOnly => 'Mitte kunagi - ainult käsitsi';
	@override String get appearance => 'Välimus';
	@override String get pinUpdates => 'Kinnita uuendused äpide vaate ülaossa';
	@override String get updates => 'Uuendused';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Allikapõhine';
	@override String get appSource => 'Äpi allikas';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Logisid puuduvad';
	@override String get appLogs => 'Äpi logid';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Sulge';
	@override String get share => 'Jaga';
	@override String get appNotFound => 'Äppi ei leitud';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-eksport';
	@override String get pickAnAPK => 'Vali APK';
	@override String get appHasMoreThanOnePackage => '{}-l on rohkem kui üks pakett:';
	@override String get deviceSupportsXArch => 'Teie seade toetab {} CPU-arhitektuuri.';
	@override String get deviceSupportsFollowingArchs => 'Teie seade toetab järgmisi CPU-arhitektuure:';
	@override String get warning => 'Hoiatus';
	@override String get sourceIsXButPackageFromYPrompt => 'Äpi allikas on \'{}\', kuid väljaandepakett tuleb allikast \'{}\'. Jätkame?';
	@override String get updatesAvailable => 'Uuendusi saadaval';
	@override String get updatesAvailableNotifDescription => 'Teavitab kasutajat, et Updatiumi poolt jälgitavatele ühele või enamale äpile on uuendusi saadaval';
	@override String get noNewUpdates => 'Uusi uuendusi pole.';
	@override String get xHasAnUpdate => '{}-l on uuendus.';
	@override String get appsUpdated => 'Äpid uuendatud';
	@override String get appsNotUpdated => 'Äppide uuendamine ebaõnnestus';
	@override String get appsUpdatedNotifDescription => 'Teavitab kasutajat, et ühe või enama äpi uuendused rakendati taustal';
	@override String get xWasUpdatedToY => '{} uuendati versioonile {}.';
	@override String get xWasNotUpdatedToY => '{} uuendamine versioonile {} ebaõnnestus.';
	@override String get errorCheckingUpdates => 'Viga uuenduste kontrollimisel';
	@override String get errorCheckingUpdatesNotifDescription => 'Teavitus, mis ilmub, kui taustauuenduste kontrollimine ebaõnnestub';
	@override String get appsRemoved => 'Äpid eemaldatud';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Teavitab kasutajat, et üks või rohkem äppi eemaldati nende laadimisel tekkinud vigade tõttu';
	@override String get xWasRemovedDueToErrorY => '{} eemaldati järgmise vea tõttu: {}';
	@override String get completeAppInstallation => 'Lõpeta äpi installimine';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium peab olema avetud äppide installimiseks';
	@override String get completeAppInstallationNotifDescription => 'Palub kasutajal naasta Updatiumi äpi installimise lõpetamiseks';
	@override String get checkingForUpdates => 'Uuenduste kontrollimine';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Ajutine teavitus, mis ilmub uuendusi kontrollides';
	@override String get pleaseAllowInstallPerm => 'Palun lubage Updatiumil äppe installida';
	@override String get trackOnly => 'Ainult jälgimine';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Viga {}';
	@override String get versionCorrectionDisabled => 'Versiooni parandamine keelatud (plugin näib ei töötavat)';
	@override String get unknown => 'Tundmatu';
	@override String get none => 'Pole';
	@override String get all => 'Kõik';
	@override String get never => 'Mitte kunagi';
	@override String get latestVersion => 'Viimane';
	@override String get installedVersionX => 'Installitud: {}';
	@override String get lastUpdateCheckX => 'Viimane uuenduste kontroll: {}';
	@override String get remove => 'Eemalda';
	@override String get quickLinks => 'Kiirlingid';
	@override String get yesMarkUpdated => 'Jah, märgi uuendatuks';
	@override String get fdroid => 'F-Droid ametlik';
	@override String get appIdOrName => 'Äpi ID või nimi';
	@override String get appId => 'Äpi ID';
	@override String get appWithIdOrNameNotFound => 'Selle ID või nimega äppi ei leitud';
	@override String get reposHaveMultipleApps => 'Repod võivad sisaldada mitut äppi';
	@override String get fdroidThirdPartyRepo => 'F-Droid kolmanda osapoole repo';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Installi';
	@override String get markInstalled => 'Märgi installituks';
	@override String get update => 'Uuenda';
	@override String get updated => 'Uuendatud';
	@override String get markUpdated => 'Märgi uuendatuks';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Lisavalikud';
	@override String get disableVersionDetection => 'Keela versiooni tuvastamine';
	@override String get noVersionDetectionExplanation => 'Seda valikut tuleks kasutada ainult äppide puhul, kus versiooni tuvastamine ei tööta korrektselt.';
	@override String get downloadingX => '{} allalaadimine';
	@override String get downloadX => 'Laadi {} alla';
	@override String get downloadedX => '{} allalaaditud';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Väljaande vara';
	@override String get downloadNotifDescription => 'Teavitab kasutajat äpi allalaadimise edenemisest';
	@override String get noAPKFound => 'APK-d ei leitud';
	@override String get noVersionDetection => 'Versiooni tuvastamine puudub';
	@override String get categorize => 'Kategoriseeri';
	@override String get categories => 'Kategooriad';
	@override String get category => 'Kategooria';
	@override String get noCategory => 'Kategooria puudub';
	@override String get noCategories => 'Kategooriad puuduvad';
	@override String get categoryDeleteQuestion => 'Kustutada kategooriad?';
	@override String get categoryDeleteWarning => 'Kõik kustutatud kategooriate äpid seatakse kategoriseerimataks.';
	@override String get addCategory => 'Lisa kategooria';
	@override String get label => 'Silt';
	@override String get language => 'Keel';
	@override String get copiedToClipboard => 'Kopeeritud lõikelauale';
	@override String get storagePermissionDenied => 'Salvestusruumi luba keelatud';
	@override String get selectedCategorizeWarning => 'See asendab kõik olemasolevad kategooria seaded valitud äppide jaoks.';
	@override String get filterAPKsByRegEx => 'Filtreeri APK-sid regulaaravaldisega';
	@override String get removeFromUpdatium => 'Eemalda Updatiumist';
	@override String get uninstallFromDevice => 'Desinstalli seadmest';
	@override String get onlyWorksWithNonVersionDetectApps => 'Töötab ainult versiooni tuvastamiseta äppide puhul.';
	@override String get releaseDateAsVersion => 'Kasuta väljaande kuupäeva versiooni stringina';
	@override String get releaseTitleAsVersion => 'Kasuta väljaande pealkirja versiooni stringina';
	@override String get releaseDateAsVersionExplanation => 'Seda valikut tuleks kasutada ainult äppide puhul, kus versiooni tuvastamine ei tööta korrektselt, kuid väljaande kuupäev on saadaval.';
	@override String get changes => 'Muudatused';
	@override String get releaseDate => 'Väljaande kuupäev';
	@override String get importFromURLsInFile => 'Impordi URL-id failist (nagu OPML)';
	@override String get versionDetectionExplanation => 'Võrdle versiooni stringiga operatsioonisüsteemi tuvastatud versiooni';
	@override String get versionDetection => 'Versiooni tuvastamine';
	@override String get standardVersionDetection => 'Standardne versiooni tuvastamine';
	@override String get groupByCategory => 'Grupeeri kategooria järgi';
	@override String get listView => 'Loendivaade';
	@override String get gridView => 'Ruudustikuvaade';
	@override String get autoApkFilterByArch => 'Proovi filtreerida APK-sid CPU-arhitektuuri järgi, kui võimalik';
	@override String get autoLinkFilterByArch => 'Proovi filtreerida linke CPU-arhitektuuri järgi, kui võimalik';
	@override String get overrideSource => 'Tühista allikas';
	@override String get dontShowAgain => 'Ära näita uuesti';
	@override String get dontShowTrackOnlyWarnings => 'Ära näita \'ainult jälgimise\' hoiatusi';
	@override String get dontShowAPKOriginWarnings => 'Ära näita APK päritolu hoiatusi';
	@override String get moveNonInstalledAppsToBottom => 'Liiguta installimata äpid äpide vaate alumisse ossa';
	@override String get gitlabPATLabel => 'GitLabi isiklik juurdepääsutunnus';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Programmist';
	@override String get requiresCredentialsInSettings => '{} vajab lisandmed (seadetes)';
	@override String get checkOnStart => 'Kontrolli uuendusi käivitamisel';
	@override String get safeMode => 'Turvarežiim';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Rakenduse lisamine on turvarežiimis keelatud';
	@override String get tryInferAppIdFromCode => 'Proovi tuletada appi ID lähtekoodist';
	@override String get removeOnExternalUninstall => 'Eemalda automaatselt väliselt desinstallitud äpid';
	@override String get pickHighestVersionCode => 'Automaatselt vali kõrgeima versioonikoodiga APK';
	@override String get checkUpdateOnDetailPage => 'Kontrolli uuendusi äpi detaillehe avamisel';
	@override String get disablePageTransitions => 'Keela lehe üleminekute animatsioonid';
	@override String get reversePageTransitions => 'Pööra lehe üleminekute animatsioonid ümber';
	@override String get minStarCount => 'Minimaalne tärnide arv';
	@override String get addInfoBelow => 'Lisa see info alla.';
	@override String get addInfoInSettings => 'Lisa see info seadetes.';
	@override String get githubSourceNote => 'GitHub\'i piirangutest saab vältida API võtme kasutamisega.';
	@override String get sortByLastLinkSegment => 'Sorteeri ainult lingi viimase segmendi järgi';
	@override String get filterReleaseNotesByRegEx => 'Filtreeri väljaande märkmeid regulaaravaldisega';
	@override String get customLinkFilterRegex => 'Kohandatud APK lingi filter regulaaravaldisega (vaikimisi \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Äpi uuendamise katse';
	@override String get appsPossiblyUpdatedNotifDescription => 'Teavitab kasutajat, et ühe või enama äpi uuendused võidi rakendada taustal';
	@override String get xWasPossiblyUpdatedToY => '{} võidi uuendada versioonile {}.';
	@override String get enableBackgroundUpdates => 'Luba taustauuendused';
	@override String get backgroundUpdateReqsExplanation => 'Taustauuendused ei pruugi olla võimalikud kõikide äppide puhul.';
	@override String get backgroundUpdateLimitsExplanation => 'Taustalise installimise edu saab kindlaks teha ainult Updatiumi avamisel.';
	@override String get verifyLatestTag => 'Kinnita \'latest\' silt';
	@override String get intermediateLinkRegex => 'Filtreeri \'vahelingu\' lingi külastamiseks';
	@override String get filterByLinkText => 'Filtreeri linke lingi teksti järgi';
	@override String get matchLinksOutsideATags => 'Otsi linke <a> siltidest väljaspool';
	@override String get intermediateLinkNotFound => 'Vahelingu linki ei leitud';
	@override String get intermediateLink => 'Vahelingu link';
	@override String get exemptFromBackgroundUpdates => 'Vabasta taustauuendustest (kui lubatud)';
	@override String get bgUpdatesOnWiFiOnly => 'Keela taustauuendused, kui pole Wi-Fi võrgus';
	@override String get bgUpdatesWhileChargingOnly => 'Keela taustauuendused, kui ei lae';
	@override String get autoSelectHighestVersionCode => 'Automaatselt vali kõrgeima versioonikoodiga APK';
	@override String get versionExtractionRegEx => 'Versiooni stringi eraldamise RegEx';
	@override String get trimVersionString => 'Kärbi versiooni stringi RegEx-iga';
	@override String get matchGroupToUseForX => 'Kasutatav vaste grupp "{}" jaoks';
	@override String get matchGroupToUse => 'Kasutatav vaste grupp versiooni stringi eraldamise RegEx-ile';
	@override String get highlightTouchTargets => 'Tõsta vähem ilmsed puutepunktid esile';
	@override String get pickExportDir => 'Vali ekspordi kataloog';
	@override String get autoExportOnChanges => 'Automaatselt ekspordi muudatuste korral';
	@override String get includeSettings => 'Kaasa seaded';
	@override String get filterVersionsByRegEx => 'Filtreeri versioone regulaaravaldisega';
	@override String get trySelectingSuggestedVersionCode => 'Proovi valida soovitatud versioonikoodiga APK';
	@override String get dontSortReleasesList => 'Säilita väljaannete järjekord API-st';
	@override String get reverseSort => 'Pööra sortimine ümber';
	@override String get takeFirstLink => 'Võta esimene link';
	@override String get skipSort => 'Jäta sortimine vahele';
	@override String get debugMenu => 'Silumismenüü';
	@override String get bgTaskStarted => 'Taustatöö alustatud - vaadake logisid.';
	@override String get runBgCheckNow => 'Käivita taustauuenduste kontroll kohe';
	@override String get versionExtractWholePage => 'Rakenda versiooni stringi eraldamise RegEx kogu lehele';
	@override String get installing => 'Installimine';
	@override String get skipUpdateNotifications => 'Jäta uuenduste teavitused vahele';
	@override String get updatesAvailableNotifChannel => 'Uuendusi saadaval';
	@override String get appsUpdatedNotifChannel => 'Äpid uuendatud';
	@override String get appsPossiblyUpdatedNotifChannel => 'Äpi uuendamise katse';
	@override String get errorCheckingUpdatesNotifChannel => 'Viga uuenduste kontrollimisel';
	@override String get appsRemovedNotifChannel => 'Äpid eemaldatud';
	@override String get downloadingXNotifChannel => '{} allalaadimine';
	@override String get completeAppInstallationNotifChannel => 'Lõpeta äpi installimine';
	@override String get checkingForUpdatesNotifChannel => 'Uuenduste kontrollimine';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Kontrolli uuendusi ainult installitud ja ainult jälgitavate äppide jaoks';
	@override String get supportFixedAPKURL => 'Toeta fikseeritud APK URL-e';
	@override String get selectX => 'Vali {}';
	@override String get parallelDownloads => 'Luba paralleelsed allalaadimised';
	@override String get useShizuku => 'Kasuta Shizuku või Sui installimiseks';
	@override String get shizukuBinderNotFound => 'Shizuku teenus ei tööta';
	@override String get shizukuOld => 'Vana Shizuku versioon (<11) - uuendage see';
	@override String get shizukuOldAndroidWithADB => 'Shizuku töötab Android < 8.1 ADB-ga - uuendage Android või kasutage hoopis Sui-t';
	@override String get shizukuPretendToBeGooglePlay => 'Määra Google Play installimise allikaks (kui Shizuku\'t kasutatakse)';
	@override String get useSystemFont => 'Kasuta süsteemi fonti';
	@override String get useVersionCodeAsOSVersion => 'Kasuta äpi versioonikoodi operatsioonisüsteemi tuvastatud versioonina';
	@override String get requestHeader => 'Päringu päis';
	@override String get useLatestAssetDateAsReleaseDate => 'Kasuta viimase vara üleslaadimist väljaande kuupäevana';
	@override String get defaultPseudoVersioningMethod => 'Vaikimisi pseudo-versioonimise meetod';
	@override String get partialAPKHash => 'Osaline APK räsi';
	@override String get APKLinkHash => 'APK lingi räsi';
	@override String get directAPKLink => 'Otsene APK link';
	@override String get pseudoVersionInUse => 'Pseudo-versioon on kasutusel';
	@override String get installedVersion => 'Installitud';
	@override String get installed => 'Installitud';
	@override String get notInstalledApps => 'Paigaldamata';
	@override String get latest => 'Viimane';
	@override String get invertRegEx => 'Pööra regulaaravaldis ümber';
	@override String get note => 'Märkus';
	@override String get selfHostedNote => '"{}" rippmenüüd saab kasutada iseseisvate/kohandatud allikate instantsidele juurdepääsuks.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK-d ei suudetud parsida (ühildumatu või osaline allalaadimine)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Jaga uusi äppe AppVerifier-iga (kui saadaval)';
	@override String get appVerifierInstructionToast => 'Jaga AppVerifier-iga, naaske siia, kui olete valmis.';
	@override String get wiki => 'Abi/wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Luba ebaturvalised HTTP päringud';
	@override String get stayOneVersionBehind => 'Jää ühe versiooni viimasele järgnemaks';
	@override String get useFirstApkOfVersion => 'Automaatselt vali mitme APK seast esimene';
	@override String get refreshBeforeDownload => 'Värskenda äpi detaile enne allalaadimist';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nimi';
	@override String get smartname => 'Nimi (nutikas)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sortimismeetod';
	@override String get welcome => 'Tere tulemast';
	@override String get batteryOptimizationNote => 'Pange tähele, et taustalised allalaadimised võivad töötada usaldusväärsemalt, kui lülitate Updatiumi seadetes üle "taustateenusele" ja/või keelate Updatiumile oma operatsioonisüsteemi seadetes aku optimeerimine.';
	@override String get fileDeletionError => 'Faili kustutamine ebaõnnestus (proovige kustutada käsitsi ja proovige uuesti): "{}"';
	@override String get foregroundService => 'Updatiumi taustateenus';
	@override String get foregroundServiceExplanation => 'Kasuta taustateenust uuenduste kontrollimiseks (usaldusväärsem, tarbib rohkem energiat)';
	@override String get fgServiceNotice => 'See teavitus on vajalik taustauuenduste kontrollimiseks (seda saab peita operatsioonisüsteemi seadetes)';
	@override String get excludeSecrets => 'Välista saladused';
	@override String get GHReqPrefix => '\'omeritzics/Updatium\' instants GitHub päringute jaoks';
	@override String get includeZips => 'Kaasa ZIP failid';
	@override String get zippedApkFilterRegEx => 'Filtreeri APK-sid ZIP-i sees';
	@override String get multipleSigners => 'Mitu allkirjastajat';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: 'Eemalda äpp?',
		other: 'Eemalda äpid?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: 'Liiga palju päringuid (piirangutatud) - proovige uuesti {count} minuti pärast',
		other: 'Liiga palju päringuid (piirangutatud) - proovige uuesti {count} minuti pärast',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: 'Taustauuenduste kontrollimisel tekkis {error}, kavandatakse uuesti kontroll {count} minuti pärast',
		other: 'Taustauuenduste kontrollimisel tekkis {error}, kavandatakse uuesti kontroll {count} minuti pärast',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: 'Taustauuenduste kontroll leidis {count} uuenduse - teavitab kasutajat vajadusel',
		other: 'Taustauuenduste kontroll leidis {count} uuendust - teavitab kasutajat vajadusel',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{count} Äpp',
		other: '{count} Äppi',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{count} URL',
		other: '{count} URL-i',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{count} minut',
		other: '{count} minutit',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{count} tund',
		other: '{count} tundi',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{count} päev',
		other: '{count} päeva',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: 'Kustutatud {n} logi (enne = {before}, pärast = {after})',
		other: 'Kustutatud {n} logi (enne = {before}, pärast = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{app} ja 1 veel äpp on uuendusi.',
		other: '{app} ja {count} veel äppi on uuendusi.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{app} ja 1 veel äpp uuendati.',
		other: '{app} ja {count} veel äppi uuendati.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{app} ja 1 veel äpi uuendamine ebaõnnestus.',
		other: '{app} ja {count} veel äpi uuendamine ebaõnnestus.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{app} ja 1 veel äpp võidi uuendada.',
		other: '{app} ja {count} veel äppi võidi uuendada.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: '{count} APK',
		other: '{count} APK-d',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n,
		one: 'Sertifikaadi räsi',
		other: 'Sertifikaadi räsid',
	);
	@override String get securityDisclaimerTitle => 'Turvalisuse ja juriidiline lahtiütlus';
	@override String get license => 'Litsents';
	@override String get licenseText => 'See rakendus levitatakse GPL v3 litsentsi alusel.';
	@override String get disclaimer => 'Lahtiütlus';
	@override String get disclaimerText => 'See rakendus ei levita, ei majuta ega kinnita ühtegi välist rakendust. Kasutaja kannab täielikut vastutust kõigi selle tööriistaga installitud tarkvara turvalisuse ja seaduslikkuse eest.\n\nhttps://github.com/omeritzics/Updatium on ainus ametlik koht Updatiumi allalaadimiseks - on tugevasti soovitatud mitte alla laadida teist kohtadest, kuna allalaadimine mitteametlikelt allikatest ei ole turvaline.';
	@override String get privacy => 'Privaatsus';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Nõustu & Jätka';
	@override String get decline => 'Keeldu';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Kas meeldib Updatium?';
	@override String get githubStarPromptContent => 'Updatium on vabatahtlik avatud lähtekoodiga kogukonnaprojekt, mille arendan oma vabal ajal. Kui soovid projekti toetada, kaalu palun GitHubis tärni andmist, et aidata meil jõuda enamate kasutajate ja panustajateni. Teid ei selle kohta enam meelditakse. Aitäh ette! :)';
	@override String get githubStarPromptStar => 'Anna tärn';
	@override String get githubStarPromptDontShowAgain => 'Ära näita enam';
	@override String get sourceCode => 'Lähtekood';
	@override String get developedBy => 'Arendanud';
	@override String get appDescription => 'Kohandatav Android-rakenduste kataloog, mis võimaldab teil värskendada oma rakendusi otse nende APK-allikatest.';
	@override String get safeModeEnabled => 'Turvarežiim on sisse lülitatud';
	@override String get safeModeDisabled => 'Turvarežiim on välja lülitatud';
	@override String get safeModeDisable => 'Keela turvarežiim';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Turvarežiimi haldus';
	@override String get safeModeSetupDescription => 'Seadke parool, et lubada turvarežiimi. Kui see on lubatud, siis turvarežiim takistab uute äppide lisamist ja seda saab keelata ainult parooliga.';
	@override String get safeModeToggleDescription => 'Sisestage parool, et lülitada turvarežiim sisse või välja.';
	@override String get safeModeSetPassword => 'Seadke parool';
	@override String get safeModeConfirmPassword => 'Kinnitage parool';
	@override String get safeModeEnterPassword => 'Sisestage parool';
	@override String get safeModePasswordHint => 'Vähemalt 8 tähemärki';
	@override String get safeModePasswordTooShort => 'Parool peab olema vähemalt 8 tähemärki pikk';
	@override String get safeModePasswordMismatch => 'Paroolid ei ühti';
	@override String get safeModePasswordIncorrect => 'Vale parool';
	@override String get safeModePasswordError => 'Viga parooli seadmiseks. Proovige uuesti.';
	@override String get safeModeEnable => 'Luba turvarežiim';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} puudutusi jäänud, et keelata turvarežiim';
	@override String get safeModeEnabledHint => 'Turvarežiim on sisse lülitatud. Puudutage mitu korda versiooninumbrit Sätetes, et keelata.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Sain aru';
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

/// The flat map containing all translations for locale <et>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Pole kehtiv {} äpi URL',
			'noReleaseFound' => 'Sobivat väljaannet ei leitud',
			'noVersionFound' => 'Ei suutnud tuvastada väljaande versiooni',
			'urlMatchesNoSource' => 'URL ei vasta tuntud allikale',
			'cantInstallOlderVersion' => 'Ei saa installida äpi vanemat versiooni',
			'appIdMismatch' => 'Allalaaditud paketi ID ei vasta olemasolevale äpi ID-le',
			'functionNotImplemented' => 'See klass pole seda funktsiooni implementeerinud',
			'placeholder' => 'Kohatäide',
			'someErrors' => 'Tekkis mõned vead',
			'unexpectedError' => 'Ootamatu viga',
			'ok' => 'Olgu',
			'and' => 'ja',
			'githubPATLabel' => 'GitHub\'i isiklik juurdepääsutunnus',
			'includePrereleases' => 'Kaasa eelversioonid',
			'fallbackToOlderReleases' => 'Varuvariant vanematele väljaannetele',
			'filterReleaseTitlesByRegEx' => 'Filtreeri väljaannete pealkirju regulaaravaldisega',
			'invalidRegEx' => 'Vigane regulaaravaldis',
			'noDescription' => 'Kirjeldus puudub',
			'cancel' => 'Tühista',
			'kContinue' => 'Jätka',
			'requiredInBrackets' => '(kohustuslik)',
			'dropdownNoOptsError' => 'VIGA: RIPPLOENDIS PEAB OLEMA VÄHEMALT ÜKS VALIK',
			'color' => 'Värv',
			'standard' => 'Standard',
			'custom' => 'Kohandatud',
			'primary' => 'Primary',
			'useMaterialYou' => 'Kasuta Material You värve',
			'githubStarredRepos' => 'GitHub\'i tärniga repod',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Kasutajanimi',
			'wrongArgNum' => 'Vale arv argumente antud',
			'xIsTrackOnly' => '{} on ainult jälgimiseks',
			'source' => 'Allikas',
			'app' => 'Äpp',
			'appsFromSourceAreTrackOnly' => 'Selle allika äpid on \'ainult jälgimiseks\'.',
			'youPickedTrackOnly' => 'Olete valinud \'ainult jälgimise\' valiku.',
			'trackOnlyAppDescription' => 'Äpi jälgitakse uuenduste jaoks, kuid Updatium ei saa seda alla laadida ega installida.',
			'cancelled' => 'Tühistatud',
			'appAlreadyAdded' => 'Äpp on juba lisatud',
			'alreadyUpToDateQuestion' => 'Äpp on juba ajakohane?',
			'addApp' => 'Lisa äpp',
			'appSourceURL' => 'Äpi allika URL',
			'error' => 'Viga',
			'add' => 'Lisa',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Otsi (ainult mõned allikad)',
			'search' => 'Otsi',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Lisavalikud {} jaoks',
			'supportedSources' => 'Toetatud allikad',
			'trackOnlyInBrackets' => '(ainult jälgimine)',
			'searchableInBrackets' => '(otsitav)',
			'appsString' => 'Äpid',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Tere tulemast!',
			'noAppsSubtext' => 'Saate lisada oma esimese äpi, valides allolevat \'Lisa äpp\' nuppu.',
			'noAppsForFilter' => 'Filtrile äpe ei leitud',
			'byX' => 'Autor: {}',
			'percentProgress' => 'Edenemine: {}%',
			'pleaseWait' => 'Palun oodake',
			'updateAvailable' => 'Uuendus saadaval',
			'notInstalled' => 'Pole installitud',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versioon',
			'selectAll' => 'Vali kõik',
			'deselectX' => 'Tühista {} valik',
			'xWillBeRemovedButRemainInstalled' => '{} eemaldatakse Updatiumist, kuid jääb seadmesse installituks.',
			'removeSelectedAppsQuestion' => 'Eemalda valitud äpid?',
			'removeSelectedApps' => 'Eemalda valitud äpid',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Uuenda {}',
			'installX' => 'Installi {}',
			'markXTrackOnlyAsUpdated' => 'Märgi {}\n(ainult jälgimine)\nuuendatuks',
			'changeX' => 'Muuda {}',
			'installUpdateApps' => 'Installi/uuenda äpid',
			'installUpdateSelectedApps' => 'Installi/uuenda valitud äpid',
			'markXSelectedAppsAsUpdated' => 'Märgi {} valitud äpi uuendatuks?',
			'no' => 'Ei',
			'yes' => 'Jah',
			'markSelectedAppsUpdated' => 'Märgi valitud äpid uuendatuks',
			'pinToTop' => 'Kinnita üles',
			'unpinFromTop' => 'Eemalda kinnitus ülevalt',
			'resetInstallStatusForSelectedAppsQuestion' => 'Lähtesta valitud äpide installimise olek?',
			'installStatusOfXWillBeResetExplanation' => 'Kõikide valitud äpide installimise olek lähtestatakse.\n\nSee võib aidata, kui Updatiumis näidatav äpi versioon on vale nurkunud uuenduste või muude probleemide tõttu.',
			'customLinkMessage' => 'Need lingid töötavad seadmetel, kuhu on installitud Updatium',
			'shareAppConfigLinks' => 'Jaga äpi konfiguratsiooni HTML-lingina',
			'resetInstallStatus' => 'Lähtesta installimise olek',
			'more' => 'Rohkem',
			'removeOutdatedFilter' => 'Eemalda aegunud äppide filter',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Näita ainult aegunud äppe',
			'filter' => 'Filter',
			'filterApps' => 'Filtreeri äpid',
			'filterDays' => 'Filter days',
			'appName' => 'Äpi nimi',
			'author' => 'Autor',
			'upToDateApps' => 'Ajakohased äpid',
			'nonInstalledApps' => 'Installimata äpid',
			'importExport' => 'Import/eksport',
			'settings' => 'Seaded',
			'exportedTo' => 'Eksporditud asukohta {}',
			'updatiumExport' => 'Updatiumi eksport',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Vigane sisend',
			'importedX' => 'Imporditud {}',
			'updatiumImport' => 'Updatiumi import',
			'importFromURLList' => 'Impordi URL-loendist',
			'searchQuery' => 'Otsingupäring',
			'appURLList' => 'Äpi URL-loend',
			'line' => 'Rida',
			'searchX' => 'Otsi {}',
			'noResults' => 'Tulemusi ei leitud',
			'importX' => 'Impordi {}',
			'importedAppsIdDisclaimer' => 'Imporditud äpid võivad valesti näidata kui "pole installitud".\nSelle parandamiseks installige need uuesti Updatiumi kaudu.\nSee ei tohiks mõjutada äpi andmeid.\n\nMõjutab ainult URL- ja kolmanda osapoole importimeetodeid.',
			'importErrors' => 'Importimisvead',
			'importedXOfYApps' => '{} / {} äpi imporditud.',
			'followingURLsHadErrors' => 'Järgmistel URL-idel olid vead:',
			'selectURL' => 'Vali URL',
			'selectURLs' => 'Vali URL-id',
			'pick' => 'Vali',
			'theme' => 'Teema',
			'dark' => 'Tume',
			'light' => 'Hele',
			'followSystem' => 'Järgi süsteemi',
			'followSystemThemeExplanation' => 'Süsteemi teema järgimine on võimalik ainult kolmandate osapoolte rakenduste abil',
			'useBlackTheme' => 'Kasuta puhtalt musta tumedat teemat',
			'appSortBy' => 'Äpide sorteerimine',
			'authorName' => 'Autor/nimi',
			'nameAuthor' => 'Nimi/autor',
			'asAdded' => 'Nagu lisatud',
			'appSortOrder' => 'Äpide sortimisjärjekord',
			'ascending' => 'Kasvav',
			'descending' => 'Kahanev',
			'bgUpdateCheckInterval' => 'Taustauuenduste kontrollimise intervall',
			'neverManualOnly' => 'Mitte kunagi - ainult käsitsi',
			'appearance' => 'Välimus',
			'pinUpdates' => 'Kinnita uuendused äpide vaate ülaossa',
			'updates' => 'Uuendused',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Allikapõhine',
			'appSource' => 'Äpi allikas',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Logisid puuduvad',
			'appLogs' => 'Äpi logid',
			'appLogsHint' => 'View application logs',
			'close' => 'Sulge',
			'share' => 'Jaga',
			'appNotFound' => 'Äppi ei leitud',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-eksport',
			'pickAnAPK' => 'Vali APK',
			'appHasMoreThanOnePackage' => '{}-l on rohkem kui üks pakett:',
			'deviceSupportsXArch' => 'Teie seade toetab {} CPU-arhitektuuri.',
			'deviceSupportsFollowingArchs' => 'Teie seade toetab järgmisi CPU-arhitektuure:',
			'warning' => 'Hoiatus',
			'sourceIsXButPackageFromYPrompt' => 'Äpi allikas on \'{}\', kuid väljaandepakett tuleb allikast \'{}\'. Jätkame?',
			'updatesAvailable' => 'Uuendusi saadaval',
			'updatesAvailableNotifDescription' => 'Teavitab kasutajat, et Updatiumi poolt jälgitavatele ühele või enamale äpile on uuendusi saadaval',
			'noNewUpdates' => 'Uusi uuendusi pole.',
			'xHasAnUpdate' => '{}-l on uuendus.',
			'appsUpdated' => 'Äpid uuendatud',
			'appsNotUpdated' => 'Äppide uuendamine ebaõnnestus',
			'appsUpdatedNotifDescription' => 'Teavitab kasutajat, et ühe või enama äpi uuendused rakendati taustal',
			'xWasUpdatedToY' => '{} uuendati versioonile {}.',
			'xWasNotUpdatedToY' => '{} uuendamine versioonile {} ebaõnnestus.',
			'errorCheckingUpdates' => 'Viga uuenduste kontrollimisel',
			'errorCheckingUpdatesNotifDescription' => 'Teavitus, mis ilmub, kui taustauuenduste kontrollimine ebaõnnestub',
			'appsRemoved' => 'Äpid eemaldatud',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Teavitab kasutajat, et üks või rohkem äppi eemaldati nende laadimisel tekkinud vigade tõttu',
			'xWasRemovedDueToErrorY' => '{} eemaldati järgmise vea tõttu: {}',
			'completeAppInstallation' => 'Lõpeta äpi installimine',
			'updatiumMustBeOpenToInstallApps' => 'Updatium peab olema avetud äppide installimiseks',
			'completeAppInstallationNotifDescription' => 'Palub kasutajal naasta Updatiumi äpi installimise lõpetamiseks',
			'checkingForUpdates' => 'Uuenduste kontrollimine',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Ajutine teavitus, mis ilmub uuendusi kontrollides',
			'pleaseAllowInstallPerm' => 'Palun lubage Updatiumil äppe installida',
			'trackOnly' => 'Ainult jälgimine',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Viga {}',
			'versionCorrectionDisabled' => 'Versiooni parandamine keelatud (plugin näib ei töötavat)',
			'unknown' => 'Tundmatu',
			'none' => 'Pole',
			'all' => 'Kõik',
			'never' => 'Mitte kunagi',
			'latestVersion' => 'Viimane',
			'installedVersionX' => 'Installitud: {}',
			'lastUpdateCheckX' => 'Viimane uuenduste kontroll: {}',
			'remove' => 'Eemalda',
			'quickLinks' => 'Kiirlingid',
			'yesMarkUpdated' => 'Jah, märgi uuendatuks',
			'fdroid' => 'F-Droid ametlik',
			'appIdOrName' => 'Äpi ID või nimi',
			'appId' => 'Äpi ID',
			'appWithIdOrNameNotFound' => 'Selle ID või nimega äppi ei leitud',
			'reposHaveMultipleApps' => 'Repod võivad sisaldada mitut äppi',
			'fdroidThirdPartyRepo' => 'F-Droid kolmanda osapoole repo',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Installi',
			'markInstalled' => 'Märgi installituks',
			'update' => 'Uuenda',
			'updated' => 'Uuendatud',
			'markUpdated' => 'Märgi uuendatuks',
			'download' => 'Download',
			'additionalOptions' => 'Lisavalikud',
			'disableVersionDetection' => 'Keela versiooni tuvastamine',
			'noVersionDetectionExplanation' => 'Seda valikut tuleks kasutada ainult äppide puhul, kus versiooni tuvastamine ei tööta korrektselt.',
			'downloadingX' => '{} allalaadimine',
			'downloadX' => 'Laadi {} alla',
			'downloadedX' => '{} allalaaditud',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Väljaande vara',
			'downloadNotifDescription' => 'Teavitab kasutajat äpi allalaadimise edenemisest',
			'noAPKFound' => 'APK-d ei leitud',
			'noVersionDetection' => 'Versiooni tuvastamine puudub',
			'categorize' => 'Kategoriseeri',
			'categories' => 'Kategooriad',
			'category' => 'Kategooria',
			'noCategory' => 'Kategooria puudub',
			'noCategories' => 'Kategooriad puuduvad',
			'categoryDeleteQuestion' => 'Kustutada kategooriad?',
			'categoryDeleteWarning' => 'Kõik kustutatud kategooriate äpid seatakse kategoriseerimataks.',
			'addCategory' => 'Lisa kategooria',
			'label' => 'Silt',
			'language' => 'Keel',
			'copiedToClipboard' => 'Kopeeritud lõikelauale',
			'storagePermissionDenied' => 'Salvestusruumi luba keelatud',
			'selectedCategorizeWarning' => 'See asendab kõik olemasolevad kategooria seaded valitud äppide jaoks.',
			'filterAPKsByRegEx' => 'Filtreeri APK-sid regulaaravaldisega',
			'removeFromUpdatium' => 'Eemalda Updatiumist',
			'uninstallFromDevice' => 'Desinstalli seadmest',
			'onlyWorksWithNonVersionDetectApps' => 'Töötab ainult versiooni tuvastamiseta äppide puhul.',
			'releaseDateAsVersion' => 'Kasuta väljaande kuupäeva versiooni stringina',
			'releaseTitleAsVersion' => 'Kasuta väljaande pealkirja versiooni stringina',
			'releaseDateAsVersionExplanation' => 'Seda valikut tuleks kasutada ainult äppide puhul, kus versiooni tuvastamine ei tööta korrektselt, kuid väljaande kuupäev on saadaval.',
			'changes' => 'Muudatused',
			'releaseDate' => 'Väljaande kuupäev',
			'importFromURLsInFile' => 'Impordi URL-id failist (nagu OPML)',
			'versionDetectionExplanation' => 'Võrdle versiooni stringiga operatsioonisüsteemi tuvastatud versiooni',
			'versionDetection' => 'Versiooni tuvastamine',
			'standardVersionDetection' => 'Standardne versiooni tuvastamine',
			'groupByCategory' => 'Grupeeri kategooria järgi',
			'listView' => 'Loendivaade',
			'gridView' => 'Ruudustikuvaade',
			'autoApkFilterByArch' => 'Proovi filtreerida APK-sid CPU-arhitektuuri järgi, kui võimalik',
			'autoLinkFilterByArch' => 'Proovi filtreerida linke CPU-arhitektuuri järgi, kui võimalik',
			'overrideSource' => 'Tühista allikas',
			'dontShowAgain' => 'Ära näita uuesti',
			'dontShowTrackOnlyWarnings' => 'Ära näita \'ainult jälgimise\' hoiatusi',
			'dontShowAPKOriginWarnings' => 'Ära näita APK päritolu hoiatusi',
			'moveNonInstalledAppsToBottom' => 'Liiguta installimata äpid äpide vaate alumisse ossa',
			'gitlabPATLabel' => 'GitLabi isiklik juurdepääsutunnus',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Programmist',
			'requiresCredentialsInSettings' => '{} vajab lisandmed (seadetes)',
			'checkOnStart' => 'Kontrolli uuendusi käivitamisel',
			'safeMode' => 'Turvarežiim',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Rakenduse lisamine on turvarežiimis keelatud',
			'tryInferAppIdFromCode' => 'Proovi tuletada appi ID lähtekoodist',
			'removeOnExternalUninstall' => 'Eemalda automaatselt väliselt desinstallitud äpid',
			'pickHighestVersionCode' => 'Automaatselt vali kõrgeima versioonikoodiga APK',
			'checkUpdateOnDetailPage' => 'Kontrolli uuendusi äpi detaillehe avamisel',
			'disablePageTransitions' => 'Keela lehe üleminekute animatsioonid',
			'reversePageTransitions' => 'Pööra lehe üleminekute animatsioonid ümber',
			'minStarCount' => 'Minimaalne tärnide arv',
			'addInfoBelow' => 'Lisa see info alla.',
			'addInfoInSettings' => 'Lisa see info seadetes.',
			'githubSourceNote' => 'GitHub\'i piirangutest saab vältida API võtme kasutamisega.',
			'sortByLastLinkSegment' => 'Sorteeri ainult lingi viimase segmendi järgi',
			'filterReleaseNotesByRegEx' => 'Filtreeri väljaande märkmeid regulaaravaldisega',
			'customLinkFilterRegex' => 'Kohandatud APK lingi filter regulaaravaldisega (vaikimisi \'.apk$\')',
			'appsPossiblyUpdated' => 'Äpi uuendamise katse',
			'appsPossiblyUpdatedNotifDescription' => 'Teavitab kasutajat, et ühe või enama äpi uuendused võidi rakendada taustal',
			'xWasPossiblyUpdatedToY' => '{} võidi uuendada versioonile {}.',
			'enableBackgroundUpdates' => 'Luba taustauuendused',
			'backgroundUpdateReqsExplanation' => 'Taustauuendused ei pruugi olla võimalikud kõikide äppide puhul.',
			'backgroundUpdateLimitsExplanation' => 'Taustalise installimise edu saab kindlaks teha ainult Updatiumi avamisel.',
			'verifyLatestTag' => 'Kinnita \'latest\' silt',
			'intermediateLinkRegex' => 'Filtreeri \'vahelingu\' lingi külastamiseks',
			'filterByLinkText' => 'Filtreeri linke lingi teksti järgi',
			'matchLinksOutsideATags' => 'Otsi linke <a> siltidest väljaspool',
			'intermediateLinkNotFound' => 'Vahelingu linki ei leitud',
			'intermediateLink' => 'Vahelingu link',
			'exemptFromBackgroundUpdates' => 'Vabasta taustauuendustest (kui lubatud)',
			'bgUpdatesOnWiFiOnly' => 'Keela taustauuendused, kui pole Wi-Fi võrgus',
			'bgUpdatesWhileChargingOnly' => 'Keela taustauuendused, kui ei lae',
			'autoSelectHighestVersionCode' => 'Automaatselt vali kõrgeima versioonikoodiga APK',
			'versionExtractionRegEx' => 'Versiooni stringi eraldamise RegEx',
			'trimVersionString' => 'Kärbi versiooni stringi RegEx-iga',
			'matchGroupToUseForX' => 'Kasutatav vaste grupp "{}" jaoks',
			'matchGroupToUse' => 'Kasutatav vaste grupp versiooni stringi eraldamise RegEx-ile',
			'highlightTouchTargets' => 'Tõsta vähem ilmsed puutepunktid esile',
			'pickExportDir' => 'Vali ekspordi kataloog',
			'autoExportOnChanges' => 'Automaatselt ekspordi muudatuste korral',
			'includeSettings' => 'Kaasa seaded',
			'filterVersionsByRegEx' => 'Filtreeri versioone regulaaravaldisega',
			'trySelectingSuggestedVersionCode' => 'Proovi valida soovitatud versioonikoodiga APK',
			'dontSortReleasesList' => 'Säilita väljaannete järjekord API-st',
			'reverseSort' => 'Pööra sortimine ümber',
			'takeFirstLink' => 'Võta esimene link',
			'skipSort' => 'Jäta sortimine vahele',
			'debugMenu' => 'Silumismenüü',
			'bgTaskStarted' => 'Taustatöö alustatud - vaadake logisid.',
			'runBgCheckNow' => 'Käivita taustauuenduste kontroll kohe',
			'versionExtractWholePage' => 'Rakenda versiooni stringi eraldamise RegEx kogu lehele',
			'installing' => 'Installimine',
			'skipUpdateNotifications' => 'Jäta uuenduste teavitused vahele',
			'updatesAvailableNotifChannel' => 'Uuendusi saadaval',
			'appsUpdatedNotifChannel' => 'Äpid uuendatud',
			'appsPossiblyUpdatedNotifChannel' => 'Äpi uuendamise katse',
			'errorCheckingUpdatesNotifChannel' => 'Viga uuenduste kontrollimisel',
			'appsRemovedNotifChannel' => 'Äpid eemaldatud',
			'downloadingXNotifChannel' => '{} allalaadimine',
			'completeAppInstallationNotifChannel' => 'Lõpeta äpi installimine',
			'checkingForUpdatesNotifChannel' => 'Uuenduste kontrollimine',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Kontrolli uuendusi ainult installitud ja ainult jälgitavate äppide jaoks',
			'supportFixedAPKURL' => 'Toeta fikseeritud APK URL-e',
			'selectX' => 'Vali {}',
			'parallelDownloads' => 'Luba paralleelsed allalaadimised',
			'useShizuku' => 'Kasuta Shizuku või Sui installimiseks',
			'shizukuBinderNotFound' => 'Shizuku teenus ei tööta',
			'shizukuOld' => 'Vana Shizuku versioon (<11) - uuendage see',
			'shizukuOldAndroidWithADB' => 'Shizuku töötab Android < 8.1 ADB-ga - uuendage Android või kasutage hoopis Sui-t',
			'shizukuPretendToBeGooglePlay' => 'Määra Google Play installimise allikaks (kui Shizuku\'t kasutatakse)',
			'useSystemFont' => 'Kasuta süsteemi fonti',
			'useVersionCodeAsOSVersion' => 'Kasuta äpi versioonikoodi operatsioonisüsteemi tuvastatud versioonina',
			'requestHeader' => 'Päringu päis',
			'useLatestAssetDateAsReleaseDate' => 'Kasuta viimase vara üleslaadimist väljaande kuupäevana',
			'defaultPseudoVersioningMethod' => 'Vaikimisi pseudo-versioonimise meetod',
			'partialAPKHash' => 'Osaline APK räsi',
			'APKLinkHash' => 'APK lingi räsi',
			'directAPKLink' => 'Otsene APK link',
			'pseudoVersionInUse' => 'Pseudo-versioon on kasutusel',
			'installedVersion' => 'Installitud',
			'installed' => 'Installitud',
			'notInstalledApps' => 'Paigaldamata',
			'latest' => 'Viimane',
			'invertRegEx' => 'Pööra regulaaravaldis ümber',
			'note' => 'Märkus',
			'selfHostedNote' => '"{}" rippmenüüd saab kasutada iseseisvate/kohandatud allikate instantsidele juurdepääsuks.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK-d ei suudetud parsida (ühildumatu või osaline allalaadimine)',
			'beforeNewInstallsShareToAppVerifier' => 'Jaga uusi äppe AppVerifier-iga (kui saadaval)',
			'appVerifierInstructionToast' => 'Jaga AppVerifier-iga, naaske siia, kui olete valmis.',
			'wiki' => 'Abi/wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Luba ebaturvalised HTTP päringud',
			'stayOneVersionBehind' => 'Jää ühe versiooni viimasele järgnemaks',
			'useFirstApkOfVersion' => 'Automaatselt vali mitme APK seast esimene',
			'refreshBeforeDownload' => 'Värskenda äpi detaile enne allalaadimist',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nimi',
			'smartname' => 'Nimi (nutikas)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sortimismeetod',
			'welcome' => 'Tere tulemast',
			'batteryOptimizationNote' => 'Pange tähele, et taustalised allalaadimised võivad töötada usaldusväärsemalt, kui lülitate Updatiumi seadetes üle "taustateenusele" ja/või keelate Updatiumile oma operatsioonisüsteemi seadetes aku optimeerimine.',
			'fileDeletionError' => 'Faili kustutamine ebaõnnestus (proovige kustutada käsitsi ja proovige uuesti): "{}"',
			'foregroundService' => 'Updatiumi taustateenus',
			'foregroundServiceExplanation' => 'Kasuta taustateenust uuenduste kontrollimiseks (usaldusväärsem, tarbib rohkem energiat)',
			'fgServiceNotice' => 'See teavitus on vajalik taustauuenduste kontrollimiseks (seda saab peita operatsioonisüsteemi seadetes)',
			'excludeSecrets' => 'Välista saladused',
			'GHReqPrefix' => '\'omeritzics/Updatium\' instants GitHub päringute jaoks',
			'includeZips' => 'Kaasa ZIP failid',
			'zippedApkFilterRegEx' => 'Filtreeri APK-sid ZIP-i sees',
			'multipleSigners' => 'Mitu allkirjastajat',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: 'Eemalda äpp?', other: 'Eemalda äpid?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: 'Liiga palju päringuid (piirangutatud) - proovige uuesti {count} minuti pärast', other: 'Liiga palju päringuid (piirangutatud) - proovige uuesti {count} minuti pärast', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: 'Taustauuenduste kontrollimisel tekkis {error}, kavandatakse uuesti kontroll {count} minuti pärast', other: 'Taustauuenduste kontrollimisel tekkis {error}, kavandatakse uuesti kontroll {count} minuti pärast', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: 'Taustauuenduste kontroll leidis {count} uuenduse - teavitab kasutajat vajadusel', other: 'Taustauuenduste kontroll leidis {count} uuendust - teavitab kasutajat vajadusel', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{count} Äpp', other: '{count} Äppi', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{count} URL', other: '{count} URL-i', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{count} minut', other: '{count} minutit', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{count} tund', other: '{count} tundi', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{count} päev', other: '{count} päeva', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: 'Kustutatud {n} logi (enne = {before}, pärast = {after})', other: 'Kustutatud {n} logi (enne = {before}, pärast = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{app} ja 1 veel äpp on uuendusi.', other: '{app} ja {count} veel äppi on uuendusi.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{app} ja 1 veel äpp uuendati.', other: '{app} ja {count} veel äppi uuendati.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{app} ja 1 veel äpi uuendamine ebaõnnestus.', other: '{app} ja {count} veel äpi uuendamine ebaõnnestus.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{app} ja 1 veel äpp võidi uuendada.', other: '{app} ja {count} veel äppi võidi uuendada.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: '{count} APK', other: '{count} APK-d', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('et'))(n, one: 'Sertifikaadi räsi', other: 'Sertifikaadi räsid', ), 
			'securityDisclaimerTitle' => 'Turvalisuse ja juriidiline lahtiütlus',
			'license' => 'Litsents',
			'licenseText' => 'See rakendus levitatakse GPL v3 litsentsi alusel.',
			'disclaimer' => 'Lahtiütlus',
			'disclaimerText' => 'See rakendus ei levita, ei majuta ega kinnita ühtegi välist rakendust. Kasutaja kannab täielikut vastutust kõigi selle tööriistaga installitud tarkvara turvalisuse ja seaduslikkuse eest.\n\nhttps://github.com/omeritzics/Updatium on ainus ametlik koht Updatiumi allalaadimiseks - on tugevasti soovitatud mitte alla laadida teist kohtadest, kuna allalaadimine mitteametlikelt allikatest ei ole turvaline.',
			'privacy' => 'Privaatsus',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Nõustu & Jätka',
			'decline' => 'Keeldu',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Kas meeldib Updatium?',
			'githubStarPromptContent' => 'Updatium on vabatahtlik avatud lähtekoodiga kogukonnaprojekt, mille arendan oma vabal ajal. Kui soovid projekti toetada, kaalu palun GitHubis tärni andmist, et aidata meil jõuda enamate kasutajate ja panustajateni. Teid ei selle kohta enam meelditakse. Aitäh ette! :)',
			'githubStarPromptStar' => 'Anna tärn',
			'githubStarPromptDontShowAgain' => 'Ära näita enam',
			'sourceCode' => 'Lähtekood',
			'developedBy' => 'Arendanud',
			'appDescription' => 'Kohandatav Android-rakenduste kataloog, mis võimaldab teil värskendada oma rakendusi otse nende APK-allikatest.',
			'safeModeEnabled' => 'Turvarežiim on sisse lülitatud',
			'safeModeDisabled' => 'Turvarežiim on välja lülitatud',
			'safeModeDisable' => 'Keela turvarežiim',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Turvarežiimi haldus',
			'safeModeSetupDescription' => 'Seadke parool, et lubada turvarežiimi. Kui see on lubatud, siis turvarežiim takistab uute äppide lisamist ja seda saab keelata ainult parooliga.',
			'safeModeToggleDescription' => 'Sisestage parool, et lülitada turvarežiim sisse või välja.',
			'safeModeSetPassword' => 'Seadke parool',
			'safeModeConfirmPassword' => 'Kinnitage parool',
			'safeModeEnterPassword' => 'Sisestage parool',
			'safeModePasswordHint' => 'Vähemalt 8 tähemärki',
			'safeModePasswordTooShort' => 'Parool peab olema vähemalt 8 tähemärki pikk',
			'safeModePasswordMismatch' => 'Paroolid ei ühti',
			'safeModePasswordIncorrect' => 'Vale parool',
			'safeModePasswordError' => 'Viga parooli seadmiseks. Proovige uuesti.',
			'safeModeEnable' => 'Luba turvarežiim',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} puudutusi jäänud, et keelata turvarežiim',
			'safeModeEnabledHint' => 'Turvarežiim on sisse lülitatud. Puudutage mitu korda versiooninumbrit Sätetes, et keelata.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Sain aru',
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
