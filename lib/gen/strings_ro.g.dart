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
class TranslationsRo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ro,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ro>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRo _root = this; // ignore: unused_field

	@override 
	TranslationsRo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRo(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Nu este un URL valid pentru aplicația {}';
	@override String get noReleaseFound => 'Nu s-a găsit o versiune potrivită';
	@override String get noVersionFound => 'Nu s-a putut determina versiunea lansării';
	@override String get urlMatchesNoSource => 'URL-ul nu se potrivește cu o sursă cunoscută';
	@override String get cantInstallOlderVersion => 'Nu se poate instala o versiune mai veche a unei aplicații';
	@override String get appIdMismatch => 'ID-ul pachetului descărcat nu se potrivește cu ID-ul aplicației existente';
	@override String get functionNotImplemented => 'Această clasă nu a implementat această funcție';
	@override String get placeholder => 'Placeholder';
	@override String get someErrors => 'Au apărut unele erori';
	@override String get unexpectedError => 'Eroare neașteptată';
	@override String get ok => 'OK';
	@override String get and => 'și';
	@override String get githubPATLabel => 'Token de acces personal GitHub';
	@override String get includePrereleases => 'Include versiuni pre-lansare';
	@override String get fallbackToOlderReleases => 'Revenire la versiuni mai vechi';
	@override String get filterReleaseTitlesByRegEx => 'Filtrează titlurile lansărilor după expresie regulată';
	@override String get invalidRegEx => 'Expresie regulată invalidă';
	@override String get noDescription => 'Fără descriere';
	@override String get cancel => 'Anulează';
	@override String get kContinue => 'Continuă';
	@override String get requiredInBrackets => '(obligatoriu)';
	@override String get dropdownNoOptsError => 'EROARE: MENIUL DROPDOWN TREBUIE SĂ AIBĂ CEL PUȚIN O OPȚIUNE';
	@override String get color => 'Culoare';
	@override String get standard => 'Standard';
	@override String get custom => 'Personalizat';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Folosește culorile Material You';
	@override String get githubStarredRepos => 'Repozitorii GitHub marcate cu stea';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nume utilizator';
	@override String get wrongArgNum => 'Număr greșit de argumente furnizate';
	@override String get xIsTrackOnly => '{} este doar pentru urmărire';
	@override String get source => 'Sursă';
	@override String get app => 'Aplicație';
	@override String get appsFromSourceAreTrackOnly => 'Aplicațiile din această sursă sunt \'doar pentru urmărire\'.';
	@override String get youPickedTrackOnly => 'Ați selectat opțiunea \'doar pentru urmărire\'.';
	@override String get trackOnlyAppDescription => 'Aplicația va fi urmărită pentru actualizări, dar Updatium nu va putea descărca sau instala aplicația.';
	@override String get cancelled => 'Anulat';
	@override String get appAlreadyAdded => 'Aplicația deja adăugată';
	@override String get alreadyUpToDateQuestion => 'Aplicația deja actualizată?';
	@override String get addApp => 'Adaugă Aplicație';
	@override String get appSourceURL => 'URL sursă aplicație';
	@override String get error => 'Eroare';
	@override String get add => 'Adaugă';
	@override String get advanced => 'Avansat';
	@override String get searchSomeSourcesLabel => 'Caută (doar unele surse)';
	@override String get search => 'Caută';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opțiuni suplimentare pentru {}';
	@override String get supportedSources => 'Surse acceptate';
	@override String get trackOnlyInBrackets => '(doar pentru urmărire)';
	@override String get searchableInBrackets => '(căutabil)';
	@override String get appsString => 'Aplicații';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Bun venit!';
	@override String get noAppsSubtext => 'Puteți adăuga prima aplicație apăsând pe \'Adaugă Aplicație\' mai jos.';
	@override String get noAppsForFilter => 'Nu există aplicații pentru filtrul selectat';
	@override String get byX => 'De {}';
	@override String get percentProgress => 'Progres: {}%';
	@override String get pleaseWait => 'Vă rugăm așteptați';
	@override String get updateAvailable => 'Actualizare disponibilă';
	@override String get notInstalled => 'Neinstalat';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versiune';
	@override String get selectAll => 'Selectează tot';
	@override String get deselectX => 'Deselectează {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} va fi eliminat din Updatium dar va rămâne instalat pe dispozitiv.';
	@override String get removeSelectedAppsQuestion => 'Eliminați aplicațiile selectate?';
	@override String get removeSelectedApps => 'Eliminați aplicațiile selectate';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Actualizează {}';
	@override String get installX => 'Instalează {}';
	@override String get markXTrackOnlyAsUpdated => 'Marchează {}\n(doar pentru urmărire)\nca actualizat';
	@override String get changeX => 'Modifică {}';
	@override String get installUpdateApps => 'Instalează/actualizează aplicații';
	@override String get installUpdateSelectedApps => 'Instalează/actualizează aplicațiile selectate';
	@override String get markXSelectedAppsAsUpdated => 'Marchează {} aplicații selectate ca actualizate?';
	@override String get no => 'Nu';
	@override String get yes => 'Da';
	@override String get markSelectedAppsUpdated => 'Marchează aplicațiile selectate ca actualizate';
	@override String get pinToTop => 'Fixează sus';
	@override String get unpinFromTop => 'Anulează fixarea sus';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Resetați starea de instalare pentru aplicațiile selectate?';
	@override String get installStatusOfXWillBeResetExplanation => 'Starea de instalare a oricăror aplicații selectate va fi resetată.\n\nAcest lucru poate ajuta atunci când versiunea aplicației afișată în Updatium este incorectă din cauza actualizărilor eșuate sau a altor probleme.';
	@override String get customLinkMessage => 'Aceste linkuri funcționează pe dispozitivele cu Updatium instalat';
	@override String get shareAppConfigLinks => 'Distribuiți configurația aplicației ca link HTML';
	@override String get resetInstallStatus => 'Resetează starea de instalare';
	@override String get more => 'Mai mult';
	@override String get removeOutdatedFilter => 'Elimină filtrul de aplicații neactualizate';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Afișează doar aplicațiile neactualizate';
	@override String get filter => 'Filtrează';
	@override String get filterApps => 'Filtrează aplicații';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nume aplicație';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Aplicații actualizate';
	@override String get nonInstalledApps => 'Aplicații neinstalate';
	@override String get importExport => 'Import/export';
	@override String get settings => 'Setări';
	@override String get exportedTo => 'Exportat în {}';
	@override String get updatiumExport => 'Export Updatium';
	@override String get failedToExport => 'Eșec la export';
	@override String get exportAlreadyInProgress => 'Export deja în curs';
	@override String get exportDirNotAccessible => 'Directorul de export nu este accesibil';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Eșec la crearea fișierului de export';
	@override String get invalidInput => 'Input invalid';
	@override String get importedX => 'Importat {}';
	@override String get updatiumImport => 'Import Updatium';
	@override String get importFromURLList => 'Import din listă de URL-uri';
	@override String get searchQuery => 'Interogare căutare';
	@override String get appURLList => 'Listă URL-uri aplicații';
	@override String get line => 'Linie';
	@override String get searchX => 'Caută {}';
	@override String get noResults => 'Nu s-au găsit rezultate';
	@override String get importX => 'Import {}';
	@override String get importedAppsIdDisclaimer => 'Aplicațiile importate pot apărea incorect ca \'neinstalate\'.\nPentru a rezolva acest lucru, reinstalați-le prin Updatium.\nAcest lucru nu ar trebui să afecteze datele aplicației.\n\nAfectează doar metodele de import URL și de la terți.';
	@override String get importErrors => 'Erori de import';
	@override String get importedXOfYApps => '{} din {} aplicații importate.';
	@override String get followingURLsHadErrors => 'Următoarele URL-uri au avut erori:';
	@override String get selectURL => 'Selectează URL';
	@override String get selectURLs => 'Selectează URL-uri';
	@override String get pick => 'Alege';
	@override String get theme => 'Temă';
	@override String get dark => 'Întunecat';
	@override String get light => 'Luminos';
	@override String get followSystem => 'Urmărește sistemul';
	@override String get followSystemThemeExplanation => 'Urmărirea temei sistemului este posibilă doar folosind aplicații terțe';
	@override String get useBlackTheme => 'Folosește temă întunecată complet negru';
	@override String get appSortBy => 'Sortare aplicații după';
	@override String get authorName => 'Autor/nume';
	@override String get nameAuthor => 'Nume/autor';
	@override String get asAdded => 'Conform adăugării';
	@override String get appSortOrder => 'Ordine sortare aplicații';
	@override String get ascending => 'Crescător';
	@override String get descending => 'Descrescător';
	@override String get bgUpdateCheckInterval => 'Interval verificare actualizări în fundal';
	@override String get neverManualOnly => 'Niciodată - doar manual';
	@override String get appearance => 'Aspect';
	@override String get pinUpdates => 'Fixează actualizările sus în vizualizarea aplicațiilor';
	@override String get updates => 'Actualizări';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Specific sursei';
	@override String get appSource => 'Sursă aplicație';
	@override String get appSourceHint => 'Deschide repo-ul sursei aplicației';
	@override String get noLogs => 'Nu există jurnale';
	@override String get appLogs => 'Jurnale aplicație';
	@override String get appLogsHint => 'Vizualizează jurnalele aplicației';
	@override String get close => 'Închide';
	@override String get share => 'Distribuie';
	@override String get appNotFound => 'Aplicația nu a fost găsită';
	@override String get networkError => 'Conexiunea la rețea a eșuat';
	@override String get invalidUrlFormat => 'Format URL invalid';
	@override String get accessDenied => 'Acces refuzat';
	@override String get importFailed => 'Import eșuat';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Alege un APK';
	@override String get appHasMoreThanOnePackage => '{} are mai mult de un pachet:';
	@override String get deviceSupportsXArch => 'Dispozitivul dvs. suportă arhitectura CPU {}.';
	@override String get deviceSupportsFollowingArchs => 'Dispozitivul dvs. suportă următoarele arhitecturi CPU:';
	@override String get warning => 'Avertisment';
	@override String get sourceIsXButPackageFromYPrompt => 'Sursa aplicației este \'{}\' dar pachetul de lansare vine de la \'{}\'. Continuați?';
	@override String get updatesAvailable => 'Actualizări disponibile';
	@override String get updatesAvailableNotifDescription => 'Notifică utilizatorul că actualizări sunt disponibile pentru una sau mai multe aplicații urmărite de Updatium';
	@override String get noNewUpdates => 'Nu există actualizări noi.';
	@override String get xHasAnUpdate => '{} are o actualizare.';
	@override String get appsUpdated => 'Aplicații actualizate';
	@override String get appsNotUpdated => 'Eșec la actualizarea aplicațiilor';
	@override String get appsUpdatedNotifDescription => 'Notifică utilizatorul că actualizările la una sau mai multe aplicații au fost aplicate în fundal';
	@override String get xWasUpdatedToY => '{} a fost actualizat la {}.';
	@override String get xWasNotUpdatedToY => 'Eșec la actualizarea {} la {}.';
	@override String get errorCheckingUpdates => 'Eroare la verificarea actualizărilor';
	@override String get errorCheckingUpdatesNotifDescription => 'O notificare care apare când verificarea actualizărilor în fundal eșuează';
	@override String get appsRemoved => 'Aplicații eliminate';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifică utilizatorul că una sau mai multe aplicații au fost eliminate din cauza erorilor la încărcarea lor';
	@override String get xWasRemovedDueToErrorY => '{} a fost eliminat din cauza acestei erori: {}';
	@override String get completeAppInstallation => 'Finalizați instalarea aplicației';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium trebuie să fie deschis pentru a instala aplicații';
	@override String get completeAppInstallationNotifDescription => 'Cere utilizatorului să se întoarcă la Updatium pentru a finaliza instalarea unei aplicații';
	@override String get checkingForUpdates => 'Se verifică actualizările';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notificare tranzitorie care apare la verificarea actualizărilor';
	@override String get pleaseAllowInstallPerm => 'Vă rugăm să permiteți Updatium să instaleze aplicații';
	@override String get trackOnly => 'Doar pentru urmărire';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Eroare {}';
	@override String get versionCorrectionDisabled => 'Corecția versiunii dezactivată (plugin-ul nu pare să funcționeze)';
	@override String get unknown => 'Necunoscut';
	@override String get none => 'Niciunul';
	@override String get all => 'Toate';
	@override String get never => 'Niciodată';
	@override String get latestVersion => 'Cea mai recentă';
	@override String get installedVersionX => 'Instalat: {}';
	@override String get lastUpdateCheckX => 'Ultima verificare actualizare: {}';
	@override String get remove => 'Elimină';
	@override String get quickLinks => 'Link-uri Rapide';
	@override String get yesMarkUpdated => 'Da, marchează ca actualizat';
	@override String get fdroid => 'F-Droid oficial';
	@override String get appIdOrName => 'ID sau nume aplicație';
	@override String get appId => 'ID aplicație';
	@override String get appWithIdOrNameNotFound => 'Nu s-a găsit nicio aplicație cu acel ID sau nume';
	@override String get reposHaveMultipleApps => 'Repozitorii pot conține aplicații multiple';
	@override String get fdroidThirdPartyRepo => 'Repo terță parte F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instalează';
	@override String get markInstalled => 'Marchează ca instalat';
	@override String get update => 'Actualizează';
	@override String get updated => 'Actualizat';
	@override String get markUpdated => 'Marchează ca actualizat';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opțiuni suplimentare';
	@override String get disableVersionDetection => 'Dezactivează detectarea versiunii';
	@override String get noVersionDetectionExplanation => 'Această opțiune ar trebui folosită doar pentru aplicațiile unde detectarea versiunii nu funcționează corect.';
	@override String get downloadingX => 'Se descarcă {}';
	@override String get downloadX => 'Descarcă {}';
	@override String get downloadedX => 'Descărcat {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Resursă lansare';
	@override String get downloadNotifDescription => 'Notifică utilizatorul despre progresul descărcării unei aplicații';
	@override String get noAPKFound => 'Nu s-a găsit niciun APK';
	@override String get noVersionDetection => 'Fără detectare versiune';
	@override String get categorize => 'Categorizează';
	@override String get categories => 'Categorii';
	@override String get category => 'Categorie';
	@override String get noCategory => 'Fără categorie';
	@override String get noCategories => 'Nu există categorii';
	@override String get categoryDeleteQuestion => 'Ștergeți categoriile?';
	@override String get categoryDeleteWarning => 'Toate aplicațiile din categoriile șterse vor fi setate ca necategorizate.';
	@override String get addCategory => 'Adaugă categorie';
	@override String get label => 'Etichetă';
	@override String get language => 'Limbă';
	@override String get copiedToClipboard => 'Copiat în clipboard';
	@override String get storagePermissionDenied => 'Permisiune de stocare refuzată';
	@override String get selectedCategorizeWarning => 'Acest lucru va înlocui orice setări de categorie existente pentru aplicațiile selectate.';
	@override String get filterAPKsByRegEx => 'Filtrează APK-urile după expresie regulată';
	@override String get removeFromUpdatium => 'Elimină din Updatium';
	@override String get uninstallFromDevice => 'Dezinstalează de pe dispozitiv';
	@override String get onlyWorksWithNonVersionDetectApps => 'Funcționează doar pentru aplicațiile cu detectarea versiunii dezactivată.';
	@override String get releaseDateAsVersion => 'Folosește data lansării ca șir de versiune';
	@override String get releaseTitleAsVersion => 'Folosește titlul lansării ca șir de versiune';
	@override String get releaseDateAsVersionExplanation => 'Această opțiune ar trebui folosită doar pentru aplicațiile unde detectarea versiunii nu funcționează corect, dar o dată de lansare este disponibilă.';
	@override String get changes => 'Modificări';
	@override String get releaseDate => 'Data lansării';
	@override String get importFromURLsInFile => 'Import din URL-uri din fișier (ca OPML)';
	@override String get versionDetectionExplanation => 'Împacă șirul versiunii cu versiunea detectată din OS';
	@override String get versionDetection => 'Detectare versiune';
	@override String get standardVersionDetection => 'Detectare standard versiune';
	@override String get groupByCategory => 'Grupează după categorie';
	@override String get listView => 'Vizualizare listă';
	@override String get gridView => 'Vizualizare grilă';
	@override String get autoApkFilterByArch => 'Încearcă să filtrezi APK-urile după arhitectura CPU dacă este posibil';
	@override String get autoLinkFilterByArch => 'Încearcă să filtrezi linkurile după arhitectura CPU dacă este posibil';
	@override String get overrideSource => 'Suprascrie sursa';
	@override String get dontShowAgain => 'Nu mai arăta acest lucru';
	@override String get dontShowTrackOnlyWarnings => 'Nu arăta avertismentele \'doar pentru urmărire\'';
	@override String get dontShowAPKOriginWarnings => 'Nu arăta avertismentele despre originea APK';
	@override String get moveNonInstalledAppsToBottom => 'Mută aplicațiile neinstalate la baza vizualizării aplicațiilor';
	@override String get gitlabPATLabel => 'Token de acces personal GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Despre';
	@override String get requiresCredentialsInSettings => '{} necesită credențiale suplimentare (în Setări)';
	@override String get checkOnStart => 'Verifică actualizări la pornire';
	@override String get safeMode => 'Mod Sigur';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Adaugă Aplicație este dezactivat în Mod Sigur';
	@override String get tryInferAppIdFromCode => 'Încearcă să deduci ID-ul aplicației din codul sursă';
	@override String get removeOnExternalUninstall => 'Elimină automat aplicațiile dezinstalate extern';
	@override String get pickHighestVersionCode => 'Selectează automat APK-ul cu cel mai mare cod de versiune';
	@override String get checkUpdateOnDetailPage => 'Verifică actualizări la deschiderea paginii de detalii a aplicației';
	@override String get disablePageTransitions => 'Dezactivează animațiile de tranziție între pagini';
	@override String get reversePageTransitions => 'Inversează animațiile de tranziție între pagini';
	@override String get minStarCount => 'Număr minim de stele';
	@override String get addInfoBelow => 'Adăugați aceste informații mai jos.';
	@override String get addInfoInSettings => 'Adăugați aceste informații în Setări.';
	@override String get githubSourceNote => 'Limitarea ratei GitHub poate fi evitată folosind o cheie API.';
	@override String get sortByLastLinkSegment => 'Sortează doar după ultimul segment al linkului';
	@override String get filterReleaseNotesByRegEx => 'Filtrează notele de lansare după expresie regulată';
	@override String get customLinkFilterRegex => 'Filtru personalizat link-uri APK după expresie regulată (implicit \'.apk$\')';
	@override String get appsPossiblyUpdated => 'S-au încercat actualizări de aplicații';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifică utilizatorul că actualizările la una sau mai multe aplicații au fost posibil aplicate în fundal';
	@override String get xWasPossiblyUpdatedToY => '{} este posibil să fi fost actualizat la {}.';
	@override String get enableBackgroundUpdates => 'Activează actualizările în fundal';
	@override String get backgroundUpdateReqsExplanation => 'Actualizările în fundal s-ar putea să nu fie posibile pentru toate aplicațiile.';
	@override String get backgroundUpdateLimitsExplanation => 'Succesul unei instalări în fundal poate fi determinat doar când Updatium este deschis.';
	@override String get verifyLatestTag => 'Verifică eticheta \'latest\'';
	@override String get intermediateLinkRegex => 'Filtrează pentru un link \'intermediar\' de vizitat';
	@override String get filterByLinkText => 'Filtrează linkurile după textul linkului';
	@override String get matchLinksOutsideATags => 'Potrivește linkuri în afara etichetelor <a>';
	@override String get intermediateLinkNotFound => 'Link intermediar negăsit';
	@override String get intermediateLink => 'Link intermediar';
	@override String get exemptFromBackgroundUpdates => 'Scutește de actualizările în fundal (dacă sunt activate)';
	@override String get bgUpdatesOnWiFiOnly => 'Dezactivează actualizările în fundal când nu sunteți pe Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Dezactivează actualizările în fundal când nu se încarcă';
	@override String get autoSelectHighestVersionCode => 'Selectează automat APK-ul cu cel mai mare versionCode';
	@override String get versionExtractionRegEx => 'Expresie regulată extragere șir versiune';
	@override String get trimVersionString => 'Taie șirul versiunii cu expresie regulată';
	@override String get matchGroupToUseForX => 'Grup de potrivire de folosit pentru "{}"';
	@override String get matchGroupToUse => 'Grup de potrivire de folosit pentru expresia regulată de extragere a șirului versiunii';
	@override String get highlightTouchTargets => 'Evidențiază țintele de atingere mai puțin evidente';
	@override String get pickExportDir => 'Alege director de export';
	@override String get autoExportOnChanges => 'Export automat la modificări';
	@override String get includeSettings => 'Include setări';
	@override String get filterVersionsByRegEx => 'Filtrează versiunile după expresie regulată';
	@override String get trySelectingSuggestedVersionCode => 'Încearcă să selectezi APK-ul cu versionCode sugerat';
	@override String get dontSortReleasesList => 'Păstrează ordinea lansărilor din API';
	@override String get reverseSort => 'Sortare inversă';
	@override String get takeFirstLink => 'Ia primul link';
	@override String get skipSort => 'Omite sortarea';
	@override String get debugMenu => 'Meniu depanare';
	@override String get bgTaskStarted => 'Sarcina de fundal a început - verificați jurnalele.';
	@override String get runBgCheckNow => 'Rulează verificarea actualizărilor în fundal acum';
	@override String get versionExtractWholePage => 'Aplică expresia regulată de extragere a șirului versiunii pe întreaga pagină';
	@override String get installing => 'Se instalează';
	@override String get skipUpdateNotifications => 'Omite notificările de actualizare';
	@override String get updatesAvailableNotifChannel => 'Actualizări disponibile';
	@override String get appsUpdatedNotifChannel => 'Aplicații actualizate';
	@override String get appsPossiblyUpdatedNotifChannel => 'S-au încercat actualizări de aplicații';
	@override String get errorCheckingUpdatesNotifChannel => 'Eroare la verificarea actualizărilor';
	@override String get appsRemovedNotifChannel => 'Aplicații eliminate';
	@override String get downloadingXNotifChannel => 'Se descarcă {}';
	@override String get completeAppInstallationNotifChannel => 'Finalizați instalarea aplicației';
	@override String get checkingForUpdatesNotifChannel => 'Se verifică actualizările';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Verifică actualizări doar pentru aplicațiile instalate și cele doar pentru urmărire';
	@override String get supportFixedAPKURL => 'Suportă URL-uri APK fixe';
	@override String get selectX => 'Selectează {}';
	@override String get parallelDownloads => 'Permite descărcări paralele';
	@override String get useShizuku => 'Folosește Shizuku sau Sui pentru a instala';
	@override String get shizukuBinderNotFound => 'Serviciul Shizuku nu rulează';
	@override String get shizukuOld => 'Versiune veche Shizuku (<11) - actualizați-l';
	@override String get shizukuOldAndroidWithADB => 'Shizuku rulează pe Android < 8.1 cu ADB - actualizați Android sau folosiți Sui în schimb';
	@override String get shizukuPretendToBeGooglePlay => 'Setează Google Play ca sursă de instalare (dacă se folosește Shizuku)';
	@override String get useSystemFont => 'Folosește fontul sistemului';
	@override String get useVersionCodeAsOSVersion => 'Folosește versionCode-ul aplicației ca versiune detectată de OS';
	@override String get requestHeader => 'Antet cerere';
	@override String get useLatestAssetDateAsReleaseDate => 'Folosește data încărcării celui mai recent activ ca dată de lansare';
	@override String get defaultPseudoVersioningMethod => 'Metodă implicită de pseudo-versionare';
	@override String get partialAPKHash => 'Hash parțial APK';
	@override String get APKLinkHash => 'Hash link APK';
	@override String get directAPKLink => 'Link direct APK';
	@override String get pseudoVersionInUse => 'O pseudo-versiune este în uz';
	@override String get installedVersion => 'Instalat';
	@override String get installed => 'Instalat';
	@override String get notInstalledApps => 'Neinstalat';
	@override String get latest => 'Cel mai recent';
	@override String get invertRegEx => 'Inversează expresia regulată';
	@override String get note => 'Notă';
	@override String get selfHostedNote => 'Meniul dropdown "{}" poate fi folosit pentru a ajunge la instanțe auto-găzduite/personalizate ale oricărei surse.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK-ul nu a putut fi parsat (incompatibil sau descărcare parțială)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Distribuiți aplicațiile noi către AppVerifier (dacă este disponibil)';
	@override String get appVerifierInstructionToast => 'Distribuiți către AppVerifier, apoi reveniți aici când sunteți gata.';
	@override String get wiki => 'Ajutor/wiki';
	@override String get wikiHint => 'Deschide documentația wiki Updatium';
	@override String get allowInsecure => 'Permite cereri HTTP nesigure';
	@override String get stayOneVersionBehind => 'Rămâi cu o versiune în urmă';
	@override String get useFirstApkOfVersion => 'Selectează automat primul dintre APK-urile multiple';
	@override String get refreshBeforeDownload => 'Reîmprospătează detaliile aplicației înainte de descărcare';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nume';
	@override String get smartname => 'Nume (inteligent)';
	@override String get smartPlusDate => 'Inteligent + Dată';
	@override String get sortMethod => 'Metodă sortare';
	@override String get welcome => 'Bun venit';
	@override String get batteryOptimizationNote => 'Rețineți că descărcările în fundal pot funcționa mai fiabil dacă comutați la \'serviciu de prim-plan\' în setările Updatium și/sau dezactivați optimizarea bateriei pentru Updatium în setările OS-ului dvs.';
	@override String get fileDeletionError => 'Eșec la ștergerea fișierului (încercați să-l ștergeți manual apoi încercați din nou): "{}"';
	@override String get foregroundService => 'Serviciu de prim-plan Updatium';
	@override String get foregroundServiceExplanation => 'Folosește un serviciu de prim-plan pentru verificarea actualizărilor (mai fiabil, consumă mai multă energie)';
	@override String get fgServiceNotice => 'Această notificare este necesară pentru verificarea actualizărilor în fundal (poate fi ascunsă în setările OS)';
	@override String get excludeSecrets => 'Exclude secrete';
	@override String get GHReqPrefix => 'instanță \'omeritzics/Updatium\' pentru cereri GitHub';
	@override String get includeZips => 'Include fișiere ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrează APK-urile din interiorul ZIP-urilor';
	@override String get multipleSigners => 'Semnatari Multipli';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Eliminați aplicația?',
		other: 'Eliminați aplicațiile?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Prea multe cereri (limitat la rată) - încercați din nou în {count} minut',
		other: 'Prea multe cereri (limitat la rată) - încercați din nou în {count} minute',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Verificarea actualizărilor în fundal a întâmpinat un {error}, va programa o verificare de reîncercare în {count} minut',
		other: 'Verificarea actualizărilor în fundal a întâmpinat un {error}, va programa o verificare de reîncercare în {count} minute',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Verificarea actualizărilor în fundal a găsit {count} actualizare - va notifica utilizatorul dacă este necesar',
		other: 'Verificarea actualizărilor în fundal a găsit {count} actualizări - va notifica utilizatorul dacă este necesar',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{count} Aplicație',
		other: '{count} Aplicații',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{count} URL',
		other: '{count} URL-uri',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{count} minut',
		other: '{count} minute',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{count} oră',
		other: '{count} ore',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{count} zi',
		other: '{count} zile',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Șters {n} jurnal (înainte = {before}, după = {after})',
		other: 'Șterse {n} jurnale (înainte = {before}, după = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{app} și încă 1 aplicație mai are actualizări.',
		other: '{app} și încă {count} aplicații mai au actualizări.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{app} și încă 1 aplicație a fost actualizată.',
		other: '{app} și încă {count} aplicații au fost actualizate.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Eșec la actualizarea {app} și încă 1 aplicație.',
		other: 'Eșec la actualizarea {app} și încă {count} aplicații.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{app} și încă 1 aplicație ar putea fi fost actualizată.',
		other: '{app} și încă {count} aplicații ar putea fi fost actualizate.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: '{count} APK',
		other: '{count} APK-uri',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n,
		one: 'Hash Certificat',
		other: 'Hash-uri Certificat',
	);
	@override String get securityDisclaimerTitle => 'Renunțare la Securitate și Aspecte Legale';
	@override String get license => 'Licență';
	@override String get licenseText => 'Această aplicație este distribuită sub Licența GPL v3.';
	@override String get disclaimer => 'Renunțare';
	@override String get disclaimerText => 'Această aplicație nu distribuie, găzduiește sau verifică niciuna dintre aplicațiile externe. Utilizatorul poartă întreaga responsabilitate pentru siguranța și legalitatea oricărui software instalat prin acest instrument.\n\nhttps://github.com/omeritzics/Updatium este singurul loc oficial pentru a descărca Updatium - este foarte descurajat să îl descărcați din altă parte deoarece sursele neoficiale sunt nesigure.';
	@override String get privacy => 'Confidențialitate';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Acceptă și Continuă';
	@override String get decline => 'Refuză';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Vă place Updatium?';
	@override String get githubStarPromptContent => 'Updatium este un proiect comunitar voluntar, open-source, dezvoltat în timpul meu liber. Dacă doriți să susțineți proiectul, vă rugăm să luați în considerare să-i acordați o stea pe GitHub pentru a ne ajuta să ajungem la mai mulți utilizatori și contribuitori. Nu veți mai fi îndemnat despre acest lucru. Vă mulțumesc anticipat! :)';
	@override String get githubStarPromptStar => 'Acordă stea';
	@override String get githubStarPromptDontShowAgain => 'Nu mai arăta';
	@override String get sourceCode => 'Cod Sursă';
	@override String get developedBy => 'Dezvoltat de';
	@override String get appDescription => 'Un catalog de aplicații Android personalizabil care vă permite să vă actualizați aplicațiile direct din sursele lor APK.';
	@override String get safeModeEnabled => 'Modul Sigur este activat';
	@override String get safeModeDisabled => 'Modul Sigur este dezactivat';
	@override String get safeModeDisable => 'Dezactivează Modul Sigur';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Administrare Mod Sigur';
	@override String get safeModeSetupDescription => 'Setați o parolă pentru a activa Modul Sigur. Odată activat, Modul Sigur împiedică adăugarea de noi aplicații și poate fi dezactivat doar cu parola.';
	@override String get safeModeToggleDescription => 'Introduceți parola pentru a activa sau dezactiva Modul Sigur.';
	@override String get safeModeSetPassword => 'Setați Parolă';
	@override String get safeModeConfirmPassword => 'Confirmați Parolă';
	@override String get safeModeEnterPassword => 'Introduceți Parolă';
	@override String get safeModePasswordHint => 'Minim 8 caractere';
	@override String get safeModePasswordTooShort => 'Parola trebuie să aibă cel puțin 8 caractere';
	@override String get safeModePasswordMismatch => 'Parolele nu se potrivesc';
	@override String get safeModePasswordIncorrect => 'Parolă incorectă';
	@override String get safeModePasswordError => 'Eroare la setarea parolei. Încercați din nou.';
	@override String get safeModeEnable => 'Activează Modul Sigur';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} atingeri rămase pentru a dezactiva Modul Sigur';
	@override String get safeModeEnabledHint => 'Modul Sigur este activat. Atingeți de mai multe ori numărul versiunii din Setări pentru a dezactiva.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Am înțeles';
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

