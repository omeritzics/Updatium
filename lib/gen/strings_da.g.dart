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
class TranslationsDa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.da,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <da>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDa _root = this; // ignore: unused_field

	@override 
	TranslationsDa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDa(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Ikke et gyldigt {} app-URL';
	@override String get noReleaseFound => 'Kunne ikke finde en passende udgivelse';
	@override String get noVersionFound => 'Kunne ikke afgøre udgivelsesversion';
	@override String get urlMatchesNoSource => 'URL\'en matcher ikke en kendt kilde';
	@override String get cantInstallOlderVersion => 'Kan ikke installere en ældre version af en app';
	@override String get appIdMismatch => 'Hentet pakke-ID matcher ikke eksisterende app-ID';
	@override String get functionNotImplemented => 'Denne klasse har ikke implementeret denne funktion';
	@override String get placeholder => 'Pladsholder';
	@override String get someErrors => 'Nogle fejl opstod';
	@override String get unexpectedError => 'Uventet fejl';
	@override String get ok => 'OK';
	@override String get and => 'og';
	@override String get githubPATLabel => 'GitHub Personlig Adgangstoken';
	@override String get includePrereleases => 'Inkluder forudgivelser';
	@override String get fallbackToOlderReleases => 'Fallback til ældre udgivelser';
	@override String get filterReleaseTitlesByRegEx => 'Filtrer udgivelsestitler efter regulært udtryk';
	@override String get invalidRegEx => 'Ugyldigt regulært udtryk';
	@override String get noDescription => 'Ingen beskrivelse';
	@override String get cancel => 'Annuller';
	@override String get kContinue => 'Fortsæt';
	@override String get requiredInBrackets => '(Påkrævet)';
	@override String get dropdownNoOptsError => 'FEJL: RULLEMENU SKAL HAVE MINDST ÉT TILVALG';
	@override String get color => 'Farve';
	@override String get standard => 'Standard';
	@override String get custom => 'Brugerdefineret';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Brug Material You-farver';
	@override String get githubStarredRepos => 'Stjernemarkeret GitHub-repos';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Brugernavn';
	@override String get wrongArgNum => 'Forkert antal argumenter angivet';
	@override String get xIsTrackOnly => '{} er \'Følg Kun\'';
	@override String get source => 'Kilde';
	@override String get app => 'App';
	@override String get appsFromSourceAreTrackOnly => 'Apps fra denne kilde er \'Følg Kun\'.';
	@override String get youPickedTrackOnly => 'Du har valgt \'Følg Kun\'-indstillingen.';
	@override String get trackOnlyAppDescription => 'Appen tjekkes for opdateringer, men Updatium kan ikke hente eller installere den.';
	@override String get cancelled => 'Annulleret';
	@override String get appAlreadyAdded => 'Appen er allerede tilføjet';
	@override String get alreadyUpToDateQuestion => 'Er appen allerede opdateret?';
	@override String get addApp => 'Tilføj app';
	@override String get appSourceURL => 'URL til app-kilde';
	@override String get error => 'Fejl';
	@override String get add => 'Tilføj';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Søg (kun visse kilder)';
	@override String get search => 'Søg';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Flere indstillinger for {}';
	@override String get supportedSources => 'Understøttede kilder';
	@override String get trackOnlyInBrackets => '(Følg Kun)';
	@override String get searchableInBrackets => '(Kan Søges)';
	@override String get appsString => 'Apps';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Ingen apps';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Ingen apps til filter';
	@override String get byX => 'Af {}';
	@override String get percentProgress => 'Hentning: {}%';
	@override String get pleaseWait => 'Vent venligst';
	@override String get updateAvailable => 'Opdatering tilgængelig';
	@override String get notInstalled => 'Ikke installeret';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-version';
	@override String get selectAll => 'Vælg alle';
	@override String get deselectX => 'Fravælg {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} fjernes fra Updatium, men forbliver installeret på enheden.';
	@override String get removeSelectedAppsQuestion => 'Fjern valgte apps?';
	@override String get removeSelectedApps => 'Fjern valgte apps';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Opdater {}';
	@override String get installX => 'Installer {}';
	@override String get markXTrackOnlyAsUpdated => 'Markér {}\n(Følg Kun)\nsom opdateret';
	@override String get changeX => 'Skift {}';
	@override String get installUpdateApps => 'Installer/Opdater apps';
	@override String get installUpdateSelectedApps => 'Installer/Opdater valgte apps';
	@override String get markXSelectedAppsAsUpdated => 'Markér {} valgte apps som opdateret?';
	@override String get no => 'Nej';
	@override String get yes => 'Ja';
	@override String get markSelectedAppsUpdated => 'Markér valgte apps som opdateret';
	@override String get pinToTop => 'Fastgør til toppen';
	@override String get unpinFromTop => 'Frigør fra toppen';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Nulstil installationsstatus for valgte apps?';
	@override String get installStatusOfXWillBeResetExplanation => 'Installationsstatus for alle valgte apps nulstilles.\n\nDette kan hjælpe, når en forkert app-version vises i Updatium grundet mislykkede opdateringer eller andre problemer.';
	@override String get customLinkMessage => 'Disse links virker på enheder med Updatium installeret';
	@override String get shareAppConfigLinks => 'Del app-konfiguration som HTML-link';
	@override String get resetInstallStatus => 'Nulstil installationsstatus';
	@override String get more => 'Mere';
	@override String get removeOutdatedFilter => 'Fjern forældet app-filter';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Vis kun forældede apps';
	@override String get filter => 'Filtrer';
	@override String get filterApps => 'Filtrer Apps';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Appnavn';
	@override String get author => 'Udvikler';
	@override String get upToDateApps => 'Opdaterede apps';
	@override String get nonInstalledApps => 'Ikke-installerede apps';
	@override String get importExport => 'Import/Eksport';
	@override String get settings => 'Indstillinger';
	@override String get exportedTo => 'Eksportér til {}';
	@override String get updatiumExport => 'Updatium-eksport';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Ugyldigt input';
	@override String get importedX => 'Importerede {}';
	@override String get updatiumImport => 'Updatium-import';
	@override String get importFromURLList => 'Importér fra URL-liste';
	@override String get searchQuery => 'Søgning';
	@override String get appURLList => 'Liste over app-URL\'er';
	@override String get line => 'Linje';
	@override String get searchX => 'Søg {}';
	@override String get noResults => 'Ingen resultater fundet';
	@override String get importX => 'Importér {}';
	@override String get importedAppsIdDisclaimer => 'Importerede apps vises muligvis forkert som "Ikke installeret".\nFor at løse dette, geninstaller dem via Updatium.\nDette bør ikke påvirke app-data.\n\nPåvirker kun URL- og tredjepartsimportmetoder.';
	@override String get importErrors => 'Importfejl';
	@override String get importedXOfYApps => '{} af {} app importeret.';
	@override String get followingURLsHadErrors => 'Følgende URL\'er havde fejl:';
	@override String get selectURL => 'Vælg URL';
	@override String get selectURLs => 'Vælg URL\'er';
	@override String get pick => 'Vælg';
	@override String get theme => 'Tema';
	@override String get dark => 'Mørk';
	@override String get light => 'Lys';
	@override String get followSystem => 'Følg system';
	@override String get followSystemThemeExplanation => 'Det er kun muligt at følge systemtemaet ved brug af tredjepartsapplikationer';
	@override String get useBlackTheme => 'Brug rent sort mørkt tema';
	@override String get appSortBy => 'Sortér apps efter:';
	@override String get authorName => 'Udvikler/Navn';
	@override String get nameAuthor => 'Navn/Udvikler';
	@override String get asAdded => 'Som tilføjet';
	@override String get appSortOrder => 'Sorteringsrækkefølge for apps';
	@override String get ascending => 'Stigende';
	@override String get descending => 'Faldende';
	@override String get bgUpdateCheckInterval => 'Kontrolinterval for baggrundsopdatering';
	@override String get neverManualOnly => 'Aldrig - Kun manuelt';
	@override String get appearance => 'Udseende';
	@override String get pinUpdates => 'Fastgør opdateringer øverst i app-visning';
	@override String get updates => 'Opdateringer';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Kildespecifik';
	@override String get appSource => 'App-kilde';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Ingen logs';
	@override String get appLogs => 'App-logs';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Luk';
	@override String get share => 'Del';
	@override String get appNotFound => 'App ikke fundet';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-eksport';
	@override String get pickAnAPK => 'Vælg en APK';
	@override String get appHasMoreThanOnePackage => '{} har mere end én pakke:';
	@override String get deviceSupportsXArch => 'Din enhed understøtter CPU-arkitekturen {}.';
	@override String get deviceSupportsFollowingArchs => 'Din enhed understøtter følgende CPU-arkitekturer:';
	@override String get warning => 'Advarsel';
	@override String get sourceIsXButPackageFromYPrompt => 'App-kilden er \'{}\', men udgivelsespakken kommer fra \'{}\'. Fortsæt?';
	@override String get updatesAvailable => 'Opdateringer tilgængelige';
	@override String get updatesAvailableNotifDescription => 'Underretter brugeren om tilgængelige opdateringer for en eller flere apps, som Updatium følger';
	@override String get noNewUpdates => 'Ingen nye opdateringer.';
	@override String get xHasAnUpdate => '{} har en opdatering.';
	@override String get appsUpdated => 'Apps opdateret';
	@override String get appsNotUpdated => 'Kunne ikke opdatere applikationerne';
	@override String get appsUpdatedNotifDescription => 'Underretter brugeren om, at opdateringer til en eller flere apps blev udført i baggrunden';
	@override String get xWasUpdatedToY => '{} blev opdateret til {}.';
	@override String get xWasNotUpdatedToY => 'Kunne ikke opdatere {} til {}.';
	@override String get errorCheckingUpdates => 'Fejl ved tjek for opdateringer';
	@override String get errorCheckingUpdatesNotifDescription => 'En meddelelse, der vises, opdateringstjek i baggrunden mislykkes';
	@override String get appsRemoved => 'Apps fjernet';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Underretter brugeren om, at en eller flere apps blev fjernet grundet fejl under indlæsning af dem';
	@override String get xWasRemovedDueToErrorY => '{} blev fjernet grundet denne fejl: {}';
	@override String get completeAppInstallation => 'Færdiggør app-installation';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium skal være åben for at installere apps';
	@override String get completeAppInstallationNotifDescription => 'Beder brugeren om at gå tilbage til Updatium for at færdiggøre installation af en app';
	@override String get checkingForUpdates => 'Tjekker for opdateringer';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Kortvarig meddelelse ved tjek for opdateringer';
	@override String get pleaseAllowInstallPerm => 'Tillad venligst Updatium at installere apps';
	@override String get trackOnly => 'Følg Kun';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Fejl {}';
	@override String get versionCorrectionDisabled => 'Versionskorrektion deaktiveret (plugin ser ikke ud til at virke)';
	@override String get unknown => 'Ukendt';
	@override String get none => 'Ingen';
	@override String get all => 'Alle';
	@override String get never => 'Aldrig';
	@override String get latestVersion => 'Seneste';
	@override String get installedVersionX => 'Installeret: {}';
	@override String get lastUpdateCheckX => 'Sidste opdateringstjek: {}';
	@override String get remove => 'Fjern';
	@override String get quickLinks => 'Hurtige links';
	@override String get yesMarkUpdated => 'Ja, markér som opdateret';
	@override String get fdroid => 'F-Droid Officiel';
	@override String get appIdOrName => 'App-ID eller -navn';
	@override String get appId => 'App-ID';
	@override String get appWithIdOrNameNotFound => 'Ingen app med det ID eller navn blev fundet';
	@override String get reposHaveMultipleApps => 'Repos kan indeholde flere apps';
	@override String get fdroidThirdPartyRepo => 'F-Droid Tredjeparts-repo';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Installer';
	@override String get markInstalled => 'Markér som installeret';
	@override String get update => 'Opdater';
	@override String get updated => 'Opdateret';
	@override String get markUpdated => 'Markér som opdateret';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Flere indstillinger';
	@override String get disableVersionDetection => 'Deaktivér versionsregistrering';
	@override String get noVersionDetectionExplanation => 'Denne indstilling bør kun bruges til apps, hvor versionsregistrering ikke virker korrekt.';
	@override String get downloadingX => 'Henter {}';
	@override String get downloadX => 'Hent {}';
	@override String get downloadedX => 'Hentede {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Udgivelsesressource';
	@override String get downloadNotifDescription => 'Underretter brugeren om status på hentning af en app';
	@override String get noAPKFound => 'Ingen APK fundet';
	@override String get noVersionDetection => 'Ingen versionsregistrering';
	@override String get categorize => 'Kategoriser';
	@override String get categories => 'Kategorier';
	@override String get category => 'Kategori';
	@override String get noCategory => 'Ingen kategori';
	@override String get noCategories => 'Ingen kategorier';
	@override String get categoryDeleteQuestion => 'Slet kategorier?';
	@override String get categoryDeleteWarning => 'Alle apps i slettede kategorier indstilles til ukategoriseret.';
	@override String get addCategory => 'Tilføj kategori';
	@override String get label => 'Etiket';
	@override String get language => 'Sprog';
	@override String get copiedToClipboard => 'Kopieret til udklipsholder';
	@override String get storagePermissionDenied => 'Lagringstilladelse nægtet';
	@override String get selectedCategorizeWarning => 'Dette erstatter alle eksisterende kategoriindstillinger for de valgte apps.';
	@override String get filterAPKsByRegEx => 'Filtrer APK\'er efter regulært udtryk';
	@override String get removeFromUpdatium => 'Fjern fra Updatium';
	@override String get uninstallFromDevice => 'Afinstaller fra enhed';
	@override String get onlyWorksWithNonVersionDetectApps => 'Virker kun for apps med versionsregistrering deaktiveret.';
	@override String get releaseDateAsVersion => 'Brug udgivelsesdato som versionsstreng';
	@override String get releaseTitleAsVersion => 'Brug udgivelsestitel som versionsstreng';
	@override String get releaseDateAsVersionExplanation => 'Denne indstilling bør kun bruges til apps, hvor versionsregistrering ikke virker korrekt, men hvor en udgivelsesdato er tilgængelig.';
	@override String get changes => 'Ændringer';
	@override String get releaseDate => 'Udgivelsesdato';
	@override String get importFromURLsInFile => 'Importér fra URL\'er i fil (som OPML)';
	@override String get versionDetectionExplanation => 'Afstem versionsstreng med versionen registreret fra OS';
	@override String get versionDetection => 'Versionsregistrering';
	@override String get standardVersionDetection => 'Standard versionsregistrering';
	@override String get groupByCategory => 'Gruppér efter kategori';
	@override String get listView => 'Listevisning';
	@override String get gridView => 'Gittervisning';
	@override String get autoApkFilterByArch => 'Forsøg at filtrere APK\'er efter CPU-arkitektur, hvis muligt';
	@override String get autoLinkFilterByArch => 'Forsøg at filtrere links efter CPU-arkitektur, hvis det er muligt';
	@override String get overrideSource => 'Tilsidesæt kilde';
	@override String get dontShowAgain => 'Vis ikke igen';
	@override String get dontShowTrackOnlyWarnings => 'Vis ikke \'Følg Kun\'-advarsler';
	@override String get dontShowAPKOriginWarnings => 'Vis ikke advarsler om APK-oprindelse';
	@override String get moveNonInstalledAppsToBottom => 'Flyt ikke-installerede apps nederst i app-visning';
	@override String get gitlabPATLabel => 'GitLab Personlig Adgangstoken';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Om';
	@override String get requiresCredentialsInSettings => '{} kræver yderligere legitimation (i Indstillinger)';
	@override String get checkOnStart => 'Tjek for opdateringer ved opstart';
	@override String get safeMode => 'Sikker tilstand';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Tilføj app er deaktiveret i sikker tilstand';
	@override String get tryInferAppIdFromCode => 'Forsøg at udlede app-ID fra kildekode';
	@override String get removeOnExternalUninstall => 'Fjern automatisk eksternt afinstallerede apps';
	@override String get pickHighestVersionCode => 'Auto-vælg højeste versionKode af APK';
	@override String get checkUpdateOnDetailPage => 'Tjek for opdateringer ved åbning af appens detaljeside';
	@override String get disablePageTransitions => 'Deaktivér sideovergangsanimationer';
	@override String get reversePageTransitions => 'Omvendte sideovergangsanimationer';
	@override String get minStarCount => 'Minimum antal stjerner';
	@override String get addInfoBelow => 'Tilføj denne info nedenfor.';
	@override String get addInfoInSettings => 'Tilføj denne info i Indstillinger.';
	@override String get githubSourceNote => 'GitHub\'s hastighedsbegrænsning kan undgås med en API-nøgle.';
	@override String get sortByLastLinkSegment => 'Sortér kun efter det sidste segment af linket';
	@override String get filterReleaseNotesByRegEx => 'Filtrer udgivelsesnoter efter regulært udtryk';
	@override String get customLinkFilterRegex => 'Brugerdefineret APK-linkfilter efter regulært udtryk (standard \'.apk$\')';
	@override String get appsPossiblyUpdated => 'App-opdateringer forsøgt';
	@override String get appsPossiblyUpdatedNotifDescription => 'Underretter brugeren om, at opdateringer til en eller flere apps muligvis blev udført i baggrunden';
	@override String get xWasPossiblyUpdatedToY => '{} er muligvis blevet opdateret til {}.';
	@override String get enableBackgroundUpdates => 'Aktivér baggrundsopdateringer';
	@override String get backgroundUpdateReqsExplanation => 'Baggrundsopdateringer er måske ikke mulige for alle apps.';
	@override String get backgroundUpdateLimitsExplanation => 'En vellykket baggrundsinstallation kan kun afgøres, når Updatium åbnes.';
	@override String get verifyLatestTag => 'Verificer \'seneste\'-tagget';
	@override String get intermediateLinkRegex => 'Filtrer efter et \'mellemliggende\' link at besøge';
	@override String get filterByLinkText => 'Filtrer links efter linktekst';
	@override String get matchLinksOutsideATags => 'Match links uden for <a>-tags';
	@override String get intermediateLinkNotFound => 'Mellemliggende link ikke fundet';
	@override String get intermediateLink => 'Mellemliggende link';
	@override String get exemptFromBackgroundUpdates => 'Undtag fra baggrundsopdateringer (hvis aktiveret)';
	@override String get bgUpdatesOnWiFiOnly => 'Deaktiver baggrundsopdateringer, når du ikke er på Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Deaktiver baggrundsopdateringer, når du ikke oplader';
	@override String get autoSelectHighestVersionCode => 'Auto-vælg højeste versionKode af APK';
	@override String get versionExtractionRegEx => 'RegEx for versionsstrengsudtrækning';
	@override String get trimVersionString => 'Trim versionsstreng med RegEx';
	@override String get matchGroupToUseForX => 'Match-gruppe til brug for "{}"';
	@override String get matchGroupToUse => 'RegEx-matchgruppe til brug for versionsstrengsudtrækning';
	@override String get highlightTouchTargets => 'Fremhæv mindre åbenlyse berøringsmål';
	@override String get pickExportDir => 'Vælg eksportmappe';
	@override String get autoExportOnChanges => 'Auto-eksportér ved ændringer';
	@override String get includeSettings => 'Inkluder indstillinger';
	@override String get filterVersionsByRegEx => 'Filtrer versioner efter regulært udtryk';
	@override String get trySelectingSuggestedVersionCode => 'Forsøg at vælge den foreslåede versionKode af APK';
	@override String get dontSortReleasesList => 'Behold udgivelsesrækkefølge fra API';
	@override String get reverseSort => 'Omvendt sortering';
	@override String get takeFirstLink => 'Tag første link';
	@override String get skipSort => 'Spring sortering over';
	@override String get debugMenu => 'Fejlfindingsmenu';
	@override String get bgTaskStarted => 'Baggrundsopgave startet - tjek logfiler.';
	@override String get runBgCheckNow => 'Kør baggrundsopdateringstjek nu';
	@override String get versionExtractWholePage => 'Anvend RegEx til versionsstrengsudtrækning på hele siden';
	@override String get installing => 'Installerer';
	@override String get skipUpdateNotifications => 'Spring opdateringsmeddelelser over';
	@override String get updatesAvailableNotifChannel => 'Opdateringer tilgængelige';
	@override String get appsUpdatedNotifChannel => 'Apps opdateret';
	@override String get appsPossiblyUpdatedNotifChannel => 'App-opdateringer forsøgt';
	@override String get errorCheckingUpdatesNotifChannel => 'Fejl ved opdateringstjek';
	@override String get appsRemovedNotifChannel => 'Apps fjernet';
	@override String get downloadingXNotifChannel => 'Henter {}';
	@override String get completeAppInstallationNotifChannel => 'Færdiggør app-installation';
	@override String get checkingForUpdatesNotifChannel => 'Tjekker for opdateringer';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Tjek kun installerede og \'Følg Kun\'-apps for opdateringer';
	@override String get supportFixedAPKURL => 'Understøt fikserede APK-URL\'er';
	@override String get selectX => 'Vælg {}';
	@override String get parallelDownloads => 'Tillad samtidige overførsler';
	@override String get useShizuku => 'Brug Shizuku eller Sui til at installere';
	@override String get shizukuBinderNotFound => 'Shizuku-tjeneste kører ikke';
	@override String get shizukuOld => 'Forældet Shizuku-version (<11). Opdater den';
	@override String get shizukuOldAndroidWithADB => 'Shizuku kører på Android <8.1 med ADB. Opdater Android eller brug Sui i stedet';
	@override String get shizukuPretendToBeGooglePlay => 'Indstil Google Play som installationskilde (hvis Shizuku bruges)';
	@override String get useSystemFont => 'Brug systemskrifttype';
	@override String get useVersionCodeAsOSVersion => 'Brug app-versionKode som OS-registreret version';
	@override String get requestHeader => 'Anmodningsheader';
	@override String get useLatestAssetDateAsReleaseDate => 'Brug seneste ressourceupload som udgivelsesdato';
	@override String get defaultPseudoVersioningMethod => 'Standard pseudo-versioneringsmetode';
	@override String get partialAPKHash => 'Delvis APK-hash';
	@override String get APKLinkHash => 'Hash for APK-link';
	@override String get directAPKLink => 'Direkte APK-link';
	@override String get pseudoVersionInUse => 'En pseudo-version er i brug';
	@override String get installedVersion => 'Installeret';
	@override String get installed => 'Installeret';
	@override String get notInstalledApps => 'Ikke installeret';
	@override String get latest => 'Seneste';
	@override String get invertRegEx => 'Inverter regulært udtryk';
	@override String get note => 'Bemærk';
	@override String get selfHostedNote => 'Rullemenuen "{}" kan bruges til at nå selvhostede/brugerdefinerede instanser af enhver kilde.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK\'en kunne ikke analyseres (inkompatibel eller delvis hentning)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Del nye apps med AppVerifier (hvis tilgængelig)';
	@override String get appVerifierInstructionToast => 'Del til AppVerifier, og vend tilbage, når du er klar.';
	@override String get wiki => 'Hjælp/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Tillad usikre HTTP-anmodninger';
	@override String get stayOneVersionBehind => 'Forbliv én version bagud den seneste';
	@override String get useFirstApkOfVersion => 'Vælg automatisk den første af flere APK\'er';
	@override String get refreshBeforeDownload => 'Opdater app-detaljer før download';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Navn';
	@override String get smartname => 'Navn (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sorteringsmetode';
	@override String get welcome => 'Velkommen';
	@override String get batteryOptimizationNote => 'Bemærk, at baggrundsdownloads kan fungere mere pålideligt, hvis du deaktiverer OS-batterioptimering for Updatium.';
	@override String get fileDeletionError => 'Kunne ikke slette filen (prøv at slette den manuelt og prøv igen): "{}"';
	@override String get foregroundService => 'Updatium forgrundstjeneste';
	@override String get foregroundServiceExplanation => 'Brug en forgrundstjeneste til opdateringskontrol (mere pålidelig, bruger mere strøm)';
	@override String get fgServiceNotice => 'Denne meddelelse er nødvendig for baggrundsopdateringskontrol (den kan skjules i OS-indstillingerne).';
	@override String get excludeSecrets => 'Udeluk hemmeligheder';
	@override String get GHReqPrefix => '\'omeritzics/Updatium\'-instans til GitHub-anmodninger';
	@override String get includeZips => 'Inkluder ZIP-filer';
	@override String get zippedApkFilterRegEx => 'Filtrer APK\'er inde i ZIP';
	@override String get multipleSigners => 'Flere signere';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Fjern app?',
		other: 'Fjern apps?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'For mange anmodninger (begrænset hastighed). Prøv igen om {count} minut',
		other: 'For mange anmodninger (begrænset hastighed). Prøv igen om {count} minutter',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Baggrundsopdateringstjek stødte på en {error}. Planlægger et nyt tjek om {count} minut',
		other: 'Baggrundsopdateringstjek stødte på en {error}. Planlægger et nyt tjek om {count} minutter',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Baggrundsopdateringstjek fandt {count} opdatering. Underretter brugeren, hvis nødvendigt',
		other: 'Baggrundsopdateringstjek fandt {count} opdateringer. Underretter brugeren, hvis nødvendigt',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{count} App',
		other: '{count} Apps',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{count} URL',
		other: '{count} URL\'er',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{count} minut',
		other: '{count} minutter',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{count} time',
		other: '{count} timer',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{count} dag',
		other: '{count} dage',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Ryddet {n} log (før = {before}, efter = {after})',
		other: 'Ryddede {n} logs (før = {before}, efter = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{app} og 1 anden app har opdateringer.',
		other: '{app} og {count} andre apps har opdateringer.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{app} og 1 anden app blev opdateret.',
		other: '{app} og {count} andre apps blev opdateret.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Kunne ikke opdatere {app} og 1 anden app.',
		other: 'Kunne ikke opdatere {app} og {count} andre apps.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{app} og 1 anden app blev muligvis opdateret.',
		other: '{app} og {count} andre apps blev muligvis opdateret.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: '{count} APK',
		other: '{count} APK\'er',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n,
		one: 'Certifikathash',
		other: 'Certifikathash',
	);
	@override String get securityDisclaimerTitle => 'Sikkerheds- og Juridisk Ansvarsfraskrivelse';
	@override String get license => 'Licens';
	@override String get licenseText => 'Denne applikation distribueres under GPL v3-licensen.';
	@override String get disclaimer => 'Ansvarsfraskrivelse';
	@override String get disclaimerText => 'Denne applikation distribuerer, hoster eller verificerer ingen af de eksterne applikationer. Brugeren bærer det fulde ansvar for sikkerheden og lovligheden af enhver software installeret via dette værktøj.\n\nhttps://github.com/omeritzics/Updatium er det eneste officielle sted at downloade Updatium - det frarådes kraftigt at downloade det andre steder, da download fra uofficielle kilder ikke er sikkert.';
	@override String get privacy => 'Privatliv';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Accepter og fortsæt';
	@override String get decline => 'Afvis';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Nyer du godt af Updatium?';
	@override String get githubStarPromptContent => 'Updatium er et frivilligt open source community-projekt, som jeg udvikler i min fritid. Hvis du ønsker at støtte projektet, så overvej venligst at give det en stjerne på GitHub for at hjælpe os med at nå flere brugere og bidragsydere. Du vil ikke blive påmindet om dette igen. Tak på forhånd! :)';
	@override String get githubStarPromptStar => 'Giv stjerne';
	@override String get githubStarPromptDontShowAgain => 'Vis ikke igen';
	@override String get sourceCode => 'Kildekode';
	@override String get developedBy => 'Udviklet af';
	@override String get appDescription => 'En tilpasselig Android-appkatalog, der lader dig opdatere dine apps direkte fra deres APK-kilder.';
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

