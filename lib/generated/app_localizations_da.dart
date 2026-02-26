// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'Ikke et gyldigt $p0 app-URL';
  }

  @override
  String get noReleaseFound => 'Kunne ikke finde en passende udgivelse';

  @override
  String get noVersionFound => 'Kunne ikke afgøre udgivelsesversion';

  @override
  String get urlMatchesNoSource => 'URL\'en matcher ikke en kendt kilde';

  @override
  String get cantInstallOlderVersion => 'Kan ikke installere en ældre version af en app';

  @override
  String get appIdMismatch => 'Hentet pakke-ID matcher ikke eksisterende app-ID';

  @override
  String get functionNotImplemented => 'Denne klasse har ikke implementeret denne funktion';

  @override
  String get placeholder => 'Pladsholder';

  @override
  String get someErrors => 'Nogle fejl opstod';

  @override
  String get unexpectedError => 'Uventet fejl';

  @override
  String get ok => 'Okay';

  @override
  String get and => 'og';

  @override
  String get githubPATLabel => 'GitHub Personlig Adgangstoken (øger hastighedsgrænse)';

  @override
  String get includePrereleases => 'Inkluder forudgivelser';

  @override
  String get fallbackToOlderReleases => 'Fallback til ældre udgivelser';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtrer udgivelsestitler efter regulært udtryk';

  @override
  String get invalidRegEx => 'Ugyldigt regulært udtryk';

  @override
  String get noDescription => 'Ingen beskrivelse';

  @override
  String get cancel => 'Annuller';

  @override
  String get continue => 'Fortsæt';

  @override
  String get requiredInBrackets => '(Påkrævet)';

  @override
  String get dropdownNoOptsError => 'FEJL: RULLEMENU SKAL HAVE MINDST ÉT TILVALG';

  @override
  String get color => 'Farve';

  @override
  String get standard => 'Standard';

  @override
  String get custom => 'Brugerdefineret';

  @override
  String get useMaterialYou => 'Brug Material You-farver';

  @override
  String get githubStarredRepos => 'Stjernemarkeret GitHub-repos';

  @override
  String get uname => 'Brugernavn';

  @override
  String get wrongArgNum => 'Forkert antal argumenter angivet';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 er \'Følg Kun\'';
  }

  @override
  String get source => 'Kilde';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly => 'Apps fra denne kilde er \'Følg Kun\'.';

  @override
  String get youPickedTrackOnly => 'Du har valgt \'Følg Kun\'-indstillingen.';

  @override
  String get trackOnlyAppDescription => 'Appen tjekkes for opdateringer, men Updatium kan ikke hente eller installere den.';

  @override
  String get cancelled => 'Annulleret';

  @override
  String get appAlreadyAdded => 'Appen er allerede tilføjet';

  @override
  String get alreadyUpToDateQuestion => 'Er appen allerede opdateret?';

  @override
  String get addApp => 'Tilføj app';

  @override
  String get appSourceURL => 'URL til app-kilde';

  @override
  String get error => 'Fejl';

  @override
  String get add => 'Tilføj';

  @override
  String get searchSomeSourcesLabel => 'Søg (kun visse kilder)';

  @override
  String get search => 'Søg';

  @override
  String additionalOptsFor(Object p0) {
    return 'Flere indstillinger for $p0';
  }

  @override
  String get supportedSources => 'Understøttede kilder';

  @override
  String get trackOnlyInBrackets => '(Følg Kun)';

  @override
  String get searchableInBrackets => '(Kan Søges)';

  @override
  String get appsString => 'Apps';

  @override
  String get noApps => 'Ingen apps';

  @override
  String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Ingen apps til filter';

  @override
  String byX(Object p0) {
    return 'Af $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Hentning: $p0%';
  }

  @override
  String get pleaseWait => 'Vent venligst';

  @override
  String get updateAvailable => 'Opdatering tilgængelig';

  @override
  String get notInstalled => 'Ikke installeret';

  @override
  String get pseudoVersion => 'pseudo-version';

  @override
  String get selectAll => 'Vælg alle';

  @override
  String deselectX(Object p0) {
    return 'Fravælg $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 fjernes fra Updatium, men forbliver installeret på enheden.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Fjern valgte apps?';

  @override
  String get removeSelectedApps => 'Fjern valgte apps';

  @override
  String updateX(Object p0) {
    return 'Opdater $p0';
  }

  @override
  String installX(Object p0) {
    return 'Installer $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Markér $p0\n(Følg Kun)\nsom opdateret';
  }

  @override
  String changeX(Object p0) {
    return 'Skift $p0';
  }

  @override
  String get installUpdateApps => 'Installer/Opdater apps';

  @override
  String get installUpdateSelectedApps => 'Installer/Opdater valgte apps';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Markér $p0 valgte apps som opdateret?';
  }

  @override
  String get no => 'Nej';

  @override
  String get yes => 'Ja';

  @override
  String get markSelectedAppsUpdated => 'Markér valgte apps som opdateret';

  @override
  String get pinToTop => 'Fastgør til toppen';

  @override
  String get unpinFromTop => 'Frigør fra toppen';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Nulstil installationsstatus for valgte apps?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Installationsstatus for alle valgte apps nulstilles.\n\nDette kan hjælpe, når en forkert app-version vises i Updatium grundet mislykkede opdateringer eller andre problemer.';

  @override
  String get customLinkMessage => 'Disse links virker på enheder med Updatium installeret';

  @override
  String get shareAppConfigLinks => 'Del app-konfiguration som HTML-link';

  @override
  String get shareSelectedAppURLs => 'Del valgte app-URL\'er';

  @override
  String get resetInstallStatus => 'Nulstil installationsstatus';

  @override
  String get more => 'Mere';

  @override
  String get removeOutdatedFilter => 'Fjern forældet app-filter';

  @override
  String get showOutdatedOnly => 'Vis kun forældede apps';

  @override
  String get filter => 'Filtrer';

  @override
  String get filterApps => 'Filtrer Apps';

  @override
  String get appName => 'Appnavn';

  @override
  String get author => 'Udvikler';

  @override
  String get upToDateApps => 'Opdaterede apps';

  @override
  String get nonInstalledApps => 'Ikke-installerede apps';

  @override
  String get importExport => 'Import/Eksport';

  @override
  String get settings => 'Indstillinger';

  @override
  String exportedTo(Object p0) {
    return 'Eksportér til $p0';
  }

  @override
  String get updatiumExport => 'Updatium-eksport';

  @override
  String get invalidInput => 'Ugyldigt input';

  @override
  String importedX(Object p0) {
    return 'Importerede $p0';
  }

  @override
  String get updatiumImport => 'Updatium-import';

  @override
  String get importFromURLList => 'Importér fra URL-liste';

  @override
  String get searchQuery => 'Søgning';

  @override
  String get appURLList => 'Liste over app-URL\'er';

  @override
  String get line => 'Linje';

  @override
  String searchX(Object p0) {
    return 'Søg $p0';
  }

  @override
  String get noResults => 'Ingen resultater fundet';

  @override
  String importX(Object p0) {
    return 'Importér $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Importerede apps vises muligvis forkert som \"Ikke installeret\".\nFor at løse dette, geninstaller dem via Updatium.\nDette bør ikke påvirke app-data.\n\nPåvirker kun URL- og tredjepartsimportmetoder.';

  @override
  String get importErrors => 'Importfejl';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 af $p1 app importeret.';
  }

  @override
  String get followingURLsHadErrors => 'Følgende URL\'er havde fejl:';

  @override
  String get selectURL => 'Vælg URL';

  @override
  String get selectURLs => 'Vælg URL\'er';

  @override
  String get pick => 'Vælg';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Mørk';

  @override
  String get light => 'Lys';

  @override
  String get followSystem => 'Følg system';

  @override
  String get followSystemThemeExplanation => 'Det er kun muligt at følge systemtemaet ved brug af tredjepartsapplikationer';

  @override
  String get useBlackTheme => 'Brug rent sort mørkt tema';

  @override
  String get appSortBy => 'Sortér apps efter:';

  @override
  String get authorName => 'Udvikler/Navn';

  @override
  String get nameAuthor => 'Navn/Udvikler';

  @override
  String get asAdded => 'Som tilføjet';

  @override
  String get appSortOrder => 'Sorteringsrækkefølge for apps';

  @override
  String get ascending => 'Stigende';

  @override
  String get descending => 'Faldende';

  @override
  String get bgUpdateCheckInterval => 'Kontrolinterval for baggrundsopdatering';

  @override
  String get neverManualOnly => 'Aldrig - Kun manuelt';

  @override
  String get appearance => 'Udseende';

  @override
  String get pinUpdates => 'Fastgør opdateringer øverst i app-visning';

  @override
  String get updates => 'Opdateringer';

  @override
  String get sourceSpecific => 'Kildespecifik';

  @override
  String get appSource => 'App-kilde';

  @override
  String get noLogs => 'Ingen logs';

  @override
  String get appLogs => 'App-logs';

  @override
  String get close => 'Luk';

  @override
  String get share => 'Del';

  @override
  String get appNotFound => 'App ikke fundet';

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
  String get pickAnAPK => 'Vælg en APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 har mere end én pakke:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Din enhed understøtter CPU-arkitekturen $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Din enhed understøtter følgende CPU-arkitekturer:';

  @override
  String get warning => 'Advarsel';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'App-kilden er \'$p0\', men udgivelsespakken kommer fra \'$p1\'. Fortsæt?';
  }

  @override
  String get updatesAvailable => 'Opdateringer tilgængelige';

  @override
  String get updatesAvailableNotifDescription => 'Underretter brugeren om tilgængelige opdateringer for en eller flere apps, som Updatium følger';

  @override
  String get noNewUpdates => 'Ingen nye opdateringer.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 har en opdatering.';
  }

  @override
  String get appsUpdated => 'Apps opdateret';

  @override
  String get appsNotUpdated => 'Kunne ikke opdatere applikationerne';

  @override
  String get appsUpdatedNotifDescription => 'Underretter brugeren om, at opdateringer til en eller flere apps blev udført i baggrunden';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 blev opdateret til $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Kunne ikke opdatere $p0 til $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Fejl ved tjek for opdateringer';

  @override
  String get errorCheckingUpdatesNotifDescription => 'En meddelelse, der vises, opdateringstjek i baggrunden mislykkes';

  @override
  String get appsRemoved => 'Apps fjernet';

  @override
  String get appsRemovedNotifDescription => 'Underretter brugeren om, at en eller flere apps blev fjernet grundet fejl under indlæsning af dem';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 blev fjernet grundet denne fejl: $p1';
  }

  @override
  String get completeAppInstallation => 'Færdiggør app-installation';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium skal være åben for at installere apps';

  @override
  String get completeAppInstallationNotifDescription => 'Beder brugeren om at gå tilbage til Updatium for at færdiggøre installation af en app';

  @override
  String get checkingForUpdates => 'Tjekker for opdateringer';

  @override
  String get checkingForUpdatesNotifDescription => 'Kortvarig meddelelse ved tjek for opdateringer';

  @override
  String get pleaseAllowInstallPerm => 'Tillad venligst Updatium at installere apps';

  @override
  String get trackOnly => 'Følg Kun';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Fejl $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Versionskorrektion deaktiveret (plugin ser ikke ud til at virke)';

  @override
  String get unknown => 'Ukendt';

  @override
  String get none => 'Ingen';

  @override
  String get all => 'Alle';

  @override
  String get never => 'Aldrig';

  @override
  String latestVersionX(Object p0) {
    return 'Seneste: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Installeret: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Sidste opdateringstjek: $p0';
  }

  @override
  String get remove => 'Fjern';

  @override
  String get yesMarkUpdated => 'Ja, markér som opdateret';

  @override
  String get fdroid => 'F-Droid Officiel';

  @override
  String get appIdOrName => 'App-ID eller -navn';

  @override
  String get appId => 'App-ID';

  @override
  String get appWithIdOrNameNotFound => 'Ingen app med det ID eller navn blev fundet';

  @override
  String get reposHaveMultipleApps => 'Repos kan indeholde flere apps';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid Tredjeparts-repo';

  @override
  String get install => 'Installer';

  @override
  String get markInstalled => 'Markér som installeret';

  @override
  String get update => 'Opdater';

  @override
  String get updated => 'Opdateret';

  @override
  String get markUpdated => 'Markér som opdateret';

  @override
  String get additionalOptions => 'Flere indstillinger';

  @override
  String get disableVersionDetection => 'Deaktivér versionsregistrering';

  @override
  String get noVersionDetectionExplanation => 'Denne indstilling bør kun bruges til apps, hvor versionsregistrering ikke virker korrekt.';

  @override
  String downloadingX(Object p0) {
    return 'Henter $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Hent $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Hentede $p0';
  }

  @override
  String get releaseAsset => 'Udgivelsesressource';

  @override
  String get downloadNotifDescription => 'Underretter brugeren om status på hentning af en app';

  @override
  String get noAPKFound => 'Ingen APK fundet';

  @override
  String get noVersionDetection => 'Ingen versionsregistrering';

  @override
  String get categorize => 'Kategoriser';

  @override
  String get categories => 'Kategorier';

  @override
  String get category => 'Kategori';

  @override
  String get noCategory => 'Ingen kategori';

  @override
  String get noCategories => 'Ingen kategorier';

  @override
  String get deleteCategoriesQuestion => 'Slet kategorier?';

  @override
  String get categoryDeleteWarning => 'Alle apps i slettede kategorier indstilles til ukategoriseret.';

  @override
  String get addCategory => 'Tilføj kategori';

  @override
  String get label => 'Etiket';

  @override
  String get language => 'Sprog';

  @override
  String get copiedToClipboard => 'Kopieret til udklipsholder';

  @override
  String get storagePermissionDenied => 'Lagringstilladelse nægtet';

  @override
  String get selectedCategorizeWarning => 'Dette erstatter alle eksisterende kategoriindstillinger for de valgte apps.';

  @override
  String get filterAPKsByRegEx => 'Filtrer APK\'er efter regulært udtryk';

  @override
  String get removeFromUpdatium => 'Fjern fra Updatium';

  @override
  String get uninstallFromDevice => 'Afinstaller fra enhed';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Virker kun for apps med versionsregistrering deaktiveret.';

  @override
  String get releaseDateAsVersion => 'Brug udgivelsesdato som versionsstreng';

  @override
  String get releaseTitleAsVersion => 'Brug udgivelsestitel som versionsstreng';

  @override
  String get releaseDateAsVersionExplanation => 'Denne indstilling bør kun bruges til apps, hvor versionsregistrering ikke virker korrekt, men hvor en udgivelsesdato er tilgængelig.';

  @override
  String get changes => 'Ændringer';

  @override
  String get releaseDate => 'Udgivelsesdato';

  @override
  String get importFromURLsInFile => 'Importér fra URL\'er i fil (som OPML)';

  @override
  String get versionDetectionExplanation => 'Afstem versionsstreng med versionen registreret fra OS';

  @override
  String get versionDetection => 'Versionsregistrering';

  @override
  String get standardVersionDetection => 'Standard versionsregistrering';

  @override
  String get groupByCategory => 'Gruppér efter kategori';

  @override
  String get listView => 'Listevisning';

  @override
  String get gridView => 'Gittervisning';

  @override
  String get autoApkFilterByArch => 'Forsøg at filtrere APK\'er efter CPU-arkitektur, hvis muligt';

  @override
  String get autoLinkFilterByArch => 'Forsøg at filtrere links efter CPU-arkitektur, hvis det er muligt';

  @override
  String get overrideSource => 'Tilsidesæt kilde';

  @override
  String get dontShowAgain => 'Vis ikke igen';

  @override
  String get dontShowTrackOnlyWarnings => 'Vis ikke \'Følg Kun\'-advarsler';

  @override
  String get dontShowAPKOriginWarnings => 'Vis ikke advarsler om APK-oprindelse';

  @override
  String get moveNonInstalledAppsToBottom => 'Flyt ikke-installerede apps nederst i app-visning';

  @override
  String get hideNonInstalledApps => 'Skjul ikke-installerede apps';

  @override
  String get gitlabPATLabel => 'GitLab Personlig Adgangstoken';

  @override
  String get about => 'Om';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0 kræver yderligere legitimation (i Indstillinger)';
  }

  @override
  String get checkOnStart => 'Tjek for opdateringer ved opstart';

  @override
  String get tryInferAppIdFromCode => 'Forsøg at udlede app-ID fra kildekode';

  @override
  String get removeOnExternalUninstall => 'Fjern automatisk eksternt afinstallerede apps';

  @override
  String get pickHighestVersionCode => 'Auto-vælg højeste versionKode af APK';

  @override
  String get checkUpdateOnDetailPage => 'Tjek for opdateringer ved åbning af appens detaljeside';

  @override
  String get disablePageTransitions => 'Deaktivér sideovergangsanimationer';

  @override
  String get reversePageTransitions => 'Omvendte sideovergangsanimationer';

  @override
  String get minStarCount => 'Minimum antal stjerner';

  @override
  String get addInfoBelow => 'Tilføj denne info nedenfor.';

  @override
  String get addInfoInSettings => 'Tilføj denne info i Indstillinger.';

  @override
  String get githubSourceNote => 'GitHub\'s hastighedsbegrænsning kan undgås med en API-nøgle.';

  @override
  String get sortByLastLinkSegment => 'Sortér kun efter det sidste segment af linket';

  @override
  String get filterReleaseNotesByRegEx => 'Filtrer udgivelsesnoter efter regulært udtryk';

  @override
  String get customLinkFilterRegex => 'Brugerdefineret APK-linkfilter efter regulært udtryk (standard \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'App-opdateringer forsøgt';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Underretter brugeren om, at opdateringer til en eller flere apps muligvis blev udført i baggrunden';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 er muligvis blevet opdateret til $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Aktivér baggrundsopdateringer';

  @override
  String get backgroundUpdateReqsExplanation => 'Baggrundsopdateringer er måske ikke mulige for alle apps.';

  @override
  String get backgroundUpdateLimitsExplanation => 'En vellykket baggrundsinstallation kan kun afgøres, når Updatium åbnes.';

  @override
  String get verifyLatestTag => 'Verificer \'seneste\'-tagget';

  @override
  String get intermediateLinkRegex => 'Filtrer efter et \'mellemliggende\' link at besøge';

  @override
  String get filterByLinkText => 'Filtrer links efter linktekst';

  @override
  String get matchLinksOutsideATags => 'Match links uden for <a>-tags';

  @override
  String get intermediateLinkNotFound => 'Mellemliggende link ikke fundet';

  @override
  String get intermediateLink => 'Mellemliggende link';

  @override
  String get exemptFromBackgroundUpdates => 'Undtag fra baggrundsopdateringer (hvis aktiveret)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Deaktiver baggrundsopdateringer, når du ikke er på Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Deaktiver baggrundsopdateringer, når du ikke oplader';

  @override
  String get autoSelectHighestVersionCode => 'Auto-vælg højeste versionKode af APK';

  @override
  String get versionExtractionRegEx => 'RegEx for versionsstrengsudtrækning';

  @override
  String get trimVersionString => 'Trim versionsstreng med RegEx';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Match-gruppe til brug for \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'RegEx-matchgruppe til brug for versionsstrengsudtrækning';

  @override
  String get highlightTouchTargets => 'Fremhæv mindre åbenlyse berøringsmål';

  @override
  String get pickExportDir => 'Vælg eksportmappe';

  @override
  String get autoExportOnChanges => 'Auto-eksportér ved ændringer';

  @override
  String get includeSettings => 'Inkluder indstillinger';

  @override
  String get filterVersionsByRegEx => 'Filtrer versioner efter regulært udtryk';

  @override
  String get trySelectingSuggestedVersionCode => 'Forsøg at vælge den foreslåede versionKode af APK';

  @override
  String get dontSortReleasesList => 'Behold udgivelsesrækkefølge fra API';

  @override
  String get reverseSort => 'Omvendt sortering';

  @override
  String get takeFirstLink => 'Tag første link';

  @override
  String get skipSort => 'Spring sortering over';

  @override
  String get debugMenu => 'Fejlfindingsmenu';

  @override
  String get bgTaskStarted => 'Baggrundsopgave startet - tjek logfiler.';

  @override
  String get runBgCheckNow => 'Kør baggrundsopdateringstjek nu';

  @override
  String get versionExtractWholePage => 'Anvend RegEx til versionsstrengsudtrækning på hele siden';

  @override
  String get installing => 'Installerer';

  @override
  String get skipUpdateNotifications => 'Spring opdateringsmeddelelser over';

  @override
  String get updatesAvailableNotifChannel => 'Opdateringer tilgængelige';

  @override
  String get appsUpdatedNotifChannel => 'Apps opdateret';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'App-opdateringer forsøgt';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Fejl ved opdateringstjek';

  @override
  String get appsRemovedNotifChannel => 'Apps fjernet';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Henter $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Færdiggør app-installation';

  @override
  String get checkingForUpdatesNotifChannel => 'Tjekker for opdateringer';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Tjek kun installerede og \'Følg Kun\'-apps for opdateringer';

  @override
  String get supportFixedAPKURL => 'Understøt fikserede APK-URL\'er';

  @override
  String selectX(Object p0) {
    return 'Vælg $p0';
  }

  @override
  String get parallelDownloads => 'Tillad samtidige overførsler';

  @override
  String get useShizuku => 'Brug Shizuku eller Sui til at installere';

  @override
  String get shizukuBinderNotFound => 'Shizuku-tjeneste kører ikke';

  @override
  String get shizukuOld => 'Forældet Shizuku-version (<11). Opdater den';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku kører på Android <8.1 med ADB. Opdater Android eller brug Sui i stedet';

  @override
  String get shizukuPretendToBeGooglePlay => 'Indstil Google Play som installationskilde (hvis Shizuku bruges)';

  @override
  String get useSystemFont => 'Brug systemskrifttype';

  @override
  String get useVersionCodeAsOSVersion => 'Brug app-versionKode som OS-registreret version';

  @override
  String get requestHeader => 'Anmodningsheader';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Brug seneste ressourceupload som udgivelsesdato';

  @override
  String get defaultPseudoVersioningMethod => 'Standard pseudo-versioneringsmetode';

  @override
  String get partialAPKHash => 'Delvis APK-hash';

  @override
  String get apkLinkHash => 'Hash for APK-link';

  @override
  String get directAPKLink => 'Direkte APK-link';

  @override
  String get pseudoVersionInUse => 'En pseudo-version er i brug';

  @override
  String get installed => 'Installeret';

  @override
  String get latest => 'Seneste';

  @override
  String get invertRegEx => 'Inverter regulært udtryk';

  @override
  String get note => 'Bemærk';

  @override
  String selfHostedNote(Object p0) {
    return 'Rullemenuen \"$p0\" kan bruges til at nå selvhostede/brugerdefinerede instanser af enhver kilde.';
  }

  @override
  String get badDownload => 'APK\'en kunne ikke analyseres (inkompatibel eller delvis hentning)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Del nye apps med AppVerifier (hvis tilgængelig)';

  @override
  String get appVerifierInstructionToast => 'Del til AppVerifier, og vend tilbage, når du er klar.';

  @override
  String get wiki => 'Hjælp/Wiki';

  @override
  String get allowInsecure => 'Tillad usikre HTTP-anmodninger';

  @override
  String get stayOneVersionBehind => 'Forbliv én version bagud den seneste';

  @override
  String get useFirstApkOfVersion => 'Vælg automatisk den første af flere APK\'er';

  @override
  String get refreshBeforeDownload => 'Opdater app-detaljer før download';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Navn';

  @override
  String get smartname => 'Navn (Smart)';

  @override
  String get sortMethod => 'Sorteringsmetode';

  @override
  String get welcome => 'Velkommen';

  @override
  String get documentationLinksNote => 'Updatiums GitHub-side, som der linkes til nedenfor, indeholder links til videoer, artikler, diskussioner og andre ressourcer, som kan hjælpe dig med at forstå, hvordan du bruger appen.';

  @override
  String get batteryOptimizationNote => 'Bemærk, at baggrundsdownloads kan fungere mere pålideligt, hvis du deaktiverer OS-batterioptimering for Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'Kunne ikke slette filen (prøv at slette den manuelt og prøv igen): \"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium forgrundstjeneste';

  @override
  String get foregroundServiceExplanation => 'Brug en forgrundstjeneste til opdateringskontrol (mere pålidelig, bruger mere strøm)';

  @override
  String get fgServiceNotice => 'Denne meddelelse er nødvendig for baggrundsopdateringskontrol (den kan skjules i OS-indstillingerne).';

  @override
  String get excludeSecrets => 'Udeluk hemmeligheder';

  @override
  String get ghReqPrefix => '\'sky22333/hubproxy\'-instans til GitHub-anmodninger';

  @override
  String get includeZips => 'Inkluder ZIP-filer';

  @override
  String get zippedApkFilterRegEx => 'Filtrer APK\'er inde i ZIP';

  @override
  String get googleVerificationWarningP1 => 'Google har annonceret, at fra 2026 / 2027, alle apps på \"certificeret\" Android-enheder vil kræve, at udvikleren til at indsende personlige identitetsoplysninger direkte til Google.\n\nEfter dette tidspunkt, kan Updatium holde op med at arbejde på certificerede Android-enheder.';

  @override
  String get googleVerificationWarningP2 => 'Gå til https: / / keepandroidopen.org / for mere information.';

  @override
  String get googleVerificationWarningP3 => 'Bemærk, at på kort sigt, kan det fortsætte med at være muligt at installere \"uverificerbare\" (ikke-overensstemmende) apps gennem en \"avanceret flow\" proces, som Google har lovet at gennemføre efter bred backlash til deres meddelelse, men de har ikke detaljeret, hvordan dette ville arbejde, så det er uklart, om det virkelig vil bevare brugernes friheder i praksis.\n\nUnder alle omstændigheder er Googles bevægelse et væsentligt skridt i retning af afslutningen af fri, generel-formål computing for enkeltpersoner.\n\nIkke-certificerede OS, som GrapheneOS, bør være upåvirket af dette, så længe de har lov til at fortsætte med at eksistere.';

  @override
  String get multipleSigners => 'Flere signere';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Fjern apps?',
      one: 'Fjern app?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'For mange anmodninger (begrænset hastighed). Prøv igen om $count minutter',
      one: 'For mange anmodninger (begrænset hastighed). Prøv igen om $count minut',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baggrundsopdateringstjek stødte på en $count. Planlægger et nyt tjek om $count minutter',
      one: 'Baggrundsopdateringstjek stødte på en $count. Planlægger et nyt tjek om $count minut',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Baggrundsopdateringstjek fandt $count opdateringer. Underretter brugeren, hvis nødvendigt',
      one: 'Baggrundsopdateringstjek fandt $count opdatering. Underretter brugeren, hvis nødvendigt',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Apps',
      one: '$count App',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URL\'er',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutter',
      one: '$count minut',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count timer',
      one: '$count time',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dage',
      one: '$count dag',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ryddede $n logs (før = $before, efter = $after)',
      one: 'Ryddet $n log (før = $before, efter = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count og $count andre apps har opdateringer.',
      one: '$count og 1 anden app har opdateringer.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count og $count andre apps blev opdateret.',
      one: '$count og 1 anden app blev opdateret.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Kunne ikke opdatere $count og $count andre apps.',
      one: 'Kunne ikke opdatere $count og 1 anden app.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count og $count andre apps blev muligvis opdateret.',
      one: '$count og 1 anden app blev muligvis opdateret.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APK\'er',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Certifikathash',
      one: 'Certifikathash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Sikkerheds- og Juridisk Ansvarsfraskrivelse';

  @override
  String get license => 'Licens';

  @override
  String get licenseText => 'Denne applikation distribueres under GPL v3-licensen.';

  @override
  String get disclaimer => 'Ansvarsfraskrivelse';

  @override
  String get disclaimerText => 'Denne applikation distribuerer, hoster eller verificerer ingen af de eksterne applikationer. Brugeren bærer det fulde ansvar for sikkerheden og lovligheden af enhver software installeret via dette værktøj.\n\nhttps://github.com/omeritzics/Updatium er det eneste officielle sted at downloade Updatium - det frarådes kraftigt at downloade det andre steder, da download fra uofficielle kilder ikke er sikkert.';

  @override
  String get privacy => 'Privatliv';

  @override
  String get privacyText => 'Denne app er privatlivsfokuseret og indsamler ikke personlige data.';

  @override
  String get acceptAndContinue => 'Accepter og fortsæt';

  @override
  String get decline => 'Afvis';
}
