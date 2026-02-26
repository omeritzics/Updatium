// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Catalan Valencian (`ca`).
class AppLocalizationsCa extends AppLocalizations {
  AppLocalizationsCa([String locale = 'ca']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'L\'URL de l\'aplicació $p0 no es vàlid';
  }

  @override
  String get noReleaseFound => 'No s\'ha pogut trobar una versió adequada';

  @override
  String get noVersionFound => 'No s\'ha pogut determinar la versió';

  @override
  String get urlMatchesNoSource => 'L\'URL no coincideix amb cap font coneguda';

  @override
  String get cantInstallOlderVersion => 'No és possible instal·lar una versió més antiga de l\'aplicació';

  @override
  String get appIdMismatch => 'L\'ID del paquet descarregat no coincideix amb l\'ID de l\'aplicació instal·lada';

  @override
  String get functionNotImplemented => 'Aquesta classe no ha implentat aquesta funció';

  @override
  String get placeholder => 'Espai reservat';

  @override
  String get someErrors => 'S\'han produït alguns errors';

  @override
  String get unexpectedError => 'Error inesperat';

  @override
  String get ok => 'Accepta';

  @override
  String get and => 'i';

  @override
  String get githubPATLabel => 'Token d\'accés personal a GitHub (augmenta el límit d\'accés)';

  @override
  String get includePrereleases => 'Inclou les versions preliminars';

  @override
  String get fallbackToOlderReleases => 'Torna a les versions anteriors';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtra el títol de la versió per una expressió regular';

  @override
  String get invalidRegEx => 'Expressió regular invàlida';

  @override
  String get noDescription => 'Sense descripció';

  @override
  String get cancel => 'Cancel·la';

  @override
  String get continue => 'Continua';

  @override
  String get requiredInBrackets => '(requerit)';

  @override
  String get dropdownNoOptsError => 'ERROR: EL DESPLEGABLE HA DE TENIR ALMENYS UNA OPCIÓ';

  @override
  String get color => 'Color';

  @override
  String get standard => 'Estàndard';

  @override
  String get custom => 'Personalitzat';

  @override
  String get useMaterialYou => 'Usar colors Material You';

  @override
  String get githubStarredRepos => 'Repositoris favorits de GitHub';

  @override
  String get uname => 'Nom d\'usuari';

