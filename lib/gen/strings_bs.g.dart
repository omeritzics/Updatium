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
class TranslationsBs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsBs _root = this; // ignore: unused_field

	@override 
	TranslationsBs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsBs(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Nije važeći URL aplikacije {}';
	@override String get noReleaseFound => 'Nije moguće pronaći odgovarajuće izdanje';
	@override String get noVersionFound => 'Nije moguće odrediti verziju izdanja';
	@override String get urlMatchesNoSource => 'URL se ne podudara s poznatim izvorom';
	@override String get cantInstallOlderVersion => 'Nije moguće instalirati stariju verziju aplikacije';
	@override String get appIdMismatch => 'ID preuzetog paketa se ne podudara s postojećim ID-om aplikacije';
	@override String get functionNotImplemented => 'Ova klasa nije implementirala ovu funkciju';
	@override String get placeholder => 'Rezervirano mjesto';
	@override String get someErrors => 'Došlo je do nekih grešaka';
	@override String get unexpectedError => 'Neočekivana greška';
	@override String get ok => 'Dobro';
	@override String get and => 'i';
	@override String get githubPATLabel => 'GitHub token za lični pristup';
	@override String get includePrereleases => 'Uključi preliminarna izdanja';
	@override String get fallbackToOlderReleases => 'Povratak na starija izdanja';
	@override String get filterReleaseTitlesByRegEx => 'Filtrirajte naslove izdanja prema regularnom izrazu';
	@override String get invalidRegEx => 'Nevažeći regularni izraz';
	@override String get noDescription => 'Bez opisa';
	@override String get cancel => 'Otkaži';
	@override String get kContinue => 'Nastavite';
	@override String get requiredInBrackets => '(obavezno)';
	@override String get dropdownNoOptsError => 'GREŠKA: PADAJUĆI MENI MORA IMATI NAJMANJE JEDNU OPCIJU';
	@override String get color => 'Boja';
	@override String get standard => 'Standard';
	@override String get custom => 'Custom';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Koristi Material You boje';
	@override String get githubStarredRepos => 'GitHub repo-i sa zvjezdicom';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Korisničko ime';
	@override String get wrongArgNum => 'Naveden je pogrešan broj argumenata';
	@override String get xIsTrackOnly => '{} je samo za praćenje';
	@override String get source => 'Izvor';
	@override String get app => 'Aplikacija. ';
	@override String get appsFromSourceAreTrackOnly => 'Aplikacije iz ovog izvora su \'Samo za praćenje\'.';
	@override String get youPickedTrackOnly => 'Odabrali ste opciju „Samo za praćenje”.';
	@override String get trackOnlyAppDescription => 'Aplikacija će se pratiti radi ažuriranja, ali Updatium neće moći da je preuzme ili instalira.';
	@override String get cancelled => 'Otkazano';
	@override String get appAlreadyAdded => 'Aplikacija je već dodana';
	@override String get alreadyUpToDateQuestion => 'Aplikacija je već ažurirana?';
	@override String get addApp => 'Dodaj aplikaciju';
	@override String get appSourceURL => 'Izvorni URL aplikacije';
	@override String get error => 'Greška';
	@override String get add => 'Dodaj';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Pretraživanje (samo neki izvori)';
	@override String get search => 'Pretraživanje';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Dodatne opcije za {}';
	@override String get supportedSources => 'Podržani izvori';
	@override String get trackOnlyInBrackets => '(Samo za praćenje)';
	@override String get searchableInBrackets => '(Može se pretraživati)';
	@override String get appsString => 'Aplikacije';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Dobrodošli!';
	@override String get noAppsSubtext => 'Možete dodati svoju prvu aplikaciju dodirivanjem \'Dodaj aplikaciju\' ispod.';
	@override String get noAppsForFilter => 'Nema aplikacija za filter';
	@override String get byX => 'Autor {}';
	@override String get percentProgress => 'Napredak: {}%';
	@override String get pleaseWait => 'Molimo sačekajte';
	@override String get updateAvailable => 'Ažuriranje dostupno';
	@override String get notInstalled => 'Nije instalirano';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-verzija';
	@override String get selectAll => 'Označi sve';
	@override String get deselectX => 'Poništi odabir {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} će biti uklonjen iz Updatiuma, ali će ostati instaliran na uređaju.';
	@override String get removeSelectedAppsQuestion => 'Želite li ukloniti odabrane aplikacije?';
	@override String get removeSelectedApps => 'Ukloni odabrane aplikacije';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Nadogradi {}';
	@override String get installX => 'Instaliraj {}';
	@override String get markXTrackOnlyAsUpdated => 'Označi {}\n(samo za praćenje)\nkao ažurirano';
	@override String get changeX => 'Promjena {}';
	@override String get installUpdateApps => 'Instalirajte/ažurirajte aplikacije';
	@override String get installUpdateSelectedApps => 'Instalirajte/ažurirajte odabrane aplikacije';
	@override String get markXSelectedAppsAsUpdated => 'Označite {} odabrane aplikacije kao ažurirane?';
	@override String get no => 'Ne';
	@override String get yes => 'Da';
	@override String get markSelectedAppsUpdated => 'Označi odabrane aplikacije kao ažurirane';
	@override String get pinToTop => 'Prikvači na vrh';
	@override String get unpinFromTop => 'Otkvači sa vrha';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Resetujte status instalacije za odabrane aplikacije?';
	@override String get installStatusOfXWillBeResetExplanation => 'Status instalacije bilo koje odabrane aplikacije će se resetovati.\n\nTo može pomoći kada je verzija aplikacije prikazana u Updatiumu netačna zbog neuspjelih ažuriranja ili drugih problema.';
	@override String get customLinkMessage => 'Ove veze rade na uređajima s instaliranim Updatiumom';
	@override String get shareAppConfigLinks => 'Podijelite konfiguraciju aplikacije kao HTML vezu';
	@override String get resetInstallStatus => 'Resetujte status instalacije';
	@override String get more => 'Više';
	@override String get removeOutdatedFilter => 'Uklonite zastarjeli filter aplikacija';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Prikaži samo zastarjele aplikacije';
	@override String get filter => 'Filtriranje';
	@override String get filterApps => 'Filtriraj aplikacije';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Naziv aplikacije';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Ažurirane aplikacije';
	@override String get nonInstalledApps => 'Neinstalirane aplikacije';
	@override String get importExport => 'Uvoz/izvoz';
	@override String get settings => 'Postavke';
	@override String get exportedTo => 'Izvezeno u {}';
	@override String get updatiumExport => 'Updatium izvoz';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Neispravan unos.';
	@override String get importedX => 'Uvezeno {}';
	@override String get updatiumImport => 'Updatium uvoz';
	@override String get importFromURLList => 'Uvoz iz URL liste';
	@override String get searchQuery => 'Pretraga za: ';
	@override String get appURLList => 'Lista URL adresa aplikacija';
	@override String get line => 'Linija';
	@override String get searchX => 'Pretraživanje {}';
	@override String get noResults => 'Nema rezultata';
	@override String get importX => 'Uvoz {}';
	@override String get importedAppsIdDisclaimer => 'Uvezene aplikacije mogu se pogrešno prikazati kao „Nije instalirano”.\nDa biste to riješili, ponovo ih instalirajte putem aplikacije Updatium.\nTo ne bi trebalo uticati na podatke aplikacije.\n\nUtječe samo na URL i metode uvoza treće strane.';
	@override String get importErrors => 'Uvezi greške';
	@override String get importedXOfYApps => '{} od {} aplikacija uvezeno.';
	@override String get followingURLsHadErrors => 'Sljedeći URL-ovi su imali greške:';
	@override String get selectURL => 'Odaberite URL';
	@override String get selectURLs => 'Odaberite URL-ove';
	@override String get pick => 'Odaberi';
	@override String get theme => 'Tema';
	@override String get dark => 'Tamna';
	@override String get light => 'Svijetla';
	@override String get followSystem => 'Pratite sistem';
	@override String get followSystemThemeExplanation => 'Praćenje sistemske teme je moguće jedino koristeći aplikacije treće strane';
	@override String get useBlackTheme => 'Koristite čisto crnu tamnu temu';
	@override String get appSortBy => 'Aplikacije sortirane po';
	@override String get authorName => 'Autor/Ime';
	@override String get nameAuthor => 'Ime/Autor';
	@override String get asAdded => 'Kao što je dodano';
	@override String get appSortOrder => 'Redoslijed sortiranja aplikacija';
	@override String get ascending => 'Uzlazno';
	@override String get descending => 'Silazno';
	@override String get bgUpdateCheckInterval => 'Interval provjere ažuriranja u pozadini';
	@override String get neverManualOnly => 'Nikada - samo ručno';
	@override String get appearance => 'Izgled';
	@override String get pinUpdates => 'Prikvačite ažuriranja na vrh prikaza aplikacija';
	@override String get updates => 'Nadogradnje';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Specifično za izvor';
	@override String get appSource => 'Izvor aplikacije';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Nema evidencije';
	@override String get appLogs => 'Evidencije aplikacija';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Zatvori';
	@override String get share => 'Podijeli';
	@override String get appNotFound => 'Aplikacija nije pronađena';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-izvoz';
	@override String get pickAnAPK => 'Odaberite APK';
	@override String get appHasMoreThanOnePackage => '{} ima više od jednog paketa:';
	@override String get deviceSupportsXArch => 'Vaš uređaj podržava {} arhitekturu procesora.';
	@override String get deviceSupportsFollowingArchs => 'Vaš uređaj podržava sljedeće arhitekture procesora:';
	@override String get warning => 'Upozorenje';
	@override String get sourceIsXButPackageFromYPrompt => 'Izvor aplikacije je \'{}\', ali paket za izdavanje dolazi iz \'{}\'. Želite li nastaviti?';
	@override String get updatesAvailable => 'Dostupna ažuriranja';
	@override String get updatesAvailableNotifDescription => 'Obavještava korisnika da su ažuriranja dostupna za jednu ili više aplikacija koje prati Updatium';
	@override String get noNewUpdates => 'Nema novih ažuriranja.';
	@override String get xHasAnUpdate => '{} ima ažuriranje.';
	@override String get appsUpdated => 'Aplikacije su ažurirane';
	@override String get appsNotUpdated => 'Neuspješno ažuriranje aplikacija';
	@override String get appsUpdatedNotifDescription => 'Obavještava korisnika da su u pozadini primijenjena ažuriranja na jednu ili više aplikacija';
	@override String get xWasUpdatedToY => '{} je ažuriran na {}.';
	@override String get xWasNotUpdatedToY => 'Neuspješno ažuriranje {} na {}.';
	@override String get errorCheckingUpdates => 'Greška pri provjeri ažuriranja';
	@override String get errorCheckingUpdatesNotifDescription => 'Obavijest koja se prikazuje kada provjera sigurnosnog ažuriranja ne uspije';
	@override String get appsRemoved => 'Aplikacije su uklonjene';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Obavještava korisnika da je jedna ili više aplikacija uklonjeno zbog grešaka prilikom učitavanja';
	@override String get xWasRemovedDueToErrorY => '{} je uklonjen zbog ove greške: {}';
	@override String get completeAppInstallation => 'Dovršite instalaciju aplikacije';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium mora biti otvoren za instalaciju aplikacija';
	@override String get completeAppInstallationNotifDescription => 'Traži od korisnika da se vrati u Updatium kako bi dovršio instalaciju aplikacije';
	@override String get checkingForUpdates => 'Tražim moguće nadogradnje';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Privremeno obavještenje koje se pojavljuje prilikom provjere ažuriranja';
	@override String get pleaseAllowInstallPerm => 'Dozvolite Updatiumu da instalira aplikacije';
	@override String get trackOnly => 'Samo za praćenje';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Greška {}';
	@override String get versionCorrectionDisabled => 'Ispravka verzije je onemogućena (izgleda da plugin ne radi)';
	@override String get unknown => 'Nepoznato';
	@override String get none => 'Ništa';
	@override String get all => 'All';
	@override String get never => 'Nikad';
	@override String get latestVersion => 'Najnovija verzija';
	@override String get installedVersionX => 'Instalirana verzija: {}';
	@override String get lastUpdateCheckX => 'Posljednja provjera ažuriranja: {}';
	@override String get remove => 'Izbriši';
	@override String get quickLinks => 'Brzi linkovi';
	@override String get yesMarkUpdated => 'Da, označi kao ažurirano';
	@override String get fdroid => 'Službeni F-Droid';
	@override String get appIdOrName => 'ID ili ime aplikacije';
	@override String get appId => 'ID aplikacije';
	@override String get appWithIdOrNameNotFound => 'Nije pronađena aplikacija s tim ID-om ili imenom';
	@override String get reposHaveMultipleApps => 'Repo-i mogu sadržavati više aplikacija';
	@override String get fdroidThirdPartyRepo => 'F-Droid Repo treće strane';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instaliraj';
	@override String get markInstalled => 'Označi kao instalirano';
	@override String get update => 'Nadogradi';
	@override String get updated => 'Ažurirano';
	@override String get markUpdated => 'Označi kao ažurirano';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Dodatne opcije';
	@override String get disableVersionDetection => 'Onemogući detekciju verzije';
	@override String get noVersionDetectionExplanation => 'Ova opcija bi se trebala koristiti samo za aplikacije gdje detekcija verzije ne radi ispravno.';
	@override String get downloadingX => 'Preuzimanje {}';
	@override String get downloadX => 'Preuzeti {}';
	@override String get downloadedX => 'Preuzeto {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Fajlovi verzije';
	@override String get downloadNotifDescription => 'Obavještava korisnika o napretku u preuzimanju aplikacije';
	@override String get noAPKFound => 'APK nije pronađen';
	@override String get noVersionDetection => 'Nema detekcije verzije';
	@override String get categorize => 'Kategoriziraj';
	@override String get categories => 'Kategorije';
	@override String get category => 'Kategorija';
	@override String get noCategory => 'Nema kategorije';
	@override String get noCategories => 'Nema kategorija';
	@override String get categoryDeleteQuestion => 'Želite li izbrisati kategorije?';
	@override String get categoryDeleteWarning => 'Sve aplikacije u izbrisanim kategorijama će biti postavljene kao nekategorisane.';
	@override String get addCategory => 'Dodaj kategoriju';
	@override String get label => 'Oznaka';
	@override String get language => 'Jezik';
	@override String get copiedToClipboard => 'Podaci kopirani u međuspremnik';
	@override String get storagePermissionDenied => 'Dozvola za pohranu je odbijena';
	@override String get selectedCategorizeWarning => 'Ovo će zamijeniti sve postojeće postavke kategorije za odabrane aplikacije.';
	@override String get filterAPKsByRegEx => 'Filtrirajte APK-ove prema regularnom izrazu';
	@override String get removeFromUpdatium => 'Ukloni iz Updatiuma';
	@override String get uninstallFromDevice => 'Deinstaliraj s uređaja';
	@override String get onlyWorksWithNonVersionDetectApps => 'Radi samo za aplikacije s onemogućenom detekcijom verzije.';
	@override String get releaseDateAsVersion => 'Koristi datum izdanja kao verziju';
	@override String get releaseTitleAsVersion => 'Use release title as version string';
	@override String get releaseDateAsVersionExplanation => 'Ova opcija bi se trebala koristiti samo za aplikacije gdje detekcija verzije ne radi ispravno, ali je datum izdavanja dostupan.';
	@override String get changes => 'Promjene';
	@override String get releaseDate => 'Datum izdavanja';
	@override String get importFromURLsInFile => 'Uvoz iz URL-ova u datoteci (kao što je OPML)';
	@override String get versionDetectionExplanation => 'Pomiri niz verzije sa verzijom otkrivenom iz OS-a';
	@override String get versionDetection => 'Otkrivanje verzije';
	@override String get standardVersionDetection => 'Detekcija standardne verzije';
	@override String get groupByCategory => 'Grupiši po kategoriji';
	@override String get listView => 'Prikaz liste';
	@override String get gridView => 'Prikaz mreže';
	@override String get autoApkFilterByArch => 'Pokušajte filtrirati APK-ove po arhitekturi procesora ako je moguće';
	@override String get autoLinkFilterByArch => 'Attempt to filter links by CPU architecture if possible';
	@override String get overrideSource => 'Premosti izvor';
	@override String get dontShowAgain => 'Ne prikazuj ovo ponovo';
	@override String get dontShowTrackOnlyWarnings => 'Ne prikazuj upozorenja „Samo za  praćenje”';
	@override String get dontShowAPKOriginWarnings => 'Ne prikazuj upozorenja o porijeklu APK-a';
	@override String get moveNonInstalledAppsToBottom => 'Premjesti neinstalirane aplikacije na dno prikaza aplikacija';
	@override String get gitlabPATLabel => 'GitLab token za lični pristup';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'O nama';
	@override String get requiresCredentialsInSettings => '{}: Za ovo su potrebni dodatni akreditivi (u Postavkama)';
	@override String get checkOnStart => 'Provjerite ima li novosti pri pokretanju';
	@override String get safeMode => 'Sigurnosni režim';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Dodavanje aplikacija je onemogućeno u sigurnosnom režimu';
	@override String get tryInferAppIdFromCode => 'Pokušati otkriti ID aplikacije iz izvornog koda';
	@override String get removeOnExternalUninstall => 'Automatski ukloni eksterno deinstalirane aplikacije';
	@override String get pickHighestVersionCode => 'Automatski odaberite najviši kôd verzije APK-a';
	@override String get checkUpdateOnDetailPage => 'Provjerite ima li novosti pri otvaranju stranice s detaljima aplikacije';
	@override String get disablePageTransitions => 'Ugasite animaciju prijelaza stranice';
	@override String get reversePageTransitions => 'Reverzne animacije prijelaza stranice';
	@override String get minStarCount => 'Najmanji broj zvjezdica';
	@override String get addInfoBelow => 'Dodajte ove informacije ispod.';
	@override String get addInfoInSettings => 'Dodajte ove informacije u Postavkama.';
	@override String get githubSourceNote => 'GitHub ograničavanje se može izbjeći korišćenjem tokena za lični pristup.';
	@override String get sortByLastLinkSegment => 'Sortiraj samo po zadnjem segmentu veze';
	@override String get filterReleaseNotesByRegEx => 'Filtirajte promjene u izdanju po regularnom izrazu';
	@override String get customLinkFilterRegex => 'Prilagođeni APK link filtrira se po regularnom izrazu (Zadano \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Pokušano ažuriranje aplikacija';
	@override String get appsPossiblyUpdatedNotifDescription => 'Obavještava korisnika da je ažuriranje jedne ili više aplikacija potencijalno izvršeno u pozadini';
	@override String get xWasPossiblyUpdatedToY => '{} aplikacija bi trebala biti ažurirana na {}.';
	@override String get enableBackgroundUpdates => 'Dozvolite ažuriranja u pozadini';
	@override String get backgroundUpdateReqsExplanation => 'Ažuriranja u pozadini možda neće raditi za sve aplikacije.';
	@override String get backgroundUpdateLimitsExplanation => 'Uspjeh ažuriranja u pozadini se može provjeriti tek kada otvorite Updatium.';
	@override String get verifyLatestTag => 'Provjerite \'posljednu\' (\'latest\') oznaku';
	@override String get intermediateLinkRegex => 'Filter za \'srednju\' vezu za posjetu';
	@override String get filterByLinkText => 'Filtriraj linkove prema tekstu linka';
	@override String get matchLinksOutsideATags => 'Poklopiti linkove van <a> tag-a';
	@override String get intermediateLinkNotFound => 'Intermediate veza nije nađena';
	@override String get intermediateLink => 'Intermediate veza';
	@override String get exemptFromBackgroundUpdates => 'Izuzmi iz ažuriranja u pozadini (ako su uključeni)';
	@override String get bgUpdatesOnWiFiOnly => 'Isključite ažuriranje u pozadini kada niste na Wi-Fi-ju';
	@override String get bgUpdatesWhileChargingOnly => 'Isključi pozadinska ažuriranja kada uređaj nije na punjaču';
	@override String get autoSelectHighestVersionCode => 'Automatski izaberite najveću (verziju) versionCode APK-a';
	@override String get versionExtractionRegEx => 'RegEx ekstrakcija verzije';
	@override String get trimVersionString => 'Skrati string verzije pomoću RegEx-a';
	@override String get matchGroupToUseForX => 'Podjesite grupu za upotebu za "{}"';
	@override String get matchGroupToUse => 'Podjesite grupu za upotebu';
	@override String get highlightTouchTargets => 'Istaknite manje vidljive touch mete';
	@override String get pickExportDir => 'Izaberite datoteku za izvoz';
	@override String get autoExportOnChanges => 'Automatski izvezite pri promjenama';
	@override String get includeSettings => 'Uključi postavke';
	@override String get filterVersionsByRegEx => 'Filtrirajte verzije po regulatnom izrazu';
	@override String get trySelectingSuggestedVersionCode => 'Probajte izabrati preloženu (verziju) versionCode APK-a';
	@override String get dontSortReleasesList => 'Zadrži redosled izdanja iz API-a';
	@override String get reverseSort => 'Obrni redosled';
	@override String get takeFirstLink => 'Uzmi prvi link';
	@override String get skipSort => 'Preskoči sortiranje';
	@override String get debugMenu => 'Meni za otkrivanje grešaka';
	@override String get bgTaskStarted => 'Rad u pozadini pokrenut - provjerite log-ove.';
	@override String get runBgCheckNow => 'Pokrenite pozadinsku provjeru ažuriranja sad';
	@override String get versionExtractWholePage => 'Primjenite Regex ekstrakciju verzije na cijelu stranicu';
	@override String get installing => 'Instaliranje';
	@override String get skipUpdateNotifications => 'Ne prikazujte obavještenja ažuriranja';
	@override String get updatesAvailableNotifChannel => 'Dostupna ažuriranja';
	@override String get appsUpdatedNotifChannel => 'Aplikacije su ažurirane';
	@override String get appsPossiblyUpdatedNotifChannel => 'Pokušano ažuriranje aplikacija';
	@override String get errorCheckingUpdatesNotifChannel => 'Greška pri provjeri ažuriranja';
	@override String get appsRemovedNotifChannel => 'Aplikacije su uklonjene';
	@override String get downloadingXNotifChannel => 'Preuzimanje {}';
	@override String get completeAppInstallationNotifChannel => 'Dovršite instalaciju aplikacije';
	@override String get checkingForUpdatesNotifChannel => 'Tražim moguće nadogradnje';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Isključivo provjerite ažuriranje za instalirane i aplikacije \'samo za praćenje\'';
	@override String get supportFixedAPKURL => 'Podržite fiksne APK URL-ove';
	@override String get selectX => 'Izaberite {}';
	@override String get parallelDownloads => 'Dozvoli paralelna preuzimanja';
	@override String get useShizuku => 'Koristi Shizuku ili Sui za instaliranje';
	@override String get shizukuBinderNotFound => 'Shizuku nije pokrenut';
	@override String get shizukuOld => 'Stara Shizuku verzija (<11) - ažurirajte je';
	@override String get shizukuOldAndroidWithADB => 'Shizuku pokrenut na Android-u < 8.1 pomoću ADB-a - ažurirajte Android ili koristite Sui';
	@override String get shizukuPretendToBeGooglePlay => 'Postavi Google Play kao izvor instalacije (samo ako je Shizuku u upotrebi)';
	@override String get useSystemFont => 'Koristite sistemski font';
	@override String get useVersionCodeAsOSVersion => 'Koristite kod verzije aplikacije kao verziju koju je otkrio OS';
	@override String get requestHeader => 'Zaglavlje zahtjeva';
	@override String get useLatestAssetDateAsReleaseDate => 'Koristite najnovije otpremanje materijala kao datum izdavanja';
	@override String get defaultPseudoVersioningMethod => 'Zadana metoda pseudo-verzija';
	@override String get partialAPKHash => 'Djelomični APK Hash';
	@override String get APKLinkHash => 'APK Link Hash';
	@override String get directAPKLink => 'Direktna APK veza';
	@override String get pseudoVersionInUse => 'Pseudo-verzija je u upotrebi';
	@override String get installedVersion => 'Instalirana verzija';
	@override String get installed => 'Instalirano';
	@override String get notInstalledApps => 'Nije instalirano';
	@override String get latest => 'Najnoviji';
	@override String get invertRegEx => 'Obrni regularni izraz';
	@override String get note => 'Zabelješke';
	@override String get selfHostedNote => '"{}" padajući meni se može koristiti da dosegnete vlastite/prilagođene instance bilo kojeg izvora.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK ne može biti raščlanjen (nekomaptibilno ili delimično preuzimanje)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Dijeli nove aplikacije sa AppVerifier-om (ako je dostupno)';
	@override String get appVerifierInstructionToast => 'Dijeli sa AppVerifier-om, zatim se vratite kada ste spremni.';
	@override String get wiki => 'Pomoć/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Dozvoli nesigurne HTTP zahtjeve';
	@override String get stayOneVersionBehind => 'Ostani na verziji koja prethodi posljednjoj';
	@override String get useFirstApkOfVersion => 'Automatski izaberi prvi ako postoji više APK-ova';
	@override String get refreshBeforeDownload => 'Osvježi detalje aplikacije prije preuzimanja';
	@override String get tencentAppStore => 'Tencent prodavnica aplikacija';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo prodavnica aplikacija (Kina)';
	@override String get name => 'Ime';
	@override String get smartname => 'Ime (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Metoda sortiranja';
	@override String get welcome => 'Dobrodošli';
	@override String get batteryOptimizationNote => 'Imajte na umu da pozadinska preuzimanja rade bolje ako se aplikacija izuzme iz optimizacije baterije.';
	@override String get fileDeletionError => 'Neuspješno brisanje datoteke (probajte je ručno obrisati, pa pokušajte ponovo): "{}"';
	@override String get foregroundService => 'Updatium servis u prednjem planu';
	@override String get foregroundServiceExplanation => 'Koristi servis u prednjem planu za provjeru ažuriranja (bolji rad, troši više energije)';
	@override String get fgServiceNotice => 'Ovo obavještenje je obavezno radi provjera ažuriranja u pozadini (može se prikriti u postavkama sistema)';
	@override String get excludeSecrets => 'Izuzmi secrets';
	@override String get GHReqPrefix => '\'omeritzics/Updatium\' istanca za GitHub zahtjeve';
	@override String get includeZips => 'Uključi i ZIP datoteke';
	@override String get zippedApkFilterRegEx => 'Filtriraj APK-ove unutar ZIP datoteka';
	@override String get multipleSigners => 'Multiple Signers';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Želite li ukloniti aplikaciju?',
		other: 'Želite li ukloniti aplikacije?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Previše zahtjeva (ograničena broj zahteva) - pokušajte ponovo za {count} minutu',
		other: 'Previše zahtjeva (ograničena cijena) - pokušajte ponovo za {count} min.',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Provjera ažuriranja u pozadini naišla je na {error}, zakazuje se ponovni pokušaj za {count} minutu',
		other: 'Provjera ažuriranja u pozadini naišla je na {error}, zakazuje se ponovni pokušaj za {count} min.',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Provjera ažuriranja u pozadini je pronašla {count} ažuriranje - korisnik će biti obavješten ako je to potrebno',
		other: 'Provjera ažuriranja u pozadini je pronašla {count} ažuriranja - korisnik će biti obavješten ako je to potrebno',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{count} aplikacija',
		other: '{count} aplikacije',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{count} URL',
		other: '{count} URL-ovi',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{count} minuta',
		other: 'min.',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{count} sat',
		other: '{count} sat/i',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{count} dan',
		other: '{count} dana',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Izbrisan {n} log (prije = {before}, nakon = {after})',
		other: 'Izbrisano {n} log-ova (prije = {before}, nakon = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{app} i još 1 aplikacija ima ažuriranja.',
		other: '{app} i još {count} aplikacija imaju ažuriranja.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{app} i još 1 aplikacija je ažurirana.',
		other: '{app} i još {count} aplikacija je ažurirano.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Failed to update {app} and 1 more app.',
		other: 'Failed to update {app} and {count} more apps.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{app} i još jedna aplikacija je vjerovatno ažurirana.',
		other: '{app} i još {count} aplikacija su vjerovatno ažurirane.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: '{count} APK',
		other: '{count} APK-a',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n,
		one: 'Certificate Hash',
		other: 'Certificate Hashes',
	);
	@override String get securityDisclaimerTitle => 'Bezbednosno i Pravno Odricanje Odgovornosti';
	@override String get license => 'Licenca';
	@override String get licenseText => 'Ova aplikacija se distribuira pod GPL v3 licencom.';
	@override String get disclaimer => 'Odgovornost';
	@override String get disclaimerText => 'Ova aplikacija ne distribuira, ne hostuje niti verifikuje nijednu od eksternih aplikacija. Korisnik snosi punu odgovornost za bezbednost i zakonitost bilo kog softvera instaliranog putem ovog alata.\n\nhttps://github.com/omeritzics/Updatium je jedino zvanično mjesto za preuzimanje Updatiuma - strogo se preporučuje da se ne preuzima s drugih mjesta jer je preuzimanje iz nezvaničnih izvora nesigurno.';
	@override String get privacy => 'Privatnost';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Prihvatam i Nastavim';
	@override String get decline => 'Odbij';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Uživate li u Updatiumu?';
	@override String get githubStarPromptContent => 'Updatium je volonterski projekt otvorenog koda koji razvijam u slobodno vrijeme. Ako želite podržati projekt, molimo vas da razmislite o davanju zvijezde na GitHubu kako bismo nam pomogli da dosegnemo više korisnika i doprinosilaca. Više se nećete obavještavati o ovome. Hvala unaprijed! :)';
	@override String get githubStarPromptStar => 'Daj zvijezdu';
	@override String get githubStarPromptDontShowAgain => 'Ne prikazuj više';
	@override String get sourceCode => 'Izvorni kod';
	@override String get developedBy => 'Razvio';
	@override String get appDescription => 'Prilagodljiv katalog Android aplikacija koji vam omoguava da aeurirate svoje aplikacije direktno iz njihovih APK izvora.';
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

