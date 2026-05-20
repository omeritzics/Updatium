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
class TranslationsCs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.cs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <cs>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsCs _root = this; // ignore: unused_field

	@override 
	TranslationsCs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCs(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Žádná platná adresa URL aplikace {}';
	@override String get noReleaseFound => 'Nebyla nalezena odpovídající verze';
	@override String get noVersionFound => 'Nelze určit verzi vydání';
	@override String get urlMatchesNoSource => 'URL neodpovídá žádnému známému zdroji';
	@override String get cantInstallOlderVersion => 'Nelze nainstalovat starší verzi aplikace';
	@override String get appIdMismatch => 'ID staženého balíčku neodpovídá ID existující aplikace';
	@override String get functionNotImplemented => 'Tato třída nemá implementovánu tuto funkci';
	@override String get placeholder => 'Zástupce';
	@override String get someErrors => 'Došlo k chybám';
	@override String get unexpectedError => 'Neočekávaná chyba';
	@override String get ok => 'OK';
	@override String get and => 'a';
	@override String get githubPATLabel => 'Osobní přístupový token GitHub';
	@override String get includePrereleases => 'Zahrnout předběžná vydání';
	@override String get fallbackToOlderReleases => 'Přechod na starší verze';
	@override String get filterReleaseTitlesByRegEx => 'Filtrovat názvy verzí podle regulárního výrazu';
	@override String get invalidRegEx => 'Neplatný regulární výraz';
	@override String get noDescription => 'Žádný popis';
	@override String get cancel => 'Zrušit';
	@override String get kContinue => 'Pokračovat';
	@override String get requiredInBrackets => '(vyžadováno)';
	@override String get dropdownNoOptsError => 'CHYBA: ROZBALOVACÍ NABÍDKA MUSÍ MÍT ALESPOŇ JEDNU MOŽNOST';
	@override String get color => 'Barvu';
	@override String get standard => 'Standardní';
	@override String get custom => 'Vlastní';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Použít barvy Material You';
	@override String get githubStarredRepos => 'Repozitáře na GitHubu označené hvězdičkou';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Uživatelské jméno';
	@override String get wrongArgNum => 'Nesprávný počet zadaných argumentů';
	@override String get xIsTrackOnly => '{} je určeno pouze pro sledování';
	@override String get source => 'Zdroj';
	@override String get app => 'Aplikace';
	@override String get appsFromSourceAreTrackOnly => 'Aplikace z tohoto zdroje jsou „pouze pro sledování“.';
	@override String get youPickedTrackOnly => 'Vybrali jste možnost „pouze sledovat“.';
	@override String get trackOnlyAppDescription => 'Aplikace bude sledována kvůli aktualizacím, ale Updatium ji nebude stahovat ani instalovat.';
	@override String get cancelled => 'Zrušeno';
	@override String get appAlreadyAdded => 'Aplikace již přidána';
	@override String get alreadyUpToDateQuestion => 'Aplikace je již aktualizovaná?';
	@override String get addApp => 'Přidat aplikaci';
	@override String get appSourceURL => 'Zdrojová adresa URL aplikace';
	@override String get error => 'Chyba';
	@override String get add => 'Přidat';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Vyhledávání (pouze pro určité zdroje)';
	@override String get search => 'Hledat';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Další možnosti pro {}';
	@override String get supportedSources => 'Podporované zdroje';
	@override String get trackOnlyInBrackets => '(pouze sledování)';
	@override String get searchableInBrackets => '(s možností vyhledávání)';
	@override String get appsString => 'Aplikace';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Žádné aplikace';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Žádné aplikace pro vybraný filtr';
	@override String get byX => 'Od {}';
	@override String get percentProgress => 'Pokrok: {}%';
	@override String get pleaseWait => 'Počkejte prosím';
	@override String get updateAvailable => 'Aktualizace je k dispozici';
	@override String get notInstalled => 'Není nainstalováno';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudoverze';
	@override String get selectAll => 'Vybrat vše';
	@override String get deselectX => 'Zrušit výběr {}';
	@override String get xWillBeRemovedButRemainInstalled => 'Aplikace {} bude odstraněna z aplikace Updatium, ale zůstane nainstalována v zařízení.';
	@override String get removeSelectedAppsQuestion => 'Odstranit vybrané aplikace?';
	@override String get removeSelectedApps => 'Odstranit vybrané aplikace';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Aktualizovat {}';
	@override String get installX => 'Instalovat {}';
	@override String get markXTrackOnlyAsUpdated => 'Označit aplikaci {}\n(pouze sledování)\njako aktualizovanou';
	@override String get changeX => 'Změnit {}';
	@override String get installUpdateApps => 'Instalovat/aktualizovat aplikace';
	@override String get installUpdateSelectedApps => 'Instalovat/aktualizovat vybrané aplikace';
	@override String get markXSelectedAppsAsUpdated => 'Označit {} vybraných aplikací jako aktuální?';
	@override String get no => 'Ne';
	@override String get yes => 'Ano';
	@override String get markSelectedAppsUpdated => 'Označit vybrané aplikace jako aktuální';
	@override String get pinToTop => 'Připnout nahoru';
	@override String get unpinFromTop => 'Odepnout shora';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Obnovit stav instalace vybraných aplikací?';
	@override String get installStatusOfXWillBeResetExplanation => 'Stav instalace vybraných aplikací bude resetován.\n\nTo může být užitečné, pokud je verze aplikace zobrazená v aplikaci Updatium nesprávná z důvodu neúspěšných aktualizací nebo jiných problémů.';
	@override String get customLinkMessage => 'Tyto odkazy fungují na zařízeních s nainstalovaným Updatium';
	@override String get shareAppConfigLinks => 'Sdílet konfiguraci aplikace jako odkaz HTML';
	@override String get resetInstallStatus => 'Obnovit stav instalace';
	@override String get more => 'Více';
	@override String get removeOutdatedFilter => 'Odstranit filtr neaktuálních aplikací';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Zobrazovat pouze zastaralé aplikace';
	@override String get filter => 'Filtr';
	@override String get filterApps => 'Filtrovat aplikace';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Název aplikace';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Aktuální aplikace';
	@override String get nonInstalledApps => 'Nenainstalované aplikace';
	@override String get importExport => 'Dovoz / vývoz';
	@override String get settings => 'Nastavení';
	@override String get exportedTo => 'Exportováno do {}';
	@override String get updatiumExport => 'Export aplikace Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Neplatný vstup';
	@override String get importedX => 'Importováno {}';
	@override String get updatiumImport => 'Import aplikace Updatium';
	@override String get importFromURLList => 'Importovat ze seznamu adres';
	@override String get searchQuery => 'Vyhledávací dotaz';
	@override String get appURLList => 'Seznam adres aplikací';
	@override String get line => 'Linka';
	@override String get searchX => 'Vyhledávání {}';
	@override String get noResults => 'Nebyly nalezeny žádné výsledky';
	@override String get importX => 'Importovat {}';
	@override String get importedAppsIdDisclaimer => 'Importované aplikace mohou být nesprávně zobrazeny jako „nenainstalované“.\nChcete-li to opravit, nainstalujte je znovu prostřednictvím aplikace Updatium.\nNemá vliv na data aplikací.\n\nOvlivňuje pouze způsoby importu URL a třetích stran.';
	@override String get importErrors => 'Chyba importu';
	@override String get importedXOfYApps => 'Importováno {} z {} aplikací.';
	@override String get followingURLsHadErrors => 'U následujících adres došlo k chybám:';
	@override String get selectURL => 'Vybrat adresu';
	@override String get selectURLs => 'Select adresy';
	@override String get pick => 'Vybrat';
	@override String get theme => 'Motiv';
	@override String get dark => 'Tmavé';
	@override String get light => 'Světlé';
	@override String get followSystem => 'Podle systému';
	@override String get followSystemThemeExplanation => 'Používání motivu systému je možné pouze pomocí aplikací třetích stran';
	@override String get useBlackTheme => 'Použít čistě černý tmavý motiv';
	@override String get appSortBy => 'Seřadit podle';
	@override String get authorName => 'Autor/jméno';
	@override String get nameAuthor => 'Jméno/autor';
	@override String get asAdded => 'Přidáno';
	@override String get appSortOrder => 'Seřadit';
	@override String get ascending => 'Vzestupně';
	@override String get descending => 'Sestupně';
	@override String get bgUpdateCheckInterval => 'Interval kontroly aktualizace na pozadí';
	@override String get neverManualOnly => 'Nikdy – pouze ručně';
	@override String get appearance => 'Vzhled';
	@override String get pinUpdates => 'Připnout aplikace s aktualizacemi nahoru';
	@override String get updates => 'Aktualizace';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Specifické pro zdroj';
	@override String get appSource => 'Zdroj aplikace';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Žádné protokoly';
	@override String get appLogs => 'Protokoly aplikace';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Zavřít';
	@override String get share => 'Sdílet';
	@override String get appNotFound => 'Aplikace nenalezena';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Vybrat APK';
	@override String get appHasMoreThanOnePackage => '{} má více než jeden balíček:';
	@override String get deviceSupportsXArch => 'Vaše zařízení podporuje architekturu CPU {}.';
	@override String get deviceSupportsFollowingArchs => 'Vaše zařízení podporuje následující architektury CPU:';
	@override String get warning => 'Varování';
	@override String get sourceIsXButPackageFromYPrompt => 'Zdroj aplikace je „{}“, ale balíček pro vydání pochází z „{}“. Pokračovat?';
	@override String get updatesAvailable => 'Dostupné aktualizace';
	@override String get updatesAvailableNotifDescription => 'Upozorňuje uživatele, že jsou k dispozici aktualizace pro jednu nebo více aplikací sledovaných Updatium';
	@override String get noNewUpdates => 'Žádné nové aktualizace.';
	@override String get xHasAnUpdate => '{} má aktualizaci.';
	@override String get appsUpdated => 'Aplikace aktualizovány';
	@override String get appsNotUpdated => 'Nepodařilo se aktualizovat aplikace';
	@override String get appsUpdatedNotifDescription => 'Upozornit, že byly provedeny aktualizace jedné nebo více aplikací na pozadí';
	@override String get xWasUpdatedToY => 'Aplikace {} byla aktualizována na {}.';
	@override String get xWasNotUpdatedToY => 'Nepodařilo se aktualizovat {} na {}.';
	@override String get errorCheckingUpdates => 'Chyba kontroly aktualizací';
	@override String get errorCheckingUpdatesNotifDescription => 'Zobrazit oznámení při neúspěšné kontrole aktualizací na pozadí';
	@override String get appsRemoved => 'Odstraněné aplikace';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Oznámit, že jedna nebo více aplikací bylo odstraněno z důvodu chyb při načítání';
	@override String get xWasRemovedDueToErrorY => '{} byla odstraněna z důvodu následující chyby: {}';
	@override String get completeAppInstallation => 'Dokončit instalaci aplikace';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium musí být otevřeno, aby bylo možné instalovat aplikace';
	@override String get completeAppInstallationNotifDescription => 'Vyzvat k návratu do Updatium pro dokončení instalace aplikací';
	@override String get checkingForUpdates => 'Zkontrolovat aktualizace';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Dočasné oznámení zobrazené při kontrole aktualizací';
	@override String get pleaseAllowInstallPerm => 'Povolte prosím aplikaci Updatium instalovat aplikace';
	@override String get trackOnly => 'Pouze sledovat';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Chyba {}';
	@override String get versionCorrectionDisabled => 'Oprava verze zakázána (zásuvný modul zřejmě nefunguje)';
	@override String get unknown => 'Neznám';
	@override String get none => 'Žádný';
	@override String get all => 'Všechny';
	@override String get never => 'Nikdy';
	@override String get latestVersion => 'Nejnovější verze';
	@override String get installedVersionX => 'Nainstalovaná verze: {}';
	@override String get lastUpdateCheckX => 'Poslední kontrola aktualizací: {}';
	@override String get remove => 'Odebrat';
	@override String get quickLinks => 'Rychlé odkazy';
	@override String get yesMarkUpdated => 'Ano, označit jako aktualizované';
	@override String get fdroid => 'Oficiální repozitář F-Droid';
	@override String get appIdOrName => 'ID nebo název aplikace';
	@override String get appId => 'ID aplikace';
	@override String get appWithIdOrNameNotFound => 'Žádná aplikace s tímto ID nebo názvem nebyla nalezena';
	@override String get reposHaveMultipleApps => 'Repozitáře mohou obsahovat více aplikací';
	@override String get fdroidThirdPartyRepo => 'F-Droid repozitář třetí strany';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instalovat';
	@override String get markInstalled => 'Označit jako nainstalovaný';
	@override String get update => 'Aktualizovat';
	@override String get updated => 'Aktualizováno';
	@override String get markUpdated => 'Označit jako aktuální';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Další možnosti';
	@override String get disableVersionDetection => 'Deaktivovat detekci verze';
	@override String get noVersionDetectionExplanation => 'Tato možnost by měla být použita pouze u aplikace, kde detekce verzí nefunguje správně.';
	@override String get downloadingX => 'Stáhnout {}';
	@override String get downloadX => 'Stáhnout {}';
	@override String get downloadedX => 'Staženo {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Soubor vydání';
	@override String get downloadNotifDescription => 'Informuje uživatele o průběhu stahování aplikace';
	@override String get noAPKFound => 'Žádná APK nebyla nalezena';
	@override String get noVersionDetection => 'Žádná detekce verze';
	@override String get categorize => 'Kategorizovat';
	@override String get categories => 'Kategorie';
	@override String get category => 'Kategorie';
	@override String get noCategory => 'Žádná kategorie';
	@override String get noCategories => 'Žádné kategorie';
	@override String get categoryDeleteQuestion => 'Smazat kategorie?';
	@override String get categoryDeleteWarning => 'Všechny aplikace v odstraněných kategoriích budou nastaveny na nekategorizované.';
	@override String get addCategory => 'Přidat kategorii';
	@override String get label => 'Popisek';
	@override String get language => 'Jazyk';
	@override String get copiedToClipboard => 'Zkopírováno do schránky';
	@override String get storagePermissionDenied => 'Oprávnění k ukládání odepřeno';
	@override String get selectedCategorizeWarning => 'Toto nahradí všechna stávající nastavení kategorií pro vybrané aplikace.';
	@override String get filterAPKsByRegEx => 'Filtrovat APK podle regulárního výrazu';
	@override String get removeFromUpdatium => 'Odebrat z Updatium';
	@override String get uninstallFromDevice => 'Odinstalovat ze zařízení';
	@override String get onlyWorksWithNonVersionDetectApps => 'Funguje pouze pro aplikace s vypnutou detekcí verze.';
	@override String get releaseDateAsVersion => 'Použít datum vydání jako verzi';
	@override String get releaseTitleAsVersion => 'Použít název vydání jako řetězec verze';
	@override String get releaseDateAsVersionExplanation => 'Tato možnost by měla být použita pouze u aplikace, kde detekce verzí nefunguje správně, ale je k dispozici datum vydání.';
	@override String get changes => 'Změny';
	@override String get releaseDate => 'Datum vydání';
	@override String get importFromURLsInFile => 'Importovat adresy URL ze souboru (např. OPML)';
	@override String get versionDetectionExplanation => 'Sloučit řetězec verze s verzí zjištěnou z OS';
	@override String get versionDetection => 'Detekce verze';
	@override String get standardVersionDetection => 'Standardní detekce verze';
	@override String get groupByCategory => 'Seskupit podle kategorie';
	@override String get listView => 'Zobrazení seznamu';
	@override String get gridView => 'Zobrazení mřížky';
	@override String get autoApkFilterByArch => 'Pokud je to možné, pokuste se filtrovat soubory APK podle architektury procesoru';
	@override String get autoLinkFilterByArch => 'Pokusit se filtrovat odkazy podle architektury procesoru, pokud je to možné';
	@override String get overrideSource => 'Přepsat zdroj';
	@override String get dontShowAgain => 'Nezobrazovat znovu';
	@override String get dontShowTrackOnlyWarnings => 'Nezobrazovat varování pro „pouze sledované“';
	@override String get dontShowAPKOriginWarnings => 'Nezobrazovat varování o původu APK';
	@override String get moveNonInstalledAppsToBottom => 'Přesunout nenainstalované aplikace na konec zobrazení Aplikace';
	@override String get gitlabPATLabel => 'Osobní přístupový token GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'O aplikaci';
	@override String get requiresCredentialsInSettings => '{} vyžaduje další pověření (v nastavení)';
	@override String get checkOnStart => 'Zkontrolovat aktualizace při spuštění';
	@override String get safeMode => 'Bezpečný režim';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Přidání aplikace je v bezpečném režimu zakázáno';
	@override String get tryInferAppIdFromCode => 'Pokusit se určit ID aplikace ze zdrojového kódu';
	@override String get removeOnExternalUninstall => 'Automaticky odstranit externě odinstalované aplikace';
	@override String get pickHighestVersionCode => 'Automaticky vybrat nejvyšší verzi APK';
	@override String get checkUpdateOnDetailPage => 'Zkontrolovat aktualizaci při otevření stránky s podrobnostmi aplikace';
	@override String get disablePageTransitions => 'Zakázat animace pro přechody stránek';
	@override String get reversePageTransitions => 'Obrátit animace pro přechody stránek';
	@override String get minStarCount => 'Minimální počet hvězdiček';
	@override String get addInfoBelow => 'Přidat tuto informaci na konec stránky.';
	@override String get addInfoInSettings => 'Přidat tuto informaci do nastavení.';
	@override String get githubSourceNote => 'Limit požadavků služby GitHub lze obejít pomocí klíče API.';
	@override String get sortByLastLinkSegment => 'Seřadit pouze podle poslední části odkazu';
	@override String get filterReleaseNotesByRegEx => 'Filtrovat seznam změn podle regulárního výrazu';
	@override String get customLinkFilterRegex => 'Vlastní filtr odkazů APK podle regulárního výrazu (výchozí: „.apk$“)';
	@override String get appsPossiblyUpdated => 'Byly provedeny pokusy o aktualizaci aplikací';
	@override String get appsPossiblyUpdatedNotifDescription => 'Upozorňuje uživatele, že na pozadí mohly být provedeny aktualizace jedné nebo více aplikací';
	@override String get xWasPossiblyUpdatedToY => '{} mohlo být aktualizováno na {}.';
	@override String get enableBackgroundUpdates => 'Povolit aktualizace na pozadí';
	@override String get backgroundUpdateReqsExplanation => 'Aktualizace na pozadí nemusí být možná pro všechny aplikace.';
	@override String get backgroundUpdateLimitsExplanation => 'Úspěšnost instalace na pozadí lze určit pouze v případě, že je otevřeno Updatium.';
	@override String get verifyLatestTag => 'Ověřit značku „latest“';
	@override String get intermediateLinkRegex => 'Filtr pro návštěvu „prostředního“ odkazu';
	@override String get filterByLinkText => 'Filtrovat odkazy podle textu odkazu';
	@override String get matchLinksOutsideATags => 'Shoda odkazů mimo značky <a>';
	@override String get intermediateLinkNotFound => 'Připojený odkaz nenalezen';
	@override String get intermediateLink => 'Připojený odkaz';
	@override String get exemptFromBackgroundUpdates => 'Vyloučit z aktualizací na pozadí (je-li povoleno)';
	@override String get bgUpdatesOnWiFiOnly => 'Zakázat aktualizace na pozadí, pokud není k dispozici Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Zakázat aktualizace na pozadí, pokud se zařízení nenabíjí';
	@override String get autoSelectHighestVersionCode => 'Automaticky vybrat APK s nejvyšším kódem verze';
	@override String get versionExtractionRegEx => 'Extrakce verze pomocí RegEx';
	@override String get trimVersionString => 'Oříznutí řetězce verze pomocí RegEx';
	@override String get matchGroupToUseForX => 'Shoda se skupinou k použití pro „{}“';
	@override String get matchGroupToUse => 'Odpovídá použité skupině';
	@override String get highlightTouchTargets => 'Zvýraznit méně zjevné cíle dotyku';
	@override String get pickExportDir => 'Vybrat adresář pro export';
	@override String get autoExportOnChanges => 'Automatický export při změně';
	@override String get includeSettings => 'Zahrnout nastavení';
	@override String get filterVersionsByRegEx => 'Filtrovat verze podle regulárních výrazů';
	@override String get trySelectingSuggestedVersionCode => 'Zkusit vybrat navrhovanou verzi APK';
	@override String get dontSortReleasesList => 'Seřadit vydání z rozhraní API';
	@override String get reverseSort => 'Obrácené třídění';
	@override String get takeFirstLink => 'Použít první odkaz';
	@override String get skipSort => 'Přeskočit třídění';
	@override String get debugMenu => 'Nabídka ladění';
	@override String get bgTaskStarted => 'Spuštěna úloha na pozadí - zkontrolujte protokoly.';
	@override String get runBgCheckNow => 'Spustit kontrolu aktualizací na pozadí nyní';
	@override String get versionExtractWholePage => 'Použít extrakci verze pomocí RegEx na celou stránku';
	@override String get installing => 'Instaluji';
	@override String get skipUpdateNotifications => 'Neposkytovat oznámení o aktualizaci';
	@override String get updatesAvailableNotifChannel => 'Dostupné aktualizace';
	@override String get appsUpdatedNotifChannel => 'Aplikace aktualizovány';
	@override String get appsPossiblyUpdatedNotifChannel => 'Byly provedeny pokusy o aktualizace aplikací';
	@override String get errorCheckingUpdatesNotifChannel => 'Chyba při kontrole aktualizací';
	@override String get appsRemovedNotifChannel => 'Aplikace odstraněny';
	@override String get downloadingXNotifChannel => 'Stáhnout {}';
	@override String get completeAppInstallationNotifChannel => 'Dokončit instalaci aplikace';
	@override String get checkingForUpdatesNotifChannel => 'Zkontrolovat aktualizace';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Aktualizace kontrolovat pouze u nainstalovaných a sledovaných aplikací';
	@override String get supportFixedAPKURL => 'Odhadnout novější verzi na základě prvních třiceti číslic kontrolního součtu adresy URL APK, pokud není podporována jinak';
	@override String get selectX => 'Vybrat {}';
	@override String get parallelDownloads => 'Povolit souběžné stahování';
	@override String get useShizuku => 'K instalaci použít Shizuku nebo Sui';
	@override String get shizukuBinderNotFound => 'Shizuku neběží';
	@override String get shizukuOld => 'Stará verze Shizuku (<11) - aktualizujte ji';
	@override String get shizukuOldAndroidWithADB => 'Shizuku běží na Androidu < 8.1 s ADB - aktualizujte Android nebo místo toho použijte Sui';
	@override String get shizukuPretendToBeGooglePlay => 'Nastavit Google Play jako zdroj instalace (pokud se používá Shizuku)';
	@override String get useSystemFont => 'Použít systémové písmo';
	@override String get useVersionCodeAsOSVersion => 'Použít kód verze aplikace jako verzi zjištěnou OS';
	@override String get requestHeader => 'Hlavička požadavku';
	@override String get useLatestAssetDateAsReleaseDate => 'Použít poslední nahraný soubor jako datum vydání';
	@override String get defaultPseudoVersioningMethod => 'Výchozí metoda pseudoverze';
	@override String get partialAPKHash => 'Částečný hash APK';
	@override String get APKLinkHash => 'Odkaz APK Hash';
	@override String get directAPKLink => 'Přímý odkaz APK';
	@override String get pseudoVersionInUse => 'Pseudoverze se používá';
	@override String get installedVersion => 'Nainstalováno';
	@override String get installed => 'Nainstalováno';
	@override String get notInstalledApps => 'Nenainstalováno';
	@override String get latest => 'Nejnovější';
	@override String get invertRegEx => 'Invertovat regulární výraz';
	@override String get note => 'Poznámka';
	@override String get selfHostedNote => 'Rozbalovací seznam „{}“ lze použít pro přístup k vlastním instancím libovolného zdroje.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK nelze analyzovat (nekompatibilní nebo částečné stažení)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Sdílet nové aplikace s aplikací AppVerifier (pokud je k dispozici)';
	@override String get appVerifierInstructionToast => 'Sdílejte do aplikace AppVerifier a po dokončení se sem vraťte.';
	@override String get wiki => 'Nápověda/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Povolit nezabezpečené požadavků HTTP';
	@override String get stayOneVersionBehind => 'Zůstaňte o jednu verzi pozadu za nejnovější';
	@override String get useFirstApkOfVersion => 'Automatický výběr prvního z více souborů APK';
	@override String get refreshBeforeDownload => 'Obnovit údaje o aplikaci před stažením';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Název';
	@override String get smartname => 'Název (chytrý)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Metoda třídění';
	@override String get welcome => 'Vítejte na';
	@override String get batteryOptimizationNote => 'Upozorňujeme, že stahování na pozadí může fungovat spolehlivěji, pokud v nastavení aplikace Updatium přepnete na „službu v popředí“ a/nebo v nastavení operačního systému pro Updatium vypnete optimalizaci baterie.';
	@override String get fileDeletionError => 'Soubor se nepodařilo odstranit (zkuste jej odstranit ručně a akci opakujte): „{}“';
	@override String get foregroundService => 'Služba Updatium na popředí';
	@override String get foregroundServiceExplanation => 'Použít službu v popředí pro kontrolu aktualizací (spolehlivější, spotřebovává více energie)';
	@override String get fgServiceNotice => 'Toto oznámení je nutné pro kontrolu aktualizací na pozadí (lze jej skrýt v nastavení systému)';
	@override String get excludeSecrets => 'Vyloučit tajemství';
	@override String get GHReqPrefix => 'instance \'omeritzics/Updatium\' pro požadavky GitHubu';
	@override String get includeZips => 'Zahrnout soubory ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrování souborů APK uvnitř ZIP';
	@override String get multipleSigners => 'Několik signers';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Odstranit aplikaci?',
		other: 'Odstranit aplikace?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Příliš mnoho požadavků (limit požadavků) - zkuste to znovu za {count} minutu',
		few: 'Příliš mnoho požadavků (limit požadavků) - zkuste to znovu za {count} minuty',
		other: 'Příliš mnoho požadavků (limit požadavků) - zkuste to znovu za {count} minut',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Při kontrole aktualizací na pozadí byla zjištěna {error}, opakování bude naplánováno za {count} minutu',
		few: 'Při kontrole aktualizací na pozadí byla zjištěna {error}, opakování bude naplánováno za {count} minuty',
		other: 'Při kontrole aktualizací na pozadí byla zjištěna {error}, opakování bude naplánováno za {count} minut',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Při kontrole aktualizací na pozadí nalezena {count} aktualizace – v případě potřeby bude upozorněn uživatel',
		few: 'Při kontrole aktualizací na pozadí nalezeny {count} aktualizace – v případě potřeby bude upozorněn uživatel',
		other: 'Při kontrole aktualizací na pozadí nalezeno {count} aktualizací – v případě potřeby bude upozorněn uživatel',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{count} aplikace',
		few: '{count} aplikace',
		other: '{count} aplikací',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{count} adresa',
		few: '{count} adresy',
		other: '{count} adres',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{count} minuta',
		few: '{count} minuty',
		other: '{count} minut',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{count} hodina',
		few: '{count} hodiny',
		other: '{count} hodin',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{count} den',
		few: '{count} dny',
		other: '{count} dní',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Vymazán {n} záznam (před = {before}, po = {after})',
		few: 'Vymazány {n} záznamy (před = {before}, po = {after})',
		other: 'Vymazáno {n} záznamů (před = {before}, po = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{app} a 1 další aplikace mají aktualizace.',
		few: '{app} a {count} další aplikace mají aktualizace.',
		other: '{app} a {count} dalších aplikací má aktualizace.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{app} a 1 další aplikace byly aktualizovány.',
		few: '{app} a {count} další aplikace byly aktualizovány.',
		other: '{app} a {count} dalších aplikací bylo aktualizováno.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Nepodařilo se aktualizovat {app} a 1 další aplikaci.',
		few: 'Nepodařilo se aktualizovat {app} a {count} další aplikace.',
		other: 'Nepodařilo se aktualizovat {app} a {count} dalších aplikací.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{app} a 1 další aplikace možná byly aktualizovány.',
		few: '{app} a {count} další aplikace možná byly aktualizovány.',
		other: '{app} a {count} dalších aplikací možná bylo aktualizováno.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n,
		one: 'Haš osvědčení',
		other: 'Uzávěry certifikátů',
	);
	@override String get securityDisclaimerTitle => 'Bezpečnostní a Právní Zřeknutí se Odpovědnosti';
	@override String get license => 'Licence';
	@override String get licenseText => 'Tato aplikace je distribuována pod licencí GPL v3.';
	@override String get disclaimer => 'Zřeknutí se odpovědnosti';
	@override String get disclaimerText => 'Tato aplikace nedistribuuje, nehostuje ani neověřuje žádné externí aplikace. Uživatel nese plnou odpovědnost za bezpečnost a legality jakéhokoli softwaru instalovaného prostřednictvím tohoto nástroje.\n\nhttps://github.com/omeritzics/Updatium je jediné oficiální místo pro stažení Updatia - důrazně se nedoporučuje stahovat jej z jiných míst, protože stahování z neoficiálních zdrojů není bezpečné.';
	@override String get privacy => 'Soukromí';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Přijmout a pokračovat';
	@override String get decline => 'Odmítnout';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Užíváte si Updatium?';
	@override String get githubStarPromptContent => 'Updatium je dobrovolný komunitní projekt s otevřeným zdrojovým kódem, který vyvíjím ve svém volném čase. Pokud byste chtěli projekt podpořit, zvažte prosím udělení hvězdičky na GitHubu, abychom mohli oslovit více uživatelů a přispěvatelů. Na toto vás již nebudeme znovu upozorňovat. Předem děkujeme! :)';
	@override String get githubStarPromptStar => 'Dát hvězdičku';
	@override String get githubStarPromptDontShowAgain => 'Nezobrazovat znovu';
	@override String get sourceCode => 'Zdrojový kód';
	@override String get developedBy => 'Vyvinul';
	@override String get appDescription => 'Pizpôsobitelný katalog aplikací pro Android, který vám umoauje aktualizovat va aplikace pímo z jejich APK zdroj.';
	@override String get safeModeEnabled => 'Bezpečný režim je povolen';
	@override String get safeModeDisabled => 'Bezpečný režim je zakázán';
	@override String get safeModeDisable => 'Zakázat bezpečný režim';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Správa bezpečného režimu';
	@override String get safeModeSetupDescription => 'Nastavte heslo pro povolení bezpečného režimu. Jakmile je povolen, bezpečný režim zabraňuje přidávání nových aplikací a lze jej zakázat pouze pomocí hesla.';
	@override String get safeModeToggleDescription => 'Zadejte své heslo pro zapnutí nebo vypnutí bezpečného režimu.';
	@override String get safeModeSetPassword => 'Nastavit heslo';
	@override String get safeModeConfirmPassword => 'Potvrdit heslo';
	@override String get safeModeEnterPassword => 'Zadat heslo';
	@override String get safeModePasswordHint => 'Minimální délka 8 znaků';
	@override String get safeModePasswordTooShort => 'Heslo musí mít alespoň 8 znaků';
	@override String get safeModePasswordMismatch => 'Hesla se neshodují';
	@override String get safeModePasswordIncorrect => 'Nesprávné heslo';
	@override String get safeModePasswordError => 'Chyba při nastavování hesla. Zkuste to prosím znovu.';
	@override String get safeModeEnable => 'Povolit bezpečný režim';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} zbývajících klepnutí pro zakázání bezpečného režimu';
	@override String get safeModeEnabledHint => 'Bezpečný režim je povolen. Klepněte několikrát na číslo verze v Nastaveních pro zakázání.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Rozumím';
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

