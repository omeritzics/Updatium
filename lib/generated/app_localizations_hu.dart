// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hungarian (`hu`).
class AppLocalizationsHu extends AppLocalizations {
  AppLocalizationsHu([String locale = 'hu']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'Érvénytelen a(z) $p0 alkalmazás webcíme';
  }

  @override
  String get noReleaseFound => 'Nem található megfelelő kiadás';

  @override
  String get noVersionFound => 'Nem sikerült meghatározni a kiadás verzióját';

  @override
  String get urlMatchesNoSource => 'A webcím nem egyezik egyetlen ismert forrással sem';

  @override
  String get cantInstallOlderVersion => 'Nem telepíthető egy alkalmazás régebbi verziója';

  @override
  String get appIdMismatch => 'A letöltött csomagazonosító nem egyezik a meglévő alkalmazás azonosítójával';

  @override
  String get functionNotImplemented => 'Ebben az ágban nincs implementálva ez a funkció';

  @override
  String get placeholder => 'Helyőrző';

  @override
  String get someErrors => 'Néhány hiba történt';

  @override
  String get unexpectedError => 'Váratlan hiba';

  @override
  String get ok => 'OK';

  @override
  String get and => 'és';

  @override
  String get githubPATLabel => 'GitHub személyes hozzáférési token (megnöveli a lekérdezés-korlátozást)';

  @override
  String get includePrereleases => 'Tartalmazza az előzetes kiadásokat';

  @override
  String get fallbackToOlderReleases => 'Visszatérés a régebbi kiadásokhoz';

  @override
  String get filterReleaseTitlesByRegEx => 'Kiadás címeinek szűrése reguláris kifejezéssel';

  @override
  String get invalidRegEx => 'Érvénytelen reguláris kifejezés';

  @override
  String get noDescription => 'Nincs leírás';

  @override
  String get cancel => 'Mégse';

  @override
  String get continue => 'Folytatás';

  @override
  String get requiredInBrackets => '(Szükséges)';

  @override
  String get dropdownNoOptsError => 'HIBA: A LEGÖRDÜLŐ LISTÁNAK LEGALÁBB EGY KIVÁLASZTHATÓ BEÁLLÍTÁSSAL KELL RENDELKEZNIE';

  @override
  String get color => 'Szín';

  @override
  String get standard => 'Általános';

  @override
  String get custom => 'Egyéni';

  @override
  String get useMaterialYou => 'Material You színek használata';

  @override
  String get githubStarredRepos => 'Csillagozott GitHub-tárolók';

  @override
  String get uname => 'Felhasználónév';

  @override
  String get wrongArgNum => 'A megadott argumentumok száma nem megfelelő';

  @override
  String xIsTrackOnly(Object p0) {
    return 'A(z) $p0 csak nyomon követhető';
  }

  @override
  String get source => 'Forrás';

  @override
  String get app => 'Alkalmazás';

  @override
  String get appsFromSourceAreTrackOnly => 'Az ebből a forrásból származó alkalmazások „csak nyomon követhetők”.';

  @override
  String get youPickedTrackOnly => '„Csak nyomon követés” beállítást választotta.';

  @override
  String get trackOnlyAppDescription => 'Az alkalmazás frissítéseit nyomon követi, de az Updatium nem tudja letölteni vagy telepíteni.';

  @override
  String get cancelled => 'Visszavonva';

  @override
  String get appAlreadyAdded => 'Az alkalmazás már hozzá van adva';

  @override
  String get alreadyUpToDateQuestion => 'Az alkalmazás már naprakész?';

  @override
  String get addApp => 'Hozzáadás';

  @override
  String get appSourceURL => 'Alkalmazás forrásának webcíme';

  @override
  String get error => 'Hiba';

  @override
  String get add => 'Hozzáadás';

  @override
  String get searchSomeSourcesLabel => 'Keresés (csak bizonyos források)';

  @override
  String get search => 'Keresés';

  @override
  String additionalOptsFor(Object p0) {
    return 'További lehetőségek a következőhöz: $p0';
  }

  @override
  String get supportedSources => 'Támogatott források';

  @override
  String get trackOnlyInBrackets => '(Csak nyomon követés)';

  @override
  String get searchableInBrackets => '(Kereshető)';

  @override
  String get appsString => 'Alkalmazások';

  @override
  String get noApps => 'Üdvözlünk!';

