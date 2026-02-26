// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bosnian (`bs`).
class AppLocalizationsBs extends AppLocalizations {
  AppLocalizationsBs([String locale = 'bs']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'Nije važeći URL aplikacije $p0';
  }

  @override
  String get noReleaseFound => 'Nije moguće pronaći odgovarajuće izdanje';

  @override
  String get noVersionFound => 'Nije moguće odrediti verziju izdanja';

  @override
  String get urlMatchesNoSource => 'URL se ne podudara s poznatim izvorom';

  @override
  String get cantInstallOlderVersion => 'Nije moguće instalirati stariju verziju aplikacije';

  @override
  String get appIdMismatch => 'ID preuzetog paketa se ne podudara s postojećim ID-om aplikacije';

  @override
  String get functionNotImplemented => 'Ova klasa nije implementirala ovu funkciju';

  @override
  String get placeholder => 'Rezervirano mjesto';

  @override
  String get someErrors => 'Došlo je do nekih grešaka';

  @override
  String get unexpectedError => 'Neočekivana greška';

  @override
  String get ok => 'Dobro';

  @override
  String get and => 'i';

  @override
  String get githubPATLabel => 'GitHub token za lični pristup (eng. PAT, povećava ograničenje stope)';

  @override
  String get includePrereleases => 'Uključi preliminarna izdanja';

  @override
  String get fallbackToOlderReleases => 'Povratak na starija izdanja';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtrirajte naslove izdanja prema regularnom izrazu';

  @override
  String get invalidRegEx => 'Nevažeći regularni izraz';

  @override
  String get noDescription => 'Bez opisa';

  @override
  String get cancel => 'Otkaži';

  @override
  String get continue => 'Nastavite';

  @override
  String get requiredInBrackets => '(obavezno)';

  @override
  String get dropdownNoOptsError => 'GREŠKA: PADAJUĆI MENI MORA IMATI NAJMANJE JEDNU OPCIJU';

  @override
  String get color => 'Boja';

  @override
  String get standard => 'Standard';

  @override
  String get custom => 'Custom';

  @override
  String get useMaterialYou => 'Koristi Material You boje';

  @override
  String get githubStarredRepos => 'GitHub repo-i sa zvjezdicom';

  @override
  String get uname => 'Korisničko ime';

