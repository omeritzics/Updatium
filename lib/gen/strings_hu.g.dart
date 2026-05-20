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
class TranslationsHu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hu,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hu>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHu _root = this; // ignore: unused_field

	@override 
	TranslationsHu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHu(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Érvénytelen a(z) {} alkalmazás webcíme';
	@override String get noReleaseFound => 'Nem található megfelelő kiadás';
	@override String get noVersionFound => 'Nem sikerült meghatározni a kiadás verzióját';
	@override String get urlMatchesNoSource => 'A webcím nem egyezik egyetlen ismert forrással sem';
	@override String get cantInstallOlderVersion => 'Nem telepíthető egy alkalmazás régebbi verziója';
	@override String get appIdMismatch => 'A letöltött csomagazonosító nem egyezik a meglévő alkalmazás azonosítójával';
	@override String get functionNotImplemented => 'Ebben az ágban nincs implementálva ez a funkció';
	@override String get placeholder => 'Helyőrző';
	@override String get someErrors => 'Néhány hiba történt';
	@override String get unexpectedError => 'Váratlan hiba';
	@override String get ok => 'OK';
	@override String get and => 'és';
	@override String get githubPATLabel => 'GitHub személyes hozzáférési token';
	@override String get includePrereleases => 'Tartalmazza az előzetes kiadásokat';
	@override String get fallbackToOlderReleases => 'Visszatérés a régebbi kiadásokhoz';
	@override String get filterReleaseTitlesByRegEx => 'Kiadás címeinek szűrése reguláris kifejezéssel';
	@override String get invalidRegEx => 'Érvénytelen reguláris kifejezés';
	@override String get noDescription => 'Nincs leírás';
	@override String get cancel => 'Mégse';
	@override String get kContinue => 'Folytatás';
	@override String get requiredInBrackets => '(Szükséges)';
	@override String get dropdownNoOptsError => 'HIBA: A LEGÖRDÜLŐ LISTÁNAK LEGALÁBB EGY KIVÁLASZTHATÓ BEÁLLÍTÁSSAL KELL RENDELKEZNIE';
	@override String get color => 'Szín';
	@override String get standard => 'Általános';
	@override String get custom => 'Egyéni';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You színek használata';
	@override String get githubStarredRepos => 'Csillagozott GitHub-tárolók';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Felhasználónév';
	@override String get wrongArgNum => 'A megadott argumentumok száma nem megfelelő';
	@override String get xIsTrackOnly => 'A(z) {} csak nyomon követhető';
	@override String get source => 'Forrás';
	@override String get app => 'Alkalmazás';
	@override String get appsFromSourceAreTrackOnly => 'Az ebből a forrásból származó alkalmazások „csak nyomon követhetők”.';
	@override String get youPickedTrackOnly => '„Csak nyomon követés” beállítást választotta.';
	@override String get trackOnlyAppDescription => 'Az alkalmazás frissítéseit nyomon követi, de az Updatium nem tudja letölteni vagy telepíteni.';
	@override String get cancelled => 'Visszavonva';
	@override String get appAlreadyAdded => 'Az alkalmazás már hozzá van adva';
	@override String get alreadyUpToDateQuestion => 'Az alkalmazás már naprakész?';
	@override String get addApp => 'Hozzáadás';
	@override String get appSourceURL => 'Alkalmazás forrásának webcíme';
	@override String get error => 'Hiba';
	@override String get add => 'Hozzáadás';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Keresés (csak bizonyos források)';
	@override String get search => 'Keresés';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'További lehetőségek a következőhöz: {}';
	@override String get supportedSources => 'Támogatott források';
	@override String get trackOnlyInBrackets => '(Csak nyomon követés)';
	@override String get searchableInBrackets => '(Kereshető)';
	@override String get appsString => 'Alkalmazások';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Üdvözlünk!';
	@override String get noAppsSubtext => 'Az első alkalmazás hozzáadásához koppintson alul a \'Hozzáadás\' gombra.';
	@override String get noAppsForFilter => 'Nincsenek alkalmazások a szűrőhöz';
	@override String get byX => 'Fejlesztő: {}';
	@override String get percentProgress => 'Folyamat: {}%';
	@override String get pleaseWait => 'Kis türelmet';
	@override String get updateAvailable => 'Frissítés érhető el';
	@override String get notInstalled => 'Nem telepített';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pszeudoverzió';
	@override String get selectAll => 'Összes kiválasztása';
	@override String get deselectX => 'A(z) {} kiválasztásának elvetése';
	@override String get xWillBeRemovedButRemainInstalled => 'A(z) {} el lesz távolítva az Updatiumból, de továbbra is telepítve marad az eszközön.';
	@override String get removeSelectedAppsQuestion => 'Biztosan eltávolítja a kiválasztott alkalmazásokat?';
	@override String get removeSelectedApps => 'Kiválasztott alkalmazások eltávolítása';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} frissítése';
	@override String get installX => '{} telepítése';
	@override String get markXTrackOnlyAsUpdated => 'Megjelölés: {}\n(Csak nyomon követés)\nFrissítettként';
	@override String get changeX => '{}-változás';
	@override String get installUpdateApps => 'Alkalmazások telepítése/frissítése';
	@override String get installUpdateSelectedApps => 'Kiválasztott alkalmazások telepítése/frissítése';
	@override String get markXSelectedAppsAsUpdated => 'Biztosan megjelöli a(z) {} kiválasztott alkalmazást frissítettként?';
	@override String get no => 'Nem';
	@override String get yes => 'Igen';
	@override String get markSelectedAppsUpdated => 'Kiválasztott alkalmazások megjelölése frissítettként';
	@override String get pinToTop => 'Kitűzés felülre';
	@override String get unpinFromTop => 'Kitűzés megszüntetése';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Biztosan visszaállítja a kiválasztott alkalmazások telepítési állapotát?';
	@override String get installStatusOfXWillBeResetExplanation => 'A kiválasztott alkalmazások telepítési állapota visszaáll.\n\nEz akkor segíthet, ha az Updatiumban megjelenített alkalmazás-verzió hibás, a frissítések vagy egyéb problémák miatt.';
	@override String get customLinkMessage => 'Ezek a hivatkozások a telepített Updatiummal rendelkező eszközökön működnek';
	@override String get shareAppConfigLinks => 'Alkalmazás-konfiguráció megosztása HTML-hivatkozásként';
	@override String get resetInstallStatus => 'Telepítési állapot visszaállítása';
	@override String get more => 'További';
	@override String get removeOutdatedFilter => 'Elavult alkalmazás-szűrő eltávolítása';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Csak az elavult alkalmazások megjelenítése';
	@override String get filter => 'Szűrő';
	@override String get filterApps => 'Alkalmazások szűrése';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Név';
	@override String get author => 'Szerző';
	@override String get upToDateApps => 'Naprakész alkalmazások';
	@override String get nonInstalledApps => 'Nem telepített alkalmazások';
	@override String get importExport => 'Adatmozgatás';
	@override String get settings => 'Beállítások';
	@override String get exportedTo => 'Exportálva ide: {}';
	@override String get updatiumExport => 'Updatium-adatok exportálása';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Hibás bemenet';
	@override String get importedX => 'Importálva innen: {}';
	@override String get updatiumImport => 'Updatium-adatok importálása';
	@override String get importFromURLList => 'Importálás webcímlistából';
	@override String get searchQuery => 'Keresési lekérdezés';
	@override String get appURLList => 'Alkalmazás-webcímlista';
	@override String get line => 'Sor';
	@override String get searchX => '{} keresése';
	@override String get noResults => 'Nincs találat';
	@override String get importX => '{} importálása';
	@override String get importedAppsIdDisclaimer => 'Előfordulhat, hogy az importált alkalmazások helytelenül „Nincs telepítve” jelzéssel jelennek meg.\nA probléma megoldásához telepítse újra őket az Updatiumon keresztül.\nEz nem érinti az alkalmazásadatokat.\n\nCsak a webcímekre és a harmadik féltől származó importálási módszerekre vonatkozik.';
	@override String get importErrors => 'Importálási hibák';
	@override String get importedXOfYApps => '{}/{} alkalmazás importálva.';
	@override String get followingURLsHadErrors => 'A következő webcímek hibákat tartalmaztak:';
	@override String get selectURL => 'Webcím kiválasztása';
	@override String get selectURLs => 'Webcímek kiválasztása';
	@override String get pick => 'Kiválasztás';
	@override String get theme => 'Téma';
	@override String get dark => 'Sötét';
	@override String get light => 'Világos';
	@override String get followSystem => 'Rendszerbeállítás használata';
	@override String get followSystemThemeExplanation => 'A következő rendszertéma csak harmadik féltől származó alkalmazások használatával lehetséges';
	@override String get useBlackTheme => 'Teljesen fekete sötét téma használata';
	@override String get appSortBy => 'Rendezési szempont';
	@override String get authorName => 'Szerző/Név';
	@override String get nameAuthor => 'Név/Szerző';
	@override String get asAdded => 'Hozzáadás dátuma';
	@override String get appSortOrder => 'Rendezési sorrend';
	@override String get ascending => 'Növekvő';
	@override String get descending => 'Csökkenő';
	@override String get bgUpdateCheckInterval => 'Időtartam a frissítések háttérellenőrzése között';
	@override String get neverManualOnly => 'Soha – csak kézi';
	@override String get appearance => 'Megjelenés';
	@override String get pinUpdates => 'Frissítések kitűzése az alkalmazásnézet tetejére';
	@override String get updates => 'Frissítések';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Forrásspecifikus';
	@override String get appSource => 'Alkalmazás forrása';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Nincsenek naplók';
	@override String get appLogs => 'Alkalmazásnaplók';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Bezárás';
	@override String get share => 'Megosztás';
	@override String get appNotFound => 'Az alkalmazás nem található';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-adat';
	@override String get pickAnAPK => 'Válasszon ki egy APK-t';
	@override String get appHasMoreThanOnePackage => 'A(z) {} egynél több csomaggal rendelkezik:';
	@override String get deviceSupportsXArch => 'Ez az eszköz támogatja a(z) {} CPU-architektúrát.';
	@override String get deviceSupportsFollowingArchs => 'Ez az eszköz a következő CPU-architektúrákat támogatja:';
	@override String get warning => 'Figyelem';
	@override String get sourceIsXButPackageFromYPrompt => 'Az alkalmazás forrása a(z) „{}-tároló”, de a kiadási csomag innen származik: „{}”. Biztosan folytatja?';
	@override String get updatesAvailable => 'Frissítések érhetők el';
	@override String get updatesAvailableNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több, az Updatium által nyomon követett alkalmazáshoz frissítések állnak rendelkezésre';
	@override String get noNewUpdates => 'Nincsenek új frissítések.';
	@override String get xHasAnUpdate => 'A(z) {} frissítést kapott.';
	@override String get appsUpdated => 'Alkalmazások frissítve';
	@override String get appsNotUpdated => 'Nem sikerült frissíteni az alkalmazásokat';
	@override String get appsUpdatedNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás frissítése a háttérben történt.';
	@override String get xWasUpdatedToY => 'A(z) {} frissítve lett a következőre: {}.';
	@override String get xWasNotUpdatedToY => 'Nem sikerült frissíteni a következőt: {}, erre: {}.';
	@override String get errorCheckingUpdates => 'Hiba a frissítések ellenőrzésekor';
	@override String get errorCheckingUpdatesNotifDescription => 'Értesítés, amely akkor jelenik meg, amikor a frissítések ellenőrzése a háttérben nem sikerül';
	@override String get appsRemoved => 'Alkalmazások eltávolítva';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás egy betöltés közbeni hiba miatt el lesz(nek) távolítva';
	@override String get xWasRemovedDueToErrorY => 'A(z) {} el lett távolítva a következő hiba miatt: {}';
	@override String get completeAppInstallation => 'Teljes alkalmazástelepítés';
	@override String get updatiumMustBeOpenToInstallApps => 'Az alkalmazások telepítéséhez az Updatiumnak megnyitva kell lennie';
	@override String get completeAppInstallationNotifDescription => 'Megkéri a felhasználót, hogy térjen vissza az Updatiumhoz, hogy befejezze az alkalmazás telepítését';
	@override String get checkingForUpdates => 'Frissítések ellenőrzése';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Átmeneti értesítés, amely a frissítések ellenőrzésekor jelenik meg';
	@override String get pleaseAllowInstallPerm => 'Engedélyezze az Updatiumnak az alkalmazások telepítését';
	@override String get trackOnly => 'Csak nyomon követés';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Hiba {}';
	@override String get versionCorrectionDisabled => 'Verziókorrekció letiltva (úgy tűnik, hogy a bővítmény nem működik)';
	@override String get unknown => 'Ismeretlen';
	@override String get none => 'Semmi';
	@override String get all => 'Összes';
	@override String get never => 'Soha';
	@override String get latestVersion => 'Legújabb verzió';
	@override String get installedVersionX => 'Telepített verzió: {}';
	@override String get lastUpdateCheckX => 'Frissítések utoljára ellenőrizve: {}';
	@override String get remove => 'Eltávolítás';
	@override String get quickLinks => 'Gyors linkek';
	@override String get yesMarkUpdated => 'Igen, megjelölés frissítettként';
	@override String get fdroid => 'F-Droid hivatalos';
	@override String get appIdOrName => 'Alkalmazás-azonosító vagy név';
	@override String get appId => 'Alkalmazás-azonosító';
	@override String get appWithIdOrNameNotFound => 'Nem található alkalmazás ezzel az azonosítóval vagy névvel';
	@override String get reposHaveMultipleApps => 'Egyes tárolók több alkalmazást is tartalmazhatnak';
	@override String get fdroidThirdPartyRepo => 'F-Droid-tároló (harmadik fél)';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Telepítés';
	@override String get markInstalled => 'Telepítettnek jelölés';
	@override String get update => 'Frissítés';
	@override String get updated => 'Frissített';
	@override String get markUpdated => 'Frissítettnek jelölés';
	@override String get download => 'Download';
	@override String get additionalOptions => 'További beállítások';
	@override String get disableVersionDetection => 'Verziófelismerés letiltása';
	@override String get noVersionDetectionExplanation => 'Ezt a beállítást csak olyan alkalmazásoknál szabad használni, ahol a verziófelismerés nem működik megfelelően.';
	@override String get downloadingX => '{} letöltése';
	@override String get downloadX => '{} letöltése';
	@override String get downloadedX => '{} letöltve';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Kiadási csomag';
	@override String get downloadNotifDescription => 'Értesíti a felhasználót az alkalmazás letöltésének előrehaladásáról';
	@override String get noAPKFound => 'Nem található APK';
	@override String get noVersionDetection => 'Nincs verziófelismerés';
	@override String get categorize => 'Kategorizálás';
	@override String get categories => 'Kategóriák';
	@override String get category => 'Kategória';
	@override String get noCategory => 'Nincs kategória';
	@override String get noCategories => 'Nincsenek kategóriák';
	@override String get categoryDeleteQuestion => 'Biztosan törli a kategóriákat?';
	@override String get categoryDeleteWarning => 'A törölt kategóriákban lévő összes alkalmazás kategorizálatlanná válik.';
	@override String get addCategory => 'Kategória hozzáadása';
	@override String get label => 'Címke';
	@override String get language => 'Nyelv';
	@override String get copiedToClipboard => 'Másolva a vágólapra';
	@override String get storagePermissionDenied => 'Tárhely engedély megtagadva';
	@override String get selectedCategorizeWarning => 'Ez felváltja a kiválasztott alkalmazások meglévő kategória-beállításait.';
	@override String get filterAPKsByRegEx => 'APK-k szűrése reguláris kifejezéssel';
	@override String get removeFromUpdatium => 'Eltávolítás az Updatiumból';
	@override String get uninstallFromDevice => 'Eltávolítás az eszközről';
	@override String get onlyWorksWithNonVersionDetectApps => 'Csak azoknál az alkalmazásoknál működik, amelyeknél a verziófelismerés le van tiltva.';
	@override String get releaseDateAsVersion => 'Kiadás dátumának használata verzió-karakterláncként';
	@override String get releaseTitleAsVersion => 'Kiadás címének használata verzió-karakterláncként';
	@override String get releaseDateAsVersionExplanation => 'Ezt a beállítást csak olyan alkalmazásoknál szabad használni, ahol a verziófelismerés nem működik megfelelően, de elérhető a kiadás dátuma.';
	@override String get changes => 'Változáslista';
	@override String get releaseDate => 'Kiadás dátuma';
	@override String get importFromURLsInFile => 'Importálás fájlban található webcímből (például: OPML)';
	@override String get versionDetectionExplanation => 'Verzió-karakterlánc egyeztetése az rendszer által felismert verzióval';
	@override String get versionDetection => 'Verziófelismerés';
	@override String get standardVersionDetection => 'Alapértelmezett verziófelismerés';
	@override String get groupByCategory => 'Csoportosítás kategória alapján';
	@override String get listView => 'Lista nézet';
	@override String get gridView => 'Rács nézet';
	@override String get autoApkFilterByArch => 'APK-k CPU-architektúra szerinti szűrése, ha lehetséges';
	@override String get autoLinkFilterByArch => 'Hivatkozások CPU-architektúra szerinti szűrése, ha lehetséges';
	@override String get overrideSource => 'Forrás felülírása';
	@override String get dontShowAgain => 'Ne jelenítse meg ezt többé';
	@override String get dontShowTrackOnlyWarnings => '„Csak nyomon követés” figyelmeztetés elrejtése';
	@override String get dontShowAPKOriginWarnings => 'APK eredetére vonatkozó figyelmeztetések elrejtése';
	@override String get moveNonInstalledAppsToBottom => 'Nem telepített alkalmazások áthelyezése az alkalmazásnézet aljára';
	@override String get gitlabPATLabel => 'GitLab személyes hozzáférési token';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Névjegy';
	@override String get requiresCredentialsInSettings => 'A(z) {} alkalmazásnak további hitelesítő adatokra van szüksége (a beállításokban)';
	@override String get checkOnStart => 'Frissítések ellenőrzése az alkalmazás megnyitásakor';
	@override String get safeMode => 'Biztonságos mód';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Alkalmazás hozzáadása le van tiltva biztonságos módban';
	@override String get tryInferAppIdFromCode => 'Alkalmazás azonosítójának kikövetkeztetése a forráskódból, ha lehetséges';
	@override String get removeOnExternalUninstall => 'Külsőleg eltávolított alkalmazások automatikus eltávolítása';
	@override String get pickHighestVersionCode => 'Legmagasabb verziókódú APK automatikus kiválasztása';
	@override String get checkUpdateOnDetailPage => 'Frissítések ellenőrzése az alkalmazás részleteit tartalmazó oldal megnyitásakor';
	@override String get disablePageTransitions => 'Lap áttűnési animációk letiltása';
	@override String get reversePageTransitions => 'Fordított lap áttűnési animációk';
	@override String get minStarCount => 'Minimális csillagozási szám';
	@override String get addInfoBelow => 'Adja hozzá ezt az információt alább.';
	@override String get addInfoInSettings => 'Adja hozzá ezt az információt a beállításokban.';
	@override String get githubSourceNote => 'A GitHub/GitLab lekérdezés-korlátozás elkerülhető egy API-kulcs használatával.';
	@override String get sortByLastLinkSegment => 'Rendezés csak a hivatkozás utolsó szakasza szerint';
	@override String get filterReleaseNotesByRegEx => 'Kiadási megjegyzések szűrése reguláris kifejezéssel';
	@override String get customLinkFilterRegex => 'Egyéni APK-hivatkozásszűrő reguláris kifejezéssel (Alapértelmezett „.apk$”)';
	@override String get appsPossiblyUpdated => 'Megkísérelt alkalmazás-frissítések';
	@override String get appsPossiblyUpdatedNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás frissítése lehetséges a háttérben';
	@override String get xWasPossiblyUpdatedToY => 'A(z) {} frissülhetett a következőre: {}.';
	@override String get enableBackgroundUpdates => 'Háttérfrissítések engedélyezése';
	@override String get backgroundUpdateReqsExplanation => 'Előfordulhat, hogy nem minden alkalmazásnál lehetséges a háttérbeli frissítés.';
	@override String get backgroundUpdateLimitsExplanation => 'A háttérben történő telepítés sikeressége csak az Updatium megnyitásakor állapítható meg.';
	@override String get verifyLatestTag => '„Legújabb” címke ellenőrzése';
	@override String get intermediateLinkRegex => 'Szűrő egy „köztes” hivatkozás felkereséséhez';
	@override String get filterByLinkText => 'Hivatkozások szűrése hivatkozásszöveg alapján';
	@override String get matchLinksOutsideATags => 'Hivatkozások keresése az <a> címkéken kívül is';
	@override String get intermediateLinkNotFound => 'Nem található köztes hivatkozás';
	@override String get intermediateLink => 'Köztes hivatkozás';
	@override String get exemptFromBackgroundUpdates => 'Mentes a háttérben történő frissítések alól (ha engedélyezett)';
	@override String get bgUpdatesOnWiFiOnly => 'Háttérfrissítések letiltása, amikor az eszköz nem csatlakozik a Wi-Fi-hez';
	@override String get bgUpdatesWhileChargingOnly => 'Háttérfrissítések letiltása, amikor az eszköz nincs a töltőn';
	@override String get autoSelectHighestVersionCode => 'Legmagasabb verziókódú APK automatikus kiválasztása';
	@override String get versionExtractionRegEx => 'Verzió-karakterlánc kivonatolása reguláris kifejezéssel';
	@override String get trimVersionString => 'Verzió-karakterlánc levágása reguláris kifejezéssel';
	@override String get matchGroupToUseForX => 'A(z) „{}” esetén használandó csoport egyeztetése';
	@override String get matchGroupToUse => 'Verzió-karakterlánc kivonatolásához használandó csoport reguláris kifejezéssel való egyeztetése';
	@override String get highlightTouchTargets => 'Kevésbé egyértelmű érintési pontok kiemelése';
	@override String get pickExportDir => 'Válassza ki a könyvtárat, ahová exportálni szeretne';
	@override String get autoExportOnChanges => 'Automatikus exportálás a változtatások után';
	@override String get includeSettings => 'Tartalmazza a beállításokat';
	@override String get filterVersionsByRegEx => 'Verziók szűrése reguláris kifejezéssel';
	@override String get trySelectingSuggestedVersionCode => 'Próbálja kiválasztani a „Javasolt” verziókódú APK-t';
	@override String get dontSortReleasesList => 'API-ból származó kiadási sorrend megőrzése';
	@override String get reverseSort => 'Fordított rendezés';
	@override String get takeFirstLink => 'Vegye az első hivatkozást';
	@override String get skipSort => 'Rendezés kihagyása';
	@override String get debugMenu => 'Hibakereső menü';
	@override String get bgTaskStarted => 'A háttérfeladat elindult – ellenőrizze a naplókat.';
	@override String get runBgCheckNow => 'Frissítések ellenőrzése a háttérben most';
	@override String get versionExtractWholePage => '„Verzió-karakterlánc kivonatolása reguláris kifejezéssel” alkalmazása az egész oldalra';
	@override String get installing => 'Telepítés';
	@override String get skipUpdateNotifications => 'Frissítési értesítések kihagyása';
	@override String get updatesAvailableNotifChannel => 'Frissítések érhetők el';
	@override String get appsUpdatedNotifChannel => 'Alkalmazások frissítve';
	@override String get appsPossiblyUpdatedNotifChannel => 'Megkísérelt alkalmazás-frissítések';
	@override String get errorCheckingUpdatesNotifChannel => 'Hiba a frissítések ellenőrzésekor';
	@override String get appsRemovedNotifChannel => 'Eltávolított alkalmazások';
	@override String get downloadingXNotifChannel => 'A(z) {} letöltése';
	@override String get completeAppInstallationNotifChannel => 'Teljes alkalmazás telepítés';
	@override String get checkingForUpdatesNotifChannel => 'Frissítések ellenőrzése';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Csak a telepített és a csak nyomon követhető alkalmazások frissítéseinek ellenőrzése';
	@override String get supportFixedAPKURL => 'Támogatja a rögzített APK-webcímeket';
	@override String get selectX => '{} kiválasztása';
	@override String get parallelDownloads => 'Párhuzamos letöltések engedélyezése';
	@override String get useShizuku => 'Shizuku vagy Sui használata a telepítéshez';
	@override String get shizukuBinderNotFound => 'A Shizuku szolgáltatás nem fut';
	@override String get shizukuOld => 'Régi Shizuku verzió (<11) - frissítse';
	@override String get shizukuOldAndroidWithADB => 'A Shizuku csak Android < 8.1 ADB-vel fut - frissítse az Androidot vagy használja a Suit helyette';
	@override String get shizukuPretendToBeGooglePlay => 'Google Play beállítása telepítési forrásként (ha Shizukut használ)';
	@override String get useSystemFont => 'Rendszer betűtípusának használata';
	@override String get useVersionCodeAsOSVersion => 'Alkalmazás verziókódjának használata a rendszer által felismert verzióként';
	@override String get requestHeader => 'Kérelemfejléc';
	@override String get useLatestAssetDateAsReleaseDate => 'Legutóbbi csomagfeltöltés használata a kiadás dátumaként';
	@override String get defaultPseudoVersioningMethod => 'Alapértelmezett pszeudoverziós módszer';
	@override String get partialAPKHash => 'Részleges APK-kivonat';
	@override String get APKLinkHash => 'APK-hivatkozáskivonat';
	@override String get directAPKLink => 'Közvetlen APK-hivatkozás';
	@override String get pseudoVersionInUse => 'Pszeudo-verzió van használatban';
	@override String get installedVersion => 'Telepített';
	@override String get installed => 'Telepített';
	@override String get notInstalledApps => 'Nem telepített';
	@override String get latest => 'Legújabb';
	@override String get invertRegEx => 'Reguláris kifejezés invertálása';
	@override String get note => 'Megjegyzés';
	@override String get selfHostedNote => 'A(z) „{}” legördülő menü segítségével elérhetővé válnak a bármilyen más forrásból származó saját üzemeltetésű vagy egyéni példányok.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'Az APK-t nem lehetett elemezni (inkompatibilis vagy részleges letöltés)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Új alkalmazások megosztása az AppVerifierrel (ha elérhető)';
	@override String get appVerifierInstructionToast => 'Ossza meg az AppVerifierrel, majd térjen vissza ide, ha kész.';
	@override String get wiki => 'Súgó/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Nem biztonságos HTTP-kérések engedélyezése';
	@override String get stayOneVersionBehind => 'Maradjon egy verzióval a legújabb mögött';
	@override String get useFirstApkOfVersion => 'Legelső APK automatikus kiválasztása, ha több APK is található';
	@override String get refreshBeforeDownload => 'Alkalmazás adatainak frissítése a letöltés előtt';
	@override String get tencentAppStore => 'Tencent Appstore';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'Vivo App Store (CN)';
	@override String get name => 'Név';
	@override String get smartname => 'Név (Okos)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Rendezési eljárás';
	@override String get welcome => 'Üdvözöljük!';
	@override String get batteryOptimizationNote => 'Megjegyzés: A háttérfrissítések megbízhatóbban működhetnek, ha kikapcsolja a rendszer akkumulátor-optimalizálását az Updatium számára.';
	@override String get fileDeletionError => 'Nem sikerült törölni a fájlt (próbálja meg kézzel törölni, majd próbálja meg újra): "{}"';
	@override String get foregroundService => 'Updatium előtér-szolgáltatás';
	@override String get foregroundServiceExplanation => 'Előtér-szolgáltatás használata a frissítések ellenőrzéséhez (megbízhatóbb, de több energiát fogyaszt)';
	@override String get fgServiceNotice => 'Ez az értesítés a háttérben történő frissítésellenőrzéshez szükséges (a rendszer beállításaiban elrejthető).';
	@override String get excludeSecrets => 'Érzékeny adatok (például: személyes hozzáférési tokenek) kihagyása';
	@override String get GHReqPrefix => '„omeritzics/Updatium” példány a GitHub lekérdezéséhez';
	@override String get includeZips => 'ZIP-fájlok belefoglalása';
	@override String get zippedApkFilterRegEx => 'APK-fájlok szűrése a ZIP-fájlon belül';
	@override String get multipleSigners => 'Többen is aláírták';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Biztosan eltávolítja az alkalmazást?',
		other: 'Biztosan eltávolítja az alkalmazásokat?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Túl sok kérés (lekérdezés-korlátozás) – próbálja újra {count} perc múlva,\nvagy adjon meg egy GitHub/GitLab API-kulcsot',
		other: 'Túl sok kérés (lekérdezés-korlátozás) – próbálja újra {count} perc múlva,\nvagy adjon meg egy GitHub/GitLab API-kulcsot',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Frissítések ellenőrzése a háttérben a következőt észlelte: {error} - Újrapróbálkozás: {count} perc múlva',
		other: 'Frissítések ellenőrzése a háttérben a következőt észlelte: {error} - Újrapróbálkozás: {count} perc múlva',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Frissítések ellenőrzése a háttérben {count} frissítést talált - szükség esetén értesíti a felhasználót',
		other: 'Frissítések ellenőrzése a háttérben {count} frissítést talált - szükség esetén értesíti a felhasználót',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '{count} alkalmazás',
		other: '{count} alkalmazás',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '{count} webcím',
		other: '{count} webcím',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '{count} perc',
		other: '{count} perc',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '{count} óra',
		other: '{count} óra',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '{count} nap',
		other: '{count} nap',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '{n} napló törölve lett ({after} után, és {before} előtt)',
		other: '{n} napló törölve lett ({after} után, és {before} előtt)',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'A(z) {app} és 1 további alkalmazás frissítést kapott.',
		other: 'A(z) {app} és {count} további alkalmazás frissítést kapott.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'A(z) {app} és 1 további alkalmazás frissítve.',
		other: 'A(z) {app} és {count} további alkalmazás frissítve.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Nem sikerült frissíteni a következőt: {app}, valamint 1 további alkalmazást.',
		other: 'Nem sikerült frissíteni a következőt: {app}, valamint {count} további alkalmazást.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'A(z) {app}, valamint 1 további alkalmazás sikeresen frissítve.',
		other: 'A(z) {app}, valamint {count} további alkalmazás sikeresen frissítve.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n,
		one: 'Tanúsítványkivonat',
		other: 'Tanúsítványkivonatok',
	);
	@override String get securityDisclaimerTitle => 'Biztonsági és Jogi Felelősségkorlátozás';
	@override String get license => 'Licenc';
	@override String get licenseText => 'Ez az alkalmazás a GPL v3 licenc alatt kerül terjesztésre.';
	@override String get disclaimer => 'Felelősségkorlátozás';
	@override String get disclaimerText => 'Ez az alkalmazás nem terjeszti, nem hosztolja és nem ellenőrzi a külső alkalmazások egyikét sem. A felhasználó viseli a teljes felelősséget az ezen eszközzel telepített bármely szoftver biztonságáért és jogszerűségéért.\n\nhttps://github.com/omeritzics/Updatium az Updatium letöltésének egyetlen hivatalos helye - erősen nem javasolt más helyekről letölteni, mivel a nem hivatalos forrásokból történő letöltés nem biztonságos.';
	@override String get privacy => 'Adatvédelem';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Elfogadás és folytatás';
	@override String get decline => 'Elutasítás';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Élvezi az Updatiumot?';
	@override String get githubStarPromptContent => 'Az Updatium egy önkéntes, nyílt forráskódú közösségi projekt, amelyet a szabadidőmben fejlesztek. Ha szeretné támogatni a projektet, fontolja meg, hogy ad egy csillagot a GitHubon, hogy segítsen nekünk több felhasználót és hozzájárulót elérni. Erről többé nem fogunk emlékeztetni. Előre is köszönjük! :)';
	@override String get githubStarPromptStar => 'Csillag adása';
	@override String get githubStarPromptDontShowAgain => 'Ne mutassa újra';
	@override String get sourceCode => 'Forráskód';
	@override String get developedBy => 'Fejlesztő';
	@override String get appDescription => 'Egy testreszabható Android alkalmazáskatalógus, amely lehetõvé teszi az alkalmazások közvetlen frissítését az APK forrásaikból.';
	@override String get safeModeEnabled => 'Biztonságos mód engedélyezve';
	@override String get safeModeDisabled => 'Biztonságos mód letiltva';
	@override String get safeModeDisable => 'Biztonságos mód letiltása';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Biztonságos mód adminisztráció';
	@override String get safeModeSetupDescription => 'Állítson be egy jelszót a biztonságos mód engedélyezéséhez. Miután engedélyezte, a biztonságos mód megakadályozza az új alkalmazások hozzáadását, és csak a jelszóval lehet letiltani.';
	@override String get safeModeToggleDescription => 'Adja meg a jelszót a biztonságos mód be- vagy kikapcsolásához.';
	@override String get safeModeSetPassword => 'Jelszó beállítása';
	@override String get safeModeConfirmPassword => 'Jelszó megerősítése';
	@override String get safeModeEnterPassword => 'Jelszó megadása';
	@override String get safeModePasswordHint => 'Minimum 8 karakter';
	@override String get safeModePasswordTooShort => 'A jelszónak legalább 8 karakter hosszúnak kell lennie';
	@override String get safeModePasswordMismatch => 'A jelszavak nem egyeznek';
	@override String get safeModePasswordIncorrect => 'Helytelen jelszó';
	@override String get safeModePasswordError => 'Hiba a jelszó beállításakor. Próbálja meg újra.';
	@override String get safeModeEnable => 'Biztonságos mód engedélyezése';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} koppintás maradt a biztonságos mód letiltásához';
	@override String get safeModeEnabledHint => 'A biztonságos mód engedélyezve. Koppintson többször a verziószámra a Beállításokban a letiltáshoz.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Értem';
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

