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
class TranslationsIt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsIt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.it,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <it>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsIt _root = this; // ignore: unused_field

	@override 
	TranslationsIt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsIt(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'URL dell\'app {} non valido';
	@override String get noReleaseFound => 'Impossibile trovare una release adatta';
	@override String get noVersionFound => 'Impossibile determinare la versione della release';
	@override String get urlMatchesNoSource => 'L\'URL non corrisponde ad alcuna fonte conosciuta';
	@override String get cantInstallOlderVersion => 'Impossibile installare una versione precedente di un\'app';
	@override String get appIdMismatch => 'L\'ID del pacchetto scaricato non corrisponde all\'ID dell\'app esistente';
	@override String get functionNotImplemented => 'Questa classe non ha implementato questa funzione';
	@override String get placeholder => 'Segnaposto';
	@override String get someErrors => 'Si sono verificati degli errori';
	@override String get unexpectedError => 'Errore imprevisto';
	@override String get ok => 'Va bene';
	@override String get and => 'e';
	@override String get githubPATLabel => 'GitHub Personal Access Token';
	@override String get includePrereleases => 'Includi prerelease';
	@override String get fallbackToOlderReleases => 'Ripiega su release precedenti';
	@override String get filterReleaseTitlesByRegEx => 'Filtra release con espressioni regolari';
	@override String get invalidRegEx => 'Espressione regolare non valida';
	@override String get noDescription => 'Descrizione assente';
	@override String get cancel => 'Annulla';
	@override String get kContinue => 'Continua';
	@override String get requiredInBrackets => '(richiesto)';
	@override String get dropdownNoOptsError => 'ERRORE: LA TENDINA DEVE AVERE ALMENO UN\'OPZIONE';
	@override String get color => 'Colore';
	@override String get standard => 'Standard';
	@override String get custom => 'Personalizzato';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Utilizzate i colori Material You';
	@override String get githubStarredRepos => 'repository stellati da GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nome utente';
	@override String get wrongArgNum => 'Numero di argomenti forniti errato';
	@override String get xIsTrackOnly => '{} è in modalità Solo-Monitoraggio';
	@override String get source => 'Fonte';
	@override String get app => 'App';
	@override String get appsFromSourceAreTrackOnly => 'Le app da questa fonte sono in modalità \'Solo-Monitoraggio\'.';
	@override String get youPickedTrackOnly => 'È stata selezionata l\'opzione \'Solo-Monitoraggio\'.';
	@override String get trackOnlyAppDescription => 'L\'app sarà monitorata per gli aggiornamenti, ma Updatium non sarà in grado di scaricarli o di installarli.';
	@override String get cancelled => 'Annullato';
	@override String get appAlreadyAdded => 'App già aggiunta';
	@override String get alreadyUpToDateQuestion => 'L\'app è già aggiornata?';
	@override String get addApp => 'Aggiungi app';
	@override String get appSourceURL => 'URL della fonte dell\'app';
	@override String get error => 'Errore';
	@override String get add => 'Aggiungi';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Cerca (solo per alcune fonti)';
	@override String get search => 'Cerca';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opzioni aggiuntive per {}';
	@override String get supportedSources => 'Fonti supportate';
	@override String get trackOnlyInBrackets => '(Solo-Monitoraggio)';
	@override String get searchableInBrackets => '(ricercabile)';
	@override String get appsString => 'App';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Nessuna app';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Nessuna app per i filtri selezionati';
	@override String get byX => 'Di {}';
	@override String get percentProgress => 'Avanzamento: {}%';
	@override String get pleaseWait => 'In attesa';
	@override String get updateAvailable => 'Aggiornamento disponibile';
	@override String get notInstalled => 'Non installato';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versione';
	@override String get selectAll => 'Seleziona tutto';
	@override String get deselectX => 'Deseleziona {}';
	@override String get xWillBeRemovedButRemainInstalled => 'Verà effettuata la rimozione di {}, ma non la disinstallazione.';
	@override String get removeSelectedAppsQuestion => 'Rimuovere le app selezionate?';
	@override String get removeSelectedApps => 'Rimuovi le app selezionate';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Aggiorna {}';
	@override String get installX => 'Installa {}';
	@override String get markXTrackOnlyAsUpdated => 'Contrassegna {}\n(Solo-Monitoraggio)\ncome aggiornata';
	@override String get changeX => 'Modifica {}';
	@override String get installUpdateApps => 'Installa/Aggiorna app';
	@override String get installUpdateSelectedApps => 'Installa/Aggiorna le app selezionate';
	@override String get markXSelectedAppsAsUpdated => 'Contrassegnare le {} app selezionate come aggiornate?';
	@override String get no => 'NO';
	@override String get yes => 'Sì';
	@override String get markSelectedAppsUpdated => 'Contrassegna le app selezionate come aggiornate';
	@override String get pinToTop => 'Fissa in alto';
	@override String get unpinFromTop => 'Rimuovi dall\'alto';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Ripristinare lo stato d\'installazione delle app selezionate?';
	@override String get installStatusOfXWillBeResetExplanation => 'Lo stato d\'installazione di ogni app selezionata sarà ripristinato.\n\nCiò può essere d\'aiuto nel caso in cui la versione mostrata dell\'app in Updatium non sia corretta a causa di un aggiornamento fallito o di altri problemi.';
	@override String get customLinkMessage => 'Questi collegamenti funzionano sui dispositivi con Updatium installato';
	@override String get shareAppConfigLinks => 'Condividi la configurazione dell\'app come collegamento HTML';
	@override String get resetInstallStatus => 'Ripristina lo stato d\'installazione';
	@override String get more => 'Altro';
	@override String get removeOutdatedFilter => 'Rimuovi il filtro per le app non aggiornate';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Mostra solo le app non aggiornate';
	@override String get filter => 'Filtri';
	@override String get filterApps => 'Filtra app';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nome dell\'app';
	@override String get author => 'Autore';
	@override String get upToDateApps => 'App aggiornate';
	@override String get nonInstalledApps => 'App non installate';
	@override String get importExport => 'Importa/Esporta';
	@override String get settings => 'Impostazioni';
	@override String get exportedTo => 'Esportato in {}';
	@override String get updatiumExport => 'Esporta da Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Inserimento non valido';
	@override String get importedX => 'Importato {}';
	@override String get updatiumImport => 'Importa in Updatium';
	@override String get importFromURLList => 'Importa da lista di URL';
	@override String get searchQuery => 'Stringa di ricerca';
	@override String get appURLList => 'Lista di URL delle app';
	@override String get line => 'Linea';
	@override String get searchX => 'Cerca su {}';
	@override String get noResults => 'Nessun risultato trovato';
	@override String get importX => 'Importa {}';
	@override String get importedAppsIdDisclaimer => 'Le app importate potrebbero essere visualizzate erroneamente come "Non installate".\nPer risolvere il problema, reinstallale con Updatium.\nCiò non dovrebbe influire sui dati delle app.\n\nRiguarda solo l\'URL e i metodi di importazione di terze parti.';
	@override String get importErrors => 'Errori di importazione';
	@override String get importedXOfYApps => '{} app di {} importate.';
	@override String get followingURLsHadErrors => 'I seguenti URL contengono errori:';
	@override String get selectURL => 'Seleziona l\'URL';
	@override String get selectURLs => 'Seleziona gli URL';
	@override String get pick => 'Seleziona';
	@override String get theme => 'Tema';
	@override String get dark => 'Scuro';
	@override String get light => 'Chiaro';
	@override String get followSystem => 'Segui il sistema';
	@override String get followSystemThemeExplanation => 'È possibile seguire il tema di sistema solo utilizzando applicazioni di terze parti.';
	@override String get useBlackTheme => 'Usa il tema nero puro';
	@override String get appSortBy => 'App ordinate per';
	@override String get authorName => 'Autore/Nome';
	@override String get nameAuthor => 'Nome/Autore';
	@override String get asAdded => 'Data di aggiunta';
	@override String get appSortOrder => 'Ordine';
	@override String get ascending => 'Ascendente';
	@override String get descending => 'Discendente';
	@override String get bgUpdateCheckInterval => 'Intervallo di controllo degli aggiornamenti in secondo piano';
	@override String get neverManualOnly => 'Mai - Solo manuale';
	@override String get appearance => 'Aspetto';
	@override String get pinUpdates => 'Fissa aggiornamenti disponibili in alto';
	@override String get updates => 'Aggiornamenti';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Specifiche per la fonte';
	@override String get appSource => 'Codice dell\'app';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Nessun log';
	@override String get appLogs => 'Log dell\'app';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Chiudi';
	@override String get share => 'Condividi';
	@override String get appNotFound => 'App non trovata';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'esportazione-updatium';
	@override String get pickAnAPK => 'Seleziona un APK';
	@override String get appHasMoreThanOnePackage => '{} offre più di un pacchetto:';
	@override String get deviceSupportsXArch => 'Il dispositivo in uso supporta l\'architettura {} della CPU.';
	@override String get deviceSupportsFollowingArchs => 'Il dispositivo in uso supporta le seguenti architetture della CPU:';
	@override String get warning => 'Attenzione';
	@override String get sourceIsXButPackageFromYPrompt => 'L\'origine dell\'app è \'{}\' ma il pacchetto della release proviene da \'{}\'. Continuare?';
	@override String get updatesAvailable => 'Aggiornamenti disponibili';
	@override String get updatesAvailableNotifDescription => 'Notifica all\'utente che sono disponibili gli aggiornamenti di una o più app monitorate da Updatium';
	@override String get noNewUpdates => 'Nessun nuovo aggiornamento.';
	@override String get xHasAnUpdate => 'Aggiornamento disponibile per {}';
	@override String get appsUpdated => 'App aggiornate';
	@override String get appsNotUpdated => 'Impossibile aggiornare le applicazioni';
	@override String get appsUpdatedNotifDescription => 'Notifica all\'utente che una o più app sono state aggiornate in secondo piano';
	@override String get xWasUpdatedToY => '{} è stato aggiornato alla {}.';
	@override String get xWasNotUpdatedToY => 'Impossibile aggiornare {} a {}.';
	@override String get errorCheckingUpdates => 'Controllo degli errori per gli aggiornamenti';
	@override String get errorCheckingUpdatesNotifDescription => 'Una notifica che mostra quando il controllo degli aggiornamenti in secondo piano fallisce';
	@override String get appsRemoved => 'App rimosse';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifica all\'utente che una o più app sono state rimosse a causa di errori durante il caricamento';
	@override String get xWasRemovedDueToErrorY => '{} è stata rimosso a causa di questo errore: {}';
	@override String get completeAppInstallation => 'Completa l\'installazione dell\'app';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium deve essere aperto per poter installare le app';
	@override String get completeAppInstallationNotifDescription => 'Chiede all\'utente di riaprire Updatium per terminare l\'installazione di un\'app';
	@override String get checkingForUpdates => 'Controllo degli aggiornamenti in corso';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notifica transitoria che appare durante la verifica degli aggiornamenti';
	@override String get pleaseAllowInstallPerm => 'Per favore permetti a Updatium di installare le app';
	@override String get trackOnly => 'Solo-Monitoraggio';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Errore {}';
	@override String get versionCorrectionDisabled => 'Correzione della versione disattivata (il plugin sembra non funzionare)';
	@override String get unknown => 'Sconosciuto';
	@override String get none => 'Nessuno';
	@override String get all => 'Tutti';
	@override String get never => 'Mai';
	@override String get latestVersion => 'Ultima versione';
	@override String get installedVersionX => 'Versione installata: {}';
	@override String get lastUpdateCheckX => 'Ultimo controllo degli aggiornamenti: {}';
	@override String get remove => 'Rimuovi';
	@override String get quickLinks => 'Collegamenti rapidi';
	@override String get yesMarkUpdated => 'Sì, contrassegna come aggiornata';
	@override String get fdroid => 'F-Droid ufficiale';
	@override String get appIdOrName => 'ID o nome dell\'app';
	@override String get appId => 'ID dell\'app';
	@override String get appWithIdOrNameNotFound => 'Non è stata trovata alcuna app con quell\'ID o nome';
	@override String get reposHaveMultipleApps => 'I repository possono contenere più app';
	@override String get fdroidThirdPartyRepo => 'Repository F-Droid di terze parti';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Installa';
	@override String get markInstalled => 'Contrassegna come installata';
	@override String get update => 'Aggiorna';
	@override String get updated => 'Aggiornato';
	@override String get markUpdated => 'Contrassegna come aggiornata';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opzioni aggiuntive';
	@override String get disableVersionDetection => 'Disattiva il rilevamento della versione';
	@override String get noVersionDetectionExplanation => 'Questa opzione dovrebbe essere usata solo per le app la cui versione non viene rilevata correttamente.';
	@override String get downloadingX => 'Scaricamento di {} in corso';
	@override String get downloadX => 'Scarica {}';
	@override String get downloadedX => 'Scaricato {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Rilascio Asset';
	@override String get downloadNotifDescription => 'Notifica all\'utente lo stato di avanzamento del download di un\'app';
	@override String get noAPKFound => 'Nessun APK trovato';
	@override String get noVersionDetection => 'Disattiva rilevamento di versione';
	@override String get categorize => 'Aggiungi a categoria';
	@override String get categories => 'Categorie';
	@override String get category => 'Categoria';
	@override String get noCategory => 'Nessuna categoria';
	@override String get noCategories => 'Nessuna categoria';
	@override String get categoryDeleteQuestion => 'Eliminare le categorie?';
	@override String get categoryDeleteWarning => 'Tutte le app nelle categorie eliminate saranno impostate come non categorizzate.';
	@override String get addCategory => 'Aggiungi categoria';
	@override String get label => 'Etichetta';
	@override String get language => 'Lingua';
	@override String get copiedToClipboard => 'Copiato negli appunti';
	@override String get storagePermissionDenied => 'Accesso ai file non autorizzato';
	@override String get selectedCategorizeWarning => 'Ciò sostituirà le impostazioni di categoria esistenti per le app selezionate.';
	@override String get filterAPKsByRegEx => 'Filtra file APK con espressioni regolari';
	@override String get removeFromUpdatium => 'Rimuovi da Updatium';
	@override String get uninstallFromDevice => 'Disinstalla dal dispositivo';
	@override String get onlyWorksWithNonVersionDetectApps => 'Funziona solo per le app con il rilevamento della versione disattivato.';
	@override String get releaseDateAsVersion => 'Usa data di rilascio come versione';
	@override String get releaseTitleAsVersion => 'Usa il titolo della versione come stringa di versione';
	@override String get releaseDateAsVersionExplanation => 'Questa opzione dovrebbe essere usata solo per le app in cui il rilevamento della versione non funziona correttamente, ma è disponibile una data di rilascio.';
	@override String get changes => 'Novità';
	@override String get releaseDate => 'Data di rilascio';
	@override String get importFromURLsInFile => 'Importa da URL in file (come OPML)';
	@override String get versionDetectionExplanation => 'Riconcilia la stringa della versione con la versione rilevata dal sistema operativo';
	@override String get versionDetection => 'Rilevamento di versione';
	@override String get standardVersionDetection => 'Rilevamento di versione standard';
	@override String get groupByCategory => 'Raggruppa per categoria';
	@override String get listView => 'Vista elenco';
	@override String get gridView => 'Vista griglia';
	@override String get autoApkFilterByArch => 'Tenta di filtrare gli APK in base all\'architettura della CPU, se possibile';
	@override String get autoLinkFilterByArch => 'Tentare di filtrare i collegamenti in base all\'architettura della CPU, se possibile.';
	@override String get overrideSource => 'Sovrascrivi fonte';
	@override String get dontShowAgain => 'Non mostrarlo più';
	@override String get dontShowTrackOnlyWarnings => 'Non mostrare gli avvisi \'Solo-Monitoraggio\'';
	@override String get dontShowAPKOriginWarnings => 'Non mostrare gli avvisi di origine dell\'APK';
	@override String get moveNonInstalledAppsToBottom => 'Sposta le app non installate in fondo alla lista';
	@override String get gitlabPATLabel => 'GitLab Token di accesso personale';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Informazioni';
	@override String get requiresCredentialsInSettings => '{}: Servono credenziali aggiuntive (in Impostazioni)';
	@override String get checkOnStart => 'Controlla una volta all\'avvio';
	@override String get safeMode => 'Modalità sicura';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Aggiungi app è disabilitato in modalità sicura';
	@override String get tryInferAppIdFromCode => 'Prova a dedurre l\'ID dell\'app dal codice sorgente';
	@override String get removeOnExternalUninstall => 'Rimuovi automaticamente app disinstallate esternamente';
	@override String get pickHighestVersionCode => 'Auto-seleziona APK con version code più alto';
	@override String get checkUpdateOnDetailPage => 'Controlla aggiornamenti all\'apertura dei dettagli dell\'app';
	@override String get disablePageTransitions => 'Disattiva animazioni di transizione pagina';
	@override String get reversePageTransitions => 'Inverti animazioni di transizione pagina';
	@override String get minStarCount => 'Numero minimo di stelle';
	@override String get addInfoBelow => 'Aggiungi questa info sotto.';
	@override String get addInfoInSettings => 'Aggiungi questa info nelle impostazioni.';
	@override String get githubSourceNote => 'Il limite di ricerca GitHub può essere evitato usando una chiave API.';
	@override String get sortByLastLinkSegment => 'Ordina solo in base all\'ultimo segmento del collegamento';
	@override String get filterReleaseNotesByRegEx => 'Filtra le note di rilascio con espressione regolare';
	@override String get customLinkFilterRegex => 'Filtra link APK personalizzato con espressione regolare (predefinito \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Aggiornamenti app tentati';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifica all\'utente che sono stati potenzialmente applicati in secondo piano aggiornamenti a una o più app';
	@override String get xWasPossiblyUpdatedToY => '{} potrebbe essere stata aggiornata alla {}.';
	@override String get enableBackgroundUpdates => 'Attiva aggiornamenti in secondo piano';
	@override String get backgroundUpdateReqsExplanation => 'Gli aggiornamenti in secondo piano potrebbero non essere possibili per tutte le app.';
	@override String get backgroundUpdateLimitsExplanation => 'La riuscita di un\'installazione in secondo piano può essere determinata solo quando viene aperto Updatium.';
	@override String get verifyLatestTag => 'Verifica l\'etichetta \'Latest\'';
	@override String get intermediateLinkRegex => 'Filtro per un collegamento \'intermedio\' da visitare';
	@override String get filterByLinkText => 'Filtra i collegamenti in base al testo del collegamento';
	@override String get matchLinksOutsideATags => 'Corrispondenza dei collegamenti al di fuori dei tag <a>';
	@override String get intermediateLinkNotFound => 'Link intermedio non trovato';
	@override String get intermediateLink => 'Collegamento intermedio';
	@override String get exemptFromBackgroundUpdates => 'Esente da aggiornamenti in secondo piano (se attivo)';
	@override String get bgUpdatesOnWiFiOnly => 'Disattiva aggiornamenti in secondo piano quando non si usa il Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Disabilita gli aggiornamenti in background quando non è in carica';
	@override String get autoSelectHighestVersionCode => 'Auto-seleziona APK con versionCode più alto';
	@override String get versionExtractionRegEx => 'RegEx di estrazione versione';
	@override String get trimVersionString => 'Tagliare la stringa della versione con RegEx';
	@override String get matchGroupToUseForX => 'Gruppo di corrispondenza da utilizzare per "{}"';
	@override String get matchGroupToUse => 'Gruppo da usare';
	@override String get highlightTouchTargets => 'Evidenzia elementi toccabili meno ovvi';
	@override String get pickExportDir => 'Scegli cartella esp.';
	@override String get autoExportOnChanges => 'Auto-esporta dopo modifiche';
	@override String get includeSettings => 'Includi impostazioni';
	@override String get filterVersionsByRegEx => 'Filtra versioni con espressione regolare';
	@override String get trySelectingSuggestedVersionCode => 'Prova a selezionare APK con versionCode suggerito';
	@override String get dontSortReleasesList => 'Conserva l\'ordine di release da API';
	@override String get reverseSort => 'Ordine inverso';
	@override String get takeFirstLink => 'Prendi il primo link';
	@override String get skipSort => 'Salta ordinamento';
	@override String get debugMenu => 'Menu di debug';
	@override String get bgTaskStarted => 'Attività in secondo piano iniziata - controllo log.';
	@override String get runBgCheckNow => 'Inizia aggiornamento in secondo piano ora';
	@override String get versionExtractWholePage => 'Applica regex di estrazione versione a tutta la pagina';
	@override String get installing => 'Installazione';
	@override String get skipUpdateNotifications => 'Salta notifiche di aggiornamento';
	@override String get updatesAvailableNotifChannel => 'Aggiornamenti disponibili';
	@override String get appsUpdatedNotifChannel => 'App aggiornate';
	@override String get appsPossiblyUpdatedNotifChannel => 'Aggiornamenti app tentati';
	@override String get errorCheckingUpdatesNotifChannel => 'Controllo degli errori per gli aggiornamenti';
	@override String get appsRemovedNotifChannel => 'App rimosse';
	@override String get downloadingXNotifChannel => 'Scaricamento di {} in corso';
	@override String get completeAppInstallationNotifChannel => 'Completa l\'installazione dell\'app';
	@override String get checkingForUpdatesNotifChannel => 'Controllo degli aggiornamenti in corso';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Cerca aggiornamenti solo per app installate e app in Solo-Monitoraggio';
	@override String get supportFixedAPKURL => 'Supporta URL fissi di APK';
	@override String get selectX => 'Seleziona {}';
	@override String get parallelDownloads => 'Permetti download paralleli';
	@override String get useShizuku => 'Utilizzare Shizuku o Sui per installare';
	@override String get shizukuBinderNotFound => 'Shizuku non è in esecuzione';
	@override String get shizukuOld => 'Vecchia versione di Shizuku (<11) - aggiornarla';
	@override String get shizukuOldAndroidWithADB => 'Shizuku funziona su Android < 8.1 con ADB - aggiornare Android o utilizzare Sui al suo posto';
	@override String get shizukuPretendToBeGooglePlay => 'Impostare Google Play come fonte di installazione (se si usa Shizuku)';
	@override String get useSystemFont => 'Usa i caratteri di sistema';
	@override String get useVersionCodeAsOSVersion => 'Usa il codice versione dell\'app come versione rilevata dal sistema operativo';
	@override String get requestHeader => 'Intestazione della richiesta';
	@override String get useLatestAssetDateAsReleaseDate => 'Usa l\'ultimo caricamento della risorsa come data di rilascio';
	@override String get defaultPseudoVersioningMethod => 'Metodo di pseudoversione predefinito';
	@override String get partialAPKHash => 'Hash APK parziale';
	@override String get APKLinkHash => 'Hash collegamento APK';
	@override String get directAPKLink => 'Collegamento APK diretto';
	@override String get pseudoVersionInUse => 'È in uso una pseudo-versione';
	@override String get installedVersion => 'Installato';
	@override String get installed => 'Installato';
	@override String get notInstalledApps => 'Non installato';
	@override String get latest => 'Più recente';
	@override String get invertRegEx => 'Inverti espressione regolare';
	@override String get note => 'Nota';
	@override String get selfHostedNote => 'Il menu a tendina "{}" può essere usato per raggiungere istanze autogestite/personali di qualsiasi fonte.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'Non è stato possibile analizzare l\'APK (download incompatibile o parziale).';
	@override String get beforeNewInstallsShareToAppVerifier => 'Condividere le nuove applicazioni con AppVerifier (se disponibile)';
	@override String get appVerifierInstructionToast => 'Condividete con AppVerifier, quindi tornate qui quando siete pronti.';
	@override String get wiki => 'Aiuto/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Consentire le richieste HTTP non sicure';
	@override String get stayOneVersionBehind => 'Rimanere una versione indietro rispetto alla più recente';
	@override String get useFirstApkOfVersion => 'Selezione automatica del primo di più APK';
	@override String get refreshBeforeDownload => 'Aggiornare i dettagli dell\'app prima del download';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nome';
	@override String get smartname => 'Nome (intelligente)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Metodo di ordinamento';
	@override String get welcome => 'Benvenuti';
	@override String get batteryOptimizationNote => 'Si noti che i download in background potrebbero funzionare in modo più affidabile se si disabilita l\'ottimizzazione della batteria del sistema operativo per Updatium.';
	@override String get fileDeletionError => 'Errore nell\'eliminazione del file (provare a cancellarlo manualmente e poi riprovare): "{}"';
	@override String get foregroundService => 'Servizio Updatium in primo piano';
	@override String get foregroundServiceExplanation => 'Utilizzare un servizio in primo piano per il controllo degli aggiornamenti (più affidabile, consuma più energia)';
	@override String get fgServiceNotice => 'Questa notifica è necessaria per il controllo degli aggiornamenti in background (può essere nascosta nelle impostazioni del sistema operativo).';
	@override String get excludeSecrets => 'Escludere i segreti';
	@override String get GHReqPrefix => 'istanza \'omeritzics/Updatium\' per le richieste a GitHub';
	@override String get includeZips => 'Includere file ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrare gli APK all\'interno dello ZIP';
	@override String get multipleSigners => 'Segnali multipli';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Rimuovere l\'app?',
		other: 'Rimuovere le app?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Troppe richieste (traffico limitato) - riprova tra {count} minuto',
		other: 'Troppe richieste (traffico limitato) - riprova tra {count} minuti',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Il controllo degli aggiornamenti in secondo piano ha riscontrato un {error}, nuovo tentativo tra {count} minuto',
		other: 'Il controllo degli aggiornamenti in secondo piano ha riscontrato un {error}, nuovo tentativo tra {count} minuti',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Il controllo degli aggiornamenti in secondo piano ha trovato {count} aggiornamento - notificherà l\'utente se necessario',
		other: 'Il controllo degli aggiornamenti in secondo piano ha trovato {count} aggiornamenti - notificherà l\'utente se necessario',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{count} app',
		other: '{count} app',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{count} URL',
		other: '{count} URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{count} minuto',
		other: '{count} minuti',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{count} ora',
		other: '{count} ore',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{count} giorno',
		other: '{count} giorni',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Rimosso {n} log (prima = {before}, dopo = {after})',
		other: 'Rimossi {n} log (prima = {before}, dopo = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{app} e un\'altra app hanno aggiornamenti disponibili.',
		other: '{app} e altre {count} app hanno aggiornamenti disponibili.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{app} e un\'altra app sono state aggiornate.',
		other: '{app} e altre {count} app sono state aggiornate.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Non è riuscito ad aggiornare {app} e altre 1 app.',
		other: 'Non è riuscito ad aggiornare {app} e {count} altre applicazioni.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{app} e un\'altra app potrebbero essere state aggiornate.',
		other: '{app} e altre {count} app potrebbero essere state aggiornate.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n,
		one: 'Certificato Hash',
		other: 'Certificato Hashes',
	);
	@override String get securityDisclaimerTitle => 'Disclaimer di Sicurezza e Legale';
	@override String get license => 'Licenza';
	@override String get licenseText => 'Questa applicazione è distribuita sotto la Licenza GPL v3.';
	@override String get disclaimer => 'Disclaimer';
	@override String get disclaimerText => 'Questa applicazione non distribuisce, ospita o verifica alcuna delle applicazioni esterne. L\'utente assume la piena responsabilità per la sicurezza e la legalità di qualsiasi software installato attraverso questo strumento.\n\nhttps://github.com/omeritzics/Updatium è l\'unico posto ufficiale per scaricare Updatium - è sconsigliato scaricarlo altrove poiché il download da fonti non ufficiali non è sicuro.';
	@override String get privacy => 'Privacy';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Accetta e continua';
	@override String get decline => 'Rifiuta';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Ti piace Updatium?';
	@override String get githubStarPromptContent => 'Updatium è un progetto comunitario open-source volontario sviluppato nel mio tempo libero. Se desideri supportare il progetto, considera di dargli una stella su GitHub per aiutarci a raggiungere più utenti e contributori. Non sarai più infastidito su questo. Grazie in anticipo! :)';
	@override String get githubStarPromptStar => 'Dai una stella';
	@override String get githubStarPromptDontShowAgain => 'Non mostrare più';
	@override String get sourceCode => 'Codice sorgente';
	@override String get developedBy => 'Sviluppato da';
	@override String get appDescription => 'Un catalogo di app Android personalizzabile che ti consente di aggiornare le tue app direttamente dalle loro fonti APK.';
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