/// The flat map containing all translations for locale <cs>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsCs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Žádná platná adresa URL aplikace {}',
			'noReleaseFound' => 'Nebyla nalezena odpovídající verze',
			'noVersionFound' => 'Nelze určit verzi vydání',
			'urlMatchesNoSource' => 'URL neodpovídá žádnému známému zdroji',
			'cantInstallOlderVersion' => 'Nelze nainstalovat starší verzi aplikace',
			'appIdMismatch' => 'ID staženého balíčku neodpovídá ID existující aplikace',
			'functionNotImplemented' => 'Tato třída nemá implementovánu tuto funkci',
			'placeholder' => 'Zástupce',
			'someErrors' => 'Došlo k chybám',
			'unexpectedError' => 'Neočekávaná chyba',
			'ok' => 'OK',
			'and' => 'a',
			'githubPATLabel' => 'Osobní přístupový token GitHub',
			'includePrereleases' => 'Zahrnout předběžná vydání',
			'fallbackToOlderReleases' => 'Přechod na starší verze',
			'filterReleaseTitlesByRegEx' => 'Filtrovat názvy verzí podle regulárního výrazu',
			'invalidRegEx' => 'Neplatný regulární výraz',
			'noDescription' => 'Žádný popis',
			'cancel' => 'Zrušit',
			'kContinue' => 'Pokračovat',
			'requiredInBrackets' => '(vyžadováno)',
			'dropdownNoOptsError' => 'CHYBA: ROZBALOVACÍ NABÍDKA MUSÍ MÍT ALESPOŇ JEDNU MOŽNOST',
			'color' => 'Barvu',
			'standard' => 'Standardní',
			'custom' => 'Vlastní',
			'primary' => 'Primary',
			'useMaterialYou' => 'Použít barvy Material You',
			'githubStarredRepos' => 'Repozitáře na GitHubu označené hvězdičkou',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Uživatelské jméno',
			'wrongArgNum' => 'Nesprávný počet zadaných argumentů',
			'xIsTrackOnly' => '{} je určeno pouze pro sledování',
			'source' => 'Zdroj',
			'app' => 'Aplikace',
			'appsFromSourceAreTrackOnly' => 'Aplikace z tohoto zdroje jsou „pouze pro sledování“.',
			'youPickedTrackOnly' => 'Vybrali jste možnost „pouze sledovat“.',
			'trackOnlyAppDescription' => 'Aplikace bude sledována kvůli aktualizacím, ale Updatium ji nebude stahovat ani instalovat.',
			'cancelled' => 'Zrušeno',
			'appAlreadyAdded' => 'Aplikace již přidána',
			'alreadyUpToDateQuestion' => 'Aplikace je již aktualizovaná?',
			'addApp' => 'Přidat aplikaci',
			'appSourceURL' => 'Zdrojová adresa URL aplikace',
			'error' => 'Chyba',
			'add' => 'Přidat',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Vyhledávání (pouze pro určité zdroje)',
			'search' => 'Hledat',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Další možnosti pro {}',
			'supportedSources' => 'Podporované zdroje',
			'trackOnlyInBrackets' => '(pouze sledování)',
			'searchableInBrackets' => '(s možností vyhledávání)',
			'appsString' => 'Aplikace',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Žádné aplikace',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Žádné aplikace pro vybraný filtr',
			'byX' => 'Od {}',
			'percentProgress' => 'Pokrok: {}%',
			'pleaseWait' => 'Počkejte prosím',
			'updateAvailable' => 'Aktualizace je k dispozici',
			'notInstalled' => 'Není nainstalováno',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudoverze',
			'selectAll' => 'Vybrat vše',
			'deselectX' => 'Zrušit výběr {}',
			'xWillBeRemovedButRemainInstalled' => 'Aplikace {} bude odstraněna z aplikace Updatium, ale zůstane nainstalována v zařízení.',
			'removeSelectedAppsQuestion' => 'Odstranit vybrané aplikace?',
			'removeSelectedApps' => 'Odstranit vybrané aplikace',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Aktualizovat {}',
			'installX' => 'Instalovat {}',
			'markXTrackOnlyAsUpdated' => 'Označit aplikaci {}\n(pouze sledování)\njako aktualizovanou',
			'changeX' => 'Změnit {}',
			'installUpdateApps' => 'Instalovat/aktualizovat aplikace',
			'installUpdateSelectedApps' => 'Instalovat/aktualizovat vybrané aplikace',
			'markXSelectedAppsAsUpdated' => 'Označit {} vybraných aplikací jako aktuální?',
			'no' => 'Ne',
			'yes' => 'Ano',
			'markSelectedAppsUpdated' => 'Označit vybrané aplikace jako aktuální',
			'pinToTop' => 'Připnout nahoru',
			'unpinFromTop' => 'Odepnout shora',
			'resetInstallStatusForSelectedAppsQuestion' => 'Obnovit stav instalace vybraných aplikací?',
			'installStatusOfXWillBeResetExplanation' => 'Stav instalace vybraných aplikací bude resetován.\n\nTo může být užitečné, pokud je verze aplikace zobrazená v aplikaci Updatium nesprávná z důvodu neúspěšných aktualizací nebo jiných problémů.',
			'customLinkMessage' => 'Tyto odkazy fungují na zařízeních s nainstalovaným Updatium',
			'shareAppConfigLinks' => 'Sdílet konfiguraci aplikace jako odkaz HTML',
			'resetInstallStatus' => 'Obnovit stav instalace',
			'more' => 'Více',
			'removeOutdatedFilter' => 'Odstranit filtr neaktuálních aplikací',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Zobrazovat pouze zastaralé aplikace',
			'filter' => 'Filtr',
			'filterApps' => 'Filtrovat aplikace',
			'filterDays' => 'Filter days',
			'appName' => 'Název aplikace',
			'author' => 'Autor',
			'upToDateApps' => 'Aktuální aplikace',
			'nonInstalledApps' => 'Nenainstalované aplikace',
			'importExport' => 'Dovoz / vývoz',
			'settings' => 'Nastavení',
			'exportedTo' => 'Exportováno do {}',
			'updatiumExport' => 'Export aplikace Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Neplatný vstup',
			'importedX' => 'Importováno {}',
			'updatiumImport' => 'Import aplikace Updatium',
			'importFromURLList' => 'Importovat ze seznamu adres',
			'searchQuery' => 'Vyhledávací dotaz',
			'appURLList' => 'Seznam adres aplikací',
			'line' => 'Linka',
			'searchX' => 'Vyhledávání {}',
			'noResults' => 'Nebyly nalezeny žádné výsledky',
			'importX' => 'Importovat {}',
			'importedAppsIdDisclaimer' => 'Importované aplikace mohou být nesprávně zobrazeny jako „nenainstalované“.\nChcete-li to opravit, nainstalujte je znovu prostřednictvím aplikace Updatium.\nNemá vliv na data aplikací.\n\nOvlivňuje pouze způsoby importu URL a třetích stran.',
			'importErrors' => 'Chyba importu',
			'importedXOfYApps' => 'Importováno {} z {} aplikací.',
			'followingURLsHadErrors' => 'U následujících adres došlo k chybám:',
			'selectURL' => 'Vybrat adresu',
			'selectURLs' => 'Select adresy',
			'pick' => 'Vybrat',
			'theme' => 'Motiv',
			'dark' => 'Tmavé',
			'light' => 'Světlé',
			'followSystem' => 'Podle systému',
			'followSystemThemeExplanation' => 'Používání motivu systému je možné pouze pomocí aplikací třetích stran',
			'useBlackTheme' => 'Použít čistě černý tmavý motiv',
			'appSortBy' => 'Seřadit podle',
			'authorName' => 'Autor/jméno',
			'nameAuthor' => 'Jméno/autor',
			'asAdded' => 'Přidáno',
			'appSortOrder' => 'Seřadit',
			'ascending' => 'Vzestupně',
			'descending' => 'Sestupně',
			'bgUpdateCheckInterval' => 'Interval kontroly aktualizace na pozadí',
			'neverManualOnly' => 'Nikdy – pouze ručně',
			'appearance' => 'Vzhled',
			'pinUpdates' => 'Připnout aplikace s aktualizacemi nahoru',
			'updates' => 'Aktualizace',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Specifické pro zdroj',
			'appSource' => 'Zdroj aplikace',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Žádné protokoly',
			'appLogs' => 'Protokoly aplikace',
			'appLogsHint' => 'View application logs',
			'close' => 'Zavřít',
			'share' => 'Sdílet',
			'appNotFound' => 'Aplikace nenalezena',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Vybrat APK',
			'appHasMoreThanOnePackage' => '{} má více než jeden balíček:',
			'deviceSupportsXArch' => 'Vaše zařízení podporuje architekturu CPU {}.',
			'deviceSupportsFollowingArchs' => 'Vaše zařízení podporuje následující architektury CPU:',
			'warning' => 'Varování',
			'sourceIsXButPackageFromYPrompt' => 'Zdroj aplikace je „{}“, ale balíček pro vydání pochází z „{}“. Pokračovat?',
			'updatesAvailable' => 'Dostupné aktualizace',
			'updatesAvailableNotifDescription' => 'Upozorňuje uživatele, že jsou k dispozici aktualizace pro jednu nebo více aplikací sledovaných Updatium',
			'noNewUpdates' => 'Žádné nové aktualizace.',
			'xHasAnUpdate' => '{} má aktualizaci.',
			'appsUpdated' => 'Aplikace aktualizovány',
			'appsNotUpdated' => 'Nepodařilo se aktualizovat aplikace',
			'appsUpdatedNotifDescription' => 'Upozornit, že byly provedeny aktualizace jedné nebo více aplikací na pozadí',
			'xWasUpdatedToY' => 'Aplikace {} byla aktualizována na {}.',
			'xWasNotUpdatedToY' => 'Nepodařilo se aktualizovat {} na {}.',
			'errorCheckingUpdates' => 'Chyba kontroly aktualizací',
			'errorCheckingUpdatesNotifDescription' => 'Zobrazit oznámení při neúspěšné kontrole aktualizací na pozadí',
			'appsRemoved' => 'Odstraněné aplikace',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Oznámit, že jedna nebo více aplikací bylo odstraněno z důvodu chyb při načítání',
			'xWasRemovedDueToErrorY' => '{} byla odstraněna z důvodu následující chyby: {}',
			'completeAppInstallation' => 'Dokončit instalaci aplikace',
			'updatiumMustBeOpenToInstallApps' => 'Updatium musí být otevřeno, aby bylo možné instalovat aplikace',
			'completeAppInstallationNotifDescription' => 'Vyzvat k návratu do Updatium pro dokončení instalace aplikací',
			'checkingForUpdates' => 'Zkontrolovat aktualizace',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Dočasné oznámení zobrazené při kontrole aktualizací',
			'pleaseAllowInstallPerm' => 'Povolte prosím aplikaci Updatium instalovat aplikace',
			'trackOnly' => 'Pouze sledovat',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Chyba {}',
			'versionCorrectionDisabled' => 'Oprava verze zakázána (zásuvný modul zřejmě nefunguje)',
			'unknown' => 'Neznám',
			'none' => 'Žádný',
			'all' => 'Všechny',
			'never' => 'Nikdy',
			'latestVersion' => 'Nejnovější verze',
			'installedVersionX' => 'Nainstalovaná verze: {}',
			'lastUpdateCheckX' => 'Poslední kontrola aktualizací: {}',
			'remove' => 'Odebrat',
			'quickLinks' => 'Rychlé odkazy',
			'yesMarkUpdated' => 'Ano, označit jako aktualizované',
			'fdroid' => 'Oficiální repozitář F-Droid',
			'appIdOrName' => 'ID nebo název aplikace',
			'appId' => 'ID aplikace',
			'appWithIdOrNameNotFound' => 'Žádná aplikace s tímto ID nebo názvem nebyla nalezena',
			'reposHaveMultipleApps' => 'Repozitáře mohou obsahovat více aplikací',
			'fdroidThirdPartyRepo' => 'F-Droid repozitář třetí strany',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instalovat',
			'markInstalled' => 'Označit jako nainstalovaný',
			'update' => 'Aktualizovat',
			'updated' => 'Aktualizováno',
			'markUpdated' => 'Označit jako aktuální',
			'download' => 'Download',
			'additionalOptions' => 'Další možnosti',
			'disableVersionDetection' => 'Deaktivovat detekci verze',
			'noVersionDetectionExplanation' => 'Tato možnost by měla být použita pouze u aplikace, kde detekce verzí nefunguje správně.',
			'downloadingX' => 'Stáhnout {}',
			'downloadX' => 'Stáhnout {}',
			'downloadedX' => 'Staženo {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Soubor vydání',
			'downloadNotifDescription' => 'Informuje uživatele o průběhu stahování aplikace',
			'noAPKFound' => 'Žádná APK nebyla nalezena',
			'noVersionDetection' => 'Žádná detekce verze',
			'categorize' => 'Kategorizovat',
			'categories' => 'Kategorie',
			'category' => 'Kategorie',
			'noCategory' => 'Žádná kategorie',
			'noCategories' => 'Žádné kategorie',
			'categoryDeleteQuestion' => 'Smazat kategorie?',
			'categoryDeleteWarning' => 'Všechny aplikace v odstraněných kategoriích budou nastaveny na nekategorizované.',
			'addCategory' => 'Přidat kategorii',
			'label' => 'Popisek',
			'language' => 'Jazyk',
			'copiedToClipboard' => 'Zkopírováno do schránky',
			'storagePermissionDenied' => 'Oprávnění k ukládání odepřeno',
			'selectedCategorizeWarning' => 'Toto nahradí všechna stávající nastavení kategorií pro vybrané aplikace.',
			'filterAPKsByRegEx' => 'Filtrovat APK podle regulárního výrazu',
			'removeFromUpdatium' => 'Odebrat z Updatium',
			'uninstallFromDevice' => 'Odinstalovat ze zařízení',
			'onlyWorksWithNonVersionDetectApps' => 'Funguje pouze pro aplikace s vypnutou detekcí verze.',
			'releaseDateAsVersion' => 'Použít datum vydání jako verzi',
			'releaseTitleAsVersion' => 'Použít název vydání jako řetězec verze',
			'releaseDateAsVersionExplanation' => 'Tato možnost by měla být použita pouze u aplikace, kde detekce verzí nefunguje správně, ale je k dispozici datum vydání.',
			'changes' => 'Změny',
			'releaseDate' => 'Datum vydání',
			'importFromURLsInFile' => 'Importovat adresy URL ze souboru (např. OPML)',
			'versionDetectionExplanation' => 'Sloučit řetězec verze s verzí zjištěnou z OS',
			'versionDetection' => 'Detekce verze',
			'standardVersionDetection' => 'Standardní detekce verze',
			'groupByCategory' => 'Seskupit podle kategorie',
			'listView' => 'Zobrazení seznamu',
			'gridView' => 'Zobrazení mřížky',
			'autoApkFilterByArch' => 'Pokud je to možné, pokuste se filtrovat soubory APK podle architektury procesoru',
			'autoLinkFilterByArch' => 'Pokusit se filtrovat odkazy podle architektury procesoru, pokud je to možné',
			'overrideSource' => 'Přepsat zdroj',
			'dontShowAgain' => 'Nezobrazovat znovu',
			'dontShowTrackOnlyWarnings' => 'Nezobrazovat varování pro „pouze sledované“',
			'dontShowAPKOriginWarnings' => 'Nezobrazovat varování o původu APK',
			'moveNonInstalledAppsToBottom' => 'Přesunout nenainstalované aplikace na konec zobrazení Aplikace',
			'gitlabPATLabel' => 'Osobní přístupový token GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'O aplikaci',
			'requiresCredentialsInSettings' => '{} vyžaduje další pověření (v nastavení)',
			'checkOnStart' => 'Zkontrolovat aktualizace při spuštění',
			'safeMode' => 'Bezpečný režim',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Přidání aplikace je v bezpečném režimu zakázáno',
			'tryInferAppIdFromCode' => 'Pokusit se určit ID aplikace ze zdrojového kódu',
			'removeOnExternalUninstall' => 'Automaticky odstranit externě odinstalované aplikace',
			'pickHighestVersionCode' => 'Automaticky vybrat nejvyšší verzi APK',
			'checkUpdateOnDetailPage' => 'Zkontrolovat aktualizaci při otevření stránky s podrobnostmi aplikace',
			'disablePageTransitions' => 'Zakázat animace pro přechody stránek',
			'reversePageTransitions' => 'Obrátit animace pro přechody stránek',
			'minStarCount' => 'Minimální počet hvězdiček',
			'addInfoBelow' => 'Přidat tuto informaci na konec stránky.',
			'addInfoInSettings' => 'Přidat tuto informaci do nastavení.',
			'githubSourceNote' => 'Limit požadavků služby GitHub lze obejít pomocí klíče API.',
			'sortByLastLinkSegment' => 'Seřadit pouze podle poslední části odkazu',
			'filterReleaseNotesByRegEx' => 'Filtrovat seznam změn podle regulárního výrazu',
			'customLinkFilterRegex' => 'Vlastní filtr odkazů APK podle regulárního výrazu (výchozí: „.apk$“)',
			'appsPossiblyUpdated' => 'Byly provedeny pokusy o aktualizaci aplikací',
			'appsPossiblyUpdatedNotifDescription' => 'Upozorňuje uživatele, že na pozadí mohly být provedeny aktualizace jedné nebo více aplikací',
			'xWasPossiblyUpdatedToY' => '{} mohlo být aktualizováno na {}.',
			'enableBackgroundUpdates' => 'Povolit aktualizace na pozadí',
			'backgroundUpdateReqsExplanation' => 'Aktualizace na pozadí nemusí být možná pro všechny aplikace.',
			'backgroundUpdateLimitsExplanation' => 'Úspěšnost instalace na pozadí lze určit pouze v případě, že je otevřeno Updatium.',
			'verifyLatestTag' => 'Ověřit značku „latest“',
			'intermediateLinkRegex' => 'Filtr pro návštěvu „prostředního“ odkazu',
			'filterByLinkText' => 'Filtrovat odkazy podle textu odkazu',
			'matchLinksOutsideATags' => 'Shoda odkazů mimo značky <a>',
			'intermediateLinkNotFound' => 'Připojený odkaz nenalezen',
			'intermediateLink' => 'Připojený odkaz',
			'exemptFromBackgroundUpdates' => 'Vyloučit z aktualizací na pozadí (je-li povoleno)',
			'bgUpdatesOnWiFiOnly' => 'Zakázat aktualizace na pozadí, pokud není k dispozici Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Zakázat aktualizace na pozadí, pokud se zařízení nenabíjí',
			'autoSelectHighestVersionCode' => 'Automaticky vybrat APK s nejvyšším kódem verze',
			'versionExtractionRegEx' => 'Extrakce verze pomocí RegEx',
			'trimVersionString' => 'Oříznutí řetězce verze pomocí RegEx',
			'matchGroupToUseForX' => 'Shoda se skupinou k použití pro „{}“',
			'matchGroupToUse' => 'Odpovídá použité skupině',
			'highlightTouchTargets' => 'Zvýraznit méně zjevné cíle dotyku',
			'pickExportDir' => 'Vybrat adresář pro export',
			'autoExportOnChanges' => 'Automatický export při změně',
			'includeSettings' => 'Zahrnout nastavení',
			'filterVersionsByRegEx' => 'Filtrovat verze podle regulárních výrazů',
			'trySelectingSuggestedVersionCode' => 'Zkusit vybrat navrhovanou verzi APK',
			'dontSortReleasesList' => 'Seřadit vydání z rozhraní API',
			'reverseSort' => 'Obrácené třídění',
			'takeFirstLink' => 'Použít první odkaz',
			'skipSort' => 'Přeskočit třídění',
			'debugMenu' => 'Nabídka ladění',
			'bgTaskStarted' => 'Spuštěna úloha na pozadí - zkontrolujte protokoly.',
			'runBgCheckNow' => 'Spustit kontrolu aktualizací na pozadí nyní',
			'versionExtractWholePage' => 'Použít extrakci verze pomocí RegEx na celou stránku',
			'installing' => 'Instaluji',
			'skipUpdateNotifications' => 'Neposkytovat oznámení o aktualizaci',
			'updatesAvailableNotifChannel' => 'Dostupné aktualizace',
			'appsUpdatedNotifChannel' => 'Aplikace aktualizovány',
			'appsPossiblyUpdatedNotifChannel' => 'Byly provedeny pokusy o aktualizace aplikací',
			'errorCheckingUpdatesNotifChannel' => 'Chyba při kontrole aktualizací',
			'appsRemovedNotifChannel' => 'Aplikace odstraněny',
			'downloadingXNotifChannel' => 'Stáhnout {}',
			'completeAppInstallationNotifChannel' => 'Dokončit instalaci aplikace',
			'checkingForUpdatesNotifChannel' => 'Zkontrolovat aktualizace',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Aktualizace kontrolovat pouze u nainstalovaných a sledovaných aplikací',
			'supportFixedAPKURL' => 'Odhadnout novější verzi na základě prvních třiceti číslic kontrolního součtu adresy URL APK, pokud není podporována jinak',
			'selectX' => 'Vybrat {}',
			'parallelDownloads' => 'Povolit souběžné stahování',
			'useShizuku' => 'K instalaci použít Shizuku nebo Sui',
			'shizukuBinderNotFound' => 'Shizuku neběží',
			'shizukuOld' => 'Stará verze Shizuku (<11) - aktualizujte ji',
			'shizukuOldAndroidWithADB' => 'Shizuku běží na Androidu < 8.1 s ADB - aktualizujte Android nebo místo toho použijte Sui',
			'shizukuPretendToBeGooglePlay' => 'Nastavit Google Play jako zdroj instalace (pokud se používá Shizuku)',
			'useSystemFont' => 'Použít systémové písmo',
			'useVersionCodeAsOSVersion' => 'Použít kód verze aplikace jako verzi zjištěnou OS',
			'requestHeader' => 'Hlavička požadavku',
			'useLatestAssetDateAsReleaseDate' => 'Použít poslední nahraný soubor jako datum vydání',
			'defaultPseudoVersioningMethod' => 'Výchozí metoda pseudoverze',
			'partialAPKHash' => 'Částečný hash APK',
			'APKLinkHash' => 'Odkaz APK Hash',
			'directAPKLink' => 'Přímý odkaz APK',
			'pseudoVersionInUse' => 'Pseudoverze se používá',
			'installedVersion' => 'Nainstalováno',
			'installed' => 'Nainstalováno',
			'notInstalledApps' => 'Nenainstalováno',
			'latest' => 'Nejnovější',
			'invertRegEx' => 'Invertovat regulární výraz',
			'note' => 'Poznámka',
			'selfHostedNote' => 'Rozbalovací seznam „{}“ lze použít pro přístup k vlastním instancím libovolného zdroje.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK nelze analyzovat (nekompatibilní nebo částečné stažení)',
			'beforeNewInstallsShareToAppVerifier' => 'Sdílet nové aplikace s aplikací AppVerifier (pokud je k dispozici)',
			'appVerifierInstructionToast' => 'Sdílejte do aplikace AppVerifier a po dokončení se sem vraťte.',
			'wiki' => 'Nápověda/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Povolit nezabezpečené požadavků HTTP',
			'stayOneVersionBehind' => 'Zůstaňte o jednu verzi pozadu za nejnovější',
			'useFirstApkOfVersion' => 'Automatický výběr prvního z více souborů APK',
			'refreshBeforeDownload' => 'Obnovit údaje o aplikaci před stažením',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Název',
			'smartname' => 'Název (chytrý)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Metoda třídění',
			'welcome' => 'Vítejte na',
			'batteryOptimizationNote' => 'Upozorňujeme, že stahování na pozadí může fungovat spolehlivěji, pokud v nastavení aplikace Updatium přepnete na „službu v popředí“ a/nebo v nastavení operačního systému pro Updatium vypnete optimalizaci baterie.',
			'fileDeletionError' => 'Soubor se nepodařilo odstranit (zkuste jej odstranit ručně a akci opakujte): „{}“',
			'foregroundService' => 'Služba Updatium na popředí',
			'foregroundServiceExplanation' => 'Použít službu v popředí pro kontrolu aktualizací (spolehlivější, spotřebovává více energie)',
			'fgServiceNotice' => 'Toto oznámení je nutné pro kontrolu aktualizací na pozadí (lze jej skrýt v nastavení systému)',
			'excludeSecrets' => 'Vyloučit tajemství',
			'GHReqPrefix' => 'instance \'omeritzics/Updatium\' pro požadavky GitHubu',
			'includeZips' => 'Zahrnout soubory ZIP',
			'zippedApkFilterRegEx' => 'Filtrování souborů APK uvnitř ZIP',
			'multipleSigners' => 'Několik signers',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Odstranit aplikaci?', other: 'Odstranit aplikace?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Příliš mnoho požadavků (limit požadavků) - zkuste to znovu za {count} minutu', few: 'Příliš mnoho požadavků (limit požadavků) - zkuste to znovu za {count} minuty', other: 'Příliš mnoho požadavků (limit požadavků) - zkuste to znovu za {count} minut', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Při kontrole aktualizací na pozadí byla zjištěna {error}, opakování bude naplánováno za {count} minutu', few: 'Při kontrole aktualizací na pozadí byla zjištěna {error}, opakování bude naplánováno za {count} minuty', other: 'Při kontrole aktualizací na pozadí byla zjištěna {error}, opakování bude naplánováno za {count} minut', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Při kontrole aktualizací na pozadí nalezena {count} aktualizace – v případě potřeby bude upozorněn uživatel', few: 'Při kontrole aktualizací na pozadí nalezeny {count} aktualizace – v případě potřeby bude upozorněn uživatel', other: 'Při kontrole aktualizací na pozadí nalezeno {count} aktualizací – v případě potřeby bude upozorněn uživatel', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{count} aplikace', few: '{count} aplikace', other: '{count} aplikací', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{count} adresa', few: '{count} adresy', other: '{count} adres', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{count} minuta', few: '{count} minuty', other: '{count} minut', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{count} hodina', few: '{count} hodiny', other: '{count} hodin', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{count} den', few: '{count} dny', other: '{count} dní', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Vymazán {n} záznam (před = {before}, po = {after})', few: 'Vymazány {n} záznamy (před = {before}, po = {after})', other: 'Vymazáno {n} záznamů (před = {before}, po = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{app} a 1 další aplikace mají aktualizace.', few: '{app} a {count} další aplikace mají aktualizace.', other: '{app} a {count} dalších aplikací má aktualizace.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{app} a 1 další aplikace byly aktualizovány.', few: '{app} a {count} další aplikace byly aktualizovány.', other: '{app} a {count} dalších aplikací bylo aktualizováno.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Nepodařilo se aktualizovat {app} a 1 další aplikaci.', few: 'Nepodařilo se aktualizovat {app} a {count} další aplikace.', other: 'Nepodařilo se aktualizovat {app} a {count} dalších aplikací.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{app} a 1 další aplikace možná byly aktualizovány.', few: '{app} a {count} další aplikace možná byly aktualizovány.', other: '{app} a {count} dalších aplikací možná bylo aktualizováno.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('cs'))(n, one: 'Haš osvědčení', other: 'Uzávěry certifikátů', ), 
			'securityDisclaimerTitle' => 'Bezpečnostní a Právní Zřeknutí se Odpovědnosti',
			'license' => 'Licence',
			'licenseText' => 'Tato aplikace je distribuována pod licencí GPL v3.',
			'disclaimer' => 'Zřeknutí se odpovědnosti',
			'disclaimerText' => 'Tato aplikace nedistribuuje, nehostuje ani neověřuje žádné externí aplikace. Uživatel nese plnou odpovědnost za bezpečnost a legality jakéhokoli softwaru instalovaného prostřednictvím tohoto nástroje.\n\nhttps://github.com/omeritzics/Updatium je jediné oficiální místo pro stažení Updatia - důrazně se nedoporučuje stahovat jej z jiných míst, protože stahování z neoficiálních zdrojů není bezpečné.',
			'privacy' => 'Soukromí',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Přijmout a pokračovat',
			'decline' => 'Odmítnout',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Užíváte si Updatium?',
			'githubStarPromptContent' => 'Updatium je dobrovolný komunitní projekt s otevřeným zdrojovým kódem, který vyvíjím ve svém volném čase. Pokud byste chtěli projekt podpořit, zvažte prosím udělení hvězdičky na GitHubu, abychom mohli oslovit více uživatelů a přispěvatelů. Na toto vás již nebudeme znovu upozorňovat. Předem děkujeme! :)',
			'githubStarPromptStar' => 'Dát hvězdičku',
			'githubStarPromptDontShowAgain' => 'Nezobrazovat znovu',
			'sourceCode' => 'Zdrojový kód',
			'developedBy' => 'Vyvinul',
			'appDescription' => 'Pizpôsobitelný katalog aplikací pro Android, který vám umoauje aktualizovat va aplikace pímo z jejich APK zdroj.',
			'safeModeEnabled' => 'Bezpečný režim je povolen',
			'safeModeDisabled' => 'Bezpečný režim je zakázán',
			'safeModeDisable' => 'Zakázat bezpečný režim',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Správa bezpečného režimu',
			'safeModeSetupDescription' => 'Nastavte heslo pro povolení bezpečného režimu. Jakmile je povolen, bezpečný režim zabraňuje přidávání nových aplikací a lze jej zakázat pouze pomocí hesla.',
			'safeModeToggleDescription' => 'Zadejte své heslo pro zapnutí nebo vypnutí bezpečného režimu.',
			'safeModeSetPassword' => 'Nastavit heslo',
			'safeModeConfirmPassword' => 'Potvrdit heslo',
			'safeModeEnterPassword' => 'Zadat heslo',
			'safeModePasswordHint' => 'Minimální délka 8 znaků',
			'safeModePasswordTooShort' => 'Heslo musí mít alespoň 8 znaků',
			'safeModePasswordMismatch' => 'Hesla se neshodují',
			'safeModePasswordIncorrect' => 'Nesprávné heslo',
			'safeModePasswordError' => 'Chyba při nastavování hesla. Zkuste to prosím znovu.',
			'safeModeEnable' => 'Povolit bezpečný režim',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} zbývajících klepnutí pro zakázání bezpečného režimu',
			'safeModeEnabledHint' => 'Bezpečný režim je povolen. Klepněte několikrát na číslo verze v Nastaveních pro zakázání.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Rozumím',
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