  @override
  String get noAppsSubtext => 'Az első alkalmazás hozzáadásához koppintson alul a \'Hozzáadás\' gombra.';

  @override
  String get noAppsForFilter => 'Nincsenek alkalmazások a szűrőhöz';

  @override
  String byX(Object p0) {
    return 'Fejlesztő: $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Folyamat: $p0%';
  }

  @override
  String get pleaseWait => 'Kis türelmet';

  @override
  String get updateAvailable => 'Frissítés érhető el';

  @override
  String get notInstalled => 'Nem telepített';

  @override
  String get pseudoVersion => 'pszeudoverzió';

  @override
  String get selectAll => 'Összes kiválasztása';

  @override
  String deselectX(Object p0) {
    return 'A(z) $p0 kiválasztásának elvetése';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return 'A(z) $p0 el lesz távolítva az Updatiumból, de továbbra is telepítve marad az eszközön.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Biztosan eltávolítja a kiválasztott alkalmazásokat?';

  @override
  String get removeSelectedApps => 'Kiválasztott alkalmazások eltávolítása';

  @override
  String updateX(Object p0) {
    return '$p0 frissítése';
  }

  @override
  String installX(Object p0) {
    return '$p0 telepítése';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Megjelölés: $p0\n(Csak nyomon követés)\nFrissítettként';
  }

  @override
  String changeX(Object p0) {
    return '$p0-változás';
  }

  @override
  String get installUpdateApps => 'Alkalmazások telepítése/frissítése';

  @override
  String get installUpdateSelectedApps => 'Kiválasztott alkalmazások telepítése/frissítése';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Biztosan megjelöli a(z) $p0 kiválasztott alkalmazást frissítettként?';
  }

  @override
  String get no => 'Nem';

  @override
  String get yes => 'Igen';

  @override
  String get markSelectedAppsUpdated => 'Kiválasztott alkalmazások megjelölése frissítettként';

  @override
  String get pinToTop => 'Kitűzés felülre';

  @override
  String get unpinFromTop => 'Kitűzés megszüntetése';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Biztosan visszaállítja a kiválasztott alkalmazások telepítési állapotát?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'A kiválasztott alkalmazások telepítési állapota visszaáll.\n\nEz akkor segíthet, ha az Updatiumban megjelenített alkalmazás-verzió hibás, a frissítések vagy egyéb problémák miatt.';

  @override
  String get customLinkMessage => 'Ezek a hivatkozások a telepített Updatiummal rendelkező eszközökön működnek';

  @override
  String get shareAppConfigLinks => 'Alkalmazás-konfiguráció megosztása HTML-hivatkozásként';

  @override
  String get shareSelectedAppURLs => 'Kiválasztott alkalmazás hivatkozásának megosztása';

  @override
  String get resetInstallStatus => 'Telepítési állapot visszaállítása';

  @override
  String get more => 'További';

  @override
  String get removeOutdatedFilter => 'Elavult alkalmazás-szűrő eltávolítása';

  @override
  String get showOutdatedOnly => 'Csak az elavult alkalmazások megjelenítése';

  @override
  String get filter => 'Szűrő';

  @override
  String get filterApps => 'Alkalmazások szűrése';

  @override
  String get appName => 'Név';

  @override
  String get author => 'Szerző';

  @override
  String get upToDateApps => 'Naprakész alkalmazások';

  @override
  String get nonInstalledApps => 'Nem telepített alkalmazások';

  @override
  String get importExport => 'Adatmozgatás';

  @override
  String get settings => 'Beállítások';

  @override
  String exportedTo(Object p0) {
    return 'Exportálva ide: $p0';
  }

  @override
  String get updatiumExport => 'Updatium-adatok exportálása';

  @override
  String get invalidInput => 'Hibás bemenet';

  @override
  String importedX(Object p0) {
    return 'Importálva innen: $p0';
  }

  @override
  String get updatiumImport => 'Updatium-adatok importálása';

  @override
  String get importFromURLList => 'Importálás webcímlistából';

  @override
  String get searchQuery => 'Keresési lekérdezés';

  @override
  String get appURLList => 'Alkalmazás-webcímlista';

  @override
  String get line => 'Sor';

  @override
  String searchX(Object p0) {
    return '$p0 keresése';
  }

  @override
  String get noResults => 'Nincs találat';

  @override
  String importX(Object p0) {
    return '$p0 importálása';
  }

