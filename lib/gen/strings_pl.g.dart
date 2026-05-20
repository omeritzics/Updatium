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
class TranslationsPl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPl _root = this; // ignore: unused_field

	@override 
	TranslationsPl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPl(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Nieprawidłowy adres URL aplikacji {}';
	@override String get noReleaseFound => 'Nie można znaleźć odpowiedniego wydania';
	@override String get noVersionFound => 'Nie można określić wersji wydania';
	@override String get urlMatchesNoSource => 'Adres URL nie pasuje do znanego źródła';
	@override String get cantInstallOlderVersion => 'Nie można zainstalować starszej wersji aplikacji';
	@override String get appIdMismatch => 'Pobrane ID pakietu nie pasuje do istniejącego ID aplikacji';
	@override String get functionNotImplemented => 'Ta klasa nie zaimplementowała tej funkcji';
	@override String get placeholder => 'Placeholder';
	@override String get someErrors => 'Wystąpiły pewne błędy';
	@override String get unexpectedError => 'Nieoczekiwany błąd';
	@override String get ok => 'Okej';
	@override String get and => 'i';
	@override String get githubPATLabel => 'Osobisty token dostępu GitHub';
	@override String get includePrereleases => 'Uwzględnij wersje wstępne';
	@override String get fallbackToOlderReleases => 'Powracaj do starszych wersji';
	@override String get filterReleaseTitlesByRegEx => 'Filtruj tytuły wydań wg. wyrażeń regularnych';
	@override String get invalidRegEx => 'Nieprawidłowe wyrażenie regularne';
	@override String get noDescription => 'Brak opisu';
	@override String get cancel => 'Anuluj';
	@override String get kContinue => 'Kontynuuj';
	@override String get requiredInBrackets => '(Wymagane)';
	@override String get dropdownNoOptsError => 'BŁĄD: LISTA ROZWIJANA MUSI MIEĆ CO NAJMNIEJ JEDNĄ OPCJĘ';
	@override String get color => 'Kolor';
	@override String get standard => 'Domyślny';
	@override String get custom => 'Własny';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Użyj kolorów Material You';
	@override String get githubStarredRepos => 'Repozytoria GitHub oznaczone gwiazdką';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nazwa użytkownika';
	@override String get wrongArgNum => 'Nieprawidłowa liczba podanych argumentów';
	@override String get xIsTrackOnly => '{} jest tylko obserwowane';
	@override String get source => 'Źródło';
	@override String get app => 'Aplikacja';
	@override String get appsFromSourceAreTrackOnly => 'Aplikacje z tego źródła są tylko obserwowane.';
	@override String get youPickedTrackOnly => 'Wybrano opcję "Tylko obserwuj".';
	@override String get trackOnlyAppDescription => 'Aplikacja będzie obserwowana pod kątem aktualizacji, ale Updatium nie będzie w stanie jej pobrać ani zainstalować.';
	@override String get cancelled => 'Anulowano';
	@override String get appAlreadyAdded => 'Aplikacja już została dodana';
	@override String get alreadyUpToDateQuestion => 'Aplikacja jest już aktualna?';
	@override String get addApp => 'Dodaj apkę';
	@override String get appSourceURL => 'Adres URL źródła aplikacji';
	@override String get error => 'Błąd';
	@override String get add => 'Dodaj';
	@override String get advanced => 'Zaawansowane';
	@override String get searchSomeSourcesLabel => 'Szukaj (tylko niektóre źródła)';
	@override String get search => 'Szukaj';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Dodatkowe opcje dla {}';
	@override String get supportedSources => 'Obsługiwane źródła';
	@override String get trackOnlyInBrackets => '(tylko obserwowane)';
	@override String get searchableInBrackets => '(wyszukiwalne)';
	@override String get appsString => 'Aplikacje';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Brak aplikacji';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Brak aplikacji dla filtra';
	@override String get byX => 'Autorstwa {}';
	@override String get percentProgress => 'Postęp: {}%';
	@override String get pleaseWait => 'Proszę czekać';
	@override String get updateAvailable => 'Dostępna aktualizacja';
	@override String get notInstalled => 'Nie zainstalowano';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-wersja';
	@override String get selectAll => 'Zaznacz wszystkie';
	@override String get deselectX => 'Odznacz {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} zostanie usunięty z Updatium, ale pozostanie zainstalowany na urządzeniu.';
	@override String get removeSelectedAppsQuestion => 'Usunąć wybrane aplikacje?';
	@override String get removeSelectedApps => 'Usuń wybrane aplikacje';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Zaktualizuj {}';
	@override String get installX => 'Zainstaluj {}';
	@override String get markXTrackOnlyAsUpdated => 'Oznacz {}\n(tylko obserwowana)\njako zaktualizowaną';
	@override String get changeX => 'Zmień {}';
	@override String get installUpdateApps => 'Instaluj/aktualizuj aplikacje';
	@override String get installUpdateSelectedApps => 'Zainstaluj/zaktualizuj wybrane aplikacje';
	@override String get markXSelectedAppsAsUpdated => 'Oznaczyć {} wybranych aplikacji jako zaktualizowane?';
	@override String get no => 'Nie';
	@override String get yes => 'Tak';
	@override String get markSelectedAppsUpdated => 'Oznacz wybrane aplikacje jako zaktualizowane';
	@override String get pinToTop => 'Przypnij';
	@override String get unpinFromTop => 'Odepnij';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Zresetować status instalacji dla wybranych aplikacji?';
	@override String get installStatusOfXWillBeResetExplanation => 'Stan instalacji wybranych aplikacji zostanie zresetowany.\n\nMoże być to pomocne, gdy wersja aplikacji wyświetlana w Updatium jest nieprawidłowa z powodu nieudanych aktualizacji lub innych problemów.';
	@override String get customLinkMessage => 'Te linki działają na urządzeniach z zainstalowanym Updatium';
	@override String get shareAppConfigLinks => 'Udostępnij konfigurację aplikacji w formie linku';
	@override String get resetInstallStatus => 'Zresetuj stan instalacji';
	@override String get more => 'Więcej';
	@override String get removeOutdatedFilter => 'Usuń filtr nieaktualnych aplikacji';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Pokaż tylko nieaktualne aplikacje';
	@override String get filter => 'FIltr';
	@override String get filterApps => 'Filtruj aplikacje';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nazwa aplikacji';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Aktualne aplikacje';
	@override String get nonInstalledApps => 'Niezainstalowane aplikacje';
	@override String get importExport => 'Import/Eksport';
	@override String get settings => 'Ustawienia';
	@override String get exportedTo => 'Wyeksportowano do {}';
	@override String get updatiumExport => 'Eksportuj Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Nieprawidłowe wprowadzenie';
	@override String get importedX => 'Zaimportowano {}';
	@override String get updatiumImport => 'Import Updatium';
	@override String get importFromURLList => 'Importuj z listy adresów URL';
	@override String get searchQuery => 'Wyszukiwane zapytanie';
	@override String get appURLList => 'Lista adresów URL aplikacji';
	@override String get line => 'Linia';
	@override String get searchX => 'Przeszukaj {}';
	@override String get noResults => 'Nie znaleziono wyników';
	@override String get importX => 'Importuj {}';
	@override String get importedAppsIdDisclaimer => 'Zaimportowane aplikacje mogą być wyświetlane jako niezainstalowane.\nAby to naprawić, przeinstaluj je za pomocą Updatium.\nNie powinno to mieć wpływu na dane aplikacji.\n\nDotyczy tylko adresu URL i innych metod importu.';
	@override String get importErrors => 'Błędy importowania';
	@override String get importedXOfYApps => 'Zaimportowano {} z {} aplikacji.';
	@override String get followingURLsHadErrors => 'Następujące adresy URL zawierały błędy:';
	@override String get selectURL => 'Wybierz adres URL';
	@override String get selectURLs => 'Wybierz adresy URL';
	@override String get pick => 'Wybierz';
	@override String get theme => 'Motyw';
	@override String get dark => 'Ciemny';
	@override String get light => 'Jasny';
	@override String get followSystem => 'Zgodny z systemem';
	@override String get followSystemThemeExplanation => 'Podążanie za motywem systemowym jest możliwe tylko przy użyciu aplikacji firm trzecich';
	@override String get useBlackTheme => 'Użyj czarnego motywu';
	@override String get appSortBy => 'Sortuj aplikacje według';
	@override String get authorName => 'Autor/Nazwa';
	@override String get nameAuthor => 'Nazwa/Autor';
	@override String get asAdded => 'Dodania';
	@override String get appSortOrder => 'Kolejność sortowania aplikacji';
	@override String get ascending => 'Rosnąco';
	@override String get descending => 'Malejąco';
	@override String get bgUpdateCheckInterval => 'Częstotliwość sprawdzania aktualizacji w tle';
	@override String get neverManualOnly => 'Nigdy - tylko ręcznie';
	@override String get appearance => 'Wygląd';
	@override String get pinUpdates => 'Przypnij aktualizacje na górze widoku aplikacji';
	@override String get updates => 'Aktualizacje';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Zależnie od źródła';
	@override String get appSource => 'Źródło aplikacji';
	@override String get appSourceHint => 'Otwórz repozytorium źródła aplikacji';
	@override String get noLogs => 'Brak logów';
	@override String get appLogs => 'Logi aplikacji';
	@override String get appLogsHint => 'Wyświetl logi aplikacji';
	@override String get close => 'Zamknij';
	@override String get share => 'Udostępnij';
	@override String get appNotFound => 'Nie znaleziono aplikacji';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-eksport';
	@override String get pickAnAPK => 'Wybierz plik APK';
	@override String get appHasMoreThanOnePackage => '{} ma więcej niż jeden pakiet:';
	@override String get deviceSupportsXArch => 'Urządzenie obsługuje architekturę procesora {}.';
	@override String get deviceSupportsFollowingArchs => 'Urządzenie obsługuje następujące architektury procesora:';
	@override String get warning => 'Uwaga';
	@override String get sourceIsXButPackageFromYPrompt => 'Źródłem aplikacji jest \'{}\', ale pakiet wydania pochodzi z \'{}\'. Kontynuować?';
	@override String get updatesAvailable => 'Dostępne aktualizacje';
	@override String get updatesAvailableNotifDescription => 'Informuje o dostępności aktualizacji dla jednej lub więcej aplikacji obserwowanych przez Updatium';
	@override String get noNewUpdates => 'Brak nowych aktualizacji.';
	@override String get xHasAnUpdate => '{} ma aktualizację.';
	@override String get appsUpdated => 'Zaktualizowano aplikacje';
	@override String get appsNotUpdated => 'Nie udało się zaktualizować aplikacji';
	@override String get appsUpdatedNotifDescription => 'Informuje, gdy co najmniej jedna aplikacja została zaktualizowana w tle';
	@override String get xWasUpdatedToY => '{} zaktualizowano do {}.';
	@override String get xWasNotUpdatedToY => 'Błąd aktualizacji {} do {}.';
	@override String get errorCheckingUpdates => 'Błąd sprawdzania aktualizacji';
	@override String get errorCheckingUpdatesNotifDescription => 'Jest wyświetlane, gdy sprawdzanie aktualizacji w tle nie powiedzie się';
	@override String get appsRemoved => 'Usunięte aplikacje';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Informuje, gdy co najmniej jedna aplikacja została usunięta z powodu błędów podczas wczytywania';
	@override String get xWasRemovedDueToErrorY => 'Usunięto {} z powodu błędu: {}';
	@override String get completeAppInstallation => 'Ukończenie instalacji aplikacji';
	@override String get updatiumMustBeOpenToInstallApps => 'Aby zainstalować aplikacje, Updatium musi być otwarte';
	@override String get completeAppInstallationNotifDescription => 'Informuje o możliwości powrotu do Updatium w celu dokończenia instalacji aplikacji';
	@override String get checkingForUpdates => 'Sprawdzanie aktualizacji';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Tymczasowe powiadomienie pojawiające się podczas sprawdzania aktualizacji';
	@override String get pleaseAllowInstallPerm => 'Pozwól Updatium instalować aplikacje';
	@override String get trackOnly => 'Tylko obserwuj';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Błąd {}';
	@override String get versionCorrectionDisabled => 'Korekta wersji wyłączona (wtyczka wydaje się nie działać)';
	@override String get unknown => 'Nieznane';
	@override String get none => 'Brak';
	@override String get all => 'Wszystkie';
	@override String get never => 'Nigdy';
	@override String get latestVersion => 'Najnowsza wersja';
	@override String get installedVersionX => 'Zainstalowana wersja: {}';
	@override String get lastUpdateCheckX => 'Ostatnio sprawdzono: {}';
	@override String get remove => 'Usuń';
	@override String get quickLinks => 'Szybkie linki';
	@override String get yesMarkUpdated => 'Tak, oznacz jako zaktualizowane';
	@override String get fdroid => 'Oficjalny F-Droid';
	@override String get appIdOrName => 'ID aplikacji lub nazwa';
	@override String get appId => 'ID aplikacji';
	@override String get appWithIdOrNameNotFound => 'Nie znaleziono aplikacji o tym identyfikatorze lub nazwie';
	@override String get reposHaveMultipleApps => 'Repozytoria mogą zawierać wiele aplikacji';
	@override String get fdroidThirdPartyRepo => 'Zewnętrzne repo F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instaluj';
	@override String get markInstalled => 'Oznacz jako zainstalowane';
	@override String get update => 'Zaktualizuj';
	@override String get updated => 'Zaktualizowano';
	@override String get markUpdated => 'Oznacz jako zaktualizowane';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Dodatkowe opcje';
	@override String get disableVersionDetection => 'Wyłącz wykrywanie wersji';
	@override String get noVersionDetectionExplanation => 'Opcja ta powinna być używana tylko w przypadku aplikacji, w których wykrywanie wersji nie działa poprawnie.';
	@override String get downloadingX => 'Pobieranie {}';
	@override String get downloadX => 'Pobierz {}';
	@override String get downloadedX => 'Pobrano {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Wydany pakiet';
	@override String get downloadNotifDescription => 'Informuje o postępach w pobieraniu aplikacji';
	@override String get noAPKFound => 'Nie znaleziono pakietu APK';
	@override String get noVersionDetection => 'Bez wykrywania wersji';
	@override String get categorize => 'Kategoryzuj';
	@override String get categories => 'Kategorie';
	@override String get category => 'Kategoria';
	@override String get noCategory => 'Bez kategorii';
	@override String get noCategories => 'Brak kategorii';
	@override String get categoryDeleteQuestion => 'Usunąć kategorie?';
	@override String get categoryDeleteWarning => 'Wszystkie aplikacje w usuniętych kategoriach zostaną ustawione jako nieskategoryzowane.';
	@override String get addCategory => 'Dodaj kategorię';
	@override String get label => 'Etykieta';
	@override String get language => 'Język';
	@override String get copiedToClipboard => 'Skopiowano do schowka';
	@override String get storagePermissionDenied => 'Odmówiono zezwolenia dostępu do pamięci';
	@override String get selectedCategorizeWarning => 'Spowoduje to zastąpienie wszystkich istniejących ustawień kategorii dla wybranych aplikacji.';
	@override String get filterAPKsByRegEx => 'Filtruj pliki APK według wyrażeń regularnych';
	@override String get removeFromUpdatium => 'Usuń z Updatium';
	@override String get uninstallFromDevice => 'Odinstaluj z urządzenia';
	@override String get onlyWorksWithNonVersionDetectApps => 'Działa tylko w przypadku aplikacji z wyłączonym wykrywaniem wersji.';
	@override String get releaseDateAsVersion => 'Użyj daty wydania jako wersji';
	@override String get releaseTitleAsVersion => 'Używaj nazwy wydania jako ciągu wersji';
	@override String get releaseDateAsVersionExplanation => 'Opcja ta powinna być używana tylko w przypadku aplikacji, w których wykrywanie wersji nie działa poprawnie, ale dostępna jest data wydania.';
	@override String get changes => 'Zmiany';
	@override String get releaseDate => 'Data wydania';
	@override String get importFromURLsInFile => 'Importuj z adresów URL w pliku (typu OPML)';
	@override String get versionDetectionExplanation => 'Uzgodnij ciąg wersji z wersją wykrytą przez system operacyjny';
	@override String get versionDetection => 'Wykrywanie wersji';
	@override String get standardVersionDetection => 'Standardowe wykrywanie wersji';
	@override String get groupByCategory => 'Grupuj według kategorii';
	@override String get listView => 'Widok listy';
	@override String get gridView => 'Widok siatki';
	@override String get autoApkFilterByArch => 'Spróbuj filtrować pliki APK według architektury procesora, jeśli to możliwe';
	@override String get autoLinkFilterByArch => 'Spróbuj filtrować linki według architektury procesora, jeśli to możliwe.';
	@override String get overrideSource => 'Nadpisz źródło';
	@override String get dontShowAgain => 'Nie pokazuj tego ponownie';
	@override String get dontShowTrackOnlyWarnings => 'Nie pokazuj ostrzeżeń "Tylko obserwowana"';
	@override String get dontShowAPKOriginWarnings => 'Nie pokazuj ostrzeżeń o pochodzeniu APK';
	@override String get moveNonInstalledAppsToBottom => 'Przenieś niezainstalowane aplikacje na dół widoku aplikacji';
	@override String get gitlabPATLabel => 'Osobisty token dostępu GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Więcej informacji';
	@override String get requiresCredentialsInSettings => '{}: Wymaga to dodatkowych poświadczeń (w Ustawieniach)';
	@override String get checkOnStart => 'Sprawdź aktualizacje przy uruchomieniu';
	@override String get safeMode => 'Tryb bezpieczny';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Dodawanie aplikacji jest wyłączone w trybie bezpiecznym';
	@override String get tryInferAppIdFromCode => 'Spróbuj wywnioskować identyfikator aplikacji z kodu źródłowego';
	@override String get removeOnExternalUninstall => 'Automatyczne usuń odinstalowane zewnętrznie aplikacje';
	@override String get pickHighestVersionCode => 'Automatycznie wybierz najwyższy kod wersji APK';
	@override String get checkUpdateOnDetailPage => 'Sprawdzaj aktualizacje podczas otwierania strony szczegółów aplikacji';
	@override String get disablePageTransitions => 'Wyłącz animacje przejścia między stronami';
	@override String get reversePageTransitions => 'Odwróć animacje przejścia pomiędzy stronami';
	@override String get minStarCount => 'Minimalna ilość gwiazdek';
	@override String get addInfoBelow => 'Dodaj tę informację poniżej.';
	@override String get addInfoInSettings => 'Dodaj tę informację w Ustawieniach.';
	@override String get githubSourceNote => 'Limit żądań GitHub można ominąć za pomocą klucza API.';
	@override String get sortByLastLinkSegment => 'Sortuj tylko według ostatniego segmentu łącza';
	@override String get filterReleaseNotesByRegEx => 'Filtruj informacje o wersji według wyrażenia regularnego';
	@override String get customLinkFilterRegex => 'Filtruj linki APK według wyrażenia regularnego (domyślnie ".apk$")';
	@override String get appsPossiblyUpdated => 'Aplikacje mogły zostać zaktualizowane';
	@override String get appsPossiblyUpdatedNotifDescription => 'Powiadamia, gdy co najmniej jedna aktualizacja aplikacji została potencjalnie zastosowana w tle';
	@override String get xWasPossiblyUpdatedToY => '{} być może zaktualizowano do {}.';
	@override String get enableBackgroundUpdates => 'Włącz aktualizacje w tle';
	@override String get backgroundUpdateReqsExplanation => 'Aktualizacje w tle mogą nie być możliwe dla wszystkich aplikacji.';
	@override String get backgroundUpdateLimitsExplanation => 'Powodzenie instalacji w tle można określić dopiero po otwarciu Updatium.';
	@override String get verifyLatestTag => 'Zweryfikuj najnowszy tag';
	@override String get intermediateLinkRegex => 'Filtr linków "pośrednich" do odwiedzenia w pierwszej kolejności';
	@override String get filterByLinkText => 'Filtruj linki według tekstu linku';
	@override String get matchLinksOutsideATags => 'Dopasowywanie linków poza znacznikami <a>';
	@override String get intermediateLinkNotFound => 'Nie znaleziono linku pośredniego';
	@override String get intermediateLink => 'Link pośredni';
	@override String get exemptFromBackgroundUpdates => 'Wyklucz z uaktualnień w tle (jeśli są włączone)';
	@override String get bgUpdatesOnWiFiOnly => 'Wyłącz aktualizacje w tle, gdy nie ma połączenia z Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Wyłącz aktualizacje w tle, gdy urządzenie nie jest ładowane';
	@override String get autoSelectHighestVersionCode => 'Automatycznie wybierz najwyższy kod wersji APK';
	@override String get versionExtractionRegEx => 'Wyrażenie regularne wyodrębniające wersję';
	@override String get trimVersionString => 'Przytnij ciąg wersji za pomocą RegEx';
	@override String get matchGroupToUseForX => 'Dopasuj grupę do użycia dla "{}"';
	@override String get matchGroupToUse => 'Dopasuj grupę do użycia dla wyrażenia regularnego wyodrębniania wersji';
	@override String get highlightTouchTargets => 'Wyróżnij mniej oczywiste elementy dotykowe';
	@override String get pickExportDir => 'Wybierz katalog eksportu';
	@override String get autoExportOnChanges => 'Automatyczny eksport po wprowadzeniu zmian';
	@override String get includeSettings => 'Dołącz ustawienia';
	@override String get filterVersionsByRegEx => 'Filtruj wersje według wyrażenia regularnego';
	@override String get trySelectingSuggestedVersionCode => 'Spróbuj wybierać sugerowany kod wersji APK';
	@override String get dontSortReleasesList => 'Utrzymaj kolejność wydań z interfejsu API';
	@override String get reverseSort => 'Odwrotne sortowanie';
	@override String get takeFirstLink => 'Wykorzystaj pierwszy link';
	@override String get skipSort => 'Pomiń sortowanie';
	@override String get debugMenu => 'Menu debugowania';
	@override String get bgTaskStarted => 'Uruchomiono zadanie w tle - sprawdź logi.';
	@override String get runBgCheckNow => 'Wymuś sprawdzenie aktualizacji w tle';
	@override String get versionExtractWholePage => 'Zastosuj wyrażenie regularne wyodrębniania wersji dla całej strony';
	@override String get installing => 'Instalacja';
	@override String get skipUpdateNotifications => 'Pomiń powiadomienia o aktualizacjach';
	@override String get updatesAvailableNotifChannel => 'Dostępne aktualizacje aplikacji';
	@override String get appsUpdatedNotifChannel => 'Zaktualizowane aplikacje';
	@override String get appsPossiblyUpdatedNotifChannel => 'Informuj o próbach aktualizacji';
	@override String get errorCheckingUpdatesNotifChannel => 'Błędy sprawdzania aktualizacji';
	@override String get appsRemovedNotifChannel => 'Usunięte aplikacje';
	@override String get downloadingXNotifChannel => 'Pobieranie {}';
	@override String get completeAppInstallationNotifChannel => 'Ukończenie instalacji aplikacji';
	@override String get checkingForUpdatesNotifChannel => 'Sprawdzanie dostępności aktualizacji';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Sprawdzaj tylko zainstalowane i obserwowane aplikacje pod kątem aktualizacji';
	@override String get supportFixedAPKURL => 'Obsługuj stałe adresy URL APK';
	@override String get selectX => 'Wybierz {}';
	@override String get parallelDownloads => 'Zezwalaj na równoległe pobierania';
	@override String get useShizuku => 'Użyj Shizuku lub Sui, aby zainstalować';
	@override String get shizukuBinderNotFound => 'Usługa Shizuku nie działa';
	@override String get shizukuOld => 'Stara wersja Shizuku (<11) - zaktualizuj ją';
	@override String get shizukuOldAndroidWithADB => 'Shizuku przez ADB działa na Androidzie 8.1+. Zaktualizuj Androida lub użyj zamiast tego Sui';
	@override String get shizukuPretendToBeGooglePlay => 'Ustaw Google Play jako źródło instalacji (jeśli używana jest aplikacja Shizuku)';
	@override String get useSystemFont => 'Czcionka systemowa';
	@override String get useVersionCodeAsOSVersion => 'Użyj versionCode aplikacji jako wersji wykrytej przez system operacyjny';
	@override String get requestHeader => 'Nagłówek żądania';
	@override String get useLatestAssetDateAsReleaseDate => 'Użyj najnowszego przesłanego zasobu jako daty wydania';
	@override String get defaultPseudoVersioningMethod => 'Domyślna metoda pseudo-wersji';
	@override String get partialAPKHash => 'Częściowy Hash pliku apk';
	@override String get APKLinkHash => 'Link Hash pliku apk';
	@override String get directAPKLink => 'Bezpośredni link do pliku apk';
	@override String get pseudoVersionInUse => 'Pseudo-wersja jest w użyciu';
	@override String get installedVersion => 'Zainstalowana wersja';
	@override String get installed => 'Zainstalowano';
	@override String get notInstalledApps => 'Niezainstalowane';
	@override String get latest => 'Najnowsza';
	@override String get invertRegEx => 'Odwróć wyrażenie regularne';
	@override String get note => 'Uwaga';
	@override String get selfHostedNote => 'Wybierz "{}", aby uzyskać dostęp do samodzielnie hostowanych lub niestandardowych instancji dowolnego źródła.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'Nie można przeanalizować pliku apk (jest niekompatybilny lub częściowo pobrany)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Udostępnij nowe aplikacje za pomocą weryfikatora aplikacji (jeśli jest dostępny)';
	@override String get appVerifierInstructionToast => 'Udostępnij do weryfikatora aplikacji, a następnie wróć tutaj.';
	@override String get wiki => 'Pomoc/Wiki';
	@override String get wikiHint => 'Otwórz dokumentację wiki Updatium';
	@override String get allowInsecure => 'Zezwalaj na niezabezpieczone żądania HTTP';
	@override String get stayOneVersionBehind => 'Pozostań jedną wersję w tyle za najnowszą';
	@override String get useFirstApkOfVersion => 'Automatyczny wybór pierwszego z wielu plików APK';
	@override String get refreshBeforeDownload => 'Odśwież szczegóły aplikacji przed pobraniem';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nazwa';
	@override String get smartname => 'Nazwa (inteligentna)';
	@override String get smartPlusDate => 'Inteligentna + Data';
	@override String get sortMethod => 'Metoda sortowania';
	@override String get welcome => 'Witamy';
	@override String get batteryOptimizationNote => 'Należy pamiętać, że pobieranie w tle może działać bardziej niezawodnie po wyłączeniu optymalizacji baterii systemu operacyjnego dla Updatium.';
	@override String get fileDeletionError => 'Nie udało się usunąć pliku (spróbuj usunąć go ręcznie, a następnie spróbuj ponownie): "{}"';
	@override String get foregroundService => 'Usługa nowej generacji Updatium';
	@override String get foregroundServiceExplanation => 'Używanie usługi pierwszoplanowej do sprawdzania aktualizacji (bardziej niezawodne, zużywa więcej energii)';
	@override String get fgServiceNotice => 'To powiadomienie jest wymagane do sprawdzania aktualizacji w tle (można je ukryć w ustawieniach systemu operacyjnego).';
	@override String get excludeSecrets => 'Wyklucz sekrety';
	@override String get GHReqPrefix => 'Instancja "omeritzics/Updatium" dla żądań GitHub';
	@override String get includeZips => 'Dołączanie plików ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrowanie plików APK wewnątrz ZIP';
	@override String get multipleSigners => 'Wielu sygnatariuszy';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Usunąć aplikację?',
		few: 'Usunąć aplikacje?',
		many: 'Usunąć aplikacje?',
		other: 'Usunąć aplikacje?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minutę',
		few: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minuty',
		many: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minut',
		other: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minuty',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minutę',
		few: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minuty',
		many: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minut',
		other: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minuty',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'W tle znaleziono {count} aktualizację - w razie potrzeby użytkownik zostanie o tym powiadomiony',
		few: 'W tle znaleziono {count} aktualizacje - w razie potrzeby użytkownik zostanie o tym powiadomiony',
		many: 'W tle znaleziono {count} aktualizacji - w razie potrzeby użytkownik zostanie o tym powiadomiony',
		other: 'W tle znaleziono {count} aktualizacje - w razie potrzeby użytkownik zostanie o tym powiadomiony',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{count} apkę',
		few: '{count} apki',
		many: '{count} apek',
		other: '{count} apki',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{count} adres URL',
		few: '{count} adresy URL',
		many: '{count} adresów URL',
		other: '{count} adresy URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{count} minuta',
		few: '{count} minuty',
		many: '{count} minut',
		other: '{count} minuty',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{count} godzina',
		few: '{count} godziny',
		many: '{count} godzin',
		other: '{count} godziny',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{count} dzień',
		few: '{count} dni',
		many: '{count} dni',
		other: '{count} dni',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Wyczyszczono {n} log (przed = {before}, po = {after})',
		few: 'Wyczyszczono {n} logi (przed = {before}, po = {after})',
		many: 'Wyczyszczono {n} logów (przed = {before}, po = {after})',
		other: 'Wyczyszczono {n} logi (przed = {before}, po = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{app} i 1 inna apka mają aktualizacje.',
		few: '{app} i {count} inne apki mają aktualizacje.',
		many: '{app} i {count} innych apek ma aktualizacje.',
		other: '{app} i {count} inne apki mają aktualizacje.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Zaktualizowano {app} i 1 inną apkę.',
		few: '{app} i {count} inne apki zostały zaktualizowane.',
		many: '{app} i {count} innych apek zostało zaktualizowanych.',
		other: '{app} i {count} inne apki zostały zaktualizowane.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Błąd aktualizacji {app} i 1 innej apki.',
		few: 'Błąd aktualizacji {app} i {count} innych apek.',
		many: 'Błąd aktualizacji {app} i {count} innych apek.',
		other: 'Błąd aktualizacji {app} i {count} innych apek.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{app} i 1 inna apka mogły zostać zaktualizowane.',
		few: '{app} i {count} inne apki mogły zostać zaktualizowane.',
		many: '{app} i {count} innych apek mogło zostać zaktualizowanych.',
		other: '{app} i {count} inne apki mogły zostać zaktualizowane.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: '{count} apk',
		few: '{count} apki',
		many: '{count} apek',
		other: '{count} apki',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n,
		one: 'Certyfikat Hash',
		other: 'Hashes certyfikatu',
	);
	@override String get securityDisclaimerTitle => 'Zastrzeżenia Bezpieczeństwa i Prawne';
	@override String get license => 'Licencja';
	@override String get licenseText => 'Ta aplikacja jest dystrybuowana na warunkach Licencji GPL v3.';
	@override String get disclaimer => 'Zastrzeżenia';
	@override String get disclaimerText => 'Ta aplikacja nie dystrybuje, nie hostuje ani nie weryfikuje żadnych zewnętrznych aplikacji. Użytkownik ponosi pełną odpowiedzialność za bezpieczeństwo i legalność oprogramowania instalowanego za pomocą tego narzędzia.\n\nhttps://github.com/omeritzics/Updatium jest jedynym oficjalnym miejscem do pobrania Updatium - zdecydowanie odradza się pobieranie go z innych miejsc, ponieważ pobieranie z nieoficjalnych źródeł jest niebezpieczne.';
	@override String get privacy => 'Prywatność';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Akceptuj i kontynuuj';
	@override String get decline => 'Odrzuć';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Podoba Ci się Updatium?';
	@override String get githubStarPromptContent => 'Updatium to dobrowolny projekt open-source rozwijany przez społeczność w moim wolnym czasie. Jeśli chcesz wesprzeć projekt, rozważ danie mu gwiazdy na GitHubie, aby pomóc nam dotrzeć do większej liczby użytkowników i współpracowników. Nie będziesz już o tym przypominany. Z góry dziękuję! :)';
	@override String get githubStarPromptStar => 'Daj gwiazdę';
	@override String get githubStarPromptDontShowAgain => 'Nie pokazuj ponownie';
	@override String get sourceCode => 'Kod źródłowy';
	@override String get developedBy => 'Stworzone przez';
	@override String get appDescription => 'Dostosowywalny katalog aplikacji Android, który pozwala aktualizować aplikacje bezpośrednio z ich źródeł APK.';
	@override String get safeModeEnabled => 'Tryb bezpieczeństwa jest włączony';
	@override String get safeModeDisabled => 'Tryb bezpieczeństwa jest wyłączony';
	@override String get safeModeDisable => 'Wyłącz tryb bezpieczeństwa';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Administracja trybu bezpieczeństwa';
	@override String get safeModeSetupDescription => 'Ustaw hasło, aby włączyć tryb bezpieczeństwa. Po włączeniu trybu bezpieczeństwa nie można dodawać nowych aplikacji i można go wyłączyć tylko za pomocą hasła.';
	@override String get safeModeToggleDescription => 'Wprowadź hasło, aby włączyć lub wyłączyć tryb bezpieczeństwa.';
	@override String get safeModeSetPassword => 'Ustaw hasło';
	@override String get safeModeConfirmPassword => 'Potwierdź hasło';
	@override String get safeModeEnterPassword => 'Wprowadź hasło';
	@override String get safeModePasswordHint => 'Minimum 8 znaków';
	@override String get safeModePasswordTooShort => 'Hasło musi mieć co najmniej 8 znaków';
	@override String get safeModePasswordMismatch => 'Hasła nie są identyczne';
	@override String get safeModePasswordIncorrect => 'Niepoprawne hasło';
	@override String get safeModePasswordError => 'Błąd ustawiania hasła. Proszę spróbować ponownie.';
	@override String get safeModeEnable => 'Włącz tryb bezpieczeństwa';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} dotknięć pozostało do wyłączenia trybu bezpieczeństwa';
	@override String get safeModeEnabledHint => 'Tryb bezpieczeństwa włączony. Dotknij numeru wersji w Ustawieniach wiele razy, aby wyłączyć.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Rozumiem';
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