/// The flat map containing all translations for locale <da>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Ikke et gyldigt {} app-URL',
			'noReleaseFound' => 'Kunne ikke finde en passende udgivelse',
			'noVersionFound' => 'Kunne ikke afgøre udgivelsesversion',
			'urlMatchesNoSource' => 'URL\'en matcher ikke en kendt kilde',
			'cantInstallOlderVersion' => 'Kan ikke installere en ældre version af en app',
			'appIdMismatch' => 'Hentet pakke-ID matcher ikke eksisterende app-ID',
			'functionNotImplemented' => 'Denne klasse har ikke implementeret denne funktion',
			'placeholder' => 'Pladsholder',
			'someErrors' => 'Nogle fejl opstod',
			'unexpectedError' => 'Uventet fejl',
			'ok' => 'OK',
			'and' => 'og',
			'githubPATLabel' => 'GitHub Personlig Adgangstoken',
			'includePrereleases' => 'Inkluder forudgivelser',
			'fallbackToOlderReleases' => 'Fallback til ældre udgivelser',
			'filterReleaseTitlesByRegEx' => 'Filtrer udgivelsestitler efter regulært udtryk',
			'invalidRegEx' => 'Ugyldigt regulært udtryk',
			'noDescription' => 'Ingen beskrivelse',
			'cancel' => 'Annuller',
			'kContinue' => 'Fortsæt',
			'requiredInBrackets' => '(Påkrævet)',
			'dropdownNoOptsError' => 'FEJL: RULLEMENU SKAL HAVE MINDST ÉT TILVALG',
			'color' => 'Farve',
			'standard' => 'Standard',
			'custom' => 'Brugerdefineret',
			'primary' => 'Primary',
			'useMaterialYou' => 'Brug Material You-farver',
			'githubStarredRepos' => 'Stjernemarkeret GitHub-repos',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Brugernavn',
			'wrongArgNum' => 'Forkert antal argumenter angivet',
			'xIsTrackOnly' => '{} er \'Følg Kun\'',
			'source' => 'Kilde',
			'app' => 'App',
			'appsFromSourceAreTrackOnly' => 'Apps fra denne kilde er \'Følg Kun\'.',
			'youPickedTrackOnly' => 'Du har valgt \'Følg Kun\'-indstillingen.',
			'trackOnlyAppDescription' => 'Appen tjekkes for opdateringer, men Updatium kan ikke hente eller installere den.',
			'cancelled' => 'Annulleret',
			'appAlreadyAdded' => 'Appen er allerede tilføjet',
			'alreadyUpToDateQuestion' => 'Er appen allerede opdateret?',
			'addApp' => 'Tilføj app',
			'appSourceURL' => 'URL til app-kilde',
			'error' => 'Fejl',
			'add' => 'Tilføj',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Søg (kun visse kilder)',
			'search' => 'Søg',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Flere indstillinger for {}',
			'supportedSources' => 'Understøttede kilder',
			'trackOnlyInBrackets' => '(Følg Kun)',
			'searchableInBrackets' => '(Kan Søges)',
			'appsString' => 'Apps',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Ingen apps',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Ingen apps til filter',
			'byX' => 'Af {}',
			'percentProgress' => 'Hentning: {}%',
			'pleaseWait' => 'Vent venligst',
			'updateAvailable' => 'Opdatering tilgængelig',
			'notInstalled' => 'Ikke installeret',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-version',
			'selectAll' => 'Vælg alle',
			'deselectX' => 'Fravælg {}',
			'xWillBeRemovedButRemainInstalled' => '{} fjernes fra Updatium, men forbliver installeret på enheden.',
			'removeSelectedAppsQuestion' => 'Fjern valgte apps?',
			'removeSelectedApps' => 'Fjern valgte apps',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Opdater {}',
			'installX' => 'Installer {}',
			'markXTrackOnlyAsUpdated' => 'Markér {}\n(Følg Kun)\nsom opdateret',
			'changeX' => 'Skift {}',
			'installUpdateApps' => 'Installer/Opdater apps',
			'installUpdateSelectedApps' => 'Installer/Opdater valgte apps',
			'markXSelectedAppsAsUpdated' => 'Markér {} valgte apps som opdateret?',
			'no' => 'Nej',
			'yes' => 'Ja',
			'markSelectedAppsUpdated' => 'Markér valgte apps som opdateret',
			'pinToTop' => 'Fastgør til toppen',
			'unpinFromTop' => 'Frigør fra toppen',
			'resetInstallStatusForSelectedAppsQuestion' => 'Nulstil installationsstatus for valgte apps?',
			'installStatusOfXWillBeResetExplanation' => 'Installationsstatus for alle valgte apps nulstilles.\n\nDette kan hjælpe, når en forkert app-version vises i Updatium grundet mislykkede opdateringer eller andre problemer.',
			'customLinkMessage' => 'Disse links virker på enheder med Updatium installeret',
			'shareAppConfigLinks' => 'Del app-konfiguration som HTML-link',
			'resetInstallStatus' => 'Nulstil installationsstatus',
			'more' => 'Mere',
			'removeOutdatedFilter' => 'Fjern forældet app-filter',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Vis kun forældede apps',
			'filter' => 'Filtrer',
			'filterApps' => 'Filtrer Apps',
			'filterDays' => 'Filter days',
			'appName' => 'Appnavn',
			'author' => 'Udvikler',
			'upToDateApps' => 'Opdaterede apps',
			'nonInstalledApps' => 'Ikke-installerede apps',
			'importExport' => 'Import/Eksport',
			'settings' => 'Indstillinger',
			'exportedTo' => 'Eksportér til {}',
			'updatiumExport' => 'Updatium-eksport',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Ugyldigt input',
			'importedX' => 'Importerede {}',
			'updatiumImport' => 'Updatium-import',
			'importFromURLList' => 'Importér fra URL-liste',
			'searchQuery' => 'Søgning',
			'appURLList' => 'Liste over app-URL\'er',
			'line' => 'Linje',
			'searchX' => 'Søg {}',
			'noResults' => 'Ingen resultater fundet',
			'importX' => 'Importér {}',
			'importedAppsIdDisclaimer' => 'Importerede apps vises muligvis forkert som "Ikke installeret".\nFor at løse dette, geninstaller dem via Updatium.\nDette bør ikke påvirke app-data.\n\nPåvirker kun URL- og tredjepartsimportmetoder.',
			'importErrors' => 'Importfejl',
			'importedXOfYApps' => '{} af {} app importeret.',
			'followingURLsHadErrors' => 'Følgende URL\'er havde fejl:',
			'selectURL' => 'Vælg URL',
			'selectURLs' => 'Vælg URL\'er',
			'pick' => 'Vælg',
			'theme' => 'Tema',
			'dark' => 'Mørk',
			'light' => 'Lys',
			'followSystem' => 'Følg system',
			'followSystemThemeExplanation' => 'Det er kun muligt at følge systemtemaet ved brug af tredjepartsapplikationer',
			'useBlackTheme' => 'Brug rent sort mørkt tema',
			'appSortBy' => 'Sortér apps efter:',
			'authorName' => 'Udvikler/Navn',
			'nameAuthor' => 'Navn/Udvikler',
			'asAdded' => 'Som tilføjet',
			'appSortOrder' => 'Sorteringsrækkefølge for apps',
			'ascending' => 'Stigende',
			'descending' => 'Faldende',
			'bgUpdateCheckInterval' => 'Kontrolinterval for baggrundsopdatering',
			'neverManualOnly' => 'Aldrig - Kun manuelt',
			'appearance' => 'Udseende',
			'pinUpdates' => 'Fastgør opdateringer øverst i app-visning',
			'updates' => 'Opdateringer',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Kildespecifik',
			'appSource' => 'App-kilde',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Ingen logs',
			'appLogs' => 'App-logs',
			'appLogsHint' => 'View application logs',
			'close' => 'Luk',
			'share' => 'Del',
			'appNotFound' => 'App ikke fundet',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-eksport',
			'pickAnAPK' => 'Vælg en APK',
			'appHasMoreThanOnePackage' => '{} har mere end én pakke:',
			'deviceSupportsXArch' => 'Din enhed understøtter CPU-arkitekturen {}.',
			'deviceSupportsFollowingArchs' => 'Din enhed understøtter følgende CPU-arkitekturer:',
			'warning' => 'Advarsel',
			'sourceIsXButPackageFromYPrompt' => 'App-kilden er \'{}\', men udgivelsespakken kommer fra \'{}\'. Fortsæt?',
			'updatesAvailable' => 'Opdateringer tilgængelige',
			'updatesAvailableNotifDescription' => 'Underretter brugeren om tilgængelige opdateringer for en eller flere apps, som Updatium følger',
			'noNewUpdates' => 'Ingen nye opdateringer.',
			'xHasAnUpdate' => '{} har en opdatering.',
			'appsUpdated' => 'Apps opdateret',
			'appsNotUpdated' => 'Kunne ikke opdatere applikationerne',
			'appsUpdatedNotifDescription' => 'Underretter brugeren om, at opdateringer til en eller flere apps blev udført i baggrunden',
			'xWasUpdatedToY' => '{} blev opdateret til {}.',
			'xWasNotUpdatedToY' => 'Kunne ikke opdatere {} til {}.',
			'errorCheckingUpdates' => 'Fejl ved tjek for opdateringer',
			'errorCheckingUpdatesNotifDescription' => 'En meddelelse, der vises, opdateringstjek i baggrunden mislykkes',
			'appsRemoved' => 'Apps fjernet',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Underretter brugeren om, at en eller flere apps blev fjernet grundet fejl under indlæsning af dem',
			'xWasRemovedDueToErrorY' => '{} blev fjernet grundet denne fejl: {}',
			'completeAppInstallation' => 'Færdiggør app-installation',
			'updatiumMustBeOpenToInstallApps' => 'Updatium skal være åben for at installere apps',
			'completeAppInstallationNotifDescription' => 'Beder brugeren om at gå tilbage til Updatium for at færdiggøre installation af en app',
			'checkingForUpdates' => 'Tjekker for opdateringer',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Kortvarig meddelelse ved tjek for opdateringer',
			'pleaseAllowInstallPerm' => 'Tillad venligst Updatium at installere apps',
			'trackOnly' => 'Følg Kun',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Fejl {}',
			'versionCorrectionDisabled' => 'Versionskorrektion deaktiveret (plugin ser ikke ud til at virke)',
			'unknown' => 'Ukendt',
			'none' => 'Ingen',
			'all' => 'Alle',
			'never' => 'Aldrig',
			'latestVersion' => 'Seneste',
			'installedVersionX' => 'Installeret: {}',
			'lastUpdateCheckX' => 'Sidste opdateringstjek: {}',
			'remove' => 'Fjern',
			'quickLinks' => 'Hurtige links',
			'yesMarkUpdated' => 'Ja, markér som opdateret',
			'fdroid' => 'F-Droid Officiel',
			'appIdOrName' => 'App-ID eller -navn',
			'appId' => 'App-ID',
			'appWithIdOrNameNotFound' => 'Ingen app med det ID eller navn blev fundet',
			'reposHaveMultipleApps' => 'Repos kan indeholde flere apps',
			'fdroidThirdPartyRepo' => 'F-Droid Tredjeparts-repo',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Installer',
			'markInstalled' => 'Markér som installeret',
			'update' => 'Opdater',
			'updated' => 'Opdateret',
			'markUpdated' => 'Markér som opdateret',
			'download' => 'Download',
			'additionalOptions' => 'Flere indstillinger',
			'disableVersionDetection' => 'Deaktivér versionsregistrering',
			'noVersionDetectionExplanation' => 'Denne indstilling bør kun bruges til apps, hvor versionsregistrering ikke virker korrekt.',
			'downloadingX' => 'Henter {}',
			'downloadX' => 'Hent {}',
			'downloadedX' => 'Hentede {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Udgivelsesressource',
			'downloadNotifDescription' => 'Underretter brugeren om status på hentning af en app',
			'noAPKFound' => 'Ingen APK fundet',
			'noVersionDetection' => 'Ingen versionsregistrering',
			'categorize' => 'Kategoriser',
			'categories' => 'Kategorier',
			'category' => 'Kategori',
			'noCategory' => 'Ingen kategori',
			'noCategories' => 'Ingen kategorier',
			'categoryDeleteQuestion' => 'Slet kategorier?',
			'categoryDeleteWarning' => 'Alle apps i slettede kategorier indstilles til ukategoriseret.',
			'addCategory' => 'Tilføj kategori',
			'label' => 'Etiket',
			'language' => 'Sprog',
			'copiedToClipboard' => 'Kopieret til udklipsholder',
			'storagePermissionDenied' => 'Lagringstilladelse nægtet',
			'selectedCategorizeWarning' => 'Dette erstatter alle eksisterende kategoriindstillinger for de valgte apps.',
			'filterAPKsByRegEx' => 'Filtrer APK\'er efter regulært udtryk',
			'removeFromUpdatium' => 'Fjern fra Updatium',
			'uninstallFromDevice' => 'Afinstaller fra enhed',
			'onlyWorksWithNonVersionDetectApps' => 'Virker kun for apps med versionsregistrering deaktiveret.',
			'releaseDateAsVersion' => 'Brug udgivelsesdato som versionsstreng',
			'releaseTitleAsVersion' => 'Brug udgivelsestitel som versionsstreng',
			'releaseDateAsVersionExplanation' => 'Denne indstilling bør kun bruges til apps, hvor versionsregistrering ikke virker korrekt, men hvor en udgivelsesdato er tilgængelig.',
			'changes' => 'Ændringer',
			'releaseDate' => 'Udgivelsesdato',
			'importFromURLsInFile' => 'Importér fra URL\'er i fil (som OPML)',
			'versionDetectionExplanation' => 'Afstem versionsstreng med versionen registreret fra OS',
			'versionDetection' => 'Versionsregistrering',
			'standardVersionDetection' => 'Standard versionsregistrering',
			'groupByCategory' => 'Gruppér efter kategori',
			'listView' => 'Listevisning',
			'gridView' => 'Gittervisning',
			'autoApkFilterByArch' => 'Forsøg at filtrere APK\'er efter CPU-arkitektur, hvis muligt',
			'autoLinkFilterByArch' => 'Forsøg at filtrere links efter CPU-arkitektur, hvis det er muligt',
			'overrideSource' => 'Tilsidesæt kilde',
			'dontShowAgain' => 'Vis ikke igen',
			'dontShowTrackOnlyWarnings' => 'Vis ikke \'Følg Kun\'-advarsler',
			'dontShowAPKOriginWarnings' => 'Vis ikke advarsler om APK-oprindelse',
			'moveNonInstalledAppsToBottom' => 'Flyt ikke-installerede apps nederst i app-visning',
			'gitlabPATLabel' => 'GitLab Personlig Adgangstoken',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Om',
			'requiresCredentialsInSettings' => '{} kræver yderligere legitimation (i Indstillinger)',
			'checkOnStart' => 'Tjek for opdateringer ved opstart',
			'safeMode' => 'Sikker tilstand',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Tilføj app er deaktiveret i sikker tilstand',
			'tryInferAppIdFromCode' => 'Forsøg at udlede app-ID fra kildekode',
			'removeOnExternalUninstall' => 'Fjern automatisk eksternt afinstallerede apps',
			'pickHighestVersionCode' => 'Auto-vælg højeste versionKode af APK',
			'checkUpdateOnDetailPage' => 'Tjek for opdateringer ved åbning af appens detaljeside',
			'disablePageTransitions' => 'Deaktivér sideovergangsanimationer',
			'reversePageTransitions' => 'Omvendte sideovergangsanimationer',
			'minStarCount' => 'Minimum antal stjerner',
			'addInfoBelow' => 'Tilføj denne info nedenfor.',
			'addInfoInSettings' => 'Tilføj denne info i Indstillinger.',
			'githubSourceNote' => 'GitHub\'s hastighedsbegrænsning kan undgås med en API-nøgle.',
			'sortByLastLinkSegment' => 'Sortér kun efter det sidste segment af linket',
			'filterReleaseNotesByRegEx' => 'Filtrer udgivelsesnoter efter regulært udtryk',
			'customLinkFilterRegex' => 'Brugerdefineret APK-linkfilter efter regulært udtryk (standard \'.apk$\')',
			'appsPossiblyUpdated' => 'App-opdateringer forsøgt',
			'appsPossiblyUpdatedNotifDescription' => 'Underretter brugeren om, at opdateringer til en eller flere apps muligvis blev udført i baggrunden',
			'xWasPossiblyUpdatedToY' => '{} er muligvis blevet opdateret til {}.',
			'enableBackgroundUpdates' => 'Aktivér baggrundsopdateringer',
			'backgroundUpdateReqsExplanation' => 'Baggrundsopdateringer er måske ikke mulige for alle apps.',
			'backgroundUpdateLimitsExplanation' => 'En vellykket baggrundsinstallation kan kun afgøres, når Updatium åbnes.',
			'verifyLatestTag' => 'Verificer \'seneste\'-tagget',
			'intermediateLinkRegex' => 'Filtrer efter et \'mellemliggende\' link at besøge',
			'filterByLinkText' => 'Filtrer links efter linktekst',
			'matchLinksOutsideATags' => 'Match links uden for <a>-tags',
			'intermediateLinkNotFound' => 'Mellemliggende link ikke fundet',
			'intermediateLink' => 'Mellemliggende link',
			'exemptFromBackgroundUpdates' => 'Undtag fra baggrundsopdateringer (hvis aktiveret)',
			'bgUpdatesOnWiFiOnly' => 'Deaktiver baggrundsopdateringer, når du ikke er på Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Deaktiver baggrundsopdateringer, når du ikke oplader',
			'autoSelectHighestVersionCode' => 'Auto-vælg højeste versionKode af APK',
			'versionExtractionRegEx' => 'RegEx for versionsstrengsudtrækning',
			'trimVersionString' => 'Trim versionsstreng med RegEx',
			'matchGroupToUseForX' => 'Match-gruppe til brug for "{}"',
			'matchGroupToUse' => 'RegEx-matchgruppe til brug for versionsstrengsudtrækning',
			'highlightTouchTargets' => 'Fremhæv mindre åbenlyse berøringsmål',
			'pickExportDir' => 'Vælg eksportmappe',
			'autoExportOnChanges' => 'Auto-eksportér ved ændringer',
			'includeSettings' => 'Inkluder indstillinger',
			'filterVersionsByRegEx' => 'Filtrer versioner efter regulært udtryk',
			'trySelectingSuggestedVersionCode' => 'Forsøg at vælge den foreslåede versionKode af APK',
			'dontSortReleasesList' => 'Behold udgivelsesrækkefølge fra API',
			'reverseSort' => 'Omvendt sortering',
			'takeFirstLink' => 'Tag første link',
			'skipSort' => 'Spring sortering over',
			'debugMenu' => 'Fejlfindingsmenu',
			'bgTaskStarted' => 'Baggrundsopgave startet - tjek logfiler.',
			'runBgCheckNow' => 'Kør baggrundsopdateringstjek nu',
			'versionExtractWholePage' => 'Anvend RegEx til versionsstrengsudtrækning på hele siden',
			'installing' => 'Installerer',
			'skipUpdateNotifications' => 'Spring opdateringsmeddelelser over',
			'updatesAvailableNotifChannel' => 'Opdateringer tilgængelige',
			'appsUpdatedNotifChannel' => 'Apps opdateret',
			'appsPossiblyUpdatedNotifChannel' => 'App-opdateringer forsøgt',
			'errorCheckingUpdatesNotifChannel' => 'Fejl ved opdateringstjek',
			'appsRemovedNotifChannel' => 'Apps fjernet',
			'downloadingXNotifChannel' => 'Henter {}',
			'completeAppInstallationNotifChannel' => 'Færdiggør app-installation',
			'checkingForUpdatesNotifChannel' => 'Tjekker for opdateringer',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Tjek kun installerede og \'Følg Kun\'-apps for opdateringer',
			'supportFixedAPKURL' => 'Understøt fikserede APK-URL\'er',
			'selectX' => 'Vælg {}',
			'parallelDownloads' => 'Tillad samtidige overførsler',
			'useShizuku' => 'Brug Shizuku eller Sui til at installere',
			'shizukuBinderNotFound' => 'Shizuku-tjeneste kører ikke',
			'shizukuOld' => 'Forældet Shizuku-version (<11). Opdater den',
			'shizukuOldAndroidWithADB' => 'Shizuku kører på Android <8.1 med ADB. Opdater Android eller brug Sui i stedet',
			'shizukuPretendToBeGooglePlay' => 'Indstil Google Play som installationskilde (hvis Shizuku bruges)',
			'useSystemFont' => 'Brug systemskrifttype',
			'useVersionCodeAsOSVersion' => 'Brug app-versionKode som OS-registreret version',
			'requestHeader' => 'Anmodningsheader',
			'useLatestAssetDateAsReleaseDate' => 'Brug seneste ressourceupload som udgivelsesdato',
			'defaultPseudoVersioningMethod' => 'Standard pseudo-versioneringsmetode',
			'partialAPKHash' => 'Delvis APK-hash',
			'APKLinkHash' => 'Hash for APK-link',
			'directAPKLink' => 'Direkte APK-link',
			'pseudoVersionInUse' => 'En pseudo-version er i brug',
			'installedVersion' => 'Installeret',
			'installed' => 'Installeret',
			'notInstalledApps' => 'Ikke installeret',
			'latest' => 'Seneste',
			'invertRegEx' => 'Inverter regulært udtryk',
			'note' => 'Bemærk',
			'selfHostedNote' => 'Rullemenuen "{}" kan bruges til at nå selvhostede/brugerdefinerede instanser af enhver kilde.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK\'en kunne ikke analyseres (inkompatibel eller delvis hentning)',
			'beforeNewInstallsShareToAppVerifier' => 'Del nye apps med AppVerifier (hvis tilgængelig)',
			'appVerifierInstructionToast' => 'Del til AppVerifier, og vend tilbage, når du er klar.',
			'wiki' => 'Hjælp/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Tillad usikre HTTP-anmodninger',
			'stayOneVersionBehind' => 'Forbliv én version bagud den seneste',
			'useFirstApkOfVersion' => 'Vælg automatisk den første af flere APK\'er',
			'refreshBeforeDownload' => 'Opdater app-detaljer før download',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Navn',
			'smartname' => 'Navn (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sorteringsmetode',
			'welcome' => 'Velkommen',
			'batteryOptimizationNote' => 'Bemærk, at baggrundsdownloads kan fungere mere pålideligt, hvis du deaktiverer OS-batterioptimering for Updatium.',
			'fileDeletionError' => 'Kunne ikke slette filen (prøv at slette den manuelt og prøv igen): "{}"',
			'foregroundService' => 'Updatium forgrundstjeneste',
			'foregroundServiceExplanation' => 'Brug en forgrundstjeneste til opdateringskontrol (mere pålidelig, bruger mere strøm)',
			'fgServiceNotice' => 'Denne meddelelse er nødvendig for baggrundsopdateringskontrol (den kan skjules i OS-indstillingerne).',
			'excludeSecrets' => 'Udeluk hemmeligheder',
			'GHReqPrefix' => '\'omeritzics/Updatium\'-instans til GitHub-anmodninger',
			'includeZips' => 'Inkluder ZIP-filer',
			'zippedApkFilterRegEx' => 'Filtrer APK\'er inde i ZIP',
			'multipleSigners' => 'Flere signere',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Fjern app?', other: 'Fjern apps?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'For mange anmodninger (begrænset hastighed). Prøv igen om {count} minut', other: 'For mange anmodninger (begrænset hastighed). Prøv igen om {count} minutter', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Baggrundsopdateringstjek stødte på en {error}. Planlægger et nyt tjek om {count} minut', other: 'Baggrundsopdateringstjek stødte på en {error}. Planlægger et nyt tjek om {count} minutter', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Baggrundsopdateringstjek fandt {count} opdatering. Underretter brugeren, hvis nødvendigt', other: 'Baggrundsopdateringstjek fandt {count} opdateringer. Underretter brugeren, hvis nødvendigt', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{count} App', other: '{count} Apps', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{count} URL', other: '{count} URL\'er', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{count} minut', other: '{count} minutter', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{count} time', other: '{count} timer', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{count} dag', other: '{count} dage', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Ryddet {n} log (før = {before}, efter = {after})', other: 'Ryddede {n} logs (før = {before}, efter = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{app} og 1 anden app har opdateringer.', other: '{app} og {count} andre apps har opdateringer.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{app} og 1 anden app blev opdateret.', other: '{app} og {count} andre apps blev opdateret.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Kunne ikke opdatere {app} og 1 anden app.', other: 'Kunne ikke opdatere {app} og {count} andre apps.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{app} og 1 anden app blev muligvis opdateret.', other: '{app} og {count} andre apps blev muligvis opdateret.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: '{count} APK', other: '{count} APK\'er', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('da'))(n, one: 'Certifikathash', other: 'Certifikathash', ), 
			'securityDisclaimerTitle' => 'Sikkerheds- og Juridisk Ansvarsfraskrivelse',
			'license' => 'Licens',
			'licenseText' => 'Denne applikation distribueres under GPL v3-licensen.',
			'disclaimer' => 'Ansvarsfraskrivelse',
			'disclaimerText' => 'Denne applikation distribuerer, hoster eller verificerer ingen af de eksterne applikationer. Brugeren bærer det fulde ansvar for sikkerheden og lovligheden af enhver software installeret via dette værktøj.\n\nhttps://github.com/omeritzics/Updatium er det eneste officielle sted at downloade Updatium - det frarådes kraftigt at downloade det andre steder, da download fra uofficielle kilder ikke er sikkert.',
			'privacy' => 'Privatliv',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Accepter og fortsæt',
			'decline' => 'Afvis',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Nyer du godt af Updatium?',
			'githubStarPromptContent' => 'Updatium er et frivilligt open source community-projekt, som jeg udvikler i min fritid. Hvis du ønsker at støtte projektet, så overvej venligst at give det en stjerne på GitHub for at hjælpe os med at nå flere brugere og bidragsydere. Du vil ikke blive påmindet om dette igen. Tak på forhånd! :)',
			'githubStarPromptStar' => 'Giv stjerne',
			'githubStarPromptDontShowAgain' => 'Vis ikke igen',
			'sourceCode' => 'Kildekode',
			'developedBy' => 'Udviklet af',
			'appDescription' => 'En tilpasselig Android-appkatalog, der lader dig opdatere dine apps direkte fra deres APK-kilder.',
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
