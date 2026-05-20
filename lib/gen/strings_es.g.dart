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
class TranslationsEs with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEs({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEs _root = this; // ignore: unused_field

	@override 
	TranslationsEs $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEs(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'La URL de la aplicación {} no es válida';
	@override String get noReleaseFound => 'No se ha encontrado una versión válida';
	@override String get noVersionFound => 'No se ha podido determinar la versión';
	@override String get urlMatchesNoSource => 'La URL no coincide con ninguna fuente conocida';
	@override String get cantInstallOlderVersion => 'No se puede instalar una versión previa de la aplicación';
	@override String get appIdMismatch => 'El ID del paquete descargado no coincide con el ID de la aplicación instalada';
	@override String get functionNotImplemented => 'Esta clase no ha implementado esta función';
	@override String get placeholder => 'Espacio reservado';
	@override String get someErrors => 'Han ocurrido algunos errores';
	@override String get unexpectedError => 'Error inesperado';
	@override String get ok => 'Aceptar';
	@override String get and => 'y';
	@override String get githubPATLabel => 'Token de acceso personal a GitHub';
	@override String get includePrereleases => 'Incluir versiones preliminares';
	@override String get fallbackToOlderReleases => 'Retroceder a versiones previas';
	@override String get filterReleaseTitlesByRegEx => 'Filtrar por título de versión';
	@override String get invalidRegEx => 'Expresión inválida';
	@override String get noDescription => 'Sin descripción';
	@override String get cancel => 'Cancelar';
	@override String get kContinue => 'Continuar';
	@override String get requiredInBrackets => '(Requerido)';
	@override String get dropdownNoOptsError => 'ERROR: EL DESPLEGABLE DEBE TENER AL MENOS UNA OPCIÓN';
	@override String get color => 'color';
	@override String get standard => 'Estándar';
	@override String get custom => 'A medida';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Aplicar colores Material You';
	@override String get githubStarredRepos => 'repositorios favoritos en GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nombre de usuario';
	@override String get wrongArgNum => 'Número de argumentos provistos inválido';
	@override String get xIsTrackOnly => '{} es de \'sólo seguimiento\'';
	@override String get source => 'fuente';
	@override String get app => 'Aplicación';
	@override String get appsFromSourceAreTrackOnly => 'Las aplicaciones de este origen son solo para seguimiento.';
	@override String get youPickedTrackOnly => 'Debe seleccionar la opción de \'solo para seguimiento\'.';
	@override String get trackOnlyAppDescription => 'Se hará el seguimiento de actualizaciones para la aplicación, pero Updatium no será capaz de descargar o actualizarla.';
	@override String get cancelled => 'Cancelado';
	@override String get appAlreadyAdded => 'Aplicación añadida anteriormente';
	@override String get alreadyUpToDateQuestion => '¿Aplicación actualizada previamente?';
	@override String get addApp => 'Añadir aplicación';
	@override String get appSourceURL => 'URL origen de la aplicación';
	@override String get error => 'Error';
	@override String get add => 'Añadir';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Buscar (solo en algunas fuentes)';
	@override String get search => 'Buscar';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opciones adicionales para {}';
	@override String get supportedSources => 'Fuentes admitidas';
	@override String get trackOnlyInBrackets => '(Solo para seguimiento)';
	@override String get searchableInBrackets => '(permite búsqueda)';
	@override String get appsString => 'Aplicaciones';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => '¡Bienvenido!';
	@override String get noAppsSubtext => 'Puedes agregar tu primera aplicación tocando \'Añadir aplicación\' abajo.';
	@override String get noAppsForFilter => 'Sin aplicaciones para filtrar';
	@override String get byX => 'por: {}';
	@override String get percentProgress => 'Progreso: {} %';
	@override String get pleaseWait => 'Espere...';
	@override String get updateAvailable => 'Actualización disponible';
	@override String get notInstalled => 'No instalado';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudoversión';
	@override String get selectAll => 'Seleccionar todo';
	@override String get deselectX => 'Deseleccionar {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} se eliminará de Updatium pero continuará instalada en el dispositivo.';
	@override String get removeSelectedAppsQuestion => '¿Eliminar las aplicaciones seleccionadas?';
	@override String get removeSelectedApps => 'Eliminar aplicaciones seleccionadas';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Actualizar {}';
	@override String get installX => 'Instalar {}';
	@override String get markXTrackOnlyAsUpdated => 'Marcar {}\n(solo para seguimiento)\ncomo actualizada';
	@override String get changeX => 'Cambiar {}';
	@override String get installUpdateApps => 'Instalar/actualizar aplicaciones';
	@override String get installUpdateSelectedApps => 'Instalar/actualizar aplicaciones seleccionadas';
	@override String get markXSelectedAppsAsUpdated => '¿Marcar {} aplicaciones seleccionadas como actualizadas?';
	@override String get no => 'No';
	@override String get yes => 'Sí';
	@override String get markSelectedAppsUpdated => 'Marcar como actualizadas';
	@override String get pinToTop => 'Anclar al principio';
	@override String get unpinFromTop => 'Desanclar del principio';
	@override String get resetInstallStatusForSelectedAppsQuestion => '¿Reiniciar el estado de instalación para las aplicaciones seleccionadas?';
	@override String get installStatusOfXWillBeResetExplanation => 'Se reiniciará el estado de instalación de las aplicaciones seleccionadas.\n\nPuede ser de útil cuando la versión de la aplicación mostrada en Updatium es incorrecta por actualizaciones fallidas u otros motivos.';
	@override String get customLinkMessage => 'Estos enlaces funcionan en dispositivos con Updatium instalado';
	@override String get shareAppConfigLinks => 'Compartir configuración de la app como enlace HTML';
	@override String get resetInstallStatus => 'Reiniciar estado de instalación';
	@override String get more => 'Más';
	@override String get removeOutdatedFilter => 'Eliminar filtro de aplicaciones desactualizado';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Mostrar solo aplicaciones desactualizadas';
	@override String get filter => 'Filtrar';
	@override String get filterApps => 'Filtrar apps';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nombre de app';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Aplicaciones actualizadas';
	@override String get nonInstalledApps => 'Apps no instaladas';
	@override String get importExport => 'Importar/Exportar';
	@override String get settings => 'Ajustes';
	@override String get exportedTo => 'Exportado a {}';
	@override String get updatiumExport => 'Exportar Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Entrada no válida';
	@override String get importedX => 'Importado {}';
	@override String get updatiumImport => 'Importar Updatium';
	@override String get importFromURLList => 'Importar desde lista de URL';
	@override String get searchQuery => 'Término de búsqueda';
	@override String get appURLList => 'Lista de URL de aplicaciones';
	@override String get line => 'Línea';
	@override String get searchX => 'Buscar {}';
	@override String get noResults => 'No se ha encontrado ningún resultado';
	@override String get importX => 'Importar desde {}';
	@override String get importedAppsIdDisclaimer => 'Las aplicaciones importadas podrían mostrarse incorrectamente como «No instalada».\nPara solucionarlo, reinstálelas a través de Updatium.\nEsto no debería afectar a los datos de las aplicaciones.\n\nSolo afecta a los URL y a los métodos de importación mediante terceros.';
	@override String get importErrors => 'Errores de Importación';
	@override String get importedXOfYApps => '{} de {} aplicaciones importadas.';
	@override String get followingURLsHadErrors => 'Las URL siguientes han tenido problemas:';
	@override String get selectURL => 'Seleccionar URL';
	@override String get selectURLs => 'Seleccionar URLs';
	@override String get pick => 'Aceptar';
	@override String get theme => 'Tema';
	@override String get dark => 'Oscuro';
	@override String get light => 'Claro';
	@override String get followSystem => 'Seguir al sistema';
	@override String get followSystemThemeExplanation => 'Seguir el tema del sistema sólo es posible utilizando aplicaciones de terceros';
	@override String get useBlackTheme => 'Negro puro en tema oscuro';
	@override String get appSortBy => 'Ordenar apps por';
	@override String get authorName => 'Autor/Nombre';
	@override String get nameAuthor => 'Nombre/Autor';
	@override String get asAdded => 'Según se añadieron';
	@override String get appSortOrder => 'Orden';
	@override String get ascending => 'Ascendente';
	@override String get descending => 'Descendente';
	@override String get bgUpdateCheckInterval => 'Comprobar actualizaciones en segundo plano';
	@override String get neverManualOnly => 'Nunca, solo manual';
	@override String get appearance => 'Apariencia';
	@override String get pinUpdates => 'Anclar actualizaciones al principio';
	@override String get updates => 'Actualizaciones';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Fuente específica';
	@override String get appSource => 'Filtrar por fuente';
	@override String get appSourceHint => 'Abrir repositorio de código fuente de la aplicación';
	@override String get noLogs => 'Ningún registro';
	@override String get appLogs => 'Registros';
	@override String get appLogsHint => 'Ver registros de la aplicación';
	@override String get close => 'Cerrar';
	@override String get share => 'Compartir';
	@override String get appNotFound => 'Aplicación no encontrada';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-exportación';
	@override String get pickAnAPK => 'Seleccione una APK';
	@override String get appHasMoreThanOnePackage => '{} tiene más de un paquete:';
	@override String get deviceSupportsXArch => 'Su dispositivo admite las siguientes arquitecturas de procesador: {}.';
	@override String get deviceSupportsFollowingArchs => 'Su dispositivo admite las siguientes arquitecturas de procesador:';
	@override String get warning => 'Aviso';
	@override String get sourceIsXButPackageFromYPrompt => 'La fuente de la aplicación es «{}» pero el paquete de la actualización viene de «{}». ¿Desea continuar?';
	@override String get updatesAvailable => 'Actualizaciones Disponibles';
	@override String get updatesAvailableNotifDescription => 'Notifica al usuario de que hay actualizaciones para una o más aplicaciones monitoreadas por Updatium';
	@override String get noNewUpdates => 'No hay nuevas actualizaciones.';
	@override String get xHasAnUpdate => '{} tiene una actualización.';
	@override String get appsUpdated => 'Apps actualizadas';
	@override String get appsNotUpdated => 'Error al actualizar las aplicaciones';
	@override String get appsUpdatedNotifDescription => 'Notifica al usuario de que una o más aplicaciones han sido actualizadas en segundo plano';
	@override String get xWasUpdatedToY => '{} ha sido actualizada a {}.';
	@override String get xWasNotUpdatedToY => 'Error al actualizar {} a {}.';
	@override String get errorCheckingUpdates => 'Error al buscar actualizaciones';
	@override String get errorCheckingUpdatesNotifDescription => 'Una notificación que muestra cuándo la comprobación de actualizaciones en segundo plano falla';
	@override String get appsRemoved => 'Aplicaciones eliminadas';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifica al usuario que una o más aplicaciones fueron eliminadas por problemas al cargarlas';
	@override String get xWasRemovedDueToErrorY => '{} ha sido eliminada por: {}';
	@override String get completeAppInstallation => 'Instalación completa de la aplicación';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium debe estar abierto para instalar aplicaciones';
	@override String get completeAppInstallationNotifDescription => 'Le pide volver a Updatium para terminar de instalar una aplicación';
	@override String get checkingForUpdates => 'Buscando actualizaciones...';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notificación temporal que aparece al buscar actualizaciones';
	@override String get pleaseAllowInstallPerm => 'Permita que Updatium instale aplicaciones';
	@override String get trackOnly => 'Solo para seguimiento';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Error {}';
	@override String get versionCorrectionDisabled => 'Corrección de versiones desactivada (el plugin parece no funcionar)';
	@override String get unknown => 'Desconocido';
	@override String get none => 'Ninguno';
	@override String get all => 'Todos';
	@override String get never => 'Nunca';
	@override String get latestVersion => 'Última versión';
	@override String get installedVersionX => 'Versión instalada: {}';
	@override String get lastUpdateCheckX => 'Última comprobación: {}';
	@override String get remove => 'Eliminar';
	@override String get quickLinks => 'Enlaces rápidos';
	@override String get yesMarkUpdated => 'Sí, marcar como actualizada';
	@override String get fdroid => 'F-Droid oficial';
	@override String get appIdOrName => 'ID o Nombre de la aplicación';
	@override String get appId => 'ID de la app';
	@override String get appWithIdOrNameNotFound => 'No se han encontrado aplicaciones con ese ID o nombre';
	@override String get reposHaveMultipleApps => 'Los repositorios pueden contener varias aplicaciones';
	@override String get fdroidThirdPartyRepo => 'F-Droid terceros';
	@override String get codeberg => 'Codeberg';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instalar';
	@override String get markInstalled => 'Marcar como instalada';
	@override String get update => 'Actualizar';
	@override String get updated => 'Actualizado';
	@override String get markUpdated => 'Marcar como actualizada';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opciones adicionales';
	@override String get disableVersionDetection => 'Desactivar la detección de versiones';
	@override String get noVersionDetectionExplanation => 'Esta opción solo se debe usar en aplicaciones en las que la deteción de versiones pueda que no funcionar correctamente.';
	@override String get downloadingX => 'Descargando {}';
	@override String get downloadX => 'Descargar {}';
	@override String get downloadedX => 'Descargado {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Recurso publicado';
	@override String get downloadNotifDescription => 'Notifica al usuario del progreso de descarga de una aplicación';
	@override String get noAPKFound => 'No se ha encontrado el paquete de instalación APK';
	@override String get noVersionDetection => 'Sin detección de versiones';
	@override String get categorize => 'Catogorizar';
	@override String get categories => 'Categorías';
	@override String get category => 'Categoría';
	@override String get noCategory => 'Sin categoría';
	@override String get noCategories => 'Sin categorías';
	@override String get categoryDeleteQuestion => '¿Eliminar las categorías?';
	@override String get categoryDeleteWarning => 'Todas las aplicaciones en las categorías eliminadas se marcarán como «Sin categoría».';
	@override String get addCategory => 'Añadir categoría';
	@override String get label => 'Nombre';
	@override String get language => 'Idioma';
	@override String get copiedToClipboard => 'Copiado en el portapapeles';
	@override String get storagePermissionDenied => 'Permiso de almacenamiento rechazado';
	@override String get selectedCategorizeWarning => 'Esto reemplazará cualquier ajuste de categoría para las aplicaciones seleccionadas.';
	@override String get filterAPKsByRegEx => 'Filtrar por APK';
	@override String get removeFromUpdatium => 'Eliminar de Updatium';
	@override String get uninstallFromDevice => 'Desinstalar del dispositivo';
	@override String get onlyWorksWithNonVersionDetectApps => 'Solo funciona para aplicaciones con la detección de versiones desactivada.';
	@override String get releaseDateAsVersion => 'Usar fecha de publicación como cadena de versión';
	@override String get releaseTitleAsVersion => 'Usar título de lanzamiento como cadena de versión';
	@override String get releaseDateAsVersionExplanation => 'Esta opción solo se debería usar con aplicaciones en las que la detección de versiones no funciona pero hay disponible una fecha de publicación.';
	@override String get changes => 'Cambios';
	@override String get releaseDate => 'Fecha de publicación';
	@override String get importFromURLsInFile => 'Importar URLs desde archivo (como OPML)';
	@override String get versionDetectionExplanation => 'Conciliar cadena de versión con versión detectada por el sistema operativo';
	@override String get versionDetection => 'Detección de versiones';
	@override String get standardVersionDetection => 'Por versión';
	@override String get groupByCategory => 'Agrupar por categoría';
	@override String get listView => 'Vista de lista';
	@override String get gridView => 'Vista de cuadrícula';
	@override String get autoApkFilterByArch => 'Filtrar APK por arquitectura del procesador (si es posible)';
	@override String get autoLinkFilterByArch => 'Intente filtrar los enlaces por arquitectura de CPU si es posible';
	@override String get overrideSource => 'Forzar desde la fuente';
	@override String get dontShowAgain => 'No mostrar de nuevo';
	@override String get dontShowTrackOnlyWarnings => 'No mostrar avisos sobre apps \'solo para seguimiento\'';
	@override String get dontShowAPKOriginWarnings => 'No mostrar avisos sobre las fuentes de las APKs';
	@override String get moveNonInstalledAppsToBottom => 'Mover apps no instaladas al final';
	@override String get gitlabPATLabel => 'Token de acceso personal a GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Acerca de';
	@override String get requiresCredentialsInSettings => '{}: Esto requiere credenciales adicionales (en ajustes)';
	@override String get checkOnStart => 'Comprobar actualizaciones al inicio';
	@override String get safeMode => 'Modo seguro';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Añadir app está desactivado en modo seguro';
	@override String get tryInferAppIdFromCode => 'Intentar deducir el ID de la app por el código fuente';
	@override String get removeOnExternalUninstall => 'Auto eliminar apps desinstaladas externamente';
	@override String get pickHighestVersionCode => 'Auto selección de versión superior del paquete APK';
	@override String get checkUpdateOnDetailPage => 'Comprobar actualizaciones al abrir detalles de la app';
	@override String get disablePageTransitions => 'Deshabilitar animaciones de transición';
	@override String get reversePageTransitions => 'Invertir animaciones de transición';
	@override String get minStarCount => 'Número Mínimo de Estrellas';
	@override String get addInfoBelow => 'Añadir esta información debajo.';
	@override String get addInfoInSettings => 'Puede añadir esta información en Ajustes.';
	@override String get githubSourceNote => 'La limitación de velocidad de GitHub puede evitarse con un \'token de acceso personal\'.';
	@override String get sortByLastLinkSegment => 'Ordenar sólo por el último segmento del enlace';
	@override String get filterReleaseNotesByRegEx => 'Filtrar por notas de versión (release notes)';
	@override String get customLinkFilterRegex => 'Filtro personalizado de enlace APK (por defecto \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Actualización de apps intentada';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifica al usuario que las actualizaciones en segundo plano podrían haberse realizado para una o más aplicaciones';
	@override String get xWasPossiblyUpdatedToY => '{} podría estar actualizada a {}.';
	@override String get enableBackgroundUpdates => 'Habilitar actualizaciones en segundo plano';
	@override String get backgroundUpdateReqsExplanation => 'Las actualizaciones en segundo plano pueden no estar disponibles para todas las aplicaciones.';
	@override String get backgroundUpdateLimitsExplanation => 'El éxito de las instalaciones en segundo plano solo se puede comprobar con Updatium abierto.';
	@override String get verifyLatestTag => 'Comprobar etiqueta \'Latest\'';
	@override String get intermediateLinkRegex => 'Filtrar por enlace \'intermedio\' para visitar primero';
	@override String get filterByLinkText => 'Filtrar enlaces por texto del enlace';
	@override String get matchLinksOutsideATags => 'Enlaces coincidentes fuera de las etiquetas <a>';
	@override String get intermediateLinkNotFound => 'Enlace intermedio no encontrado';
	@override String get intermediateLink => 'Enlace intermedio';
	@override String get exemptFromBackgroundUpdates => 'No actualizar en segundo plano (si está habilitado)';
	@override String get bgUpdatesOnWiFiOnly => 'Deshabilitar las actualizaciones en segundo plano sin Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Desactiva las actualizaciones en segundo plano cuando no estés cargando';
	@override String get autoSelectHighestVersionCode => 'Auto selección del paquete APK con la última versión';
	@override String get versionExtractionRegEx => 'Versión de extracción RegEx';
	@override String get trimVersionString => 'Recortar cadena de versión con RegEx';
	@override String get matchGroupToUseForX => 'Grupo de coincidencia a usar para\n"{}"';
	@override String get matchGroupToUse => 'Grupo a usar para versión de extracción RegEx';
	@override String get highlightTouchTargets => 'Resaltar objetivos menos obvios';
	@override String get pickExportDir => 'Directorio para exportar';
	@override String get autoExportOnChanges => 'Auto exportar si hay cambios';
	@override String get includeSettings => 'Incluir ajustes';
	@override String get filterVersionsByRegEx => 'Filtrar por versiones';
	@override String get trySelectingSuggestedVersionCode => 'Pruebe seleccionando la versión del paquete APK sugerida';
	@override String get dontSortReleasesList => 'Mantener el order de publicación de la fuente original';
	@override String get reverseSort => 'Orden inverso';
	@override String get takeFirstLink => 'Usar primer enlace';
	@override String get skipSort => 'Omitir orden';
	@override String get debugMenu => 'Menu Depurar';
	@override String get bgTaskStarted => 'Iniciada tarea en segundo plano; revise los registros.';
	@override String get runBgCheckNow => 'Ejecutar verficiación de actualizaciones en segundo plano';
	@override String get versionExtractWholePage => 'Aplicar la versión de extracción RegEx a la página entera';
	@override String get installing => 'Instalando';
	@override String get skipUpdateNotifications => 'No notificar sobre actualizaciones';
	@override String get updatesAvailableNotifChannel => 'Actualizaciones disponibles';
	@override String get appsUpdatedNotifChannel => 'Aplicaciones actualizadas';
	@override String get appsPossiblyUpdatedNotifChannel => 'Se ha intentado actualizar la aplicación';
	@override String get errorCheckingUpdatesNotifChannel => 'Error buscando actualizaciones';
	@override String get appsRemovedNotifChannel => 'Aplicaciones eliminadas';
	@override String get downloadingXNotifChannel => 'Descargando {}';
	@override String get completeAppInstallationNotifChannel => 'Instalación completada';
	@override String get checkingForUpdatesNotifChannel => 'Buscando actualizaciones';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Comprobar actualizaciones solo para apps instaladas o en seguimiento';
	@override String get supportFixedAPKURL => 'Soporte para URLs fijas de APK';
	@override String get selectX => 'Seleccionar {}';
	@override String get parallelDownloads => 'Permitir descargas paralelas';
	@override String get useShizuku => 'Usar Shizuku o Sui para instalar';
	@override String get shizukuBinderNotFound => 'Shizuku no funciona';
	@override String get shizukuOld => 'Versión antigua de Shizuku (<11) - actualícela';
	@override String get shizukuOldAndroidWithADB => 'Shizuku corriendo en Android < 8.1 con ADB - actualiza Android o usa Sui en su lugar';
	@override String get shizukuPretendToBeGooglePlay => 'Usar Google Play como fuente de instalación (si se usa Shizuku)';
	@override String get useSystemFont => 'Usar fuente del sistema';
	@override String get useVersionCodeAsOSVersion => 'Usar versión de la app como versión detectada por el sistema operativo';
	@override String get requestHeader => 'Encabezado de solicitud';
	@override String get useLatestAssetDateAsReleaseDate => 'Usar última subida del recurso como fecha de lanzamiento';
	@override String get defaultPseudoVersioningMethod => 'Método de pseudoversionado predeterminado';
	@override String get partialAPKHash => 'Hash de APK parcial';
	@override String get APKLinkHash => 'Hash de enlace APK';
	@override String get directAPKLink => 'Enlace APK directo';
	@override String get pseudoVersionInUse => 'Se está usando una pseudoversión';
	@override String get installedVersion => 'Instalada';
	@override String get installed => 'Instalada';
	@override String get notInstalledApps => 'No instalada';
	@override String get latest => 'Última versión';
	@override String get invertRegEx => 'Invertir expresión regular';
	@override String get note => 'Nota';
	@override String get selfHostedNote => 'El desplegable «{}» puede usarse para acceder a instancias autoalojadas/personalizadas de cualquier fuente.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'No se ha podido analizar el APK (incompatible o descarga parcial)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Compartir apps nuevas con AppVerifier (si está instalado)';
	@override String get appVerifierInstructionToast => 'Comparta con AppVerifier y vuelva aquí cuando esté listo.';
	@override String get wiki => 'Ayuda/Wiki';
	@override String get wikiHint => 'Abrir documentación de la wiki de Updatium';
	@override String get allowInsecure => 'Permitir peticiones HTTP inseguras';
	@override String get stayOneVersionBehind => 'Mantenerse una versión por detrás de la última';
	@override String get useFirstApkOfVersion => 'Auto-selección del primero de múltiples APKs';
	@override String get refreshBeforeDownload => 'Actualizar datos de la app antes de descargarla';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nombre';
	@override String get smartname => 'Nombre (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Clasificación por';
	@override String get welcome => 'Bienvenido';
	@override String get batteryOptimizationNote => 'Ten en cuenta que las descargas en segundo plano pueden funcionar de forma más fiable si desactivas las optimizaciones de batería del sistema operativo para Updatium.';
	@override String get fileDeletionError => 'No se ha podido eliminar el archivo (intenta eliminarlo manualmente y vuelve a probar): "{}"';
	@override String get foregroundService => 'Servicio Updatium en primer plano';
	@override String get foregroundServiceExplanation => 'Usar un servicio en primer plano para comprobar las actualizaciones (más fiable, consume más energía).';
	@override String get fgServiceNotice => 'Esta notificación es necesaria para la comprobación de actualizaciones en segundo plano (puede ocultarse en la configuración del sistema operativo).';
	@override String get excludeSecrets => 'Excluir secretos';
	@override String get GHReqPrefix => 'Instancia \'omeritzics/Updatium\' para las\nsolicitudes de GitHub';
	@override String get includeZips => 'Incluir archivos ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrar APKs dentro del ZIP';
	@override String get multipleSigners => 'Múltiples firmas';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '¿Eliminar la aplicación?',
		other: '¿Eliminar las aplicaciones?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Muchas peticiones (limitado); pruebe de nuevo en {count} minuto',
		other: 'Muchas peticiones (limitado); pruebe de nuevo en {count} minutos',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'La comprobación de actualizaciones en segundo plano se ha encontrado un {error}; se volverá a probar en {count} minuto',
		other: 'La comprobación de actualizaciones en segundo plano se ha encontrado un {error}; se volverá a probar en {count} minutos',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'La comprobación de actualizaciones en segundo plano ha encontrado {count} actualización; se le notificará si es necesario',
		other: 'La comprobación de actualizaciones en segundo plano ha encontrado {count} actualizaciones; se le notificará si es necesario',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{count} aplicación',
		other: '{count} aplicaciones',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{count} URL',
		other: '{count} URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{count} minuto',
		other: '{count} minutos',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{count} hora',
		other: '{count} horas',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{count} día',
		other: '{count} días',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Eliminado {n} registro (previo a = {before}, posterior a = {after})',
		other: 'Eliminados {n} registros (previos a = {before}, posteriores a = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{app} y 1 aplicación más tiene actualizaciones.',
		other: '{app} y {count} aplicaciones más tienen actualizaciones.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{app} y 1 aplicación más se han actualizado.',
		other: '{app} y {count} aplicaciones más se han actualizado.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Error al actualizar {app} y 1 aplicación más.',
		other: 'No se han podido actualizar {app} y {count} aplicaciones más.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{app} y 1 aplicación más podría haber sido actualizada.',
		other: '{app} y {count} aplicaciones más podrían haber sido actualizadas.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n,
		one: 'Certificado Hash',
		other: 'Hashes certificado',
	);
	@override String get securityDisclaimerTitle => 'Aviso Legal y de Seguridad';
	@override String get license => 'Licencia';
	@override String get licenseText => 'Esta aplicación se distribuye bajo la Licencia GPL v3.';
	@override String get disclaimer => 'Descargo de responsabilidad';
	@override String get disclaimerText => 'Esta aplicación no distribuye, aloja ni verifica ninguna de las aplicaciones externas. El usuario asume toda la responsabilidad sobre la seguridad y legalidad de cualquier software instalado a través de esta herramienta.\n\nhttps://github.com/omeritzics/Updatium es el único lugar oficial para descargar Updatium - es muy desaconsejable descargarlo de otros lugares ya que las fuentes no oficiales pueden ser inseguras.';
	@override String get privacy => 'Privacidad';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Aceptar y continuar';
	@override String get decline => 'Rechazar';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => '¿Disfrutando de Updatium?';
	@override String get githubStarPromptContent => 'Updatium es un proyecto comunitario de código abierto voluntario desarrollado en mi tiempo libre. Si te gustaría apoyar el proyecto, por favor considera darle una estrella en GitHub para ayudarnos a llegar a más usuarios y contribuidores. No volverás a recibir recordatorios sobre esto. ¡Gracias de antemano! :)';
	@override String get githubStarPromptStar => 'Dar estrella';
	@override String get githubStarPromptDontShowAgain => 'No volver a mostrar';
	@override String get sourceCode => 'Código fuente';
	@override String get developedBy => 'Desarrollado por';
	@override String get appDescription => 'Un catálogo de aplicaciones Android personalizable que te permite actualizar tus aplicaciones directamente desde sus fuentes APK.';
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

/// The flat map containing all translations for locale <es>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEs {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'La URL de la aplicación {} no es válida',
			'noReleaseFound' => 'No se ha encontrado una versión válida',
			'noVersionFound' => 'No se ha podido determinar la versión',
			'urlMatchesNoSource' => 'La URL no coincide con ninguna fuente conocida',
			'cantInstallOlderVersion' => 'No se puede instalar una versión previa de la aplicación',
			'appIdMismatch' => 'El ID del paquete descargado no coincide con el ID de la aplicación instalada',
			'functionNotImplemented' => 'Esta clase no ha implementado esta función',
			'placeholder' => 'Espacio reservado',
			'someErrors' => 'Han ocurrido algunos errores',
			'unexpectedError' => 'Error inesperado',
			'ok' => 'Aceptar',
			'and' => 'y',
			'githubPATLabel' => 'Token de acceso personal a GitHub',
			'includePrereleases' => 'Incluir versiones preliminares',
			'fallbackToOlderReleases' => 'Retroceder a versiones previas',
			'filterReleaseTitlesByRegEx' => 'Filtrar por título de versión',
			'invalidRegEx' => 'Expresión inválida',
			'noDescription' => 'Sin descripción',
			'cancel' => 'Cancelar',
			'kContinue' => 'Continuar',
			'requiredInBrackets' => '(Requerido)',
			'dropdownNoOptsError' => 'ERROR: EL DESPLEGABLE DEBE TENER AL MENOS UNA OPCIÓN',
			'color' => 'color',
			'standard' => 'Estándar',
			'custom' => 'A medida',
			'primary' => 'Primary',
			'useMaterialYou' => 'Aplicar colores Material You',
			'githubStarredRepos' => 'repositorios favoritos en GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nombre de usuario',
			'wrongArgNum' => 'Número de argumentos provistos inválido',
			'xIsTrackOnly' => '{} es de \'sólo seguimiento\'',
			'source' => 'fuente',
			'app' => 'Aplicación',
			'appsFromSourceAreTrackOnly' => 'Las aplicaciones de este origen son solo para seguimiento.',
			'youPickedTrackOnly' => 'Debe seleccionar la opción de \'solo para seguimiento\'.',
			'trackOnlyAppDescription' => 'Se hará el seguimiento de actualizaciones para la aplicación, pero Updatium no será capaz de descargar o actualizarla.',
			'cancelled' => 'Cancelado',
			'appAlreadyAdded' => 'Aplicación añadida anteriormente',
			'alreadyUpToDateQuestion' => '¿Aplicación actualizada previamente?',
			'addApp' => 'Añadir aplicación',
			'appSourceURL' => 'URL origen de la aplicación',
			'error' => 'Error',
			'add' => 'Añadir',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Buscar (solo en algunas fuentes)',
			'search' => 'Buscar',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opciones adicionales para {}',
			'supportedSources' => 'Fuentes admitidas',
			'trackOnlyInBrackets' => '(Solo para seguimiento)',
			'searchableInBrackets' => '(permite búsqueda)',
			'appsString' => 'Aplicaciones',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => '¡Bienvenido!',
			'noAppsSubtext' => 'Puedes agregar tu primera aplicación tocando \'Añadir aplicación\' abajo.',
			'noAppsForFilter' => 'Sin aplicaciones para filtrar',
			'byX' => 'por: {}',
			'percentProgress' => 'Progreso: {} %',
			'pleaseWait' => 'Espere...',
			'updateAvailable' => 'Actualización disponible',
			'notInstalled' => 'No instalado',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudoversión',
			'selectAll' => 'Seleccionar todo',
			'deselectX' => 'Deseleccionar {}',
			'xWillBeRemovedButRemainInstalled' => '{} se eliminará de Updatium pero continuará instalada en el dispositivo.',
			'removeSelectedAppsQuestion' => '¿Eliminar las aplicaciones seleccionadas?',
			'removeSelectedApps' => 'Eliminar aplicaciones seleccionadas',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Actualizar {}',
			'installX' => 'Instalar {}',
			'markXTrackOnlyAsUpdated' => 'Marcar {}\n(solo para seguimiento)\ncomo actualizada',
			'changeX' => 'Cambiar {}',
			'installUpdateApps' => 'Instalar/actualizar aplicaciones',
			'installUpdateSelectedApps' => 'Instalar/actualizar aplicaciones seleccionadas',
			'markXSelectedAppsAsUpdated' => '¿Marcar {} aplicaciones seleccionadas como actualizadas?',
			'no' => 'No',
			'yes' => 'Sí',
			'markSelectedAppsUpdated' => 'Marcar como actualizadas',
			'pinToTop' => 'Anclar al principio',
			'unpinFromTop' => 'Desanclar del principio',
			'resetInstallStatusForSelectedAppsQuestion' => '¿Reiniciar el estado de instalación para las aplicaciones seleccionadas?',
			'installStatusOfXWillBeResetExplanation' => 'Se reiniciará el estado de instalación de las aplicaciones seleccionadas.\n\nPuede ser de útil cuando la versión de la aplicación mostrada en Updatium es incorrecta por actualizaciones fallidas u otros motivos.',
			'customLinkMessage' => 'Estos enlaces funcionan en dispositivos con Updatium instalado',
			'shareAppConfigLinks' => 'Compartir configuración de la app como enlace HTML',
			'resetInstallStatus' => 'Reiniciar estado de instalación',
			'more' => 'Más',
			'removeOutdatedFilter' => 'Eliminar filtro de aplicaciones desactualizado',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Mostrar solo aplicaciones desactualizadas',
			'filter' => 'Filtrar',
			'filterApps' => 'Filtrar apps',
			'filterDays' => 'Filter days',
			'appName' => 'Nombre de app',
			'author' => 'Autor',
			'upToDateApps' => 'Aplicaciones actualizadas',
			'nonInstalledApps' => 'Apps no instaladas',
			'importExport' => 'Importar/Exportar',
			'settings' => 'Ajustes',
			'exportedTo' => 'Exportado a {}',
			'updatiumExport' => 'Exportar Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Entrada no válida',
			'importedX' => 'Importado {}',
			'updatiumImport' => 'Importar Updatium',
			'importFromURLList' => 'Importar desde lista de URL',
			'searchQuery' => 'Término de búsqueda',
			'appURLList' => 'Lista de URL de aplicaciones',
			'line' => 'Línea',
			'searchX' => 'Buscar {}',
			'noResults' => 'No se ha encontrado ningún resultado',
			'importX' => 'Importar desde {}',
			'importedAppsIdDisclaimer' => 'Las aplicaciones importadas podrían mostrarse incorrectamente como «No instalada».\nPara solucionarlo, reinstálelas a través de Updatium.\nEsto no debería afectar a los datos de las aplicaciones.\n\nSolo afecta a los URL y a los métodos de importación mediante terceros.',
			'importErrors' => 'Errores de Importación',
			'importedXOfYApps' => '{} de {} aplicaciones importadas.',
			'followingURLsHadErrors' => 'Las URL siguientes han tenido problemas:',
			'selectURL' => 'Seleccionar URL',
			'selectURLs' => 'Seleccionar URLs',
			'pick' => 'Aceptar',
			'theme' => 'Tema',
			'dark' => 'Oscuro',
			'light' => 'Claro',
			'followSystem' => 'Seguir al sistema',
			'followSystemThemeExplanation' => 'Seguir el tema del sistema sólo es posible utilizando aplicaciones de terceros',
			'useBlackTheme' => 'Negro puro en tema oscuro',
			'appSortBy' => 'Ordenar apps por',
			'authorName' => 'Autor/Nombre',
			'nameAuthor' => 'Nombre/Autor',
			'asAdded' => 'Según se añadieron',
			'appSortOrder' => 'Orden',
			'ascending' => 'Ascendente',
			'descending' => 'Descendente',
			'bgUpdateCheckInterval' => 'Comprobar actualizaciones en segundo plano',
			'neverManualOnly' => 'Nunca, solo manual',
			'appearance' => 'Apariencia',
			'pinUpdates' => 'Anclar actualizaciones al principio',
			'updates' => 'Actualizaciones',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Fuente específica',
			'appSource' => 'Filtrar por fuente',
			'appSourceHint' => 'Abrir repositorio de código fuente de la aplicación',
			'noLogs' => 'Ningún registro',
			'appLogs' => 'Registros',
			'appLogsHint' => 'Ver registros de la aplicación',
			'close' => 'Cerrar',
			'share' => 'Compartir',
			'appNotFound' => 'Aplicación no encontrada',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-exportación',
			'pickAnAPK' => 'Seleccione una APK',
			'appHasMoreThanOnePackage' => '{} tiene más de un paquete:',
			'deviceSupportsXArch' => 'Su dispositivo admite las siguientes arquitecturas de procesador: {}.',
			'deviceSupportsFollowingArchs' => 'Su dispositivo admite las siguientes arquitecturas de procesador:',
			'warning' => 'Aviso',
			'sourceIsXButPackageFromYPrompt' => 'La fuente de la aplicación es «{}» pero el paquete de la actualización viene de «{}». ¿Desea continuar?',
			'updatesAvailable' => 'Actualizaciones Disponibles',
			'updatesAvailableNotifDescription' => 'Notifica al usuario de que hay actualizaciones para una o más aplicaciones monitoreadas por Updatium',
			'noNewUpdates' => 'No hay nuevas actualizaciones.',
			'xHasAnUpdate' => '{} tiene una actualización.',
			'appsUpdated' => 'Apps actualizadas',
			'appsNotUpdated' => 'Error al actualizar las aplicaciones',
			'appsUpdatedNotifDescription' => 'Notifica al usuario de que una o más aplicaciones han sido actualizadas en segundo plano',
			'xWasUpdatedToY' => '{} ha sido actualizada a {}.',
			'xWasNotUpdatedToY' => 'Error al actualizar {} a {}.',
			'errorCheckingUpdates' => 'Error al buscar actualizaciones',
			'errorCheckingUpdatesNotifDescription' => 'Una notificación que muestra cuándo la comprobación de actualizaciones en segundo plano falla',
			'appsRemoved' => 'Aplicaciones eliminadas',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifica al usuario que una o más aplicaciones fueron eliminadas por problemas al cargarlas',
			'xWasRemovedDueToErrorY' => '{} ha sido eliminada por: {}',
			'completeAppInstallation' => 'Instalación completa de la aplicación',
			'updatiumMustBeOpenToInstallApps' => 'Updatium debe estar abierto para instalar aplicaciones',
			'completeAppInstallationNotifDescription' => 'Le pide volver a Updatium para terminar de instalar una aplicación',
			'checkingForUpdates' => 'Buscando actualizaciones...',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notificación temporal que aparece al buscar actualizaciones',
			'pleaseAllowInstallPerm' => 'Permita que Updatium instale aplicaciones',
			'trackOnly' => 'Solo para seguimiento',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Error {}',
			'versionCorrectionDisabled' => 'Corrección de versiones desactivada (el plugin parece no funcionar)',
			'unknown' => 'Desconocido',
			'none' => 'Ninguno',
			'all' => 'Todos',
			'never' => 'Nunca',
			'latestVersion' => 'Última versión',
			'installedVersionX' => 'Versión instalada: {}',
			'lastUpdateCheckX' => 'Última comprobación: {}',
			'remove' => 'Eliminar',
			'quickLinks' => 'Enlaces rápidos',
			'yesMarkUpdated' => 'Sí, marcar como actualizada',
			'fdroid' => 'F-Droid oficial',
			'appIdOrName' => 'ID o Nombre de la aplicación',
			'appId' => 'ID de la app',
			'appWithIdOrNameNotFound' => 'No se han encontrado aplicaciones con ese ID o nombre',
			'reposHaveMultipleApps' => 'Los repositorios pueden contener varias aplicaciones',
			'fdroidThirdPartyRepo' => 'F-Droid terceros',
			'codeberg' => 'Codeberg',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instalar',
			'markInstalled' => 'Marcar como instalada',
			'update' => 'Actualizar',
			'updated' => 'Actualizado',
			'markUpdated' => 'Marcar como actualizada',
			'download' => 'Download',
			'additionalOptions' => 'Opciones adicionales',
			'disableVersionDetection' => 'Desactivar la detección de versiones',
			'noVersionDetectionExplanation' => 'Esta opción solo se debe usar en aplicaciones en las que la deteción de versiones pueda que no funcionar correctamente.',
			'downloadingX' => 'Descargando {}',
			'downloadX' => 'Descargar {}',
			'downloadedX' => 'Descargado {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Recurso publicado',
			'downloadNotifDescription' => 'Notifica al usuario del progreso de descarga de una aplicación',
			'noAPKFound' => 'No se ha encontrado el paquete de instalación APK',
			'noVersionDetection' => 'Sin detección de versiones',
			'categorize' => 'Catogorizar',
			'categories' => 'Categorías',
			'category' => 'Categoría',
			'noCategory' => 'Sin categoría',
			'noCategories' => 'Sin categorías',
			'categoryDeleteQuestion' => '¿Eliminar las categorías?',
			'categoryDeleteWarning' => 'Todas las aplicaciones en las categorías eliminadas se marcarán como «Sin categoría».',
			'addCategory' => 'Añadir categoría',
			'label' => 'Nombre',
			'language' => 'Idioma',
			'copiedToClipboard' => 'Copiado en el portapapeles',
			'storagePermissionDenied' => 'Permiso de almacenamiento rechazado',
			'selectedCategorizeWarning' => 'Esto reemplazará cualquier ajuste de categoría para las aplicaciones seleccionadas.',
			'filterAPKsByRegEx' => 'Filtrar por APK',
			'removeFromUpdatium' => 'Eliminar de Updatium',
			'uninstallFromDevice' => 'Desinstalar del dispositivo',
			'onlyWorksWithNonVersionDetectApps' => 'Solo funciona para aplicaciones con la detección de versiones desactivada.',
			'releaseDateAsVersion' => 'Usar fecha de publicación como cadena de versión',
			'releaseTitleAsVersion' => 'Usar título de lanzamiento como cadena de versión',
			'releaseDateAsVersionExplanation' => 'Esta opción solo se debería usar con aplicaciones en las que la detección de versiones no funciona pero hay disponible una fecha de publicación.',
			'changes' => 'Cambios',
			'releaseDate' => 'Fecha de publicación',
			'importFromURLsInFile' => 'Importar URLs desde archivo (como OPML)',
			'versionDetectionExplanation' => 'Conciliar cadena de versión con versión detectada por el sistema operativo',
			'versionDetection' => 'Detección de versiones',
			'standardVersionDetection' => 'Por versión',
			'groupByCategory' => 'Agrupar por categoría',
			'listView' => 'Vista de lista',
			'gridView' => 'Vista de cuadrícula',
			'autoApkFilterByArch' => 'Filtrar APK por arquitectura del procesador (si es posible)',
			'autoLinkFilterByArch' => 'Intente filtrar los enlaces por arquitectura de CPU si es posible',
			'overrideSource' => 'Forzar desde la fuente',
			'dontShowAgain' => 'No mostrar de nuevo',
			'dontShowTrackOnlyWarnings' => 'No mostrar avisos sobre apps \'solo para seguimiento\'',
			'dontShowAPKOriginWarnings' => 'No mostrar avisos sobre las fuentes de las APKs',
			'moveNonInstalledAppsToBottom' => 'Mover apps no instaladas al final',
			'gitlabPATLabel' => 'Token de acceso personal a GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Acerca de',
			'requiresCredentialsInSettings' => '{}: Esto requiere credenciales adicionales (en ajustes)',
			'checkOnStart' => 'Comprobar actualizaciones al inicio',
			'safeMode' => 'Modo seguro',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Añadir app está desactivado en modo seguro',
			'tryInferAppIdFromCode' => 'Intentar deducir el ID de la app por el código fuente',
			'removeOnExternalUninstall' => 'Auto eliminar apps desinstaladas externamente',
			'pickHighestVersionCode' => 'Auto selección de versión superior del paquete APK',
			'checkUpdateOnDetailPage' => 'Comprobar actualizaciones al abrir detalles de la app',
			'disablePageTransitions' => 'Deshabilitar animaciones de transición',
			'reversePageTransitions' => 'Invertir animaciones de transición',
			'minStarCount' => 'Número Mínimo de Estrellas',
			'addInfoBelow' => 'Añadir esta información debajo.',
			'addInfoInSettings' => 'Puede añadir esta información en Ajustes.',
			'githubSourceNote' => 'La limitación de velocidad de GitHub puede evitarse con un \'token de acceso personal\'.',
			'sortByLastLinkSegment' => 'Ordenar sólo por el último segmento del enlace',
			'filterReleaseNotesByRegEx' => 'Filtrar por notas de versión (release notes)',
			'customLinkFilterRegex' => 'Filtro personalizado de enlace APK (por defecto \'.apk$\')',
			'appsPossiblyUpdated' => 'Actualización de apps intentada',
			'appsPossiblyUpdatedNotifDescription' => 'Notifica al usuario que las actualizaciones en segundo plano podrían haberse realizado para una o más aplicaciones',
			'xWasPossiblyUpdatedToY' => '{} podría estar actualizada a {}.',
			'enableBackgroundUpdates' => 'Habilitar actualizaciones en segundo plano',
			'backgroundUpdateReqsExplanation' => 'Las actualizaciones en segundo plano pueden no estar disponibles para todas las aplicaciones.',
			'backgroundUpdateLimitsExplanation' => 'El éxito de las instalaciones en segundo plano solo se puede comprobar con Updatium abierto.',
			'verifyLatestTag' => 'Comprobar etiqueta \'Latest\'',
			'intermediateLinkRegex' => 'Filtrar por enlace \'intermedio\' para visitar primero',
			'filterByLinkText' => 'Filtrar enlaces por texto del enlace',
			'matchLinksOutsideATags' => 'Enlaces coincidentes fuera de las etiquetas <a>',
			'intermediateLinkNotFound' => 'Enlace intermedio no encontrado',
			'intermediateLink' => 'Enlace intermedio',
			'exemptFromBackgroundUpdates' => 'No actualizar en segundo plano (si está habilitado)',
			'bgUpdatesOnWiFiOnly' => 'Deshabilitar las actualizaciones en segundo plano sin Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Desactiva las actualizaciones en segundo plano cuando no estés cargando',
			'autoSelectHighestVersionCode' => 'Auto selección del paquete APK con la última versión',
			'versionExtractionRegEx' => 'Versión de extracción RegEx',
			'trimVersionString' => 'Recortar cadena de versión con RegEx',
			'matchGroupToUseForX' => 'Grupo de coincidencia a usar para\n"{}"',
			'matchGroupToUse' => 'Grupo a usar para versión de extracción RegEx',
			'highlightTouchTargets' => 'Resaltar objetivos menos obvios',
			'pickExportDir' => 'Directorio para exportar',
			'autoExportOnChanges' => 'Auto exportar si hay cambios',
			'includeSettings' => 'Incluir ajustes',
			'filterVersionsByRegEx' => 'Filtrar por versiones',
			'trySelectingSuggestedVersionCode' => 'Pruebe seleccionando la versión del paquete APK sugerida',
			'dontSortReleasesList' => 'Mantener el order de publicación de la fuente original',
			'reverseSort' => 'Orden inverso',
			'takeFirstLink' => 'Usar primer enlace',
			'skipSort' => 'Omitir orden',
			'debugMenu' => 'Menu Depurar',
			'bgTaskStarted' => 'Iniciada tarea en segundo plano; revise los registros.',
			'runBgCheckNow' => 'Ejecutar verficiación de actualizaciones en segundo plano',
			'versionExtractWholePage' => 'Aplicar la versión de extracción RegEx a la página entera',
			'installing' => 'Instalando',
			'skipUpdateNotifications' => 'No notificar sobre actualizaciones',
			'updatesAvailableNotifChannel' => 'Actualizaciones disponibles',
			'appsUpdatedNotifChannel' => 'Aplicaciones actualizadas',
			'appsPossiblyUpdatedNotifChannel' => 'Se ha intentado actualizar la aplicación',
			'errorCheckingUpdatesNotifChannel' => 'Error buscando actualizaciones',
			'appsRemovedNotifChannel' => 'Aplicaciones eliminadas',
			'downloadingXNotifChannel' => 'Descargando {}',
			'completeAppInstallationNotifChannel' => 'Instalación completada',
			'checkingForUpdatesNotifChannel' => 'Buscando actualizaciones',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Comprobar actualizaciones solo para apps instaladas o en seguimiento',
			'supportFixedAPKURL' => 'Soporte para URLs fijas de APK',
			'selectX' => 'Seleccionar {}',
			'parallelDownloads' => 'Permitir descargas paralelas',
			'useShizuku' => 'Usar Shizuku o Sui para instalar',
			'shizukuBinderNotFound' => 'Shizuku no funciona',
			'shizukuOld' => 'Versión antigua de Shizuku (<11) - actualícela',
			'shizukuOldAndroidWithADB' => 'Shizuku corriendo en Android < 8.1 con ADB - actualiza Android o usa Sui en su lugar',
			'shizukuPretendToBeGooglePlay' => 'Usar Google Play como fuente de instalación (si se usa Shizuku)',
			'useSystemFont' => 'Usar fuente del sistema',
			'useVersionCodeAsOSVersion' => 'Usar versión de la app como versión detectada por el sistema operativo',
			'requestHeader' => 'Encabezado de solicitud',
			'useLatestAssetDateAsReleaseDate' => 'Usar última subida del recurso como fecha de lanzamiento',
			'defaultPseudoVersioningMethod' => 'Método de pseudoversionado predeterminado',
			'partialAPKHash' => 'Hash de APK parcial',
			'APKLinkHash' => 'Hash de enlace APK',
			'directAPKLink' => 'Enlace APK directo',
			'pseudoVersionInUse' => 'Se está usando una pseudoversión',
			'installedVersion' => 'Instalada',
			'installed' => 'Instalada',
			'notInstalledApps' => 'No instalada',
			'latest' => 'Última versión',
			'invertRegEx' => 'Invertir expresión regular',
			'note' => 'Nota',
			'selfHostedNote' => 'El desplegable «{}» puede usarse para acceder a instancias autoalojadas/personalizadas de cualquier fuente.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'No se ha podido analizar el APK (incompatible o descarga parcial)',
			'beforeNewInstallsShareToAppVerifier' => 'Compartir apps nuevas con AppVerifier (si está instalado)',
			'appVerifierInstructionToast' => 'Comparta con AppVerifier y vuelva aquí cuando esté listo.',
			'wiki' => 'Ayuda/Wiki',
			'wikiHint' => 'Abrir documentación de la wiki de Updatium',
			'allowInsecure' => 'Permitir peticiones HTTP inseguras',
			'stayOneVersionBehind' => 'Mantenerse una versión por detrás de la última',
			'useFirstApkOfVersion' => 'Auto-selección del primero de múltiples APKs',
			'refreshBeforeDownload' => 'Actualizar datos de la app antes de descargarla',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nombre',
			'smartname' => 'Nombre (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Clasificación por',
			'welcome' => 'Bienvenido',
			'batteryOptimizationNote' => 'Ten en cuenta que las descargas en segundo plano pueden funcionar de forma más fiable si desactivas las optimizaciones de batería del sistema operativo para Updatium.',
			'fileDeletionError' => 'No se ha podido eliminar el archivo (intenta eliminarlo manualmente y vuelve a probar): "{}"',
			'foregroundService' => 'Servicio Updatium en primer plano',
			'foregroundServiceExplanation' => 'Usar un servicio en primer plano para comprobar las actualizaciones (más fiable, consume más energía).',
			'fgServiceNotice' => 'Esta notificación es necesaria para la comprobación de actualizaciones en segundo plano (puede ocultarse en la configuración del sistema operativo).',
			'excludeSecrets' => 'Excluir secretos',
			'GHReqPrefix' => 'Instancia \'omeritzics/Updatium\' para las\nsolicitudes de GitHub',
			'includeZips' => 'Incluir archivos ZIP',
			'zippedApkFilterRegEx' => 'Filtrar APKs dentro del ZIP',
			'multipleSigners' => 'Múltiples firmas',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '¿Eliminar la aplicación?', other: '¿Eliminar las aplicaciones?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: 'Muchas peticiones (limitado); pruebe de nuevo en {count} minuto', other: 'Muchas peticiones (limitado); pruebe de nuevo en {count} minutos', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: 'La comprobación de actualizaciones en segundo plano se ha encontrado un {error}; se volverá a probar en {count} minuto', other: 'La comprobación de actualizaciones en segundo plano se ha encontrado un {error}; se volverá a probar en {count} minutos', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: 'La comprobación de actualizaciones en segundo plano ha encontrado {count} actualización; se le notificará si es necesario', other: 'La comprobación de actualizaciones en segundo plano ha encontrado {count} actualizaciones; se le notificará si es necesario', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{count} aplicación', other: '{count} aplicaciones', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{count} URL', other: '{count} URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{count} minuto', other: '{count} minutos', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{count} hora', other: '{count} horas', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{count} día', other: '{count} días', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: 'Eliminado {n} registro (previo a = {before}, posterior a = {after})', other: 'Eliminados {n} registros (previos a = {before}, posteriores a = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{app} y 1 aplicación más tiene actualizaciones.', other: '{app} y {count} aplicaciones más tienen actualizaciones.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{app} y 1 aplicación más se han actualizado.', other: '{app} y {count} aplicaciones más se han actualizado.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: 'Error al actualizar {app} y 1 aplicación más.', other: 'No se han podido actualizar {app} y {count} aplicaciones más.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{app} y 1 aplicación más podría haber sido actualizada.', other: '{app} y {count} aplicaciones más podrían haber sido actualizadas.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('es'))(n, one: 'Certificado Hash', other: 'Hashes certificado', ), 
			'securityDisclaimerTitle' => 'Aviso Legal y de Seguridad',
			'license' => 'Licencia',
			'licenseText' => 'Esta aplicación se distribuye bajo la Licencia GPL v3.',
			'disclaimer' => 'Descargo de responsabilidad',
			'disclaimerText' => 'Esta aplicación no distribuye, aloja ni verifica ninguna de las aplicaciones externas. El usuario asume toda la responsabilidad sobre la seguridad y legalidad de cualquier software instalado a través de esta herramienta.\n\nhttps://github.com/omeritzics/Updatium es el único lugar oficial para descargar Updatium - es muy desaconsejable descargarlo de otros lugares ya que las fuentes no oficiales pueden ser inseguras.',
			'privacy' => 'Privacidad',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Aceptar y continuar',
			'decline' => 'Rechazar',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => '¿Disfrutando de Updatium?',
			'githubStarPromptContent' => 'Updatium es un proyecto comunitario de código abierto voluntario desarrollado en mi tiempo libre. Si te gustaría apoyar el proyecto, por favor considera darle una estrella en GitHub para ayudarnos a llegar a más usuarios y contribuidores. No volverás a recibir recordatorios sobre esto. ¡Gracias de antemano! :)',
			'githubStarPromptStar' => 'Dar estrella',
			'githubStarPromptDontShowAgain' => 'No volver a mostrar',
			'sourceCode' => 'Código fuente',
			'developedBy' => 'Desarrollado por',
			'appDescription' => 'Un catálogo de aplicaciones Android personalizable que te permite actualizar tus aplicaciones directamente desde sus fuentes APK.',
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
