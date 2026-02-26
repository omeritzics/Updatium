// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'La URL de la aplicación $p0 no es válida';
  }

  @override
  String get noReleaseFound => 'No se ha encontrado una versión válida';

  @override
  String get noVersionFound => 'No se ha podido determinar la versión';

  @override
  String get urlMatchesNoSource => 'La URL no coincide con ninguna fuente conocida';

  @override
  String get cantInstallOlderVersion => 'No se puede instalar una versión previa de la aplicación';

  @override
  String get appIdMismatch => 'El ID del paquete descargado no coincide con el ID de la aplicación instalada';

  @override
  String get functionNotImplemented => 'Esta clase no ha implementado esta función';

  @override
  String get placeholder => 'Espacio reservado';

  @override
  String get someErrors => 'Han ocurrido algunos errores';

  @override
  String get unexpectedError => 'Error inesperado';

  @override
  String get ok => 'Aceptar';

  @override
  String get and => 'y';

  @override
  String get githubPATLabel => 'Token de acceso personal a GitHub\n(reduce tiempos de espera)';

  @override
  String get includePrereleases => 'Incluir versiones preliminares';

  @override
  String get fallbackToOlderReleases => 'Retroceder a versiones previas';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtrar por título de versión';

  @override
  String get invalidRegEx => 'Expresión inválida';

  @override
  String get noDescription => 'Sin descripción';

  @override
  String get cancel => 'Cancelar';

  @override
  String get continue => 'Continuar';

  @override
  String get requiredInBrackets => '(Requerido)';

  @override
  String get dropdownNoOptsError => 'ERROR: EL DESPLEGABLE DEBE TENER AL MENOS UNA OPCIÓN';

  @override
  String get color => 'color';

  @override
  String get standard => 'Estándar';

  @override
  String get custom => 'A medida';

  @override
  String get useMaterialYou => 'Aplicar colores Material You';

  @override
  String get githubStarredRepos => 'repositorios favoritos en GitHub';

  @override
  String get uname => 'Nombre de usuario';

  @override
  String get wrongArgNum => 'Número de argumentos provistos inválido';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 es de \'sólo seguimiento\'';
  }

  @override
  String get source => 'fuente';

  @override
  String get app => 'Aplicación';

  @override
  String get appsFromSourceAreTrackOnly => 'Las aplicaciones de este origen son solo para seguimiento.';

  @override
  String get youPickedTrackOnly => 'Debe seleccionar la opción de \'solo para seguimiento\'.';

  @override
  String get trackOnlyAppDescription => 'Se hará el seguimiento de actualizaciones para la aplicación, pero Updatium no será capaz de descargar o actualizarla.';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get appAlreadyAdded => 'Aplicación añadida anteriormente';

  @override
  String get alreadyUpToDateQuestion => '¿Aplicación actualizada previamente?';

  @override
  String get addApp => 'Añadir aplicación';

  @override
  String get appSourceURL => 'URL origen de la aplicación';

  @override
  String get error => 'Error';

  @override
  String get add => 'Añadir';

  @override
  String get searchSomeSourcesLabel => 'Buscar (solo en algunas fuentes)';

  @override
  String get search => 'Buscar';

  @override
  String additionalOptsFor(Object p0) {
    return 'Opciones adicionales para $p0';
  }

  @override
  String get supportedSources => 'Fuentes admitidas';

  @override
  String get trackOnlyInBrackets => '(Solo para seguimiento)';

  @override
  String get searchableInBrackets => '(permite búsqueda)';

  @override
  String get appsString => 'Aplicaciones';

  @override
  String get noApps => '¡Bienvenido!';

  @override
  String get noAppsSubtext => 'Puedes agregar tu primera aplicación tocando \'Añadir aplicación\' abajo.';

  @override
  String get noAppsForFilter => 'Sin aplicaciones para filtrar';

  @override
  String byX(Object p0) {
    return 'por: $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Progreso: $p0 %';
  }

  @override
  String get pleaseWait => 'Espere...';

  @override
  String get updateAvailable => 'Actualización disponible';

  @override
  String get notInstalled => 'No instalado';

  @override
  String get pseudoVersion => 'pseudoversión';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String deselectX(Object p0) {
    return 'Deseleccionar $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 se eliminará de Updatium pero continuará instalada en el dispositivo.';
  }

  @override
  String get removeSelectedAppsQuestion => '¿Eliminar las aplicaciones seleccionadas?';

  @override
  String get removeSelectedApps => 'Eliminar aplicaciones seleccionadas';

  @override
  String updateX(Object p0) {
    return 'Actualizar $p0';
  }

  @override
  String installX(Object p0) {
    return 'Instalar $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Marcar $p0\n(solo para seguimiento)\ncomo actualizada';
  }

  @override
  String changeX(Object p0) {
    return 'Cambiar $p0';
  }

  @override
  String get installUpdateApps => 'Instalar/actualizar aplicaciones';

  @override
  String get installUpdateSelectedApps => 'Instalar/actualizar aplicaciones seleccionadas';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return '¿Marcar $p0 aplicaciones seleccionadas como actualizadas?';
  }

  @override
  String get no => 'No';

  @override
  String get yes => 'Sí';

  @override
  String get markSelectedAppsUpdated => 'Marcar como actualizadas';

  @override
  String get pinToTop => 'Anclar al principio';

  @override
  String get unpinFromTop => 'Desanclar del principio';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => '¿Reiniciar el estado de instalación para las aplicaciones seleccionadas?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Se reiniciará el estado de instalación de las aplicaciones seleccionadas.\n\nPuede ser de útil cuando la versión de la aplicación mostrada en Updatium es incorrecta por actualizaciones fallidas u otros motivos.';

  @override
  String get customLinkMessage => 'Estos enlaces funcionan en dispositivos con Updatium instalado';

  @override
  String get shareAppConfigLinks => 'Compartir configuración de la app como enlace HTML';

  @override
  String get shareSelectedAppURLs => 'Compartir URL de las apps seleccionadas';

  @override
  String get resetInstallStatus => 'Reiniciar estado de instalación';

  @override
  String get more => 'Más';

  @override
  String get removeOutdatedFilter => 'Eliminar filtro de aplicaciones desactualizado';

  @override
  String get showOutdatedOnly => 'Mostrar solo aplicaciones desactualizadas';

  @override
  String get filter => 'Filtrar';

  @override
  String get filterApps => 'Filtrar apps';

  @override
  String get appName => 'Nombre de app';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Aplicaciones actualizadas';

  @override
  String get nonInstalledApps => 'Apps no instaladas';

  @override
  String get importExport => 'Importar/Exportar';

  @override
  String get settings => 'Ajustes';

  @override
  String exportedTo(Object p0) {
    return 'Exportado a $p0';
  }

  @override
  String get updatiumExport => 'Exportar Updatium';

  @override
  String get invalidInput => 'Entrada no válida';

  @override
  String importedX(Object p0) {
    return 'Importado $p0';
  }

  @override
  String get updatiumImport => 'Importar Updatium';

  @override
  String get importFromURLList => 'Importar desde lista de URL';

  @override
  String get searchQuery => 'Término de búsqueda';

  @override
  String get appURLList => 'Lista de URL de aplicaciones';

  @override
  String get line => 'Línea';

  @override
  String searchX(Object p0) {
    return 'Buscar $p0';
  }

  @override
  String get noResults => 'No se ha encontrado ningún resultado';

  @override
  String importX(Object p0) {
    return 'Importar desde $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Las aplicaciones importadas podrían mostrarse incorrectamente como «No instalada».\nPara solucionarlo, reinstálelas a través de Updatium.\nEsto no debería afectar a los datos de las aplicaciones.\n\nSolo afecta a los URL y a los métodos de importación mediante terceros.';

  @override
  String get importErrors => 'Errores de Importación';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 de $p1 aplicaciones importadas.';
  }

  @override
  String get followingURLsHadErrors => 'Las URL siguientes han tenido problemas:';

  @override
  String get selectURL => 'Seleccionar URL';

  @override
  String get selectURLs => 'Seleccionar URLs';

  @override
  String get pick => 'Aceptar';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Oscuro';

  @override
  String get light => 'Claro';

  @override
  String get followSystem => 'Seguir al sistema';

  @override
  String get followSystemThemeExplanation => 'Seguir el tema del sistema sólo es posible utilizando aplicaciones de terceros';

  @override
  String get useBlackTheme => 'Negro puro en tema oscuro';

  @override
  String get appSortBy => 'Ordenar apps por';

  @override
  String get authorName => 'Autor/Nombre';

  @override
  String get nameAuthor => 'Nombre/Autor';

  @override
  String get asAdded => 'Según se añadieron';

  @override
  String get appSortOrder => 'Orden';

  @override
  String get ascending => 'Ascendente';

  @override
  String get descending => 'Descendente';

  @override
  String get bgUpdateCheckInterval => 'Comprobar actualizaciones en segundo plano';

  @override
  String get neverManualOnly => 'Nunca, solo manual';

  @override
  String get appearance => 'Apariencia';

  @override
  String get pinUpdates => 'Anclar actualizaciones al principio';

  @override
  String get updates => 'Actualizaciones';

  @override
  String get sourceSpecific => 'Fuente específica';

  @override
  String get appSource => 'Filtrar por fuente';

  @override
  String get noLogs => 'Ningún registro';

  @override
  String get appLogs => 'Registros';

  @override
  String get close => 'Cerrar';

  @override
  String get share => 'Compartir';

  @override
  String get appNotFound => 'Aplicación no encontrada';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-exportación';

  @override
  String get pickAnAPK => 'Seleccione una APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 tiene más de un paquete:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Su dispositivo admite las siguientes arquitecturas de procesador: $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Su dispositivo admite las siguientes arquitecturas de procesador:';

  @override
  String get warning => 'Aviso';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'La fuente de la aplicación es «$p0» pero el paquete de la actualización viene de «$p1». ¿Desea continuar?';
  }

  @override
  String get updatesAvailable => 'Actualizaciones Disponibles';

  @override
  String get updatesAvailableNotifDescription => 'Notifica al usuario de que hay actualizaciones para una o más aplicaciones monitoreadas por Updatium';

  @override
  String get noNewUpdates => 'No hay nuevas actualizaciones.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 tiene una actualización.';
  }

  @override
  String get appsUpdated => 'Apps actualizadas';

  @override
  String get appsNotUpdated => 'Error al actualizar las aplicaciones';

  @override
  String get appsUpdatedNotifDescription => 'Notifica al usuario de que una o más aplicaciones han sido actualizadas en segundo plano';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 ha sido actualizada a $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Error al actualizar $p0 a $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Error al buscar actualizaciones';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Una notificación que muestra cuándo la comprobación de actualizaciones en segundo plano falla';

  @override
  String get appsRemoved => 'Aplicaciones eliminadas';

  @override
  String get appsRemovedNotifDescription => 'Notifica al usuario que una o más aplicaciones fueron eliminadas por problemas al cargarlas';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 ha sido eliminada por: $p1';
  }

  @override
  String get completeAppInstallation => 'Instalación completa de la aplicación';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium debe estar abierto para instalar aplicaciones';

  @override
  String get completeAppInstallationNotifDescription => 'Le pide volver a Updatium para terminar de instalar una aplicación';

  @override
  String get checkingForUpdates => 'Buscando actualizaciones...';

  @override
  String get checkingForUpdatesNotifDescription => 'Notificación temporal que aparece al buscar actualizaciones';

  @override
  String get pleaseAllowInstallPerm => 'Permita que Updatium instale aplicaciones';

  @override
  String get trackOnly => 'Solo para seguimiento';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Error $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Corrección de versiones desactivada (el plugin parece no funcionar)';

  @override
  String get unknown => 'Desconocido';

  @override
  String get none => 'Ninguno';

  @override
  String get all => 'Todos';

  @override
  String get never => 'Nunca';

  @override
  String latestVersionX(Object p0) {
    return 'Última versión: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Versión instalada: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Última comprobación: $p0';
  }

  @override
  String get remove => 'Eliminar';

  @override
  String get yesMarkUpdated => 'Sí, marcar como actualizada';

  @override
  String get fdroid => 'F-Droid oficial';

  @override
  String get appIdOrName => 'ID o Nombre de la aplicación';

  @override
  String get appId => 'ID de la app';

  @override
  String get appWithIdOrNameNotFound => 'No se han encontrado aplicaciones con ese ID o nombre';

  @override
  String get reposHaveMultipleApps => 'Los repositorios pueden contener varias aplicaciones';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid terceros';

  @override
  String get install => 'Instalar';

  @override
  String get markInstalled => 'Marcar como instalada';

  @override
  String get update => 'Actualizar';

  @override
  String get updated => 'Actualizado';

  @override
  String get markUpdated => 'Marcar como actualizada';

  @override
  String get additionalOptions => 'Opciones adicionales';

  @override
  String get disableVersionDetection => 'Desactivar la detección de versiones';

  @override
  String get noVersionDetectionExplanation => 'Esta opción solo se debe usar en aplicaciones en las que la deteción de versiones pueda que no funcionar correctamente.';

  @override
  String downloadingX(Object p0) {
    return 'Descargando $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Descargar $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Descargado $p0';
  }

  @override
  String get releaseAsset => 'Recurso publicado';

  @override
  String get downloadNotifDescription => 'Notifica al usuario del progreso de descarga de una aplicación';

  @override
  String get noAPKFound => 'No se ha encontrado el paquete de instalación APK';

  @override
  String get noVersionDetection => 'Sin detección de versiones';

  @override
  String get categorize => 'Catogorizar';

  @override
  String get categories => 'Categorías';

  @override
  String get category => 'Categoría';

  @override
  String get noCategory => 'Sin categoría';

  @override
  String get noCategories => 'Sin categorías';

  @override
  String get deleteCategoriesQuestion => '¿Eliminar las categorías?';

  @override
  String get categoryDeleteWarning => 'Todas las aplicaciones en las categorías eliminadas se marcarán como «Sin categoría».';

  @override
  String get addCategory => 'Añadir categoría';

  @override
  String get label => 'Nombre';

  @override
  String get language => 'Idioma';

  @override
  String get copiedToClipboard => 'Copiado en el portapapeles';

  @override
  String get storagePermissionDenied => 'Permiso de almacenamiento rechazado';

  @override
  String get selectedCategorizeWarning => 'Esto reemplazará cualquier ajuste de categoría para las aplicaciones seleccionadas.';

  @override
  String get filterAPKsByRegEx => 'Filtrar por APK';

  @override
  String get removeFromUpdatium => 'Eliminar de Updatium';

  @override
  String get uninstallFromDevice => 'Desinstalar del dispositivo';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Solo funciona para aplicaciones con la detección de versiones desactivada.';

  @override
  String get releaseDateAsVersion => 'Usar fecha de publicación como cadena de versión';

  @override
  String get releaseTitleAsVersion => 'Usar título de lanzamiento como cadena de versión';

  @override
  String get releaseDateAsVersionExplanation => 'Esta opción solo se debería usar con aplicaciones en las que la detección de versiones no funciona pero hay disponible una fecha de publicación.';

  @override
  String get changes => 'Cambios';

  @override
  String get releaseDate => 'Fecha de publicación';

  @override
  String get importFromURLsInFile => 'Importar URLs desde archivo (como OPML)';

  @override
  String get versionDetectionExplanation => 'Conciliar cadena de versión con versión detectada por el sistema operativo';

  @override
  String get versionDetection => 'Detección de versiones';

  @override
  String get standardVersionDetection => 'Por versión';

  @override
  String get groupByCategory => 'Agrupar por categoría';

  @override
  String get listView => 'Vista de lista';

  @override
  String get gridView => 'Vista de cuadrícula';

  @override
  String get autoApkFilterByArch => 'Filtrar APK por arquitectura del procesador (si es posible)';

  @override
  String get autoLinkFilterByArch => 'Intente filtrar los enlaces por arquitectura de CPU si es posible';

  @override
  String get overrideSource => 'Forzar desde la fuente';

  @override
  String get dontShowAgain => 'No mostrar de nuevo';

  @override
  String get dontShowTrackOnlyWarnings => 'No mostrar avisos sobre apps \'solo para seguimiento\'';

  @override
  String get dontShowAPKOriginWarnings => 'No mostrar avisos sobre las fuentes de las APKs';

  @override
  String get moveNonInstalledAppsToBottom => 'Mover apps no instaladas al final';

  @override
  String get hideNonInstalledApps => 'Ocultar apps no instaladas';

  @override
  String get gitlabPATLabel => 'Token de acceso personal a GitLab';

  @override
  String get about => 'Acerca de';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0: Esto requiere credenciales adicionales (en ajustes)';
  }

  @override
  String get checkOnStart => 'Comprobar actualizaciones al inicio';

  @override
  String get tryInferAppIdFromCode => 'Intentar deducir el ID de la app por el código fuente';

  @override
  String get removeOnExternalUninstall => 'Auto eliminar apps desinstaladas externamente';

  @override
  String get pickHighestVersionCode => 'Auto selección de versión superior del paquete APK';

  @override
  String get checkUpdateOnDetailPage => 'Comprobar actualizaciones al abrir detalles de la app';

  @override
  String get disablePageTransitions => 'Deshabilitar animaciones de transición';

  @override
  String get reversePageTransitions => 'Invertir animaciones de transición';

  @override
  String get minStarCount => 'Número Mínimo de Estrellas';

  @override
  String get addInfoBelow => 'Añadir esta información debajo.';

  @override
  String get addInfoInSettings => 'Puede añadir esta información en Ajustes.';

  @override
  String get githubSourceNote => 'La limitación de velocidad de GitHub puede evitarse con un \'token de acceso personal\'.';

  @override
  String get sortByLastLinkSegment => 'Ordenar sólo por el último segmento del enlace';

  @override
  String get filterReleaseNotesByRegEx => 'Filtrar por notas de versión (release notes)';

  @override
  String get customLinkFilterRegex => 'Filtro personalizado de enlace APK (por defecto \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Actualización de apps intentada';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Notifica al usuario que las actualizaciones en segundo plano podrían haberse realizado para una o más aplicaciones';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 podría estar actualizada a $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Habilitar actualizaciones en segundo plano';

  @override
  String get backgroundUpdateReqsExplanation => 'Las actualizaciones en segundo plano pueden no estar disponibles para todas las aplicaciones.';

  @override
  String get backgroundUpdateLimitsExplanation => 'El éxito de las instalaciones en segundo plano solo se puede comprobar con Updatium abierto.';

  @override
  String get verifyLatestTag => 'Comprobar etiqueta \'Latest\'';

  @override
  String get intermediateLinkRegex => 'Filtrar por enlace \'intermedio\' para visitar primero';

  @override
  String get filterByLinkText => 'Filtrar enlaces por texto del enlace';

  @override
  String get matchLinksOutsideATags => 'Enlaces coincidentes fuera de las etiquetas <a>';

  @override
  String get intermediateLinkNotFound => 'Enlace intermedio no encontrado';

  @override
  String get intermediateLink => 'Enlace intermedio';

  @override
  String get exemptFromBackgroundUpdates => 'No actualizar en segundo plano (si está habilitado)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Deshabilitar las actualizaciones en segundo plano sin Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Desactiva las actualizaciones en segundo plano cuando no estés cargando';

  @override
  String get autoSelectHighestVersionCode => 'Auto selección del paquete APK con la última versión';

  @override
  String get versionExtractionRegEx => 'Versión de extracción RegEx';

  @override
  String get trimVersionString => 'Recortar cadena de versión con RegEx';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Grupo de coincidencia a usar para\n\"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Grupo a usar para versión de extracción RegEx';

  @override
  String get highlightTouchTargets => 'Resaltar objetivos menos obvios';

  @override
  String get pickExportDir => 'Directorio para exportar';

  @override
  String get autoExportOnChanges => 'Auto exportar si hay cambios';

  @override
  String get includeSettings => 'Incluir ajustes';

  @override
  String get filterVersionsByRegEx => 'Filtrar por versiones';

  @override
  String get trySelectingSuggestedVersionCode => 'Pruebe seleccionando la versión del paquete APK sugerida';

  @override
  String get dontSortReleasesList => 'Mantener el order de publicación de la fuente original';

  @override
  String get reverseSort => 'Orden inverso';

  @override
  String get takeFirstLink => 'Usar primer enlace';

  @override
  String get skipSort => 'Omitir orden';

  @override
  String get debugMenu => 'Menu Depurar';

  @override
  String get bgTaskStarted => 'Iniciada tarea en segundo plano; revise los registros.';

  @override
  String get runBgCheckNow => 'Ejecutar verficiación de actualizaciones en segundo plano';

  @override
  String get versionExtractWholePage => 'Aplicar la versión de extracción RegEx a la página entera';

  @override
  String get installing => 'Instalando';

  @override
  String get skipUpdateNotifications => 'No notificar sobre actualizaciones';

  @override
  String get updatesAvailableNotifChannel => 'Actualizaciones disponibles';

  @override
  String get appsUpdatedNotifChannel => 'Aplicaciones actualizadas';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Se ha intentado actualizar la aplicación';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Error buscando actualizaciones';

  @override
  String get appsRemovedNotifChannel => 'Aplicaciones eliminadas';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Descargando $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Instalación completada';

  @override
  String get checkingForUpdatesNotifChannel => 'Buscando actualizaciones';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Comprobar actualizaciones solo para apps instaladas o en seguimiento';

  @override
  String get supportFixedAPKURL => 'Soporte para URLs fijas de APK';

  @override
  String selectX(Object p0) {
    return 'Seleccionar $p0';
  }

  @override
  String get parallelDownloads => 'Permitir descargas paralelas';

  @override
  String get useShizuku => 'Usar Shizuku o Sui para instalar';

  @override
  String get shizukuBinderNotFound => 'Shizuku no funciona';

  @override
  String get shizukuOld => 'Versión antigua de Shizuku (<11) - actualícela';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku corriendo en Android < 8.1 con ADB - actualiza Android o usa Sui en su lugar';

  @override
  String get shizukuPretendToBeGooglePlay => 'Usar Google Play como fuente de instalación (si se usa Shizuku)';

  @override
  String get useSystemFont => 'Usar fuente del sistema';

  @override
  String get useVersionCodeAsOSVersion => 'Usar versión de la app como versión detectada por el sistema operativo';

  @override
  String get requestHeader => 'Encabezado de solicitud';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Usar última subida del recurso como fecha de lanzamiento';

  @override
  String get defaultPseudoVersioningMethod => 'Método de pseudoversionado predeterminado';

  @override
  String get partialAPKHash => 'Hash de APK parcial';

  @override
  String get apkLinkHash => 'Hash de enlace APK';

  @override
  String get directAPKLink => 'Enlace APK directo';

  @override
  String get pseudoVersionInUse => 'Se está usando una pseudoversión';

  @override
  String get installed => 'Instalada';

  @override
  String get latest => 'Última versión';

  @override
  String get invertRegEx => 'Invertir expresión regular';

  @override
  String get note => 'Nota';

  @override
  String selfHostedNote(Object p0) {
    return 'El desplegable «$p0» puede usarse para acceder a instancias autoalojadas/personalizadas de cualquier fuente.';
  }

  @override
  String get badDownload => 'No se ha podido analizar el APK (incompatible o descarga parcial)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Compartir apps nuevas con AppVerifier (si está instalado)';

  @override
  String get appVerifierInstructionToast => 'Comparta con AppVerifier y vuelva aquí cuando esté listo.';

  @override
  String get wiki => 'Ayuda/Wiki';

  @override
  String get allowInsecure => 'Permitir peticiones HTTP inseguras';

  @override
  String get stayOneVersionBehind => 'Mantenerse una versión por detrás de la última';

  @override
  String get useFirstApkOfVersion => 'Auto-selección del primero de múltiples APKs';

  @override
  String get refreshBeforeDownload => 'Actualizar datos de la app antes de descargarla';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Nombre';

  @override
  String get smartname => 'Nombre (Smart)';

  @override
  String get sortMethod => 'Clasificación por';

  @override
  String get welcome => 'Bienvenido';

  @override
  String get documentationLinksNote => 'La página GitHub de Updatium enlazada a continuación contiene enlaces a vídeos, artículos, debates y otros recursos que te ayudarán a entender cómo utilizar la aplicación.';

  @override
  String get batteryOptimizationNote => 'Ten en cuenta que las descargas en segundo plano pueden funcionar de forma más fiable si desactivas las optimizaciones de batería del sistema operativo para Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'No se ha podido eliminar el archivo (intenta eliminarlo manualmente y vuelve a probar): \"$p0\"';
  }

  @override
  String get foregroundService => 'Servicio Updatium en primer plano';

  @override
  String get foregroundServiceExplanation => 'Usar un servicio en primer plano para comprobar las actualizaciones (más fiable, consume más energía).';

  @override
  String get fgServiceNotice => 'Esta notificación es necesaria para la comprobación de actualizaciones en segundo plano (puede ocultarse en la configuración del sistema operativo).';

  @override
  String get excludeSecrets => 'Excluir secretos';

  @override
  String get ghReqPrefix => 'Instancia \'sky22333/hubproxy\' para las\nsolicitudes de GitHub';

  @override
  String get includeZips => 'Incluir archivos ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrar APKs dentro del ZIP';

  @override
  String get googleVerificationWarningP1 => 'Google ha anunciado que, a partir de 2026/2027, todas las aplicaciones en dispositivos Android \"certificados\" requerirán que el desarrollador envíe detalles de identidad personal directamente a Google.\n\nDespués de eso, Updatium puede dejar de funcionar en dispositivos Android certificados.';

  @override
  String get googleVerificationWarningP2 => 'Vaya a https://keepandroidopen.org/ para más información.';

  @override
  String get googleVerificationWarningP3 => 'Tenga en cuenta que a corto plazo, puede seguir siendo posible instalar aplicaciones \"no verificadas\" (no compatibles) a través de un proceso de \"flujo avanzado\" que Google ha prometido implementar después de una reacción amplia a su anuncio, pero no han detallado cómo funcionaría así que no está claro si realmente preservará las libertades de los usuarios de cualquier manera práctica.\n\nEn cualquier caso, el movimiento de Google es un paso significativo hacia el final de la computación libre de uso general para los individuos.\n\nLos sistemas operativos no certificados, como GrapheneOS, no deberían ser afectados por esto mientras se les permita seguir existiendo.';

  @override
  String get multipleSigners => 'Múltiples firmas';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '¿Eliminar las aplicaciones?',
      one: '¿Eliminar la aplicación?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Muchas peticiones (limitado); pruebe de nuevo en $count minutos',
      one: 'Muchas peticiones (limitado); pruebe de nuevo en $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La comprobación de actualizaciones en segundo plano se ha encontrado un $count; se volverá a probar en $count minutos',
      one: 'La comprobación de actualizaciones en segundo plano se ha encontrado un $count; se volverá a probar en $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La comprobación de actualizaciones en segundo plano ha encontrado $count actualizaciones; se le notificará si es necesario',
      one: 'La comprobación de actualizaciones en segundo plano ha encontrado $count actualización; se le notificará si es necesario',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplicaciones',
      one: '$count aplicación',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URL',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutos',
      one: '$count minuto',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horas',
      one: '$count hora',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count días',
      one: '$count día',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Eliminados $n registros (previos a = $before, posteriores a = $after)',
      one: 'Eliminado $n registro (previo a = $before, posterior a = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count y $count aplicaciones más tienen actualizaciones.',
      one: '$count y 1 aplicación más tiene actualizaciones.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count y $count aplicaciones más se han actualizado.',
      one: '$count y 1 aplicación más se han actualizado.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'No se han podido actualizar $count y $count aplicaciones más.',
      one: 'Error al actualizar $count y 1 aplicación más.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count y $count aplicaciones más podrían haber sido actualizadas.',
      one: '$count y 1 aplicación más podría haber sido actualizada.',
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
      other: 'Hashes certificado',
      one: 'Certificado Hash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Aviso Legal y de Seguridad';

  @override
  String get license => 'Licencia';

  @override
  String get licenseText => 'Esta aplicación se distribuye bajo la Licencia GPL v3.';

  @override
  String get disclaimer => 'Descargo de responsabilidad';

  @override
  String get disclaimerText => 'Esta aplicación no distribuye, aloja ni verifica ninguna de las aplicaciones externas. El usuario asume toda la responsabilidad sobre la seguridad y legalidad de cualquier software instalado a través de esta herramienta.\n\nhttps://github.com/omeritzics/Updatium es el único lugar oficial para descargar Updatium - es muy desaconsejable descargarlo de otros lugares ya que las fuentes no oficiales pueden ser inseguras.';

  @override
  String get privacy => 'Privacidad';

  @override
  String get privacyText => 'Esta aplicación está centrada en la privacidad y no recopila datos personales.';

  @override
  String get acceptAndContinue => 'Aceptar y continuar';

  @override
  String get decline => 'Rechazar';
}
