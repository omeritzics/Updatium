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
class TranslationsCa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsCa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ca,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ca>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsCa _root = this; // ignore: unused_field

	@override 
	TranslationsCa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsCa(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'L\'URL de l\'aplicació {} no es vàlid';
	@override String get noReleaseFound => 'No s\'ha pogut trobar una versió adequada';
	@override String get noVersionFound => 'No s\'ha pogut determinar la versió';
	@override String get urlMatchesNoSource => 'L\'URL no coincideix amb cap font coneguda';
	@override String get cantInstallOlderVersion => 'No és possible instal·lar una versió més antiga de l\'aplicació';
	@override String get appIdMismatch => 'L\'ID del paquet descarregat no coincideix amb l\'ID de l\'aplicació instal·lada';
	@override String get functionNotImplemented => 'Aquesta classe no ha implentat aquesta funció';
	@override String get placeholder => 'Espai reservat';
	@override String get someErrors => 'S\'han produït alguns errors';
	@override String get unexpectedError => 'Error inesperat';
	@override String get ok => 'Accepta';
	@override String get and => 'i';
	@override String get githubPATLabel => 'Token d\'accés personal a GitHub';
	@override String get includePrereleases => 'Inclou les versions preliminars';
	@override String get fallbackToOlderReleases => 'Torna a les versions anteriors';
	@override String get filterReleaseTitlesByRegEx => 'Filtra el títol de la versió per una expressió regular';
	@override String get invalidRegEx => 'Expressió regular invàlida';
	@override String get noDescription => 'Sense descripció';
	@override String get cancel => 'Cancel·la';
	@override String get kContinue => 'Continua';
	@override String get requiredInBrackets => '(requerit)';
	@override String get dropdownNoOptsError => 'ERROR: EL DESPLEGABLE HA DE TENIR ALMENYS UNA OPCIÓ';
	@override String get color => 'Color';
	@override String get standard => 'Estàndard';
	@override String get custom => 'Personalitzat';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Usar colors Material You';
	@override String get githubStarredRepos => 'Repositoris favorits de GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nom d\'usuari';
	@override String get wrongArgNum => 'Nombre d\'arguments proveït invàlid';
	@override String get xIsTrackOnly => '{} és només per a seguiment';
	@override String get source => 'Font';
	@override String get app => 'Aplicació';
	@override String get appsFromSourceAreTrackOnly => 'Les aplicacions d\'aquesta font són només per a seguiment.';
	@override String get youPickedTrackOnly => 'Has seleccionat l\'opció \'només per a seguiment\'.';
	@override String get trackOnlyAppDescription => 'Farem el seguiment de les actualitzacions per a l\'aplicació, però Updatium no podrà descarregar-la ni actualitzar-la.';
	@override String get cancelled => 'Cancel·lat';
	@override String get appAlreadyAdded => 'Aplicació ja afegida';
	@override String get alreadyUpToDateQuestion => 'Aplicació ja actualitzada?';
	@override String get addApp => 'Afegeix l\'aplicació';
	@override String get appSourceURL => 'URL font de l\'aplicació';
	@override String get error => 'Error';
	@override String get add => 'Afegeix';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Cerca (només algunes fonts)';
	@override String get search => 'Cerca';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opcions addicionals per a {}';
	@override String get supportedSources => 'Fonts suportades';
	@override String get trackOnlyInBrackets => '(només per a seguiment)';
	@override String get searchableInBrackets => '(permet la cerca)';
	@override String get appsString => 'Aplicacions';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Benvingut!';
	@override String get noAppsSubtext => 'Pots afegir la teva primera aplicació tocant \'Afegir aplicació\' a sota.';
	@override String get noAppsForFilter => 'No hi ha aplicacions per filtrar';
	@override String get byX => 'Per: {}';
	@override String get percentProgress => 'Progrés: {} %';
	@override String get pleaseWait => 'Espera...';
	@override String get updateAvailable => 'Actualització disponible';
	@override String get notInstalled => 'No instal·lat';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versió';
	@override String get selectAll => 'Selecciona-ho tot';
	@override String get deselectX => 'Desselecciona {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} s\'eliminarà d\'Updatium però romandrà instal·lada al dispositiu.';
	@override String get removeSelectedAppsQuestion => 'Elimino les aplicacions seleccionades?';
	@override String get removeSelectedApps => 'Elimina les aplicacions seleccionades';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Actualitza {}';
	@override String get installX => 'Instal·la {}';
	@override String get markXTrackOnlyAsUpdated => 'Marca {}\n(només per a seguiment)\ncom a actualitzada';
	@override String get changeX => 'Canvia {}';
	@override String get installUpdateApps => 'Instal·la/actualitza les aplicacions';
	@override String get installUpdateSelectedApps => 'Instal·la/actualitza les aplicacions seleccionades';
	@override String get markXSelectedAppsAsUpdated => 'Marco {} les aplicaciones seleccionades com a actualitzades?';
	@override String get no => 'No';
	@override String get yes => 'Sí';
	@override String get markSelectedAppsUpdated => 'Marca les aplicacions seleccionades com a actualitzades';
	@override String get pinToTop => 'Ancora-la al capdamunt';
	@override String get unpinFromTop => 'Desancora-la del capdamunt';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Restableixo l\'estat d\'instal·lació per a les aplicacions seleccionades?';
	@override String get installStatusOfXWillBeResetExplanation => 'Es restablirà l\'estat d\'instal·lació de les aplicacions seleccionades.\n\nAçò pot ser útil quan la versió de l\'aplicació mostrada per Updatium és incorrecta a conseqüència d\'una actualització no reeixida o d\'algun altre problema.';
	@override String get customLinkMessage => 'Aquests enllaços funcionen en dispositius amb Updatium instal·lat';
	@override String get shareAppConfigLinks => 'Comparteix la configuració de l\'aplicació com a enllaç HTML';
	@override String get resetInstallStatus => 'Restableix l\'estat de la instal·lació';
	@override String get more => 'Més';
	@override String get removeOutdatedFilter => 'Elimina el filtre d\'aplicacions desactualitzades';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Mostra només les aplicacions desactualitzades';
	@override String get filter => 'Filtra';
	@override String get filterApps => 'Filtra les aplicacions';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nom de l\'aplicació';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Aplicacions actualizades';
	@override String get nonInstalledApps => 'Aplicacions no instal·lades';
	@override String get importExport => 'Importa/exporta';
	@override String get settings => 'Paràmetres';
	@override String get exportedTo => 'Exportat a {}';
	@override String get updatiumExport => 'Exporta Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Entrada no vàlida';
	@override String get importedX => 'Importat {}';
	@override String get updatiumImport => 'Importa Updatium';
	@override String get importFromURLList => 'Importa des de la llista d\'URL';
	@override String get searchQuery => 'Terme de cerca';
	@override String get appURLList => 'Llista d\'URL d\'aplicacions';
	@override String get line => 'Línia';
	@override String get searchX => 'Cerca {}';
	@override String get noResults => 'No hi ha resultats';
	@override String get importX => 'Importa des de {}';
	@override String get importedAppsIdDisclaimer => 'Les aplicacions importades podrien mostrar-se incorrectament com a «No instal·lada».\nPer solventar-ho reinstal·la-les a través d\'Updatium.\nAixò no hauria d\'afectar les dades de les aplicacions.\n\nNomés afecta els URL i els mètodes d\'importació de tercers.';
	@override String get importErrors => 'Errors d\'importació';
	@override String get importedXOfYApps => '{} de {} aplicacions importades.';
	@override String get followingURLsHadErrors => 'Els següents URLs han tingut problemes:';
	@override String get selectURL => 'Selecciona URL';
	@override String get selectURLs => 'Selecciona URLs';
	@override String get pick => 'Escull';
	@override String get theme => 'Tema';
	@override String get dark => 'Fosc';
	@override String get light => 'Clar';
	@override String get followSystem => 'Segueix el sistema';
	@override String get followSystemThemeExplanation => 'Seguir el tema del sistema només és possible si uses aplicacions de tercers';
	@override String get useBlackTheme => 'Fes servir el negre pur en el tema fosc';
	@override String get appSortBy => 'Ordena les aplicacions per';
	@override String get authorName => 'Autor/nom';
	@override String get nameAuthor => 'Nom/Autor';
	@override String get asAdded => 'Per l\'ordre en què es van afegir';
	@override String get appSortOrder => 'Per ordre de classificació';
	@override String get ascending => 'Ascendent';
	@override String get descending => 'Descendent';
	@override String get bgUpdateCheckInterval => 'Comprova les actualitzacions en segon pla';
	@override String get neverManualOnly => 'Mai, només manual';
	@override String get appearance => 'Aparença';
	@override String get pinUpdates => 'Ancora les actualitzacions al capdamunt de les aplicacions';
	@override String get updates => 'Actualitzacions';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Font específica';
	@override String get appSource => 'Font de l\'aplicació';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Cap registre';
	@override String get appLogs => 'Registres de l\'aplicació';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Tanca';
	@override String get share => 'Comparteix';
	@override String get appNotFound => 'No s\'ha trobat l\'aplicació';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'Exportació d\'Updatium';
	@override String get pickAnAPK => 'Escull una APK';
	@override String get appHasMoreThanOnePackage => '{} té més d\'un paquet:';
	@override String get deviceSupportsXArch => 'Aquest dispositiu admet l\'aquitectura de CPU: {}.';
	@override String get deviceSupportsFollowingArchs => 'Aquest dispositiu admet les següents arquitectures de CPU:';
	@override String get warning => 'Avís';
	@override String get sourceIsXButPackageFromYPrompt => 'La font de l\'aplicació és «{}» però el paquet de l\'actualització ve de «{}». Vols continuar?';
	@override String get updatesAvailable => 'Actualitzacions disponibles';
	@override String get updatesAvailableNotifDescription => 'Notifica l\'usuari que hi ha actualitzacions per a una o més aplicacions seguides per Updatium';
	@override String get noNewUpdates => 'No hi ha noves actualitzacions.';
	@override String get xHasAnUpdate => '{} té una actualització.';
	@override String get appsUpdated => 'Aplicacions actualitzades';
	@override String get appsNotUpdated => 'Error en actualitzar les aplicacions';
	@override String get appsUpdatedNotifDescription => 'Notifica l\'usuari que una o més aplicacions s\'han actualitzat en segon pla';
	@override String get xWasUpdatedToY => '{} s\'ha actualitzat a {}.';
	@override String get xWasNotUpdatedToY => 'Error en actualitzar {} a {}.';
	@override String get errorCheckingUpdates => 'Error en cercar actualitzacions';
	@override String get errorCheckingUpdatesNotifDescription => 'Una notificació que es mostra quan la comprovació d\'actualizacions en segon pla ha fallat';
	@override String get appsRemoved => 'Aplicacions suprimides';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifica l\'usuari que una o més aplicacions s\'han suprimit per errors en carregar-les';
	@override String get xWasRemovedDueToErrorY => '{} s\'ha suprimit per aquest error: {}';
	@override String get completeAppInstallation => 'Instal·lació completa de l\'aplicació';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium ha d\'estar obert per poder instal·lar aplicacions';
	@override String get completeAppInstallationNotifDescription => 'Demana l\'usuari de tornar a Updatium per acabar d\'instal·lar una aplicació';
	@override String get checkingForUpdates => 'S\'estan cercant actualitzacions...';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notificació temporal que apareix en cercar actualitzacions';
	@override String get pleaseAllowInstallPerm => 'Permet que Updatium instal·li aplicacions';
	@override String get trackOnly => 'Només per a seguiment';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Error {}';
	@override String get versionCorrectionDisabled => 'Correcció de versions desactivada (el plugin sembla que no funciona)';
	@override String get unknown => 'Desconegut';
	@override String get none => 'Cap';
	@override String get all => 'Tot';
	@override String get never => 'Mai';
	@override String get latestVersion => 'Última versió';
	@override String get installedVersionX => 'Versió instal·lada: {}';
	@override String get lastUpdateCheckX => 'Última comprovació d\'actualització: {}';
	@override String get remove => 'Suprimeix';
	@override String get quickLinks => 'Enllaços ràpids';
	@override String get yesMarkUpdated => 'Sí, marca com a actualitzada';
	@override String get fdroid => 'Repositori oficial F-Droid';
	@override String get appIdOrName => 'ID o nom de l\'aplicació';
	@override String get appId => 'ID de l\'aplicació';
	@override String get appWithIdOrNameNotFound => 'No s\'han trobat aplicacions amb aquest ID o nom';
	@override String get reposHaveMultipleApps => 'Els repositoris poden contenir diverses aplicacions';
	@override String get fdroidThirdPartyRepo => 'Repositori F-Droid de tercers';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instal·la';
	@override String get markInstalled => 'Marca com a instal·lada';
	@override String get update => 'Actualitza';
	@override String get updated => 'Actualitzat';
	@override String get markUpdated => 'Marca com a actualitzada';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opcions addicionals';
	@override String get disableVersionDetection => 'Desactiva la detecció de versions';
	@override String get noVersionDetectionExplanation => 'Només has d\'usar aquesta opció en les aplicacions en què la detecció de versions no funcioni correctament.';
	@override String get downloadingX => 'Descarregant {}';
	@override String get downloadX => 'Descarrega {}';
	@override String get downloadedX => 'Descarregada {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Recurs actualitzat';
	@override String get downloadNotifDescription => 'Notifica l\'usuari del progrés de la descàrrega d\'una aplicació';
	@override String get noAPKFound => 'No s\'ha trobat l\'APK';
	@override String get noVersionDetection => 'No s\'han detectat versions';
	@override String get categorize => 'Categoritza';
	@override String get categories => 'Categories';
	@override String get category => 'Categoria';
	@override String get noCategory => 'No hi ha la categoria';
	@override String get noCategories => 'No hi ha les categories';
	@override String get categoryDeleteQuestion => 'Suprimeixo les categories?';
	@override String get categoryDeleteWarning => 'Totes les aplicacions de les categories suprimides es marcaran com a no categoritzades.';
	@override String get addCategory => 'Afegeix una categoria';
	@override String get label => 'Nom';
	@override String get language => 'Idioma';
	@override String get copiedToClipboard => 'Copiat al porta-retalls';
	@override String get storagePermissionDenied => 'Permís d\'emmagatzematge denegat';
	@override String get selectedCategorizeWarning => 'Açò substituirà els paràmetres de categorització per a les aplicacions selecionades.';
	@override String get filterAPKsByRegEx => 'Filtra les APKs per l\'expressió regular';
	@override String get removeFromUpdatium => 'Suprimeix d\'Updatium';
	@override String get uninstallFromDevice => 'Desinstal·la del dispositiu';
	@override String get onlyWorksWithNonVersionDetectApps => 'Només funciona per a aplicacions amb la detecció de versions desactivada.';
	@override String get releaseDateAsVersion => 'Usa la data de llançament com a cadena de la versió';
	@override String get releaseTitleAsVersion => 'Usa el títol com a cadena de la versió';
	@override String get releaseDateAsVersionExplanation => 'Aquest opció només s\'hauria d\'usar per a aplicacions en què la detecció de la versió no funciona correctament però disposem de la data de publicació.';
	@override String get changes => 'Canvis';
	@override String get releaseDate => 'Data de publicació';
	@override String get importFromURLsInFile => 'Importa els URLs des d\'un fitxer (com ara OPML)';
	@override String get versionDetectionExplanation => 'Concilia la cadena de la versió amb la versió detectada del Sistema Operatiu';
	@override String get versionDetection => 'Detecció de la versió';
	@override String get standardVersionDetection => 'Detecció de la versió estàndard';
	@override String get groupByCategory => 'Agrupa per categories';
	@override String get listView => 'Vista de llista';
	@override String get gridView => 'Vista de graella';
	@override String get autoApkFilterByArch => 'Intenta filtrar les APKs per l\'aquitectura de la CPU, si és possible';
	@override String get autoLinkFilterByArch => 'Intenta filtrar els enllaços per l\'aquitectura de la CPU, si és possible';
	@override String get overrideSource => 'Força la font';
	@override String get dontShowAgain => 'No ho tornis a mostrar';
	@override String get dontShowTrackOnlyWarnings => 'No mostris avisos de les aplicacions \'només per a seguiment\'';
	@override String get dontShowAPKOriginWarnings => 'No mostris avisos dels orígens de les APKs';
	@override String get moveNonInstalledAppsToBottom => 'Desplaça les aplicacions no instal·lades al capdavall de les aplicacions';
	@override String get gitlabPATLabel => 'Token d\'accés personal a GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Quant a';
	@override String get requiresCredentialsInSettings => '{} requereix credencials addicionals (a Paràmetres)';
	@override String get checkOnStart => 'Comprova si hi ha actualitzacions en iniciar Updatium';
	@override String get safeMode => 'Mode segur';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'L\'addició d\'aplicacions està desactivada en mode segur';
	@override String get tryInferAppIdFromCode => 'Intenta deduir l\'ID de l\'aplicació des del codi font';
	@override String get removeOnExternalUninstall => 'Suprimeix de forma automàtica les aplicacions desinstal·lades externament';
	@override String get pickHighestVersionCode => 'Selecciona de forma automàtica la versió superior de l\'APK';
	@override String get checkUpdateOnDetailPage => 'Comprova les actualitzacions en obrir la pàgina de detalls de l\'aplicació';
	@override String get disablePageTransitions => 'Inhabilita les animacions de transició de pàgina';
	@override String get reversePageTransitions => 'Inverteix les animacions de transició de pàgina';
	@override String get minStarCount => 'Nombre mínim d\'estrelles';
	@override String get addInfoBelow => 'Afegeix aquesta informació a sota.';
	@override String get addInfoInSettings => 'Afegeix aquesta informació a Paràmetres.';
	@override String get githubSourceNote => 'La limitació de peticions a GitHub es pot evitar amb una clau API.';
	@override String get sortByLastLinkSegment => 'Ordena per \'només el darrer fragment de l\'enllaç\'';
	@override String get filterReleaseNotesByRegEx => 'Filtra les notes de la publicació de la versió per una expressió regular';
	@override String get customLinkFilterRegex => 'Filtre personalitzat de l\'enllaç de l\'APK per una expressió regular (Per_defecte \'.apk$\')';
	@override String get appsPossiblyUpdated => 'S\'ha intentat l\'actualització de l\'aplicació';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifica l\'usuari que les actualitzacions per a una o més aplicacions podrien haver-se fet en segon pla';
	@override String get xWasPossiblyUpdatedToY => '{} podria haver-se actualitzat a {}.';
	@override String get enableBackgroundUpdates => 'Habilita les actualizacions en segon pla';
	@override String get backgroundUpdateReqsExplanation => 'Les actualitzacions en segon pla és possible que no estiguin disponibles per a totes les aplicacions.';
	@override String get backgroundUpdateLimitsExplanation => 'Les instal·lacions en segon pla reexides només es poden comprovar amb Updatium obert.';
	@override String get verifyLatestTag => 'Comprova l\'etiqueta \'Latest\' (última versió)';
	@override String get intermediateLinkRegex => 'Filtra per un enllaç \'intermediari\' per anar-hi';
	@override String get filterByLinkText => 'Filtra els enllaços pel text de l\'enllaç';
	@override String get matchLinksOutsideATags => 'Coincideix amb els enllaços fora de les etiquetes <a>';
	@override String get intermediateLinkNotFound => 'No s\'ha trobat l\'enllaç intermediari';
	@override String get intermediateLink => 'Enllaç intermediari';
	@override String get exemptFromBackgroundUpdates => 'Exempta d\'actualitzacions en segon pla (si han estat habilitades)';
	@override String get bgUpdatesOnWiFiOnly => 'Inhabilita les actualitzacions en segon pla sense Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Inhabilita les actualitzacions en segon pla quan no s\'estigui carregant el mòbil';
	@override String get autoSelectHighestVersionCode => 'Selecciona de forma automàtica la versió més recent de l\'APK';
	@override String get versionExtractionRegEx => 'Extracció de la cadena de la versió amb una expressió regular';
	@override String get trimVersionString => 'Retalla la cadena de la versió amb una expressió regular';
	@override String get matchGroupToUseForX => 'Grup de coincidència a usar per a "{}"';
	@override String get matchGroupToUse => 'Grup de coincidència a usar per a l\'extracció de la cadena de la versió amb una expressió regular';
	@override String get highlightTouchTargets => 'Ressalta els elements de selecció menys obvis';
	@override String get pickExportDir => 'Selecciona el directori d\'exportació';
	@override String get autoExportOnChanges => 'Exporta automàticament quan hi hagi canvis';
	@override String get includeSettings => 'Inclou paràmetres';
	@override String get filterVersionsByRegEx => 'Filtra les versions per una expressió regular';
	@override String get trySelectingSuggestedVersionCode => 'Prova a seleccionar la versió de l\'APK suggerida';
	@override String get dontSortReleasesList => 'Mantén l\'ordre de publicació de l\'API';
	@override String get reverseSort => 'Ordre invers';
	@override String get takeFirstLink => 'Usa el primer enllaç';
	@override String get skipSort => 'Omet l\'ordre';
	@override String get debugMenu => 'Menú de depuració';
	@override String get bgTaskStarted => 'S\'ha iniciat la tasca en segon pla (revisa-ho als registres).';
	@override String get runBgCheckNow => 'Executa la comprovació d\'actualitzacions en segon pla';
	@override String get versionExtractWholePage => 'Aplica l\'extracció de la cadena de la versió amb una expressió regular a tota la pàgina';
	@override String get installing => 'Instal·lant';
	@override String get skipUpdateNotifications => 'No notifiquis les actualitzacions';
	@override String get updatesAvailableNotifChannel => 'Actualitzacions disponibles';
	@override String get appsUpdatedNotifChannel => 'Aplicacions actualitzades';
	@override String get appsPossiblyUpdatedNotifChannel => 'S\'ha intentat actualitzar l\'aplicació';
	@override String get errorCheckingUpdatesNotifChannel => 'Error en cercar actualitzacions';
	@override String get appsRemovedNotifChannel => 'Aplicacions suprimides';
	@override String get downloadingXNotifChannel => 'Descarregant {}';
	@override String get completeAppInstallationNotifChannel => 'Instal·lació finalitzada';
	@override String get checkingForUpdatesNotifChannel => 'S\'estan cercant actualitzacions';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Comprova les actualitzacions només per a aplicacions instal·lades o en seguiment';
	@override String get supportFixedAPKURL => 'Suport per als URLs fixos de l\'APK';
	@override String get selectX => 'Selecciona {}';
	@override String get parallelDownloads => 'Permet les descàrregues paralel·les';
	@override String get useShizuku => 'Usa Shizuku o Sui per instal·lar';
	@override String get shizukuBinderNotFound => 'Shizuku no s\'està executant';
	@override String get shizukuOld => 'Versió antiga de Shizuku (<11) - Actualitza-la';
	@override String get shizukuOldAndroidWithADB => 'Shizuku s\'executa en Android < 8.1 amb ADB - Actualitza Android o usa Sui com a alternativa';
	@override String get shizukuPretendToBeGooglePlay => 'Defineix Google Play com a font d\'instal·lació (si uses Shizuku)';
	@override String get useSystemFont => 'Usa la font del sistema';
	@override String get useVersionCodeAsOSVersion => 'Usa la versió de l\'aplicació com a versió detectada del Sistema Operatiu';
	@override String get requestHeader => 'Capçalera de sol·licitud';
	@override String get useLatestAssetDateAsReleaseDate => 'Usa el darrer recurs carregat com a data de llançament';
	@override String get defaultPseudoVersioningMethod => 'Mètode de pseudo-versionat predeterminat';
	@override String get partialAPKHash => 'Hash de l\'APK parcial';
	@override String get APKLinkHash => 'Hash de l\'enllaç de l\'APK';
	@override String get directAPKLink => 'Enllaç de l\'APK directe';
	@override String get pseudoVersionInUse => 'S\'està usant una pseudoversió';
	@override String get installedVersion => 'Instal·lada';
	@override String get installed => 'Instal·lada';
	@override String get notInstalledApps => 'No instal·lat';
	@override String get latest => 'Versió més recent';
	@override String get invertRegEx => 'Inverteix l\'expressió regular';
	@override String get note => 'Nota';
	@override String get selfHostedNote => 'El desplegable «{}» es pot usar per accedir a instàncies autoallotjades/personalitzades de qualsevol font.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'L\'APK no s\'ha pogut analitzar (incompatible o descàrrega parcial)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Comparteix les aplicacions noves amb AppVerifier (si està instal·lat)';
	@override String get appVerifierInstructionToast => 'Comparteix amb AppVerifier i torna aquí quan estigui fet.';
	@override String get wiki => 'Ajuda/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Permet les sol·licituds HTTP insegures';
	@override String get stayOneVersionBehind => 'Roman a la versió anterior a l\'última';
	@override String get useFirstApkOfVersion => 'Tria automàticament la primera aplicació entre moltes';
	@override String get refreshBeforeDownload => 'Actualitza les dades de l\'aplicació abans de descarregar-la';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'Vivo App Store (CN)';
	@override String get name => 'Nom';
	@override String get smartname => 'Nom (smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Mètode d\'ordenació';
	@override String get welcome => 'Benvinguda';
	@override String get batteryOptimizationNote => 'Tingues present que les descàrregues en segon pla funcionaran millor si inhabilites l\'optimització de bateria per a Updatium.';
	@override String get fileDeletionError => 'No s\'ha pogut suprimir el fitxer (intenta suprimir-lo manualment i torna-ho a provar): "{}"';
	@override String get foregroundService => 'Servei d\'Updatium en primer pla';
	@override String get foregroundServiceExplanation => 'Usa el servei d\'Updatium en primer pla per comprovar les actualitzacions (és més fiable però consumeix més bateria)';
	@override String get fgServiceNotice => 'Aquesta notificació és necessària per comprovar les actualitzacions en segon pla (la pots ocultar als paràmetres del Sistema Operatiu)';
	@override String get excludeSecrets => 'Exclou els secrets';
	@override String get GHReqPrefix => 'exemple per a les peticions de GitHub';
	@override String get includeZips => 'Inclou fitxers ZIPName';
	@override String get zippedApkFilterRegEx => 'Filtre APKs dins ZIPName';
	@override String get multipleSigners => 'Signadors múltiples';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '¿Suprimeixo l\'aplicació?',
		other: '¿Suprimeixo les aplicacions?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: 'Massa peticions (límit excedit), torna-hi en {count} minut',
		other: 'Massa peticions (límit excedit), torna-hi en {count} minuts',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: 'La comprovació d\'actualitzacions en segon pla ha trobat un {error}, es tornarà a provar en {count} minut',
		other: 'La comprovació d\'actualitzacions en segon pla ha trobat un {error}, es tornarà a provar en {count} minuts',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: 'La comprovació d\'actualitzacions en segon pla ha trobat {count} actualització, t\'ho notificarem si cal',
		other: 'La comprovació d\'actualitzacions en segon pla ha trobat {count} actualitzacions, t\'ho notificarem si cal',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{count} Aplicació',
		other: '{count} Aplicacions',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{count} URL',
		other: '{count} URLs',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{count} minut',
		other: '{count} minuts',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{count} hora',
		other: '{count} hores',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{count} dia',
		other: '{count} dies',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: 'Suprimit {n} registre (anterior a = {before}, posterior a = {after})',
		other: 'Suprimits {n} registres (anteriors a = {before}, posteriors a = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{app} i 1 aplicació més tenen actualitzacions.',
		other: '{app} i {count} aplicacions més tenen actualitzacions.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{app} i 1 aplicació més s\'han actualitzat.',
		other: '{app} i {count} aplicacions més s\'han actualitzat.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: 'Error en actualitzar {app} i 1 aplicació més.',
		other: 'No s\'ha pogut actualizar {app} i {count} aplicacions més.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{app} i 1 aplicació més podrien haver estat actualizades.',
		other: '{app} i {count} aplicacions més podrien haver estat actualitzades.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n,
		one: 'Suma de certificat',
		other: 'Resums del certificat',
	);
	@override String get securityDisclaimerTitle => 'Avís de Seguretat i Legal';
	@override String get license => 'Llicència';
	@override String get licenseText => 'Aquesta aplicació es distribueix sota la Llicència GPL v3.';
	@override String get disclaimer => 'Avís';
	@override String get disclaimerText => 'Aquesta aplicació no distribueix, allotja ni verifica cap de les aplicacions externes. L\'usuari assumeix la plena responsabilitat per la seguretat i legalitat de qualsevol programari instal·lat a través d\'aquesta eina.\n\nhttps://github.com/omeritzics/Updatium és l\'únic lloc oficial per descarregar Updatium - es desaconsellable descarregar-lo d\'altres llocs ja que la descàrrega des de fonts no oficials no és segura.';
	@override String get privacy => 'Privacitat';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Acceptar i continuar';
	@override String get decline => 'Rebutjar';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Estigueu gaudint d\'Updatium?';
	@override String get githubStarPromptContent => 'Updatium és un projecte comunitari voluntari de codi obert desenvolupat en el meu temps lliure. Si voleu donar suport al projecte, considereu donar-li una estrella a GitHub per ajudar-nos a arribar a més usuaris i col·laboradors. No se us tornarà a recordar això. Gràcies de forma anticipada! :)';
	@override String get githubStarPromptStar => 'Donar una estrella';
	@override String get githubStarPromptDontShowAgain => 'No mostrar més';
	@override String get sourceCode => 'Codi font';
	@override String get developedBy => 'Desenvolupat per';
	@override String get appDescription => 'Un catàleg d\'aplicacions Android personalitzable que us permet actualitzar les vostres aplicacions directament des de les seves fonts APK.';
	@override String get safeModeEnabled => 'Mode segur activat';
	@override String get safeModeDisabled => 'Mode segur desactivat';
	@override String get safeModeDisable => 'Desactiva el Mode segur';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Administració del Mode segur';
	@override String get safeModeSetupDescription => 'Estableix una contrasenya per activar el Mode segur. Un cop activat, el Mode segur impedeix afegir noves aplicacions i només es pot desactivar amb la contrasenya.';
	@override String get safeModeToggleDescription => 'Introduïu la contrasenya per activar o desactivar el Mode segur.';
	@override String get safeModeSetPassword => 'Estableix la contrasenya';
	@override String get safeModeConfirmPassword => 'Confirma la contrasenya';
	@override String get safeModeEnterPassword => 'Introduïu la contrasenya';
	@override String get safeModePasswordHint => 'Mínim 8 caràcters';
	@override String get safeModePasswordTooShort => 'La contrasenya ha de tenir almenys 8 caràcters';
	@override String get safeModePasswordMismatch => 'Les contrasenyes no coincideixen';
	@override String get safeModePasswordIncorrect => 'Contrasenya incorrecta';
	@override String get safeModePasswordError => 'Error al establir la contrasenya. Torneu-ho a provar.';
	@override String get safeModeEnable => 'Activa el Mode segur';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} tocs restants per desactivar el Mode segur';
	@override String get safeModeEnabledHint => 'El Mode segur està activat. Toca el número de versió a Configuració diverses vegades per desactivar.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Entesos';
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