/// The flat map containing all translations for locale <ro>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Nu este un URL valid pentru aplicația {}',
			'noReleaseFound' => 'Nu s-a găsit o versiune potrivită',
			'noVersionFound' => 'Nu s-a putut determina versiunea lansării',
			'urlMatchesNoSource' => 'URL-ul nu se potrivește cu o sursă cunoscută',
			'cantInstallOlderVersion' => 'Nu se poate instala o versiune mai veche a unei aplicații',
			'appIdMismatch' => 'ID-ul pachetului descărcat nu se potrivește cu ID-ul aplicației existente',
			'functionNotImplemented' => 'Această clasă nu a implementat această funcție',
			'placeholder' => 'Placeholder',
			'someErrors' => 'Au apărut unele erori',
			'unexpectedError' => 'Eroare neașteptată',
			'ok' => 'OK',
			'and' => 'și',
			'githubPATLabel' => 'Token de acces personal GitHub',
			'includePrereleases' => 'Include versiuni pre-lansare',
			'fallbackToOlderReleases' => 'Revenire la versiuni mai vechi',
			'filterReleaseTitlesByRegEx' => 'Filtrează titlurile lansărilor după expresie regulată',
			'invalidRegEx' => 'Expresie regulată invalidă',
			'noDescription' => 'Fără descriere',
			'cancel' => 'Anulează',
			'kContinue' => 'Continuă',
			'requiredInBrackets' => '(obligatoriu)',
			'dropdownNoOptsError' => 'EROARE: MENIUL DROPDOWN TREBUIE SĂ AIBĂ CEL PUȚIN O OPȚIUNE',
			'color' => 'Culoare',
			'standard' => 'Standard',
			'custom' => 'Personalizat',
			'primary' => 'Primary',
			'useMaterialYou' => 'Folosește culorile Material You',
			'githubStarredRepos' => 'Repozitorii GitHub marcate cu stea',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nume utilizator',
			'wrongArgNum' => 'Număr greșit de argumente furnizate',
			'xIsTrackOnly' => '{} este doar pentru urmărire',
			'source' => 'Sursă',
			'app' => 'Aplicație',
			'appsFromSourceAreTrackOnly' => 'Aplicațiile din această sursă sunt \'doar pentru urmărire\'.',
			'youPickedTrackOnly' => 'Ați selectat opțiunea \'doar pentru urmărire\'.',
			'trackOnlyAppDescription' => 'Aplicația va fi urmărită pentru actualizări, dar Updatium nu va putea descărca sau instala aplicația.',
			'cancelled' => 'Anulat',
			'appAlreadyAdded' => 'Aplicația deja adăugată',
			'alreadyUpToDateQuestion' => 'Aplicația deja actualizată?',
			'addApp' => 'Adaugă Aplicație',
			'appSourceURL' => 'URL sursă aplicație',
			'error' => 'Eroare',
			'add' => 'Adaugă',
			'advanced' => 'Avansat',
			'searchSomeSourcesLabel' => 'Caută (doar unele surse)',
			'search' => 'Caută',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opțiuni suplimentare pentru {}',
			'supportedSources' => 'Surse acceptate',
			'trackOnlyInBrackets' => '(doar pentru urmărire)',
			'searchableInBrackets' => '(căutabil)',
			'appsString' => 'Aplicații',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Bun venit!',
			'noAppsSubtext' => 'Puteți adăuga prima aplicație apăsând pe \'Adaugă Aplicație\' mai jos.',
			'noAppsForFilter' => 'Nu există aplicații pentru filtrul selectat',
			'byX' => 'De {}',
			'percentProgress' => 'Progres: {}%',
			'pleaseWait' => 'Vă rugăm așteptați',
			'updateAvailable' => 'Actualizare disponibilă',
			'notInstalled' => 'Neinstalat',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versiune',
			'selectAll' => 'Selectează tot',
			'deselectX' => 'Deselectează {}',
			'xWillBeRemovedButRemainInstalled' => '{} va fi eliminat din Updatium dar va rămâne instalat pe dispozitiv.',
			'removeSelectedAppsQuestion' => 'Eliminați aplicațiile selectate?',
			'removeSelectedApps' => 'Eliminați aplicațiile selectate',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Actualizează {}',
			'installX' => 'Instalează {}',
			'markXTrackOnlyAsUpdated' => 'Marchează {}\n(doar pentru urmărire)\nca actualizat',
			'changeX' => 'Modifică {}',
			'installUpdateApps' => 'Instalează/actualizează aplicații',
			'installUpdateSelectedApps' => 'Instalează/actualizează aplicațiile selectate',
			'markXSelectedAppsAsUpdated' => 'Marchează {} aplicații selectate ca actualizate?',
			'no' => 'Nu',
			'yes' => 'Da',
			'markSelectedAppsUpdated' => 'Marchează aplicațiile selectate ca actualizate',
			'pinToTop' => 'Fixează sus',
			'unpinFromTop' => 'Anulează fixarea sus',
			'resetInstallStatusForSelectedAppsQuestion' => 'Resetați starea de instalare pentru aplicațiile selectate?',
			'installStatusOfXWillBeResetExplanation' => 'Starea de instalare a oricăror aplicații selectate va fi resetată.\n\nAcest lucru poate ajuta atunci când versiunea aplicației afișată în Updatium este incorectă din cauza actualizărilor eșuate sau a altor probleme.',
			'customLinkMessage' => 'Aceste linkuri funcționează pe dispozitivele cu Updatium instalat',
			'shareAppConfigLinks' => 'Distribuiți configurația aplicației ca link HTML',
			'resetInstallStatus' => 'Resetează starea de instalare',
			'more' => 'Mai mult',
			'removeOutdatedFilter' => 'Elimină filtrul de aplicații neactualizate',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Afișează doar aplicațiile neactualizate',
			'filter' => 'Filtrează',
			'filterApps' => 'Filtrează aplicații',
			'filterDays' => 'Filter days',
			'appName' => 'Nume aplicație',
			'author' => 'Autor',
			'upToDateApps' => 'Aplicații actualizate',
			'nonInstalledApps' => 'Aplicații neinstalate',
			'importExport' => 'Import/export',
			'settings' => 'Setări',
			'exportedTo' => 'Exportat în {}',
			'updatiumExport' => 'Export Updatium',
			'failedToExport' => 'Eșec la export',
			'exportAlreadyInProgress' => 'Export deja în curs',
			'exportDirNotAccessible' => 'Directorul de export nu este accesibil',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Eșec la crearea fișierului de export',
			'invalidInput' => 'Input invalid',
			'importedX' => 'Importat {}',
			'updatiumImport' => 'Import Updatium',
			'importFromURLList' => 'Import din listă de URL-uri',
			'searchQuery' => 'Interogare căutare',
			'appURLList' => 'Listă URL-uri aplicații',
			'line' => 'Linie',
			'searchX' => 'Caută {}',
			'noResults' => 'Nu s-au găsit rezultate',
			'importX' => 'Import {}',
			'importedAppsIdDisclaimer' => 'Aplicațiile importate pot apărea incorect ca \'neinstalate\'.\nPentru a rezolva acest lucru, reinstalați-le prin Updatium.\nAcest lucru nu ar trebui să afecteze datele aplicației.\n\nAfectează doar metodele de import URL și de la terți.',
			'importErrors' => 'Erori de import',
			'importedXOfYApps' => '{} din {} aplicații importate.',
			'followingURLsHadErrors' => 'Următoarele URL-uri au avut erori:',
			'selectURL' => 'Selectează URL',
			'selectURLs' => 'Selectează URL-uri',
			'pick' => 'Alege',
			'theme' => 'Temă',
			'dark' => 'Întunecat',
			'light' => 'Luminos',
			'followSystem' => 'Urmărește sistemul',
			'followSystemThemeExplanation' => 'Urmărirea temei sistemului este posibilă doar folosind aplicații terțe',
			'useBlackTheme' => 'Folosește temă întunecată complet negru',
			'appSortBy' => 'Sortare aplicații după',
			'authorName' => 'Autor/nume',
			'nameAuthor' => 'Nume/autor',
			'asAdded' => 'Conform adăugării',
			'appSortOrder' => 'Ordine sortare aplicații',
			'ascending' => 'Crescător',
			'descending' => 'Descrescător',
			'bgUpdateCheckInterval' => 'Interval verificare actualizări în fundal',
			'neverManualOnly' => 'Niciodată - doar manual',
			'appearance' => 'Aspect',
			'pinUpdates' => 'Fixează actualizările sus în vizualizarea aplicațiilor',
			'updates' => 'Actualizări',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Specific sursei',
			'appSource' => 'Sursă aplicație',
			'appSourceHint' => 'Deschide repo-ul sursei aplicației',
			'noLogs' => 'Nu există jurnale',
			'appLogs' => 'Jurnale aplicație',
			'appLogsHint' => 'Vizualizează jurnalele aplicației',
			'close' => 'Închide',
			'share' => 'Distribuie',
			'appNotFound' => 'Aplicația nu a fost găsită',
			'networkError' => 'Conexiunea la rețea a eșuat',
			'invalidUrlFormat' => 'Format URL invalid',
			'accessDenied' => 'Acces refuzat',
			'importFailed' => 'Import eșuat',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Alege un APK',
			'appHasMoreThanOnePackage' => '{} are mai mult de un pachet:',
			'deviceSupportsXArch' => 'Dispozitivul dvs. suportă arhitectura CPU {}.',
			'deviceSupportsFollowingArchs' => 'Dispozitivul dvs. suportă următoarele arhitecturi CPU:',
			'warning' => 'Avertisment',
			'sourceIsXButPackageFromYPrompt' => 'Sursa aplicației este \'{}\' dar pachetul de lansare vine de la \'{}\'. Continuați?',
			'updatesAvailable' => 'Actualizări disponibile',
			'updatesAvailableNotifDescription' => 'Notifică utilizatorul că actualizări sunt disponibile pentru una sau mai multe aplicații urmărite de Updatium',
			'noNewUpdates' => 'Nu există actualizări noi.',
			'xHasAnUpdate' => '{} are o actualizare.',
			'appsUpdated' => 'Aplicații actualizate',
			'appsNotUpdated' => 'Eșec la actualizarea aplicațiilor',
			'appsUpdatedNotifDescription' => 'Notifică utilizatorul că actualizările la una sau mai multe aplicații au fost aplicate în fundal',
			'xWasUpdatedToY' => '{} a fost actualizat la {}.',
			'xWasNotUpdatedToY' => 'Eșec la actualizarea {} la {}.',
			'errorCheckingUpdates' => 'Eroare la verificarea actualizărilor',
			'errorCheckingUpdatesNotifDescription' => 'O notificare care apare când verificarea actualizărilor în fundal eșuează',
			'appsRemoved' => 'Aplicații eliminate',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifică utilizatorul că una sau mai multe aplicații au fost eliminate din cauza erorilor la încărcarea lor',
			'xWasRemovedDueToErrorY' => '{} a fost eliminat din cauza acestei erori: {}',
			'completeAppInstallation' => 'Finalizați instalarea aplicației',
			'updatiumMustBeOpenToInstallApps' => 'Updatium trebuie să fie deschis pentru a instala aplicații',
			'completeAppInstallationNotifDescription' => 'Cere utilizatorului să se întoarcă la Updatium pentru a finaliza instalarea unei aplicații',
			'checkingForUpdates' => 'Se verifică actualizările',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notificare tranzitorie care apare la verificarea actualizărilor',
			'pleaseAllowInstallPerm' => 'Vă rugăm să permiteți Updatium să instaleze aplicații',
			'trackOnly' => 'Doar pentru urmărire',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Eroare {}',
			'versionCorrectionDisabled' => 'Corecția versiunii dezactivată (plugin-ul nu pare să funcționeze)',
			'unknown' => 'Necunoscut',
			'none' => 'Niciunul',
			'all' => 'Toate',
			'never' => 'Niciodată',
			'latestVersion' => 'Cea mai recentă',
			'installedVersionX' => 'Instalat: {}',
			'lastUpdateCheckX' => 'Ultima verificare actualizare: {}',
			'remove' => 'Elimină',
			'quickLinks' => 'Link-uri Rapide',
			'yesMarkUpdated' => 'Da, marchează ca actualizat',
			'fdroid' => 'F-Droid oficial',
			'appIdOrName' => 'ID sau nume aplicație',
			'appId' => 'ID aplicație',
			'appWithIdOrNameNotFound' => 'Nu s-a găsit nicio aplicație cu acel ID sau nume',
			'reposHaveMultipleApps' => 'Repozitorii pot conține aplicații multiple',
			'fdroidThirdPartyRepo' => 'Repo terță parte F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instalează',
			'markInstalled' => 'Marchează ca instalat',
			'update' => 'Actualizează',
			'updated' => 'Actualizat',
			'markUpdated' => 'Marchează ca actualizat',
			'download' => 'Download',
			'additionalOptions' => 'Opțiuni suplimentare',
			'disableVersionDetection' => 'Dezactivează detectarea versiunii',
			'noVersionDetectionExplanation' => 'Această opțiune ar trebui folosită doar pentru aplicațiile unde detectarea versiunii nu funcționează corect.',
			'downloadingX' => 'Se descarcă {}',
			'downloadX' => 'Descarcă {}',
			'downloadedX' => 'Descărcat {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Resursă lansare',
			'downloadNotifDescription' => 'Notifică utilizatorul despre progresul descărcării unei aplicații',
			'noAPKFound' => 'Nu s-a găsit niciun APK',
			'noVersionDetection' => 'Fără detectare versiune',
			'categorize' => 'Categorizează',
			'categories' => 'Categorii',
			'category' => 'Categorie',
			'noCategory' => 'Fără categorie',
			'noCategories' => 'Nu există categorii',
			'categoryDeleteQuestion' => 'Ștergeți categoriile?',
			'categoryDeleteWarning' => 'Toate aplicațiile din categoriile șterse vor fi setate ca necategorizate.',
			'addCategory' => 'Adaugă categorie',
			'label' => 'Etichetă',
			'language' => 'Limbă',
			'copiedToClipboard' => 'Copiat în clipboard',
			'storagePermissionDenied' => 'Permisiune de stocare refuzată',
			'selectedCategorizeWarning' => 'Acest lucru va înlocui orice setări de categorie existente pentru aplicațiile selectate.',
			'filterAPKsByRegEx' => 'Filtrează APK-urile după expresie regulată',
			'removeFromUpdatium' => 'Elimină din Updatium',
			'uninstallFromDevice' => 'Dezinstalează de pe dispozitiv',
			'onlyWorksWithNonVersionDetectApps' => 'Funcționează doar pentru aplicațiile cu detectarea versiunii dezactivată.',
			'releaseDateAsVersion' => 'Folosește data lansării ca șir de versiune',
			'releaseTitleAsVersion' => 'Folosește titlul lansării ca șir de versiune',
			'releaseDateAsVersionExplanation' => 'Această opțiune ar trebui folosită doar pentru aplicațiile unde detectarea versiunii nu funcționează corect, dar o dată de lansare este disponibilă.',
			'changes' => 'Modificări',
			'releaseDate' => 'Data lansării',
			'importFromURLsInFile' => 'Import din URL-uri din fișier (ca OPML)',
			'versionDetectionExplanation' => 'Împacă șirul versiunii cu versiunea detectată din OS',
			'versionDetection' => 'Detectare versiune',
			'standardVersionDetection' => 'Detectare standard versiune',
			'groupByCategory' => 'Grupează după categorie',
			'listView' => 'Vizualizare listă',
			'gridView' => 'Vizualizare grilă',
			'autoApkFilterByArch' => 'Încearcă să filtrezi APK-urile după arhitectura CPU dacă este posibil',
			'autoLinkFilterByArch' => 'Încearcă să filtrezi linkurile după arhitectura CPU dacă este posibil',
			'overrideSource' => 'Suprascrie sursa',
			'dontShowAgain' => 'Nu mai arăta acest lucru',
			'dontShowTrackOnlyWarnings' => 'Nu arăta avertismentele \'doar pentru urmărire\'',
			'dontShowAPKOriginWarnings' => 'Nu arăta avertismentele despre originea APK',
			'moveNonInstalledAppsToBottom' => 'Mută aplicațiile neinstalate la baza vizualizării aplicațiilor',
			'gitlabPATLabel' => 'Token de acces personal GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Despre',
			'requiresCredentialsInSettings' => '{} necesită credențiale suplimentare (în Setări)',
			'checkOnStart' => 'Verifică actualizări la pornire',
			'safeMode' => 'Mod Sigur',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Adaugă Aplicație este dezactivat în Mod Sigur',
			'tryInferAppIdFromCode' => 'Încearcă să deduci ID-ul aplicației din codul sursă',
			'removeOnExternalUninstall' => 'Elimină automat aplicațiile dezinstalate extern',
			'pickHighestVersionCode' => 'Selectează automat APK-ul cu cel mai mare cod de versiune',
			'checkUpdateOnDetailPage' => 'Verifică actualizări la deschiderea paginii de detalii a aplicației',
			'disablePageTransitions' => 'Dezactivează animațiile de tranziție între pagini',
			'reversePageTransitions' => 'Inversează animațiile de tranziție între pagini',
			'minStarCount' => 'Număr minim de stele',
			'addInfoBelow' => 'Adăugați aceste informații mai jos.',
			'addInfoInSettings' => 'Adăugați aceste informații în Setări.',
			'githubSourceNote' => 'Limitarea ratei GitHub poate fi evitată folosind o cheie API.',
			'sortByLastLinkSegment' => 'Sortează doar după ultimul segment al linkului',
			'filterReleaseNotesByRegEx' => 'Filtrează notele de lansare după expresie regulată',
			'customLinkFilterRegex' => 'Filtru personalizat link-uri APK după expresie regulată (implicit \'.apk$\')',
			'appsPossiblyUpdated' => 'S-au încercat actualizări de aplicații',
			'appsPossiblyUpdatedNotifDescription' => 'Notifică utilizatorul că actualizările la una sau mai multe aplicații au fost posibil aplicate în fundal',
			'xWasPossiblyUpdatedToY' => '{} este posibil să fi fost actualizat la {}.',
			'enableBackgroundUpdates' => 'Activează actualizările în fundal',
			'backgroundUpdateReqsExplanation' => 'Actualizările în fundal s-ar putea să nu fie posibile pentru toate aplicațiile.',
			'backgroundUpdateLimitsExplanation' => 'Succesul unei instalări în fundal poate fi determinat doar când Updatium este deschis.',
			'verifyLatestTag' => 'Verifică eticheta \'latest\'',
			'intermediateLinkRegex' => 'Filtrează pentru un link \'intermediar\' de vizitat',
			'filterByLinkText' => 'Filtrează linkurile după textul linkului',
			'matchLinksOutsideATags' => 'Potrivește linkuri în afara etichetelor <a>',
			'intermediateLinkNotFound' => 'Link intermediar negăsit',
			'intermediateLink' => 'Link intermediar',
			'exemptFromBackgroundUpdates' => 'Scutește de actualizările în fundal (dacă sunt activate)',
			'bgUpdatesOnWiFiOnly' => 'Dezactivează actualizările în fundal când nu sunteți pe Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Dezactivează actualizările în fundal când nu se încarcă',
			'autoSelectHighestVersionCode' => 'Selectează automat APK-ul cu cel mai mare versionCode',
			'versionExtractionRegEx' => 'Expresie regulată extragere șir versiune',
			'trimVersionString' => 'Taie șirul versiunii cu expresie regulată',
			'matchGroupToUseForX' => 'Grup de potrivire de folosit pentru "{}"',
			'matchGroupToUse' => 'Grup de potrivire de folosit pentru expresia regulată de extragere a șirului versiunii',
			'highlightTouchTargets' => 'Evidențiază țintele de atingere mai puțin evidente',
			'pickExportDir' => 'Alege director de export',
			'autoExportOnChanges' => 'Export automat la modificări',
			'includeSettings' => 'Include setări',
			'filterVersionsByRegEx' => 'Filtrează versiunile după expresie regulată',
			'trySelectingSuggestedVersionCode' => 'Încearcă să selectezi APK-ul cu versionCode sugerat',
			'dontSortReleasesList' => 'Păstrează ordinea lansărilor din API',
			'reverseSort' => 'Sortare inversă',
			'takeFirstLink' => 'Ia primul link',
			'skipSort' => 'Omite sortarea',
			'debugMenu' => 'Meniu depanare',
			'bgTaskStarted' => 'Sarcina de fundal a început - verificați jurnalele.',
			'runBgCheckNow' => 'Rulează verificarea actualizărilor în fundal acum',
			'versionExtractWholePage' => 'Aplică expresia regulată de extragere a șirului versiunii pe întreaga pagină',
			'installing' => 'Se instalează',
			'skipUpdateNotifications' => 'Omite notificările de actualizare',
			'updatesAvailableNotifChannel' => 'Actualizări disponibile',
			'appsUpdatedNotifChannel' => 'Aplicații actualizate',
			'appsPossiblyUpdatedNotifChannel' => 'S-au încercat actualizări de aplicații',
			'errorCheckingUpdatesNotifChannel' => 'Eroare la verificarea actualizărilor',
			'appsRemovedNotifChannel' => 'Aplicații eliminate',
			'downloadingXNotifChannel' => 'Se descarcă {}',
			'completeAppInstallationNotifChannel' => 'Finalizați instalarea aplicației',
			'checkingForUpdatesNotifChannel' => 'Se verifică actualizările',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Verifică actualizări doar pentru aplicațiile instalate și cele doar pentru urmărire',
			'supportFixedAPKURL' => 'Suportă URL-uri APK fixe',
			'selectX' => 'Selectează {}',
			'parallelDownloads' => 'Permite descărcări paralele',
			'useShizuku' => 'Folosește Shizuku sau Sui pentru a instala',
			'shizukuBinderNotFound' => 'Serviciul Shizuku nu rulează',
			'shizukuOld' => 'Versiune veche Shizuku (<11) - actualizați-l',
			'shizukuOldAndroidWithADB' => 'Shizuku rulează pe Android < 8.1 cu ADB - actualizați Android sau folosiți Sui în schimb',
			'shizukuPretendToBeGooglePlay' => 'Setează Google Play ca sursă de instalare (dacă se folosește Shizuku)',
			'useSystemFont' => 'Folosește fontul sistemului',
			'useVersionCodeAsOSVersion' => 'Folosește versionCode-ul aplicației ca versiune detectată de OS',
			'requestHeader' => 'Antet cerere',
			'useLatestAssetDateAsReleaseDate' => 'Folosește data încărcării celui mai recent activ ca dată de lansare',
			'defaultPseudoVersioningMethod' => 'Metodă implicită de pseudo-versionare',
			'partialAPKHash' => 'Hash parțial APK',
			'APKLinkHash' => 'Hash link APK',
			'directAPKLink' => 'Link direct APK',
			'pseudoVersionInUse' => 'O pseudo-versiune este în uz',
			'installedVersion' => 'Instalat',
			'installed' => 'Instalat',
			'notInstalledApps' => 'Neinstalat',
			'latest' => 'Cel mai recent',
			'invertRegEx' => 'Inversează expresia regulată',
			'note' => 'Notă',
			'selfHostedNote' => 'Meniul dropdown "{}" poate fi folosit pentru a ajunge la instanțe auto-găzduite/personalizate ale oricărei surse.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK-ul nu a putut fi parsat (incompatibil sau descărcare parțială)',
			'beforeNewInstallsShareToAppVerifier' => 'Distribuiți aplicațiile noi către AppVerifier (dacă este disponibil)',
			'appVerifierInstructionToast' => 'Distribuiți către AppVerifier, apoi reveniți aici când sunteți gata.',
			'wiki' => 'Ajutor/wiki',
			'wikiHint' => 'Deschide documentația wiki Updatium',
			'allowInsecure' => 'Permite cereri HTTP nesigure',
			'stayOneVersionBehind' => 'Rămâi cu o versiune în urmă',
			'useFirstApkOfVersion' => 'Selectează automat primul dintre APK-urile multiple',
			'refreshBeforeDownload' => 'Reîmprospătează detaliile aplicației înainte de descărcare',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nume',
			'smartname' => 'Nume (inteligent)',
			'smartPlusDate' => 'Inteligent + Dată',
			'sortMethod' => 'Metodă sortare',
			'welcome' => 'Bun venit',
			'batteryOptimizationNote' => 'Rețineți că descărcările în fundal pot funcționa mai fiabil dacă comutați la \'serviciu de prim-plan\' în setările Updatium și/sau dezactivați optimizarea bateriei pentru Updatium în setările OS-ului dvs.',
			'fileDeletionError' => 'Eșec la ștergerea fișierului (încercați să-l ștergeți manual apoi încercați din nou): "{}"',
			'foregroundService' => 'Serviciu de prim-plan Updatium',
			'foregroundServiceExplanation' => 'Folosește un serviciu de prim-plan pentru verificarea actualizărilor (mai fiabil, consumă mai multă energie)',
			'fgServiceNotice' => 'Această notificare este necesară pentru verificarea actualizărilor în fundal (poate fi ascunsă în setările OS)',
			'excludeSecrets' => 'Exclude secrete',
			'GHReqPrefix' => 'instanță \'omeritzics/Updatium\' pentru cereri GitHub',
			'includeZips' => 'Include fișiere ZIP',
			'zippedApkFilterRegEx' => 'Filtrează APK-urile din interiorul ZIP-urilor',
			'multipleSigners' => 'Semnatari Multipli',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Eliminați aplicația?', other: 'Eliminați aplicațiile?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Prea multe cereri (limitat la rată) - încercați din nou în {count} minut', other: 'Prea multe cereri (limitat la rată) - încercați din nou în {count} minute', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Verificarea actualizărilor în fundal a întâmpinat un {error}, va programa o verificare de reîncercare în {count} minut', other: 'Verificarea actualizărilor în fundal a întâmpinat un {error}, va programa o verificare de reîncercare în {count} minute', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Verificarea actualizărilor în fundal a găsit {count} actualizare - va notifica utilizatorul dacă este necesar', other: 'Verificarea actualizărilor în fundal a găsit {count} actualizări - va notifica utilizatorul dacă este necesar', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{count} Aplicație', other: '{count} Aplicații', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{count} URL', other: '{count} URL-uri', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{count} minut', other: '{count} minute', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{count} oră', other: '{count} ore', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{count} zi', other: '{count} zile', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Șters {n} jurnal (înainte = {before}, după = {after})', other: 'Șterse {n} jurnale (înainte = {before}, după = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{app} și încă 1 aplicație mai are actualizări.', other: '{app} și încă {count} aplicații mai au actualizări.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{app} și încă 1 aplicație a fost actualizată.', other: '{app} și încă {count} aplicații au fost actualizate.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Eșec la actualizarea {app} și încă 1 aplicație.', other: 'Eșec la actualizarea {app} și încă {count} aplicații.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{app} și încă 1 aplicație ar putea fi fost actualizată.', other: '{app} și încă {count} aplicații ar putea fi fost actualizate.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: '{count} APK', other: '{count} APK-uri', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ro'))(n, one: 'Hash Certificat', other: 'Hash-uri Certificat', ), 
			'securityDisclaimerTitle' => 'Renunțare la Securitate și Aspecte Legale',
			'license' => 'Licență',
			'licenseText' => 'Această aplicație este distribuită sub Licența GPL v3.',
			'disclaimer' => 'Renunțare',
			'disclaimerText' => 'Această aplicație nu distribuie, găzduiește sau verifică niciuna dintre aplicațiile externe. Utilizatorul poartă întreaga responsabilitate pentru siguranța și legalitatea oricărui software instalat prin acest instrument.\n\nhttps://github.com/omeritzics/Updatium este singurul loc oficial pentru a descărca Updatium - este foarte descurajat să îl descărcați din altă parte deoarece sursele neoficiale sunt nesigure.',
			'privacy' => 'Confidențialitate',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Acceptă și Continuă',
			'decline' => 'Refuză',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Vă place Updatium?',
			'githubStarPromptContent' => 'Updatium este un proiect comunitar voluntar, open-source, dezvoltat în timpul meu liber. Dacă doriți să susțineți proiectul, vă rugăm să luați în considerare să-i acordați o stea pe GitHub pentru a ne ajuta să ajungem la mai mulți utilizatori și contribuitori. Nu veți mai fi îndemnat despre acest lucru. Vă mulțumesc anticipat! :)',
			'githubStarPromptStar' => 'Acordă stea',
			'githubStarPromptDontShowAgain' => 'Nu mai arăta',
			'sourceCode' => 'Cod Sursă',
			'developedBy' => 'Dezvoltat de',
			'appDescription' => 'Un catalog de aplicații Android personalizabil care vă permite să vă actualizați aplicațiile direct din sursele lor APK.',
			'safeModeEnabled' => 'Modul Sigur este activat',
			'safeModeDisabled' => 'Modul Sigur este dezactivat',
			'safeModeDisable' => 'Dezactivează Modul Sigur',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Administrare Mod Sigur',
			'safeModeSetupDescription' => 'Setați o parolă pentru a activa Modul Sigur. Odată activat, Modul Sigur împiedică adăugarea de noi aplicații și poate fi dezactivat doar cu parola.',
			'safeModeToggleDescription' => 'Introduceți parola pentru a activa sau dezactiva Modul Sigur.',
			'safeModeSetPassword' => 'Setați Parolă',
			'safeModeConfirmPassword' => 'Confirmați Parolă',
			'safeModeEnterPassword' => 'Introduceți Parolă',
			'safeModePasswordHint' => 'Minim 8 caractere',
			'safeModePasswordTooShort' => 'Parola trebuie să aibă cel puțin 8 caractere',
			'safeModePasswordMismatch' => 'Parolele nu se potrivesc',
			'safeModePasswordIncorrect' => 'Parolă incorectă',
			'safeModePasswordError' => 'Eroare la setarea parolei. Încercați din nou.',
			'safeModeEnable' => 'Activează Modul Sigur',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} atingeri rămase pentru a dezactiva Modul Sigur',
			'safeModeEnabledHint' => 'Modul Sigur este activat. Atingeți de mai multe ori numărul versiunii din Setări pentru a dezactiva.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Am înțeles',
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