/// The flat map containing all translations for locale <hu>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Érvénytelen a(z) {} alkalmazás webcíme',
			'noReleaseFound' => 'Nem található megfelelő kiadás',
			'noVersionFound' => 'Nem sikerült meghatározni a kiadás verzióját',
			'urlMatchesNoSource' => 'A webcím nem egyezik egyetlen ismert forrással sem',
			'cantInstallOlderVersion' => 'Nem telepíthető egy alkalmazás régebbi verziója',
			'appIdMismatch' => 'A letöltött csomagazonosító nem egyezik a meglévő alkalmazás azonosítójával',
			'functionNotImplemented' => 'Ebben az ágban nincs implementálva ez a funkció',
			'placeholder' => 'Helyőrző',
			'someErrors' => 'Néhány hiba történt',
			'unexpectedError' => 'Váratlan hiba',
			'ok' => 'OK',
			'and' => 'és',
			'githubPATLabel' => 'GitHub személyes hozzáférési token',
			'includePrereleases' => 'Tartalmazza az előzetes kiadásokat',
			'fallbackToOlderReleases' => 'Visszatérés a régebbi kiadásokhoz',
			'filterReleaseTitlesByRegEx' => 'Kiadás címeinek szűrése reguláris kifejezéssel',
			'invalidRegEx' => 'Érvénytelen reguláris kifejezés',
			'noDescription' => 'Nincs leírás',
			'cancel' => 'Mégse',
			'kContinue' => 'Folytatás',
			'requiredInBrackets' => '(Szükséges)',
			'dropdownNoOptsError' => 'HIBA: A LEGÖRDÜLŐ LISTÁNAK LEGALÁBB EGY KIVÁLASZTHATÓ BEÁLLÍTÁSSAL KELL RENDELKEZNIE',
			'color' => 'Szín',
			'standard' => 'Általános',
			'custom' => 'Egyéni',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You színek használata',
			'githubStarredRepos' => 'Csillagozott GitHub-tárolók',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Felhasználónév',
			'wrongArgNum' => 'A megadott argumentumok száma nem megfelelő',
			'xIsTrackOnly' => 'A(z) {} csak nyomon követhető',
			'source' => 'Forrás',
			'app' => 'Alkalmazás',
			'appsFromSourceAreTrackOnly' => 'Az ebből a forrásból származó alkalmazások „csak nyomon követhetők”.',
			'youPickedTrackOnly' => '„Csak nyomon követés” beállítást választotta.',
			'trackOnlyAppDescription' => 'Az alkalmazás frissítéseit nyomon követi, de az Updatium nem tudja letölteni vagy telepíteni.',
			'cancelled' => 'Visszavonva',
			'appAlreadyAdded' => 'Az alkalmazás már hozzá van adva',
			'alreadyUpToDateQuestion' => 'Az alkalmazás már naprakész?',
			'addApp' => 'Hozzáadás',
			'appSourceURL' => 'Alkalmazás forrásának webcíme',
			'error' => 'Hiba',
			'add' => 'Hozzáadás',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Keresés (csak bizonyos források)',
			'search' => 'Keresés',
			'searching' => 'Searching',
			'additionalOptsFor' => 'További lehetőségek a következőhöz: {}',
			'supportedSources' => 'Támogatott források',
			'trackOnlyInBrackets' => '(Csak nyomon követés)',
			'searchableInBrackets' => '(Kereshető)',
			'appsString' => 'Alkalmazások',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Üdvözlünk!',
			'noAppsSubtext' => 'Az első alkalmazás hozzáadásához koppintson alul a \'Hozzáadás\' gombra.',
			'noAppsForFilter' => 'Nincsenek alkalmazások a szűrőhöz',
			'byX' => 'Fejlesztő: {}',
			'percentProgress' => 'Folyamat: {}%',
			'pleaseWait' => 'Kis türelmet',
			'updateAvailable' => 'Frissítés érhető el',
			'notInstalled' => 'Nem telepített',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pszeudoverzió',
			'selectAll' => 'Összes kiválasztása',
			'deselectX' => 'A(z) {} kiválasztásának elvetése',
			'xWillBeRemovedButRemainInstalled' => 'A(z) {} el lesz távolítva az Updatiumból, de továbbra is telepítve marad az eszközön.',
			'removeSelectedAppsQuestion' => 'Biztosan eltávolítja a kiválasztott alkalmazásokat?',
			'removeSelectedApps' => 'Kiválasztott alkalmazások eltávolítása',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} frissítése',
			'installX' => '{} telepítése',
			'markXTrackOnlyAsUpdated' => 'Megjelölés: {}\n(Csak nyomon követés)\nFrissítettként',
			'changeX' => '{}-változás',
			'installUpdateApps' => 'Alkalmazások telepítése/frissítése',
			'installUpdateSelectedApps' => 'Kiválasztott alkalmazások telepítése/frissítése',
			'markXSelectedAppsAsUpdated' => 'Biztosan megjelöli a(z) {} kiválasztott alkalmazást frissítettként?',
			'no' => 'Nem',
			'yes' => 'Igen',
			'markSelectedAppsUpdated' => 'Kiválasztott alkalmazások megjelölése frissítettként',
			'pinToTop' => 'Kitűzés felülre',
			'unpinFromTop' => 'Kitűzés megszüntetése',
			'resetInstallStatusForSelectedAppsQuestion' => 'Biztosan visszaállítja a kiválasztott alkalmazások telepítési állapotát?',
			'installStatusOfXWillBeResetExplanation' => 'A kiválasztott alkalmazások telepítési állapota visszaáll.\n\nEz akkor segíthet, ha az Updatiumban megjelenített alkalmazás-verzió hibás, a frissítések vagy egyéb problémák miatt.',
			'customLinkMessage' => 'Ezek a hivatkozások a telepített Updatiummal rendelkező eszközökön működnek',
			'shareAppConfigLinks' => 'Alkalmazás-konfiguráció megosztása HTML-hivatkozásként',
			'resetInstallStatus' => 'Telepítési állapot visszaállítása',
			'more' => 'További',
			'removeOutdatedFilter' => 'Elavult alkalmazás-szűrő eltávolítása',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Csak az elavult alkalmazások megjelenítése',
			'filter' => 'Szűrő',
			'filterApps' => 'Alkalmazások szűrése',
			'filterDays' => 'Filter days',
			'appName' => 'Név',
			'author' => 'Szerző',
			'upToDateApps' => 'Naprakész alkalmazások',
			'nonInstalledApps' => 'Nem telepített alkalmazások',
			'importExport' => 'Adatmozgatás',
			'settings' => 'Beállítások',
			'exportedTo' => 'Exportálva ide: {}',
			'updatiumExport' => 'Updatium-adatok exportálása',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Hibás bemenet',
			'importedX' => 'Importálva innen: {}',
			'updatiumImport' => 'Updatium-adatok importálása',
			'importFromURLList' => 'Importálás webcímlistából',
			'searchQuery' => 'Keresési lekérdezés',
			'appURLList' => 'Alkalmazás-webcímlista',
			'line' => 'Sor',
			'searchX' => '{} keresése',
			'noResults' => 'Nincs találat',
			'importX' => '{} importálása',
			'importedAppsIdDisclaimer' => 'Előfordulhat, hogy az importált alkalmazások helytelenül „Nincs telepítve” jelzéssel jelennek meg.\nA probléma megoldásához telepítse újra őket az Updatiumon keresztül.\nEz nem érinti az alkalmazásadatokat.\n\nCsak a webcímekre és a harmadik féltől származó importálási módszerekre vonatkozik.',
			'importErrors' => 'Importálási hibák',
			'importedXOfYApps' => '{}/{} alkalmazás importálva.',
			'followingURLsHadErrors' => 'A következő webcímek hibákat tartalmaztak:',
			'selectURL' => 'Webcím kiválasztása',
			'selectURLs' => 'Webcímek kiválasztása',
			'pick' => 'Kiválasztás',
			'theme' => 'Téma',
			'dark' => 'Sötét',
			'light' => 'Világos',
			'followSystem' => 'Rendszerbeállítás használata',
			'followSystemThemeExplanation' => 'A következő rendszertéma csak harmadik féltől származó alkalmazások használatával lehetséges',
			'useBlackTheme' => 'Teljesen fekete sötét téma használata',
			'appSortBy' => 'Rendezési szempont',
			'authorName' => 'Szerző/Név',
			'nameAuthor' => 'Név/Szerző',
			'asAdded' => 'Hozzáadás dátuma',
			'appSortOrder' => 'Rendezési sorrend',
			'ascending' => 'Növekvő',
			'descending' => 'Csökkenő',
			'bgUpdateCheckInterval' => 'Időtartam a frissítések háttérellenőrzése között',
			'neverManualOnly' => 'Soha – csak kézi',
			'appearance' => 'Megjelenés',
			'pinUpdates' => 'Frissítések kitűzése az alkalmazásnézet tetejére',
			'updates' => 'Frissítések',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Forrásspecifikus',
			'appSource' => 'Alkalmazás forrása',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Nincsenek naplók',
			'appLogs' => 'Alkalmazásnaplók',
			'appLogsHint' => 'View application logs',
			'close' => 'Bezárás',
			'share' => 'Megosztás',
			'appNotFound' => 'Az alkalmazás nem található',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-adat',
			'pickAnAPK' => 'Válasszon ki egy APK-t',
			'appHasMoreThanOnePackage' => 'A(z) {} egynél több csomaggal rendelkezik:',
			'deviceSupportsXArch' => 'Ez az eszköz támogatja a(z) {} CPU-architektúrát.',
			'deviceSupportsFollowingArchs' => 'Ez az eszköz a következő CPU-architektúrákat támogatja:',
			'warning' => 'Figyelem',
			'sourceIsXButPackageFromYPrompt' => 'Az alkalmazás forrása a(z) „{}-tároló”, de a kiadási csomag innen származik: „{}”. Biztosan folytatja?',
			'updatesAvailable' => 'Frissítések érhetők el',
			'updatesAvailableNotifDescription' => 'Értesíti a felhasználót, hogy egy vagy több, az Updatium által nyomon követett alkalmazáshoz frissítések állnak rendelkezésre',
			'noNewUpdates' => 'Nincsenek új frissítések.',
			'xHasAnUpdate' => 'A(z) {} frissítést kapott.',
			'appsUpdated' => 'Alkalmazások frissítve',
			'appsNotUpdated' => 'Nem sikerült frissíteni az alkalmazásokat',
			'appsUpdatedNotifDescription' => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás frissítése a háttérben történt.',
			'xWasUpdatedToY' => 'A(z) {} frissítve lett a következőre: {}.',
			'xWasNotUpdatedToY' => 'Nem sikerült frissíteni a következőt: {}, erre: {}.',
			'errorCheckingUpdates' => 'Hiba a frissítések ellenőrzésekor',
			'errorCheckingUpdatesNotifDescription' => 'Értesítés, amely akkor jelenik meg, amikor a frissítések ellenőrzése a háttérben nem sikerül',
			'appsRemoved' => 'Alkalmazások eltávolítva',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás egy betöltés közbeni hiba miatt el lesz(nek) távolítva',
			'xWasRemovedDueToErrorY' => 'A(z) {} el lett távolítva a következő hiba miatt: {}',
			'completeAppInstallation' => 'Teljes alkalmazástelepítés',
			'updatiumMustBeOpenToInstallApps' => 'Az alkalmazások telepítéséhez az Updatiumnak megnyitva kell lennie',
			'completeAppInstallationNotifDescription' => 'Megkéri a felhasználót, hogy térjen vissza az Updatiumhoz, hogy befejezze az alkalmazás telepítését',
			'checkingForUpdates' => 'Frissítések ellenőrzése',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Átmeneti értesítés, amely a frissítések ellenőrzésekor jelenik meg',
			'pleaseAllowInstallPerm' => 'Engedélyezze az Updatiumnak az alkalmazások telepítését',
			'trackOnly' => 'Csak nyomon követés',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Hiba {}',
			'versionCorrectionDisabled' => 'Verziókorrekció letiltva (úgy tűnik, hogy a bővítmény nem működik)',
			'unknown' => 'Ismeretlen',
			'none' => 'Semmi',
			'all' => 'Összes',
			'never' => 'Soha',
			'latestVersion' => 'Legújabb verzió',
			'installedVersionX' => 'Telepített verzió: {}',
			'lastUpdateCheckX' => 'Frissítések utoljára ellenőrizve: {}',
			'remove' => 'Eltávolítás',
			'quickLinks' => 'Gyors linkek',
			'yesMarkUpdated' => 'Igen, megjelölés frissítettként',
			'fdroid' => 'F-Droid hivatalos',
			'appIdOrName' => 'Alkalmazás-azonosító vagy név',
			'appId' => 'Alkalmazás-azonosító',
			'appWithIdOrNameNotFound' => 'Nem található alkalmazás ezzel az azonosítóval vagy névvel',
			'reposHaveMultipleApps' => 'Egyes tárolók több alkalmazást is tartalmazhatnak',
			'fdroidThirdPartyRepo' => 'F-Droid-tároló (harmadik fél)',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Telepítés',
			'markInstalled' => 'Telepítettnek jelölés',
			'update' => 'Frissítés',
			'updated' => 'Frissített',
			'markUpdated' => 'Frissítettnek jelölés',
			'download' => 'Download',
			'additionalOptions' => 'További beállítások',
			'disableVersionDetection' => 'Verziófelismerés letiltása',
			'noVersionDetectionExplanation' => 'Ezt a beállítást csak olyan alkalmazásoknál szabad használni, ahol a verziófelismerés nem működik megfelelően.',
			'downloadingX' => '{} letöltése',
			'downloadX' => '{} letöltése',
			'downloadedX' => '{} letöltve',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Kiadási csomag',
			'downloadNotifDescription' => 'Értesíti a felhasználót az alkalmazás letöltésének előrehaladásáról',
			'noAPKFound' => 'Nem található APK',
			'noVersionDetection' => 'Nincs verziófelismerés',
			'categorize' => 'Kategorizálás',
			'categories' => 'Kategóriák',
			'category' => 'Kategória',
			'noCategory' => 'Nincs kategória',
			'noCategories' => 'Nincsenek kategóriák',
			'categoryDeleteQuestion' => 'Biztosan törli a kategóriákat?',
			'categoryDeleteWarning' => 'A törölt kategóriákban lévő összes alkalmazás kategorizálatlanná válik.',
			'addCategory' => 'Kategória hozzáadása',
			'label' => 'Címke',
			'language' => 'Nyelv',
			'copiedToClipboard' => 'Másolva a vágólapra',
			'storagePermissionDenied' => 'Tárhely engedély megtagadva',
			'selectedCategorizeWarning' => 'Ez felváltja a kiválasztott alkalmazások meglévő kategória-beállításait.',
			'filterAPKsByRegEx' => 'APK-k szűrése reguláris kifejezéssel',
			'removeFromUpdatium' => 'Eltávolítás az Updatiumból',
			'uninstallFromDevice' => 'Eltávolítás az eszközről',
			'onlyWorksWithNonVersionDetectApps' => 'Csak azoknál az alkalmazásoknál működik, amelyeknél a verziófelismerés le van tiltva.',
			'releaseDateAsVersion' => 'Kiadás dátumának használata verzió-karakterláncként',
			'releaseTitleAsVersion' => 'Kiadás címének használata verzió-karakterláncként',
			'releaseDateAsVersionExplanation' => 'Ezt a beállítást csak olyan alkalmazásoknál szabad használni, ahol a verziófelismerés nem működik megfelelően, de elérhető a kiadás dátuma.',
			'changes' => 'Változáslista',
			'releaseDate' => 'Kiadás dátuma',
			'importFromURLsInFile' => 'Importálás fájlban található webcímből (például: OPML)',
			'versionDetectionExplanation' => 'Verzió-karakterlánc egyeztetése az rendszer által felismert verzióval',
			'versionDetection' => 'Verziófelismerés',
			'standardVersionDetection' => 'Alapértelmezett verziófelismerés',
			'groupByCategory' => 'Csoportosítás kategória alapján',
			'listView' => 'Lista nézet',
			'gridView' => 'Rács nézet',
			'autoApkFilterByArch' => 'APK-k CPU-architektúra szerinti szűrése, ha lehetséges',
			'autoLinkFilterByArch' => 'Hivatkozások CPU-architektúra szerinti szűrése, ha lehetséges',
			'overrideSource' => 'Forrás felülírása',
			'dontShowAgain' => 'Ne jelenítse meg ezt többé',
			'dontShowTrackOnlyWarnings' => '„Csak nyomon követés” figyelmeztetés elrejtése',
			'dontShowAPKOriginWarnings' => 'APK eredetére vonatkozó figyelmeztetések elrejtése',
			'moveNonInstalledAppsToBottom' => 'Nem telepített alkalmazások áthelyezése az alkalmazásnézet aljára',
			'gitlabPATLabel' => 'GitLab személyes hozzáférési token',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Névjegy',
			'requiresCredentialsInSettings' => 'A(z) {} alkalmazásnak további hitelesítő adatokra van szüksége (a beállításokban)',
			'checkOnStart' => 'Frissítések ellenőrzése az alkalmazás megnyitásakor',
			'safeMode' => 'Biztonságos mód',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Alkalmazás hozzáadása le van tiltva biztonságos módban',
			'tryInferAppIdFromCode' => 'Alkalmazás azonosítójának kikövetkeztetése a forráskódból, ha lehetséges',
			'removeOnExternalUninstall' => 'Külsőleg eltávolított alkalmazások automatikus eltávolítása',
			'pickHighestVersionCode' => 'Legmagasabb verziókódú APK automatikus kiválasztása',
			'checkUpdateOnDetailPage' => 'Frissítések ellenőrzése az alkalmazás részleteit tartalmazó oldal megnyitásakor',
			'disablePageTransitions' => 'Lap áttűnési animációk letiltása',
			'reversePageTransitions' => 'Fordított lap áttűnési animációk',
			'minStarCount' => 'Minimális csillagozási szám',
			'addInfoBelow' => 'Adja hozzá ezt az információt alább.',
			'addInfoInSettings' => 'Adja hozzá ezt az információt a beállításokban.',
			'githubSourceNote' => 'A GitHub/GitLab lekérdezés-korlátozás elkerülhető egy API-kulcs használatával.',
			'sortByLastLinkSegment' => 'Rendezés csak a hivatkozás utolsó szakasza szerint',
			'filterReleaseNotesByRegEx' => 'Kiadási megjegyzések szűrése reguláris kifejezéssel',
			'customLinkFilterRegex' => 'Egyéni APK-hivatkozásszűrő reguláris kifejezéssel (Alapértelmezett „.apk$”)',
			'appsPossiblyUpdated' => 'Megkísérelt alkalmazás-frissítések',
			'appsPossiblyUpdatedNotifDescription' => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás frissítése lehetséges a háttérben',
			'xWasPossiblyUpdatedToY' => 'A(z) {} frissülhetett a következőre: {}.',
			'enableBackgroundUpdates' => 'Háttérfrissítések engedélyezése',
			'backgroundUpdateReqsExplanation' => 'Előfordulhat, hogy nem minden alkalmazásnál lehetséges a háttérbeli frissítés.',
			'backgroundUpdateLimitsExplanation' => 'A háttérben történő telepítés sikeressége csak az Updatium megnyitásakor állapítható meg.',
			'verifyLatestTag' => '„Legújabb” címke ellenőrzése',
			'intermediateLinkRegex' => 'Szűrő egy „köztes” hivatkozás felkereséséhez',
			'filterByLinkText' => 'Hivatkozások szűrése hivatkozásszöveg alapján',
			'matchLinksOutsideATags' => 'Hivatkozások keresése az <a> címkéken kívül is',
			'intermediateLinkNotFound' => 'Nem található köztes hivatkozás',
			'intermediateLink' => 'Köztes hivatkozás',
			'exemptFromBackgroundUpdates' => 'Mentes a háttérben történő frissítések alól (ha engedélyezett)',
			'bgUpdatesOnWiFiOnly' => 'Háttérfrissítések letiltása, amikor az eszköz nem csatlakozik a Wi-Fi-hez',
			'bgUpdatesWhileChargingOnly' => 'Háttérfrissítések letiltása, amikor az eszköz nincs a töltőn',
			'autoSelectHighestVersionCode' => 'Legmagasabb verziókódú APK automatikus kiválasztása',
			'versionExtractionRegEx' => 'Verzió-karakterlánc kivonatolása reguláris kifejezéssel',
			'trimVersionString' => 'Verzió-karakterlánc levágása reguláris kifejezéssel',
			'matchGroupToUseForX' => 'A(z) „{}” esetén használandó csoport egyeztetése',
			'matchGroupToUse' => 'Verzió-karakterlánc kivonatolásához használandó csoport reguláris kifejezéssel való egyeztetése',
			'highlightTouchTargets' => 'Kevésbé egyértelmű érintési pontok kiemelése',
			'pickExportDir' => 'Válassza ki a könyvtárat, ahová exportálni szeretne',
			'autoExportOnChanges' => 'Automatikus exportálás a változtatások után',
			'includeSettings' => 'Tartalmazza a beállításokat',
			'filterVersionsByRegEx' => 'Verziók szűrése reguláris kifejezéssel',
			'trySelectingSuggestedVersionCode' => 'Próbálja kiválasztani a „Javasolt” verziókódú APK-t',
			'dontSortReleasesList' => 'API-ból származó kiadási sorrend megőrzése',
			'reverseSort' => 'Fordított rendezés',
			'takeFirstLink' => 'Vegye az első hivatkozást',
			'skipSort' => 'Rendezés kihagyása',
			'debugMenu' => 'Hibakereső menü',
			'bgTaskStarted' => 'A háttérfeladat elindult – ellenőrizze a naplókat.',
			'runBgCheckNow' => 'Frissítések ellenőrzése a háttérben most',
			'versionExtractWholePage' => '„Verzió-karakterlánc kivonatolása reguláris kifejezéssel” alkalmazása az egész oldalra',
			'installing' => 'Telepítés',
			'skipUpdateNotifications' => 'Frissítési értesítések kihagyása',
			'updatesAvailableNotifChannel' => 'Frissítések érhetők el',
			'appsUpdatedNotifChannel' => 'Alkalmazások frissítve',
			'appsPossiblyUpdatedNotifChannel' => 'Megkísérelt alkalmazás-frissítések',
			'errorCheckingUpdatesNotifChannel' => 'Hiba a frissítések ellenőrzésekor',
			'appsRemovedNotifChannel' => 'Eltávolított alkalmazások',
			'downloadingXNotifChannel' => 'A(z) {} letöltése',
			'completeAppInstallationNotifChannel' => 'Teljes alkalmazás telepítés',
			'checkingForUpdatesNotifChannel' => 'Frissítések ellenőrzése',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Csak a telepített és a csak nyomon követhető alkalmazások frissítéseinek ellenőrzése',
			'supportFixedAPKURL' => 'Támogatja a rögzített APK-webcímeket',
			'selectX' => '{} kiválasztása',
			'parallelDownloads' => 'Párhuzamos letöltések engedélyezése',
			'useShizuku' => 'Shizuku vagy Sui használata a telepítéshez',
			'shizukuBinderNotFound' => 'A Shizuku szolgáltatás nem fut',
			'shizukuOld' => 'Régi Shizuku verzió (<11) - frissítse',
			'shizukuOldAndroidWithADB' => 'A Shizuku csak Android < 8.1 ADB-vel fut - frissítse az Androidot vagy használja a Suit helyette',
			'shizukuPretendToBeGooglePlay' => 'Google Play beállítása telepítési forrásként (ha Shizukut használ)',
			'useSystemFont' => 'Rendszer betűtípusának használata',
			'useVersionCodeAsOSVersion' => 'Alkalmazás verziókódjának használata a rendszer által felismert verzióként',
			'requestHeader' => 'Kérelemfejléc',
			'useLatestAssetDateAsReleaseDate' => 'Legutóbbi csomagfeltöltés használata a kiadás dátumaként',
			'defaultPseudoVersioningMethod' => 'Alapértelmezett pszeudoverziós módszer',
			'partialAPKHash' => 'Részleges APK-kivonat',
			'APKLinkHash' => 'APK-hivatkozáskivonat',
			'directAPKLink' => 'Közvetlen APK-hivatkozás',
			'pseudoVersionInUse' => 'Pszeudo-verzió van használatban',
			'installedVersion' => 'Telepített',
			'installed' => 'Telepített',
			'notInstalledApps' => 'Nem telepített',
			'latest' => 'Legújabb',
			'invertRegEx' => 'Reguláris kifejezés invertálása',
			'note' => 'Megjegyzés',
			'selfHostedNote' => 'A(z) „{}” legördülő menü segítségével elérhetővé válnak a bármilyen más forrásból származó saját üzemeltetésű vagy egyéni példányok.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'Az APK-t nem lehetett elemezni (inkompatibilis vagy részleges letöltés)',
			'beforeNewInstallsShareToAppVerifier' => 'Új alkalmazások megosztása az AppVerifierrel (ha elérhető)',
			'appVerifierInstructionToast' => 'Ossza meg az AppVerifierrel, majd térjen vissza ide, ha kész.',
			'wiki' => 'Súgó/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Nem biztonságos HTTP-kérések engedélyezése',
			'stayOneVersionBehind' => 'Maradjon egy verzióval a legújabb mögött',
			'useFirstApkOfVersion' => 'Legelső APK automatikus kiválasztása, ha több APK is található',
			'refreshBeforeDownload' => 'Alkalmazás adatainak frissítése a letöltés előtt',
			'tencentAppStore' => 'Tencent Appstore',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'Vivo App Store (CN)',
			'name' => 'Név',
			'smartname' => 'Név (Okos)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Rendezési eljárás',
			'welcome' => 'Üdvözöljük!',
			'batteryOptimizationNote' => 'Megjegyzés: A háttérfrissítések megbízhatóbban működhetnek, ha kikapcsolja a rendszer akkumulátor-optimalizálását az Updatium számára.',
			'fileDeletionError' => 'Nem sikerült törölni a fájlt (próbálja meg kézzel törölni, majd próbálja meg újra): "{}"',
			'foregroundService' => 'Updatium előtér-szolgáltatás',
			'foregroundServiceExplanation' => 'Előtér-szolgáltatás használata a frissítések ellenőrzéséhez (megbízhatóbb, de több energiát fogyaszt)',
			'fgServiceNotice' => 'Ez az értesítés a háttérben történő frissítésellenőrzéshez szükséges (a rendszer beállításaiban elrejthető).',
			'excludeSecrets' => 'Érzékeny adatok (például: személyes hozzáférési tokenek) kihagyása',
			'GHReqPrefix' => '„omeritzics/Updatium” példány a GitHub lekérdezéséhez',
			'includeZips' => 'ZIP-fájlok belefoglalása',
			'zippedApkFilterRegEx' => 'APK-fájlok szűrése a ZIP-fájlon belül',
			'multipleSigners' => 'Többen is aláírták',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Biztosan eltávolítja az alkalmazást?', other: 'Biztosan eltávolítja az alkalmazásokat?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Túl sok kérés (lekérdezés-korlátozás) – próbálja újra {count} perc múlva,\nvagy adjon meg egy GitHub/GitLab API-kulcsot', other: 'Túl sok kérés (lekérdezés-korlátozás) – próbálja újra {count} perc múlva,\nvagy adjon meg egy GitHub/GitLab API-kulcsot', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Frissítések ellenőrzése a háttérben a következőt észlelte: {error} - Újrapróbálkozás: {count} perc múlva', other: 'Frissítések ellenőrzése a háttérben a következőt észlelte: {error} - Újrapróbálkozás: {count} perc múlva', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Frissítések ellenőrzése a háttérben {count} frissítést talált - szükség esetén értesíti a felhasználót', other: 'Frissítések ellenőrzése a háttérben {count} frissítést talált - szükség esetén értesíti a felhasználót', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '{count} alkalmazás', other: '{count} alkalmazás', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '{count} webcím', other: '{count} webcím', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '{count} perc', other: '{count} perc', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '{count} óra', other: '{count} óra', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '{count} nap', other: '{count} nap', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '{n} napló törölve lett ({after} után, és {before} előtt)', other: '{n} napló törölve lett ({after} után, és {before} előtt)', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'A(z) {app} és 1 további alkalmazás frissítést kapott.', other: 'A(z) {app} és {count} további alkalmazás frissítést kapott.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'A(z) {app} és 1 további alkalmazás frissítve.', other: 'A(z) {app} és {count} további alkalmazás frissítve.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Nem sikerült frissíteni a következőt: {app}, valamint 1 további alkalmazást.', other: 'Nem sikerült frissíteni a következőt: {app}, valamint {count} további alkalmazást.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'A(z) {app}, valamint 1 további alkalmazás sikeresen frissítve.', other: 'A(z) {app}, valamint {count} további alkalmazás sikeresen frissítve.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hu'))(n, one: 'Tanúsítványkivonat', other: 'Tanúsítványkivonatok', ), 
			'securityDisclaimerTitle' => 'Biztonsági és Jogi Felelősségkorlátozás',
			'license' => 'Licenc',
			'licenseText' => 'Ez az alkalmazás a GPL v3 licenc alatt kerül terjesztésre.',
			'disclaimer' => 'Felelősségkorlátozás',
			'disclaimerText' => 'Ez az alkalmazás nem terjeszti, nem hosztolja és nem ellenőrzi a külső alkalmazások egyikét sem. A felhasználó viseli a teljes felelősséget az ezen eszközzel telepített bármely szoftver biztonságáért és jogszerűségéért.\n\nhttps://github.com/omeritzics/Updatium az Updatium letöltésének egyetlen hivatalos helye - erősen nem javasolt más helyekről letölteni, mivel a nem hivatalos forrásokból történő letöltés nem biztonságos.',
			'privacy' => 'Adatvédelem',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Elfogadás és folytatás',
			'decline' => 'Elutasítás',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Élvezi az Updatiumot?',
			'githubStarPromptContent' => 'Az Updatium egy önkéntes, nyílt forráskódú közösségi projekt, amelyet a szabadidőmben fejlesztek. Ha szeretné támogatni a projektet, fontolja meg, hogy ad egy csillagot a GitHubon, hogy segítsen nekünk több felhasználót és hozzájárulót elérni. Erről többé nem fogunk emlékeztetni. Előre is köszönjük! :)',
			'githubStarPromptStar' => 'Csillag adása',
			'githubStarPromptDontShowAgain' => 'Ne mutassa újra',
			'sourceCode' => 'Forráskód',
			'developedBy' => 'Fejlesztő',
			'appDescription' => 'Egy testreszabható Android alkalmazáskatalógus, amely lehetõvé teszi az alkalmazások közvetlen frissítését az APK forrásaikból.',
			'safeModeEnabled' => 'Biztonságos mód engedélyezve',
			'safeModeDisabled' => 'Biztonságos mód letiltva',
			'safeModeDisable' => 'Biztonságos mód letiltása',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Biztonságos mód adminisztráció',
			'safeModeSetupDescription' => 'Állítson be egy jelszót a biztonságos mód engedélyezéséhez. Miután engedélyezte, a biztonságos mód megakadályozza az új alkalmazások hozzáadását, és csak a jelszóval lehet letiltani.',
			'safeModeToggleDescription' => 'Adja meg a jelszót a biztonságos mód be- vagy kikapcsolásához.',
			'safeModeSetPassword' => 'Jelszó beállítása',
			'safeModeConfirmPassword' => 'Jelszó megerősítése',
			'safeModeEnterPassword' => 'Jelszó megadása',
			'safeModePasswordHint' => 'Minimum 8 karakter',
			'safeModePasswordTooShort' => 'A jelszónak legalább 8 karakter hosszúnak kell lennie',
			'safeModePasswordMismatch' => 'A jelszavak nem egyeznek',
			'safeModePasswordIncorrect' => 'Helytelen jelszó',
			'safeModePasswordError' => 'Hiba a jelszó beállításakor. Próbálja meg újra.',
			'safeModeEnable' => 'Biztonságos mód engedélyezése',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} koppintás maradt a biztonságos mód letiltásához',
			'safeModeEnabledHint' => 'A biztonságos mód engedélyezve. Koppintson többször a verziószámra a Beállításokban a letiltáshoz.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Értem',
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