  @override
  String get importedAppsIdDisclaimer => 'Előfordulhat, hogy az importált alkalmazások helytelenül „Nincs telepítve” jelzéssel jelennek meg.\nA probléma megoldásához telepítse újra őket az Updatiumon keresztül.\nEz nem érinti az alkalmazásadatokat.\n\nCsak a webcímekre és a harmadik féltől származó importálási módszerekre vonatkozik.';

  @override
  String get importErrors => 'Importálási hibák';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0/$p1 alkalmazás importálva.';
  }

  @override
  String get followingURLsHadErrors => 'A következő webcímek hibákat tartalmaztak:';

  @override
  String get selectURL => 'Webcím kiválasztása';

  @override
  String get selectURLs => 'Webcímek kiválasztása';

  @override
  String get pick => 'Kiválasztás';

  @override
  String get theme => 'Téma';

  @override
  String get dark => 'Sötét';

  @override
  String get light => 'Világos';

  @override
  String get followSystem => 'Rendszerbeállítás használata';

  @override
  String get followSystemThemeExplanation => 'A következő rendszertéma csak harmadik féltől származó alkalmazások használatával lehetséges';

  @override
  String get useBlackTheme => 'Teljesen fekete sötét téma használata';

  @override
  String get appSortBy => 'Rendezési szempont';

  @override
  String get authorName => 'Szerző/Név';

  @override
  String get nameAuthor => 'Név/Szerző';

  @override
  String get asAdded => 'Hozzáadás dátuma';

  @override
  String get appSortOrder => 'Rendezési sorrend';

  @override
  String get ascending => 'Növekvő';

  @override
  String get descending => 'Csökkenő';

  @override
  String get bgUpdateCheckInterval => 'Időtartam a frissítések háttérellenőrzése között';

  @override
  String get neverManualOnly => 'Soha – csak kézi';

  @override
  String get appearance => 'Megjelenés';

  @override
  String get pinUpdates => 'Frissítések kitűzése az alkalmazásnézet tetejére';

  @override
  String get updates => 'Frissítések';

  @override
  String get sourceSpecific => 'Forrásspecifikus';

  @override
  String get appSource => 'Alkalmazás forrása';

  @override
  String get noLogs => 'Nincsenek naplók';

  @override
  String get appLogs => 'Alkalmazásnaplók';

  @override
  String get close => 'Bezárás';

  @override
  String get share => 'Megosztás';

  @override
  String get appNotFound => 'Az alkalmazás nem található';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-adat';

  @override
  String get pickAnAPK => 'Válasszon ki egy APK-t';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return 'A(z) $p0 egynél több csomaggal rendelkezik:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Ez az eszköz támogatja a(z) $p0 CPU-architektúrát.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Ez az eszköz a következő CPU-architektúrákat támogatja:';

  @override
  String get warning => 'Figyelem';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'Az alkalmazás forrása a(z) „$p0-tároló”, de a kiadási csomag innen származik: „$p1”. Biztosan folytatja?';
  }

  @override
  String get updatesAvailable => 'Frissítések érhetők el';

  @override
  String get updatesAvailableNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több, az Updatium által nyomon követett alkalmazáshoz frissítések állnak rendelkezésre';

  @override
  String get noNewUpdates => 'Nincsenek új frissítések.';

  @override
  String xHasAnUpdate(Object p0) {
    return 'A(z) $p0 frissítést kapott.';
  }

  @override
  String get appsUpdated => 'Alkalmazások frissítve';

  @override
  String get appsNotUpdated => 'Nem sikerült frissíteni az alkalmazásokat';

  @override
  String get appsUpdatedNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás frissítése a háttérben történt.';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return 'A(z) $p0 frissítve lett a következőre: $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Nem sikerült frissíteni a következőt: $p0, erre: $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Hiba a frissítések ellenőrzésekor';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Értesítés, amely akkor jelenik meg, amikor a frissítések ellenőrzése a háttérben nem sikerül';

  @override
  String get appsRemoved => 'Alkalmazások eltávolítva';

  @override
  String get appsRemovedNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás egy betöltés közbeni hiba miatt el lesz(nek) távolítva';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return 'A(z) $p0 el lett távolítva a következő hiba miatt: $p1';
  }

  @override
  String get completeAppInstallation => 'Teljes alkalmazástelepítés';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Az alkalmazások telepítéséhez az Updatiumnak megnyitva kell lennie';

  @override
  String get completeAppInstallationNotifDescription => 'Megkéri a felhasználót, hogy térjen vissza az Updatiumhoz, hogy befejezze az alkalmazás telepítését';

  @override
  String get checkingForUpdates => 'Frissítések ellenőrzése';

  @override
  String get checkingForUpdatesNotifDescription => 'Átmeneti értesítés, amely a frissítések ellenőrzésekor jelenik meg';

  @override
  String get pleaseAllowInstallPerm => 'Engedélyezze az Updatiumnak az alkalmazások telepítését';

  @override
  String get trackOnly => 'Csak nyomon követés';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Hiba $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Verziókorrekció letiltva (úgy tűnik, hogy a bővítmény nem működik)';

  @override
  String get unknown => 'Ismeretlen';

  @override
  String get none => 'Semmi';

  @override
  String get all => 'Összes';

  @override
  String get never => 'Soha';

  @override
  String latestVersionX(Object p0) {
    return 'Legújabb verzió: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Telepített verzió: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Frissítések utoljára ellenőrizve: $p0';
  }

  @override
  String get remove => 'Eltávolítás';

  @override
  String get yesMarkUpdated => 'Igen, megjelölés frissítettként';

  @override
  String get fdroid => 'F-Droid hivatalos';

  @override
  String get appIdOrName => 'Alkalmazás-azonosító vagy név';

  @override
  String get appId => 'Alkalmazás-azonosító';

  @override
  String get appWithIdOrNameNotFound => 'Nem található alkalmazás ezzel az azonosítóval vagy névvel';

  @override
  String get reposHaveMultipleApps => 'Egyes tárolók több alkalmazást is tartalmazhatnak';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid-tároló (harmadik fél)';

  @override
  String get install => 'Telepítés';

  @override
  String get markInstalled => 'Telepítettnek jelölés';

  @override
  String get update => 'Frissítés';

  @override
  String get updated => 'Frissített';

  @override
  String get markUpdated => 'Frissítettnek jelölés';

  @override
  String get additionalOptions => 'További beállítások';

  @override
  String get disableVersionDetection => 'Verziófelismerés letiltása';

  @override
  String get noVersionDetectionExplanation => 'Ezt a beállítást csak olyan alkalmazásoknál szabad használni, ahol a verziófelismerés nem működik megfelelően.';

  @override
  String downloadingX(Object p0) {
    return '$p0 letöltése';
  }

  @override
  String downloadX(Object p0) {
    return '$p0 letöltése';
  }

  @override
  String downloadedX(Object p0) {
    return '$p0 letöltve';
  }

  @override
  String get releaseAsset => 'Kiadási csomag';

  @override
  String get downloadNotifDescription => 'Értesíti a felhasználót az alkalmazás letöltésének előrehaladásáról';

  @override
  String get noAPKFound => 'Nem található APK';

  @override
  String get noVersionDetection => 'Nincs verziófelismerés';

  @override
  String get categorize => 'Kategorizálás';

  @override
  String get categories => 'Kategóriák';

  @override
  String get category => 'Kategória';

  @override
  String get noCategory => 'Nincs kategória';

  @override
  String get noCategories => 'Nincsenek kategóriák';

  @override
  String get deleteCategoriesQuestion => 'Biztosan törli a kategóriákat?';

  @override
  String get categoryDeleteWarning => 'A törölt kategóriákban lévő összes alkalmazás kategorizálatlanná válik.';

  @override
  String get addCategory => 'Kategória hozzáadása';

  @override
  String get label => 'Címke';

  @override
  String get language => 'Nyelv';

  @override
  String get copiedToClipboard => 'Másolva a vágólapra';

  @override
  String get storagePermissionDenied => 'Tárhely engedély megtagadva';

  @override
  String get selectedCategorizeWarning => 'Ez felváltja a kiválasztott alkalmazások meglévő kategória-beállításait.';

  @override
  String get filterAPKsByRegEx => 'APK-k szűrése reguláris kifejezéssel';

  @override
  String get removeFromUpdatium => 'Eltávolítás az Updatiumból';

  @override
  String get uninstallFromDevice => 'Eltávolítás az eszközről';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Csak azoknál az alkalmazásoknál működik, amelyeknél a verziófelismerés le van tiltva.';

  @override
  String get releaseDateAsVersion => 'Kiadás dátumának használata verzió-karakterláncként';

  @override
  String get releaseTitleAsVersion => 'Kiadás címének használata verzió-karakterláncként';

  @override
  String get releaseDateAsVersionExplanation => 'Ezt a beállítást csak olyan alkalmazásoknál szabad használni, ahol a verziófelismerés nem működik megfelelően, de elérhető a kiadás dátuma.';

  @override
  String get changes => 'Változáslista';

  @override
  String get releaseDate => 'Kiadás dátuma';

  @override
  String get importFromURLsInFile => 'Importálás fájlban található webcímből (például: OPML)';

  @override
  String get versionDetectionExplanation => 'Verzió-karakterlánc egyeztetése az rendszer által felismert verzióval';

  @override
  String get versionDetection => 'Verziófelismerés';

  @override
  String get standardVersionDetection => 'Alapértelmezett verziófelismerés';

  @override
  String get groupByCategory => 'Csoportosítás kategória alapján';

  @override
  String get listView => 'Lista nézet';

  @override
  String get gridView => 'Rács nézet';

  @override
  String get autoApkFilterByArch => 'APK-k CPU-architektúra szerinti szűrése, ha lehetséges';

  @override
  String get autoLinkFilterByArch => 'Hivatkozások CPU-architektúra szerinti szűrése, ha lehetséges';

  @override
  String get overrideSource => 'Forrás felülírása';

  @override
  String get dontShowAgain => 'Ne jelenítse meg ezt többé';

  @override
  String get dontShowTrackOnlyWarnings => '„Csak nyomon követés” figyelmeztetés elrejtése';

  @override
  String get dontShowAPKOriginWarnings => 'APK eredetére vonatkozó figyelmeztetések elrejtése';

  @override
  String get moveNonInstalledAppsToBottom => 'Nem telepített alkalmazások áthelyezése az alkalmazásnézet aljára';

  @override
  String get hideNonInstalledApps => 'Nem telepített alkalmazások elrejtése';

  @override
  String get gitlabPATLabel => 'GitLab személyes hozzáférési token';

  @override
  String get about => 'Névjegy';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return 'A(z) $p0 alkalmazásnak további hitelesítő adatokra van szüksége (a beállításokban)';
  }

  @override
  String get checkOnStart => 'Frissítések ellenőrzése az alkalmazás megnyitásakor';

  @override
  String get tryInferAppIdFromCode => 'Alkalmazás azonosítójának kikövetkeztetése a forráskódból, ha lehetséges';

  @override
  String get removeOnExternalUninstall => 'Külsőleg eltávolított alkalmazások automatikus eltávolítása';

  @override
  String get pickHighestVersionCode => 'Legmagasabb verziókódú APK automatikus kiválasztása';

  @override
  String get checkUpdateOnDetailPage => 'Frissítések ellenőrzése az alkalmazás részleteit tartalmazó oldal megnyitásakor';

  @override
  String get disablePageTransitions => 'Lap áttűnési animációk letiltása';

  @override
  String get reversePageTransitions => 'Fordított lap áttűnési animációk';

  @override
  String get minStarCount => 'Minimális csillagozási szám';

  @override
  String get addInfoBelow => 'Adja hozzá ezt az információt alább.';

  @override
  String get addInfoInSettings => 'Adja hozzá ezt az információt a beállításokban.';

  @override
  String get githubSourceNote => 'A GitHub/GitLab lekérdezés-korlátozás elkerülhető egy API-kulcs használatával.';

  @override
  String get sortByLastLinkSegment => 'Rendezés csak a hivatkozás utolsó szakasza szerint';

  @override
  String get filterReleaseNotesByRegEx => 'Kiadási megjegyzések szűrése reguláris kifejezéssel';

  @override
  String get customLinkFilterRegex => 'Egyéni APK-hivatkozásszűrő reguláris kifejezéssel (Alapértelmezett „.apk\$”)';

  @override
  String get appsPossiblyUpdated => 'Megkísérelt alkalmazás-frissítések';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Értesíti a felhasználót, hogy egy vagy több alkalmazás frissítése lehetséges a háttérben';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return 'A(z) $p0 frissülhetett a következőre: $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Háttérfrissítések engedélyezése';

  @override
  String get backgroundUpdateReqsExplanation => 'Előfordulhat, hogy nem minden alkalmazásnál lehetséges a háttérbeli frissítés.';

  @override
  String get backgroundUpdateLimitsExplanation => 'A háttérben történő telepítés sikeressége csak az Updatium megnyitásakor állapítható meg.';

  @override
  String get verifyLatestTag => '„Legújabb” címke ellenőrzése';

  @override
  String get intermediateLinkRegex => 'Szűrő egy „köztes” hivatkozás felkereséséhez';

  @override
  String get filterByLinkText => 'Hivatkozások szűrése hivatkozásszöveg alapján';

  @override
  String get matchLinksOutsideATags => 'Hivatkozások keresése az <a> címkéken kívül is';

  @override
  String get intermediateLinkNotFound => 'Nem található köztes hivatkozás';

  @override
  String get intermediateLink => 'Köztes hivatkozás';

  @override
  String get exemptFromBackgroundUpdates => 'Mentes a háttérben történő frissítések alól (ha engedélyezett)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Háttérfrissítések letiltása, amikor az eszköz nem csatlakozik a Wi-Fi-hez';

  @override
  String get bgUpdatesWhileChargingOnly => 'Háttérfrissítések letiltása, amikor az eszköz nincs a töltőn';

  @override
  String get autoSelectHighestVersionCode => 'Legmagasabb verziókódú APK automatikus kiválasztása';

  @override
  String get versionExtractionRegEx => 'Verzió-karakterlánc kivonatolása reguláris kifejezéssel';

  @override
  String get trimVersionString => 'Verzió-karakterlánc levágása reguláris kifejezéssel';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'A(z) „$p0” esetén használandó csoport egyeztetése';
  }

  @override
  String get matchGroupToUse => 'Verzió-karakterlánc kivonatolásához használandó csoport reguláris kifejezéssel való egyeztetése';

  @override
  String get highlightTouchTargets => 'Kevésbé egyértelmű érintési pontok kiemelése';

  @override
  String get pickExportDir => 'Válassza ki a könyvtárat, ahová exportálni szeretne';

  @override
  String get autoExportOnChanges => 'Automatikus exportálás a változtatások után';

  @override
  String get includeSettings => 'Tartalmazza a beállításokat';

  @override
  String get filterVersionsByRegEx => 'Verziók szűrése reguláris kifejezéssel';

  @override
  String get trySelectingSuggestedVersionCode => 'Próbálja kiválasztani a „Javasolt” verziókódú APK-t';

  @override
  String get dontSortReleasesList => 'API-ból származó kiadási sorrend megőrzése';

  @override
  String get reverseSort => 'Fordított rendezés';

  @override
  String get takeFirstLink => 'Vegye az első hivatkozást';

  @override
  String get skipSort => 'Rendezés kihagyása';

  @override
  String get debugMenu => 'Hibakereső menü';

  @override
  String get bgTaskStarted => 'A háttérfeladat elindult – ellenőrizze a naplókat.';

  @override
  String get runBgCheckNow => 'Frissítések ellenőrzése a háttérben most';

  @override
  String get versionExtractWholePage => '„Verzió-karakterlánc kivonatolása reguláris kifejezéssel” alkalmazása az egész oldalra';

  @override
  String get installing => 'Telepítés';

  @override
  String get skipUpdateNotifications => 'Frissítési értesítések kihagyása';

  @override
  String get updatesAvailableNotifChannel => 'Frissítések érhetők el';

  @override
  String get appsUpdatedNotifChannel => 'Alkalmazások frissítve';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Megkísérelt alkalmazás-frissítések';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Hiba a frissítések ellenőrzésekor';

  @override
  String get appsRemovedNotifChannel => 'Eltávolított alkalmazások';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'A(z) $p0 letöltése';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Teljes alkalmazás telepítés';

  @override
  String get checkingForUpdatesNotifChannel => 'Frissítések ellenőrzése';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Csak a telepített és a csak nyomon követhető alkalmazások frissítéseinek ellenőrzése';

  @override
  String get supportFixedAPKURL => 'Támogatja a rögzített APK-webcímeket';

  @override
  String selectX(Object p0) {
    return '$p0 kiválasztása';
  }

  @override
  String get parallelDownloads => 'Párhuzamos letöltések engedélyezése';

  @override
  String get useShizuku => 'Shizuku vagy Sui használata a telepítéshez';

  @override
  String get shizukuBinderNotFound => 'A Shizuku szolgáltatás nem fut';

  @override
  String get shizukuOld => 'Régi Shizuku verzió (<11) - frissítse';

  @override
  String get shizukuOldAndroidWithADB => 'A Shizuku csak Android < 8.1 ADB-vel fut - frissítse az Androidot vagy használja a Suit helyette';

  @override
  String get shizukuPretendToBeGooglePlay => 'Google Play beállítása telepítési forrásként (ha Shizukut használ)';

  @override
  String get useSystemFont => 'Rendszer betűtípusának használata';

  @override
  String get useVersionCodeAsOSVersion => 'Alkalmazás verziókódjának használata a rendszer által felismert verzióként';

  @override
  String get requestHeader => 'Kérelemfejléc';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Legutóbbi csomagfeltöltés használata a kiadás dátumaként';

  @override
  String get defaultPseudoVersioningMethod => 'Alapértelmezett pszeudoverziós módszer';

  @override
  String get partialAPKHash => 'Részleges APK-kivonat';

  @override
  String get apkLinkHash => 'APK-hivatkozáskivonat';

  @override
  String get directAPKLink => 'Közvetlen APK-hivatkozás';

  @override
  String get pseudoVersionInUse => 'Egy pszeudoverzió van használatban';

  @override
  String get installed => 'Telepített';

  @override
  String get latest => 'Legújabb';

  @override
  String get invertRegEx => 'Reguláris kifejezés invertálása';

  @override
  String get note => 'Megjegyzés';

  @override
  String selfHostedNote(Object p0) {
    return 'A(z) „$p0” legördülő menü segítségével elérhetővé válnak a bármilyen más forrásból származó saját üzemeltetésű vagy egyéni példányok.';
  }

  @override
  String get badDownload => 'Az APK-t nem lehetett elemezni (inkompatibilis vagy részleges letöltés)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Új alkalmazások megosztása az AppVerifierrel (ha elérhető)';

  @override
  String get appVerifierInstructionToast => 'Ossza meg az AppVerifierrel, majd térjen vissza ide, ha kész.';

  @override
  String get wiki => 'Súgó/Wiki';

  @override
  String get allowInsecure => 'Nem biztonságos HTTP-kérések engedélyezése';

  @override
  String get stayOneVersionBehind => 'Maradjon egy verzióval a legújabb mögött';

  @override
  String get useFirstApkOfVersion => 'Legelső APK automatikus kiválasztása, ha több APK is található';

  @override
  String get refreshBeforeDownload => 'Alkalmazás adatainak frissítése a letöltés előtt';

  @override
  String get tencentAppStore => 'Tencent Appstore';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'Vivo App Store (CN)';

  @override
  String get name => 'Név';

  @override
  String get smartname => 'Név (Okos)';

  @override
  String get sortMethod => 'Rendezési eljárás';

  @override
  String get welcome => 'Üdvözöljük!';

  @override
  String get documentationLinksNote => 'Az alábbi hivatkozás az Updatium GitHub oldalára vezet, amely további videók, cikkek, beszélgetések és egyéb források hivatkozásait tartalmazza, amelyek segítenek megérteni az alkalmazás használatát.';

  @override
  String get batteryOptimizationNote => 'Megjegyzés: A háttérfrissítések megbízhatóbban működhetnek, ha kikapcsolja a rendszer akkumulátor-optimalizálását az Updatium számára.';

  @override
  String fileDeletionError(Object p0) {
    return 'Nem sikerült törölni a fájlt (próbálja meg kézzel törölni, majd próbálja meg újra): \"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium előtér-szolgáltatás';

  @override
  String get foregroundServiceExplanation => 'Előtér-szolgáltatás használata a frissítések ellenőrzéséhez (megbízhatóbb, de több energiát fogyaszt)';

  @override
  String get fgServiceNotice => 'Ez az értesítés a háttérben történő frissítésellenőrzéshez szükséges (a rendszer beállításaiban elrejthető).';

  @override
  String get excludeSecrets => 'Érzékeny adatok (például: személyes hozzáférési tokenek) kihagyása';

  @override
  String get ghReqPrefix => '„sky22333/hubproxy” példány a GitHub lekérdezéséhez';

  @override
  String get includeZips => 'ZIP-fájlok belefoglalása';

  @override
  String get zippedApkFilterRegEx => 'APK-fájlok szűrése a ZIP-fájlon belül';

  @override
  String get googleVerificationWarningP1 => 'A Google bejelentette, hogy 2026/2027-től kezdődően az összes alkalmazáshoz, amely „tanúsított\" (certified) Android eszközökön fut, a fejlesztőknek a személyes azonosító adataikat közvetlenül a Google-nek kell majd benyújtaniuk.\n\nEzt követően, az Updatium esetleg nem fog működni a tanúsított Android eszközökön.';

  @override
  String get googleVerificationWarningP2 => 'További információkért látogasson el a https://keepandroidopen.org/ weboldalra.';

  @override
  String get googleVerificationWarningP3 => 'Fontos megjegyezni, hogy rövid távon még lehetséges lehet az „ellenőrizetlen” (nem megfelelő) alkalmazások telepítése egy „speciális folyamaton” keresztül, amelyre a Google ígéretet tett, hogy megvalósít a bejelentésüket követő széles körű felháborodás miatt. Azonban azt nem részletezték, hogy hogyan is működne ez, ezért nem világos, hogy ez gyakorlatilag megőrzi-e a felhasználók szabadsághoz való jogait.\n\nMindenesetre a Google lépése jelentős előrelépés a felhasználók számára elérhető szabad, általános célú alkalmazások megszűnése felé.\n\nA nem tanúsított operációs rendszereket, mint például a GrapheneOS, ez nem érinti mindaddig, amíg működhetnek.';

  @override
  String get multipleSigners => 'Többen is aláírták';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Biztosan eltávolítja az alkalmazásokat?',
      one: 'Biztosan eltávolítja az alkalmazást?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Túl sok kérés (lekérdezés-korlátozás) – próbálja újra $count perc múlva,\nvagy adjon meg egy GitHub/GitLab API-kulcsot',
      one: 'Túl sok kérés (lekérdezés-korlátozás) – próbálja újra $count perc múlva,\nvagy adjon meg egy GitHub/GitLab API-kulcsot',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Frissítések ellenőrzése a háttérben a következőt észlelte: $count - Újrapróbálkozás: $count perc múlva',
      one: 'Frissítések ellenőrzése a háttérben a következőt észlelte: $count - Újrapróbálkozás: $count perc múlva',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Frissítések ellenőrzése a háttérben $count frissítést talált - szükség esetén értesíti a felhasználót',
      one: 'Frissítések ellenőrzése a háttérben $count frissítést talált - szükség esetén értesíti a felhasználót',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count alkalmazás',
      one: '$count alkalmazás',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count webcím',
      one: '$count webcím',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perc',
      one: '$count perc',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count óra',
      one: '$count óra',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count nap',
      one: '$count nap',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$n napló törölve lett ($after után, és $after előtt)',
      one: '$n napló törölve lett ($after után, és $after előtt)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A(z) $count és $count további alkalmazás frissítést kapott.',
      one: 'A(z) $count és 1 további alkalmazás frissítést kapott.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A(z) $count és $count további alkalmazás frissítve.',
      one: 'A(z) $count és 1 további alkalmazás frissítve.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Nem sikerült frissíteni a következőt: $count, valamint $count további alkalmazást.',
      one: 'Nem sikerült frissíteni a következőt: $count, valamint 1 további alkalmazást.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A(z) $count, valamint $count további alkalmazás sikeresen frissítve.',
      one: 'A(z) $count, valamint 1 további alkalmazás sikeresen frissítve.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APK',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tanúsítványkivonatok',
      one: 'Tanúsítványkivonat',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Biztonsági és Jogi Felelősségkorlátozás';

  @override
  String get license => 'Licenc';

  @override
  String get licenseText => 'Ez az alkalmazás a GPL v3 licenc alatt kerül terjesztésre.';

  @override
  String get disclaimer => 'Felelősségkorlátozás';

  @override
  String get disclaimerText => 'Ez az alkalmazás nem terjeszti, nem hosztolja és nem ellenőrzi a külső alkalmazások egyikét sem. A felhasználó viseli a teljes felelősséget az ezen eszközzel telepített bármely szoftver biztonságáért és jogszerűségéért.\n\nhttps://github.com/omeritzics/Updatium az Updatium letöltésének egyetlen hivatalos helye - erősen nem javasolt más helyekről letölteni, mivel a nem hivatalos forrásokból történő letöltés nem biztonságos.';

  @override
  String get privacy => 'Adatvédelem';

  @override
  String get privacyText => 'Ez az alkalmazás adatvédelem-központú és nem gyűjt személyes adatokat.';

  @override
  String get acceptAndContinue => 'Elfogadás és folytatás';

  @override
  String get decline => 'Elutasítás';
}