/// The flat map containing all translations for locale <bs>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsBs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Nije važeći URL aplikacije {}',
			'noReleaseFound' => 'Nije moguće pronaći odgovarajuće izdanje',
			'noVersionFound' => 'Nije moguće odrediti verziju izdanja',
			'urlMatchesNoSource' => 'URL se ne podudara s poznatim izvorom',
			'cantInstallOlderVersion' => 'Nije moguće instalirati stariju verziju aplikacije',
			'appIdMismatch' => 'ID preuzetog paketa se ne podudara s postojećim ID-om aplikacije',
			'functionNotImplemented' => 'Ova klasa nije implementirala ovu funkciju',
			'placeholder' => 'Rezervirano mjesto',
			'someErrors' => 'Došlo je do nekih grešaka',
			'unexpectedError' => 'Neočekivana greška',
			'ok' => 'Dobro',
			'and' => 'i',
			'githubPATLabel' => 'GitHub token za lični pristup',
			'includePrereleases' => 'Uključi preliminarna izdanja',
			'fallbackToOlderReleases' => 'Povratak na starija izdanja',
			'filterReleaseTitlesByRegEx' => 'Filtrirajte naslove izdanja prema regularnom izrazu',
			'invalidRegEx' => 'Nevažeći regularni izraz',
			'noDescription' => 'Bez opisa',
			'cancel' => 'Otkaži',
			'kContinue' => 'Nastavite',
			'requiredInBrackets' => '(obavezno)',
			'dropdownNoOptsError' => 'GREŠKA: PADAJUĆI MENI MORA IMATI NAJMANJE JEDNU OPCIJU',
			'color' => 'Boja',
			'standard' => 'Standard',
			'custom' => 'Custom',
			'primary' => 'Primary',
			'useMaterialYou' => 'Koristi Material You boje',
			'githubStarredRepos' => 'GitHub repo-i sa zvjezdicom',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Korisničko ime',
			'wrongArgNum' => 'Naveden je pogrešan broj argumenata',
			'xIsTrackOnly' => '{} je samo za praćenje',
			'source' => 'Izvor',
			'app' => 'Aplikacija. ',
			'appsFromSourceAreTrackOnly' => 'Aplikacije iz ovog izvora su \'Samo za praćenje\'.',
			'youPickedTrackOnly' => 'Odabrali ste opciju „Samo za praćenje”.',
			'trackOnlyAppDescription' => 'Aplikacija će se pratiti radi ažuriranja, ali Updatium neće moći da je preuzme ili instalira.',
			'cancelled' => 'Otkazano',
			'appAlreadyAdded' => 'Aplikacija je već dodana',
			'alreadyUpToDateQuestion' => 'Aplikacija je već ažurirana?',
			'addApp' => 'Dodaj aplikaciju',
			'appSourceURL' => 'Izvorni URL aplikacije',
			'error' => 'Greška',
			'add' => 'Dodaj',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Pretraživanje (samo neki izvori)',
			'search' => 'Pretraživanje',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Dodatne opcije za {}',
			'supportedSources' => 'Podržani izvori',
			'trackOnlyInBrackets' => '(Samo za praćenje)',
			'searchableInBrackets' => '(Može se pretraživati)',
			'appsString' => 'Aplikacije',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Dobrodošli!',
			'noAppsSubtext' => 'Možete dodati svoju prvu aplikaciju dodirivanjem \'Dodaj aplikaciju\' ispod.',
			'noAppsForFilter' => 'Nema aplikacija za filter',
			'byX' => 'Autor {}',
			'percentProgress' => 'Napredak: {}%',
			'pleaseWait' => 'Molimo sačekajte',
			'updateAvailable' => 'Ažuriranje dostupno',
			'notInstalled' => 'Nije instalirano',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-verzija',
			'selectAll' => 'Označi sve',
			'deselectX' => 'Poništi odabir {}',
			'xWillBeRemovedButRemainInstalled' => '{} će biti uklonjen iz Updatiuma, ali će ostati instaliran na uređaju.',
			'removeSelectedAppsQuestion' => 'Želite li ukloniti odabrane aplikacije?',
			'removeSelectedApps' => 'Ukloni odabrane aplikacije',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Nadogradi {}',
			'installX' => 'Instaliraj {}',
			'markXTrackOnlyAsUpdated' => 'Označi {}\n(samo za praćenje)\nkao ažurirano',
			'changeX' => 'Promjena {}',
			'installUpdateApps' => 'Instalirajte/ažurirajte aplikacije',
			'installUpdateSelectedApps' => 'Instalirajte/ažurirajte odabrane aplikacije',
			'markXSelectedAppsAsUpdated' => 'Označite {} odabrane aplikacije kao ažurirane?',
			'no' => 'Ne',
			'yes' => 'Da',
			'markSelectedAppsUpdated' => 'Označi odabrane aplikacije kao ažurirane',
			'pinToTop' => 'Prikvači na vrh',
			'unpinFromTop' => 'Otkvači sa vrha',
			'resetInstallStatusForSelectedAppsQuestion' => 'Resetujte status instalacije za odabrane aplikacije?',
			'installStatusOfXWillBeResetExplanation' => 'Status instalacije bilo koje odabrane aplikacije će se resetovati.\n\nTo može pomoći kada je verzija aplikacije prikazana u Updatiumu netačna zbog neuspjelih ažuriranja ili drugih problema.',
			'customLinkMessage' => 'Ove veze rade na uređajima s instaliranim Updatiumom',
			'shareAppConfigLinks' => 'Podijelite konfiguraciju aplikacije kao HTML vezu',
			'resetInstallStatus' => 'Resetujte status instalacije',
			'more' => 'Više',
			'removeOutdatedFilter' => 'Uklonite zastarjeli filter aplikacija',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Prikaži samo zastarjele aplikacije',
			'filter' => 'Filtriranje',
			'filterApps' => 'Filtriraj aplikacije',
			'filterDays' => 'Filter days',
			'appName' => 'Naziv aplikacije',
			'author' => 'Autor',
			'upToDateApps' => 'Ažurirane aplikacije',
			'nonInstalledApps' => 'Neinstalirane aplikacije',
			'importExport' => 'Uvoz/izvoz',
			'settings' => 'Postavke',
			'exportedTo' => 'Izvezeno u {}',
			'updatiumExport' => 'Updatium izvoz',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Neispravan unos.',
			'importedX' => 'Uvezeno {}',
			'updatiumImport' => 'Updatium uvoz',
			'importFromURLList' => 'Uvoz iz URL liste',
			'searchQuery' => 'Pretraga za: ',
			'appURLList' => 'Lista URL adresa aplikacija',
			'line' => 'Linija',
			'searchX' => 'Pretraživanje {}',
			'noResults' => 'Nema rezultata',
			'importX' => 'Uvoz {}',
			'importedAppsIdDisclaimer' => 'Uvezene aplikacije mogu se pogrešno prikazati kao „Nije instalirano”.\nDa biste to riješili, ponovo ih instalirajte putem aplikacije Updatium.\nTo ne bi trebalo uticati na podatke aplikacije.\n\nUtječe samo na URL i metode uvoza treće strane.',
			'importErrors' => 'Uvezi greške',
			'importedXOfYApps' => '{} od {} aplikacija uvezeno.',
			'followingURLsHadErrors' => 'Sljedeći URL-ovi su imali greške:',
			'selectURL' => 'Odaberite URL',
			'selectURLs' => 'Odaberite URL-ove',
			'pick' => 'Odaberi',
			'theme' => 'Tema',
			'dark' => 'Tamna',
			'light' => 'Svijetla',
			'followSystem' => 'Pratite sistem',
			'followSystemThemeExplanation' => 'Praćenje sistemske teme je moguće jedino koristeći aplikacije treće strane',
			'useBlackTheme' => 'Koristite čisto crnu tamnu temu',
			'appSortBy' => 'Aplikacije sortirane po',
			'authorName' => 'Autor/Ime',
			'nameAuthor' => 'Ime/Autor',
			'asAdded' => 'Kao što je dodano',
			'appSortOrder' => 'Redoslijed sortiranja aplikacija',
			'ascending' => 'Uzlazno',
			'descending' => 'Silazno',
			'bgUpdateCheckInterval' => 'Interval provjere ažuriranja u pozadini',
			'neverManualOnly' => 'Nikada - samo ručno',
			'appearance' => 'Izgled',
			'pinUpdates' => 'Prikvačite ažuriranja na vrh prikaza aplikacija',
			'updates' => 'Nadogradnje',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Specifično za izvor',
			'appSource' => 'Izvor aplikacije',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Nema evidencije',
			'appLogs' => 'Evidencije aplikacija',
			'appLogsHint' => 'View application logs',
			'close' => 'Zatvori',
			'share' => 'Podijeli',
			'appNotFound' => 'Aplikacija nije pronađena',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-izvoz',
			'pickAnAPK' => 'Odaberite APK',
			'appHasMoreThanOnePackage' => '{} ima više od jednog paketa:',
			'deviceSupportsXArch' => 'Vaš uređaj podržava {} arhitekturu procesora.',
			'deviceSupportsFollowingArchs' => 'Vaš uređaj podržava sljedeće arhitekture procesora:',
			'warning' => 'Upozorenje',
			'sourceIsXButPackageFromYPrompt' => 'Izvor aplikacije je \'{}\', ali paket za izdavanje dolazi iz \'{}\'. Želite li nastaviti?',
			'updatesAvailable' => 'Dostupna ažuriranja',
			'updatesAvailableNotifDescription' => 'Obavještava korisnika da su ažuriranja dostupna za jednu ili više aplikacija koje prati Updatium',
			'noNewUpdates' => 'Nema novih ažuriranja.',
			'xHasAnUpdate' => '{} ima ažuriranje.',
			'appsUpdated' => 'Aplikacije su ažurirane',
			'appsNotUpdated' => 'Neuspješno ažuriranje aplikacija',
			'appsUpdatedNotifDescription' => 'Obavještava korisnika da su u pozadini primijenjena ažuriranja na jednu ili više aplikacija',
			'xWasUpdatedToY' => '{} je ažuriran na {}.',
			'xWasNotUpdatedToY' => 'Neuspješno ažuriranje {} na {}.',
			'errorCheckingUpdates' => 'Greška pri provjeri ažuriranja',
			'errorCheckingUpdatesNotifDescription' => 'Obavijest koja se prikazuje kada provjera sigurnosnog ažuriranja ne uspije',
			'appsRemoved' => 'Aplikacije su uklonjene',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Obavještava korisnika da je jedna ili više aplikacija uklonjeno zbog grešaka prilikom učitavanja',
			'xWasRemovedDueToErrorY' => '{} je uklonjen zbog ove greške: {}',
			'completeAppInstallation' => 'Dovršite instalaciju aplikacije',
			'updatiumMustBeOpenToInstallApps' => 'Updatium mora biti otvoren za instalaciju aplikacija',
			'completeAppInstallationNotifDescription' => 'Traži od korisnika da se vrati u Updatium kako bi dovršio instalaciju aplikacije',
			'checkingForUpdates' => 'Tražim moguće nadogradnje',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Privremeno obavještenje koje se pojavljuje prilikom provjere ažuriranja',
			'pleaseAllowInstallPerm' => 'Dozvolite Updatiumu da instalira aplikacije',
			'trackOnly' => 'Samo za praćenje',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Greška {}',
			'versionCorrectionDisabled' => 'Ispravka verzije je onemogućena (izgleda da plugin ne radi)',
			'unknown' => 'Nepoznato',
			'none' => 'Ništa',
			'all' => 'All',
			'never' => 'Nikad',
			'latestVersion' => 'Najnovija verzija',
			'installedVersionX' => 'Instalirana verzija: {}',
			'lastUpdateCheckX' => 'Posljednja provjera ažuriranja: {}',
			'remove' => 'Izbriši',
			'quickLinks' => 'Brzi linkovi',
			'yesMarkUpdated' => 'Da, označi kao ažurirano',
			'fdroid' => 'Službeni F-Droid',
			'appIdOrName' => 'ID ili ime aplikacije',
			'appId' => 'ID aplikacije',
			'appWithIdOrNameNotFound' => 'Nije pronađena aplikacija s tim ID-om ili imenom',
			'reposHaveMultipleApps' => 'Repo-i mogu sadržavati više aplikacija',
			'fdroidThirdPartyRepo' => 'F-Droid Repo treće strane',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instaliraj',
			'markInstalled' => 'Označi kao instalirano',
			'update' => 'Nadogradi',
			'updated' => 'Ažurirano',
			'markUpdated' => 'Označi kao ažurirano',
			'download' => 'Download',
			'additionalOptions' => 'Dodatne opcije',
			'disableVersionDetection' => 'Onemogući detekciju verzije',
			'noVersionDetectionExplanation' => 'Ova opcija bi se trebala koristiti samo za aplikacije gdje detekcija verzije ne radi ispravno.',
			'downloadingX' => 'Preuzimanje {}',
			'downloadX' => 'Preuzeti {}',
			'downloadedX' => 'Preuzeto {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Fajlovi verzije',
			'downloadNotifDescription' => 'Obavještava korisnika o napretku u preuzimanju aplikacije',
			'noAPKFound' => 'APK nije pronađen',
			'noVersionDetection' => 'Nema detekcije verzije',
			'categorize' => 'Kategoriziraj',
			'categories' => 'Kategorije',
			'category' => 'Kategorija',
			'noCategory' => 'Nema kategorije',
			'noCategories' => 'Nema kategorija',
			'categoryDeleteQuestion' => 'Želite li izbrisati kategorije?',
			'categoryDeleteWarning' => 'Sve aplikacije u izbrisanim kategorijama će biti postavljene kao nekategorisane.',
			'addCategory' => 'Dodaj kategoriju',
			'label' => 'Oznaka',
			'language' => 'Jezik',
			'copiedToClipboard' => 'Podaci kopirani u međuspremnik',
			'storagePermissionDenied' => 'Dozvola za pohranu je odbijena',
			'selectedCategorizeWarning' => 'Ovo će zamijeniti sve postojeće postavke kategorije za odabrane aplikacije.',
			'filterAPKsByRegEx' => 'Filtrirajte APK-ove prema regularnom izrazu',
			'removeFromUpdatium' => 'Ukloni iz Updatiuma',
			'uninstallFromDevice' => 'Deinstaliraj s uređaja',
			'onlyWorksWithNonVersionDetectApps' => 'Radi samo za aplikacije s onemogućenom detekcijom verzije.',
			'releaseDateAsVersion' => 'Koristi datum izdanja kao verziju',
			'releaseTitleAsVersion' => 'Use release title as version string',
			'releaseDateAsVersionExplanation' => 'Ova opcija bi se trebala koristiti samo za aplikacije gdje detekcija verzije ne radi ispravno, ali je datum izdavanja dostupan.',
			'changes' => 'Promjene',
			'releaseDate' => 'Datum izdavanja',
			'importFromURLsInFile' => 'Uvoz iz URL-ova u datoteci (kao što je OPML)',
			'versionDetectionExplanation' => 'Pomiri niz verzije sa verzijom otkrivenom iz OS-a',
			'versionDetection' => 'Otkrivanje verzije',
			'standardVersionDetection' => 'Detekcija standardne verzije',
			'groupByCategory' => 'Grupiši po kategoriji',
			'listView' => 'Prikaz liste',
			'gridView' => 'Prikaz mreže',
			'autoApkFilterByArch' => 'Pokušajte filtrirati APK-ove po arhitekturi procesora ako je moguće',
			'autoLinkFilterByArch' => 'Attempt to filter links by CPU architecture if possible',
			'overrideSource' => 'Premosti izvor',
			'dontShowAgain' => 'Ne prikazuj ovo ponovo',
			'dontShowTrackOnlyWarnings' => 'Ne prikazuj upozorenja „Samo za  praćenje”',
			'dontShowAPKOriginWarnings' => 'Ne prikazuj upozorenja o porijeklu APK-a',
			'moveNonInstalledAppsToBottom' => 'Premjesti neinstalirane aplikacije na dno prikaza aplikacija',
			'gitlabPATLabel' => 'GitLab token za lični pristup',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'O nama',
			'requiresCredentialsInSettings' => '{}: Za ovo su potrebni dodatni akreditivi (u Postavkama)',
			'checkOnStart' => 'Provjerite ima li novosti pri pokretanju',
			'safeMode' => 'Sigurnosni režim',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Dodavanje aplikacija je onemogućeno u sigurnosnom režimu',
			'tryInferAppIdFromCode' => 'Pokušati otkriti ID aplikacije iz izvornog koda',
			'removeOnExternalUninstall' => 'Automatski ukloni eksterno deinstalirane aplikacije',
			'pickHighestVersionCode' => 'Automatski odaberite najviši kôd verzije APK-a',
			'checkUpdateOnDetailPage' => 'Provjerite ima li novosti pri otvaranju stranice s detaljima aplikacije',
			'disablePageTransitions' => 'Ugasite animaciju prijelaza stranice',
			'reversePageTransitions' => 'Reverzne animacije prijelaza stranice',
			'minStarCount' => 'Najmanji broj zvjezdica',
			'addInfoBelow' => 'Dodajte ove informacije ispod.',
			'addInfoInSettings' => 'Dodajte ove informacije u Postavkama.',
			'githubSourceNote' => 'GitHub ograničavanje se može izbjeći korišćenjem tokena za lični pristup.',
			'sortByLastLinkSegment' => 'Sortiraj samo po zadnjem segmentu veze',
			'filterReleaseNotesByRegEx' => 'Filtirajte promjene u izdanju po regularnom izrazu',
			'customLinkFilterRegex' => 'Prilagođeni APK link filtrira se po regularnom izrazu (Zadano \'.apk$\')',
			'appsPossiblyUpdated' => 'Pokušano ažuriranje aplikacija',
			'appsPossiblyUpdatedNotifDescription' => 'Obavještava korisnika da je ažuriranje jedne ili više aplikacija potencijalno izvršeno u pozadini',
			'xWasPossiblyUpdatedToY' => '{} aplikacija bi trebala biti ažurirana na {}.',
			'enableBackgroundUpdates' => 'Dozvolite ažuriranja u pozadini',
			'backgroundUpdateReqsExplanation' => 'Ažuriranja u pozadini možda neće raditi za sve aplikacije.',
			'backgroundUpdateLimitsExplanation' => 'Uspjeh ažuriranja u pozadini se može provjeriti tek kada otvorite Updatium.',
			'verifyLatestTag' => 'Provjerite \'posljednu\' (\'latest\') oznaku',
			'intermediateLinkRegex' => 'Filter za \'srednju\' vezu za posjetu',
			'filterByLinkText' => 'Filtriraj linkove prema tekstu linka',
			'matchLinksOutsideATags' => 'Poklopiti linkove van <a> tag-a',
			'intermediateLinkNotFound' => 'Intermediate veza nije nađena',
			'intermediateLink' => 'Intermediate veza',
			'exemptFromBackgroundUpdates' => 'Izuzmi iz ažuriranja u pozadini (ako su uključeni)',
			'bgUpdatesOnWiFiOnly' => 'Isključite ažuriranje u pozadini kada niste na Wi-Fi-ju',
			'bgUpdatesWhileChargingOnly' => 'Isključi pozadinska ažuriranja kada uređaj nije na punjaču',
			'autoSelectHighestVersionCode' => 'Automatski izaberite najveću (verziju) versionCode APK-a',
			'versionExtractionRegEx' => 'RegEx ekstrakcija verzije',
			'trimVersionString' => 'Skrati string verzije pomoću RegEx-a',
			'matchGroupToUseForX' => 'Podjesite grupu za upotebu za "{}"',
			'matchGroupToUse' => 'Podjesite grupu za upotebu',
			'highlightTouchTargets' => 'Istaknite manje vidljive touch mete',
			'pickExportDir' => 'Izaberite datoteku za izvoz',
			'autoExportOnChanges' => 'Automatski izvezite pri promjenama',
			'includeSettings' => 'Uključi postavke',
			'filterVersionsByRegEx' => 'Filtrirajte verzije po regulatnom izrazu',
			'trySelectingSuggestedVersionCode' => 'Probajte izabrati preloženu (verziju) versionCode APK-a',
			'dontSortReleasesList' => 'Zadrži redosled izdanja iz API-a',
			'reverseSort' => 'Obrni redosled',
			'takeFirstLink' => 'Uzmi prvi link',
			'skipSort' => 'Preskoči sortiranje',
			'debugMenu' => 'Meni za otkrivanje grešaka',
			'bgTaskStarted' => 'Rad u pozadini pokrenut - provjerite log-ove.',
			'runBgCheckNow' => 'Pokrenite pozadinsku provjeru ažuriranja sad',
			'versionExtractWholePage' => 'Primjenite Regex ekstrakciju verzije na cijelu stranicu',
			'installing' => 'Instaliranje',
			'skipUpdateNotifications' => 'Ne prikazujte obavještenja ažuriranja',
			'updatesAvailableNotifChannel' => 'Dostupna ažuriranja',
			'appsUpdatedNotifChannel' => 'Aplikacije su ažurirane',
			'appsPossiblyUpdatedNotifChannel' => 'Pokušano ažuriranje aplikacija',
			'errorCheckingUpdatesNotifChannel' => 'Greška pri provjeri ažuriranja',
			'appsRemovedNotifChannel' => 'Aplikacije su uklonjene',
			'downloadingXNotifChannel' => 'Preuzimanje {}',
			'completeAppInstallationNotifChannel' => 'Dovršite instalaciju aplikacije',
			'checkingForUpdatesNotifChannel' => 'Tražim moguće nadogradnje',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Isključivo provjerite ažuriranje za instalirane i aplikacije \'samo za praćenje\'',
			'supportFixedAPKURL' => 'Podržite fiksne APK URL-ove',
			'selectX' => 'Izaberite {}',
			'parallelDownloads' => 'Dozvoli paralelna preuzimanja',
			'useShizuku' => 'Koristi Shizuku ili Sui za instaliranje',
			'shizukuBinderNotFound' => 'Shizuku nije pokrenut',
			'shizukuOld' => 'Stara Shizuku verzija (<11) - ažurirajte je',
			'shizukuOldAndroidWithADB' => 'Shizuku pokrenut na Android-u < 8.1 pomoću ADB-a - ažurirajte Android ili koristite Sui',
			'shizukuPretendToBeGooglePlay' => 'Postavi Google Play kao izvor instalacije (samo ako je Shizuku u upotrebi)',
			'useSystemFont' => 'Koristite sistemski font',
			'useVersionCodeAsOSVersion' => 'Koristite kod verzije aplikacije kao verziju koju je otkrio OS',
			'requestHeader' => 'Zaglavlje zahtjeva',
			'useLatestAssetDateAsReleaseDate' => 'Koristite najnovije otpremanje materijala kao datum izdavanja',
			'defaultPseudoVersioningMethod' => 'Zadana metoda pseudo-verzija',
			'partialAPKHash' => 'Djelomični APK Hash',
			'APKLinkHash' => 'APK Link Hash',
			'directAPKLink' => 'Direktna APK veza',
			'pseudoVersionInUse' => 'Pseudo-verzija je u upotrebi',
			'installedVersion' => 'Instalirana verzija',
			'installed' => 'Instalirano',
			'notInstalledApps' => 'Nije instalirano',
			'latest' => 'Najnoviji',
			'invertRegEx' => 'Obrni regularni izraz',
			'note' => 'Zabelješke',
			'selfHostedNote' => '"{}" padajući meni se može koristiti da dosegnete vlastite/prilagođene instance bilo kojeg izvora.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK ne može biti raščlanjen (nekomaptibilno ili delimično preuzimanje)',
			'beforeNewInstallsShareToAppVerifier' => 'Dijeli nove aplikacije sa AppVerifier-om (ako je dostupno)',
			'appVerifierInstructionToast' => 'Dijeli sa AppVerifier-om, zatim se vratite kada ste spremni.',
			'wiki' => 'Pomoć/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Dozvoli nesigurne HTTP zahtjeve',
			'stayOneVersionBehind' => 'Ostani na verziji koja prethodi posljednjoj',
			'useFirstApkOfVersion' => 'Automatski izaberi prvi ako postoji više APK-ova',
			'refreshBeforeDownload' => 'Osvježi detalje aplikacije prije preuzimanja',
			'tencentAppStore' => 'Tencent prodavnica aplikacija',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo prodavnica aplikacija (Kina)',
			'name' => 'Ime',
			'smartname' => 'Ime (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Metoda sortiranja',
			'welcome' => 'Dobrodošli',
			'batteryOptimizationNote' => 'Imajte na umu da pozadinska preuzimanja rade bolje ako se aplikacija izuzme iz optimizacije baterije.',
			'fileDeletionError' => 'Neuspješno brisanje datoteke (probajte je ručno obrisati, pa pokušajte ponovo): "{}"',
			'foregroundService' => 'Updatium servis u prednjem planu',
			'foregroundServiceExplanation' => 'Koristi servis u prednjem planu za provjeru ažuriranja (bolji rad, troši više energije)',
			'fgServiceNotice' => 'Ovo obavještenje je obavezno radi provjera ažuriranja u pozadini (može se prikriti u postavkama sistema)',
			'excludeSecrets' => 'Izuzmi secrets',
			'GHReqPrefix' => '\'omeritzics/Updatium\' istanca za GitHub zahtjeve',
			'includeZips' => 'Uključi i ZIP datoteke',
			'zippedApkFilterRegEx' => 'Filtriraj APK-ove unutar ZIP datoteka',
			'multipleSigners' => 'Multiple Signers',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Želite li ukloniti aplikaciju?', other: 'Želite li ukloniti aplikacije?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Previše zahtjeva (ograničena broj zahteva) - pokušajte ponovo za {count} minutu', other: 'Previše zahtjeva (ograničena cijena) - pokušajte ponovo za {count} min.', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Provjera ažuriranja u pozadini naišla je na {error}, zakazuje se ponovni pokušaj za {count} minutu', other: 'Provjera ažuriranja u pozadini naišla je na {error}, zakazuje se ponovni pokušaj za {count} min.', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Provjera ažuriranja u pozadini je pronašla {count} ažuriranje - korisnik će biti obavješten ako je to potrebno', other: 'Provjera ažuriranja u pozadini je pronašla {count} ažuriranja - korisnik će biti obavješten ako je to potrebno', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{count} aplikacija', other: '{count} aplikacije', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{count} URL', other: '{count} URL-ovi', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{count} minuta', other: 'min.', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{count} sat', other: '{count} sat/i', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{count} dan', other: '{count} dana', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Izbrisan {n} log (prije = {before}, nakon = {after})', other: 'Izbrisano {n} log-ova (prije = {before}, nakon = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{app} i još 1 aplikacija ima ažuriranja.', other: '{app} i još {count} aplikacija imaju ažuriranja.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{app} i još 1 aplikacija je ažurirana.', other: '{app} i još {count} aplikacija je ažurirano.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Failed to update {app} and 1 more app.', other: 'Failed to update {app} and {count} more apps.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{app} i još jedna aplikacija je vjerovatno ažurirana.', other: '{app} i još {count} aplikacija su vjerovatno ažurirane.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: '{count} APK', other: '{count} APK-a', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bs'))(n, one: 'Certificate Hash', other: 'Certificate Hashes', ), 
			'securityDisclaimerTitle' => 'Bezbednosno i Pravno Odricanje Odgovornosti',
			'license' => 'Licenca',
			'licenseText' => 'Ova aplikacija se distribuira pod GPL v3 licencom.',
			'disclaimer' => 'Odgovornost',
			'disclaimerText' => 'Ova aplikacija ne distribuira, ne hostuje niti verifikuje nijednu od eksternih aplikacija. Korisnik snosi punu odgovornost za bezbednost i zakonitost bilo kog softvera instaliranog putem ovog alata.\n\nhttps://github.com/omeritzics/Updatium je jedino zvanično mjesto za preuzimanje Updatiuma - strogo se preporučuje da se ne preuzima s drugih mjesta jer je preuzimanje iz nezvaničnih izvora nesigurno.',
			'privacy' => 'Privatnost',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Prihvatam i Nastavim',
			'decline' => 'Odbij',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Uživate li u Updatiumu?',
			'githubStarPromptContent' => 'Updatium je volonterski projekt otvorenog koda koji razvijam u slobodno vrijeme. Ako želite podržati projekt, molimo vas da razmislite o davanju zvijezde na GitHubu kako bismo nam pomogli da dosegnemo više korisnika i doprinosilaca. Više se nećete obavještavati o ovome. Hvala unaprijed! :)',
			'githubStarPromptStar' => 'Daj zvijezdu',
			'githubStarPromptDontShowAgain' => 'Ne prikazuj više',
			'sourceCode' => 'Izvorni kod',
			'developedBy' => 'Razvio',
			'appDescription' => 'Prilagodljiv katalog Android aplikacija koji vam omoguava da aeurirate svoje aplikacije direktno iz njihovih APK izvora.',
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
