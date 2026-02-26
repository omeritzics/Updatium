// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'Ongeldige app-URL voor $p0';
  }

  @override
  String get noReleaseFound => 'Geen geschikte release gevonden';

  @override
  String get noVersionFound => 'Geen versie kunnen bepalen';

  @override
  String get urlMatchesNoSource => 'URL komt niet overeen met bekende bron';

  @override
  String get cantInstallOlderVersion => 'Kan geen oudere versie van de app installeren';

  @override
  String get appIdMismatch => 'Gedownload pakket-ID komt niet overeen met de bestaande app-ID';

  @override
  String get functionNotImplemented => 'Deze klasse heeft deze functie niet geïmplementeerd.';

  @override
  String get placeholder => 'Dummy';

  @override
  String get someErrors => 'Er zijn enkele fouten opgetreden';

  @override
  String get unexpectedError => 'Onverwachte fout';

  @override
  String get ok => 'Oké';

  @override
  String get and => 'en';

  @override
  String get githubPATLabel => 'GitHub Personal Access Token\n(Verhoogt limiet aantal verzoeken)';

  @override
  String get includePrereleases => 'Inclusief pre-releases';

  @override
  String get fallbackToOlderReleases => 'Terugvallen op oudere releases';

  @override
  String get filterReleaseTitlesByRegEx => 'Release-titels filteren met reguliere expressies.';

  @override
  String get invalidRegEx => 'Ongeldige reguliere expressie';

  @override
  String get noDescription => 'Geen omschrijving';

  @override
  String get cancel => 'Annuleren';

  @override
  String get continue => 'Doorgaan';

  @override
  String get requiredInBrackets => '(Verplicht)';

  @override
  String get dropdownNoOptsError => 'FOUTMELDING: UITKLAPMENU MOET TENMINSTE EEN OPT HEBBEN';

  @override
  String get color => 'Kleur';

  @override
  String get standard => 'Standaard';

  @override
  String get custom => 'Aangepast';

  @override
  String get useMaterialYou => 'Material You kleuren gebruiken';

  @override
  String get githubStarredRepos => 'GitHub-repo\'s met ster';

  @override
  String get uname => 'Gebruikersnaam';

  @override
  String get wrongArgNum => 'Incorrect aantal argumenten.';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 is \'Alleen volgen\'';
  }

  @override
  String get source => 'Bron';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly => 'Apps van deze bron zijn \'Alleen volgen\'.';

  @override
  String get youPickedTrackOnly => 'De optie \'Alleen volgen\' is geselecteerd.';

  @override
  String get trackOnlyAppDescription => 'De app zal worden gevolgd voor updates, maar Updatium zal niet in staat zijn om deze te downloaden of te installeren.';

  @override
  String get cancelled => 'Geannuleerd';

  @override
  String get appAlreadyAdded => 'App reeds toegevoegd';

  @override
  String get alreadyUpToDateQuestion => 'App al bijgewerkt?';

  @override
  String get addApp => 'App toevoegen';

  @override
  String get appSourceURL => 'App-bron URL';

  @override
  String get error => 'Foutmelding';

  @override
  String get add => 'Toevoegen';

  @override
  String get searchSomeSourcesLabel => 'Zoeken (sommige bronnen)';

  @override
  String get search => 'Zoeken';

  @override
  String additionalOptsFor(Object p0) {
    return 'Aanvullende opties voor $p0';
  }

  @override
  String get supportedSources => 'Ondersteunde bronnen';

  @override
  String get trackOnlyInBrackets => '(Alleen volgen)';

  @override
  String get searchableInBrackets => '(Doorzoekbaar)';

  @override
  String get appsString => 'Apps';

  @override
  String get noApps => 'Geen Apps';

  @override
  String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Geen Apps voor filter';

  @override
  String byX(Object p0) {
    return 'Door $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Voortgang: $p0%';
  }

  @override
  String get pleaseWait => 'Even geduld';

  @override
  String get updateAvailable => 'Update beschikbaar';

  @override
  String get notInstalled => 'Niet geinstalleerd';

  @override
  String get pseudoVersion => 'pseudo-versie';

  @override
  String get selectAll => 'Alles selecteren';

  @override
  String deselectX(Object p0) {
    return 'Selectie opheffen $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 zal worden gewist uit Updatium, maar blijft geïnstalleerd op het apparaat.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Geselecteerde apps verwijderen?';

  @override
  String get removeSelectedApps => 'Geselecteerde apps verwijderen';

  @override
  String updateX(Object p0) {
    return '$p0 bijwerken';
  }

  @override
  String installX(Object p0) {
    return '$p0 installeren';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return '$p0\n(Alleen volgen)\nmarkeren als bijgewerkt';
  }

  @override
  String changeX(Object p0) {
    return '$p0 wijzigen';
  }

  @override
  String get installUpdateApps => 'Apps installeren/bijwerken';

  @override
  String get installUpdateSelectedApps => 'Geselecteerde apps installeren/bijwerken';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return '$p0 geselecteerde apps markeren als bijgewerkt?';
  }

  @override
  String get no => 'Nee';

  @override
  String get yes => 'Ja';

  @override
  String get markSelectedAppsUpdated => 'Geselecteerde apps markeren als bijgewerkt';

  @override
  String get pinToTop => 'Bovenaan plaatsen';

  @override
  String get unpinFromTop => 'Bovenaan wegnemen';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Installatiestatus herstellen voor geselecteerde apps?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'De installatiestatus van alle geselecteerde apps zal worden hersteld.\n\nDit kan helpen wanneer de versie van de app die in Updatium wordt weergegeven onjuist is vanwege mislukte updates of andere problemen.';

  @override
  String get customLinkMessage => 'Deze koppelingen werken op apparaten waarop Updatium is geïnstalleerd';

  @override
  String get shareAppConfigLinks => 'App-configuratie delen als HTML-link';

  @override
  String get shareSelectedAppURLs => 'Geselecteerde app-URL\'s delen';

  @override
  String get resetInstallStatus => 'Installatiestatus herstellen';

  @override
  String get more => 'Meer';

  @override
  String get removeOutdatedFilter => 'Verouderde apps-filter verwijderen';

  @override
  String get showOutdatedOnly => 'Alleen verouderde apps weergeven';

  @override
  String get filter => 'Filteren';

  @override
  String get filterApps => 'Apps filteren';

  @override
  String get appName => 'App-naam';

  @override
  String get author => 'Auteur';

  @override
  String get upToDateApps => 'Bijgewerkte apps';

  @override
  String get nonInstalledApps => 'Niet-geïnstalleerde apps';

  @override
  String get importExport => 'Importeren/exporteren';

  @override
  String get settings => 'Instellingen';

  @override
  String exportedTo(Object p0) {
    return 'Geëxporteerd naar $p0';
  }

  @override
  String get updatiumExport => 'Uitvoer van verkrijgmiddelen';

  @override
  String get invalidInput => 'Ongeldige invoer';

  @override
  String importedX(Object p0) {
    return '$p0 geïmporteerd';
  }

  @override
  String get updatiumImport => 'Updatium import';

  @override
  String get importFromURLList => 'Importeren van URL-lijsten';

  @override
  String get searchQuery => 'Zoekopdracht';

  @override
  String get appURLList => 'App URL-lijst';

  @override
  String get line => 'Regel';

  @override
  String searchX(Object p0) {
    return '$p0 zoeken';
  }

  @override
  String get noResults => 'Geen resultaten gevonden';

  @override
  String importX(Object p0) {
    return '$p0 importeren';
  }

  @override
  String get importedAppsIdDisclaimer => 'Geïmporteerde apps kunnen mogelijk onjuist worden weergegeven als \"Niet geïnstalleerd\".\nOm dit op te lossen, installeer deze opnieuw via Updatium.\nDit zou geen invloed moeten hebben op app-gegevens.\n\nDit heeft alleen invloed op URL- en importmethoden van derden.';

  @override
  String get importErrors => 'Fouten bij het importeren';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 van $p1 apps geïmporteerd.';
  }

  @override
  String get followingURLsHadErrors => 'De volgende URL\'s bevatten fouten:';

  @override
  String get selectURL => 'URL selecteren';

  @override
  String get selectURLs => 'URL\'s selecteren';

  @override
  String get pick => 'Kiezen';

  @override
  String get theme => 'Thema';

  @override
  String get dark => 'Donker';

  @override
  String get light => 'Licht';

  @override
  String get followSystem => 'Systeem volgen';

  @override
  String get followSystemThemeExplanation => 'Het volgen van het systeemthema is alleen mogelijk met applicaties van derden';

  @override
  String get useBlackTheme => 'Zwart thema gebruiken';

  @override
  String get appSortBy => 'Sortering';

  @override
  String get authorName => 'Auteur/Naam';

  @override
  String get nameAuthor => 'Naam/Auteur';

  @override
  String get asAdded => 'Datum toegevoegd';

  @override
  String get appSortOrder => 'Volgorde';

  @override
  String get ascending => 'Oplopend';

  @override
  String get descending => 'Aflopend';

  @override
  String get bgUpdateCheckInterval => 'Frequentie voor achtergrond-updatecontrole';

  @override
  String get neverManualOnly => 'Nooit - Alleen handmatig';

  @override
  String get appearance => 'Weergave';

  @override
  String get pinUpdates => 'Updates bovenaan plaatsen in de apps-weergave';

  @override
  String get updates => 'Bijwerken';

  @override
  String get sourceSpecific => 'Bron-specifiek';

  @override
  String get appSource => 'App-bron';

  @override
  String get noLogs => 'Geen logs';

  @override
  String get appLogs => 'App logs';

  @override
  String get close => 'Sluiten';

  @override
  String get share => 'Delen';

  @override
  String get appNotFound => 'App niet gevonden';

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
  String get pickAnAPK => 'Kies een APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 biedt verschillende pakketten:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Dit apparaat ondersteunt de $p0 CPU-architectuur.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Dit apparaat ondersteunt de volgende CPU-architecturen:';

  @override
  String get warning => 'Waarschuwing';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'De app-bron is \'$p0\' maar het release-pakket komt van \'$p1\'. Doorgaan?';
  }

  @override
  String get updatesAvailable => 'Updates beschikbaar';

  @override
  String get updatesAvailableNotifDescription => 'Stelt de gebruiker op de hoogte dat er updates beschikbaar zijn voor een of meer apps die worden bijgehouden door Updatium.';

  @override
  String get noNewUpdates => 'Geen nieuwe updates.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 heeft een update.';
  }

  @override
  String get appsUpdated => 'Apps bijgewerkt';

  @override
  String get appsNotUpdated => 'Applicaties konden niet worden bijgewerkt';

  @override
  String get appsUpdatedNotifDescription => 'Stelt de gebruiker op de hoogte dat updates voor één of meer apps in de achtergrond zijn toegepast.';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 is bijgewerkt naar $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Het bijwerken van $p0 naar $p1 is mislukt.';
  }

  @override
  String get errorCheckingUpdates => 'Fout bij het controleren op updates';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Een melding die verschijnt wanneer de achtergrondcontrole op updates mislukt';

  @override
  String get appsRemoved => 'Apps verwijderd';

  @override
  String get appsRemovedNotifDescription => 'Stelt de gebruiker op de hoogte dat een of meer apps zijn verwijderd vanwege fouten tijdens het laden';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 is verwijderd vanwege de fout: $p1';
  }

  @override
  String get completeAppInstallation => 'App-installatie voltooien';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium moet geopend zijn om apps te installeren';

  @override
  String get completeAppInstallationNotifDescription => 'Vraagt de gebruiker om terug te keren naar Updatium om de installatie van een app af te ronden';

  @override
  String get checkingForUpdates => 'Controleren op updates';

  @override
  String get checkingForUpdatesNotifDescription => 'Tijdelijke melding die verschijnt tijdens het controleren op updates';

  @override
  String get pleaseAllowInstallPerm => 'Toestaan dat Updatium apps installeert';

  @override
  String get trackOnly => '\'Alleen volgen\'';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Foutmelding $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Versiecorrectie uitgeschakeld (de plug-in lijkt niet te werken)';

  @override
  String get unknown => 'Onbekend';

  @override
  String get none => 'Geen';

  @override
  String get all => 'Alle';

  @override
  String get never => 'Nooit';

  @override
  String latestVersionX(Object p0) {
    return 'Laatste versie: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Geïnstalleerde versie: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Laatste updatecontrole: $p0';
  }

  @override
  String get remove => 'Verwijderen';

  @override
  String get yesMarkUpdated => 'Ja, markeren als bijgewerkt';

  @override
  String get fdroid => 'F-Droid (Officieel)';

  @override
  String get appIdOrName => 'App-ID of naam';

  @override
  String get appId => 'App-ID';

  @override
  String get appWithIdOrNameNotFound => 'Er is geen app gevonden met dat ID of die naam';

  @override
  String get reposHaveMultipleApps => 'Repositories kunnen meerdere apps bevatten';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid Repository voor derden';

  @override
  String get install => 'Installeren';

  @override
  String get markInstalled => 'Als geïnstalleerd markeren';

  @override
  String get update => 'Bijwerken';

  @override
  String get updated => 'Bijgewerkt';

  @override
  String get markUpdated => 'Als bijgewerkt markeren';

  @override
  String get additionalOptions => 'Aanvullende opties';

  @override
  String get disableVersionDetection => 'Versieherkenning uitschakelen';

  @override
  String get noVersionDetectionExplanation => 'Deze optie moet alleen worden gebruikt voor apps waar versieherkenning niet correct werkt.';

  @override
  String downloadingX(Object p0) {
    return '$p0 downloaden';
  }

  @override
  String downloadX(Object p0) {
    return 'Downloaden';
  }

  @override
  String downloadedX(Object p0) {
    return '$p0 gedownload';
  }

  @override
  String get releaseAsset => 'Release Activa';

  @override
  String get downloadNotifDescription => 'Stelt de gebruiker op de hoogte van de voortgang bij het downloaden van een app';

  @override
  String get noAPKFound => 'Geen APK gevonden';

  @override
  String get noVersionDetection => 'Geen versieherkenning';

  @override
  String get categorize => 'Categoriseren';

  @override
  String get categories => 'Categorieën';

  @override
  String get category => 'Categorie';

  @override
  String get noCategory => 'Geen categorie';

  @override
  String get noCategories => 'Geen categorieën';

  @override
  String get deleteCategoriesQuestion => 'Categorieën verwijderen?';

  @override
  String get categoryDeleteWarning => 'Alle apps in verwijderde categorieën worden teruggezet naar \'ongecategoriseerd\'.';

  @override
  String get addCategory => 'Categorie toevoegen';

  @override
  String get label => 'Label';

  @override
  String get language => 'Taal';

  @override
  String get copiedToClipboard => 'Gekopieerd naar klembord';

  @override
  String get storagePermissionDenied => 'Toegang tot opslag geweigerd';

  @override
  String get selectedCategorizeWarning => 'Dit zal eventuele bestaande categorie-instellingen voor de geselecteerde apps vervangen.';

  @override
  String get filterAPKsByRegEx => 'APK\'s flteren met reguliere expressie';

  @override
  String get removeFromUpdatium => 'Uit Updatium verwijderen';

  @override
  String get uninstallFromDevice => 'Van apparaat verwijderen';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Werkt alleen voor apps waarbij versieherkenning is uitgeschakeld.';

  @override
  String get releaseDateAsVersion => 'Releasedatum als versie gebruiken';

  @override
  String get releaseTitleAsVersion => 'Gebruik releasetitel als versiestring';

  @override
  String get releaseDateAsVersionExplanation => 'Deze optie moet alleen worden gebruikt voor apps waar versieherkenning niet correct werkt, maar waar wel een releasedatum beschikbaar is.';

  @override
  String get changes => 'Aanpassingen';

  @override
  String get releaseDate => 'Releasedatum';

  @override
  String get importFromURLsInFile => 'Importeren vanaf URL\'s in een bestand (zoals OPML)';

  @override
  String get versionDetectionExplanation => 'Versiereeks afstemmen met versie gedetecteerd door besturingssysteem';

  @override
  String get versionDetection => 'Versieherkenning';

  @override
  String get standardVersionDetection => 'Standaard versieherkenning';

  @override
  String get groupByCategory => 'Groeperen op categorie';

  @override
  String get listView => 'Lijstweergave';

  @override
  String get gridView => 'Rasterweergave';

  @override
  String get autoApkFilterByArch => 'Probeer APK\'s te filteren op CPU-architectuur, indien mogelijk';

  @override
  String get autoLinkFilterByArch => 'Probeer links zo mogelijk te filteren op CPU-architectuur';

  @override
  String get overrideSource => 'Bron overschrijven';

  @override
  String get dontShowAgain => 'Laat dit niet meer zien';

  @override
  String get dontShowTrackOnlyWarnings => 'Geen waarschuwingen weergeven voor \'Alleen volgen\'';

  @override
  String get dontShowAPKOriginWarnings => 'Geen waarschuwingen weergeven voor APK-herkomst';

  @override
  String get moveNonInstalledAppsToBottom => 'Niet-geïnstalleerde apps onderaan de apps-lijst plaatsen';

  @override
  String get hideNonInstalledApps => 'Hide non-installed apps';

  @override
  String get gitlabPATLabel => 'GitLab persoonlijk toegangskenmerk';

  @override
  String get about => 'Over';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0 vereist aanvullende referenties (in Instellingen)';
  }

  @override
  String get checkOnStart => 'Bij opstarten op updates controleren';

  @override
  String get tryInferAppIdFromCode => 'Probeer de app-ID af te leiden uit de broncode';

  @override
  String get removeOnExternalUninstall => 'Extern verwijderde apps automatisch verwijderen';

  @override
  String get pickHighestVersionCode => 'De APK met de hoogste versiecode automatisch selecteren';

  @override
  String get checkUpdateOnDetailPage => 'Controleren op updates bij het openen van een app-detailpagina';

  @override
  String get disablePageTransitions => 'Overgangsanimaties tussen pagina\'s uitschakelen';

  @override
  String get reversePageTransitions => 'Overgangsanimaties tussen pagina\'s herstellen';

  @override
  String get minStarCount => 'Minimum Github Stars';

  @override
  String get addInfoBelow => 'Deze informatie hieronder toevoegen.';

  @override
  String get addInfoInSettings => 'Deze informatie toevoegen in de instellingen.';

  @override
  String get githubSourceNote => 'Beperkingen van GitHub kunnen worden vermeden door het gebruik van een API-sleutel.';

  @override
  String get sortByLastLinkSegment => 'Alleen sorteren op het laatste segment van de link';

  @override
  String get filterReleaseNotesByRegEx => 'Release-opmerkingen fiteren met een reguliere expressie.';

  @override
  String get customLinkFilterRegex => 'Aangepaste APK-links filteren met een reguliere expressie (Standaard \'.apk\$\').';

  @override
  String get appsPossiblyUpdated => 'Pogingen tot app-updates';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Stelt de gebruiker op de hoogte dat updates voor één of meer apps mogelijk in de achtergrond zijn toegepast';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 kan bijgewerkt zijn naar $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Achtergrond-updates inschakelen';

  @override
  String get backgroundUpdateReqsExplanation => 'Achtergrond-updates zijn niet voor alle apps mogelijk.';

  @override
  String get backgroundUpdateLimitsExplanation => 'Het succes van een installatie in de achtergrond kan alleen worden bepaald wanneer Updatium is geopend.';

  @override
  String get verifyLatestTag => 'Het label \'Laatste\' verifiëren';

  @override
  String get intermediateLinkRegex => 'Filteren op een \'Intermediaire\' link om te bezoeken';

  @override
  String get filterByLinkText => 'Links filteren op linktekst';

  @override
  String get matchLinksOutsideATags => 'Koppelingen buiten <a>-tags matchen';

  @override
  String get intermediateLinkNotFound => 'Intermediaire link niet gevonden';

  @override
  String get intermediateLink => 'Intermediaire link';

  @override
  String get exemptFromBackgroundUpdates => 'Vrijgesteld van achtergrond-updates (indien ingeschakeld)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Achtergrond-updates uitschakelen wanneer niet verbonden met Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Achtergrondupdates uitschakelen als er niet wordt opgeladen';

  @override
  String get autoSelectHighestVersionCode => 'De APK met de hoogste versiecode automatisch selecteren';

  @override
  String get versionExtractionRegEx => 'Reguliere expressie voor versie-extractie';

  @override
  String get trimVersionString => 'Versie string trimmen met RegEx';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Overeenkomende groep te gebruiken voor \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Overeenkomende groep om te gebruiken voor de reguliere expressie voor versie-extractie';

  @override
  String get highlightTouchTargets => 'Minder voor de hand liggende aanraakdoelen markeren.';

  @override
  String get pickExportDir => 'Kies de exportmap';

  @override
  String get autoExportOnChanges => 'Bij wijzigingen automatisch exporteren';

  @override
  String get includeSettings => 'Instellingen opnemen';

  @override
  String get filterVersionsByRegEx => 'Versies met een reguliere expressie filteren';

  @override
  String get trySelectingSuggestedVersionCode => 'Probeer de voorgestelde versiecode APK te selecteren';

  @override
  String get dontSortReleasesList => 'Volgorde van releases behouden vanuit de API';

  @override
  String get reverseSort => 'Omgekeerde sortering';

  @override
  String get takeFirstLink => 'Neem de eerste link';

  @override
  String get skipSort => 'Sortering overslaan';

  @override
  String get debugMenu => 'Debug-menu';

  @override
  String get bgTaskStarted => 'Achtergrondtaak gestart - controleer de logs.';

  @override
  String get runBgCheckNow => 'Nu een achtergrond-updatecontrole uitvoeren';

  @override
  String get versionExtractWholePage => 'De reguliere expressie voor versie-extractie toepassen op de hele pagina';

  @override
  String get installing => 'Installeren';

  @override
  String get skipUpdateNotifications => 'Updatemeldingen overslaan';

  @override
  String get updatesAvailableNotifChannel => 'Updates beschikbaar';

  @override
  String get appsUpdatedNotifChannel => 'Apps bijgewerkt';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Pogingen tot app-updates';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Foutcontrole bij het zoeken naar updates';

  @override
  String get appsRemovedNotifChannel => 'Apps verwijderd';

  @override
  String downloadingXNotifChannel(Object p0) {
    return '$p0 downloaden';
  }

  @override
  String get completeAppInstallationNotifChannel => 'App-installatie voltooien';

  @override
  String get checkingForUpdatesNotifChannel => 'Controleren op updates';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Alleen geïnstalleerde apps en \'Alleen volgen\' controleren op updates';

  @override
  String get supportFixedAPKURL => 'Vaste APK-URL\'s ondersteunen';

  @override
  String selectX(Object p0) {
    return '$p0 selecteren';
  }

  @override
  String get parallelDownloads => 'Parallelle downloads toestaan';

  @override
  String get useShizuku => 'Shizuku of Sui gebruiken om te installeren';

  @override
  String get shizukuBinderNotFound => 'Shizuku is niet actief';

  @override
  String get shizukuOld => 'Verouderde Shizuku-versie (<11) - bijwerken';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku draait op Android < 8.1 met ADB - update Android of gebruik in plaats daarvan Sui';

  @override
  String get shizukuPretendToBeGooglePlay => 'Google Play instellen als installatiebron (bij Shizuku)';

  @override
  String get useSystemFont => 'Systeemlettertype gebruiken';

  @override
  String get useVersionCodeAsOSVersion => 'App versiecode gebruiken als door OS gedetecteerde versie';

  @override
  String get requestHeader => 'Verzoekkoptekst';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Laatste upload als releasedatum gebruiken';

  @override
  String get defaultPseudoVersioningMethod => 'Standaard pseudo-versiebeheermethode';

  @override
  String get partialAPKHash => 'Gedeeltelijke APK-hash';

  @override
  String get apkLinkHash => 'APK-link-hash';

  @override
  String get directAPKLink => 'Directe APK-link';

  @override
  String get pseudoVersionInUse => 'Er is een pseudo-versie in gebruik';

  @override
  String get installed => 'Geïnstalleerd';

  @override
  String get latest => 'Laatste';

  @override
  String get invertRegEx => 'Reguliere expressie omkeren';

  @override
  String get note => 'Opmerking';

  @override
  String selfHostedNote(Object p0) {
    return 'De \"$p0\" dropdown kan gebruikt worden om zelf gehoste/aangepaste instanties van elke bron te bereiken.';
  }

  @override
  String get badDownload => 'De APK kon niet worden verwerkt (incompatibele of gedeeltelijke download)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Nieuwe Apps delen met AppVerifier (indien beschikbaar)';

  @override
  String get appVerifierInstructionToast => 'Deel het met AppVerifier en keer daarna hier terug.';

  @override
  String get wiki => 'Help/wiki';

  @override
  String get allowInsecure => 'Onveilige HTTP-verzoeken toestaan';

  @override
  String get stayOneVersionBehind => 'Blijf een versie achter op de nieuwste';

  @override
  String get useFirstApkOfVersion => 'Automatisch de eerste van meerdere APK\'s selecteren';

  @override
  String get refreshBeforeDownload => 'Vernieuw app details voor download';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Naam';

  @override
  String get smartname => 'Naam (Slim)';

  @override
  String get sortMethod => 'Sorteermethode';

  @override
  String get welcome => 'Welkom';

  @override
  String get documentationLinksNote => 'De GitHub pagina van Updatium waarnaar hieronder wordt gelinkt bevat links naar video\'s, artikelen, discussies en andere bronnen die je zullen helpen begrijpen hoe je de app kunt gebruiken.';

  @override
  String get batteryOptimizationNote => 'Merk op dat downloads op de achtergrond mogelijk betrouwbaarder werken als je de batterijoptimalisatie van het besturingssysteem voor Updatium uitschakelt.';

  @override
  String fileDeletionError(Object p0) {
    return 'Bestand is niet verwijderd (probeer het handmatig te verwijderen en probeer het opnieuw): \"$p0\"';
  }

  @override
  String get foregroundService => 'Verkrijgbare voorgronddienst';

  @override
  String get foregroundServiceExplanation => 'Gebruik een voorgronddienst voor het controleren van updates (betrouwbaarder, verbruikt meer stroom)';

  @override
  String get fgServiceNotice => 'Deze melding is nodig voor het controleren van updates op de achtergrond (kan worden verborgen in de OS-instellingen)';

  @override
  String get excludeSecrets => 'Geheimen uitsluiten';

  @override
  String get ghReqPrefix => '\'sky22333/hubproxy\' instantie voor GitHub verzoeken';

  @override
  String get includeZips => 'ZIP-bestanden opnemen';

  @override
  String get zippedApkFilterRegEx => 'APK\'s filteren in ZIP';

  @override
  String get googleVerificationWarningP1 => 'Google heeft aangekondigd dat vanaf 2026/2027 alle apps op \"gecertificeerde\" Android-apparaten de ontwikkelaar nodig hebben om persoonlijke identiteitsgegevens rechtstreeks aan Google te verzenden.\n\nDaarna kan Updatium stoppen met werken op gecertificeerde Android-apparaten.';

  @override
  String get googleVerificationWarningP2 => 'Ga naar https://keepandroidopen.org/ voor meer informatie.';

  @override
  String get googleVerificationWarningP3 => 'Merk op dat het op korte termijn mogelijk kan blijven om \"niet-geverifieerde\" (niet-conforme) apps te installeren via een \"geavanceerde flow\" proces dat Google heeft beloofd te implementeren na brede backlash naar hun aankondiging, maar ze hebben niet gedetailleerd hoe dit zou werken, dus het is onduidelijk of het echt zal behouden gebruikersvrijheden op enige praktische manier.\n\nIn ieder geval, Google\'s zet is een belangrijke stap naar het einde van vrije, algemene computer voor individuen.\n\nNiet-gecertificeerde besturingssystemen, zoals GrapheneOS, mogen hierdoor niet worden beïnvloed zolang ze mogen blijven bestaan.';

  @override
  String get multipleSigners => 'Meerdere Ondertekenaars';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Apps verwijderen?',
      one: 'App verwijderen?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Te veel verzoeken (aantal beperkt) - opnieuw proberen over $count minuten',
      one: 'Te veel verzoeken (aantal beperkt) - opnieuw proberen over $count minuut',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Achtergrond-updatecontrole heeft een $count, zal een nieuwe controle plannen over $count minuten',
      one: 'Achtergrond-updatecontrole heeft een $count, zal een nieuwe controle plannen over $count minuut',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Achtergrond-updatecontrole heeft $count updates gevonden - zal de gebruiker op de hoogte stellen indien nodig',
      one: 'Achtergrond-updatecontrole heeft $count update gevonden - zal de gebruiker op de hoogte stellen indien nodig',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '$count app',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URL\'s',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuten',
      one: '$count minuut',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uur',
      one: '$count uur',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dagen',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$n logboekitems gewist (voor = $before, na = $after)',
      one: '$n logboekitem gewist (voor = $before, na = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count en nog $count apps hebben updates.',
      one: '$count en nog 1 app hebben updates.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count en nog $count apps zijn bijgewerkt.',
      one: '$count en nog 1 app is bijgewerkt.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bijwerken mislukt voor $count en nog $count apps.',
      one: 'Bijwerken mislukt voor $count en nog 1 app.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count en nog $count apps zijn mogelijk bijgwerkt.',
      one: '$count en nog 1 app zijn mogelijk bijgewerkt.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APK\'s',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Certificaat Hashes',
      one: 'Certificaat Hash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Veiligheids- en Juridische Vrijwaringsclausule';

  @override
  String get license => 'Licentie';

  @override
  String get licenseText => 'Deze applicatie wordt gedistribueerd onder de GPL v3 Licentie.';

  @override
  String get disclaimer => 'Vrijwaringsclausule';

  @override
  String get disclaimerText => 'Deze applicatie distribueert, host of verifieert geen van de externe applicaties. De gebruiker draagt de volledige verantwoordelijkheid voor de veiligheid en legaliteit van alle software die via deze tool wordt geïnstalleerd.\n\nhttps://github.com/omeritzics/Updatium is de enige officiële plek om Updatium te downloaden - het wordt sterk afgeraden om het ergens anders te downloaden omdat het downloaden van niet-officiële bronnen onveilig is.';

  @override
  String get privacy => 'Privacy';

  @override
  String get privacyText => 'Deze app is privacy-gericht en verzamelt geen persoonlijke gegevens.';

  @override
  String get acceptAndContinue => 'Accepteren en doorgaan';

  @override
  String get decline => 'Weigeren';
}
