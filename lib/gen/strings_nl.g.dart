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
class TranslationsNl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsNl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.nl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <nl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsNl _root = this; // ignore: unused_field

	@override 
	TranslationsNl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsNl(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Ongeldige app-URL voor {}';
	@override String get noReleaseFound => 'Geen geschikte release gevonden';
	@override String get noVersionFound => 'Geen versie kunnen bepalen';
	@override String get urlMatchesNoSource => 'URL komt niet overeen met bekende bron';
	@override String get cantInstallOlderVersion => 'Kan geen oudere versie van de app installeren';
	@override String get appIdMismatch => 'Gedownload pakket-ID komt niet overeen met de bestaande app-ID';
	@override String get functionNotImplemented => 'Deze klasse heeft deze functie niet geïmplementeerd.';
	@override String get placeholder => 'Dummy';
	@override String get someErrors => 'Er zijn enkele fouten opgetreden';
	@override String get unexpectedError => 'Onverwachte fout';
	@override String get ok => 'Oké';
	@override String get and => 'en';
	@override String get githubPATLabel => 'GitHub Personal Access Token';
	@override String get includePrereleases => 'Inclusief pre-releases';
	@override String get fallbackToOlderReleases => 'Terugvallen op oudere releases';
	@override String get filterReleaseTitlesByRegEx => 'Release-titels filteren met reguliere expressies.';
	@override String get invalidRegEx => 'Ongeldige reguliere expressie';
	@override String get noDescription => 'Geen omschrijving';
	@override String get cancel => 'Annuleren';
	@override String get kContinue => 'Doorgaan';
	@override String get requiredInBrackets => '(Verplicht)';
	@override String get dropdownNoOptsError => 'FOUTMELDING: UITKLAPMENU MOET TENMINSTE EEN OPT HEBBEN';
	@override String get color => 'Kleur';
	@override String get standard => 'Standaard';
	@override String get custom => 'Aangepast';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You kleuren gebruiken';
	@override String get githubStarredRepos => 'GitHub-repo\'s met ster';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Gebruikersnaam';
	@override String get wrongArgNum => 'Incorrect aantal argumenten.';
	@override String get xIsTrackOnly => '{} is \'Alleen volgen\'';
	@override String get source => 'Bron';
	@override String get app => 'App';
	@override String get appsFromSourceAreTrackOnly => 'Apps van deze bron zijn \'Alleen volgen\'.';
	@override String get youPickedTrackOnly => 'De optie \'Alleen volgen\' is geselecteerd.';
	@override String get trackOnlyAppDescription => 'De app zal worden gevolgd voor updates, maar Updatium zal niet in staat zijn om deze te downloaden of te installeren.';
	@override String get cancelled => 'Geannuleerd';
	@override String get appAlreadyAdded => 'App reeds toegevoegd';
	@override String get alreadyUpToDateQuestion => 'App al bijgewerkt?';
	@override String get addApp => 'App toevoegen';
	@override String get appSourceURL => 'App-bron URL';
	@override String get error => 'Foutmelding';
	@override String get add => 'Toevoegen';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Zoeken (sommige bronnen)';
	@override String get search => 'Zoeken';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Aanvullende opties voor {}';
	@override String get supportedSources => 'Ondersteunde bronnen';
	@override String get trackOnlyInBrackets => '(Alleen volgen)';
	@override String get searchableInBrackets => '(Doorzoekbaar)';
	@override String get appsString => 'Apps';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Geen Apps';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Geen Apps voor filter';
	@override String get byX => 'Door {}';
	@override String get percentProgress => 'Voortgang: {}%';
	@override String get pleaseWait => 'Even geduld';
	@override String get updateAvailable => 'Update beschikbaar';
	@override String get notInstalled => 'Niet geinstalleerd';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versie';
	@override String get selectAll => 'Alles selecteren';
	@override String get deselectX => 'Selectie opheffen {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} zal worden gewist uit Updatium, maar blijft geïnstalleerd op het apparaat.';
	@override String get removeSelectedAppsQuestion => 'Geselecteerde apps verwijderen?';
	@override String get removeSelectedApps => 'Geselecteerde apps verwijderen';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} bijwerken';
	@override String get installX => '{} installeren';
	@override String get markXTrackOnlyAsUpdated => '{}\n(Alleen volgen)\nmarkeren als bijgewerkt';
	@override String get changeX => '{} wijzigen';
	@override String get installUpdateApps => 'Apps installeren/bijwerken';
	@override String get installUpdateSelectedApps => 'Geselecteerde apps installeren/bijwerken';
	@override String get markXSelectedAppsAsUpdated => '{} geselecteerde apps markeren als bijgewerkt?';
	@override String get no => 'Nee';
	@override String get yes => 'Ja';
	@override String get markSelectedAppsUpdated => 'Geselecteerde apps markeren als bijgewerkt';
	@override String get pinToTop => 'Bovenaan plaatsen';
	@override String get unpinFromTop => 'Bovenaan wegnemen';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Installatiestatus herstellen voor geselecteerde apps?';
	@override String get installStatusOfXWillBeResetExplanation => 'De installatiestatus van alle geselecteerde apps zal worden hersteld.\n\nDit kan helpen wanneer de versie van de app die in Updatium wordt weergegeven onjuist is vanwege mislukte updates of andere problemen.';
	@override String get customLinkMessage => 'Deze koppelingen werken op apparaten waarop Updatium is geïnstalleerd';
	@override String get shareAppConfigLinks => 'App-configuratie delen als HTML-link';
	@override String get resetInstallStatus => 'Installatiestatus herstellen';
	@override String get more => 'Meer';
	@override String get removeOutdatedFilter => 'Verouderde apps-filter verwijderen';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Alleen verouderde apps weergeven';
	@override String get filter => 'Filteren';
	@override String get filterApps => 'Apps filteren';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'App-naam';
	@override String get author => 'Auteur';
	@override String get upToDateApps => 'Bijgewerkte apps';
	@override String get nonInstalledApps => 'Niet-geïnstalleerde apps';
	@override String get importExport => 'Importeren/exporteren';
	@override String get settings => 'Instellingen';
	@override String get exportedTo => 'Geëxporteerd naar {}';
	@override String get updatiumExport => 'Uitvoer van verkrijgmiddelen';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Ongeldige invoer';
	@override String get importedX => '{} geïmporteerd';
	@override String get updatiumImport => 'Updatium import';
	@override String get importFromURLList => 'Importeren van URL-lijsten';
	@override String get searchQuery => 'Zoekopdracht';
	@override String get appURLList => 'App URL-lijst';
	@override String get line => 'Regel';
	@override String get searchX => '{} zoeken';
	@override String get noResults => 'Geen resultaten gevonden';
	@override String get importX => '{} importeren';
	@override String get importedAppsIdDisclaimer => 'Geïmporteerde apps kunnen mogelijk onjuist worden weergegeven als "Niet geïnstalleerd".\nOm dit op te lossen, installeer deze opnieuw via Updatium.\nDit zou geen invloed moeten hebben op app-gegevens.\n\nDit heeft alleen invloed op URL- en importmethoden van derden.';
	@override String get importErrors => 'Fouten bij het importeren';
	@override String get importedXOfYApps => '{} van {} apps geïmporteerd.';
	@override String get followingURLsHadErrors => 'De volgende URL\'s bevatten fouten:';
	@override String get selectURL => 'URL selecteren';
	@override String get selectURLs => 'URL\'s selecteren';
	@override String get pick => 'Kiezen';
	@override String get theme => 'Thema';
	@override String get dark => 'Donker';
	@override String get light => 'Licht';
	@override String get followSystem => 'Systeem volgen';
	@override String get followSystemThemeExplanation => 'Het volgen van het systeemthema is alleen mogelijk met applicaties van derden';
	@override String get useBlackTheme => 'Zwart thema gebruiken';
	@override String get appSortBy => 'Sortering';
	@override String get authorName => 'Auteur/Naam';
	@override String get nameAuthor => 'Naam/Auteur';
	@override String get asAdded => 'Datum toegevoegd';
	@override String get appSortOrder => 'Volgorde';
	@override String get ascending => 'Oplopend';
	@override String get descending => 'Aflopend';
	@override String get bgUpdateCheckInterval => 'Frequentie voor achtergrond-updatecontrole';
	@override String get neverManualOnly => 'Nooit - Alleen handmatig';
	@override String get appearance => 'Weergave';
	@override String get pinUpdates => 'Updates bovenaan plaatsen in de apps-weergave';
	@override String get updates => 'Bijwerken';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Bron-specifiek';
	@override String get appSource => 'App-bron';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Geen logs';
	@override String get appLogs => 'App logs';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Sluiten';
	@override String get share => 'Delen';
	@override String get appNotFound => 'App niet gevonden';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Kies een APK';
	@override String get appHasMoreThanOnePackage => '{} biedt verschillende pakketten:';
	@override String get deviceSupportsXArch => 'Dit apparaat ondersteunt de {} CPU-architectuur.';
	@override String get deviceSupportsFollowingArchs => 'Dit apparaat ondersteunt de volgende CPU-architecturen:';
	@override String get warning => 'Waarschuwing';
	@override String get sourceIsXButPackageFromYPrompt => 'De app-bron is \'{}\' maar het release-pakket komt van \'{}\'. Doorgaan?';
	@override String get updatesAvailable => 'Updates beschikbaar';
	@override String get updatesAvailableNotifDescription => 'Stelt de gebruiker op de hoogte dat er updates beschikbaar zijn voor een of meer apps die worden bijgehouden door Updatium.';
	@override String get noNewUpdates => 'Geen nieuwe updates.';
	@override String get xHasAnUpdate => '{} heeft een update.';
	@override String get appsUpdated => 'Apps bijgewerkt';
	@override String get appsNotUpdated => 'Applicaties konden niet worden bijgewerkt';
	@override String get appsUpdatedNotifDescription => 'Stelt de gebruiker op de hoogte dat updates voor één of meer apps in de achtergrond zijn toegepast.';
	@override String get xWasUpdatedToY => '{} is bijgewerkt naar {}.';
	@override String get xWasNotUpdatedToY => 'Het bijwerken van {} naar {} is mislukt.';
	@override String get errorCheckingUpdates => 'Fout bij het controleren op updates';
	@override String get errorCheckingUpdatesNotifDescription => 'Een melding die verschijnt wanneer de achtergrondcontrole op updates mislukt';
	@override String get appsRemoved => 'Apps verwijderd';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Stelt de gebruiker op de hoogte dat een of meer apps zijn verwijderd vanwege fouten tijdens het laden';
	@override String get xWasRemovedDueToErrorY => '{} is verwijderd vanwege de fout: {}';
	@override String get completeAppInstallation => 'App-installatie voltooien';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium moet geopend zijn om apps te installeren';
	@override String get completeAppInstallationNotifDescription => 'Vraagt de gebruiker om terug te keren naar Updatium om de installatie van een app af te ronden';
	@override String get checkingForUpdates => 'Controleren op updates';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Tijdelijke melding die verschijnt tijdens het controleren op updates';
	@override String get pleaseAllowInstallPerm => 'Toestaan dat Updatium apps installeert';
	@override String get trackOnly => '\'Alleen volgen\'';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Foutmelding {}';
	@override String get versionCorrectionDisabled => 'Versiecorrectie uitgeschakeld (de plug-in lijkt niet te werken)';
	@override String get unknown => 'Onbekend';
	@override String get none => 'Geen';
	@override String get all => 'Alle';
	@override String get never => 'Nooit';
	@override String get latestVersion => 'Laatste versie';
	@override String get installedVersionX => 'Geïnstalleerde versie: {}';
	@override String get lastUpdateCheckX => 'Laatste updatecontrole: {}';
	@override String get remove => 'Verwijderen';
	@override String get quickLinks => 'Snelle links';
	@override String get yesMarkUpdated => 'Ja, markeren als bijgewerkt';
	@override String get fdroid => 'F-Droid (Officieel)';
	@override String get appIdOrName => 'App-ID of naam';
	@override String get appId => 'App-ID';
	@override String get appWithIdOrNameNotFound => 'Er is geen app gevonden met dat ID of die naam';
	@override String get reposHaveMultipleApps => 'Repositories kunnen meerdere apps bevatten';
	@override String get fdroidThirdPartyRepo => 'F-Droid Repository voor derden';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Installeren';
	@override String get markInstalled => 'Als geïnstalleerd markeren';
	@override String get update => 'Bijwerken';
	@override String get updated => 'Bijgewerkt';
	@override String get markUpdated => 'Als bijgewerkt markeren';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Aanvullende opties';
	@override String get disableVersionDetection => 'Versieherkenning uitschakelen';
	@override String get noVersionDetectionExplanation => 'Deze optie moet alleen worden gebruikt voor apps waar versieherkenning niet correct werkt.';
	@override String get downloadingX => '{} downloaden';
	@override String get downloadX => '{} downloaden';
	@override String get downloadedX => '{} gedownload';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Release Activa';
	@override String get downloadNotifDescription => 'Stelt de gebruiker op de hoogte van de voortgang bij het downloaden van een app';
	@override String get noAPKFound => 'Geen APK gevonden';
	@override String get noVersionDetection => 'Geen versieherkenning';
	@override String get categorize => 'Categoriseren';
	@override String get categories => 'Categorieën';
	@override String get category => 'Categorie';
	@override String get noCategory => 'Geen categorie';
	@override String get noCategories => 'Geen categorieën';
	@override String get categoryDeleteQuestion => 'Categorieën verwijderen?';
	@override String get categoryDeleteWarning => 'Alle apps in verwijderde categorieën worden teruggezet naar \'ongecategoriseerd\'.';
	@override String get addCategory => 'Categorie toevoegen';
	@override String get label => 'Label';
	@override String get language => 'Taal';
	@override String get copiedToClipboard => 'Gekopieerd naar klembord';
	@override String get storagePermissionDenied => 'Toegang tot opslag geweigerd';
	@override String get selectedCategorizeWarning => 'Dit zal eventuele bestaande categorie-instellingen voor de geselecteerde apps vervangen.';
	@override String get filterAPKsByRegEx => 'APK\'s flteren met reguliere expressie';
	@override String get removeFromUpdatium => 'Uit Updatium verwijderen';
	@override String get uninstallFromDevice => 'Van apparaat verwijderen';
	@override String get onlyWorksWithNonVersionDetectApps => 'Werkt alleen voor apps waarbij versieherkenning is uitgeschakeld.';
	@override String get releaseDateAsVersion => 'Releasedatum als versie gebruiken';
	@override String get releaseTitleAsVersion => 'Gebruik releasetitel als versiestring';
	@override String get releaseDateAsVersionExplanation => 'Deze optie moet alleen worden gebruikt voor apps waar versieherkenning niet correct werkt, maar waar wel een releasedatum beschikbaar is.';
	@override String get changes => 'Aanpassingen';
	@override String get releaseDate => 'Releasedatum';
	@override String get importFromURLsInFile => 'Importeren vanaf URL\'s in een bestand (zoals OPML)';
	@override String get versionDetectionExplanation => 'Versiereeks afstemmen met versie gedetecteerd door besturingssysteem';
	@override String get versionDetection => 'Versieherkenning';
	@override String get standardVersionDetection => 'Standaard versieherkenning';
	@override String get groupByCategory => 'Groeperen op categorie';
	@override String get listView => 'Lijstweergave';
	@override String get gridView => 'Rasterweergave';
	@override String get autoApkFilterByArch => 'Probeer APK\'s te filteren op CPU-architectuur, indien mogelijk';
	@override String get autoLinkFilterByArch => 'Probeer links zo mogelijk te filteren op CPU-architectuur';
	@override String get overrideSource => 'Bron overschrijven';
	@override String get dontShowAgain => 'Laat dit niet meer zien';
	@override String get dontShowTrackOnlyWarnings => 'Geen waarschuwingen weergeven voor \'Alleen volgen\'';
	@override String get dontShowAPKOriginWarnings => 'Geen waarschuwingen weergeven voor APK-herkomst';
	@override String get moveNonInstalledAppsToBottom => 'Niet-geïnstalleerde apps onderaan de apps-lijst plaatsen';
	@override String get gitlabPATLabel => 'GitLab persoonlijk toegangskenmerk';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Over';
	@override String get requiresCredentialsInSettings => '{} vereist aanvullende referenties (in Instellingen)';
	@override String get checkOnStart => 'Bij opstarten op updates controleren';
	@override String get safeMode => 'Veilige modus';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'App toevoegen is uitgeschakeld in veilige modus';
	@override String get tryInferAppIdFromCode => 'Probeer de app-ID af te leiden uit de broncode';
	@override String get removeOnExternalUninstall => 'Extern verwijderde apps automatisch verwijderen';
	@override String get pickHighestVersionCode => 'De APK met de hoogste versiecode automatisch selecteren';
	@override String get checkUpdateOnDetailPage => 'Controleren op updates bij het openen van een app-detailpagina';
	@override String get disablePageTransitions => 'Overgangsanimaties tussen pagina\'s uitschakelen';
	@override String get reversePageTransitions => 'Overgangsanimaties tussen pagina\'s herstellen';
	@override String get minStarCount => 'Minimum Github Stars';
	@override String get addInfoBelow => 'Deze informatie hieronder toevoegen.';
	@override String get addInfoInSettings => 'Deze informatie toevoegen in de instellingen.';
	@override String get githubSourceNote => 'Beperkingen van GitHub kunnen worden vermeden door het gebruik van een API-sleutel.';
	@override String get sortByLastLinkSegment => 'Alleen sorteren op het laatste segment van de link';
	@override String get filterReleaseNotesByRegEx => 'Release-opmerkingen fiteren met een reguliere expressie.';
	@override String get customLinkFilterRegex => 'Aangepaste APK-links filteren met een reguliere expressie (Standaard \'.apk$\').';
	@override String get appsPossiblyUpdated => 'Pogingen tot app-updates';
	@override String get appsPossiblyUpdatedNotifDescription => 'Stelt de gebruiker op de hoogte dat updates voor één of meer apps mogelijk in de achtergrond zijn toegepast';
	@override String get xWasPossiblyUpdatedToY => '{} kan bijgewerkt zijn naar {}.';
	@override String get enableBackgroundUpdates => 'Achtergrond-updates inschakelen';
	@override String get backgroundUpdateReqsExplanation => 'Achtergrond-updates zijn niet voor alle apps mogelijk.';
	@override String get backgroundUpdateLimitsExplanation => 'Het succes van een installatie in de achtergrond kan alleen worden bepaald wanneer Updatium is geopend.';
	@override String get verifyLatestTag => 'Het label \'Laatste\' verifiëren';
	@override String get intermediateLinkRegex => 'Filteren op een \'Intermediaire\' link om te bezoeken';
	@override String get filterByLinkText => 'Links filteren op linktekst';
	@override String get matchLinksOutsideATags => 'Koppelingen buiten <a>-tags matchen';
	@override String get intermediateLinkNotFound => 'Intermediaire link niet gevonden';
	@override String get intermediateLink => 'Intermediaire link';
	@override String get exemptFromBackgroundUpdates => 'Vrijgesteld van achtergrond-updates (indien ingeschakeld)';
	@override String get bgUpdatesOnWiFiOnly => 'Achtergrond-updates uitschakelen wanneer niet verbonden met Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Achtergrondupdates uitschakelen als er niet wordt opgeladen';
	@override String get autoSelectHighestVersionCode => 'De APK met de hoogste versiecode automatisch selecteren';
	@override String get versionExtractionRegEx => 'Reguliere expressie voor versie-extractie';
	@override String get trimVersionString => 'Versie string trimmen met RegEx';
	@override String get matchGroupToUseForX => 'Overeenkomende groep te gebruiken voor "{}"';
	@override String get matchGroupToUse => 'Overeenkomende groep om te gebruiken voor de reguliere expressie voor versie-extractie';
	@override String get highlightTouchTargets => 'Minder voor de hand liggende aanraakdoelen markeren.';
	@override String get pickExportDir => 'Kies de exportmap';
	@override String get autoExportOnChanges => 'Bij wijzigingen automatisch exporteren';
	@override String get includeSettings => 'Instellingen opnemen';
	@override String get filterVersionsByRegEx => 'Versies met een reguliere expressie filteren';
	@override String get trySelectingSuggestedVersionCode => 'Probeer de voorgestelde versiecode APK te selecteren';
	@override String get dontSortReleasesList => 'Volgorde van releases behouden vanuit de API';
	@override String get reverseSort => 'Omgekeerde sortering';
	@override String get takeFirstLink => 'Neem de eerste link';
	@override String get skipSort => 'Sortering overslaan';
	@override String get debugMenu => 'Debug-menu';
	@override String get bgTaskStarted => 'Achtergrondtaak gestart - controleer de logs.';
	@override String get runBgCheckNow => 'Nu een achtergrond-updatecontrole uitvoeren';
	@override String get versionExtractWholePage => 'De reguliere expressie voor versie-extractie toepassen op de hele pagina';
	@override String get installing => 'Installeren';
	@override String get skipUpdateNotifications => 'Updatemeldingen overslaan';
	@override String get updatesAvailableNotifChannel => 'Updates beschikbaar';
	@override String get appsUpdatedNotifChannel => 'Apps bijgewerkt';
	@override String get appsPossiblyUpdatedNotifChannel => 'Pogingen tot app-updates';
	@override String get errorCheckingUpdatesNotifChannel => 'Foutcontrole bij het zoeken naar updates';
	@override String get appsRemovedNotifChannel => 'Apps verwijderd';
	@override String get downloadingXNotifChannel => '{} downloaden';
	@override String get completeAppInstallationNotifChannel => 'App-installatie voltooien';
	@override String get checkingForUpdatesNotifChannel => 'Controleren op updates';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Alleen geïnstalleerde apps en \'Alleen volgen\' controleren op updates';
	@override String get supportFixedAPKURL => 'Vaste APK-URL\'s ondersteunen';
	@override String get selectX => '{} selecteren';
	@override String get parallelDownloads => 'Parallelle downloads toestaan';
	@override String get useShizuku => 'Shizuku of Sui gebruiken om te installeren';
	@override String get shizukuBinderNotFound => 'Shizuku is niet actief';
	@override String get shizukuOld => 'Verouderde Shizuku-versie (<11) - bijwerken';
	@override String get shizukuOldAndroidWithADB => 'Shizuku draait op Android < 8.1 met ADB - update Android of gebruik in plaats daarvan Sui';
	@override String get shizukuPretendToBeGooglePlay => 'Google Play instellen als installatiebron (bij Shizuku)';
	@override String get useSystemFont => 'Systeemlettertype gebruiken';
	@override String get useVersionCodeAsOSVersion => 'App versiecode gebruiken als door OS gedetecteerde versie';
	@override String get requestHeader => 'Verzoekkoptekst';
	@override String get useLatestAssetDateAsReleaseDate => 'Laatste upload als releasedatum gebruiken';
	@override String get defaultPseudoVersioningMethod => 'Standaard pseudo-versiebeheermethode';
	@override String get partialAPKHash => 'Gedeeltelijke APK-hash';
	@override String get APKLinkHash => 'APK-link-hash';
	@override String get directAPKLink => 'Directe APK-link';
	@override String get pseudoVersionInUse => 'Er is een pseudo-versie in gebruik';
	@override String get installedVersion => 'Geïnstalleerd';
	@override String get installed => 'Geïnstalleerd';
	@override String get notInstalledApps => 'Niet geïnstalleerd';
	@override String get latest => 'Nieuwste';
	@override String get invertRegEx => 'Reguliere expressie omkeren';
	@override String get note => 'Opmerking';
	@override String get selfHostedNote => 'De "{}" dropdown kan gebruikt worden om zelf gehoste/aangepaste instanties van elke bron te bereiken.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'De APK kon niet worden verwerkt (incompatibele of gedeeltelijke download)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Nieuwe Apps delen met AppVerifier (indien beschikbaar)';
	@override String get appVerifierInstructionToast => 'Deel het met AppVerifier en keer daarna hier terug.';
	@override String get wiki => 'Help/wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Onveilige HTTP-verzoeken toestaan';
	@override String get stayOneVersionBehind => 'Blijf een versie achter op de nieuwste';
	@override String get useFirstApkOfVersion => 'Automatisch de eerste van meerdere APK\'s selecteren';
	@override String get refreshBeforeDownload => 'Vernieuw app details voor download';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Naam';
	@override String get smartname => 'Naam (Slim)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sorteermethode';
	@override String get welcome => 'Welkom';
	@override String get batteryOptimizationNote => 'Merk op dat downloads op de achtergrond mogelijk betrouwbaarder werken als je de batterijoptimalisatie van het besturingssysteem voor Updatium uitschakelt.';
	@override String get fileDeletionError => 'Bestand is niet verwijderd (probeer het handmatig te verwijderen en probeer het opnieuw): "{}"';
	@override String get foregroundService => 'Verkrijgbare voorgronddienst';
	@override String get foregroundServiceExplanation => 'Gebruik een voorgronddienst voor het controleren van updates (betrouwbaarder, verbruikt meer stroom)';
	@override String get fgServiceNotice => 'Deze melding is nodig voor het controleren van updates op de achtergrond (kan worden verborgen in de OS-instellingen)';
	@override String get excludeSecrets => 'Geheimen uitsluiten';
	@override String get GHReqPrefix => '\'omeritzics/Updatium\' instantie voor GitHub verzoeken';
	@override String get includeZips => 'ZIP-bestanden opnemen';
	@override String get zippedApkFilterRegEx => 'APK\'s filteren in ZIP';
	@override String get multipleSigners => 'Meerdere Ondertekenaars';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: 'App verwijderen?',
		other: 'Apps verwijderen?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: 'Te veel verzoeken (aantal beperkt) - opnieuw proberen over {count} minuut',
		other: 'Te veel verzoeken (aantal beperkt) - opnieuw proberen over {count} minuten',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: 'Achtergrond-updatecontrole heeft een {error}, zal een nieuwe controle plannen over {count} minuut',
		other: 'Achtergrond-updatecontrole heeft een {error}, zal een nieuwe controle plannen over {count} minuten',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: 'Achtergrond-updatecontrole heeft {count} update gevonden - zal de gebruiker op de hoogte stellen indien nodig',
		other: 'Achtergrond-updatecontrole heeft {count} updates gevonden - zal de gebruiker op de hoogte stellen indien nodig',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{count} app',
		other: '{count} apps',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{count} URL',
		other: '{count} URL\'s',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{count} minuut',
		other: '{count} minuten',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{count} uur',
		other: '{count} uur',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{count} dag',
		other: '{count} dagen',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{n} logboekitem gewist (voor = {before}, na = {after})',
		other: '{n} logboekitems gewist (voor = {before}, na = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{app} en nog 1 app hebben updates.',
		other: '{app} en nog {count} apps hebben updates.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{app} en nog 1 app is bijgewerkt.',
		other: '{app} en nog {count} apps zijn bijgewerkt.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: 'Bijwerken mislukt voor {app} en nog 1 app.',
		other: 'Bijwerken mislukt voor {app} en nog {count} apps.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{app} en nog 1 app zijn mogelijk bijgewerkt.',
		other: '{app} en nog {count} apps zijn mogelijk bijgwerkt.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: '{count} APK',
		other: '{count} APK\'s',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n,
		one: 'Certificaat Hash',
		other: 'Certificaat Hashes',
	);
	@override String get securityDisclaimerTitle => 'Veiligheids- en Juridische Vrijwaringsclausule';
	@override String get license => 'Licentie';
	@override String get licenseText => 'Deze applicatie wordt gedistribueerd onder de GPL v3 Licentie.';
	@override String get disclaimer => 'Vrijwaringsclausule';
	@override String get disclaimerText => 'Deze applicatie distribueert, host of verifieert geen van de externe applicaties. De gebruiker draagt de volledige verantwoordelijkheid voor de veiligheid en legaliteit van alle software die via deze tool wordt geïnstalleerd.\n\nhttps://github.com/omeritzics/Updatium is de enige officiële plek om Updatium te downloaden - het wordt sterk afgeraden om het ergens anders te downloaden omdat het downloaden van niet-officiële bronnen onveilig is.';
	@override String get privacy => 'Privacy';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Accepteren en doorgaan';
	@override String get decline => 'Weigeren';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Geniet u van Updatium?';
	@override String get githubStarPromptContent => 'Updatium is een vrijwillig, open-source communityproject dat ik in mijn vrije tijd heb ontwikkeld. Als u het project wilt steunen, overweeg dan om het een ster te geven op GitHub om ons te helpen meer gebruikers en bijdragers te bereiken. U zult hierover niet meer worden herinnerd. Alvast bedankt! :)';
	@override String get githubStarPromptStar => 'Ster geven';
	@override String get githubStarPromptDontShowAgain => 'Niet meer weergeven';
	@override String get sourceCode => 'Broncode';
	@override String get developedBy => 'Ontwikkeld door';
	@override String get appDescription => 'Een aanpasbare Android-app-catalogus waarmee u uw apps rechtstreeks vanuit hun APK-bronnen kunt bijwerken.';
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