/// The flat map containing all translations for locale <ca>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsCa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'L\'URL de l\'aplicació {} no es vàlid',
			'noReleaseFound' => 'No s\'ha pogut trobar una versió adequada',
			'noVersionFound' => 'No s\'ha pogut determinar la versió',
			'urlMatchesNoSource' => 'L\'URL no coincideix amb cap font coneguda',
			'cantInstallOlderVersion' => 'No és possible instal·lar una versió més antiga de l\'aplicació',
			'appIdMismatch' => 'L\'ID del paquet descarregat no coincideix amb l\'ID de l\'aplicació instal·lada',
			'functionNotImplemented' => 'Aquesta classe no ha implentat aquesta funció',
			'placeholder' => 'Espai reservat',
			'someErrors' => 'S\'han produït alguns errors',
			'unexpectedError' => 'Error inesperat',
			'ok' => 'Accepta',
			'and' => 'i',
			'githubPATLabel' => 'Token d\'accés personal a GitHub',
			'includePrereleases' => 'Inclou les versions preliminars',
			'fallbackToOlderReleases' => 'Torna a les versions anteriors',
			'filterReleaseTitlesByRegEx' => 'Filtra el títol de la versió per una expressió regular',
			'invalidRegEx' => 'Expressió regular invàlida',
			'noDescription' => 'Sense descripció',
			'cancel' => 'Cancel·la',
			'kContinue' => 'Continua',
			'requiredInBrackets' => '(requerit)',
			'dropdownNoOptsError' => 'ERROR: EL DESPLEGABLE HA DE TENIR ALMENYS UNA OPCIÓ',
			'color' => 'Color',
			'standard' => 'Estàndard',
			'custom' => 'Personalitzat',
			'primary' => 'Primary',
			'useMaterialYou' => 'Usar colors Material You',
			'githubStarredRepos' => 'Repositoris favorits de GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nom d\'usuari',
			'wrongArgNum' => 'Nombre d\'arguments proveït invàlid',
			'xIsTrackOnly' => '{} és només per a seguiment',
			'source' => 'Font',
			'app' => 'Aplicació',
			'appsFromSourceAreTrackOnly' => 'Les aplicacions d\'aquesta font són només per a seguiment.',
			'youPickedTrackOnly' => 'Has seleccionat l\'opció \'només per a seguiment\'.',
			'trackOnlyAppDescription' => 'Farem el seguiment de les actualitzacions per a l\'aplicació, però Updatium no podrà descarregar-la ni actualitzar-la.',
			'cancelled' => 'Cancel·lat',
			'appAlreadyAdded' => 'Aplicació ja afegida',
			'alreadyUpToDateQuestion' => 'Aplicació ja actualitzada?',
			'addApp' => 'Afegeix l\'aplicació',
			'appSourceURL' => 'URL font de l\'aplicació',
			'error' => 'Error',
			'add' => 'Afegeix',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Cerca (només algunes fonts)',
			'search' => 'Cerca',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opcions addicionals per a {}',
			'supportedSources' => 'Fonts suportades',
			'trackOnlyInBrackets' => '(només per a seguiment)',
			'searchableInBrackets' => '(permet la cerca)',
			'appsString' => 'Aplicacions',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Benvingut!',
			'noAppsSubtext' => 'Pots afegir la teva primera aplicació tocant \'Afegir aplicació\' a sota.',
			'noAppsForFilter' => 'No hi ha aplicacions per filtrar',
			'byX' => 'Per: {}',
			'percentProgress' => 'Progrés: {} %',
			'pleaseWait' => 'Espera...',
			'updateAvailable' => 'Actualització disponible',
			'notInstalled' => 'No instal·lat',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versió',
			'selectAll' => 'Selecciona-ho tot',
			'deselectX' => 'Desselecciona {}',
			'xWillBeRemovedButRemainInstalled' => '{} s\'eliminarà d\'Updatium però romandrà instal·lada al dispositiu.',
			'removeSelectedAppsQuestion' => 'Elimino les aplicacions seleccionades?',
			'removeSelectedApps' => 'Elimina les aplicacions seleccionades',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Actualitza {}',
			'installX' => 'Instal·la {}',
			'markXTrackOnlyAsUpdated' => 'Marca {}\n(només per a seguiment)\ncom a actualitzada',
			'changeX' => 'Canvia {}',
			'installUpdateApps' => 'Instal·la/actualitza les aplicacions',
			'installUpdateSelectedApps' => 'Instal·la/actualitza les aplicacions seleccionades',
			'markXSelectedAppsAsUpdated' => 'Marco {} les aplicaciones seleccionades com a actualitzades?',
			'no' => 'No',
			'yes' => 'Sí',
			'markSelectedAppsUpdated' => 'Marca les aplicacions seleccionades com a actualitzades',
			'pinToTop' => 'Ancora-la al capdamunt',
			'unpinFromTop' => 'Desancora-la del capdamunt',
			'resetInstallStatusForSelectedAppsQuestion' => 'Restableixo l\'estat d\'instal·lació per a les aplicacions seleccionades?',
			'installStatusOfXWillBeResetExplanation' => 'Es restablirà l\'estat d\'instal·lació de les aplicacions seleccionades.\n\nAçò pot ser útil quan la versió de l\'aplicació mostrada per Updatium és incorrecta a conseqüència d\'una actualització no reeixida o d\'algun altre problema.',
			'customLinkMessage' => 'Aquests enllaços funcionen en dispositius amb Updatium instal·lat',
			'shareAppConfigLinks' => 'Comparteix la configuració de l\'aplicació com a enllaç HTML',
			'resetInstallStatus' => 'Restableix l\'estat de la instal·lació',
			'more' => 'Més',
			'removeOutdatedFilter' => 'Elimina el filtre d\'aplicacions desactualitzades',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Mostra només les aplicacions desactualitzades',
			'filter' => 'Filtra',
			'filterApps' => 'Filtra les aplicacions',
			'filterDays' => 'Filter days',
			'appName' => 'Nom de l\'aplicació',
			'author' => 'Autor',
			'upToDateApps' => 'Aplicacions actualizades',
			'nonInstalledApps' => 'Aplicacions no instal·lades',
			'importExport' => 'Importa/exporta',
			'settings' => 'Paràmetres',
			'exportedTo' => 'Exportat a {}',
			'updatiumExport' => 'Exporta Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Entrada no vàlida',
			'importedX' => 'Importat {}',
			'updatiumImport' => 'Importa Updatium',
			'importFromURLList' => 'Importa des de la llista d\'URL',
			'searchQuery' => 'Terme de cerca',
			'appURLList' => 'Llista d\'URL d\'aplicacions',
			'line' => 'Línia',
			'searchX' => 'Cerca {}',
			'noResults' => 'No hi ha resultats',
			'importX' => 'Importa des de {}',
			'importedAppsIdDisclaimer' => 'Les aplicacions importades podrien mostrar-se incorrectament com a «No instal·lada».\nPer solventar-ho reinstal·la-les a través d\'Updatium.\nAixò no hauria d\'afectar les dades de les aplicacions.\n\nNomés afecta els URL i els mètodes d\'importació de tercers.',
			'importErrors' => 'Errors d\'importació',
			'importedXOfYApps' => '{} de {} aplicacions importades.',
			'followingURLsHadErrors' => 'Els següents URLs han tingut problemes:',
			'selectURL' => 'Selecciona URL',
			'selectURLs' => 'Selecciona URLs',
			'pick' => 'Escull',
			'theme' => 'Tema',
			'dark' => 'Fosc',
			'light' => 'Clar',
			'followSystem' => 'Segueix el sistema',
			'followSystemThemeExplanation' => 'Seguir el tema del sistema només és possible si uses aplicacions de tercers',
			'useBlackTheme' => 'Fes servir el negre pur en el tema fosc',
			'appSortBy' => 'Ordena les aplicacions per',
			'authorName' => 'Autor/nom',
			'nameAuthor' => 'Nom/Autor',
			'asAdded' => 'Per l\'ordre en què es van afegir',
			'appSortOrder' => 'Per ordre de classificació',
			'ascending' => 'Ascendent',
			'descending' => 'Descendent',
			'bgUpdateCheckInterval' => 'Comprova les actualitzacions en segon pla',
			'neverManualOnly' => 'Mai, només manual',
			'appearance' => 'Aparença',
			'pinUpdates' => 'Ancora les actualitzacions al capdamunt de les aplicacions',
			'updates' => 'Actualitzacions',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Font específica',
			'appSource' => 'Font de l\'aplicació',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Cap registre',
			'appLogs' => 'Registres de l\'aplicació',
			'appLogsHint' => 'View application logs',
			'close' => 'Tanca',
			'share' => 'Comparteix',
			'appNotFound' => 'No s\'ha trobat l\'aplicació',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'Exportació d\'Updatium',
			'pickAnAPK' => 'Escull una APK',
			'appHasMoreThanOnePackage' => '{} té més d\'un paquet:',
			'deviceSupportsXArch' => 'Aquest dispositiu admet l\'aquitectura de CPU: {}.',
			'deviceSupportsFollowingArchs' => 'Aquest dispositiu admet les següents arquitectures de CPU:',
			'warning' => 'Avís',
			'sourceIsXButPackageFromYPrompt' => 'La font de l\'aplicació és «{}» però el paquet de l\'actualització ve de «{}». Vols continuar?',
			'updatesAvailable' => 'Actualitzacions disponibles',
			'updatesAvailableNotifDescription' => 'Notifica l\'usuari que hi ha actualitzacions per a una o més aplicacions seguides per Updatium',
			'noNewUpdates' => 'No hi ha noves actualitzacions.',
			'xHasAnUpdate' => '{} té una actualització.',
			'appsUpdated' => 'Aplicacions actualitzades',
			'appsNotUpdated' => 'Error en actualitzar les aplicacions',
			'appsUpdatedNotifDescription' => 'Notifica l\'usuari que una o més aplicacions s\'han actualitzat en segon pla',
			'xWasUpdatedToY' => '{} s\'ha actualitzat a {}.',
			'xWasNotUpdatedToY' => 'Error en actualitzar {} a {}.',
			'errorCheckingUpdates' => 'Error en cercar actualitzacions',
			'errorCheckingUpdatesNotifDescription' => 'Una notificació que es mostra quan la comprovació d\'actualizacions en segon pla ha fallat',
			'appsRemoved' => 'Aplicacions suprimides',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifica l\'usuari que una o més aplicacions s\'han suprimit per errors en carregar-les',
			'xWasRemovedDueToErrorY' => '{} s\'ha suprimit per aquest error: {}',
			'completeAppInstallation' => 'Instal·lació completa de l\'aplicació',
			'updatiumMustBeOpenToInstallApps' => 'Updatium ha d\'estar obert per poder instal·lar aplicacions',
			'completeAppInstallationNotifDescription' => 'Demana l\'usuari de tornar a Updatium per acabar d\'instal·lar una aplicació',
			'checkingForUpdates' => 'S\'estan cercant actualitzacions...',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notificació temporal que apareix en cercar actualitzacions',
			'pleaseAllowInstallPerm' => 'Permet que Updatium instal·li aplicacions',
			'trackOnly' => 'Només per a seguiment',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Error {}',
			'versionCorrectionDisabled' => 'Correcció de versions desactivada (el plugin sembla que no funciona)',
			'unknown' => 'Desconegut',
			'none' => 'Cap',
			'all' => 'Tot',
			'never' => 'Mai',
			'latestVersion' => 'Última versió',
			'installedVersionX' => 'Versió instal·lada: {}',
			'lastUpdateCheckX' => 'Última comprovació d\'actualització: {}',
			'remove' => 'Suprimeix',
			'quickLinks' => 'Enllaços ràpids',
			'yesMarkUpdated' => 'Sí, marca com a actualitzada',
			'fdroid' => 'Repositori oficial F-Droid',
			'appIdOrName' => 'ID o nom de l\'aplicació',
			'appId' => 'ID de l\'aplicació',
			'appWithIdOrNameNotFound' => 'No s\'han trobat aplicacions amb aquest ID o nom',
			'reposHaveMultipleApps' => 'Els repositoris poden contenir diverses aplicacions',
			'fdroidThirdPartyRepo' => 'Repositori F-Droid de tercers',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instal·la',
			'markInstalled' => 'Marca com a instal·lada',
			'update' => 'Actualitza',
			'updated' => 'Actualitzat',
			'markUpdated' => 'Marca com a actualitzada',
			'download' => 'Download',
			'additionalOptions' => 'Opcions addicionals',
			'disableVersionDetection' => 'Desactiva la detecció de versions',
			'noVersionDetectionExplanation' => 'Només has d\'usar aquesta opció en les aplicacions en què la detecció de versions no funcioni correctament.',
			'downloadingX' => 'Descarregant {}',
			'downloadX' => 'Descarrega {}',
			'downloadedX' => 'Descarregada {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Recurs actualitzat',
			'downloadNotifDescription' => 'Notifica l\'usuari del progrés de la descàrrega d\'una aplicació',
			'noAPKFound' => 'No s\'ha trobat l\'APK',
			'noVersionDetection' => 'No s\'han detectat versions',
			'categorize' => 'Categoritza',
			'categories' => 'Categories',
			'category' => 'Categoria',
			'noCategory' => 'No hi ha la categoria',
			'noCategories' => 'No hi ha les categories',
			'categoryDeleteQuestion' => 'Suprimeixo les categories?',
			'categoryDeleteWarning' => 'Totes les aplicacions de les categories suprimides es marcaran com a no categoritzades.',
			'addCategory' => 'Afegeix una categoria',
			'label' => 'Nom',
			'language' => 'Idioma',
			'copiedToClipboard' => 'Copiat al porta-retalls',
			'storagePermissionDenied' => 'Permís d\'emmagatzematge denegat',
			'selectedCategorizeWarning' => 'Açò substituirà els paràmetres de categorització per a les aplicacions selecionades.',
			'filterAPKsByRegEx' => 'Filtra les APKs per l\'expressió regular',
			'removeFromUpdatium' => 'Suprimeix d\'Updatium',
			'uninstallFromDevice' => 'Desinstal·la del dispositiu',
			'onlyWorksWithNonVersionDetectApps' => 'Només funciona per a aplicacions amb la detecció de versions desactivada.',
			'releaseDateAsVersion' => 'Usa la data de llançament com a cadena de la versió',
			'releaseTitleAsVersion' => 'Usa el títol com a cadena de la versió',
			'releaseDateAsVersionExplanation' => 'Aquest opció només s\'hauria d\'usar per a aplicacions en què la detecció de la versió no funciona correctament però disposem de la data de publicació.',
			'changes' => 'Canvis',
			'releaseDate' => 'Data de publicació',
			'importFromURLsInFile' => 'Importa els URLs des d\'un fitxer (com ara OPML)',
			'versionDetectionExplanation' => 'Concilia la cadena de la versió amb la versió detectada del Sistema Operatiu',
			'versionDetection' => 'Detecció de la versió',
			'standardVersionDetection' => 'Detecció de la versió estàndard',
			'groupByCategory' => 'Agrupa per categories',
			'listView' => 'Vista de llista',
			'gridView' => 'Vista de graella',
			'autoApkFilterByArch' => 'Intenta filtrar les APKs per l\'aquitectura de la CPU, si és possible',
			'autoLinkFilterByArch' => 'Intenta filtrar els enllaços per l\'aquitectura de la CPU, si és possible',
			'overrideSource' => 'Força la font',
			'dontShowAgain' => 'No ho tornis a mostrar',
			'dontShowTrackOnlyWarnings' => 'No mostris avisos de les aplicacions \'només per a seguiment\'',
			'dontShowAPKOriginWarnings' => 'No mostris avisos dels orígens de les APKs',
			'moveNonInstalledAppsToBottom' => 'Desplaça les aplicacions no instal·lades al capdavall de les aplicacions',
			'gitlabPATLabel' => 'Token d\'accés personal a GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Quant a',
			'requiresCredentialsInSettings' => '{} requereix credencials addicionals (a Paràmetres)',
			'checkOnStart' => 'Comprova si hi ha actualitzacions en iniciar Updatium',
			'safeMode' => 'Mode segur',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'L\'addició d\'aplicacions està desactivada en mode segur',
			'tryInferAppIdFromCode' => 'Intenta deduir l\'ID de l\'aplicació des del codi font',
			'removeOnExternalUninstall' => 'Suprimeix de forma automàtica les aplicacions desinstal·lades externament',
			'pickHighestVersionCode' => 'Selecciona de forma automàtica la versió superior de l\'APK',
			'checkUpdateOnDetailPage' => 'Comprova les actualitzacions en obrir la pàgina de detalls de l\'aplicació',
			'disablePageTransitions' => 'Inhabilita les animacions de transició de pàgina',
			'reversePageTransitions' => 'Inverteix les animacions de transició de pàgina',
			'minStarCount' => 'Nombre mínim d\'estrelles',
			'addInfoBelow' => 'Afegeix aquesta informació a sota.',
			'addInfoInSettings' => 'Afegeix aquesta informació a Paràmetres.',
			'githubSourceNote' => 'La limitació de peticions a GitHub es pot evitar amb una clau API.',
			'sortByLastLinkSegment' => 'Ordena per \'només el darrer fragment de l\'enllaç\'',
			'filterReleaseNotesByRegEx' => 'Filtra les notes de la publicació de la versió per una expressió regular',
			'customLinkFilterRegex' => 'Filtre personalitzat de l\'enllaç de l\'APK per una expressió regular (Per_defecte \'.apk$\')',
			'appsPossiblyUpdated' => 'S\'ha intentat l\'actualització de l\'aplicació',
			'appsPossiblyUpdatedNotifDescription' => 'Notifica l\'usuari que les actualitzacions per a una o més aplicacions podrien haver-se fet en segon pla',
			'xWasPossiblyUpdatedToY' => '{} podria haver-se actualitzat a {}.',
			'enableBackgroundUpdates' => 'Habilita les actualizacions en segon pla',
			'backgroundUpdateReqsExplanation' => 'Les actualitzacions en segon pla és possible que no estiguin disponibles per a totes les aplicacions.',
			'backgroundUpdateLimitsExplanation' => 'Les instal·lacions en segon pla reexides només es poden comprovar amb Updatium obert.',
			'verifyLatestTag' => 'Comprova l\'etiqueta \'Latest\' (última versió)',
			'intermediateLinkRegex' => 'Filtra per un enllaç \'intermediari\' per anar-hi',
			'filterByLinkText' => 'Filtra els enllaços pel text de l\'enllaç',
			'matchLinksOutsideATags' => 'Coincideix amb els enllaços fora de les etiquetes <a>',
			'intermediateLinkNotFound' => 'No s\'ha trobat l\'enllaç intermediari',
			'intermediateLink' => 'Enllaç intermediari',
			'exemptFromBackgroundUpdates' => 'Exempta d\'actualitzacions en segon pla (si han estat habilitades)',
			'bgUpdatesOnWiFiOnly' => 'Inhabilita les actualitzacions en segon pla sense Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Inhabilita les actualitzacions en segon pla quan no s\'estigui carregant el mòbil',
			'autoSelectHighestVersionCode' => 'Selecciona de forma automàtica la versió més recent de l\'APK',
			'versionExtractionRegEx' => 'Extracció de la cadena de la versió amb una expressió regular',
			'trimVersionString' => 'Retalla la cadena de la versió amb una expressió regular',
			'matchGroupToUseForX' => 'Grup de coincidència a usar per a "{}"',
			'matchGroupToUse' => 'Grup de coincidència a usar per a l\'extracció de la cadena de la versió amb una expressió regular',
			'highlightTouchTargets' => 'Ressalta els elements de selecció menys obvis',
			'pickExportDir' => 'Selecciona el directori d\'exportació',
			'autoExportOnChanges' => 'Exporta automàticament quan hi hagi canvis',
			'includeSettings' => 'Inclou paràmetres',
			'filterVersionsByRegEx' => 'Filtra les versions per una expressió regular',
			'trySelectingSuggestedVersionCode' => 'Prova a seleccionar la versió de l\'APK suggerida',
			'dontSortReleasesList' => 'Mantén l\'ordre de publicació de l\'API',
			'reverseSort' => 'Ordre invers',
			'takeFirstLink' => 'Usa el primer enllaç',
			'skipSort' => 'Omet l\'ordre',
			'debugMenu' => 'Menú de depuració',
			'bgTaskStarted' => 'S\'ha iniciat la tasca en segon pla (revisa-ho als registres).',
			'runBgCheckNow' => 'Executa la comprovació d\'actualitzacions en segon pla',
			'versionExtractWholePage' => 'Aplica l\'extracció de la cadena de la versió amb una expressió regular a tota la pàgina',
			'installing' => 'Instal·lant',
			'skipUpdateNotifications' => 'No notifiquis les actualitzacions',
			'updatesAvailableNotifChannel' => 'Actualitzacions disponibles',
			'appsUpdatedNotifChannel' => 'Aplicacions actualitzades',
			'appsPossiblyUpdatedNotifChannel' => 'S\'ha intentat actualitzar l\'aplicació',
			'errorCheckingUpdatesNotifChannel' => 'Error en cercar actualitzacions',
			'appsRemovedNotifChannel' => 'Aplicacions suprimides',
			'downloadingXNotifChannel' => 'Descarregant {}',
			'completeAppInstallationNotifChannel' => 'Instal·lació finalitzada',
			'checkingForUpdatesNotifChannel' => 'S\'estan cercant actualitzacions',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Comprova les actualitzacions només per a aplicacions instal·lades o en seguiment',
			'supportFixedAPKURL' => 'Suport per als URLs fixos de l\'APK',
			'selectX' => 'Selecciona {}',
			'parallelDownloads' => 'Permet les descàrregues paralel·les',
			'useShizuku' => 'Usa Shizuku o Sui per instal·lar',
			'shizukuBinderNotFound' => 'Shizuku no s\'està executant',
			'shizukuOld' => 'Versió antiga de Shizuku (<11) - Actualitza-la',
			'shizukuOldAndroidWithADB' => 'Shizuku s\'executa en Android < 8.1 amb ADB - Actualitza Android o usa Sui com a alternativa',
			'shizukuPretendToBeGooglePlay' => 'Defineix Google Play com a font d\'instal·lació (si uses Shizuku)',
			'useSystemFont' => 'Usa la font del sistema',
			'useVersionCodeAsOSVersion' => 'Usa la versió de l\'aplicació com a versió detectada del Sistema Operatiu',
			'requestHeader' => 'Capçalera de sol·licitud',
			'useLatestAssetDateAsReleaseDate' => 'Usa el darrer recurs carregat com a data de llançament',
			'defaultPseudoVersioningMethod' => 'Mètode de pseudo-versionat predeterminat',
			'partialAPKHash' => 'Hash de l\'APK parcial',
			'APKLinkHash' => 'Hash de l\'enllaç de l\'APK',
			'directAPKLink' => 'Enllaç de l\'APK directe',
			'pseudoVersionInUse' => 'S\'està usant una pseudoversió',
			'installedVersion' => 'Instal·lada',
			'installed' => 'Instal·lada',
			'notInstalledApps' => 'No instal·lat',
			'latest' => 'Versió més recent',
			'invertRegEx' => 'Inverteix l\'expressió regular',
			'note' => 'Nota',
			'selfHostedNote' => 'El desplegable «{}» es pot usar per accedir a instàncies autoallotjades/personalitzades de qualsevol font.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'L\'APK no s\'ha pogut analitzar (incompatible o descàrrega parcial)',
			'beforeNewInstallsShareToAppVerifier' => 'Comparteix les aplicacions noves amb AppVerifier (si està instal·lat)',
			'appVerifierInstructionToast' => 'Comparteix amb AppVerifier i torna aquí quan estigui fet.',
			'wiki' => 'Ajuda/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Permet les sol·licituds HTTP insegures',
			'stayOneVersionBehind' => 'Roman a la versió anterior a l\'última',
			'useFirstApkOfVersion' => 'Tria automàticament la primera aplicació entre moltes',
			'refreshBeforeDownload' => 'Actualitza les dades de l\'aplicació abans de descarregar-la',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'Vivo App Store (CN)',
			'name' => 'Nom',
			'smartname' => 'Nom (smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Mètode d\'ordenació',
			'welcome' => 'Benvinguda',
			'batteryOptimizationNote' => 'Tingues present que les descàrregues en segon pla funcionaran millor si inhabilites l\'optimització de bateria per a Updatium.',
			'fileDeletionError' => 'No s\'ha pogut suprimir el fitxer (intenta suprimir-lo manualment i torna-ho a provar): "{}"',
			'foregroundService' => 'Servei d\'Updatium en primer pla',
			'foregroundServiceExplanation' => 'Usa el servei d\'Updatium en primer pla per comprovar les actualitzacions (és més fiable però consumeix més bateria)',
			'fgServiceNotice' => 'Aquesta notificació és necessària per comprovar les actualitzacions en segon pla (la pots ocultar als paràmetres del Sistema Operatiu)',
			'excludeSecrets' => 'Exclou els secrets',
			'GHReqPrefix' => 'exemple per a les peticions de GitHub',
			'includeZips' => 'Inclou fitxers ZIPName',
			'zippedApkFilterRegEx' => 'Filtre APKs dins ZIPName',
			'multipleSigners' => 'Signadors múltiples',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '¿Suprimeixo l\'aplicació?', other: '¿Suprimeixo les aplicacions?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: 'Massa peticions (límit excedit), torna-hi en {count} minut', other: 'Massa peticions (límit excedit), torna-hi en {count} minuts', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: 'La comprovació d\'actualitzacions en segon pla ha trobat un {error}, es tornarà a provar en {count} minut', other: 'La comprovació d\'actualitzacions en segon pla ha trobat un {error}, es tornarà a provar en {count} minuts', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: 'La comprovació d\'actualitzacions en segon pla ha trobat {count} actualització, t\'ho notificarem si cal', other: 'La comprovació d\'actualitzacions en segon pla ha trobat {count} actualitzacions, t\'ho notificarem si cal', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{count} Aplicació', other: '{count} Aplicacions', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{count} minut', other: '{count} minuts', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{count} hora', other: '{count} hores', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{count} dia', other: '{count} dies', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: 'Suprimit {n} registre (anterior a = {before}, posterior a = {after})', other: 'Suprimits {n} registres (anteriors a = {before}, posteriors a = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{app} i 1 aplicació més tenen actualitzacions.', other: '{app} i {count} aplicacions més tenen actualitzacions.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{app} i 1 aplicació més s\'han actualitzat.', other: '{app} i {count} aplicacions més s\'han actualitzat.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: 'Error en actualitzar {app} i 1 aplicació més.', other: 'No s\'ha pogut actualizar {app} i {count} aplicacions més.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{app} i 1 aplicació més podrien haver estat actualizades.', other: '{app} i {count} aplicacions més podrien haver estat actualitzades.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ca'))(n, one: 'Suma de certificat', other: 'Resums del certificat', ), 
			'securityDisclaimerTitle' => 'Avís de Seguretat i Legal',
			'license' => 'Llicència',
			'licenseText' => 'Aquesta aplicació es distribueix sota la Llicència GPL v3.',
			'disclaimer' => 'Avís',
			'disclaimerText' => 'Aquesta aplicació no distribueix, allotja ni verifica cap de les aplicacions externes. L\'usuari assumeix la plena responsabilitat per la seguretat i legalitat de qualsevol programari instal·lat a través d\'aquesta eina.\n\nhttps://github.com/omeritzics/Updatium és l\'únic lloc oficial per descarregar Updatium - es desaconsellable descarregar-lo d\'altres llocs ja que la descàrrega des de fonts no oficials no és segura.',
			'privacy' => 'Privacitat',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Acceptar i continuar',
			'decline' => 'Rebutjar',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Estigueu gaudint d\'Updatium?',
			'githubStarPromptContent' => 'Updatium és un projecte comunitari voluntari de codi obert desenvolupat en el meu temps lliure. Si voleu donar suport al projecte, considereu donar-li una estrella a GitHub per ajudar-nos a arribar a més usuaris i col·laboradors. No se us tornarà a recordar això. Gràcies de forma anticipada! :)',
			'githubStarPromptStar' => 'Donar una estrella',
			'githubStarPromptDontShowAgain' => 'No mostrar més',
			'sourceCode' => 'Codi font',
			'developedBy' => 'Desenvolupat per',
			'appDescription' => 'Un catàleg d\'aplicacions Android personalitzable que us permet actualitzar les vostres aplicacions directament des de les seves fonts APK.',
			'safeModeEnabled' => 'Mode segur activat',
			'safeModeDisabled' => 'Mode segur desactivat',
			'safeModeDisable' => 'Desactiva el Mode segur',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Administració del Mode segur',
			'safeModeSetupDescription' => 'Estableix una contrasenya per activar el Mode segur. Un cop activat, el Mode segur impedeix afegir noves aplicacions i només es pot desactivar amb la contrasenya.',
			'safeModeToggleDescription' => 'Introduïu la contrasenya per activar o desactivar el Mode segur.',
			'safeModeSetPassword' => 'Estableix la contrasenya',
			'safeModeConfirmPassword' => 'Confirma la contrasenya',
			'safeModeEnterPassword' => 'Introduïu la contrasenya',
			'safeModePasswordHint' => 'Mínim 8 caràcters',
			'safeModePasswordTooShort' => 'La contrasenya ha de tenir almenys 8 caràcters',
			'safeModePasswordMismatch' => 'Les contrasenyes no coincideixen',
			'safeModePasswordIncorrect' => 'Contrasenya incorrecta',
			'safeModePasswordError' => 'Error al establir la contrasenya. Torneu-ho a provar.',
			'safeModeEnable' => 'Activa el Mode segur',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} tocs restants per desactivar el Mode segur',
			'safeModeEnabledHint' => 'El Mode segur està activat. Toca el número de versió a Configuració diverses vegades per desactivar.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Entesos',
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
