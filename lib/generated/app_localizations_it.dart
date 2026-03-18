// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'URL dell\'app $arg1 non valido';
  }

  @override
  String get noReleaseFound => 'Impossibile trovare una release adatta';

  @override
  String get noVersionFound =>
      'Impossibile determinare la versione della release';

  @override
  String get urlMatchesNoSource =>
      'L\'URL non corrisponde ad alcuna fonte conosciuta';

  @override
  String get cantInstallOlderVersion =>
      'Impossibile installare una versione precedente di un\'app';

  @override
  String get appIdMismatch =>
      'L\'ID del pacchetto scaricato non corrisponde all\'ID dell\'app esistente';

  @override
  String get functionNotImplemented =>
      'Questa classe non ha implementato questa funzione';

  @override
  String get placeholder => 'Segnaposto';

  @override
  String get someErrors => 'Si sono verificati degli errori';

  @override
  String get unexpectedError => 'Errore imprevisto';

  @override
  String get ok => 'Va bene';

  @override
  String get and => 'e';

  @override
  String get githubPATLabel =>
      'GitHub Personal Access Token (aumenta limite di traffico)';

  @override
  String get includePrereleases => 'Includi prerelease';

  @override
  String get fallbackToOlderReleases => 'Ripiega su release precedenti';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filtra release con espressioni regolari';

  @override
  String get invalidRegEx => 'Espressione regolare non valida';

  @override
  String get noDescription => 'Descrizione assente';

  @override
  String get cancel => 'Annulla';

  @override
  String get requiredInBrackets => '(richiesto)';

  @override
  String get dropdownNoOptsError =>
      'ERRORE: LA TENDINA DEVE AVERE ALMENO UN\'OPZIONE';

  @override
  String get color => 'Colore';

  @override
  String get standard => 'Standard';

  @override
  String get custom => 'Personalizzato';

  @override
  String get useMaterialYou => 'Utilizzate i colori Material You';

  @override
  String get githubStarredRepos => 'repository stellati da GitHub';

  @override
  String get uname => 'Nome utente';

  @override
  String get wrongArgNum => 'Numero di argomenti forniti errato';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 è in modalità Solo-Monitoraggio';
  }

  @override
  String get source => 'Fonte';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Le app da questa fonte sono in modalità \'Solo-Monitoraggio\'.';

  @override
  String get youPickedTrackOnly =>
      'È stata selezionata l\'opzione \'Solo-Monitoraggio\'.';

  @override
  String get trackOnlyAppDescription =>
      'L\'app sarà monitorata per gli aggiornamenti, ma Updatium non sarà in grado di scaricarli o di installarli.';

  @override
  String get cancelled => 'Annullato';

  @override
  String get appAlreadyAdded => 'App già aggiunta';

  @override
  String get alreadyUpToDateQuestion => 'L\'app è già aggiornata?';

  @override
  String get addApp => 'Aggiungi app';

  @override
  String get appSourceURL => 'URL della fonte dell\'app';

  @override
  String get error => 'Errore';

  @override
  String get add => 'Aggiungi';

  @override
  String get searchSomeSourcesLabel => 'Cerca (solo per alcune fonti)';

  @override
  String get search => 'Cerca';

  @override
  String additionalOptsFor(String arg1) {
    return 'Opzioni aggiuntive per $arg1';
  }

  @override
  String get supportedSources => 'Fonti supportate';

  @override
  String get trackOnlyInBrackets => '(Solo-Monitoraggio)';

  @override
  String get searchableInBrackets => '(ricercabile)';

  @override
  String get appsString => 'App';

  @override
  String get noApps => 'Nessuna app';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Nessuna app per i filtri selezionati';

  @override
  String byX(String arg1) {
    return 'Di $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Avanzamento: $arg1%';
  }

  @override
  String get pleaseWait => 'In attesa';

  @override
  String get updateAvailable => 'Aggiornamento disponibile';

  @override
  String get notInstalled => 'Non installato';

  @override
  String get pseudoVersion => 'pseudo-versione';

  @override
  String get selectAll => 'Seleziona tutto';

  @override
  String deselectX(String arg1) {
    return 'Deseleziona $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return 'Verà effettuata la rimozione di $arg1, ma non la disinstallazione.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Rimuovere le app selezionate?';

  @override
  String get removeSelectedApps => 'Rimuovi le app selezionate';

  @override
  String updateX(String arg1) {
    return 'Aggiorna $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Installa $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Contrassegna $arg1\n(Solo-Monitoraggio)\ncome aggiornata';
  }

  @override
  String changeX(String arg1) {
    return 'Modifica $arg1';
  }

  @override
  String get installUpdateApps => 'Installa/Aggiorna app';

  @override
  String get installUpdateSelectedApps =>
      'Installa/Aggiorna le app selezionate';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Contrassegnare le $arg1 app selezionate come aggiornate?';
  }

  @override
  String get no => 'NO';

  @override
  String get yes => 'Sì';

  @override
  String get markSelectedAppsUpdated =>
      'Contrassegna le app selezionate come aggiornate';

  @override
  String get pinToTop => 'Fissa in alto';

  @override
  String get unpinFromTop => 'Rimuovi dall\'alto';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Ripristinare lo stato d\'installazione delle app selezionate?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Lo stato d\'installazione di ogni app selezionata sarà ripristinato.\n\nCiò può essere d\'aiuto nel caso in cui la versione mostrata dell\'app in Updatium non sia corretta a causa di un aggiornamento fallito o di altri problemi.';

  @override
  String get customLinkMessage =>
      'Questi collegamenti funzionano sui dispositivi con Updatium installato';

  @override
  String get shareAppConfigLinks =>
      'Condividi la configurazione dell\'app come collegamento HTML';

  @override
  String get shareSelectedAppURLs => 'Condividi gli URL delle app selezionate';

  @override
  String get resetInstallStatus => 'Ripristina lo stato d\'installazione';

  @override
  String get more => 'Altro';

  @override
  String get removeOutdatedFilter =>
      'Rimuovi il filtro per le app non aggiornate';

  @override
  String get showOutdatedOnly => 'Mostra solo le app non aggiornate';

  @override
  String get filter => 'Filtri';

  @override
  String get filterApps => 'Filtra app';

  @override
  String get appName => 'Nome dell\'app';

  @override
  String get author => 'Autore';

  @override
  String get upToDateApps => 'App aggiornate';

  @override
  String get nonInstalledApps => 'App non installate';

  @override
  String get importExport => 'Importa/Esporta';

  @override
  String get settings => 'Impostazioni';

  @override
  String exportedTo(String arg1) {
    return 'Esportato in $arg1';
  }

  @override
  String get updatiumExport => 'Esporta da Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Inserimento non valido';

  @override
  String importedX(String arg1) {
    return 'Importato $arg1';
  }

  @override
  String get updatiumImport => 'Importa in Updatium';

  @override
  String get importFromURLList => 'Importa da lista di URL';

  @override
  String get searchQuery => 'Stringa di ricerca';

  @override
  String get appURLList => 'Lista di URL delle app';

  @override
  String get line => 'Linea';

  @override
  String searchX(String arg1) {
    return 'Cerca su $arg1';
  }

  @override
  String get noResults => 'Nessun risultato trovato';

  @override
  String importX(String arg1) {
    return 'Importa $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Le app importate potrebbero essere visualizzate erroneamente come \"Non installate\".\nPer risolvere il problema, reinstallale con Updatium.\nCiò non dovrebbe influire sui dati delle app.\n\nRiguarda solo l\'URL e i metodi di importazione di terze parti.';

  @override
  String get importErrors => 'Errori di importazione';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1 app di $arg2 importate.';
  }

  @override
  String get followingURLsHadErrors => 'I seguenti URL contengono errori:';

  @override
  String get selectURL => 'Seleziona l\'URL';

  @override
  String get selectURLs => 'Seleziona gli URL';

  @override
  String get pick => 'Seleziona';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Scuro';

  @override
  String get light => 'Chiaro';

  @override
  String get followSystem => 'Segui il sistema';

  @override
  String get followSystemThemeExplanation =>
      'È possibile seguire il tema di sistema solo utilizzando applicazioni di terze parti.';

  @override
  String get useBlackTheme => 'Usa il tema nero puro';

  @override
  String get appSortBy => 'App ordinate per';

  @override
  String get authorName => 'Autore/Nome';

  @override
  String get nameAuthor => 'Nome/Autore';

  @override
  String get asAdded => 'Data di aggiunta';

  @override
  String get appSortOrder => 'Ordine';

  @override
  String get ascending => 'Ascendente';

  @override
  String get descending => 'Discendente';

  @override
  String get bgUpdateCheckInterval =>
      'Intervallo di controllo degli aggiornamenti in secondo piano';

  @override
  String get neverManualOnly => 'Mai - Solo manuale';

  @override
  String get appearance => 'Aspetto';

  @override
  String get pinUpdates => 'Fissa aggiornamenti disponibili in alto';

  @override
  String get updates => 'Aggiornamenti';

  @override
  String get sourceSpecific => 'Specifiche per la fonte';

  @override
  String get appSource => 'Codice dell\'app';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Nessun log';

  @override
  String get appLogs => 'Log dell\'app';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Chiudi';

  @override
  String get share => 'Condividi';

  @override
  String get appNotFound => 'App non trovata';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'esportazione-updatium';

  @override
  String get pickAnAPK => 'Seleziona un APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 offre più di un pacchetto:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Il dispositivo in uso supporta l\'architettura $arg1 della CPU.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Il dispositivo in uso supporta le seguenti architetture della CPU:';

  @override
  String get warning => 'Attenzione';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'L\'origine dell\'app è \'$arg1\' ma il pacchetto della release proviene da \'$arg2\'. Continuare?';
  }

  @override
  String get updatesAvailable => 'Aggiornamenti disponibili';

  @override
  String get updatesAvailableNotifDescription =>
      'Notifica all\'utente che sono disponibili gli aggiornamenti di una o più app monitorate da Updatium';

  @override
  String get noNewUpdates => 'Nessun nuovo aggiornamento.';

  @override
  String xHasAnUpdate(String arg1) {
    return 'Aggiornamento disponibile per $arg1';
  }

  @override
  String get appsUpdated => 'App aggiornate';

  @override
  String get appsNotUpdated => 'Impossibile aggiornare le applicazioni';

  @override
  String get appsUpdatedNotifDescription =>
      'Notifica all\'utente che una o più app sono state aggiornate in secondo piano';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 è stato aggiornato alla $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Impossibile aggiornare $arg1 a $arg2.';
  }

  @override
  String get errorCheckingUpdates =>
      'Controllo degli errori per gli aggiornamenti';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Una notifica che mostra quando il controllo degli aggiornamenti in secondo piano fallisce';

  @override
  String get appsRemoved => 'App rimosse';

  @override
  String get appsRemovedNotifDescription =>
      'Notifica all\'utente che una o più app sono state rimosse a causa di errori durante il caricamento';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 è stata rimosso a causa di questo errore: $arg2';
  }

  @override
  String get completeAppInstallation => 'Completa l\'installazione dell\'app';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium deve essere aperto per poter installare le app';

  @override
  String get completeAppInstallationNotifDescription =>
      'Chiede all\'utente di riaprire Updatium per terminare l\'installazione di un\'app';

  @override
  String get checkingForUpdates => 'Controllo degli aggiornamenti in corso';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Notifica transitoria che appare durante la verifica degli aggiornamenti';

  @override
  String get pleaseAllowInstallPerm =>
      'Per favore permetti a Updatium di installare le app';

  @override
  String get trackOnly => 'Solo-Monitoraggio';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Errore $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Correzione della versione disattivata (il plugin sembra non funzionare)';

  @override
  String get unknown => 'Sconosciuto';

  @override
  String get none => 'Nessuno';

  @override
  String get all => 'Tutti';

  @override
  String get never => 'Mai';

  @override
  String latestVersionX(String arg1) {
    return 'Ultima versione: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Versione installata: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Ultimo controllo degli aggiornamenti: $arg1';
  }

  @override
  String get remove => 'Rimuovi';

  @override
  String get yesMarkUpdated => 'Sì, contrassegna come aggiornata';

  @override
  String get fdroid => 'F-Droid ufficiale';

  @override
  String get appIdOrName => 'ID o nome dell\'app';

  @override
  String get appId => 'ID dell\'app';

  @override
  String get appWithIdOrNameNotFound =>
      'Non è stata trovata alcuna app con quell\'ID o nome';

  @override
  String get reposHaveMultipleApps => 'I repository possono contenere più app';

  @override
  String get fdroidThirdPartyRepo => 'Repository F-Droid di terze parti';

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
  String get install => 'Installa';

  @override
  String get markInstalled => 'Contrassegna come installata';

  @override
  String get update => 'Aggiorna';

  @override
  String get updated => 'Aggiornato';

  @override
  String get markUpdated => 'Contrassegna come aggiornata';

  @override
  String get additionalOptions => 'Opzioni aggiuntive';

  @override
  String get disableVersionDetection =>
      'Disattiva il rilevamento della versione';

  @override
  String get noVersionDetectionExplanation =>
      'Questa opzione dovrebbe essere usata solo per le app la cui versione non viene rilevata correttamente.';

  @override
  String downloadingX(String arg1) {
    return 'Scaricamento di $arg1 in corso';
  }

  @override
  String downloadX(String arg1) {
    return 'Scarica $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'Scaricato $arg1';
  }

  @override
  String get releaseAsset => 'Rilascio Asset';

  @override
  String get downloadNotifDescription =>
      'Notifica all\'utente lo stato di avanzamento del download di un\'app';

  @override
  String get noAPKFound => 'Nessun APK trovato';

  @override
  String get noVersionDetection => 'Disattiva rilevamento di versione';

  @override
  String get categorize => 'Aggiungi a categoria';

  @override
  String get categories => 'Categorie';

  @override
  String get category => 'Categoria';

  @override
  String get noCategory => 'Nessuna categoria';

  @override
  String get noCategories => 'Nessuna categoria';

  @override
  String get deleteCategoriesQuestion => 'Eliminare le categorie?';

  @override
  String get categoryDeleteWarning =>
      'Tutte le app nelle categorie eliminate saranno impostate come non categorizzate.';

  @override
  String get addCategory => 'Aggiungi categoria';

  @override
  String get label => 'Etichetta';

  @override
  String get language => 'Lingua';

  @override
  String get copiedToClipboard => 'Copiato negli appunti';

  @override
  String get storagePermissionDenied => 'Accesso ai file non autorizzato';

  @override
  String get selectedCategorizeWarning =>
      'Ciò sostituirà le impostazioni di categoria esistenti per le app selezionate.';

  @override
  String get filterAPKsByRegEx => 'Filtra file APK con espressioni regolari';

  @override
  String get removeFromUpdatium => 'Rimuovi da Updatium';

  @override
  String get uninstallFromDevice => 'Disinstalla dal dispositivo';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Funziona solo per le app con il rilevamento della versione disattivato.';

  @override
  String get releaseDateAsVersion => 'Usa data di rilascio come versione';

  @override
  String get releaseTitleAsVersion =>
      'Usa il titolo della versione come stringa di versione';

  @override
  String get releaseDateAsVersionExplanation =>
      'Questa opzione dovrebbe essere usata solo per le app in cui il rilevamento della versione non funziona correttamente, ma è disponibile una data di rilascio.';

  @override
  String get changes => 'Novità';

  @override
  String get releaseDate => 'Data di rilascio';

  @override
  String get importFromURLsInFile => 'Importa da URL in file (come OPML)';

  @override
  String get versionDetectionExplanation =>
      'Riconcilia la stringa della versione con la versione rilevata dal sistema operativo';

  @override
  String get versionDetection => 'Rilevamento di versione';

  @override
  String get standardVersionDetection => 'Rilevamento di versione standard';

  @override
  String get groupByCategory => 'Raggruppa per categoria';

  @override
  String get listView => 'Vista elenco';

  @override
  String get gridView => 'Vista griglia';

  @override
  String get autoApkFilterByArch =>
      'Tenta di filtrare gli APK in base all\'architettura della CPU, se possibile';

  @override
  String get autoLinkFilterByArch =>
      'Tentare di filtrare i collegamenti in base all\'architettura della CPU, se possibile.';

  @override
  String get overrideSource => 'Sovrascrivi fonte';

  @override
  String get dontShowAgain => 'Non mostrarlo più';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Non mostrare gli avvisi \'Solo-Monitoraggio\'';

  @override
  String get dontShowAPKOriginWarnings =>
      'Non mostrare gli avvisi di origine dell\'APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Sposta le app non installate in fondo alla lista';

  @override
  String get hideNonInstalledApps => 'Nascondi le app non installate';

  @override
  String get gitlabPATLabel => 'GitLab Token di accesso personale';

  @override
  String get about => 'Informazioni';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1: Servono credenziali aggiuntive (in Impostazioni)';
  }

  @override
  String get checkOnStart => 'Controlla una volta all\'avvio';

  @override
  String get safeMode => 'Modalità sicura';

  @override
  String get safeModeDescription =>
      'Nascondi pagina Aggiungi app e mostra Importa/Esporta invece';

  @override
  String get safeModeAddAppDisabled =>
      'Aggiungi app è disabilitato in modalità sicura';

  @override
  String get tryInferAppIdFromCode =>
      'Prova a dedurre l\'ID dell\'app dal codice sorgente';

  @override
  String get removeOnExternalUninstall =>
      'Rimuovi automaticamente app disinstallate esternamente';

  @override
  String get pickHighestVersionCode =>
      'Auto-seleziona APK con version code più alto';

  @override
  String get checkUpdateOnDetailPage =>
      'Controlla aggiornamenti all\'apertura dei dettagli dell\'app';

  @override
  String get disablePageTransitions =>
      'Disattiva animazioni di transizione pagina';

  @override
  String get reversePageTransitions =>
      'Inverti animazioni di transizione pagina';

  @override
  String get minStarCount => 'Numero minimo di stelle';

  @override
  String get addInfoBelow => 'Aggiungi questa info sotto.';

  @override
  String get addInfoInSettings => 'Aggiungi questa info nelle impostazioni.';

  @override
  String get githubSourceNote =>
      'Il limite di ricerca GitHub può essere evitato usando una chiave API.';

  @override
  String get sortByLastLinkSegment =>
      'Ordina solo in base all\'ultimo segmento del collegamento';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filtra le note di rilascio con espressione regolare';

  @override
  String get customLinkFilterRegex =>
      'Filtra link APK personalizzato con espressione regolare (predefinito \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Aggiornamenti app tentati';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Notifica all\'utente che sono stati potenzialmente applicati in secondo piano aggiornamenti a una o più app';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 potrebbe essere stata aggiornata alla $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'Attiva aggiornamenti in secondo piano';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Gli aggiornamenti in secondo piano potrebbero non essere possibili per tutte le app.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'La riuscita di un\'installazione in secondo piano può essere determinata solo quando viene aperto Updatium.';

  @override
  String get verifyLatestTag => 'Verifica l\'etichetta \'Latest\'';

  @override
  String get intermediateLinkRegex =>
      'Filtro per un collegamento \'intermedio\' da visitare';

  @override
  String get filterByLinkText =>
      'Filtra i collegamenti in base al testo del collegamento';

  @override
  String get matchLinksOutsideATags =>
      'Corrispondenza dei collegamenti al di fuori dei tag <a>';

  @override
  String get intermediateLinkNotFound => 'Link intermedio non trovato';

  @override
  String get intermediateLink => 'Collegamento intermedio';

  @override
  String get exemptFromBackgroundUpdates =>
      'Esente da aggiornamenti in secondo piano (se attivo)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Disattiva aggiornamenti in secondo piano quando non si usa il Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Disabilita gli aggiornamenti in background quando non è in carica';

  @override
  String get autoSelectHighestVersionCode =>
      'Auto-seleziona APK con versionCode più alto';

  @override
  String get versionExtractionRegEx => 'RegEx di estrazione versione';

  @override
  String get trimVersionString =>
      'Tagliare la stringa della versione con RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Gruppo di corrispondenza da utilizzare per \"$arg1\"';
  }

  @override
  String get matchGroupToUse => 'Gruppo da usare';

  @override
  String get highlightTouchTargets => 'Evidenzia elementi toccabili meno ovvi';

  @override
  String get pickExportDir => 'Scegli cartella esp.';

  @override
  String get autoExportOnChanges => 'Auto-esporta dopo modifiche';

  @override
  String get includeSettings => 'Includi impostazioni';

  @override
  String get filterVersionsByRegEx =>
      'Filtra versioni con espressione regolare';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Prova a selezionare APK con versionCode suggerito';

  @override
  String get dontSortReleasesList => 'Conserva l\'ordine di release da API';

  @override
  String get reverseSort => 'Ordine inverso';

  @override
  String get takeFirstLink => 'Prendi il primo link';

  @override
  String get skipSort => 'Salta ordinamento';

  @override
  String get debugMenu => 'Menu di debug';

  @override
  String get bgTaskStarted =>
      'Attività in secondo piano iniziata - controllo log.';

  @override
  String get runBgCheckNow => 'Inizia aggiornamento in secondo piano ora';

  @override
  String get versionExtractWholePage =>
      'Applica regex di estrazione versione a tutta la pagina';

  @override
  String get installing => 'Installazione';

  @override
  String get skipUpdateNotifications => 'Salta notifiche di aggiornamento';

  @override
  String get updatesAvailableNotifChannel => 'Aggiornamenti disponibili';

  @override
  String get appsUpdatedNotifChannel => 'App aggiornate';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Aggiornamenti app tentati';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Controllo degli errori per gli aggiornamenti';

  @override
  String get appsRemovedNotifChannel => 'App rimosse';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Scaricamento di $arg1 in corso';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Completa l\'installazione dell\'app';

  @override
  String get checkingForUpdatesNotifChannel =>
      'Controllo degli aggiornamenti in corso';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Cerca aggiornamenti solo per app installate e app in Solo-Monitoraggio';

  @override
  String get supportFixedAPKURL => 'Supporta URL fissi di APK';

  @override
  String selectX(String arg1) {
    return 'Seleziona $arg1';
  }

  @override
  String get parallelDownloads => 'Permetti download paralleli';

  @override
  String get useShizuku => 'Utilizzare Shizuku o Sui per installare';

  @override
  String get shizukuBinderNotFound => 'Shizuku non è in esecuzione';

  @override
  String get shizukuOld => 'Vecchia versione di Shizuku (<11) - aggiornarla';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku funziona su Android < 8.1 con ADB - aggiornare Android o utilizzare Sui al suo posto';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Impostare Google Play come fonte di installazione (se si usa Shizuku)';

  @override
  String get useSystemFont => 'Usa i caratteri di sistema';

  @override
  String get useVersionCodeAsOSVersion =>
      'Usa il codice versione dell\'app come versione rilevata dal sistema operativo';

  @override
  String get requestHeader => 'Intestazione della richiesta';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Usa l\'ultimo caricamento della risorsa come data di rilascio';

  @override
  String get defaultPseudoVersioningMethod =>
      'Metodo di pseudoversione predefinito';

  @override
  String get partialAPKHash => 'Hash APK parziale';

  @override
  String get directAPKLink => 'Collegamento APK diretto';

  @override
  String get pseudoVersionInUse => 'È in uso una pseudo-versione';

  @override
  String get installed => 'Installato';

  @override
  String get latest => 'Ultimo';

  @override
  String get invertRegEx => 'Inverti espressione regolare';

  @override
  String get note => 'Nota';

  @override
  String selfHostedNote(String arg1) {
    return 'Il menu a tendina \"$arg1\" può essere usato per raggiungere istanze autogestite/personali di qualsiasi fonte.';
  }

  @override
  String get badDownload =>
      'Non è stato possibile analizzare l\'APK (download incompatibile o parziale).';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Condividere le nuove applicazioni con AppVerifier (se disponibile)';

  @override
  String get appVerifierInstructionToast =>
      'Condividete con AppVerifier, quindi tornate qui quando siete pronti.';

  @override
  String get wiki => 'Aiuto/Wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Consentire le richieste HTTP non sicure';

  @override
  String get stayOneVersionBehind =>
      'Rimanere una versione indietro rispetto alla più recente';

  @override
  String get useFirstApkOfVersion =>
      'Selezione automatica del primo di più APK';

  @override
  String get refreshBeforeDownload =>
      'Aggiornare i dettagli dell\'app prima del download';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Nome';

  @override
  String get smartname => 'Nome (intelligente)';

  @override
  String get sortMethod => 'Metodo di ordinamento';

  @override
  String get welcome => 'Benvenuti';

  @override
  String get documentationLinksNote =>
      'La pagina GitHub di Updatium collegata qui sotto contiene collegamenti a video, articoli, discussioni e altre risorse che vi aiuteranno a capire come utilizzare l\'applicazione.';

  @override
  String get batteryOptimizationNote =>
      'Si noti che i download in background potrebbero funzionare in modo più affidabile se si disabilita l\'ottimizzazione della batteria del sistema operativo per Updatium.';

  @override
  String fileDeletionError(String arg1) {
    return 'Errore nell\'eliminazione del file (provare a cancellarlo manualmente e poi riprovare): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Servizio Updatium in primo piano';

  @override
  String get foregroundServiceExplanation =>
      'Utilizzare un servizio in primo piano per il controllo degli aggiornamenti (più affidabile, consuma più energia)';

  @override
  String get fgServiceNotice =>
      'Questa notifica è necessaria per il controllo degli aggiornamenti in background (può essere nascosta nelle impostazioni del sistema operativo).';

  @override
  String get excludeSecrets => 'Escludere i segreti';

  @override
  String get includeZips => 'Includere file ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrare gli APK all\'interno dello ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google ha annunciato che, a partire dal 2026/2027, tutte le applicazioni su dispositivi Android \"certificati\" richiederanno allo sviluppatore di inviare dati di identità personali direttamente a Google.\n\nDopo ciò, Updatium potrebbe smettere di funzionare su dispositivi Android certificati.';

  @override
  String get googleVerificationWarningP2 =>
      'Vai a https://keepandroidopen.org/ per ulteriori informazioni.';

  @override
  String get googleVerificationWarningP3 =>
      'Si noti che a breve termine, può continuare ad essere possibile installare applicazioni \"non verificate\" (non conformi) attraverso un processo di \"flusso avanzato\" che Google ha promesso di implementare dopo ampio backlash al loro annuncio, ma non hanno dettagliato come questo funzionerebbe in modo da non essere chiaro se veramente preservare le libertà degli utenti in qualsiasi modo pratico.\n\nIn ogni caso, la mossa di Google è un passo significativo verso la fine del free, general-purpose computing per gli individui.\n\nOS non certificati, come GrapheneOS, non dovrebbero essere influenzati da questo per tutto il tempo in cui sono autorizzati a continuare ad esistere.';

  @override
  String get multipleSigners => 'Segnali multipli';

  @override
  String get securityDisclaimerTitle => 'Disclaimer di Sicurezza e Legale';

  @override
  String get license => 'Licenza';

  @override
  String get licenseText =>
      'Questa applicazione è distribuita sotto la Licenza GPL v3.';

  @override
  String get disclaimer => 'Disclaimer';

  @override
  String get disclaimerText =>
      'Questa applicazione non distribuisce, ospita o verifica alcuna delle applicazioni esterne. L\'utente assume la piena responsabilità per la sicurezza e la legalità di qualsiasi software installato attraverso questo strumento.\n\nhttps://github.com/omeritzics/Updatium è l\'unico posto ufficiale per scaricare Updatium - è sconsigliato scaricarlo altrove poiché il download da fonti non ufficiali non è sicuro.';

  @override
  String get privacy => 'Privacy';

  @override
  String get privacyText =>
      'Questa app è focalizzata sulla privacy e non raccoglie dati personali.';

  @override
  String get acceptAndContinue => 'Accetta e continua';

  @override
  String get decline => 'Rifiuta';

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
  String get aPKLinkHash => 'Hash collegamento APK';

  @override
  String get gHReqPrefix =>
      'istanza \'sky22333/hubproxy\' per le richieste a GitHub';

  @override
  String get continueAction => 'Continua';

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
    return '$count minuti';
  }

  @override
  String hour(int count) {
    return '$count ore';
  }

  @override
  String day(int count) {
    return '$count giorni';
  }
}