/// The flat map containing all translations for locale <pl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Nieprawidłowy adres URL aplikacji {}',
			'noReleaseFound' => 'Nie można znaleźć odpowiedniego wydania',
			'noVersionFound' => 'Nie można określić wersji wydania',
			'urlMatchesNoSource' => 'Adres URL nie pasuje do znanego źródła',
			'cantInstallOlderVersion' => 'Nie można zainstalować starszej wersji aplikacji',
			'appIdMismatch' => 'Pobrane ID pakietu nie pasuje do istniejącego ID aplikacji',
			'functionNotImplemented' => 'Ta klasa nie zaimplementowała tej funkcji',
			'placeholder' => 'Placeholder',
			'someErrors' => 'Wystąpiły pewne błędy',
			'unexpectedError' => 'Nieoczekiwany błąd',
			'ok' => 'Okej',
			'and' => 'i',
			'githubPATLabel' => 'Osobisty token dostępu GitHub',
			'includePrereleases' => 'Uwzględnij wersje wstępne',
			'fallbackToOlderReleases' => 'Powracaj do starszych wersji',
			'filterReleaseTitlesByRegEx' => 'Filtruj tytuły wydań wg. wyrażeń regularnych',
			'invalidRegEx' => 'Nieprawidłowe wyrażenie regularne',
			'noDescription' => 'Brak opisu',
			'cancel' => 'Anuluj',
			'kContinue' => 'Kontynuuj',
			'requiredInBrackets' => '(Wymagane)',
			'dropdownNoOptsError' => 'BŁĄD: LISTA ROZWIJANA MUSI MIEĆ CO NAJMNIEJ JEDNĄ OPCJĘ',
			'color' => 'Kolor',
			'standard' => 'Domyślny',
			'custom' => 'Własny',
			'primary' => 'Primary',
			'useMaterialYou' => 'Użyj kolorów Material You',
			'githubStarredRepos' => 'Repozytoria GitHub oznaczone gwiazdką',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nazwa użytkownika',
			'wrongArgNum' => 'Nieprawidłowa liczba podanych argumentów',
			'xIsTrackOnly' => '{} jest tylko obserwowane',
			'source' => 'Źródło',
			'app' => 'Aplikacja',
			'appsFromSourceAreTrackOnly' => 'Aplikacje z tego źródła są tylko obserwowane.',
			'youPickedTrackOnly' => 'Wybrano opcję "Tylko obserwuj".',
			'trackOnlyAppDescription' => 'Aplikacja będzie obserwowana pod kątem aktualizacji, ale Updatium nie będzie w stanie jej pobrać ani zainstalować.',
			'cancelled' => 'Anulowano',
			'appAlreadyAdded' => 'Aplikacja już została dodana',
			'alreadyUpToDateQuestion' => 'Aplikacja jest już aktualna?',
			'addApp' => 'Dodaj apkę',
			'appSourceURL' => 'Adres URL źródła aplikacji',
			'error' => 'Błąd',
			'add' => 'Dodaj',
			'advanced' => 'Zaawansowane',
			'searchSomeSourcesLabel' => 'Szukaj (tylko niektóre źródła)',
			'search' => 'Szukaj',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Dodatkowe opcje dla {}',
			'supportedSources' => 'Obsługiwane źródła',
			'trackOnlyInBrackets' => '(tylko obserwowane)',
			'searchableInBrackets' => '(wyszukiwalne)',
			'appsString' => 'Aplikacje',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Brak aplikacji',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Brak aplikacji dla filtra',
			'byX' => 'Autorstwa {}',
			'percentProgress' => 'Postęp: {}%',
			'pleaseWait' => 'Proszę czekać',
			'updateAvailable' => 'Dostępna aktualizacja',
			'notInstalled' => 'Nie zainstalowano',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-wersja',
			'selectAll' => 'Zaznacz wszystkie',
			'deselectX' => 'Odznacz {}',
			'xWillBeRemovedButRemainInstalled' => '{} zostanie usunięty z Updatium, ale pozostanie zainstalowany na urządzeniu.',
			'removeSelectedAppsQuestion' => 'Usunąć wybrane aplikacje?',
			'removeSelectedApps' => 'Usuń wybrane aplikacje',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Zaktualizuj {}',
			'installX' => 'Zainstaluj {}',
			'markXTrackOnlyAsUpdated' => 'Oznacz {}\n(tylko obserwowana)\njako zaktualizowaną',
			'changeX' => 'Zmień {}',
			'installUpdateApps' => 'Instaluj/aktualizuj aplikacje',
			'installUpdateSelectedApps' => 'Zainstaluj/zaktualizuj wybrane aplikacje',
			'markXSelectedAppsAsUpdated' => 'Oznaczyć {} wybranych aplikacji jako zaktualizowane?',
			'no' => 'Nie',
			'yes' => 'Tak',
			'markSelectedAppsUpdated' => 'Oznacz wybrane aplikacje jako zaktualizowane',
			'pinToTop' => 'Przypnij',
			'unpinFromTop' => 'Odepnij',
			'resetInstallStatusForSelectedAppsQuestion' => 'Zresetować status instalacji dla wybranych aplikacji?',
			'installStatusOfXWillBeResetExplanation' => 'Stan instalacji wybranych aplikacji zostanie zresetowany.\n\nMoże być to pomocne, gdy wersja aplikacji wyświetlana w Updatium jest nieprawidłowa z powodu nieudanych aktualizacji lub innych problemów.',
			'customLinkMessage' => 'Te linki działają na urządzeniach z zainstalowanym Updatium',
			'shareAppConfigLinks' => 'Udostępnij konfigurację aplikacji w formie linku',
			'resetInstallStatus' => 'Zresetuj stan instalacji',
			'more' => 'Więcej',
			'removeOutdatedFilter' => 'Usuń filtr nieaktualnych aplikacji',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Pokaż tylko nieaktualne aplikacje',
			'filter' => 'FIltr',
			'filterApps' => 'Filtruj aplikacje',
			'filterDays' => 'Filter days',
			'appName' => 'Nazwa aplikacji',
			'author' => 'Autor',
			'upToDateApps' => 'Aktualne aplikacje',
			'nonInstalledApps' => 'Niezainstalowane aplikacje',
			'importExport' => 'Import/Eksport',
			'settings' => 'Ustawienia',
			'exportedTo' => 'Wyeksportowano do {}',
			'updatiumExport' => 'Eksportuj Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Nieprawidłowe wprowadzenie',
			'importedX' => 'Zaimportowano {}',
			'updatiumImport' => 'Import Updatium',
			'importFromURLList' => 'Importuj z listy adresów URL',
			'searchQuery' => 'Wyszukiwane zapytanie',
			'appURLList' => 'Lista adresów URL aplikacji',
			'line' => 'Linia',
			'searchX' => 'Przeszukaj {}',
			'noResults' => 'Nie znaleziono wyników',
			'importX' => 'Importuj {}',
			'importedAppsIdDisclaimer' => 'Zaimportowane aplikacje mogą być wyświetlane jako niezainstalowane.\nAby to naprawić, przeinstaluj je za pomocą Updatium.\nNie powinno to mieć wpływu na dane aplikacji.\n\nDotyczy tylko adresu URL i innych metod importu.',
			'importErrors' => 'Błędy importowania',
			'importedXOfYApps' => 'Zaimportowano {} z {} aplikacji.',
			'followingURLsHadErrors' => 'Następujące adresy URL zawierały błędy:',
			'selectURL' => 'Wybierz adres URL',
			'selectURLs' => 'Wybierz adresy URL',
			'pick' => 'Wybierz',
			'theme' => 'Motyw',
			'dark' => 'Ciemny',
			'light' => 'Jasny',
			'followSystem' => 'Zgodny z systemem',
			'followSystemThemeExplanation' => 'Podążanie za motywem systemowym jest możliwe tylko przy użyciu aplikacji firm trzecich',
			'useBlackTheme' => 'Użyj czarnego motywu',
			'appSortBy' => 'Sortuj aplikacje według',
			'authorName' => 'Autor/Nazwa',
			'nameAuthor' => 'Nazwa/Autor',
			'asAdded' => 'Dodania',
			'appSortOrder' => 'Kolejność sortowania aplikacji',
			'ascending' => 'Rosnąco',
			'descending' => 'Malejąco',
			'bgUpdateCheckInterval' => 'Częstotliwość sprawdzania aktualizacji w tle',
			'neverManualOnly' => 'Nigdy - tylko ręcznie',
			'appearance' => 'Wygląd',
			'pinUpdates' => 'Przypnij aktualizacje na górze widoku aplikacji',
			'updates' => 'Aktualizacje',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Zależnie od źródła',
			'appSource' => 'Źródło aplikacji',
			'appSourceHint' => 'Otwórz repozytorium źródła aplikacji',
			'noLogs' => 'Brak logów',
			'appLogs' => 'Logi aplikacji',
			'appLogsHint' => 'Wyświetl logi aplikacji',
			'close' => 'Zamknij',
			'share' => 'Udostępnij',
			'appNotFound' => 'Nie znaleziono aplikacji',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-eksport',
			'pickAnAPK' => 'Wybierz plik APK',
			'appHasMoreThanOnePackage' => '{} ma więcej niż jeden pakiet:',
			'deviceSupportsXArch' => 'Urządzenie obsługuje architekturę procesora {}.',
			'deviceSupportsFollowingArchs' => 'Urządzenie obsługuje następujące architektury procesora:',
			'warning' => 'Uwaga',
			'sourceIsXButPackageFromYPrompt' => 'Źródłem aplikacji jest \'{}\', ale pakiet wydania pochodzi z \'{}\'. Kontynuować?',
			'updatesAvailable' => 'Dostępne aktualizacje',
			'updatesAvailableNotifDescription' => 'Informuje o dostępności aktualizacji dla jednej lub więcej aplikacji obserwowanych przez Updatium',
			'noNewUpdates' => 'Brak nowych aktualizacji.',
			'xHasAnUpdate' => '{} ma aktualizację.',
			'appsUpdated' => 'Zaktualizowano aplikacje',
			'appsNotUpdated' => 'Nie udało się zaktualizować aplikacji',
			'appsUpdatedNotifDescription' => 'Informuje, gdy co najmniej jedna aplikacja została zaktualizowana w tle',
			'xWasUpdatedToY' => '{} zaktualizowano do {}.',
			'xWasNotUpdatedToY' => 'Błąd aktualizacji {} do {}.',
			'errorCheckingUpdates' => 'Błąd sprawdzania aktualizacji',
			'errorCheckingUpdatesNotifDescription' => 'Jest wyświetlane, gdy sprawdzanie aktualizacji w tle nie powiedzie się',
			'appsRemoved' => 'Usunięte aplikacje',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Informuje, gdy co najmniej jedna aplikacja została usunięta z powodu błędów podczas wczytywania',
			'xWasRemovedDueToErrorY' => 'Usunięto {} z powodu błędu: {}',
			'completeAppInstallation' => 'Ukończenie instalacji aplikacji',
			'updatiumMustBeOpenToInstallApps' => 'Aby zainstalować aplikacje, Updatium musi być otwarte',
			'completeAppInstallationNotifDescription' => 'Informuje o możliwości powrotu do Updatium w celu dokończenia instalacji aplikacji',
			'checkingForUpdates' => 'Sprawdzanie aktualizacji',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Tymczasowe powiadomienie pojawiające się podczas sprawdzania aktualizacji',
			'pleaseAllowInstallPerm' => 'Pozwól Updatium instalować aplikacje',
			'trackOnly' => 'Tylko obserwuj',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Błąd {}',
			'versionCorrectionDisabled' => 'Korekta wersji wyłączona (wtyczka wydaje się nie działać)',
			'unknown' => 'Nieznane',
			'none' => 'Brak',
			'all' => 'Wszystkie',
			'never' => 'Nigdy',
			'latestVersion' => 'Najnowsza wersja',
			'installedVersionX' => 'Zainstalowana wersja: {}',
			'lastUpdateCheckX' => 'Ostatnio sprawdzono: {}',
			'remove' => 'Usuń',
			'quickLinks' => 'Szybkie linki',
			'yesMarkUpdated' => 'Tak, oznacz jako zaktualizowane',
			'fdroid' => 'Oficjalny F-Droid',
			'appIdOrName' => 'ID aplikacji lub nazwa',
			'appId' => 'ID aplikacji',
			'appWithIdOrNameNotFound' => 'Nie znaleziono aplikacji o tym identyfikatorze lub nazwie',
			'reposHaveMultipleApps' => 'Repozytoria mogą zawierać wiele aplikacji',
			'fdroidThirdPartyRepo' => 'Zewnętrzne repo F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instaluj',
			'markInstalled' => 'Oznacz jako zainstalowane',
			'update' => 'Zaktualizuj',
			'updated' => 'Zaktualizowano',
			'markUpdated' => 'Oznacz jako zaktualizowane',
			'download' => 'Download',
			'additionalOptions' => 'Dodatkowe opcje',
			'disableVersionDetection' => 'Wyłącz wykrywanie wersji',
			'noVersionDetectionExplanation' => 'Opcja ta powinna być używana tylko w przypadku aplikacji, w których wykrywanie wersji nie działa poprawnie.',
			'downloadingX' => 'Pobieranie {}',
			'downloadX' => 'Pobierz {}',
			'downloadedX' => 'Pobrano {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Wydany pakiet',
			'downloadNotifDescription' => 'Informuje o postępach w pobieraniu aplikacji',
			'noAPKFound' => 'Nie znaleziono pakietu APK',
			'noVersionDetection' => 'Bez wykrywania wersji',
			'categorize' => 'Kategoryzuj',
			'categories' => 'Kategorie',
			'category' => 'Kategoria',
			'noCategory' => 'Bez kategorii',
			'noCategories' => 'Brak kategorii',
			'categoryDeleteQuestion' => 'Usunąć kategorie?',
			'categoryDeleteWarning' => 'Wszystkie aplikacje w usuniętych kategoriach zostaną ustawione jako nieskategoryzowane.',
			'addCategory' => 'Dodaj kategorię',
			'label' => 'Etykieta',
			'language' => 'Język',
			'copiedToClipboard' => 'Skopiowano do schowka',
			'storagePermissionDenied' => 'Odmówiono zezwolenia dostępu do pamięci',
			'selectedCategorizeWarning' => 'Spowoduje to zastąpienie wszystkich istniejących ustawień kategorii dla wybranych aplikacji.',
			'filterAPKsByRegEx' => 'Filtruj pliki APK według wyrażeń regularnych',
			'removeFromUpdatium' => 'Usuń z Updatium',
			'uninstallFromDevice' => 'Odinstaluj z urządzenia',
			'onlyWorksWithNonVersionDetectApps' => 'Działa tylko w przypadku aplikacji z wyłączonym wykrywaniem wersji.',
			'releaseDateAsVersion' => 'Użyj daty wydania jako wersji',
			'releaseTitleAsVersion' => 'Używaj nazwy wydania jako ciągu wersji',
			'releaseDateAsVersionExplanation' => 'Opcja ta powinna być używana tylko w przypadku aplikacji, w których wykrywanie wersji nie działa poprawnie, ale dostępna jest data wydania.',
			'changes' => 'Zmiany',
			'releaseDate' => 'Data wydania',
			'importFromURLsInFile' => 'Importuj z adresów URL w pliku (typu OPML)',
			'versionDetectionExplanation' => 'Uzgodnij ciąg wersji z wersją wykrytą przez system operacyjny',
			'versionDetection' => 'Wykrywanie wersji',
			'standardVersionDetection' => 'Standardowe wykrywanie wersji',
			'groupByCategory' => 'Grupuj według kategorii',
			'listView' => 'Widok listy',
			'gridView' => 'Widok siatki',
			'autoApkFilterByArch' => 'Spróbuj filtrować pliki APK według architektury procesora, jeśli to możliwe',
			'autoLinkFilterByArch' => 'Spróbuj filtrować linki według architektury procesora, jeśli to możliwe.',
			'overrideSource' => 'Nadpisz źródło',
			'dontShowAgain' => 'Nie pokazuj tego ponownie',
			'dontShowTrackOnlyWarnings' => 'Nie pokazuj ostrzeżeń "Tylko obserwowana"',
			'dontShowAPKOriginWarnings' => 'Nie pokazuj ostrzeżeń o pochodzeniu APK',
			'moveNonInstalledAppsToBottom' => 'Przenieś niezainstalowane aplikacje na dół widoku aplikacji',
			'gitlabPATLabel' => 'Osobisty token dostępu GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Więcej informacji',
			'requiresCredentialsInSettings' => '{}: Wymaga to dodatkowych poświadczeń (w Ustawieniach)',
			'checkOnStart' => 'Sprawdź aktualizacje przy uruchomieniu',
			'safeMode' => 'Tryb bezpieczny',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Dodawanie aplikacji jest wyłączone w trybie bezpiecznym',
			'tryInferAppIdFromCode' => 'Spróbuj wywnioskować identyfikator aplikacji z kodu źródłowego',
			'removeOnExternalUninstall' => 'Automatyczne usuń odinstalowane zewnętrznie aplikacje',
			'pickHighestVersionCode' => 'Automatycznie wybierz najwyższy kod wersji APK',
			'checkUpdateOnDetailPage' => 'Sprawdzaj aktualizacje podczas otwierania strony szczegółów aplikacji',
			'disablePageTransitions' => 'Wyłącz animacje przejścia między stronami',
			'reversePageTransitions' => 'Odwróć animacje przejścia pomiędzy stronami',
			'minStarCount' => 'Minimalna ilość gwiazdek',
			'addInfoBelow' => 'Dodaj tę informację poniżej.',
			'addInfoInSettings' => 'Dodaj tę informację w Ustawieniach.',
			'githubSourceNote' => 'Limit żądań GitHub można ominąć za pomocą klucza API.',
			'sortByLastLinkSegment' => 'Sortuj tylko według ostatniego segmentu łącza',
			'filterReleaseNotesByRegEx' => 'Filtruj informacje o wersji według wyrażenia regularnego',
			'customLinkFilterRegex' => 'Filtruj linki APK według wyrażenia regularnego (domyślnie ".apk$")',
			'appsPossiblyUpdated' => 'Aplikacje mogły zostać zaktualizowane',
			'appsPossiblyUpdatedNotifDescription' => 'Powiadamia, gdy co najmniej jedna aktualizacja aplikacji została potencjalnie zastosowana w tle',
			'xWasPossiblyUpdatedToY' => '{} być może zaktualizowano do {}.',
			'enableBackgroundUpdates' => 'Włącz aktualizacje w tle',
			'backgroundUpdateReqsExplanation' => 'Aktualizacje w tle mogą nie być możliwe dla wszystkich aplikacji.',
			'backgroundUpdateLimitsExplanation' => 'Powodzenie instalacji w tle można określić dopiero po otwarciu Updatium.',
			'verifyLatestTag' => 'Zweryfikuj najnowszy tag',
			'intermediateLinkRegex' => 'Filtr linków "pośrednich" do odwiedzenia w pierwszej kolejności',
			'filterByLinkText' => 'Filtruj linki według tekstu linku',
			'matchLinksOutsideATags' => 'Dopasowywanie linków poza znacznikami <a>',
			'intermediateLinkNotFound' => 'Nie znaleziono linku pośredniego',
			'intermediateLink' => 'Link pośredni',
			'exemptFromBackgroundUpdates' => 'Wyklucz z uaktualnień w tle (jeśli są włączone)',
			'bgUpdatesOnWiFiOnly' => 'Wyłącz aktualizacje w tle, gdy nie ma połączenia z Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Wyłącz aktualizacje w tle, gdy urządzenie nie jest ładowane',
			'autoSelectHighestVersionCode' => 'Automatycznie wybierz najwyższy kod wersji APK',
			'versionExtractionRegEx' => 'Wyrażenie regularne wyodrębniające wersję',
			'trimVersionString' => 'Przytnij ciąg wersji za pomocą RegEx',
			'matchGroupToUseForX' => 'Dopasuj grupę do użycia dla "{}"',
			'matchGroupToUse' => 'Dopasuj grupę do użycia dla wyrażenia regularnego wyodrębniania wersji',
			'highlightTouchTargets' => 'Wyróżnij mniej oczywiste elementy dotykowe',
			'pickExportDir' => 'Wybierz katalog eksportu',
			'autoExportOnChanges' => 'Automatyczny eksport po wprowadzeniu zmian',
			'includeSettings' => 'Dołącz ustawienia',
			'filterVersionsByRegEx' => 'Filtruj wersje według wyrażenia regularnego',
			'trySelectingSuggestedVersionCode' => 'Spróbuj wybierać sugerowany kod wersji APK',
			'dontSortReleasesList' => 'Utrzymaj kolejność wydań z interfejsu API',
			'reverseSort' => 'Odwrotne sortowanie',
			'takeFirstLink' => 'Wykorzystaj pierwszy link',
			'skipSort' => 'Pomiń sortowanie',
			'debugMenu' => 'Menu debugowania',
			'bgTaskStarted' => 'Uruchomiono zadanie w tle - sprawdź logi.',
			'runBgCheckNow' => 'Wymuś sprawdzenie aktualizacji w tle',
			'versionExtractWholePage' => 'Zastosuj wyrażenie regularne wyodrębniania wersji dla całej strony',
			'installing' => 'Instalacja',
			'skipUpdateNotifications' => 'Pomiń powiadomienia o aktualizacjach',
			'updatesAvailableNotifChannel' => 'Dostępne aktualizacje aplikacji',
			'appsUpdatedNotifChannel' => 'Zaktualizowane aplikacje',
			'appsPossiblyUpdatedNotifChannel' => 'Informuj o próbach aktualizacji',
			'errorCheckingUpdatesNotifChannel' => 'Błędy sprawdzania aktualizacji',
			'appsRemovedNotifChannel' => 'Usunięte aplikacje',
			'downloadingXNotifChannel' => 'Pobieranie {}',
			'completeAppInstallationNotifChannel' => 'Ukończenie instalacji aplikacji',
			'checkingForUpdatesNotifChannel' => 'Sprawdzanie dostępności aktualizacji',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Sprawdzaj tylko zainstalowane i obserwowane aplikacje pod kątem aktualizacji',
			'supportFixedAPKURL' => 'Obsługuj stałe adresy URL APK',
			'selectX' => 'Wybierz {}',
			'parallelDownloads' => 'Zezwalaj na równoległe pobierania',
			'useShizuku' => 'Użyj Shizuku lub Sui, aby zainstalować',
			'shizukuBinderNotFound' => 'Usługa Shizuku nie działa',
			'shizukuOld' => 'Stara wersja Shizuku (<11) - zaktualizuj ją',
			'shizukuOldAndroidWithADB' => 'Shizuku przez ADB działa na Androidzie 8.1+. Zaktualizuj Androida lub użyj zamiast tego Sui',
			'shizukuPretendToBeGooglePlay' => 'Ustaw Google Play jako źródło instalacji (jeśli używana jest aplikacja Shizuku)',
			'useSystemFont' => 'Czcionka systemowa',
			'useVersionCodeAsOSVersion' => 'Użyj versionCode aplikacji jako wersji wykrytej przez system operacyjny',
			'requestHeader' => 'Nagłówek żądania',
			'useLatestAssetDateAsReleaseDate' => 'Użyj najnowszego przesłanego zasobu jako daty wydania',
			'defaultPseudoVersioningMethod' => 'Domyślna metoda pseudo-wersji',
			'partialAPKHash' => 'Częściowy Hash pliku apk',
			'APKLinkHash' => 'Link Hash pliku apk',
			'directAPKLink' => 'Bezpośredni link do pliku apk',
			'pseudoVersionInUse' => 'Pseudo-wersja jest w użyciu',
			'installedVersion' => 'Zainstalowana wersja',
			'installed' => 'Zainstalowano',
			'notInstalledApps' => 'Niezainstalowane',
			'latest' => 'Najnowsza',
			'invertRegEx' => 'Odwróć wyrażenie regularne',
			'note' => 'Uwaga',
			'selfHostedNote' => 'Wybierz "{}", aby uzyskać dostęp do samodzielnie hostowanych lub niestandardowych instancji dowolnego źródła.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'Nie można przeanalizować pliku apk (jest niekompatybilny lub częściowo pobrany)',
			'beforeNewInstallsShareToAppVerifier' => 'Udostępnij nowe aplikacje za pomocą weryfikatora aplikacji (jeśli jest dostępny)',
			'appVerifierInstructionToast' => 'Udostępnij do weryfikatora aplikacji, a następnie wróć tutaj.',
			'wiki' => 'Pomoc/Wiki',
			'wikiHint' => 'Otwórz dokumentację wiki Updatium',
			'allowInsecure' => 'Zezwalaj na niezabezpieczone żądania HTTP',
			'stayOneVersionBehind' => 'Pozostań jedną wersję w tyle za najnowszą',
			'useFirstApkOfVersion' => 'Automatyczny wybór pierwszego z wielu plików APK',
			'refreshBeforeDownload' => 'Odśwież szczegóły aplikacji przed pobraniem',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nazwa',
			'smartname' => 'Nazwa (inteligentna)',
			'smartPlusDate' => 'Inteligentna + Data',
			'sortMethod' => 'Metoda sortowania',
			'welcome' => 'Witamy',
			'batteryOptimizationNote' => 'Należy pamiętać, że pobieranie w tle może działać bardziej niezawodnie po wyłączeniu optymalizacji baterii systemu operacyjnego dla Updatium.',
			'fileDeletionError' => 'Nie udało się usunąć pliku (spróbuj usunąć go ręcznie, a następnie spróbuj ponownie): "{}"',
			'foregroundService' => 'Usługa nowej generacji Updatium',
			'foregroundServiceExplanation' => 'Używanie usługi pierwszoplanowej do sprawdzania aktualizacji (bardziej niezawodne, zużywa więcej energii)',
			'fgServiceNotice' => 'To powiadomienie jest wymagane do sprawdzania aktualizacji w tle (można je ukryć w ustawieniach systemu operacyjnego).',
			'excludeSecrets' => 'Wyklucz sekrety',
			'GHReqPrefix' => 'Instancja "omeritzics/Updatium" dla żądań GitHub',
			'includeZips' => 'Dołączanie plików ZIP',
			'zippedApkFilterRegEx' => 'Filtrowanie plików APK wewnątrz ZIP',
			'multipleSigners' => 'Wielu sygnatariuszy',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Usunąć aplikację?', few: 'Usunąć aplikacje?', many: 'Usunąć aplikacje?', other: 'Usunąć aplikacje?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minutę', few: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minuty', many: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minut', other: 'Zbyt wiele żądań (ograniczona częstotliwość) - spróbuj ponownie za {count} minuty', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minutę', few: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minuty', many: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minut', other: 'Sprawdzanie aktualizacji w tle napotkało {error}, zaplanuje ponowne sprawdzenie za {count} minuty', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'W tle znaleziono {count} aktualizację - w razie potrzeby użytkownik zostanie o tym powiadomiony', few: 'W tle znaleziono {count} aktualizacje - w razie potrzeby użytkownik zostanie o tym powiadomiony', many: 'W tle znaleziono {count} aktualizacji - w razie potrzeby użytkownik zostanie o tym powiadomiony', other: 'W tle znaleziono {count} aktualizacje - w razie potrzeby użytkownik zostanie o tym powiadomiony', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{count} apkę', few: '{count} apki', many: '{count} apek', other: '{count} apki', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{count} adres URL', few: '{count} adresy URL', many: '{count} adresów URL', other: '{count} adresy URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{count} minuta', few: '{count} minuty', many: '{count} minut', other: '{count} minuty', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{count} godzina', few: '{count} godziny', many: '{count} godzin', other: '{count} godziny', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{count} dzień', few: '{count} dni', many: '{count} dni', other: '{count} dni', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Wyczyszczono {n} log (przed = {before}, po = {after})', few: 'Wyczyszczono {n} logi (przed = {before}, po = {after})', many: 'Wyczyszczono {n} logów (przed = {before}, po = {after})', other: 'Wyczyszczono {n} logi (przed = {before}, po = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{app} i 1 inna apka mają aktualizacje.', few: '{app} i {count} inne apki mają aktualizacje.', many: '{app} i {count} innych apek ma aktualizacje.', other: '{app} i {count} inne apki mają aktualizacje.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Zaktualizowano {app} i 1 inną apkę.', few: '{app} i {count} inne apki zostały zaktualizowane.', many: '{app} i {count} innych apek zostało zaktualizowanych.', other: '{app} i {count} inne apki zostały zaktualizowane.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Błąd aktualizacji {app} i 1 innej apki.', few: 'Błąd aktualizacji {app} i {count} innych apek.', many: 'Błąd aktualizacji {app} i {count} innych apek.', other: 'Błąd aktualizacji {app} i {count} innych apek.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{app} i 1 inna apka mogły zostać zaktualizowane.', few: '{app} i {count} inne apki mogły zostać zaktualizowane.', many: '{app} i {count} innych apek mogło zostać zaktualizowanych.', other: '{app} i {count} inne apki mogły zostać zaktualizowane.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: '{count} apk', few: '{count} apki', many: '{count} apek', other: '{count} apki', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pl'))(n, one: 'Certyfikat Hash', other: 'Hashes certyfikatu', ), 
			'securityDisclaimerTitle' => 'Zastrzeżenia Bezpieczeństwa i Prawne',
			'license' => 'Licencja',
			'licenseText' => 'Ta aplikacja jest dystrybuowana na warunkach Licencji GPL v3.',
			'disclaimer' => 'Zastrzeżenia',
			'disclaimerText' => 'Ta aplikacja nie dystrybuje, nie hostuje ani nie weryfikuje żadnych zewnętrznych aplikacji. Użytkownik ponosi pełną odpowiedzialność za bezpieczeństwo i legalność oprogramowania instalowanego za pomocą tego narzędzia.\n\nhttps://github.com/omeritzics/Updatium jest jedynym oficjalnym miejscem do pobrania Updatium - zdecydowanie odradza się pobieranie go z innych miejsc, ponieważ pobieranie z nieoficjalnych źródeł jest niebezpieczne.',
			'privacy' => 'Prywatność',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Akceptuj i kontynuuj',
			'decline' => 'Odrzuć',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Podoba Ci się Updatium?',
			'githubStarPromptContent' => 'Updatium to dobrowolny projekt open-source rozwijany przez społeczność w moim wolnym czasie. Jeśli chcesz wesprzeć projekt, rozważ danie mu gwiazdy na GitHubie, aby pomóc nam dotrzeć do większej liczby użytkowników i współpracowników. Nie będziesz już o tym przypominany. Z góry dziękuję! :)',
			'githubStarPromptStar' => 'Daj gwiazdę',
			'githubStarPromptDontShowAgain' => 'Nie pokazuj ponownie',
			'sourceCode' => 'Kod źródłowy',
			'developedBy' => 'Stworzone przez',
			'appDescription' => 'Dostosowywalny katalog aplikacji Android, który pozwala aktualizować aplikacje bezpośrednio z ich źródeł APK.',
			'safeModeEnabled' => 'Tryb bezpieczeństwa jest włączony',
			'safeModeDisabled' => 'Tryb bezpieczeństwa jest wyłączony',
			'safeModeDisable' => 'Wyłącz tryb bezpieczeństwa',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Administracja trybu bezpieczeństwa',
			'safeModeSetupDescription' => 'Ustaw hasło, aby włączyć tryb bezpieczeństwa. Po włączeniu trybu bezpieczeństwa nie można dodawać nowych aplikacji i można go wyłączyć tylko za pomocą hasła.',
			'safeModeToggleDescription' => 'Wprowadź hasło, aby włączyć lub wyłączyć tryb bezpieczeństwa.',
			'safeModeSetPassword' => 'Ustaw hasło',
			'safeModeConfirmPassword' => 'Potwierdź hasło',
			'safeModeEnterPassword' => 'Wprowadź hasło',
			'safeModePasswordHint' => 'Minimum 8 znaków',
			'safeModePasswordTooShort' => 'Hasło musi mieć co najmniej 8 znaków',
			'safeModePasswordMismatch' => 'Hasła nie są identyczne',
			'safeModePasswordIncorrect' => 'Niepoprawne hasło',
			'safeModePasswordError' => 'Błąd ustawiania hasła. Proszę spróbować ponownie.',
			'safeModeEnable' => 'Włącz tryb bezpieczeństwa',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} dotknięć pozostało do wyłączenia trybu bezpieczeństwa',
			'safeModeEnabledHint' => 'Tryb bezpieczeństwa włączony. Dotknij numeru wersji w Ustawieniach wiele razy, aby wyłączyć.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Rozumiem',
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