  @override
  String get wrongArgNum => 'Naveden je pogrešan broj argumenata';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 je samo za praćenje';
  }

  @override
  String get source => 'Izvor';

  @override
  String get app => 'Aplikacija. ';

  @override
  String get appsFromSourceAreTrackOnly => 'Aplikacije iz ovog izvora su \'Samo za praćenje\'.';

  @override
  String get youPickedTrackOnly => 'Odabrali ste opciju „Samo za praćenje”.';

  @override
  String get trackOnlyAppDescription => 'Aplikacija će se pratiti radi ažuriranja, ali Updatium neće moći da je preuzme ili instalira.';

  @override
  String get cancelled => 'Otkazano';

  @override
  String get appAlreadyAdded => 'Aplikacija je već dodana';

  @override
  String get alreadyUpToDateQuestion => 'Aplikacija je već ažurirana?';

  @override
  String get addApp => 'Dodaj aplikaciju';

  @override
  String get appSourceURL => 'Izvorni URL aplikacije';

  @override
  String get error => 'Greška';

  @override
  String get add => 'Dodaj';

  @override
  String get searchSomeSourcesLabel => 'Pretraživanje (samo neki izvori)';

  @override
  String get search => 'Pretraživanje';

  @override
  String additionalOptsFor(Object p0) {
    return 'Dodatne opcije za $p0';
  }

  @override
  String get supportedSources => 'Podržani izvori';

  @override
  String get trackOnlyInBrackets => '(Samo za praćenje)';

  @override
  String get searchableInBrackets => '(Može se pretraživati)';

  @override
  String get appsString => 'Aplikacije';

  @override
  String get noApps => 'Dobrodošli!';

  @override
  String get noAppsSubtext => 'Možete dodati svoju prvu aplikaciju dodirivanjem \'Dodaj aplikaciju\' ispod.';

  @override
  String get noAppsForFilter => 'Nema aplikacija za filter';

  @override
  String byX(Object p0) {
    return 'Autor $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Napredak: $p0%';
  }

  @override
  String get pleaseWait => 'Molimo sačekajte';

  @override
  String get updateAvailable => 'Ažuriranje dostupno';

  @override
  String get notInstalled => 'Nije instalirano';

  @override
  String get pseudoVersion => 'pseudo-verzija';

  @override
  String get selectAll => 'Označi sve';

  @override
  String deselectX(Object p0) {
    return 'Poništi odabir $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 će biti uklonjen iz Updatiuma, ali će ostati instaliran na uređaju.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Želite li ukloniti odabrane aplikacije?';

  @override
  String get removeSelectedApps => 'Ukloni odabrane aplikacije';

  @override
  String updateX(Object p0) {
    return 'Nadogradi $p0';
  }

  @override
  String installX(Object p0) {
    return 'Instaliraj $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Označi $p0\n(samo za praćenje)\nkao ažurirano';
  }

  @override
  String changeX(Object p0) {
    return 'Promjena $p0';
  }

  @override
  String get installUpdateApps => 'Instalirajte/ažurirajte aplikacije';

  @override
  String get installUpdateSelectedApps => 'Instalirajte/ažurirajte odabrane aplikacije';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Označite $p0 odabrane aplikacije kao ažurirane?';
  }

  @override
  String get no => 'Ne';

  @override
  String get yes => 'Da';

  @override
  String get markSelectedAppsUpdated => 'Označi odabrane aplikacije kao ažurirane';

  @override
  String get pinToTop => 'Prikvači na vrh';

  @override
  String get unpinFromTop => 'Otkvači sa vrha';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Resetujte status instalacije za odabrane aplikacije?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Status instalacije bilo koje odabrane aplikacije će se resetovati.\n\nTo može pomoći kada je verzija aplikacije prikazana u Updatiumu netačna zbog neuspjelih ažuriranja ili drugih problema.';

  @override
  String get customLinkMessage => 'Ove veze rade na uređajima s instaliranim Updatiumom';

  @override
  String get shareAppConfigLinks => 'Podijelite konfiguraciju aplikacije kao HTML vezu';

  @override
  String get shareSelectedAppURLs => 'Podijeli odabrane URL-ove aplikacija';

  @override
  String get resetInstallStatus => 'Resetujte status instalacije';

  @override
  String get more => 'Više';

  @override
  String get removeOutdatedFilter => 'Uklonite zastarjeli filter aplikacija';

  @override
  String get showOutdatedOnly => 'Prikaži samo zastarjele aplikacije';

  @override
  String get filter => 'Filtriranje';

  @override
  String get filterApps => 'Filtriraj aplikacije';

  @override
  String get appName => 'Naziv aplikacije';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Ažurirane aplikacije';

  @override
  String get nonInstalledApps => 'Neinstalirane aplikacije';

  @override
  String get importExport => 'Uvoz/izvoz';

  @override
  String get settings => 'Postavke';

  @override
  String exportedTo(Object p0) {
    return 'Izvezeno u $p0';
  }

  @override
  String get updatiumExport => 'Updatium izvoz';

  @override
  String get invalidInput => 'Neispravan unos.';

  @override
  String importedX(Object p0) {
    return 'Uvezeno $p0';
  }

  @override
  String get updatiumImport => 'Updatium uvoz';

  @override
  String get importFromURLList => 'Uvoz iz URL liste';

  @override
  String get searchQuery => 'Pretraga za: ';

  @override
  String get appURLList => 'Lista URL adresa aplikacija';

  @override
  String get line => 'Linija';

  @override
  String searchX(Object p0) {
    return 'Pretraživanje $p0';
  }

  @override
  String get noResults => 'Nema rezultata';

  @override
  String importX(Object p0) {
    return 'Uvoz $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Uvezene aplikacije mogu se pogrešno prikazati kao „Nije instalirano”.\nDa biste to riješili, ponovo ih instalirajte putem aplikacije Updatium.\nTo ne bi trebalo uticati na podatke aplikacije.\n\nUtječe samo na URL i metode uvoza treće strane.';

  @override
  String get importErrors => 'Uvezi greške';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 od $p1 aplikacija uvezeno.';
  }

  @override
  String get followingURLsHadErrors => 'Sljedeći URL-ovi su imali greške:';

  @override
  String get selectURL => 'Odaberite URL';

  @override
  String get selectURLs => 'Odaberite URL-ove';

  @override
  String get pick => 'Odaberi';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Tamna';

  @override
  String get light => 'Svijetla';

  @override
  String get followSystem => 'Pratite sistem';

  @override
  String get followSystemThemeExplanation => 'Praćenje sistemske teme je moguće jedino koristeći aplikacije treće strane';

  @override
  String get useBlackTheme => 'Koristite čisto crnu tamnu temu';

  @override
  String get appSortBy => 'Aplikacije sortirane po';

  @override
  String get authorName => 'Autor/Ime';

  @override
  String get nameAuthor => 'Ime/Autor';

  @override
  String get asAdded => 'Kao što je dodano';

  @override
  String get appSortOrder => 'Redoslijed sortiranja aplikacija';

  @override
  String get ascending => 'Uzlazno';

  @override
  String get descending => 'Silazno';

  @override
  String get bgUpdateCheckInterval => 'Interval provjere ažuriranja u pozadini';

  @override
  String get neverManualOnly => 'Nikada - samo ručno';

  @override
  String get appearance => 'Izgled';

  @override
  String get pinUpdates => 'Prikvačite ažuriranja na vrh prikaza aplikacija';

  @override
  String get updates => 'Nadogradnje';

  @override
  String get sourceSpecific => 'Specifično za izvor';

  @override
  String get appSource => 'Izvor aplikacije';

  @override
  String get noLogs => 'Nema evidencije';

  @override
  String get appLogs => 'Evidencije aplikacija';

  @override
  String get close => 'Zatvori';

  @override
  String get share => 'Podijeli';

  @override
  String get appNotFound => 'Aplikacija nije pronađena';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-izvoz';

  @override
  String get pickAnAPK => 'Odaberite APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 ima više od jednog paketa:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Vaš uređaj podržava $p0 arhitekturu procesora.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Vaš uređaj podržava sljedeće arhitekture procesora:';

  @override
  String get warning => 'Upozorenje';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'Izvor aplikacije je \'$p0\', ali paket za izdavanje dolazi iz \'$p1\'. Želite li nastaviti?';
  }

  @override
  String get updatesAvailable => 'Dostupna ažuriranja';

  @override
  String get updatesAvailableNotifDescription => 'Obavještava korisnika da su ažuriranja dostupna za jednu ili više aplikacija koje prati Updatium';

  @override
  String get noNewUpdates => 'Nema novih ažuriranja.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 ima ažuriranje.';
  }

  @override
  String get appsUpdated => 'Aplikacije su ažurirane';

  @override
  String get appsNotUpdated => 'Neuspješno ažuriranje aplikacija';

  @override
  String get appsUpdatedNotifDescription => 'Obavještava korisnika da su u pozadini primijenjena ažuriranja na jednu ili više aplikacija';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 je ažuriran na $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Neuspješno ažuriranje $p0 na $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Greška pri provjeri ažuriranja';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Obavijest koja se prikazuje kada provjera sigurnosnog ažuriranja ne uspije';

  @override
  String get appsRemoved => 'Aplikacije su uklonjene';

  @override
  String get appsRemovedNotifDescription => 'Obavještava korisnika da je jedna ili više aplikacija uklonjeno zbog grešaka prilikom učitavanja';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 je uklonjen zbog ove greške: $p1';
  }

  @override
  String get completeAppInstallation => 'Dovršite instalaciju aplikacije';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium mora biti otvoren za instalaciju aplikacija';

  @override
  String get completeAppInstallationNotifDescription => 'Traži od korisnika da se vrati u Updatium kako bi dovršio instalaciju aplikacije';

  @override
  String get checkingForUpdates => 'Tražim moguće nadogradnje';

  @override
  String get checkingForUpdatesNotifDescription => 'Privremeno obavještenje koje se pojavljuje prilikom provjere ažuriranja';

  @override
  String get pleaseAllowInstallPerm => 'Dozvolite Updatiumu da instalira aplikacije';

  @override
  String get trackOnly => 'Samo za praćenje';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Greška $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Ispravka verzije je onemogućena (izgleda da plugin ne radi)';

  @override
  String get unknown => 'Nepoznato';

  @override
  String get none => 'Ništa';

  @override
  String get all => 'All';

  @override
  String get never => 'Nikad';

  @override
  String latestVersionX(Object p0) {
    return 'Najnovija verzija: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Instalirana verzija: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Posljednja provjera ažuriranja: $p0';
  }

  @override
  String get remove => 'Izbriši';

  @override
  String get yesMarkUpdated => 'Da, označi kao ažurirano';

  @override
  String get fdroid => 'Službeni F-Droid';

  @override
  String get appIdOrName => 'ID ili ime aplikacije';

  @override
  String get appId => 'ID aplikacije';

  @override
  String get appWithIdOrNameNotFound => 'Nije pronađena aplikacija s tim ID-om ili imenom';

  @override
  String get reposHaveMultipleApps => 'Repo-i mogu sadržavati više aplikacija';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid Repo treće strane';

  @override
  String get install => 'Instaliraj';

  @override
  String get markInstalled => 'Označi kao instalirano';

  @override
  String get update => 'Nadogradi';

  @override
  String get updated => 'Ažurirano';

  @override
  String get markUpdated => 'Označi kao ažurirano';

  @override
  String get additionalOptions => 'Dodatne opcije';

  @override
  String get disableVersionDetection => 'Onemogući detekciju verzije';

  @override
  String get noVersionDetectionExplanation => 'Ova opcija bi se trebala koristiti samo za aplikacije gdje detekcija verzije ne radi ispravno.';

  @override
  String downloadingX(Object p0) {
    return 'Preuzimanje $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Preuzeti $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Preuzeto $p0';
  }

  @override
  String get releaseAsset => 'Fajlovi verzije';

  @override
  String get downloadNotifDescription => 'Obavještava korisnika o napretku u preuzimanju aplikacije';

  @override
  String get noAPKFound => 'APK nije pronađen';

  @override
  String get noVersionDetection => 'Nema detekcije verzije';

  @override
  String get categorize => 'Kategoriziraj';

  @override
  String get categories => 'Kategorije';

  @override
  String get category => 'Kategorija';

  @override
  String get noCategory => 'Nema kategorije';

  @override
  String get noCategories => 'Nema kategorija';

  @override
  String get deleteCategoriesQuestion => 'Želite li izbrisati kategorije?';

  @override
  String get categoryDeleteWarning => 'Sve aplikacije u izbrisanim kategorijama će biti postavljene kao nekategorisane.';

  @override
  String get addCategory => 'Dodaj kategoriju';

  @override
  String get label => 'Oznaka';

  @override
  String get language => 'Jezik';

  @override
  String get copiedToClipboard => 'Podaci kopirani u međuspremnik';

  @override
  String get storagePermissionDenied => 'Dozvola za pohranu je odbijena';

  @override
  String get selectedCategorizeWarning => 'Ovo će zamijeniti sve postojeće postavke kategorije za odabrane aplikacije.';

  @override
  String get filterAPKsByRegEx => 'Filtrirajte APK-ove prema regularnom izrazu';

  @override
  String get removeFromUpdatium => 'Ukloni iz Updatiuma';

  @override
  String get uninstallFromDevice => 'Deinstaliraj s uređaja';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Radi samo za aplikacije s onemogućenom detekcijom verzije.';

  @override
  String get releaseDateAsVersion => 'Koristi datum izdanja kao verziju';

  @override
  String get releaseTitleAsVersion => 'Use release title as version string';

  @override
  String get releaseDateAsVersionExplanation => 'Ova opcija bi se trebala koristiti samo za aplikacije gdje detekcija verzije ne radi ispravno, ali je datum izdavanja dostupan.';

  @override
  String get changes => 'Promjene';

  @override
  String get releaseDate => 'Datum izdavanja';

  @override
  String get importFromURLsInFile => 'Uvoz iz URL-ova u datoteci (kao što je OPML)';

  @override
  String get versionDetectionExplanation => 'Pomiri niz verzije sa verzijom otkrivenom iz OS-a';

  @override
  String get versionDetection => 'Otkrivanje verzije';

  @override
  String get standardVersionDetection => 'Detekcija standardne verzije';

  @override
  String get groupByCategory => 'Grupiši po kategoriji';

  @override
  String get listView => 'Prikaz liste';

  @override
  String get gridView => 'Prikaz mreže';

  @override
  String get autoApkFilterByArch => 'Pokušajte filtrirati APK-ove po arhitekturi procesora ako je moguće';

  @override
  String get autoLinkFilterByArch => 'Attempt to filter links by CPU architecture if possible';

  @override
  String get overrideSource => 'Premosti izvor';

  @override
  String get dontShowAgain => 'Ne prikazuj ovo ponovo';

  @override
  String get dontShowTrackOnlyWarnings => 'Ne prikazuj upozorenja „Samo za  praćenje”';

  @override
  String get dontShowAPKOriginWarnings => 'Ne prikazuj upozorenja o porijeklu APK-a';

  @override
  String get moveNonInstalledAppsToBottom => 'Premjesti neinstalirane aplikacije na dno prikaza aplikacija';

  @override
  String get hideNonInstalledApps => 'Sakrij neinstalirane aplikacije';

  @override
  String get gitlabPATLabel => 'GitLab token za lični pristup';

  @override
  String get about => 'O nama';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0: Za ovo su potrebni dodatni akreditivi (u Postavkama)';
  }

  @override
  String get checkOnStart => 'Provjerite ima li novosti pri pokretanju';

  @override
  String get tryInferAppIdFromCode => 'Pokušati otkriti ID aplikacije iz izvornog koda';

  @override
  String get removeOnExternalUninstall => 'Automatski ukloni eksterno deinstalirane aplikacije';

  @override
  String get pickHighestVersionCode => 'Automatski odaberite najviši kôd verzije APK-a';

  @override
  String get checkUpdateOnDetailPage => 'Provjerite ima li novosti pri otvaranju stranice s detaljima aplikacije';

  @override
  String get disablePageTransitions => 'Ugasite animaciju prijelaza stranice';

  @override
  String get reversePageTransitions => 'Reverzne animacije prijelaza stranice';

  @override
  String get minStarCount => 'Najmanji broj zvjezdica';

  @override
  String get addInfoBelow => 'Dodajte ove informacije ispod.';

  @override
  String get addInfoInSettings => 'Dodajte ove informacije u Postavkama.';

  @override
  String get githubSourceNote => 'GitHub ograničavanje se može izbjeći korišćenjem tokena za lični pristup.';

  @override
  String get sortByLastLinkSegment => 'Sortiraj samo po zadnjem segmentu veze';

  @override
  String get filterReleaseNotesByRegEx => 'Filtirajte promjene u izdanju po regularnom izrazu';

  @override
  String get customLinkFilterRegex => 'Prilagođeni APK link filtrira se po regularnom izrazu (Zadano \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Pokušano ažuriranje aplikacija';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Obavještava korisnika da je ažuriranje jedne ili više aplikacija potencijalno izvršeno u pozadini';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 aplikacija bi trebala biti ažurirana na $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Dozvolite ažuriranja u pozadini';

  @override
  String get backgroundUpdateReqsExplanation => 'Ažuriranja u pozadini možda neće raditi za sve aplikacije.';

  @override
  String get backgroundUpdateLimitsExplanation => 'Uspjeh ažuriranja u pozadini se može provjeriti tek kada otvorite Updatium.';

  @override
  String get verifyLatestTag => 'Provjerite \'posljednu\' (\'latest\') oznaku';

  @override
  String get intermediateLinkRegex => 'Filter za \'srednju\' vezu za posjetu';

  @override
  String get filterByLinkText => 'Filtriraj linkove prema tekstu linka';

  @override
  String get matchLinksOutsideATags => 'Poklopiti linkove van <a> tag-a';

  @override
  String get intermediateLinkNotFound => 'Intermediate veza nije nađena';

  @override
  String get intermediateLink => 'Intermediate veza';

  @override
  String get exemptFromBackgroundUpdates => 'Izuzmi iz ažuriranja u pozadini (ako su uključeni)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Isključite ažuriranje u pozadini kada niste na Wi-Fi-ju';

  @override
  String get bgUpdatesWhileChargingOnly => 'Isključi pozadinska ažuriranja kada uređaj nije na punjaču';

  @override
  String get autoSelectHighestVersionCode => 'Automatski izaberite najveću (verziju) versionCode APK-a';

  @override
  String get versionExtractionRegEx => 'RegEx ekstrakcija verzije';

  @override
  String get trimVersionString => 'Skrati string verzije pomoću RegEx-a';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Podjesite grupu za upotebu za \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Podjesite grupu za upotebu';

  @override
  String get highlightTouchTargets => 'Istaknite manje vidljive touch mete';

  @override
  String get pickExportDir => 'Izaberite datoteku za izvoz';

  @override
  String get autoExportOnChanges => 'Automatski izvezite pri promjenama';

  @override
  String get includeSettings => 'Uključi postavke';

  @override
  String get filterVersionsByRegEx => 'Filtrirajte verzije po regulatnom izrazu';

  @override
  String get trySelectingSuggestedVersionCode => 'Probajte izabrati preloženu (verziju) versionCode APK-a';

  @override
  String get dontSortReleasesList => 'Zadrži redosled izdanja iz API-a';

  @override
  String get reverseSort => 'Obrni redosled';

  @override
  String get takeFirstLink => 'Uzmi prvi link';

  @override
  String get skipSort => 'Preskoči sortiranje';

  @override
  String get debugMenu => 'Meni za otkrivanje grešaka';

  @override
  String get bgTaskStarted => 'Rad u pozadini pokrenut - provjerite log-ove.';

  @override
  String get runBgCheckNow => 'Pokrenite pozadinsku provjeru ažuriranja sad';

  @override
  String get versionExtractWholePage => 'Primjenite Regex ekstrakciju verzije na cijelu stranicu';

  @override
  String get installing => 'Instaliranje';

  @override
  String get skipUpdateNotifications => 'Ne prikazujte obavještenja ažuriranja';

  @override
  String get updatesAvailableNotifChannel => 'Dostupna ažuriranja';

  @override
  String get appsUpdatedNotifChannel => 'Aplikacije su ažurirane';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Pokušano ažuriranje aplikacija';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Greška pri provjeri ažuriranja';

  @override
  String get appsRemovedNotifChannel => 'Aplikacije su uklonjene';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Preuzimanje $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Dovršite instalaciju aplikacije';

  @override
  String get checkingForUpdatesNotifChannel => 'Tražim moguće nadogradnje';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Isključivo provjerite ažuriranje za instalirane i aplikacije \'samo za praćenje\'';

  @override
  String get supportFixedAPKURL => 'Podržite fiksne APK URL-ove';

  @override
  String selectX(Object p0) {
    return 'Izaberite $p0';
  }

  @override
  String get parallelDownloads => 'Dozvoli paralelna preuzimanja';

  @override
  String get useShizuku => 'Koristi Shizuku ili Sui za instaliranje';

  @override
  String get shizukuBinderNotFound => 'Shizuku nije pokrenut';

  @override
  String get shizukuOld => 'Stara Shizuku verzija (<11) - ažurirajte je';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku pokrenut na Android-u < 8.1 pomoću ADB-a - ažurirajte Android ili koristite Sui';

  @override
  String get shizukuPretendToBeGooglePlay => 'Postavi Google Play kao izvor instalacije (samo ako je Shizuku u upotrebi)';

  @override
  String get useSystemFont => 'Koristite sistemski font';

  @override
  String get useVersionCodeAsOSVersion => 'Koristite kod verzije aplikacije kao verziju koju je otkrio OS';

  @override
  String get requestHeader => 'Zaglavlje zahtjeva';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Koristite najnovije otpremanje materijala kao datum izdavanja';

  @override
  String get defaultPseudoVersioningMethod => 'Zadana metoda pseudo-verzija';

  @override
  String get partialAPKHash => 'Djelomični APK Hash';

  @override
  String get apkLinkHash => 'APK Link Hash';

  @override
  String get directAPKLink => 'Direktna APK veza';

  @override
  String get pseudoVersionInUse => 'Pseudo-verzija je u upotrebi';

  @override
  String get installed => 'Instalirano';

  @override
  String get latest => 'Najnoviji';

  @override
  String get invertRegEx => 'Obrni regularni izraz';

  @override
  String get note => 'Zabelješke';

  @override
  String selfHostedNote(Object p0) {
    return '\"$p0\" padajući meni se može koristiti da dosegnete vlastite/prilagođene instance bilo kojeg izvora.';
  }

  @override
  String get badDownload => 'APK ne može biti raščlanjen (nekomaptibilno ili delimično preuzimanje)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Dijeli nove aplikacije sa AppVerifier-om (ako je dostupno)';

  @override
  String get appVerifierInstructionToast => 'Dijeli sa AppVerifier-om, zatim se vratite kada ste spremni.';

  @override
  String get wiki => 'Pomoć/Wiki';

  @override
  String get allowInsecure => 'Dozvoli nesigurne HTTP zahtjeve';

  @override
  String get stayOneVersionBehind => 'Ostani na verziji koja prethodi posljednjoj';

  @override
  String get useFirstApkOfVersion => 'Automatski izaberi prvi ako postoji više APK-ova';

  @override
  String get refreshBeforeDownload => 'Osvježi detalje aplikacije prije preuzimanja';

  @override
  String get tencentAppStore => 'Tencent prodavnica aplikacija';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo prodavnica aplikacija (Kina)';

  @override
  String get name => 'Ime';

  @override
  String get smartname => 'Ime (Smart)';

  @override
  String get sortMethod => 'Metoda sortiranja';

  @override
  String get welcome => 'Dobrodošli';

  @override
  String get documentationLinksNote => 'Stranica Updatium-a na GitHub-u na linku u nastavku sadrži linkove na videozapise, članke, rasprave i druge resurse koji će vam pomoći da shvatite kako koristiti aplikaciju.';

  @override
  String get batteryOptimizationNote => 'Imajte na umu da pozadinska preuzimanja rade bolje ako se aplikacija izuzme iz optimizacije baterije.';

  @override
  String fileDeletionError(Object p0) {
    return 'Neuspješno brisanje datoteke (probajte je ručno obrisati, pa pokušajte ponovo): \"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium servis u prednjem planu';

  @override
  String get foregroundServiceExplanation => 'Koristi servis u prednjem planu za provjeru ažuriranja (bolji rad, troši više energije)';

  @override
  String get fgServiceNotice => 'Ovo obavještenje je obavezno radi provjera ažuriranja u pozadini (može se prikriti u postavkama sistema)';

  @override
  String get excludeSecrets => 'Izuzmi secrets';

  @override
  String get ghReqPrefix => '\'sky22333/hubproxy\' istanca za GitHub zahtjeve';

  @override
  String get includeZips => 'Uključi i ZIP datoteke';

  @override
  String get zippedApkFilterRegEx => 'Filtriraj APK-ove unutar ZIP datoteka';

  @override
  String get googleVerificationWarningP1 => 'Google has announced that, starting in 2026/2027, all apps on \"certified\" Android devices will require the developer to submit personal identity details directly to Google.\n\nAfter then, Updatium may stop working on certified Android devices.';

  @override
  String get googleVerificationWarningP2 => 'Go to https://keepandroidopen.org/ for more information.';

  @override
  String get googleVerificationWarningP3 => 'Note that in the short term, it may continue to be possible to install \"unverified\" (non-compliant) apps through an \"advanced flow\" process that Google has promised to implement after broad backlash to their announcement, but they have not detailed how this would work so it is unclear whether it will truly preserve user freedoms in any practical way.\n\nIn any case, Google\'s move is a significant step towards the end of free, general-purpose computing for individuals.\n\nNon-certified OSes, like GrapheneOS, should be unaffected by this for as long as they are allowed to continue to exist.';

  @override
  String get multipleSigners => 'Multiple Signers';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Želite li ukloniti aplikacije?',
      one: 'Želite li ukloniti aplikaciju?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Previše zahtjeva (ograničena cijena) - pokušajte ponovo za $count min.',
      one: 'Previše zahtjeva (ograničena broj zahteva) - pokušajte ponovo za $count minutu',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Provjera ažuriranja u pozadini naišla je na $count, zakazuje se ponovni pokušaj za $count min.',
      one: 'Provjera ažuriranja u pozadini naišla je na $count, zakazuje se ponovni pokušaj za $count minutu',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Provjera ažuriranja u pozadini je pronašla $count ažuriranja - korisnik će biti obavješten ako je to potrebno',
      one: 'Provjera ažuriranja u pozadini je pronašla $count ažuriranje - korisnik će biti obavješten ako je to potrebno',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikacije',
      one: '$count aplikacija',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URL-ovi',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'min.',
      one: '$count minuta',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sat/i',
      one: '$count sat',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dana',
      one: '$count dan',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Izbrisano $n log-ova (prije = $before, nakon = $after)',
      one: 'Izbrisan $n log (prije = $before, nakon = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count i još $count aplikacija imaju ažuriranja.',
      one: '$count i još 1 aplikacija ima ažuriranja.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count i još $count aplikacija je ažurirano.',
      one: '$count i još 1 aplikacija je ažurirana.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Failed to update $count and $count more apps.',
      one: 'Failed to update $count and 1 more app.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count i još $count aplikacija su vjerovatno ažurirane.',
      one: '$count i još jedna aplikacija je vjerovatno ažurirana.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APK-a',
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
  String get securityDisclaimerTitle => 'Bezbednosno i Pravno Odricanje Odgovornosti';

  @override
  String get license => 'Licenca';

  @override
  String get licenseText => 'Ova aplikacija se distribuira pod GPL v3 licencom.';

  @override
  String get disclaimer => 'Odgovornost';

  @override
  String get disclaimerText => 'Ova aplikacija ne distribuira, ne hostuje niti verifikuje nijednu od eksternih aplikacija. Korisnik snosi punu odgovornost za bezbednost i zakonitost bilo kog softvera instaliranog putem ovog alata.\n\nhttps://github.com/omeritzics/Updatium je jedino zvanično mjesto za preuzimanje Updatiuma - strogo se preporučuje da se ne preuzima s drugih mjesta jer je preuzimanje iz nezvaničnih izvora nesigurno.';

  @override
  String get privacy => 'Privatnost';

  @override
  String get privacyText => 'Ova aplikacija je fokusirana na privatnost i ne prikuplja lične podatke.';

  @override
  String get acceptAndContinue => 'Prihvatam i Nastavim';

  @override
  String get decline => 'Odbij';
}
