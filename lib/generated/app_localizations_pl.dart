// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Nieprawidłowy adres URL aplikacji $arg1';
  }

  @override
  String get noReleaseFound => 'Nie można znaleźć odpowiedniego wydania';

  @override
  String get noVersionFound => 'Nie można określić wersji wydania';

  @override
  String get urlMatchesNoSource => 'Adres URL nie pasuje do znanego źródła';

  @override
  String get cantInstallOlderVersion =>
      'Nie można zainstalować starszej wersji aplikacji';

  @override
  String get appIdMismatch =>
      'Pobrane ID pakietu nie pasuje do istniejącego ID aplikacji';

  @override
  String get functionNotImplemented =>
      'Ta klasa nie zaimplementowała tej funkcji';

  @override
  String get placeholder => 'Placeholder';

  @override
  String get someErrors => 'Wystąpiły pewne błędy';

  @override
  String get unexpectedError => 'Nieoczekiwany błąd';

  @override
  String get ok => 'Okej';

  @override
  String get and => 'i';

  @override
  String get githubPATLabel =>
      'Osobisty token dostępu GitHub (zwiększa limit zapytań)';

  @override
  String get includePrereleases => 'Uwzględnij wersje wstępne';

  @override
  String get fallbackToOlderReleases => 'Powracaj do starszych wersji';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filtruj tytuły wydań wg. wyrażeń regularnych';

  @override
  String get invalidRegEx => 'Nieprawidłowe wyrażenie regularne';

  @override
  String get noDescription => 'Brak opisu';

  @override
  String get cancel => 'Anuluj';

  @override
  String get requiredInBrackets => '(Wymagane)';

  @override
  String get dropdownNoOptsError =>
      'BŁĄD: LISTA ROZWIJANA MUSI MIEĆ CO NAJMNIEJ JEDNĄ OPCJĘ';

  @override
  String get color => 'Kolor';

  @override
  String get standard => 'Domyślny';

  @override
  String get custom => 'Własny';

  @override
  String get useMaterialYou => 'Użyj kolorów Material You';

  @override
  String get githubStarredRepos => 'Repozytoria GitHub oznaczone gwiazdką';

  @override
  String get uname => 'Nazwa użytkownika';

  @override
  String get wrongArgNum => 'Nieprawidłowa liczba podanych argumentów';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 jest tylko obserwowane';
  }

  @override
  String get source => 'Źródło';

  @override
  String get app => 'Aplikacja';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Aplikacje z tego źródła są tylko obserwowane.';

  @override
  String get youPickedTrackOnly => 'Wybrano opcję \"Tylko obserwuj\".';

  @override
  String get trackOnlyAppDescription =>
      'Aplikacja będzie obserwowana pod kątem aktualizacji, ale Updatium nie będzie w stanie jej pobrać ani zainstalować.';

  @override
  String get cancelled => 'Anulowano';

  @override
  String get appAlreadyAdded => 'Aplikacja już została dodana';

  @override
  String get alreadyUpToDateQuestion => 'Aplikacja jest już aktualna?';

  @override
  String get addApp => 'Dodaj apkę';

  @override
  String get appSourceURL => 'Adres URL źródła aplikacji';

  @override
  String get error => 'Błąd';

  @override
  String get add => 'Dodaj';

  @override
  String get searchSomeSourcesLabel => 'Szukaj (tylko niektóre źródła)';

  @override
  String get search => 'Szukaj';

  @override
  String additionalOptsFor(String arg1) {
    return 'Dodatkowe opcje dla $arg1';
  }

  @override
  String get supportedSources => 'Obsługiwane źródła';

  @override
  String get trackOnlyInBrackets => '(tylko obserwowane)';

  @override
  String get searchableInBrackets => '(wyszukiwalne)';

  @override
  String get appsString => 'Aplikacje';

  @override
  String get noApps => 'Brak aplikacji';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Brak aplikacji dla filtra';

  @override
  String byX(String arg1) {
    return 'Autorstwa $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Postęp: $arg1%';
  }

  @override
  String get pleaseWait => 'Proszę czekać';

  @override
  String get updateAvailable => 'Dostępna aktualizacja';

  @override
  String get notInstalled => 'Nie zainstalowano';

  @override
  String get pseudoVersion => 'pseudo-wersja';

  @override
  String get selectAll => 'Zaznacz wszystkie';

  @override
  String deselectX(String arg1) {
    return 'Odznacz $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 zostanie usunięty z Updatium, ale pozostanie zainstalowany na urządzeniu.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Usunąć wybrane aplikacje?';

  @override
  String get removeSelectedApps => 'Usuń wybrane aplikacje';

  @override
  String updateX(String arg1) {
    return 'Zaktualizuj $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Zainstaluj $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Oznacz $arg1\n(tylko obserwowana)\njako zaktualizowaną';
  }

  @override
  String changeX(String arg1) {
    return 'Zmień $arg1';
  }

  @override
  String get installUpdateApps => 'Instaluj/aktualizuj aplikacje';

  @override
  String get installUpdateSelectedApps =>
      'Zainstaluj/zaktualizuj wybrane aplikacje';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Oznaczyć $arg1 wybranych aplikacji jako zaktualizowane?';
  }

  @override
  String get no => 'Nie';

  @override
  String get yes => 'Tak';

  @override
  String get markSelectedAppsUpdated =>
      'Oznacz wybrane aplikacje jako zaktualizowane';

  @override
  String get pinToTop => 'Przypnij';

  @override
  String get unpinFromTop => 'Odepnij';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Zresetować status instalacji dla wybranych aplikacji?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Stan instalacji wybranych aplikacji zostanie zresetowany.\n\nMoże być to pomocne, gdy wersja aplikacji wyświetlana w Updatium jest nieprawidłowa z powodu nieudanych aktualizacji lub innych problemów.';

  @override
  String get customLinkMessage =>
      'Te linki działają na urządzeniach z zainstalowanym Updatium';

  @override
  String get shareAppConfigLinks =>
      'Udostępnij konfigurację aplikacji w formie linku';

  @override
  String get shareSelectedAppURLs => 'Udostępnij wybrane adresy URL aplikacji';

  @override
  String get resetInstallStatus => 'Zresetuj stan instalacji';

  @override
  String get more => 'Więcej';

  @override
  String get removeOutdatedFilter => 'Usuń filtr nieaktualnych aplikacji';

  @override
  String get showOutdatedOnly => 'Pokaż tylko nieaktualne aplikacje';

  @override
  String get filter => 'FIltr';

  @override
  String get filterApps => 'Filtruj aplikacje';

  @override
  String get appName => 'Nazwa aplikacji';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Aktualne aplikacje';

  @override
  String get nonInstalledApps => 'Niezainstalowane aplikacje';

  @override
  String get importExport => 'Import/Eksport';

  @override
  String get settings => 'Ustawienia';

  @override
  String exportedTo(String arg1) {
    return 'Wyeksportowano do $arg1';
  }

  @override
  String get updatiumExport => 'Eksportuj Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Nieprawidłowe wprowadzenie';

  @override
  String importedX(String arg1) {
    return 'Zaimportowano $arg1';
  }

  @override
  String get updatiumImport => 'Import Updatium';

  @override
  String get importFromURLList => 'Importuj z listy adresów URL';

  @override
  String get searchQuery => 'Wyszukiwane zapytanie';

  @override
  String get appURLList => 'Lista adresów URL aplikacji';

  @override
  String get line => 'Linia';

  @override
  String searchX(String arg1) {
    return 'Przeszukaj $arg1';
  }

  @override
  String get noResults => 'Nie znaleziono wyników';

  @override
  String importX(String arg1) {
    return 'Importuj $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Zaimportowane aplikacje mogą być wyświetlane jako niezainstalowane.\nAby to naprawić, przeinstaluj je za pomocą Updatium.\nNie powinno to mieć wpływu na dane aplikacji.\n\nDotyczy tylko adresu URL i innych metod importu.';

  @override
  String get importErrors => 'Błędy importowania';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return 'Zaimportowano $arg1 z $arg2 aplikacji.';
  }

  @override
  String get followingURLsHadErrors =>
      'Następujące adresy URL zawierały błędy:';

  @override
  String get selectURL => 'Wybierz adres URL';

  @override
  String get selectURLs => 'Wybierz adresy URL';

  @override
  String get pick => 'Wybierz';

  @override
  String get theme => 'Motyw';

  @override
  String get dark => 'Ciemny';

  @override
  String get light => 'Jasny';

  @override
  String get followSystem => 'Zgodny z systemem';

  @override
  String get followSystemThemeExplanation =>
      'Podążanie za motywem systemowym jest możliwe tylko przy użyciu aplikacji firm trzecich';

  @override
  String get useBlackTheme => 'Użyj czarnego motywu';

  @override
  String get appSortBy => 'Sortuj aplikacje według';

  @override
  String get authorName => 'Autor/Nazwa';

  @override
  String get nameAuthor => 'Nazwa/Autor';

  @override
  String get asAdded => 'Dodania';

  @override
  String get appSortOrder => 'Kolejność sortowania aplikacji';

  @override
  String get ascending => 'Rosnąco';

  @override
  String get descending => 'Malejąco';

  @override
  String get bgUpdateCheckInterval =>
      'Częstotliwość sprawdzania aktualizacji w tle';

  @override
  String get neverManualOnly => 'Nigdy - tylko ręcznie';

  @override
  String get appearance => 'Wygląd';

  @override
  String get pinUpdates => 'Przypnij aktualizacje na górze widoku aplikacji';

  @override
  String get updates => 'Aktualizacje';

  @override
  String get sourceSpecific => 'Zależnie od źródła';

  @override
  String get appSource => 'Źródło aplikacji';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Brak logów';

  @override
  String get appLogs => 'Logi aplikacji';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Zamknij';

  @override
  String get share => 'Udostępnij';

  @override
  String get appNotFound => 'Nie znaleziono aplikacji';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-eksport';

  @override
  String get pickAnAPK => 'Wybierz plik APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 ma więcej niż jeden pakiet:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Urządzenie obsługuje architekturę procesora $arg1.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Urządzenie obsługuje następujące architektury procesora:';

  @override
  String get warning => 'Uwaga';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Źródłem aplikacji jest \'$arg1\', ale pakiet wydania pochodzi z \'$arg2\'. Kontynuować?';
  }

  @override
  String get updatesAvailable => 'Dostępne aktualizacje';

  @override
  String get updatesAvailableNotifDescription =>
      'Informuje o dostępności aktualizacji dla jednej lub więcej aplikacji obserwowanych przez Updatium';

  @override
  String get noNewUpdates => 'Brak nowych aktualizacji.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 ma aktualizację.';
  }

  @override
  String get appsUpdated => 'Zaktualizowano aplikacje';

  @override
  String get appsNotUpdated => 'Nie udało się zaktualizować aplikacji';

  @override
  String get appsUpdatedNotifDescription =>
      'Informuje, gdy co najmniej jedna aplikacja została zaktualizowana w tle';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 zaktualizowano do $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Błąd aktualizacji $arg1 do $arg2.';
  }

  @override
  String get errorCheckingUpdates => 'Błąd sprawdzania aktualizacji';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Jest wyświetlane, gdy sprawdzanie aktualizacji w tle nie powiedzie się';

  @override
  String get appsRemoved => 'Usunięte aplikacje';

  @override
  String get appsRemovedNotifDescription =>
      'Informuje, gdy co najmniej jedna aplikacja została usunięta z powodu błędów podczas wczytywania';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return 'Usunięto $arg1 z powodu błędu: $arg2';
  }

  @override
  String get completeAppInstallation => 'Ukończenie instalacji aplikacji';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Aby zainstalować aplikacje, Updatium musi być otwarte';

  @override
  String get completeAppInstallationNotifDescription =>
      'Informuje o możliwości powrotu do Updatium w celu dokończenia instalacji aplikacji';

  @override
  String get checkingForUpdates => 'Sprawdzanie aktualizacji';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Tymczasowe powiadomienie pojawiające się podczas sprawdzania aktualizacji';

  @override
  String get pleaseAllowInstallPerm => 'Pozwól Updatium instalować aplikacje';

  @override
  String get trackOnly => 'Tylko obserwuj';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Błąd $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Korekta wersji wyłączona (wtyczka wydaje się nie działać)';

  @override
  String get unknown => 'Nieznane';

  @override
  String get none => 'Brak';

  @override
  String get all => 'Wszystkie';

  @override
  String get never => 'Nigdy';

  @override
  String latestVersionX(String arg1) {
    return 'Najnowsza wersja: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Zainstalowana wersja: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Ostatnio sprawdzono: $arg1';
  }

  @override
  String get remove => 'Usuń';

  @override
  String get yesMarkUpdated => 'Tak, oznacz jako zaktualizowane';

  @override
  String get fdroid => 'Oficjalny F-Droid';

  @override
  String get appIdOrName => 'ID aplikacji lub nazwa';

  @override
  String get appId => 'ID aplikacji';

  @override
  String get appWithIdOrNameNotFound =>
      'Nie znaleziono aplikacji o tym identyfikatorze lub nazwie';

  @override
  String get reposHaveMultipleApps =>
      'Repozytoria mogą zawierać wiele aplikacji';

  @override
  String get fdroidThirdPartyRepo => 'Zewnętrzne repo F-Droid';

  @override
  String get gitlab => 'GitLab';

  @override
  String get codeberg => 'Codeberg';

  @override
  String get izzyondroid => 'IzzyOnDroid';

  @override
  String get sourcehut => 'SourceHut';

  @override
  String get apkcombo => 'APKCombo';

  @override
  String get apkpure => 'APKPure';

  @override
  String get aptoide => 'Aptoide';

  @override
  String get uptodown => 'Uptodown';

  @override
  String get huaweiappgallery => 'Huawei App Gallery';

  @override
  String get rustore => 'RuStore';

  @override
  String get jenkins => 'Jenkins';

  @override
  String get apkmirror => 'APKMirror';

  @override
  String get telegramapp => 'Telegram App';

  @override
  String get neutroncode => 'NeutronCode';

  @override
  String get html => 'HTML';

  @override
  String get install => 'Instaluj';

  @override
  String get markInstalled => 'Oznacz jako zainstalowane';

  @override
  String get update => 'Zaktualizuj';

  @override
  String get updated => 'Zaktualizowano';

  @override
  String get markUpdated => 'Oznacz jako zaktualizowane';

  @override
  String get additionalOptions => 'Dodatkowe opcje';

  @override
  String get disableVersionDetection => 'Wyłącz wykrywanie wersji';

  @override
  String get noVersionDetectionExplanation =>
      'Opcja ta powinna być używana tylko w przypadku aplikacji, w których wykrywanie wersji nie działa poprawnie.';

  @override
  String downloadingX(String arg1) {
    return 'Pobieranie $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'Pobierz $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'Pobrano $arg1';
  }

  @override
  String get releaseAsset => 'Wydany pakiet';

  @override
  String get downloadNotifDescription =>
      'Informuje o postępach w pobieraniu aplikacji';

  @override
  String get noAPKFound => 'Nie znaleziono pakietu APK';

  @override
  String get noVersionDetection => 'Bez wykrywania wersji';

  @override
  String get categorize => 'Kategoryzuj';

  @override
  String get categories => 'Kategorie';

  @override
  String get category => 'Kategoria';

  @override
  String get noCategory => 'Bez kategorii';

  @override
  String get noCategories => 'Brak kategorii';

  @override
  String get deleteCategoriesQuestion => 'Usunąć kategorie?';

  @override
  String get categoryDeleteWarning =>
      'Wszystkie aplikacje w usuniętych kategoriach zostaną ustawione jako nieskategoryzowane.';

  @override
  String get addCategory => 'Dodaj kategorię';

  @override
  String get label => 'Etykieta';

  @override
  String get language => 'Język';

  @override
  String get copiedToClipboard => 'Skopiowano do schowka';

  @override
  String get storagePermissionDenied =>
      'Odmówiono zezwolenia dostępu do pamięci';

  @override
  String get selectedCategorizeWarning =>
      'Spowoduje to zastąpienie wszystkich istniejących ustawień kategorii dla wybranych aplikacji.';

  @override
  String get filterAPKsByRegEx =>
      'Filtruj pliki APK według wyrażeń regularnych';

  @override
  String get removeFromUpdatium => 'Usuń z Updatium';

  @override
  String get uninstallFromDevice => 'Odinstaluj z urządzenia';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Działa tylko w przypadku aplikacji z wyłączonym wykrywaniem wersji.';

  @override
  String get releaseDateAsVersion => 'Użyj daty wydania jako wersji';

  @override
  String get releaseTitleAsVersion => 'Używaj nazwy wydania jako ciągu wersji';

  @override
  String get releaseDateAsVersionExplanation =>
      'Opcja ta powinna być używana tylko w przypadku aplikacji, w których wykrywanie wersji nie działa poprawnie, ale dostępna jest data wydania.';

  @override
  String get changes => 'Zmiany';

  @override
  String get releaseDate => 'Data wydania';

  @override
  String get importFromURLsInFile =>
      'Importuj z adresów URL w pliku (typu OPML)';

  @override
  String get versionDetectionExplanation =>
      'Uzgodnij ciąg wersji z wersją wykrytą przez system operacyjny';

  @override
  String get versionDetection => 'Wykrywanie wersji';

  @override
  String get standardVersionDetection => 'Standardowe wykrywanie wersji';

  @override
  String get groupByCategory => 'Grupuj według kategorii';

  @override
  String get listView => 'Widok listy';

  @override
  String get gridView => 'Widok siatki';

  @override
  String get autoApkFilterByArch =>
      'Spróbuj filtrować pliki APK według architektury procesora, jeśli to możliwe';

  @override
  String get autoLinkFilterByArch =>
      'Spróbuj filtrować linki według architektury procesora, jeśli to możliwe.';

  @override
  String get overrideSource => 'Nadpisz źródło';

  @override
  String get dontShowAgain => 'Nie pokazuj tego ponownie';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Nie pokazuj ostrzeżeń \"Tylko obserwowana\"';

  @override
  String get dontShowAPKOriginWarnings =>
      'Nie pokazuj ostrzeżeń o pochodzeniu APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Przenieś niezainstalowane aplikacje na dół widoku aplikacji';

  @override
  String get hideNonInstalledApps => 'Ukryj niezainstalowane aplikacje';

  @override
  String get gitlabPATLabel => 'Osobisty token dostępu GitLab';

  @override
  String get about => 'Więcej informacji';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1: Wymaga to dodatkowych poświadczeń (w Ustawieniach)';
  }

  @override
  String get checkOnStart => 'Sprawdź aktualizacje przy uruchomieniu';

  @override
  String get safeMode => 'Tryb bezpieczny';

  @override
  String get safeModeDescription =>
      'Ukryj stronę Dodaj aplikację i pokaż Import/Eksport zamiast tego';

  @override
  String get safeModeAddAppDisabled =>
      'Dodawanie aplikacji jest wyłączone w trybie bezpiecznym';

  @override
  String get tryInferAppIdFromCode =>
      'Spróbuj wywnioskować identyfikator aplikacji z kodu źródłowego';

  @override
  String get removeOnExternalUninstall =>
      'Automatyczne usuń odinstalowane zewnętrznie aplikacje';

  @override
  String get pickHighestVersionCode =>
      'Automatycznie wybierz najwyższy kod wersji APK';

  @override
  String get checkUpdateOnDetailPage =>
      'Sprawdzaj aktualizacje podczas otwierania strony szczegółów aplikacji';

  @override
  String get disablePageTransitions =>
      'Wyłącz animacje przejścia między stronami';

  @override
  String get reversePageTransitions =>
      'Odwróć animacje przejścia pomiędzy stronami';

  @override
  String get minStarCount => 'Minimalna ilość gwiazdek';

  @override
  String get addInfoBelow => 'Dodaj tę informację poniżej.';

  @override
  String get addInfoInSettings => 'Dodaj tę informację w Ustawieniach.';

  @override
  String get githubSourceNote =>
      'Limit żądań GitHub można ominąć za pomocą klucza API.';

  @override
  String get sortByLastLinkSegment =>
      'Sortuj tylko według ostatniego segmentu łącza';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filtruj informacje o wersji według wyrażenia regularnego';

  @override
  String get customLinkFilterRegex =>
      'Filtruj linki APK według wyrażenia regularnego (domyślnie \".apk\$\")';

  @override
  String get appsPossiblyUpdated => 'Aplikacje mogły zostać zaktualizowane';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Powiadamia, gdy co najmniej jedna aktualizacja aplikacji została potencjalnie zastosowana w tle';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 być może zaktualizowano do $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'Włącz aktualizacje w tle';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Aktualizacje w tle mogą nie być możliwe dla wszystkich aplikacji.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Powodzenie instalacji w tle można określić dopiero po otwarciu Updatium.';

  @override
  String get verifyLatestTag => 'Zweryfikuj najnowszy tag';

  @override
  String get intermediateLinkRegex =>
      'Filtr linków \"pośrednich\" do odwiedzenia w pierwszej kolejności';

  @override
  String get filterByLinkText => 'Filtruj linki według tekstu linku';

  @override
  String get matchLinksOutsideATags =>
      'Dopasowywanie linków poza znacznikami <a>';

  @override
  String get intermediateLinkNotFound => 'Nie znaleziono linku pośredniego';

  @override
  String get intermediateLink => 'Link pośredni';

  @override
  String get exemptFromBackgroundUpdates =>
      'Wyklucz z uaktualnień w tle (jeśli są włączone)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Wyłącz aktualizacje w tle, gdy nie ma połączenia z Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Wyłącz aktualizacje w tle, gdy urządzenie nie jest ładowane';

  @override
  String get autoSelectHighestVersionCode =>
      'Automatycznie wybierz najwyższy kod wersji APK';

  @override
  String get versionExtractionRegEx =>
      'Wyrażenie regularne wyodrębniające wersję';

  @override
  String get trimVersionString => 'Przytnij ciąg wersji za pomocą RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Dopasuj grupę do użycia dla \"$arg1\"';
  }

  @override
  String get matchGroupToUse =>
      'Dopasuj grupę do użycia dla wyrażenia regularnego wyodrębniania wersji';

  @override
  String get highlightTouchTargets =>
      'Wyróżnij mniej oczywiste elementy dotykowe';

  @override
  String get pickExportDir => 'Wybierz katalog eksportu';

  @override
  String get autoExportOnChanges =>
      'Automatyczny eksport po wprowadzeniu zmian';

  @override
  String get includeSettings => 'Dołącz ustawienia';

  @override
  String get filterVersionsByRegEx =>
      'Filtruj wersje według wyrażenia regularnego';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Spróbuj wybierać sugerowany kod wersji APK';

  @override
  String get dontSortReleasesList =>
      'Utrzymaj kolejność wydań z interfejsu API';

  @override
  String get reverseSort => 'Odwrotne sortowanie';

  @override
  String get takeFirstLink => 'Wykorzystaj pierwszy link';

  @override
  String get skipSort => 'Pomiń sortowanie';

  @override
  String get debugMenu => 'Menu debugowania';

  @override
  String get bgTaskStarted => 'Uruchomiono zadanie w tle - sprawdź logi.';

  @override
  String get runBgCheckNow => 'Wymuś sprawdzenie aktualizacji w tle';

  @override
  String get versionExtractWholePage =>
      'Zastosuj wyrażenie regularne wyodrębniania wersji dla całej strony';

  @override
  String get installing => 'Instalacja';

  @override
  String get skipUpdateNotifications => 'Pomiń powiadomienia o aktualizacjach';

  @override
  String get updatesAvailableNotifChannel => 'Dostępne aktualizacje aplikacji';

  @override
  String get appsUpdatedNotifChannel => 'Zaktualizowane aplikacje';

  @override
  String get appsPossiblyUpdatedNotifChannel =>
      'Informuj o próbach aktualizacji';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Błędy sprawdzania aktualizacji';

  @override
  String get appsRemovedNotifChannel => 'Usunięte aplikacje';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Pobieranie $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Ukończenie instalacji aplikacji';

  @override
  String get checkingForUpdatesNotifChannel =>
      'Sprawdzanie dostępności aktualizacji';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Sprawdzaj tylko zainstalowane i obserwowane aplikacje pod kątem aktualizacji';

  @override
  String get supportFixedAPKURL => 'Obsługuj stałe adresy URL APK';

  @override
  String selectX(String arg1) {
    return 'Wybierz $arg1';
  }

  @override
  String get parallelDownloads => 'Zezwalaj na równoległe pobierania';

  @override
  String get useShizuku => 'Użyj Shizuku lub Sui, aby zainstalować';

  @override
  String get shizukuBinderNotFound => 'Usługa Shizuku nie działa';

  @override
  String get shizukuOld => 'Stara wersja Shizuku (<11) - zaktualizuj ją';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku przez ADB działa na Androidzie 8.1+. Zaktualizuj Androida lub użyj zamiast tego Sui';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Ustaw Google Play jako źródło instalacji (jeśli używana jest aplikacja Shizuku)';

  @override
  String get useSystemFont => 'Czcionka systemowa';

  @override
  String get useVersionCodeAsOSVersion =>
      'Użyj versionCode aplikacji jako wersji wykrytej przez system operacyjny';

  @override
  String get requestHeader => 'Nagłówek żądania';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Użyj najnowszego przesłanego zasobu jako daty wydania';

  @override
  String get defaultPseudoVersioningMethod => 'Domyślna metoda pseudo-wersji';

  @override
  String get partialAPKHash => 'Częściowy Hash pliku apk';

  @override
  String get directAPKLink => 'Bezpośredni link do pliku apk';

  @override
  String get pseudoVersionInUse => 'Pseudo-wersja jest w użyciu';

  @override
  String get installed => 'Zainstalowano';

  @override
  String get latest => 'Najnowsza';

  @override
  String get invertRegEx => 'Odwróć wyrażenie regularne';

  @override
  String get note => 'Uwaga';

  @override
  String selfHostedNote(String arg1) {
    return 'Wybierz \"$arg1\", aby uzyskać dostęp do samodzielnie hostowanych lub niestandardowych instancji dowolnego źródła.';
  }

  @override
  String get badDownload =>
      'Nie można przeanalizować pliku apk (jest niekompatybilny lub częściowo pobrany)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Udostępnij nowe aplikacje za pomocą weryfikatora aplikacji (jeśli jest dostępny)';

  @override
  String get appVerifierInstructionToast =>
      'Udostępnij do weryfikatora aplikacji, a następnie wróć tutaj.';

  @override
  String get wiki => 'Pomoc/Wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Zezwalaj na niezabezpieczone żądania HTTP';

  @override
  String get stayOneVersionBehind =>
      'Pozostań jedną wersję w tyle za najnowszą';

  @override
  String get useFirstApkOfVersion =>
      'Automatyczny wybór pierwszego z wielu plików APK';

  @override
  String get refreshBeforeDownload =>
      'Odśwież szczegóły aplikacji przed pobraniem';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Nazwa';

  @override
  String get smartname => 'Nazwa (Smart)';

  @override
  String get sortMethod => 'Metoda sortowania';

  @override
  String get welcome => 'Witamy';

  @override
  String get documentationLinksNote =>
      'Strona Updatium GitHub, do której link znajduje się poniżej, zawiera linki do filmów, artykułów, dyskusji i innych zasobów, które pomogą ci zrozumieć, jak korzystać z aplikacji.';

  @override
  String get batteryOptimizationNote =>
      'Należy pamiętać, że pobieranie w tle może działać bardziej niezawodnie po wyłączeniu optymalizacji baterii systemu operacyjnego dla Updatium.';

  @override
  String fileDeletionError(String arg1) {
    return 'Nie udało się usunąć pliku (spróbuj usunąć go ręcznie, a następnie spróbuj ponownie): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Usługa nowej generacji Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Używanie usługi pierwszoplanowej do sprawdzania aktualizacji (bardziej niezawodne, zużywa więcej energii)';

  @override
  String get fgServiceNotice =>
      'To powiadomienie jest wymagane do sprawdzania aktualizacji w tle (można je ukryć w ustawieniach systemu operacyjnego).';

  @override
  String get excludeSecrets => 'Wyklucz sekrety';

  @override
  String get includeZips => 'Dołączanie plików ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrowanie plików APK wewnątrz ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google ogłosił, że począwszy od 2026 / 2027, wszystkie aplikacje na \"certyfikowanych\" urządzeń z systemem Android będą wymagać od dewelopera przekazania danych osobowych bezpośrednio do Google.\n\nPo tym czasie, Updatium może przestać działać na certyfikowanych urządzeniach z systemem Android.';

  @override
  String get googleVerificationWarningP2 =>
      'Więcej informacji można uzyskać na stronie https: / / keepandroidopen.org.';

  @override
  String get googleVerificationWarningP3 =>
      'Należy zauważyć, że w perspektywie krótkoterminowej może być nadal możliwe instalowanie \"niezweryfikowanych\" aplikacji (niezgodnych z wymaganiami) poprzez proces \"zaawansowanego przepływu\", który Google obiecał wdrożyć po szerokim odwrocie do ich ogłoszenia, ale nie mają one szczegółowych informacji, jak to działa, więc nie jest jasne, czy będzie rzeczywiście zachować wolność użytkownika w jakikolwiek praktyczny sposób.\n\nW każdym razie ruch Google jest znaczącym krokiem w kierunku zakończenia swobodnego, ogólnego celu dla osób fizycznych.\n\nNiecertyfikowane Oses, takie jak GrapheneOS, nie powinny mieć na to wpływu tak długo, jak długo będą mogły istnieć.';

  @override
  String get multipleSigners => 'Wielu sygnatariuszy';

  @override
  String get securityDisclaimerTitle => 'Zastrzeżenia Bezpieczeństwa i Prawne';

  @override
  String get license => 'Licencja';

  @override
  String get licenseText =>
      'Ta aplikacja jest dystrybuowana na warunkach Licencji GPL v3.';

  @override
  String get disclaimer => 'Zastrzeżenia';

  @override
  String get disclaimerText =>
      'Ta aplikacja nie dystrybuuje, nie hostuje ani nie weryfikuje żadnych zewnętrznych aplikacji. Użytkownik ponosi pełną odpowiedzialność za bezpieczeństwo i legalność oprogramowania instalowanego za pomocą tego narzędzia.\n\nhttps://github.com/omeritzics/Updatium jest jedynym oficjalnym miejscem do pobrania Updatium - zdecydowanie odradza się pobieranie go z innych miejsc, ponieważ pobieranie z nieoficjalnych źródeł jest niebezpieczne.';

  @override
  String get privacy => 'Prywatność';

  @override
  String get privacyText =>
      'Ta aplikacja jest skoncentrowana na prywatności i nie zbiera danych osobowych.';

  @override
  String get acceptAndContinue => 'Akceptuj i kontynuuj';

  @override
  String get decline => 'Odrzuć';

  @override
  String get githubStarPromptTitle => 'Enjoying Updatium?';

  @override
  String get githubStarPromptContent =>
      'Updatium is a voluntary, open-source community project developed in my free time. If you\'d like to support the project, please consider starring it on GitHub to help us reach more users and contributors. You won\'t be nudged about this again. Thank you in advance! :)';

  @override
  String get githubStarPromptStar => 'Star';

  @override
  String get githubStarPromptDontShowAgain => 'Don\'t show again';

  @override
  String get aPKLinkHash => 'Link Hash pliku apk';

  @override
  String get gHReqPrefix => 'Instancja \"sky22333/hubproxy\" dla żądań GitHub';

  @override
  String get continueAction => 'Kontynuuj';

  @override
  String apps(int count) {
    return '$count Apps';
  }

  @override
  String apk(int count) {
    return '$count APKs';
  }

  @override
  String minute(int count) {
    return '$count minutes';
  }

  @override
  String hour(int count) {
    return '$count hours';
  }

  @override
  String day(int count) {
    return '$count days';
  }
}
