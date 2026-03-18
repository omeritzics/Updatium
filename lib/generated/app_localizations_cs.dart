// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Žádná platná adresa URL aplikace ';
  }

  @override
  String get noReleaseFound => 'Nebyla nalezena odpovídající verze';

  @override
  String get noVersionFound => 'Nelze určit verzi vydání';

  @override
  String get urlMatchesNoSource => 'URL neodpovídá žádnému známému zdroji';

  @override
  String get cantInstallOlderVersion =>
      'Nelze nainstalovat starší verzi aplikace';

  @override
  String get appIdMismatch =>
      'ID staženého balíčku neodpovídá ID existující aplikace';

  @override
  String get functionNotImplemented =>
      'Tato třída nemá implementovánu tuto funkci';

  @override
  String get placeholder => 'Zástupce';

  @override
  String get someErrors => 'Došlo k chybám';

  @override
  String get unexpectedError => 'Neočekávaná chyba';

  @override
  String get ok => 'OK';

  @override
  String get and => 'a';

  @override
  String get githubPATLabel =>
      'Osobní přístupový token GitHub (zvyšuje limit požadavků)';

  @override
  String get includePrereleases => 'Zahrnout předběžná vydání';

  @override
  String get fallbackToOlderReleases => 'Přechod na starší verze';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filtrovat názvy verzí podle regulárního výrazu';

  @override
  String get invalidRegEx => 'Neplatný regulární výraz';

  @override
  String get noDescription => 'Žádný popis';

  @override
  String get cancel => 'Zrušit';

  @override
  String get requiredInBrackets => '(vyžadováno)';

  @override
  String get dropdownNoOptsError =>
      'CHYBA: ROZBALOVACÍ NABÍDKA MUSÍ MÍT ALESPOŇ JEDNU MOŽNOST';

  @override
  String get color => 'Barvu';

  @override
  String get standard => 'Standardní';

  @override
  String get custom => 'Vlastní';

  @override
  String get useMaterialYou => 'Použít barvy Material You';

  @override
  String get githubStarredRepos => 'Repozitáře na GitHubu označené hvězdičkou';

  @override
  String get uname => 'Uživatelské jméno';

  @override
  String get wrongArgNum => 'Nesprávný počet zadaných argumentů';

  @override
  String xIsTrackOnly(String arg1) {
    return ' je určeno pouze pro sledování';
  }

  @override
  String get source => 'Zdroj';

  @override
  String get app => 'Aplikace';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Aplikace z tohoto zdroje jsou „pouze pro sledování“.';

  @override
  String get youPickedTrackOnly => 'Vybrali jste možnost „pouze sledovat“.';

  @override
  String get trackOnlyAppDescription =>
      'Aplikace bude sledována kvůli aktualizacím, ale Updatium ji nebude stahovat ani instalovat.';

  @override
  String get cancelled => 'Zrušeno';

  @override
  String get appAlreadyAdded => 'Aplikace již přidána';

  @override
  String get alreadyUpToDateQuestion => 'Aplikace je již aktualizovaná?';

  @override
  String get addApp => 'Přidat aplikaci';

  @override
  String get appSourceURL => 'Zdrojová adresa URL aplikace';

  @override
  String get error => 'Chyba';

  @override
  String get add => 'Přidat';

  @override
  String get searchSomeSourcesLabel => 'Vyhledávání (pouze pro určité zdroje)';

  @override
  String get search => 'Hledat';

  @override
  String additionalOptsFor(String arg1) {
    return 'Další možnosti pro ';
  }

  @override
  String get supportedSources => 'Podporované zdroje';

  @override
  String get trackOnlyInBrackets => '(pouze sledování)';

  @override
  String get searchableInBrackets => '(s možností vyhledávání)';

  @override
  String get appsString => 'Aplikace';

  @override
  String get noApps => 'Žádné aplikace';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Žádné aplikace pro vybraný filtr';

  @override
  String byX(String arg1) {
    return 'Od ';
  }

  @override
  String percentProgress(String arg1) {
    return 'Pokrok: %';
  }

  @override
  String get pleaseWait => 'Počkejte prosím';

  @override
  String get updateAvailable => 'Aktualizace je k dispozici';

  @override
  String get notInstalled => 'Není nainstalováno';

  @override
  String get pseudoVersion => 'pseudoverze';

  @override
  String get selectAll => 'Vybrat vše';

  @override
  String deselectX(String arg1) {
    return 'Zrušit výběr ';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return 'Aplikace  bude odstraněna z aplikace Updatium, ale zůstane nainstalována v zařízení.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Odstranit vybrané aplikace?';

  @override
  String get removeSelectedApps => 'Odstranit vybrané aplikace';

  @override
  String updateX(String arg1) {
    return 'Aktualizovat ';
  }

  @override
  String installX(String arg1) {
    return 'Instalovat ';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Označit aplikaci \\n(pouze sledování)\\njako aktualizovanou';
  }

  @override
  String changeX(String arg1) {
    return 'Změnit ';
  }

  @override
  String get installUpdateApps => 'Instalovat/aktualizovat aplikace';

  @override
  String get installUpdateSelectedApps =>
      'Instalovat/aktualizovat vybrané aplikace';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Označit  vybraných aplikací jako aktuální?';
  }

  @override
  String get no => 'Ne';

  @override
  String get yes => 'Ano';

  @override
  String get markSelectedAppsUpdated =>
      'Označit vybrané aplikace jako aktuální';

  @override
  String get pinToTop => 'Připnout nahoru';

  @override
  String get unpinFromTop => 'Odepnout shora';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Obnovit stav instalace vybraných aplikací?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Stav instalace vybraných aplikací bude resetován.\\n\\nTo může být užitečné, pokud je verze aplikace zobrazená v aplikaci Updatium nesprávná z důvodu neúspěšných aktualizací nebo jiných problémů.';

  @override
  String get customLinkMessage =>
      'Tyto odkazy fungují na zařízeních s nainstalovaným Updatium';

  @override
  String get shareAppConfigLinks =>
      'Sdílet konfiguraci aplikace jako odkaz HTML';

  @override
  String get shareSelectedAppURLs => 'Sdílet adresy URL vybraných aplikací';

  @override
  String get resetInstallStatus => 'Obnovit stav instalace';

  @override
  String get more => 'Více';

  @override
  String get removeOutdatedFilter => 'Odstranit filtr neaktuálních aplikací';

  @override
  String get showOutdatedOnly => 'Zobrazovat pouze zastaralé aplikace';

  @override
  String get filter => 'Filtr';

  @override
  String get filterApps => 'Filtrovat aplikace';

  @override
  String get appName => 'Název aplikace';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Aktuální aplikace';

  @override
  String get nonInstalledApps => 'Nenainstalované aplikace';

  @override
  String get importExport => 'Dovoz / vývoz';

  @override
  String get settings => 'Nastavení';

  @override
  String exportedTo(String arg1) {
    return 'Exportováno do ';
  }

  @override
  String get updatiumExport => 'Export aplikace Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Neplatný vstup';

  @override
  String importedX(String arg1) {
    return 'Importováno ';
  }

  @override
  String get updatiumImport => 'Import aplikace Updatium';

  @override
  String get importFromURLList => 'Importovat ze seznamu adres';

  @override
  String get searchQuery => 'Vyhledávací dotaz';

  @override
  String get appURLList => 'Seznam adres aplikací';

  @override
  String get line => 'Linka';

  @override
  String searchX(String arg1) {
    return 'Vyhledávání ';
  }

  @override
  String get noResults => 'Nebyly nalezeny žádné výsledky';

  @override
  String importX(String arg1) {
    return 'Importovat ';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Importované aplikace mohou být nesprávně zobrazeny jako „nenainstalované“.\\nChcete-li to opravit, nainstalujte je znovu prostřednictvím aplikace Updatium.\\nNemá vliv na data aplikací.\\n\\nOvlivňuje pouze způsoby importu URL a třetích stran.';

  @override
  String get importErrors => 'Chyba importu';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return 'Importováno  z  aplikací.';
  }

  @override
  String get followingURLsHadErrors => 'U následujících adres došlo k chybám:';

  @override
  String get selectURL => 'Vybrat adresu';

  @override
  String get selectURLs => 'Select adresy';

  @override
  String get pick => 'Vybrat';

  @override
  String get theme => 'Motiv';

  @override
  String get dark => 'Tmavé';

  @override
  String get light => 'Světlé';

  @override
  String get followSystem => 'Podle systému';

  @override
  String get followSystemThemeExplanation =>
      'Používání motivu systému je možné pouze pomocí aplikací třetích stran';

  @override
  String get useBlackTheme => 'Použít čistě černý tmavý motiv';

  @override
  String get appSortBy => 'Seřadit podle';

  @override
  String get authorName => 'Autor/jméno';

  @override
  String get nameAuthor => 'Jméno/autor';

  @override
  String get asAdded => 'Přidáno';

  @override
  String get appSortOrder => 'Seřadit';

  @override
  String get ascending => 'Vzestupně';

  @override
  String get descending => 'Sestupně';

  @override
  String get bgUpdateCheckInterval => 'Interval kontroly aktualizace na pozadí';

  @override
  String get neverManualOnly => 'Nikdy – pouze ručně';

  @override
  String get appearance => 'Vzhled';

  @override
  String get pinUpdates => 'Připnout aplikace s aktualizacemi nahoru';

  @override
  String get updates => 'Aktualizace';

  @override
  String get sourceSpecific => 'Specifické pro zdroj';

  @override
  String get appSource => 'Zdroj aplikace';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Žádné protokoly';

  @override
  String get appLogs => 'Protokoly aplikace';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Zavřít';

  @override
  String get share => 'Sdílet';

  @override
  String get appNotFound => 'Aplikace nenalezena';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-export';

  @override
  String get pickAnAPK => 'Vybrat APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return ' má více než jeden balíček:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Vaše zařízení podporuje architekturu CPU .';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Vaše zařízení podporuje následující architektury CPU:';

  @override
  String get warning => 'Varování';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Zdroj aplikace je „“, ale balíček pro vydání pochází z „“. Pokračovat?';
  }

  @override
  String get updatesAvailable => 'Dostupné aktualizace';

  @override
  String get updatesAvailableNotifDescription =>
      'Upozorňuje uživatele, že jsou k dispozici aktualizace pro jednu nebo více aplikací sledovaných Updatium';

  @override
  String get noNewUpdates => 'Žádné nové aktualizace.';

  @override
  String xHasAnUpdate(String arg1) {
    return ' má aktualizaci.';
  }

  @override
  String get appsUpdated => 'Aplikace aktualizovány';

  @override
  String get appsNotUpdated => 'Nepodařilo se aktualizovat aplikace';

  @override
  String get appsUpdatedNotifDescription =>
      'Upozornit, že byly provedeny aktualizace jedné nebo více aplikací na pozadí';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return 'Aplikace  byla aktualizována na .';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Nepodařilo se aktualizovat  na .';
  }

  @override
  String get errorCheckingUpdates => 'Chyba kontroly aktualizací';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Zobrazit oznámení při neúspěšné kontrole aktualizací na pozadí';

  @override
  String get appsRemoved => 'Odstraněné aplikace';

  @override
  String get appsRemovedNotifDescription =>
      'Oznámit, že jedna nebo více aplikací bylo odstraněno z důvodu chyb při načítání';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return ' byla odstraněna z důvodu následující chyby: ';
  }

  @override
  String get completeAppInstallation => 'Dokončit instalaci aplikace';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium musí být otevřeno, aby bylo možné instalovat aplikace';

  @override
  String get completeAppInstallationNotifDescription =>
      'Vyzvat k návratu do Updatium pro dokončení instalace aplikací';

  @override
  String get checkingForUpdates => 'Zkontrolovat aktualizace';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Dočasné oznámení zobrazené při kontrole aktualizací';

  @override
  String get pleaseAllowInstallPerm =>
      'Povolte prosím aplikaci Updatium instalovat aplikace';

  @override
  String get trackOnly => 'Pouze sledovat';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Chyba ';
  }

  @override
  String get versionCorrectionDisabled =>
      'Oprava verze zakázána (zásuvný modul zřejmě nefunguje)';

  @override
  String get unknown => 'Neznám';

  @override
  String get none => 'Žádný';

  @override
  String get all => 'Všechny';

  @override
  String get never => 'Nikdy';

  @override
  String latestVersionX(String arg1) {
    return 'Nejnovější verze: ';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Nainstalovaná verze: ';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Poslední kontrola aktualizací: ';
  }

  @override
  String get remove => 'Odebrat';

  @override
  String get yesMarkUpdated => 'Ano, označit jako aktualizované';

  @override
  String get fdroid => 'Oficiální repozitář F-Droid';

  @override
  String get appIdOrName => 'ID nebo název aplikace';

  @override
  String get appId => 'ID aplikace';

  @override
  String get appWithIdOrNameNotFound =>
      'Žádná aplikace s tímto ID nebo názvem nebyla nalezena';

  @override
  String get reposHaveMultipleApps =>
      'Repozitáře mohou obsahovat více aplikací';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid repozitář třetí strany';

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
  String get install => 'Instalovat';

  @override
  String get markInstalled => 'Označit jako nainstalovaný';

  @override
  String get update => 'Aktualizovat';

  @override
  String get updated => 'Aktualizováno';

  @override
  String get markUpdated => 'Označit jako aktuální';

  @override
  String get additionalOptions => 'Další možnosti';

  @override
  String get disableVersionDetection => 'Deaktivovat detekci verze';

  @override
  String get noVersionDetectionExplanation =>
      'Tato možnost by měla být použita pouze u aplikace, kde detekce verzí nefunguje správně.';

  @override
  String downloadingX(String arg1) {
    return 'Stáhnout ';
  }

  @override
  String downloadX(String arg1) {
    return 'Stáhnout ';
  }

  @override
  String downloadedX(String arg1) {
    return 'Staženo ';
  }

  @override
  String get releaseAsset => 'Soubor vydání';

  @override
  String get downloadNotifDescription =>
      'Informuje uživatele o průběhu stahování aplikace';

  @override
  String get noAPKFound => 'Žádná APK nebyla nalezena';

  @override
  String get noVersionDetection => 'Žádná detekce verze';

  @override
  String get categorize => 'Kategorizovat';

  @override
  String get categories => 'Kategorie';

  @override
  String get category => 'Kategorie';

  @override
  String get noCategory => 'Žádná kategorie';

  @override
  String get noCategories => 'Žádné kategorie';

  @override
  String get deleteCategoriesQuestion => 'Smazat kategorie?';

  @override
  String get categoryDeleteWarning =>
      'Všechny aplikace v odstraněných kategoriích budou nastaveny na nekategorizované.';

  @override
  String get addCategory => 'Přidat kategorii';

  @override
  String get label => 'Popisek';

  @override
  String get language => 'Jazyk';

  @override
  String get copiedToClipboard => 'Zkopírováno do schránky';

  @override
  String get storagePermissionDenied => 'Oprávnění k ukládání odepřeno';

  @override
  String get selectedCategorizeWarning =>
      'Toto nahradí všechna stávající nastavení kategorií pro vybrané aplikace.';

  @override
  String get filterAPKsByRegEx => 'Filtrovat APK podle regulárního výrazu';

  @override
  String get removeFromUpdatium => 'Odebrat z Updatium';

  @override
  String get uninstallFromDevice => 'Odinstalovat ze zařízení';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Funguje pouze pro aplikace s vypnutou detekcí verze.';

  @override
  String get releaseDateAsVersion => 'Použít datum vydání jako verzi';

  @override
  String get releaseTitleAsVersion => 'Použít název vydání jako řetězec verze';

  @override
  String get releaseDateAsVersionExplanation =>
      'Tato možnost by měla být použita pouze u aplikace, kde detekce verzí nefunguje správně, ale je k dispozici datum vydání.';

  @override
  String get changes => 'Změny';

  @override
  String get releaseDate => 'Datum vydání';

  @override
  String get importFromURLsInFile =>
      'Importovat adresy URL ze souboru (např. OPML)';

  @override
  String get versionDetectionExplanation =>
      'Sloučit řetězec verze s verzí zjištěnou z OS';

  @override
  String get versionDetection => 'Detekce verze';

  @override
  String get standardVersionDetection => 'Standardní detekce verze';

  @override
  String get groupByCategory => 'Seskupit podle kategorie';

  @override
  String get listView => 'Zobrazení seznamu';

  @override
  String get gridView => 'Zobrazení mřížky';

  @override
  String get autoApkFilterByArch =>
      'Pokud je to možné, pokuste se filtrovat soubory APK podle architektury procesoru';

  @override
  String get autoLinkFilterByArch =>
      'Pokusit se filtrovat odkazy podle architektury procesoru, pokud je to možné';

  @override
  String get overrideSource => 'Přepsat zdroj';

  @override
  String get dontShowAgain => 'Nezobrazovat znovu';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Nezobrazovat varování pro „pouze sledované“';

  @override
  String get dontShowAPKOriginWarnings => 'Nezobrazovat varování o původu APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Přesunout nenainstalované aplikace na konec zobrazení Aplikace';

  @override
  String get hideNonInstalledApps => 'Skrýt neinstalované aplikace';

  @override
  String get gitlabPATLabel => 'Osobní přístupový token GitLab';

  @override
  String get about => 'Informace';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return ' vyžaduje další pověření (v nastavení)';
  }

  @override
  String get checkOnStart => 'Zkontrolovat aktualizace při spuštění';

  @override
  String get safeMode => 'Bezpečný režim';

  @override
  String get safeModeDescription =>
      'Skrýt stránku přidání aplikace a místo toho zobrazit Import/Export';

  @override
  String get safeModeAddAppDisabled =>
      'Přidání aplikace je v bezpečném režimu zakázáno';

  @override
  String get tryInferAppIdFromCode =>
      'Pokusit se určit ID aplikace ze zdrojového kódu';

  @override
  String get removeOnExternalUninstall =>
      'Automaticky odstranit externě odinstalované aplikace';

  @override
  String get pickHighestVersionCode => 'Automaticky vybrat nejvyšší verzi APK';

  @override
  String get checkUpdateOnDetailPage =>
      'Zkontrolovat aktualizaci při otevření stránky s podrobnostmi aplikace';

  @override
  String get disablePageTransitions => 'Zakázat animace pro přechody stránek';

  @override
  String get reversePageTransitions => 'Obrátit animace pro přechody stránek';

  @override
  String get minStarCount => 'Minimální počet hvězdiček';

  @override
  String get addInfoBelow => 'Přidat tuto informaci na konec stránky.';

  @override
  String get addInfoInSettings => 'Přidat tuto informaci do nastavení.';

  @override
  String get githubSourceNote =>
      'Limit požadavků služby GitHub lze obejít pomocí klíče API.';

  @override
  String get sortByLastLinkSegment =>
      'Seřadit pouze podle poslední části odkazu';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filtrovat seznam změn podle regulárního výrazu';

  @override
  String get customLinkFilterRegex =>
      'Vlastní filtr odkazů APK podle regulárního výrazu (výchozí: „.apk\$“)';

  @override
  String get appsPossiblyUpdated =>
      'Byly provedeny pokusy o aktualizaci aplikací';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Upozorňuje uživatele, že na pozadí mohly být provedeny aktualizace jedné nebo více aplikací';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return ' mohlo být aktualizováno na .';
  }

  @override
  String get enableBackgroundUpdates => 'Povolit aktualizace na pozadí';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Aktualizace na pozadí nemusí být možná pro všechny aplikace.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Úspěšnost instalace na pozadí lze určit pouze v případě, že je otevřeno Updatium.';

  @override
  String get verifyLatestTag => 'Ověřit značku „latest“';

  @override
  String get intermediateLinkRegex =>
      'Filtr pro návštěvu „prostředního“ odkazu';

  @override
  String get filterByLinkText => 'Filtrovat odkazy podle textu odkazu';

  @override
  String get matchLinksOutsideATags => 'Shoda odkazů mimo značky <a>';

  @override
  String get intermediateLinkNotFound => 'Připojený odkaz nenalezen';

  @override
  String get intermediateLink => 'Připojený odkaz';

  @override
  String get exemptFromBackgroundUpdates =>
      'Vyloučit z aktualizací na pozadí (je-li povoleno)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Zakázat aktualizace na pozadí, pokud není k dispozici Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Zakázat aktualizace na pozadí, pokud se zařízení nenabíjí';

  @override
  String get autoSelectHighestVersionCode =>
      'Automaticky vybrat APK s nejvyšším kódem verze';

  @override
  String get versionExtractionRegEx => 'Extrakce verze pomocí RegEx';

  @override
  String get trimVersionString => 'Oříznutí řetězce verze pomocí RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Shoda se skupinou k použití pro „“';
  }

  @override
  String get matchGroupToUse => 'Odpovídá použité skupině';

  @override
  String get highlightTouchTargets => 'Zvýraznit méně zjevné cíle dotyku';

  @override
  String get pickExportDir => 'Vybrat adresář pro export';

  @override
  String get autoExportOnChanges => 'Automatický export při změně';

  @override
  String get includeSettings => 'Zahrnout nastavení';

  @override
  String get filterVersionsByRegEx =>
      'Filtrovat verze podle regulárních výrazů';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Zkusit vybrat navrhovanou verzi APK';

  @override
  String get dontSortReleasesList => 'Seřadit vydání z rozhraní API';

  @override
  String get reverseSort => 'Obrácené třídění';

  @override
  String get takeFirstLink => 'Použít první odkaz';

  @override
  String get skipSort => 'Přeskočit třídění';

  @override
  String get debugMenu => 'Nabídka ladění';

  @override
  String get bgTaskStarted =>
      'Spuštěna úloha na pozadí - zkontrolujte protokoly.';

  @override
  String get runBgCheckNow => 'Spustit kontrolu aktualizací na pozadí nyní';

  @override
  String get versionExtractWholePage =>
      'Použít extrakci verze pomocí RegEx na celou stránku';

  @override
  String get installing => 'Instaluji';

  @override
  String get skipUpdateNotifications => 'Neposkytovat oznámení o aktualizaci';

  @override
  String get updatesAvailableNotifChannel => 'Dostupné aktualizace';

  @override
  String get appsUpdatedNotifChannel => 'Aplikace aktualizovány';

  @override
  String get appsPossiblyUpdatedNotifChannel =>
      'Byly provedeny pokusy o aktualizace aplikací';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Chyba při kontrole aktualizací';

  @override
  String get appsRemovedNotifChannel => 'Aplikace odstraněny';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Stáhnout ';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Dokončit instalaci aplikace';

  @override
  String get checkingForUpdatesNotifChannel => 'Zkontrolovat aktualizace';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Aktualizace kontrolovat pouze u nainstalovaných a sledovaných aplikací';

  @override
  String get supportFixedAPKURL =>
      'Odhadnout novější verzi na základě prvních třiceti číslic kontrolního součtu adresy URL APK, pokud není podporována jinak';

  @override
  String selectX(String arg1) {
    return 'Vybrat ';
  }

  @override
  String get parallelDownloads => 'Povolit souběžné stahování';

  @override
  String get useShizuku => 'K instalaci použít Shizuku nebo Sui';

  @override
  String get shizukuBinderNotFound => 'Shizuku neběží';

  @override
  String get shizukuOld => 'Stará verze Shizuku (<11) - aktualizujte ji';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku běží na Androidu < 8.1 s ADB - aktualizujte Android nebo místo toho použijte Sui';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Nastavit Google Play jako zdroj instalace (pokud se používá Shizuku)';

  @override
  String get useSystemFont => 'Použít systémové písmo';

  @override
  String get useVersionCodeAsOSVersion =>
      'Použít kód verze aplikace jako verzi zjištěnou OS';

  @override
  String get requestHeader => 'Hlavička požadavku';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Použít poslední nahraný soubor jako datum vydání';

  @override
  String get defaultPseudoVersioningMethod => 'Výchozí metoda pseudoverze';

  @override
  String get partialAPKHash => 'Částečný hash APK';

  @override
  String get directAPKLink => 'Přímý odkaz APK';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'Název';

  @override
  String get sortMethod => 'Metoda třídění';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload => 'Obnovit údaje o aplikaci před stažením';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'Pseudoverze se používá';

  @override
  String get installed => 'Nainstalováno';

  @override
  String get latest => 'Nejnovější';

  @override
  String get invertRegEx => 'Invertovat regulární výraz';

  @override
  String get note => 'Poznámka';

  @override
  String selfHostedNote(String arg1) {
    return 'Rozbalovací seznam „“ lze použít pro přístup k vlastním instancím libovolného zdroje.';
  }

  @override
  String get badDownload =>
      'APK nelze analyzovat (nekompatibilní nebo částečné stažení)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Sdílet nové aplikace s aplikací AppVerifier (pokud je k dispozici)';

  @override
  String get appVerifierInstructionToast =>
      'Sdílejte do aplikace AppVerifier a po dokončení se sem vraťte.';

  @override
  String get wiki => 'Nápověda/Wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Povolit nezabezpečené požadavků HTTP';

  @override
  String get stayOneVersionBehind =>
      'Zůstaňte o jednu verzi pozadu za nejnovější';

  @override
  String get useFirstApkOfVersion =>
      'Automatický výběr prvního z více souborů APK';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get smartname => 'Název (chytrý)';

  @override
  String get welcome => 'Vítejte na';

  @override
  String get documentationLinksNote =>
      'Níže odkazovaná stránka Updatium GitHub obsahuje odkazy na videa, články, diskuse a další zdroje, které vám pomohou pochopit, jak aplikaci používat.';

  @override
  String get batteryOptimizationNote =>
      'Upozorňujeme, že stahování na pozadí může fungovat spolehlivěji, pokud v nastavení aplikace Updatium přepnete na „službu v popředí“ a/nebo v nastavení operačního systému pro Updatium vypnete optimalizaci baterie.';

  @override
  String fileDeletionError(String arg1) {
    return 'Soubor se nepodařilo odstranit (zkuste jej odstranit ručně a akci opakujte): „“';
  }

  @override
  String get foregroundService => 'Služba Updatium na popředí';

  @override
  String get foregroundServiceExplanation =>
      'Použít službu v popředí pro kontrolu aktualizací (spolehlivější, spotřebovává více energie)';

  @override
  String get fgServiceNotice =>
      'Toto oznámení je nutné pro kontrolu aktualizací na pozadí (lze jej skrýt v nastavení systému)';

  @override
  String get excludeSecrets => 'Vyloučit tajemství';

  @override
  String get includeZips => 'Zahrnout soubory ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrování souborů APK uvnitř ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Společnost Google oznámila, že počínaje rokem 2026 / 2027 budou všechny aplikace na \\\"certifikovaných\\\" zařízeních pro Android vyžadovat, aby vývojář předložil osobní údaje o identitě přímo společnosti Google.\\n\\nPo této době, Updatium může přestat pracovat na certifikovaných Android zařízeních.';

  @override
  String get googleVerificationWarningP2 =>
      'Další informace získáte na adrese https: / / keepandroidopen.org.';

  @override
  String get googleVerificationWarningP3 =>
      'Všimněte si, že v krátkodobém horizontu může být i nadále možné instalovat \\\"neověřené\\\" (nevyhovující) aplikace prostřednictvím procesu \\\"pokročilého toku\\\", který Google slíbil implementovat po širokém odporu k jejich oznámení, ale neupřesnili, jak by to mělo fungovat, takže není jasné, zda bude skutečně zachovávat uživatelskou svobodu jakýmkoli praktickým způsobem.\\n\\nV každém případě je krok společnosti Google významným krokem ke konci volného, všeobecného výpočetní techniky pro jednotlivce.\\n\\nNecertifikované Osy, jako je GrapheneOS, by tím neměly být ovlivněny, pokud budou nadále existovat.';

  @override
  String get multipleSigners => 'Několik signers';

  @override
  String get securityDisclaimerTitle =>
      'Bezpečnostní a Právní Zřeknutí se Odpovědnosti';

  @override
  String get license => 'Licence';

  @override
  String get licenseText =>
      'Tato aplikace je distribuována pod licencí GPL v3.';

  @override
  String get disclaimer => 'Zřeknutí se odpovědnosti';

  @override
  String get disclaimerText =>
      'Tato aplikace nedistribuuje, nehostuje ani neověřuje žádné externí aplikace. Uživatel nese plnou odpovědnost za bezpečnost a legality jakéhokoli softwaru instalovaného prostřednictvím tohoto nástroje.\\n\\nhttps://github.com/omeritzics/Updatium je jediné oficiální místo pro stažení Updatia - důrazně se nedoporučuje stahovat jej z jiných míst, protože stahování z neoficiálních zdrojů není bezpečné.';

  @override
  String get privacy => 'Soukromí';

  @override
  String get privacyText =>
      'Tato aplikace je zaměřena na soukromí a nesbírá osobní údaje.';

  @override
  String get acceptAndContinue => 'Přijmout a pokračovat';

  @override
  String get decline => 'Odmítnout';

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
  String get aPKLinkHash => 'APK link hash';

  @override
  String get gHReqPrefix =>
      '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get continueAction => 'Continue';

  @override
  String apps(int count) {
    return 'Aplikace';
  }

  @override
  String apk(int count) {
    return 'APK';
  }

  @override
  String minute(int count) {
    return 'minut';
  }

  @override
  String hour(int count) {
    return 'hodin';
  }

  @override
  String day(int count) {
    return 'dní';
  }
}