  @override
  String get wrongArgNum => 'Nombre d\'arguments proveït invàlid';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 és només per a seguiment';
  }

  @override
  String get source => 'Font';

  @override
  String get app => 'Aplicació';

  @override
  String get appsFromSourceAreTrackOnly => 'Les aplicacions d\'aquesta font són només per a seguiment.';

  @override
  String get youPickedTrackOnly => 'Has seleccionat l\'opció \'només per a seguiment\'.';

  @override
  String get trackOnlyAppDescription => 'Farem el seguiment de les actualitzacions per a l\'aplicació, però Updatium no podrà descarregar-la ni actualitzar-la.';

  @override
  String get cancelled => 'Cancel·lat';

  @override
  String get appAlreadyAdded => 'Aplicació ja afegida';

  @override
  String get alreadyUpToDateQuestion => 'Aplicació ja actualitzada?';

  @override
  String get addApp => 'Afegeix l\'aplicació';

  @override
  String get appSourceURL => 'URL font de l\'aplicació';

  @override
  String get error => 'Error';

  @override
  String get add => 'Afegeix';

  @override
  String get searchSomeSourcesLabel => 'Cerca (només algunes fonts)';

  @override
  String get search => 'Cerca';

  @override
  String additionalOptsFor(Object p0) {
    return 'Opcions addicionals per a $p0';
  }

  @override
  String get supportedSources => 'Fonts suportades';

  @override
  String get trackOnlyInBrackets => '(només per a seguiment)';

  @override
  String get searchableInBrackets => '(permet la cerca)';

  @override
  String get appsString => 'Aplicacions';

  @override
  String get noApps => 'Benvingut!';

  @override
  String get noAppsSubtext => 'Pots afegir la teva primera aplicació tocant \'Afegir aplicació\' a sota.';

  @override
  String get noAppsForFilter => 'No hi ha aplicacions per filtrar';

  @override
  String byX(Object p0) {
    return 'Per: $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Progrés: $p0 %';
  }

  @override
  String get pleaseWait => 'Espera...';

  @override
  String get updateAvailable => 'Actualització disponible';

  @override
  String get notInstalled => 'No instal·lat';

  @override
  String get pseudoVersion => 'pseudo-versió';

  @override
  String get selectAll => 'Selecciona-ho tot';

  @override
  String deselectX(Object p0) {
    return 'Desselecciona $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 s\'eliminarà d\'Updatium però romandrà instal·lada al dispositiu.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Elimino les aplicacions seleccionades?';

  @override
  String get removeSelectedApps => 'Elimina les aplicacions seleccionades';

  @override
  String updateX(Object p0) {
    return 'Actualitza $p0';
  }

  @override
  String installX(Object p0) {
    return 'Instal·la $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Marca $p0\n(només per a seguiment)\ncom a actualitzada';
  }

  @override
  String changeX(Object p0) {
    return 'Canvia $p0';
  }

  @override
  String get installUpdateApps => 'Instal·la/actualitza les aplicacions';

  @override
  String get installUpdateSelectedApps => 'Instal·la/actualitza les aplicacions seleccionades';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Marco $p0 les aplicaciones seleccionades com a actualitzades?';
  }

  @override
  String get no => 'No';

  @override
  String get yes => 'Sí';

  @override
  String get markSelectedAppsUpdated => 'Marca les aplicacions seleccionades com a actualitzades';

  @override
  String get pinToTop => 'Ancora-la al capdamunt';

  @override
  String get unpinFromTop => 'Desancora-la del capdamunt';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Restableixo l\'estat d\'instal·lació per a les aplicacions seleccionades?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Es restablirà l\'estat d\'instal·lació de les aplicacions seleccionades.\n\nAçò pot ser útil quan la versió de l\'aplicació mostrada per Updatium és incorrecta a conseqüència d\'una actualització no reeixida o d\'algun altre problema.';

  @override
  String get customLinkMessage => 'Aquests enllaços funcionen en dispositius amb Updatium instal·lat';

  @override
  String get shareAppConfigLinks => 'Comparteix la configuració de l\'aplicació com a enllaç HTML';

  @override
  String get shareSelectedAppURLs => 'Comparteix els URL de les aplicacions seleccionades';

  @override
  String get resetInstallStatus => 'Restableix l\'estat de la instal·lació';

  @override
  String get more => 'Més';

  @override
  String get removeOutdatedFilter => 'Elimina el filtre d\'aplicacions desactualitzades';

  @override
  String get showOutdatedOnly => 'Mostra només les aplicacions desactualitzades';

  @override
  String get filter => 'Filtra';

  @override
  String get filterApps => 'Filtra les aplicacions';

  @override
  String get appName => 'Nom de l\'aplicació';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Aplicacions actualizades';

  @override
  String get nonInstalledApps => 'Aplicacions no instal·lades';

  @override
  String get importExport => 'Importa/exporta';

  @override
  String get settings => 'Paràmetres';

  @override
  String exportedTo(Object p0) {
    return 'Exportat a $p0';
  }

  @override
  String get updatiumExport => 'Exporta Updatium';

  @override
  String get invalidInput => 'Entrada no vàlida';

  @override
  String importedX(Object p0) {
    return 'Importat $p0';
  }

  @override
  String get updatiumImport => 'Importa Updatium';

  @override
  String get importFromURLList => 'Importa des de la llista d\'URL';

  @override
  String get searchQuery => 'Terme de cerca';

  @override
  String get appURLList => 'Llista d\'URL d\'aplicacions';

  @override
  String get line => 'Línia';

  @override
  String searchX(Object p0) {
    return 'Cerca $p0';
  }

  @override
  String get noResults => 'No hi ha resultats';

  @override
  String importX(Object p0) {
    return 'Importa des de $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Les aplicacions importades podrien mostrar-se incorrectament com a «No instal·lada».\nPer solventar-ho reinstal·la-les a través d\'Updatium.\nAixò no hauria d\'afectar les dades de les aplicacions.\n\nNomés afecta els URL i els mètodes d\'importació de tercers.';

  @override
  String get importErrors => 'Errors d\'importació';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 de $p1 aplicacions importades.';
  }

  @override
  String get followingURLsHadErrors => 'Els següents URLs han tingut problemes:';

  @override
  String get selectURL => 'Selecciona URL';

  @override
  String get selectURLs => 'Selecciona URLs';

  @override
  String get pick => 'Escull';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Fosc';

  @override
  String get light => 'Clar';

  @override
  String get followSystem => 'Segueix el sistema';

  @override
  String get followSystemThemeExplanation => 'Seguir el tema del sistema només és possible si uses aplicacions de tercers';

  @override
  String get useBlackTheme => 'Fes servir el negre pur en el tema fosc';

  @override
  String get appSortBy => 'Ordena les aplicacions per';

  @override
  String get authorName => 'Autor/nom';

  @override
  String get nameAuthor => 'Nom/Autor';

  @override
  String get asAdded => 'Per l\'ordre en què es van afegir';

  @override
  String get appSortOrder => 'Per ordre de classificació';

  @override
  String get ascending => 'Ascendent';

  @override
  String get descending => 'Descendent';

  @override
  String get bgUpdateCheckInterval => 'Comprova les actualitzacions en segon pla';

  @override
  String get neverManualOnly => 'Mai, només manual';

  @override
  String get appearance => 'Aparença';

  @override
  String get pinUpdates => 'Ancora les actualitzacions al capdamunt de les aplicacions';

  @override
  String get updates => 'Actualitzacions';

  @override
  String get sourceSpecific => 'Font específica';

  @override
  String get appSource => 'Font de l\'aplicació';

  @override
  String get noLogs => 'Cap registre';

  @override
  String get appLogs => 'Registres de l\'aplicació';

  @override
  String get close => 'Tanca';

  @override
  String get share => 'Comparteix';

  @override
  String get appNotFound => 'No s\'ha trobat l\'aplicació';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'Exportació d\'Updatium';

  @override
  String get pickAnAPK => 'Escull una APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 té més d\'un paquet:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Aquest dispositiu admet l\'aquitectura de CPU: $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Aquest dispositiu admet les següents arquitectures de CPU:';

  @override
  String get warning => 'Avís';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'La font de l\'aplicació és «$p0» però el paquet de l\'actualització ve de «$p1». Vols continuar?';
  }

  @override
  String get updatesAvailable => 'Actualitzacions disponibles';

  @override
  String get updatesAvailableNotifDescription => 'Notifica l\'usuari que hi ha actualitzacions per a una o més aplicacions seguides per Updatium';

  @override
  String get noNewUpdates => 'No hi ha noves actualitzacions.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 té una actualització.';
  }

  @override
  String get appsUpdated => 'Aplicacions actualitzades';

  @override
  String get appsNotUpdated => 'Error en actualitzar les aplicacions';

  @override
  String get appsUpdatedNotifDescription => 'Notifica l\'usuari que una o més aplicacions s\'han actualitzat en segon pla';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 s\'ha actualitzat a $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Error en actualitzar $p0 a $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Error en cercar actualitzacions';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Una notificació que es mostra quan la comprovació d\'actualizacions en segon pla ha fallat';

  @override
  String get appsRemoved => 'Aplicacions suprimides';

  @override
  String get appsRemovedNotifDescription => 'Notifica l\'usuari que una o més aplicacions s\'han suprimit per errors en carregar-les';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 s\'ha suprimit per aquest error: $p1';
  }

  @override
  String get completeAppInstallation => 'Instal·lació completa de l\'aplicació';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium ha d\'estar obert per poder instal·lar aplicacions';

  @override
  String get completeAppInstallationNotifDescription => 'Demana l\'usuari de tornar a Updatium per acabar d\'instal·lar una aplicació';

  @override
  String get checkingForUpdates => 'S\'estan cercant actualitzacions...';

  @override
  String get checkingForUpdatesNotifDescription => 'Notificació temporal que apareix en cercar actualitzacions';

  @override
  String get pleaseAllowInstallPerm => 'Permet que Updatium instal·li aplicacions';

  @override
  String get trackOnly => 'Només per a seguiment';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Error $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Correcció de versions desactivada (el plugin sembla que no funciona)';

  @override
  String get unknown => 'Desconegut';

  @override
  String get none => 'Cap';

  @override
  String get all => 'Tot';

  @override
  String get never => 'Mai';

  @override
  String latestVersionX(Object p0) {
    return 'Última versió: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Versió instal·lada: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Última comprovació d\'actualització: $p0';
  }

  @override
  String get remove => 'Suprimeix';

  @override
  String get yesMarkUpdated => 'Sí, marca com a actualitzada';

  @override
  String get fdroid => 'Repositori oficial F-Droid';

  @override
  String get appIdOrName => 'ID o nom de l\'aplicació';

  @override
  String get appId => 'ID de l\'aplicació';

  @override
  String get appWithIdOrNameNotFound => 'No s\'han trobat aplicacions amb aquest ID o nom';

  @override
  String get reposHaveMultipleApps => 'Els repositoris poden contenir diverses aplicacions';

  @override
  String get fdroidThirdPartyRepo => 'Repositori F-Droid de tercers';

  @override
  String get install => 'Instal·la';

  @override
  String get markInstalled => 'Marca com a instal·lada';

  @override
  String get update => 'Actualitza';

  @override
  String get updated => 'Actualitzat';

  @override
  String get markUpdated => 'Marca com a actualitzada';

  @override
  String get additionalOptions => 'Opcions addicionals';

  @override
  String get disableVersionDetection => 'Desactiva la detecció de versions';

  @override
  String get noVersionDetectionExplanation => 'Només has d\'usar aquesta opció en les aplicacions en què la detecció de versions no funcioni correctament.';

  @override
  String downloadingX(Object p0) {
    return 'Descarregant $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Descarrega $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Descarregada $p0';
  }

  @override
  String get releaseAsset => 'Recurs actualitzat';

  @override
  String get downloadNotifDescription => 'Notifica l\'usuari del progrés de la descàrrega d\'una aplicació';

  @override
  String get noAPKFound => 'No s\'ha trobat l\'APK';

  @override
  String get noVersionDetection => 'No s\'han detectat versions';

  @override
  String get categorize => 'Categoritza';

  @override
  String get categories => 'Categories';

  @override
  String get category => 'Categoria';

  @override
  String get noCategory => 'No hi ha la categoria';

  @override
  String get noCategories => 'No hi ha les categories';

  @override
  String get deleteCategoriesQuestion => 'Suprimeixo les categories?';

  @override
  String get categoryDeleteWarning => 'Totes les aplicacions de les categories suprimides es marcaran com a no categoritzades.';

  @override
  String get addCategory => 'Afegeix una categoria';

  @override
  String get label => 'Nom';

  @override
  String get language => 'Idioma';

  @override
  String get copiedToClipboard => 'Copiat al porta-retalls';

  @override
  String get storagePermissionDenied => 'Permís d\'emmagatzematge denegat';

  @override
  String get selectedCategorizeWarning => 'Açò substituirà els paràmetres de categorització per a les aplicacions selecionades.';

  @override
  String get filterAPKsByRegEx => 'Filtra les APKs per l\'expressió regular';

  @override
  String get removeFromUpdatium => 'Suprimeix d\'Updatium';

  @override
  String get uninstallFromDevice => 'Desinstal·la del dispositiu';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Només funciona per a aplicacions amb la detecció de versions desactivada.';

  @override
  String get releaseDateAsVersion => 'Usa la data de llançament com a cadena de la versió';

  @override
  String get releaseTitleAsVersion => 'Usa el títol com a cadena de la versió';

  @override
  String get releaseDateAsVersionExplanation => 'Aquest opció només s\'hauria d\'usar per a aplicacions en què la detecció de la versió no funciona correctament però disposem de la data de publicació.';

  @override
  String get changes => 'Canvis';

  @override
  String get releaseDate => 'Data de publicació';

  @override
  String get importFromURLsInFile => 'Importa els URLs des d\'un fitxer (com ara OPML)';

  @override
  String get versionDetectionExplanation => 'Concilia la cadena de la versió amb la versió detectada del Sistema Operatiu';

  @override
  String get versionDetection => 'Detecció de la versió';

  @override
  String get standardVersionDetection => 'Detecció de la versió estàndard';

  @override
  String get groupByCategory => 'Agrupa per categories';

  @override
  String get listView => 'Vista de llista';

  @override
  String get gridView => 'Vista de graella';

  @override
  String get autoApkFilterByArch => 'Intenta filtrar les APKs per l\'aquitectura de la CPU, si és possible';

  @override
  String get autoLinkFilterByArch => 'Intenta filtrar els enllaços per l\'aquitectura de la CPU, si és possible';

  @override
  String get overrideSource => 'Força la font';

  @override
  String get dontShowAgain => 'No ho tornis a mostrar';

  @override
  String get dontShowTrackOnlyWarnings => 'No mostris avisos de les aplicacions \'només per a seguiment\'';

  @override
  String get dontShowAPKOriginWarnings => 'No mostris avisos dels orígens de les APKs';

  @override
  String get moveNonInstalledAppsToBottom => 'Desplaça les aplicacions no instal·lades al capdavall de les aplicacions';

  @override
  String get hideNonInstalledApps => 'Amaga les aplicacions no instal·lades';

  @override
  String get gitlabPATLabel => 'Token d\'accés personal a GitLab';

  @override
  String get about => 'Quant a';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0 requereix credencials addicionals (a Paràmetres)';
  }

  @override
  String get checkOnStart => 'Comprova si hi ha actualitzacions en iniciar Updatium';

  @override
  String get tryInferAppIdFromCode => 'Intenta deduir l\'ID de l\'aplicació des del codi font';

  @override
  String get removeOnExternalUninstall => 'Suprimeix de forma automàtica les aplicacions desinstal·lades externament';

  @override
  String get pickHighestVersionCode => 'Selecciona de forma automàtica la versió superior de l\'APK';

  @override
  String get checkUpdateOnDetailPage => 'Comprova les actualitzacions en obrir la pàgina de detalls de l\'aplicació';

  @override
  String get disablePageTransitions => 'Inhabilita les animacions de transició de pàgina';

  @override
  String get reversePageTransitions => 'Inverteix les animacions de transició de pàgina';

  @override
  String get minStarCount => 'Nombre mínim d\'estrelles';

  @override
  String get addInfoBelow => 'Afegeix aquesta informació a sota.';

  @override
  String get addInfoInSettings => 'Afegeix aquesta informació a Paràmetres.';

  @override
  String get githubSourceNote => 'La limitació de peticions a GitHub es pot evitar amb una clau API.';

  @override
  String get sortByLastLinkSegment => 'Ordena per \'només el darrer fragment de l\'enllaç\'';

  @override
  String get filterReleaseNotesByRegEx => 'Filtra les notes de la publicació de la versió per una expressió regular';

  @override
  String get customLinkFilterRegex => 'Filtre personalitzat de l\'enllaç de l\'APK per una expressió regular (Per_defecte \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'S\'ha intentat l\'actualització de l\'aplicació';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Notifica l\'usuari que les actualitzacions per a una o més aplicacions podrien haver-se fet en segon pla';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 podria haver-se actualitzat a $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Habilita les actualizacions en segon pla';

  @override
  String get backgroundUpdateReqsExplanation => 'Les actualitzacions en segon pla és possible que no estiguin disponibles per a totes les aplicacions.';

  @override
  String get backgroundUpdateLimitsExplanation => 'Les instal·lacions en segon pla reexides només es poden comprovar amb Updatium obert.';

  @override
  String get verifyLatestTag => 'Comprova l\'etiqueta \'Latest\' (última versió)';

  @override
  String get intermediateLinkRegex => 'Filtra per un enllaç \'intermediari\' per anar-hi';

  @override
  String get filterByLinkText => 'Filtra els enllaços pel text de l\'enllaç';

  @override
  String get matchLinksOutsideATags => 'Coincideix amb els enllaços fora de les etiquetes <a>';

  @override
  String get intermediateLinkNotFound => 'No s\'ha trobat l\'enllaç intermediari';

  @override
  String get intermediateLink => 'Enllaç intermediari';

  @override
  String get exemptFromBackgroundUpdates => 'Exempta d\'actualitzacions en segon pla (si han estat habilitades)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Inhabilita les actualitzacions en segon pla sense Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Inhabilita les actualitzacions en segon pla quan no s\'estigui carregant el mòbil';

  @override
  String get autoSelectHighestVersionCode => 'Selecciona de forma automàtica la versió més recent de l\'APK';

  @override
  String get versionExtractionRegEx => 'Extracció de la cadena de la versió amb una expressió regular';

  @override
  String get trimVersionString => 'Retalla la cadena de la versió amb una expressió regular';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Grup de coincidència a usar per a \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Grup de coincidència a usar per a l\'extracció de la cadena de la versió amb una expressió regular';

  @override
  String get highlightTouchTargets => 'Ressalta els elements de selecció menys obvis';

  @override
  String get pickExportDir => 'Selecciona el directori d\'exportació';

  @override
  String get autoExportOnChanges => 'Exporta automàticament quan hi hagi canvis';

  @override
  String get includeSettings => 'Inclou paràmetres';

  @override
  String get filterVersionsByRegEx => 'Filtra les versions per una expressió regular';

  @override
  String get trySelectingSuggestedVersionCode => 'Prova a seleccionar la versió de l\'APK suggerida';

  @override
  String get dontSortReleasesList => 'Mantén l\'ordre de publicació de l\'API';

  @override
  String get reverseSort => 'Ordre invers';

  @override
  String get takeFirstLink => 'Usa el primer enllaç';

  @override
  String get skipSort => 'Omet l\'ordre';

  @override
  String get debugMenu => 'Menú de depuració';

  @override
  String get bgTaskStarted => 'S\'ha iniciat la tasca en segon pla (revisa-ho als registres).';

  @override
  String get runBgCheckNow => 'Executa la comprovació d\'actualitzacions en segon pla';

  @override
  String get versionExtractWholePage => 'Aplica l\'extracció de la cadena de la versió amb una expressió regular a tota la pàgina';

  @override
  String get installing => 'Instal·lant';

  @override
  String get skipUpdateNotifications => 'No notifiquis les actualitzacions';

  @override
  String get updatesAvailableNotifChannel => 'Actualitzacions disponibles';

  @override
  String get appsUpdatedNotifChannel => 'Aplicacions actualitzades';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'S\'ha intentat actualitzar l\'aplicació';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Error en cercar actualitzacions';

  @override
  String get appsRemovedNotifChannel => 'Aplicacions suprimides';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Descarregant $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Instal·lació finalitzada';

  @override
  String get checkingForUpdatesNotifChannel => 'S\'estan cercant actualitzacions';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Comprova les actualitzacions només per a aplicacions instal·lades o en seguiment';

  @override
  String get supportFixedAPKURL => 'Suport per als URLs fixos de l\'APK';

  @override
  String selectX(Object p0) {
    return 'Selecciona $p0';
  }

  @override
  String get parallelDownloads => 'Permet les descàrregues paralel·les';

  @override
  String get useShizuku => 'Usa Shizuku o Sui per instal·lar';

  @override
  String get shizukuBinderNotFound => 'Shizuku no s\'està executant';

  @override
  String get shizukuOld => 'Versió antiga de Shizuku (<11) - Actualitza-la';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku s\'executa en Android < 8.1 amb ADB - Actualitza Android o usa Sui com a alternativa';

  @override
  String get shizukuPretendToBeGooglePlay => 'Defineix Google Play com a font d\'instal·lació (si uses Shizuku)';

  @override
  String get useSystemFont => 'Usa la font del sistema';

  @override
  String get useVersionCodeAsOSVersion => 'Usa la versió de l\'aplicació com a versió detectada del Sistema Operatiu';

  @override
  String get requestHeader => 'Capçalera de sol·licitud';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Usa el darrer recurs carregat com a data de llançament';

  @override
  String get defaultPseudoVersioningMethod => 'Mètode de pseudo-versionat predeterminat';

  @override
  String get partialAPKHash => 'Hash de l\'APK parcial';

  @override
  String get apkLinkHash => 'Hash de l\'enllaç de l\'APK';

  @override
  String get directAPKLink => 'Enllaç de l\'APK directe';

  @override
  String get pseudoVersionInUse => 'S\'està usant una pseudo-versió';

  @override
  String get installed => 'Instal·lada';

  @override
  String get latest => 'Versió més recent';

  @override
  String get invertRegEx => 'Inverteix l\'expressió regular';

  @override
  String get note => 'Nota';

  @override
  String selfHostedNote(Object p0) {
    return 'El desplegable «$p0» es pot usar per accedir a instàncies autoallotjades/personalitzades de qualsevol font.';
  }

  @override
  String get badDownload => 'L\'APK no s\'ha pogut analitzar (incompatible o descàrrega parcial)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Comparteix les aplicacions noves amb AppVerifier (si està instal·lat)';

  @override
  String get appVerifierInstructionToast => 'Comparteix amb AppVerifier i torna aquí quan estigui fet.';

  @override
  String get wiki => 'Ajuda/Wiki';

  @override
  String get allowInsecure => 'Permet les sol·licituds HTTP insegures';

  @override
  String get stayOneVersionBehind => 'Roman a la versió anterior a l\'última';

  @override
  String get useFirstApkOfVersion => 'Tria automàticament la primera aplicació entre moltes';

  @override
  String get refreshBeforeDownload => 'Actualitza les dades de l\'aplicació abans de descarregar-la';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'Vivo App Store (CN)';

  @override
  String get name => 'Nom';

  @override
  String get smartname => 'Nom (smart)';

  @override
  String get sortMethod => 'Mètode d\'ordenació';

  @override
  String get welcome => 'Benvinguda';

  @override
  String get documentationLinksNote => 'La pàgina GitHub d\'Updatium enllaçada a sota conté enllaços a vídeos, articles, debats i altres recursos que t\'ajudaran a entendre com usar l\'aplicació.';

  @override
  String get batteryOptimizationNote => 'Tingues present que les descàrregues en segon pla funcionaran millor si inhabilites l\'optimització de bateria per a Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'No s\'ha pogut suprimir el fitxer (intenta suprimir-lo manualment i torna-ho a provar): \"$p0\"';
  }

  @override
  String get foregroundService => 'Servei d\'Updatium en primer pla';

  @override
  String get foregroundServiceExplanation => 'Usa el servei d\'Updatium en primer pla per comprovar les actualitzacions (és més fiable però consumeix més bateria)';

  @override
  String get fgServiceNotice => 'Aquesta notificació és necessària per comprovar les actualitzacions en segon pla (la pots ocultar als paràmetres del Sistema Operatiu)';

  @override
  String get excludeSecrets => 'Exclou els secrets';

  @override
  String get ghReqPrefix => 'exemple per a les peticions de GitHub';

  @override
  String get includeZips => 'Inclou fitxers ZIPName';

  @override
  String get zippedApkFilterRegEx => 'Filtre APKs dins ZIPName';

  @override
  String get googleVerificationWarningP1 => 'Google ha anunciat que, començant en 2026/2027, totes les aplicacions en dispositius d\'Android \"certificats\" requeriran que el desenvolupador enviï els detalls personals directament a Google.\n\nDesprés d\'això, Updatium pot deixar de funcionar en dispositius Android certificats.';

  @override
  String get googleVerificationWarningP2 => 'Aneu a https://buitandoideopen.org/ per a més informació.';

  @override
  String get googleVerificationWarningP3 => 'Tingueu en compte que en el terme curt, pot continuar sent possible instal· lar aplicacions \"inverificats\" (no compatible) mitjançant un procés de flux \"advince\" que Google ha promès implementar després d\'una gran reacció al seu anunci, però no han detallat com funcionaria, de manera que és clar si es preservarà realment les llibertats dels usuaris de cap manera pràctica.\n\nEn qualsevol cas, el moviment de Google és un pas significatiu cap al final de la informàtica lliure i general deficient per als individus.\n\nEls SO no validats, com el GraphenOS, no haurien de ser afectats per això sempre que se\'ls permeti continuar existint.';

  @override
  String get multipleSigners => 'Signadors múltiples';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '¿Suprimeixo les aplicacions?',
      one: '¿Suprimeixo l\'aplicació?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Massa peticions (límit excedit), torna-hi en $count minuts',
      one: 'Massa peticions (límit excedit), torna-hi en $count minut',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La comprovació d\'actualitzacions en segon pla ha trobat un $count, es tornarà a provar en $count minuts',
      one: 'La comprovació d\'actualitzacions en segon pla ha trobat un $count, es tornarà a provar en $count minut',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La comprovació d\'actualitzacions en segon pla ha trobat $count actualitzacions, t\'ho notificarem si cal',
      one: 'La comprovació d\'actualitzacions en segon pla ha trobat $count actualització, t\'ho notificarem si cal',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Aplicacions',
      one: '$count Aplicació',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URLs',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minuts',
      one: '$count minut',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hores',
      one: '$count hora',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dies',
      one: '$count dia',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Suprimits $n registres (anteriors a = $before, posteriors a = $after)',
      one: 'Suprimit $n registre (anterior a = $before, posterior a = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count i $count aplicacions més tenen actualitzacions.',
      one: '$count i 1 aplicació més tenen actualitzacions.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count i $count aplicacions més s\'han actualitzat.',
      one: '$count i 1 aplicació més s\'han actualitzat.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'No s\'ha pogut actualizar $count i $count aplicacions més.',
      one: 'Error en actualitzar $count i 1 aplicació més.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count i $count aplicacions més podrien haver estat actualitzades.',
      one: '$count i 1 aplicació més podrien haver estat actualizades.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APKs',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Resums del certificat',
      one: 'Suma de certificat',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Avís de Seguretat i Legal';

  @override
  String get license => 'Llicència';

  @override
  String get licenseText => 'Aquesta aplicació es distribueix sota la Llicència GPL v3.';

  @override
  String get disclaimer => 'Avís';

  @override
  String get disclaimerText => 'Aquesta aplicació no distribueix, allotja ni verifica cap de les aplicacions externes. L\'usuari assumeix la plena responsabilitat per la seguretat i legalitat de qualsevol programari instal·lat a través d\'aquesta eina.\n\nhttps://github.com/omeritzics/Updatium és l\'únic lloc oficial per descarregar Updatium - es desaconsellable descarregar-lo d\'altres llocs ja que la descàrrega des de fonts no oficials no és segura.';

  @override
  String get privacy => 'Privacitat';

  @override
  String get privacyText => 'Aquesta aplicació està centrada en la privacitat i no recull dades personals.';

  @override
  String get acceptAndContinue => 'Acceptar i continuar';

  @override
  String get decline => 'Rebutjar';
}