/// The flat map containing all translations for locale <it>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsIt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'URL dell\'app {} non valido',
			'noReleaseFound' => 'Impossibile trovare una release adatta',
			'noVersionFound' => 'Impossibile determinare la versione della release',
			'urlMatchesNoSource' => 'L\'URL non corrisponde ad alcuna fonte conosciuta',
			'cantInstallOlderVersion' => 'Impossibile installare una versione precedente di un\'app',
			'appIdMismatch' => 'L\'ID del pacchetto scaricato non corrisponde all\'ID dell\'app esistente',
			'functionNotImplemented' => 'Questa classe non ha implementato questa funzione',
			'placeholder' => 'Segnaposto',
			'someErrors' => 'Si sono verificati degli errori',
			'unexpectedError' => 'Errore imprevisto',
			'ok' => 'Va bene',
			'and' => 'e',
			'githubPATLabel' => 'GitHub Personal Access Token',
			'includePrereleases' => 'Includi prerelease',
			'fallbackToOlderReleases' => 'Ripiega su release precedenti',
			'filterReleaseTitlesByRegEx' => 'Filtra release con espressioni regolari',
			'invalidRegEx' => 'Espressione regolare non valida',
			'noDescription' => 'Descrizione assente',
			'cancel' => 'Annulla',
			'kContinue' => 'Continua',
			'requiredInBrackets' => '(richiesto)',
			'dropdownNoOptsError' => 'ERRORE: LA TENDINA DEVE AVERE ALMENO UN\'OPZIONE',
			'color' => 'Colore',
			'standard' => 'Standard',
			'custom' => 'Personalizzato',
			'primary' => 'Primary',
			'useMaterialYou' => 'Utilizzate i colori Material You',
			'githubStarredRepos' => 'repository stellati da GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nome utente',
			'wrongArgNum' => 'Numero di argomenti forniti errato',
			'xIsTrackOnly' => '{} è in modalità Solo-Monitoraggio',
			'source' => 'Fonte',
			'app' => 'App',
			'appsFromSourceAreTrackOnly' => 'Le app da questa fonte sono in modalità \'Solo-Monitoraggio\'.',
			'youPickedTrackOnly' => 'È stata selezionata l\'opzione \'Solo-Monitoraggio\'.',
			'trackOnlyAppDescription' => 'L\'app sarà monitorata per gli aggiornamenti, ma Updatium non sarà in grado di scaricarli o di installarli.',
			'cancelled' => 'Annullato',
			'appAlreadyAdded' => 'App già aggiunta',
			'alreadyUpToDateQuestion' => 'L\'app è già aggiornata?',
			'addApp' => 'Aggiungi app',
			'appSourceURL' => 'URL della fonte dell\'app',
			'error' => 'Errore',
			'add' => 'Aggiungi',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Cerca (solo per alcune fonti)',
			'search' => 'Cerca',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opzioni aggiuntive per {}',
			'supportedSources' => 'Fonti supportate',
			'trackOnlyInBrackets' => '(Solo-Monitoraggio)',
			'searchableInBrackets' => '(ricercabile)',
			'appsString' => 'App',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Nessuna app',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Nessuna app per i filtri selezionati',
			'byX' => 'Di {}',
			'percentProgress' => 'Avanzamento: {}%',
			'pleaseWait' => 'In attesa',
			'updateAvailable' => 'Aggiornamento disponibile',
			'notInstalled' => 'Non installato',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versione',
			'selectAll' => 'Seleziona tutto',
			'deselectX' => 'Deseleziona {}',
			'xWillBeRemovedButRemainInstalled' => 'Verà effettuata la rimozione di {}, ma non la disinstallazione.',
			'removeSelectedAppsQuestion' => 'Rimuovere le app selezionate?',
			'removeSelectedApps' => 'Rimuovi le app selezionate',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Aggiorna {}',
			'installX' => 'Installa {}',
			'markXTrackOnlyAsUpdated' => 'Contrassegna {}\n(Solo-Monitoraggio)\ncome aggiornata',
			'changeX' => 'Modifica {}',
			'installUpdateApps' => 'Installa/Aggiorna app',
			'installUpdateSelectedApps' => 'Installa/Aggiorna le app selezionate',
			'markXSelectedAppsAsUpdated' => 'Contrassegnare le {} app selezionate come aggiornate?',
			'no' => 'NO',
			'yes' => 'Sì',
			'markSelectedAppsUpdated' => 'Contrassegna le app selezionate come aggiornate',
			'pinToTop' => 'Fissa in alto',
			'unpinFromTop' => 'Rimuovi dall\'alto',
			'resetInstallStatusForSelectedAppsQuestion' => 'Ripristinare lo stato d\'installazione delle app selezionate?',
			'installStatusOfXWillBeResetExplanation' => 'Lo stato d\'installazione di ogni app selezionata sarà ripristinato.\n\nCiò può essere d\'aiuto nel caso in cui la versione mostrata dell\'app in Updatium non sia corretta a causa di un aggiornamento fallito o di altri problemi.',
			'customLinkMessage' => 'Questi collegamenti funzionano sui dispositivi con Updatium installato',
			'shareAppConfigLinks' => 'Condividi la configurazione dell\'app come collegamento HTML',
			'resetInstallStatus' => 'Ripristina lo stato d\'installazione',
			'more' => 'Altro',
			'removeOutdatedFilter' => 'Rimuovi il filtro per le app non aggiornate',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Mostra solo le app non aggiornate',
			'filter' => 'Filtri',
			'filterApps' => 'Filtra app',
			'filterDays' => 'Filter days',
			'appName' => 'Nome dell\'app',
			'author' => 'Autore',
			'upToDateApps' => 'App aggiornate',
			'nonInstalledApps' => 'App non installate',
			'importExport' => 'Importa/Esporta',
			'settings' => 'Impostazioni',
			'exportedTo' => 'Esportato in {}',
			'updatiumExport' => 'Esporta da Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Inserimento non valido',
			'importedX' => 'Importato {}',
			'updatiumImport' => 'Importa in Updatium',
			'importFromURLList' => 'Importa da lista di URL',
			'searchQuery' => 'Stringa di ricerca',
			'appURLList' => 'Lista di URL delle app',
			'line' => 'Linea',
			'searchX' => 'Cerca su {}',
			'noResults' => 'Nessun risultato trovato',
			'importX' => 'Importa {}',
			'importedAppsIdDisclaimer' => 'Le app importate potrebbero essere visualizzate erroneamente come "Non installate".\nPer risolvere il problema, reinstallale con Updatium.\nCiò non dovrebbe influire sui dati delle app.\n\nRiguarda solo l\'URL e i metodi di importazione di terze parti.',
			'importErrors' => 'Errori di importazione',
			'importedXOfYApps' => '{} app di {} importate.',
			'followingURLsHadErrors' => 'I seguenti URL contengono errori:',
			'selectURL' => 'Seleziona l\'URL',
			'selectURLs' => 'Seleziona gli URL',
			'pick' => 'Seleziona',
			'theme' => 'Tema',
			'dark' => 'Scuro',
			'light' => 'Chiaro',
			'followSystem' => 'Segui il sistema',
			'followSystemThemeExplanation' => 'È possibile seguire il tema di sistema solo utilizzando applicazioni di terze parti.',
			'useBlackTheme' => 'Usa il tema nero puro',
			'appSortBy' => 'App ordinate per',
			'authorName' => 'Autore/Nome',
			'nameAuthor' => 'Nome/Autore',
			'asAdded' => 'Data di aggiunta',
			'appSortOrder' => 'Ordine',
			'ascending' => 'Ascendente',
			'descending' => 'Discendente',
			'bgUpdateCheckInterval' => 'Intervallo di controllo degli aggiornamenti in secondo piano',
			'neverManualOnly' => 'Mai - Solo manuale',
			'appearance' => 'Aspetto',
			'pinUpdates' => 'Fissa aggiornamenti disponibili in alto',
			'updates' => 'Aggiornamenti',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Specifiche per la fonte',
			'appSource' => 'Codice dell\'app',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Nessun log',
			'appLogs' => 'Log dell\'app',
			'appLogsHint' => 'View application logs',
			'close' => 'Chiudi',
			'share' => 'Condividi',
			'appNotFound' => 'App non trovata',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'esportazione-updatium',
			'pickAnAPK' => 'Seleziona un APK',
			'appHasMoreThanOnePackage' => '{} offre più di un pacchetto:',
			'deviceSupportsXArch' => 'Il dispositivo in uso supporta l\'architettura {} della CPU.',
			'deviceSupportsFollowingArchs' => 'Il dispositivo in uso supporta le seguenti architetture della CPU:',
			'warning' => 'Attenzione',
			'sourceIsXButPackageFromYPrompt' => 'L\'origine dell\'app è \'{}\' ma il pacchetto della release proviene da \'{}\'. Continuare?',
			'updatesAvailable' => 'Aggiornamenti disponibili',
			'updatesAvailableNotifDescription' => 'Notifica all\'utente che sono disponibili gli aggiornamenti di una o più app monitorate da Updatium',
			'noNewUpdates' => 'Nessun nuovo aggiornamento.',
			'xHasAnUpdate' => 'Aggiornamento disponibile per {}',
			'appsUpdated' => 'App aggiornate',
			'appsNotUpdated' => 'Impossibile aggiornare le applicazioni',
			'appsUpdatedNotifDescription' => 'Notifica all\'utente che una o più app sono state aggiornate in secondo piano',
			'xWasUpdatedToY' => '{} è stato aggiornato alla {}.',
			'xWasNotUpdatedToY' => 'Impossibile aggiornare {} a {}.',
			'errorCheckingUpdates' => 'Controllo degli errori per gli aggiornamenti',
			'errorCheckingUpdatesNotifDescription' => 'Una notifica che mostra quando il controllo degli aggiornamenti in secondo piano fallisce',
			'appsRemoved' => 'App rimosse',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifica all\'utente che una o più app sono state rimosse a causa di errori durante il caricamento',
			'xWasRemovedDueToErrorY' => '{} è stata rimosso a causa di questo errore: {}',
			'completeAppInstallation' => 'Completa l\'installazione dell\'app',
			'updatiumMustBeOpenToInstallApps' => 'Updatium deve essere aperto per poter installare le app',
			'completeAppInstallationNotifDescription' => 'Chiede all\'utente di riaprire Updatium per terminare l\'installazione di un\'app',
			'checkingForUpdates' => 'Controllo degli aggiornamenti in corso',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notifica transitoria che appare durante la verifica degli aggiornamenti',
			'pleaseAllowInstallPerm' => 'Per favore permetti a Updatium di installare le app',
			'trackOnly' => 'Solo-Monitoraggio',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Errore {}',
			'versionCorrectionDisabled' => 'Correzione della versione disattivata (il plugin sembra non funzionare)',
			'unknown' => 'Sconosciuto',
			'none' => 'Nessuno',
			'all' => 'Tutti',
			'never' => 'Mai',
			'latestVersion' => 'Ultima versione',
			'installedVersionX' => 'Versione installata: {}',
			'lastUpdateCheckX' => 'Ultimo controllo degli aggiornamenti: {}',
			'remove' => 'Rimuovi',
			'quickLinks' => 'Collegamenti rapidi',
			'yesMarkUpdated' => 'Sì, contrassegna come aggiornata',
			'fdroid' => 'F-Droid ufficiale',
			'appIdOrName' => 'ID o nome dell\'app',
			'appId' => 'ID dell\'app',
			'appWithIdOrNameNotFound' => 'Non è stata trovata alcuna app con quell\'ID o nome',
			'reposHaveMultipleApps' => 'I repository possono contenere più app',
			'fdroidThirdPartyRepo' => 'Repository F-Droid di terze parti',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Installa',
			'markInstalled' => 'Contrassegna come installata',
			'update' => 'Aggiorna',
			'updated' => 'Aggiornato',
			'markUpdated' => 'Contrassegna come aggiornata',
			'download' => 'Download',
			'additionalOptions' => 'Opzioni aggiuntive',
			'disableVersionDetection' => 'Disattiva il rilevamento della versione',
			'noVersionDetectionExplanation' => 'Questa opzione dovrebbe essere usata solo per le app la cui versione non viene rilevata correttamente.',
			'downloadingX' => 'Scaricamento di {} in corso',
			'downloadX' => 'Scarica {}',
			'downloadedX' => 'Scaricato {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Rilascio Asset',
			'downloadNotifDescription' => 'Notifica all\'utente lo stato di avanzamento del download di un\'app',
			'noAPKFound' => 'Nessun APK trovato',
			'noVersionDetection' => 'Disattiva rilevamento di versione',
			'categorize' => 'Aggiungi a categoria',
			'categories' => 'Categorie',
			'category' => 'Categoria',
			'noCategory' => 'Nessuna categoria',
			'noCategories' => 'Nessuna categoria',
			'categoryDeleteQuestion' => 'Eliminare le categorie?',
			'categoryDeleteWarning' => 'Tutte le app nelle categorie eliminate saranno impostate come non categorizzate.',
			'addCategory' => 'Aggiungi categoria',
			'label' => 'Etichetta',
			'language' => 'Lingua',
			'copiedToClipboard' => 'Copiato negli appunti',
			'storagePermissionDenied' => 'Accesso ai file non autorizzato',
			'selectedCategorizeWarning' => 'Ciò sostituirà le impostazioni di categoria esistenti per le app selezionate.',
			'filterAPKsByRegEx' => 'Filtra file APK con espressioni regolari',
			'removeFromUpdatium' => 'Rimuovi da Updatium',
			'uninstallFromDevice' => 'Disinstalla dal dispositivo',
			'onlyWorksWithNonVersionDetectApps' => 'Funziona solo per le app con il rilevamento della versione disattivato.',
			'releaseDateAsVersion' => 'Usa data di rilascio come versione',
			'releaseTitleAsVersion' => 'Usa il titolo della versione come stringa di versione',
			'releaseDateAsVersionExplanation' => 'Questa opzione dovrebbe essere usata solo per le app in cui il rilevamento della versione non funziona correttamente, ma è disponibile una data di rilascio.',
			'changes' => 'Novità',
			'releaseDate' => 'Data di rilascio',
			'importFromURLsInFile' => 'Importa da URL in file (come OPML)',
			'versionDetectionExplanation' => 'Riconcilia la stringa della versione con la versione rilevata dal sistema operativo',
			'versionDetection' => 'Rilevamento di versione',
			'standardVersionDetection' => 'Rilevamento di versione standard',
			'groupByCategory' => 'Raggruppa per categoria',
			'listView' => 'Vista elenco',
			'gridView' => 'Vista griglia',
			'autoApkFilterByArch' => 'Tenta di filtrare gli APK in base all\'architettura della CPU, se possibile',
			'autoLinkFilterByArch' => 'Tentare di filtrare i collegamenti in base all\'architettura della CPU, se possibile.',
			'overrideSource' => 'Sovrascrivi fonte',
			'dontShowAgain' => 'Non mostrarlo più',
			'dontShowTrackOnlyWarnings' => 'Non mostrare gli avvisi \'Solo-Monitoraggio\'',
			'dontShowAPKOriginWarnings' => 'Non mostrare gli avvisi di origine dell\'APK',
			'moveNonInstalledAppsToBottom' => 'Sposta le app non installate in fondo alla lista',
			'gitlabPATLabel' => 'GitLab Token di accesso personale',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Informazioni',
			'requiresCredentialsInSettings' => '{}: Servono credenziali aggiuntive (in Impostazioni)',
			'checkOnStart' => 'Controlla una volta all\'avvio',
			'safeMode' => 'Modalità sicura',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Aggiungi app è disabilitato in modalità sicura',
			'tryInferAppIdFromCode' => 'Prova a dedurre l\'ID dell\'app dal codice sorgente',
			'removeOnExternalUninstall' => 'Rimuovi automaticamente app disinstallate esternamente',
			'pickHighestVersionCode' => 'Auto-seleziona APK con version code più alto',
			'checkUpdateOnDetailPage' => 'Controlla aggiornamenti all\'apertura dei dettagli dell\'app',
			'disablePageTransitions' => 'Disattiva animazioni di transizione pagina',
			'reversePageTransitions' => 'Inverti animazioni di transizione pagina',
			'minStarCount' => 'Numero minimo di stelle',
			'addInfoBelow' => 'Aggiungi questa info sotto.',
			'addInfoInSettings' => 'Aggiungi questa info nelle impostazioni.',
			'githubSourceNote' => 'Il limite di ricerca GitHub può essere evitato usando una chiave API.',
			'sortByLastLinkSegment' => 'Ordina solo in base all\'ultimo segmento del collegamento',
			'filterReleaseNotesByRegEx' => 'Filtra le note di rilascio con espressione regolare',
			'customLinkFilterRegex' => 'Filtra link APK personalizzato con espressione regolare (predefinito \'.apk$\')',
			'appsPossiblyUpdated' => 'Aggiornamenti app tentati',
			'appsPossiblyUpdatedNotifDescription' => 'Notifica all\'utente che sono stati potenzialmente applicati in secondo piano aggiornamenti a una o più app',
			'xWasPossiblyUpdatedToY' => '{} potrebbe essere stata aggiornata alla {}.',
			'enableBackgroundUpdates' => 'Attiva aggiornamenti in secondo piano',
			'backgroundUpdateReqsExplanation' => 'Gli aggiornamenti in secondo piano potrebbero non essere possibili per tutte le app.',
			'backgroundUpdateLimitsExplanation' => 'La riuscita di un\'installazione in secondo piano può essere determinata solo quando viene aperto Updatium.',
			'verifyLatestTag' => 'Verifica l\'etichetta \'Latest\'',
			'intermediateLinkRegex' => 'Filtro per un collegamento \'intermedio\' da visitare',
			'filterByLinkText' => 'Filtra i collegamenti in base al testo del collegamento',
			'matchLinksOutsideATags' => 'Corrispondenza dei collegamenti al di fuori dei tag <a>',
			'intermediateLinkNotFound' => 'Link intermedio non trovato',
			'intermediateLink' => 'Collegamento intermedio',
			'exemptFromBackgroundUpdates' => 'Esente da aggiornamenti in secondo piano (se attivo)',
			'bgUpdatesOnWiFiOnly' => 'Disattiva aggiornamenti in secondo piano quando non si usa il Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Disabilita gli aggiornamenti in background quando non è in carica',
			'autoSelectHighestVersionCode' => 'Auto-seleziona APK con versionCode più alto',
			'versionExtractionRegEx' => 'RegEx di estrazione versione',
			'trimVersionString' => 'Tagliare la stringa della versione con RegEx',
			'matchGroupToUseForX' => 'Gruppo di corrispondenza da utilizzare per "{}"',
			'matchGroupToUse' => 'Gruppo da usare',
			'highlightTouchTargets' => 'Evidenzia elementi toccabili meno ovvi',
			'pickExportDir' => 'Scegli cartella esp.',
			'autoExportOnChanges' => 'Auto-esporta dopo modifiche',
			'includeSettings' => 'Includi impostazioni',
			'filterVersionsByRegEx' => 'Filtra versioni con espressione regolare',
			'trySelectingSuggestedVersionCode' => 'Prova a selezionare APK con versionCode suggerito',
			'dontSortReleasesList' => 'Conserva l\'ordine di release da API',
			'reverseSort' => 'Ordine inverso',
			'takeFirstLink' => 'Prendi il primo link',
			'skipSort' => 'Salta ordinamento',
			'debugMenu' => 'Menu di debug',
			'bgTaskStarted' => 'Attività in secondo piano iniziata - controllo log.',
			'runBgCheckNow' => 'Inizia aggiornamento in secondo piano ora',
			'versionExtractWholePage' => 'Applica regex di estrazione versione a tutta la pagina',
			'installing' => 'Installazione',
			'skipUpdateNotifications' => 'Salta notifiche di aggiornamento',
			'updatesAvailableNotifChannel' => 'Aggiornamenti disponibili',
			'appsUpdatedNotifChannel' => 'App aggiornate',
			'appsPossiblyUpdatedNotifChannel' => 'Aggiornamenti app tentati',
			'errorCheckingUpdatesNotifChannel' => 'Controllo degli errori per gli aggiornamenti',
			'appsRemovedNotifChannel' => 'App rimosse',
			'downloadingXNotifChannel' => 'Scaricamento di {} in corso',
			'completeAppInstallationNotifChannel' => 'Completa l\'installazione dell\'app',
			'checkingForUpdatesNotifChannel' => 'Controllo degli aggiornamenti in corso',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Cerca aggiornamenti solo per app installate e app in Solo-Monitoraggio',
			'supportFixedAPKURL' => 'Supporta URL fissi di APK',
			'selectX' => 'Seleziona {}',
			'parallelDownloads' => 'Permetti download paralleli',
			'useShizuku' => 'Utilizzare Shizuku o Sui per installare',
			'shizukuBinderNotFound' => 'Shizuku non è in esecuzione',
			'shizukuOld' => 'Vecchia versione di Shizuku (<11) - aggiornarla',
			'shizukuOldAndroidWithADB' => 'Shizuku funziona su Android < 8.1 con ADB - aggiornare Android o utilizzare Sui al suo posto',
			'shizukuPretendToBeGooglePlay' => 'Impostare Google Play come fonte di installazione (se si usa Shizuku)',
			'useSystemFont' => 'Usa i caratteri di sistema',
			'useVersionCodeAsOSVersion' => 'Usa il codice versione dell\'app come versione rilevata dal sistema operativo',
			'requestHeader' => 'Intestazione della richiesta',
			'useLatestAssetDateAsReleaseDate' => 'Usa l\'ultimo caricamento della risorsa come data di rilascio',
			'defaultPseudoVersioningMethod' => 'Metodo di pseudoversione predefinito',
			'partialAPKHash' => 'Hash APK parziale',
			'APKLinkHash' => 'Hash collegamento APK',
			'directAPKLink' => 'Collegamento APK diretto',
			'pseudoVersionInUse' => 'È in uso una pseudo-versione',
			'installedVersion' => 'Installato',
			'installed' => 'Installato',
			'notInstalledApps' => 'Non installato',
			'latest' => 'Più recente',
			'invertRegEx' => 'Inverti espressione regolare',
			'note' => 'Nota',
			'selfHostedNote' => 'Il menu a tendina "{}" può essere usato per raggiungere istanze autogestite/personali di qualsiasi fonte.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'Non è stato possibile analizzare l\'APK (download incompatibile o parziale).',
			'beforeNewInstallsShareToAppVerifier' => 'Condividere le nuove applicazioni con AppVerifier (se disponibile)',
			'appVerifierInstructionToast' => 'Condividete con AppVerifier, quindi tornate qui quando siete pronti.',
			'wiki' => 'Aiuto/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Consentire le richieste HTTP non sicure',
			'stayOneVersionBehind' => 'Rimanere una versione indietro rispetto alla più recente',
			'useFirstApkOfVersion' => 'Selezione automatica del primo di più APK',
			'refreshBeforeDownload' => 'Aggiornare i dettagli dell\'app prima del download',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nome',
			'smartname' => 'Nome (intelligente)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Metodo di ordinamento',
			'welcome' => 'Benvenuti',
			'batteryOptimizationNote' => 'Si noti che i download in background potrebbero funzionare in modo più affidabile se si disabilita l\'ottimizzazione della batteria del sistema operativo per Updatium.',
			'fileDeletionError' => 'Errore nell\'eliminazione del file (provare a cancellarlo manualmente e poi riprovare): "{}"',
			'foregroundService' => 'Servizio Updatium in primo piano',
			'foregroundServiceExplanation' => 'Utilizzare un servizio in primo piano per il controllo degli aggiornamenti (più affidabile, consuma più energia)',
			'fgServiceNotice' => 'Questa notifica è necessaria per il controllo degli aggiornamenti in background (può essere nascosta nelle impostazioni del sistema operativo).',
			'excludeSecrets' => 'Escludere i segreti',
			'GHReqPrefix' => 'istanza \'omeritzics/Updatium\' per le richieste a GitHub',
			'includeZips' => 'Includere file ZIP',
			'zippedApkFilterRegEx' => 'Filtrare gli APK all\'interno dello ZIP',
			'multipleSigners' => 'Segnali multipli',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Rimuovere l\'app?', other: 'Rimuovere le app?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Troppe richieste (traffico limitato) - riprova tra {count} minuto', other: 'Troppe richieste (traffico limitato) - riprova tra {count} minuti', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Il controllo degli aggiornamenti in secondo piano ha riscontrato un {error}, nuovo tentativo tra {count} minuto', other: 'Il controllo degli aggiornamenti in secondo piano ha riscontrato un {error}, nuovo tentativo tra {count} minuti', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Il controllo degli aggiornamenti in secondo piano ha trovato {count} aggiornamento - notificherà l\'utente se necessario', other: 'Il controllo degli aggiornamenti in secondo piano ha trovato {count} aggiornamenti - notificherà l\'utente se necessario', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{count} app', other: '{count} app', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{count} URL', other: '{count} URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{count} minuto', other: '{count} minuti', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{count} ora', other: '{count} ore', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{count} giorno', other: '{count} giorni', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Rimosso {n} log (prima = {before}, dopo = {after})', other: 'Rimossi {n} log (prima = {before}, dopo = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{app} e un\'altra app hanno aggiornamenti disponibili.', other: '{app} e altre {count} app hanno aggiornamenti disponibili.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{app} e un\'altra app sono state aggiornate.', other: '{app} e altre {count} app sono state aggiornate.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Non è riuscito ad aggiornare {app} e altre 1 app.', other: 'Non è riuscito ad aggiornare {app} e {count} altre applicazioni.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{app} e un\'altra app potrebbero essere state aggiornate.', other: '{app} e altre {count} app potrebbero essere state aggiornate.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('it'))(n, one: 'Certificato Hash', other: 'Certificato Hashes', ), 
			'securityDisclaimerTitle' => 'Disclaimer di Sicurezza e Legale',
			'license' => 'Licenza',
			'licenseText' => 'Questa applicazione è distribuita sotto la Licenza GPL v3.',
			'disclaimer' => 'Disclaimer',
			'disclaimerText' => 'Questa applicazione non distribuisce, ospita o verifica alcuna delle applicazioni esterne. L\'utente assume la piena responsabilità per la sicurezza e la legalità di qualsiasi software installato attraverso questo strumento.\n\nhttps://github.com/omeritzics/Updatium è l\'unico posto ufficiale per scaricare Updatium - è sconsigliato scaricarlo altrove poiché il download da fonti non ufficiali non è sicuro.',
			'privacy' => 'Privacy',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Accetta e continua',
			'decline' => 'Rifiuta',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Ti piace Updatium?',
			'githubStarPromptContent' => 'Updatium è un progetto comunitario open-source volontario sviluppato nel mio tempo libero. Se desideri supportare il progetto, considera di dargli una stella su GitHub per aiutarci a raggiungere più utenti e contributori. Non sarai più infastidito su questo. Grazie in anticipo! :)',
			'githubStarPromptStar' => 'Dai una stella',
			'githubStarPromptDontShowAgain' => 'Non mostrare più',
			'sourceCode' => 'Codice sorgente',
			'developedBy' => 'Sviluppato da',
			'appDescription' => 'Un catalogo di app Android personalizzabile che ti consente di aggiornare le tue app direttamente dalle loro fonti APK.',
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