/// The flat map containing all translations for locale <nl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsNl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Ongeldige app-URL voor {}',
			'noReleaseFound' => 'Geen geschikte release gevonden',
			'noVersionFound' => 'Geen versie kunnen bepalen',
			'urlMatchesNoSource' => 'URL komt niet overeen met bekende bron',
			'cantInstallOlderVersion' => 'Kan geen oudere versie van de app installeren',
			'appIdMismatch' => 'Gedownload pakket-ID komt niet overeen met de bestaande app-ID',
			'functionNotImplemented' => 'Deze klasse heeft deze functie niet geïmplementeerd.',
			'placeholder' => 'Dummy',
			'someErrors' => 'Er zijn enkele fouten opgetreden',
			'unexpectedError' => 'Onverwachte fout',
			'ok' => 'Oké',
			'and' => 'en',
			'githubPATLabel' => 'GitHub Personal Access Token',
			'includePrereleases' => 'Inclusief pre-releases',
			'fallbackToOlderReleases' => 'Terugvallen op oudere releases',
			'filterReleaseTitlesByRegEx' => 'Release-titels filteren met reguliere expressies.',
			'invalidRegEx' => 'Ongeldige reguliere expressie',
			'noDescription' => 'Geen omschrijving',
			'cancel' => 'Annuleren',
			'kContinue' => 'Doorgaan',
			'requiredInBrackets' => '(Verplicht)',
			'dropdownNoOptsError' => 'FOUTMELDING: UITKLAPMENU MOET TENMINSTE EEN OPT HEBBEN',
			'color' => 'Kleur',
			'standard' => 'Standaard',
			'custom' => 'Aangepast',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You kleuren gebruiken',
			'githubStarredRepos' => 'GitHub-repo\'s met ster',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Gebruikersnaam',
			'wrongArgNum' => 'Incorrect aantal argumenten.',
			'xIsTrackOnly' => '{} is \'Alleen volgen\'',
			'source' => 'Bron',
			'app' => 'App',
			'appsFromSourceAreTrackOnly' => 'Apps van deze bron zijn \'Alleen volgen\'.',
			'youPickedTrackOnly' => 'De optie \'Alleen volgen\' is geselecteerd.',
			'trackOnlyAppDescription' => 'De app zal worden gevolgd voor updates, maar Updatium zal niet in staat zijn om deze te downloaden of te installeren.',
			'cancelled' => 'Geannuleerd',
			'appAlreadyAdded' => 'App reeds toegevoegd',
			'alreadyUpToDateQuestion' => 'App al bijgewerkt?',
			'addApp' => 'App toevoegen',
			'appSourceURL' => 'App-bron URL',
			'error' => 'Foutmelding',
			'add' => 'Toevoegen',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Zoeken (sommige bronnen)',
			'search' => 'Zoeken',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Aanvullende opties voor {}',
			'supportedSources' => 'Ondersteunde bronnen',
			'trackOnlyInBrackets' => '(Alleen volgen)',
			'searchableInBrackets' => '(Doorzoekbaar)',
			'appsString' => 'Apps',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Geen Apps',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Geen Apps voor filter',
			'byX' => 'Door {}',
			'percentProgress' => 'Voortgang: {}%',
			'pleaseWait' => 'Even geduld',
			'updateAvailable' => 'Update beschikbaar',
			'notInstalled' => 'Niet geinstalleerd',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versie',
			'selectAll' => 'Alles selecteren',
			'deselectX' => 'Selectie opheffen {}',
			'xWillBeRemovedButRemainInstalled' => '{} zal worden gewist uit Updatium, maar blijft geïnstalleerd op het apparaat.',
			'removeSelectedAppsQuestion' => 'Geselecteerde apps verwijderen?',
			'removeSelectedApps' => 'Geselecteerde apps verwijderen',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} bijwerken',
			'installX' => '{} installeren',
			'markXTrackOnlyAsUpdated' => '{}\n(Alleen volgen)\nmarkeren als bijgewerkt',
			'changeX' => '{} wijzigen',
			'installUpdateApps' => 'Apps installeren/bijwerken',
			'installUpdateSelectedApps' => 'Geselecteerde apps installeren/bijwerken',
			'markXSelectedAppsAsUpdated' => '{} geselecteerde apps markeren als bijgewerkt?',
			'no' => 'Nee',
			'yes' => 'Ja',
			'markSelectedAppsUpdated' => 'Geselecteerde apps markeren als bijgewerkt',
			'pinToTop' => 'Bovenaan plaatsen',
			'unpinFromTop' => 'Bovenaan wegnemen',
			'resetInstallStatusForSelectedAppsQuestion' => 'Installatiestatus herstellen voor geselecteerde apps?',
			'installStatusOfXWillBeResetExplanation' => 'De installatiestatus van alle geselecteerde apps zal worden hersteld.\n\nDit kan helpen wanneer de versie van de app die in Updatium wordt weergegeven onjuist is vanwege mislukte updates of andere problemen.',
			'customLinkMessage' => 'Deze koppelingen werken op apparaten waarop Updatium is geïnstalleerd',
			'shareAppConfigLinks' => 'App-configuratie delen als HTML-link',
			'resetInstallStatus' => 'Installatiestatus herstellen',
			'more' => 'Meer',
			'removeOutdatedFilter' => 'Verouderde apps-filter verwijderen',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Alleen verouderde apps weergeven',
			'filter' => 'Filteren',
			'filterApps' => 'Apps filteren',
			'filterDays' => 'Filter days',
			'appName' => 'App-naam',
			'author' => 'Auteur',
			'upToDateApps' => 'Bijgewerkte apps',
			'nonInstalledApps' => 'Niet-geïnstalleerde apps',
			'importExport' => 'Importeren/exporteren',
			'settings' => 'Instellingen',
			'exportedTo' => 'Geëxporteerd naar {}',
			'updatiumExport' => 'Uitvoer van verkrijgmiddelen',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Ongeldige invoer',
			'importedX' => '{} geïmporteerd',
			'updatiumImport' => 'Updatium import',
			'importFromURLList' => 'Importeren van URL-lijsten',
			'searchQuery' => 'Zoekopdracht',
			'appURLList' => 'App URL-lijst',
			'line' => 'Regel',
			'searchX' => '{} zoeken',
			'noResults' => 'Geen resultaten gevonden',
			'importX' => '{} importeren',
			'importedAppsIdDisclaimer' => 'Geïmporteerde apps kunnen mogelijk onjuist worden weergegeven als "Niet geïnstalleerd".\nOm dit op te lossen, installeer deze opnieuw via Updatium.\nDit zou geen invloed moeten hebben op app-gegevens.\n\nDit heeft alleen invloed op URL- en importmethoden van derden.',
			'importErrors' => 'Fouten bij het importeren',
			'importedXOfYApps' => '{} van {} apps geïmporteerd.',
			'followingURLsHadErrors' => 'De volgende URL\'s bevatten fouten:',
			'selectURL' => 'URL selecteren',
			'selectURLs' => 'URL\'s selecteren',
			'pick' => 'Kiezen',
			'theme' => 'Thema',
			'dark' => 'Donker',
			'light' => 'Licht',
			'followSystem' => 'Systeem volgen',
			'followSystemThemeExplanation' => 'Het volgen van het systeemthema is alleen mogelijk met applicaties van derden',
			'useBlackTheme' => 'Zwart thema gebruiken',
			'appSortBy' => 'Sortering',
			'authorName' => 'Auteur/Naam',
			'nameAuthor' => 'Naam/Auteur',
			'asAdded' => 'Datum toegevoegd',
			'appSortOrder' => 'Volgorde',
			'ascending' => 'Oplopend',
			'descending' => 'Aflopend',
			'bgUpdateCheckInterval' => 'Frequentie voor achtergrond-updatecontrole',
			'neverManualOnly' => 'Nooit - Alleen handmatig',
			'appearance' => 'Weergave',
			'pinUpdates' => 'Updates bovenaan plaatsen in de apps-weergave',
			'updates' => 'Bijwerken',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Bron-specifiek',
			'appSource' => 'App-bron',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Geen logs',
			'appLogs' => 'App logs',
			'appLogsHint' => 'View application logs',
			'close' => 'Sluiten',
			'share' => 'Delen',
			'appNotFound' => 'App niet gevonden',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Kies een APK',
			'appHasMoreThanOnePackage' => '{} biedt verschillende pakketten:',
			'deviceSupportsXArch' => 'Dit apparaat ondersteunt de {} CPU-architectuur.',
			'deviceSupportsFollowingArchs' => 'Dit apparaat ondersteunt de volgende CPU-architecturen:',
			'warning' => 'Waarschuwing',
			'sourceIsXButPackageFromYPrompt' => 'De app-bron is \'{}\' maar het release-pakket komt van \'{}\'. Doorgaan?',
			'updatesAvailable' => 'Updates beschikbaar',
			'updatesAvailableNotifDescription' => 'Stelt de gebruiker op de hoogte dat er updates beschikbaar zijn voor een of meer apps die worden bijgehouden door Updatium.',
			'noNewUpdates' => 'Geen nieuwe updates.',
			'xHasAnUpdate' => '{} heeft een update.',
			'appsUpdated' => 'Apps bijgewerkt',
			'appsNotUpdated' => 'Applicaties konden niet worden bijgewerkt',
			'appsUpdatedNotifDescription' => 'Stelt de gebruiker op de hoogte dat updates voor één of meer apps in de achtergrond zijn toegepast.',
			'xWasUpdatedToY' => '{} is bijgewerkt naar {}.',
			'xWasNotUpdatedToY' => 'Het bijwerken van {} naar {} is mislukt.',
			'errorCheckingUpdates' => 'Fout bij het controleren op updates',
			'errorCheckingUpdatesNotifDescription' => 'Een melding die verschijnt wanneer de achtergrondcontrole op updates mislukt',
			'appsRemoved' => 'Apps verwijderd',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Stelt de gebruiker op de hoogte dat een of meer apps zijn verwijderd vanwege fouten tijdens het laden',
			'xWasRemovedDueToErrorY' => '{} is verwijderd vanwege de fout: {}',
			'completeAppInstallation' => 'App-installatie voltooien',
			'updatiumMustBeOpenToInstallApps' => 'Updatium moet geopend zijn om apps te installeren',
			'completeAppInstallationNotifDescription' => 'Vraagt de gebruiker om terug te keren naar Updatium om de installatie van een app af te ronden',
			'checkingForUpdates' => 'Controleren op updates',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Tijdelijke melding die verschijnt tijdens het controleren op updates',
			'pleaseAllowInstallPerm' => 'Toestaan dat Updatium apps installeert',
			'trackOnly' => '\'Alleen volgen\'',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Foutmelding {}',
			'versionCorrectionDisabled' => 'Versiecorrectie uitgeschakeld (de plug-in lijkt niet te werken)',
			'unknown' => 'Onbekend',
			'none' => 'Geen',
			'all' => 'Alle',
			'never' => 'Nooit',
			'latestVersion' => 'Laatste versie',
			'installedVersionX' => 'Geïnstalleerde versie: {}',
			'lastUpdateCheckX' => 'Laatste updatecontrole: {}',
			'remove' => 'Verwijderen',
			'quickLinks' => 'Snelle links',
			'yesMarkUpdated' => 'Ja, markeren als bijgewerkt',
			'fdroid' => 'F-Droid (Officieel)',
			'appIdOrName' => 'App-ID of naam',
			'appId' => 'App-ID',
			'appWithIdOrNameNotFound' => 'Er is geen app gevonden met dat ID of die naam',
			'reposHaveMultipleApps' => 'Repositories kunnen meerdere apps bevatten',
			'fdroidThirdPartyRepo' => 'F-Droid Repository voor derden',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Installeren',
			'markInstalled' => 'Als geïnstalleerd markeren',
			'update' => 'Bijwerken',
			'updated' => 'Bijgewerkt',
			'markUpdated' => 'Als bijgewerkt markeren',
			'download' => 'Download',
			'additionalOptions' => 'Aanvullende opties',
			'disableVersionDetection' => 'Versieherkenning uitschakelen',
			'noVersionDetectionExplanation' => 'Deze optie moet alleen worden gebruikt voor apps waar versieherkenning niet correct werkt.',
			'downloadingX' => '{} downloaden',
			'downloadX' => '{} downloaden',
			'downloadedX' => '{} gedownload',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Release Activa',
			'downloadNotifDescription' => 'Stelt de gebruiker op de hoogte van de voortgang bij het downloaden van een app',
			'noAPKFound' => 'Geen APK gevonden',
			'noVersionDetection' => 'Geen versieherkenning',
			'categorize' => 'Categoriseren',
			'categories' => 'Categorieën',
			'category' => 'Categorie',
			'noCategory' => 'Geen categorie',
			'noCategories' => 'Geen categorieën',
			'categoryDeleteQuestion' => 'Categorieën verwijderen?',
			'categoryDeleteWarning' => 'Alle apps in verwijderde categorieën worden teruggezet naar \'ongecategoriseerd\'.',
			'addCategory' => 'Categorie toevoegen',
			'label' => 'Label',
			'language' => 'Taal',
			'copiedToClipboard' => 'Gekopieerd naar klembord',
			'storagePermissionDenied' => 'Toegang tot opslag geweigerd',
			'selectedCategorizeWarning' => 'Dit zal eventuele bestaande categorie-instellingen voor de geselecteerde apps vervangen.',
			'filterAPKsByRegEx' => 'APK\'s flteren met reguliere expressie',
			'removeFromUpdatium' => 'Uit Updatium verwijderen',
			'uninstallFromDevice' => 'Van apparaat verwijderen',
			'onlyWorksWithNonVersionDetectApps' => 'Werkt alleen voor apps waarbij versieherkenning is uitgeschakeld.',
			'releaseDateAsVersion' => 'Releasedatum als versie gebruiken',
			'releaseTitleAsVersion' => 'Gebruik releasetitel als versiestring',
			'releaseDateAsVersionExplanation' => 'Deze optie moet alleen worden gebruikt voor apps waar versieherkenning niet correct werkt, maar waar wel een releasedatum beschikbaar is.',
			'changes' => 'Aanpassingen',
			'releaseDate' => 'Releasedatum',
			'importFromURLsInFile' => 'Importeren vanaf URL\'s in een bestand (zoals OPML)',
			'versionDetectionExplanation' => 'Versiereeks afstemmen met versie gedetecteerd door besturingssysteem',
			'versionDetection' => 'Versieherkenning',
			'standardVersionDetection' => 'Standaard versieherkenning',
			'groupByCategory' => 'Groeperen op categorie',
			'listView' => 'Lijstweergave',
			'gridView' => 'Rasterweergave',
			'autoApkFilterByArch' => 'Probeer APK\'s te filteren op CPU-architectuur, indien mogelijk',
			'autoLinkFilterByArch' => 'Probeer links zo mogelijk te filteren op CPU-architectuur',
			'overrideSource' => 'Bron overschrijven',
			'dontShowAgain' => 'Laat dit niet meer zien',
			'dontShowTrackOnlyWarnings' => 'Geen waarschuwingen weergeven voor \'Alleen volgen\'',
			'dontShowAPKOriginWarnings' => 'Geen waarschuwingen weergeven voor APK-herkomst',
			'moveNonInstalledAppsToBottom' => 'Niet-geïnstalleerde apps onderaan de apps-lijst plaatsen',
			'gitlabPATLabel' => 'GitLab persoonlijk toegangskenmerk',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Over',
			'requiresCredentialsInSettings' => '{} vereist aanvullende referenties (in Instellingen)',
			'checkOnStart' => 'Bij opstarten op updates controleren',
			'safeMode' => 'Veilige modus',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'App toevoegen is uitgeschakeld in veilige modus',
			'tryInferAppIdFromCode' => 'Probeer de app-ID af te leiden uit de broncode',
			'removeOnExternalUninstall' => 'Extern verwijderde apps automatisch verwijderen',
			'pickHighestVersionCode' => 'De APK met de hoogste versiecode automatisch selecteren',
			'checkUpdateOnDetailPage' => 'Controleren op updates bij het openen van een app-detailpagina',
			'disablePageTransitions' => 'Overgangsanimaties tussen pagina\'s uitschakelen',
			'reversePageTransitions' => 'Overgangsanimaties tussen pagina\'s herstellen',
			'minStarCount' => 'Minimum Github Stars',
			'addInfoBelow' => 'Deze informatie hieronder toevoegen.',
			'addInfoInSettings' => 'Deze informatie toevoegen in de instellingen.',
			'githubSourceNote' => 'Beperkingen van GitHub kunnen worden vermeden door het gebruik van een API-sleutel.',
			'sortByLastLinkSegment' => 'Alleen sorteren op het laatste segment van de link',
			'filterReleaseNotesByRegEx' => 'Release-opmerkingen fiteren met een reguliere expressie.',
			'customLinkFilterRegex' => 'Aangepaste APK-links filteren met een reguliere expressie (Standaard \'.apk$\').',
			'appsPossiblyUpdated' => 'Pogingen tot app-updates',
			'appsPossiblyUpdatedNotifDescription' => 'Stelt de gebruiker op de hoogte dat updates voor één of meer apps mogelijk in de achtergrond zijn toegepast',
			'xWasPossiblyUpdatedToY' => '{} kan bijgewerkt zijn naar {}.',
			'enableBackgroundUpdates' => 'Achtergrond-updates inschakelen',
			'backgroundUpdateReqsExplanation' => 'Achtergrond-updates zijn niet voor alle apps mogelijk.',
			'backgroundUpdateLimitsExplanation' => 'Het succes van een installatie in de achtergrond kan alleen worden bepaald wanneer Updatium is geopend.',
			'verifyLatestTag' => 'Het label \'Laatste\' verifiëren',
			'intermediateLinkRegex' => 'Filteren op een \'Intermediaire\' link om te bezoeken',
			'filterByLinkText' => 'Links filteren op linktekst',
			'matchLinksOutsideATags' => 'Koppelingen buiten <a>-tags matchen',
			'intermediateLinkNotFound' => 'Intermediaire link niet gevonden',
			'intermediateLink' => 'Intermediaire link',
			'exemptFromBackgroundUpdates' => 'Vrijgesteld van achtergrond-updates (indien ingeschakeld)',
			'bgUpdatesOnWiFiOnly' => 'Achtergrond-updates uitschakelen wanneer niet verbonden met Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Achtergrondupdates uitschakelen als er niet wordt opgeladen',
			'autoSelectHighestVersionCode' => 'De APK met de hoogste versiecode automatisch selecteren',
			'versionExtractionRegEx' => 'Reguliere expressie voor versie-extractie',
			'trimVersionString' => 'Versie string trimmen met RegEx',
			'matchGroupToUseForX' => 'Overeenkomende groep te gebruiken voor "{}"',
			'matchGroupToUse' => 'Overeenkomende groep om te gebruiken voor de reguliere expressie voor versie-extractie',
			'highlightTouchTargets' => 'Minder voor de hand liggende aanraakdoelen markeren.',
			'pickExportDir' => 'Kies de exportmap',
			'autoExportOnChanges' => 'Bij wijzigingen automatisch exporteren',
			'includeSettings' => 'Instellingen opnemen',
			'filterVersionsByRegEx' => 'Versies met een reguliere expressie filteren',
			'trySelectingSuggestedVersionCode' => 'Probeer de voorgestelde versiecode APK te selecteren',
			'dontSortReleasesList' => 'Volgorde van releases behouden vanuit de API',
			'reverseSort' => 'Omgekeerde sortering',
			'takeFirstLink' => 'Neem de eerste link',
			'skipSort' => 'Sortering overslaan',
			'debugMenu' => 'Debug-menu',
			'bgTaskStarted' => 'Achtergrondtaak gestart - controleer de logs.',
			'runBgCheckNow' => 'Nu een achtergrond-updatecontrole uitvoeren',
			'versionExtractWholePage' => 'De reguliere expressie voor versie-extractie toepassen op de hele pagina',
			'installing' => 'Installeren',
			'skipUpdateNotifications' => 'Updatemeldingen overslaan',
			'updatesAvailableNotifChannel' => 'Updates beschikbaar',
			'appsUpdatedNotifChannel' => 'Apps bijgewerkt',
			'appsPossiblyUpdatedNotifChannel' => 'Pogingen tot app-updates',
			'errorCheckingUpdatesNotifChannel' => 'Foutcontrole bij het zoeken naar updates',
			'appsRemovedNotifChannel' => 'Apps verwijderd',
			'downloadingXNotifChannel' => '{} downloaden',
			'completeAppInstallationNotifChannel' => 'App-installatie voltooien',
			'checkingForUpdatesNotifChannel' => 'Controleren op updates',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Alleen geïnstalleerde apps en \'Alleen volgen\' controleren op updates',
			'supportFixedAPKURL' => 'Vaste APK-URL\'s ondersteunen',
			'selectX' => '{} selecteren',
			'parallelDownloads' => 'Parallelle downloads toestaan',
			'useShizuku' => 'Shizuku of Sui gebruiken om te installeren',
			'shizukuBinderNotFound' => 'Shizuku is niet actief',
			'shizukuOld' => 'Verouderde Shizuku-versie (<11) - bijwerken',
			'shizukuOldAndroidWithADB' => 'Shizuku draait op Android < 8.1 met ADB - update Android of gebruik in plaats daarvan Sui',
			'shizukuPretendToBeGooglePlay' => 'Google Play instellen als installatiebron (bij Shizuku)',
			'useSystemFont' => 'Systeemlettertype gebruiken',
			'useVersionCodeAsOSVersion' => 'App versiecode gebruiken als door OS gedetecteerde versie',
			'requestHeader' => 'Verzoekkoptekst',
			'useLatestAssetDateAsReleaseDate' => 'Laatste upload als releasedatum gebruiken',
			'defaultPseudoVersioningMethod' => 'Standaard pseudo-versiebeheermethode',
			'partialAPKHash' => 'Gedeeltelijke APK-hash',
			'APKLinkHash' => 'APK-link-hash',
			'directAPKLink' => 'Directe APK-link',
			'pseudoVersionInUse' => 'Er is een pseudo-versie in gebruik',
			'installedVersion' => 'Geïnstalleerd',
			'installed' => 'Geïnstalleerd',
			'notInstalledApps' => 'Niet geïnstalleerd',
			'latest' => 'Nieuwste',
			'invertRegEx' => 'Reguliere expressie omkeren',
			'note' => 'Opmerking',
			'selfHostedNote' => 'De "{}" dropdown kan gebruikt worden om zelf gehoste/aangepaste instanties van elke bron te bereiken.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'De APK kon niet worden verwerkt (incompatibele of gedeeltelijke download)',
			'beforeNewInstallsShareToAppVerifier' => 'Nieuwe Apps delen met AppVerifier (indien beschikbaar)',
			'appVerifierInstructionToast' => 'Deel het met AppVerifier en keer daarna hier terug.',
			'wiki' => 'Help/wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Onveilige HTTP-verzoeken toestaan',
			'stayOneVersionBehind' => 'Blijf een versie achter op de nieuwste',
			'useFirstApkOfVersion' => 'Automatisch de eerste van meerdere APK\'s selecteren',
			'refreshBeforeDownload' => 'Vernieuw app details voor download',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Naam',
			'smartname' => 'Naam (Slim)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sorteermethode',
			'welcome' => 'Welkom',
			'batteryOptimizationNote' => 'Merk op dat downloads op de achtergrond mogelijk betrouwbaarder werken als je de batterijoptimalisatie van het besturingssysteem voor Updatium uitschakelt.',
			'fileDeletionError' => 'Bestand is niet verwijderd (probeer het handmatig te verwijderen en probeer het opnieuw): "{}"',
			'foregroundService' => 'Verkrijgbare voorgronddienst',
			'foregroundServiceExplanation' => 'Gebruik een voorgronddienst voor het controleren van updates (betrouwbaarder, verbruikt meer stroom)',
			'fgServiceNotice' => 'Deze melding is nodig voor het controleren van updates op de achtergrond (kan worden verborgen in de OS-instellingen)',
			'excludeSecrets' => 'Geheimen uitsluiten',
			'GHReqPrefix' => '\'omeritzics/Updatium\' instantie voor GitHub verzoeken',
			'includeZips' => 'ZIP-bestanden opnemen',
			'zippedApkFilterRegEx' => 'APK\'s filteren in ZIP',
			'multipleSigners' => 'Meerdere Ondertekenaars',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: 'App verwijderen?', other: 'Apps verwijderen?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: 'Te veel verzoeken (aantal beperkt) - opnieuw proberen over {count} minuut', other: 'Te veel verzoeken (aantal beperkt) - opnieuw proberen over {count} minuten', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: 'Achtergrond-updatecontrole heeft een {error}, zal een nieuwe controle plannen over {count} minuut', other: 'Achtergrond-updatecontrole heeft een {error}, zal een nieuwe controle plannen over {count} minuten', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: 'Achtergrond-updatecontrole heeft {count} update gevonden - zal de gebruiker op de hoogte stellen indien nodig', other: 'Achtergrond-updatecontrole heeft {count} updates gevonden - zal de gebruiker op de hoogte stellen indien nodig', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{count} app', other: '{count} apps', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{count} URL', other: '{count} URL\'s', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{count} minuut', other: '{count} minuten', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{count} uur', other: '{count} uur', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{count} dag', other: '{count} dagen', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{n} logboekitem gewist (voor = {before}, na = {after})', other: '{n} logboekitems gewist (voor = {before}, na = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{app} en nog 1 app hebben updates.', other: '{app} en nog {count} apps hebben updates.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{app} en nog 1 app is bijgewerkt.', other: '{app} en nog {count} apps zijn bijgewerkt.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: 'Bijwerken mislukt voor {app} en nog 1 app.', other: 'Bijwerken mislukt voor {app} en nog {count} apps.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{app} en nog 1 app zijn mogelijk bijgewerkt.', other: '{app} en nog {count} apps zijn mogelijk bijgwerkt.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: '{count} APK', other: '{count} APK\'s', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('nl'))(n, one: 'Certificaat Hash', other: 'Certificaat Hashes', ), 
			'securityDisclaimerTitle' => 'Veiligheids- en Juridische Vrijwaringsclausule',
			'license' => 'Licentie',
			'licenseText' => 'Deze applicatie wordt gedistribueerd onder de GPL v3 Licentie.',
			'disclaimer' => 'Vrijwaringsclausule',
			'disclaimerText' => 'Deze applicatie distribueert, host of verifieert geen van de externe applicaties. De gebruiker draagt de volledige verantwoordelijkheid voor de veiligheid en legaliteit van alle software die via deze tool wordt geïnstalleerd.\n\nhttps://github.com/omeritzics/Updatium is de enige officiële plek om Updatium te downloaden - het wordt sterk afgeraden om het ergens anders te downloaden omdat het downloaden van niet-officiële bronnen onveilig is.',
			'privacy' => 'Privacy',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Accepteren en doorgaan',
			'decline' => 'Weigeren',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Geniet u van Updatium?',
			'githubStarPromptContent' => 'Updatium is een vrijwillig, open-source communityproject dat ik in mijn vrije tijd heb ontwikkeld. Als u het project wilt steunen, overweeg dan om het een ster te geven op GitHub om ons te helpen meer gebruikers en bijdragers te bereiken. U zult hierover niet meer worden herinnerd. Alvast bedankt! :)',
			'githubStarPromptStar' => 'Ster geven',
			'githubStarPromptDontShowAgain' => 'Niet meer weergeven',
			'sourceCode' => 'Broncode',
			'developedBy' => 'Ontwikkeld door',
			'appDescription' => 'Een aanpasbare Android-app-catalogus waarmee u uw apps rechtstreeks vanuit hun APK-bronnen kunt bijwerken.',
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
