// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Galician (`gl`).
class AppLocalizationsGl extends AppLocalizations {
  AppLocalizationsGl([String locale = 'gl']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'URL da app  non válido';
  }

  @override
  String get noReleaseFound => 'Non se atopou unha publicación axeitada';

  @override
  String get noVersionFound =>
      'Non se puido determinar a versión da publicación';

  @override
  String get urlMatchesNoSource => 'O URL non concorda cunha fonte coñecida';

  @override
  String get cantInstallOlderVersion =>
      'Non se pode instalar unha versión máis antiga dunha app';

  @override
  String get appIdMismatch =>
      'O ID do paquete descargado non concorda co ID dunha app existente';

  @override
  String get functionNotImplemented =>
      'Esta clase non ten implementada esta función';

  @override
  String get placeholder => 'Marcador';

  @override
  String get someErrors => 'Houbo fallos';

  @override
  String get unexpectedError => 'Erro non agardado';

  @override
  String get ok => 'OK';

  @override
  String get and => 'e';

  @override
  String get githubPATLabel =>
      'Token persoal de acceso a GitHub (aumenta a taxa límite)';

  @override
  String get includePrereleases => 'Incluír prepublicacións';

  @override
  String get fallbackToOlderReleases => 'Apoiarse en publicacións máis antigas';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filtrar título das publicacións con expresión regulares';

  @override
  String get invalidRegEx => 'Expresión regular non válida';

  @override
  String get noDescription => 'Sen descrición';

  @override
  String get cancel => 'Cancelar';

  @override
  String get requiredInBrackets => '(requerido)';

  @override
  String get dropdownNoOptsError =>
      'ERRO: DESPREGABLE TEN QUE TER 1 OPCIÓN POLO MENOS';

  @override
  String get color => 'Cor';

  @override
  String get standard => 'Estándar';

  @override
  String get custom => 'Persoal';

  @override
  String get useMaterialYou => 'Usar cores Material You';

  @override
  String get githubStarredRepos => 'Repositorios GitHub con estrela';

  @override
  String get uname => 'Identificador';

  @override
  String get wrongArgNum => 'Número de argumentos proporcionados incorrecto';

  @override
  String xIsTrackOnly(String arg1) {
    return ' é de só-seguimento';
  }

  @override
  String get source => 'Fonte';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly =>
      'As apps desta fonte son de \'só-seguimento\'.';

  @override
  String get youPickedTrackOnly => 'Seleccionaches a opción \'só-seguimento\'.';

  @override
  String get trackOnlyAppDescription =>
      'Vanse comprobar as actualizacións da app, pero Obtanium non poderá descargalas ou instalalas.';

  @override
  String get cancelled => 'Cancelada';

  @override
  String get appAlreadyAdded => 'A app xa está engadida';

  @override
  String get alreadyUpToDateQuestion => 'Está a app ao día?';

  @override
  String get addApp => 'Engadir app';

  @override
  String get appSourceURL => 'URL de orixe da app';

  @override
  String get error => 'Erro';

  @override
  String get add => 'Engadir';

  @override
  String get searchSomeSourcesLabel => 'Buscar (só algunhas fontes)';

  @override
  String get search => 'Buscar';

  @override
  String additionalOptsFor(String arg1) {
    return 'Opcións adicionais para ';
  }

  @override
  String get supportedSources => 'Fontes compatibles';

  @override
  String get trackOnlyInBrackets => '(só-seguimento)';

  @override
  String get searchableInBrackets => '(buscable)';

  @override
  String get appsString => 'Apps';

  @override
  String get noApps => 'Sen apps';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Sen apps para filtrar';

  @override
  String byX(String arg1) {
    return 'Por ';
  }

  @override
  String percentProgress(String arg1) {
    return 'Progreso: %';
  }

  @override
  String get pleaseWait => 'Agarda';

  @override
  String get updateAvailable => 'Actualización dispoñible';

  @override
  String get notInstalled => 'Non instalada';

  @override
  String get pseudoVersion => 'pseudo-versión';

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String deselectX(String arg1) {
    return 'Non seleccionar ';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return 'Vaise retirar  de Updatium pero seguirá instalada no dispositivo.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Retirar as apps seleccionadas?';

  @override
  String get removeSelectedApps => 'Retirar apps seleccionadas';

  @override
  String updateX(String arg1) {
    return 'Actualizar ';
  }

  @override
  String installX(String arg1) {
    return 'Instalar ';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Marcar \\n(só-seguimento)\\ncomo actualizada';
  }

  @override
  String changeX(String arg1) {
    return 'Cambiar ';
  }

  @override
  String get installUpdateApps => 'Instalar/actualizar apps';

  @override
  String get installUpdateSelectedApps =>
      'Instalar/actualiazar apps seleccionadas';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Marcar  apps seleccionadas como actualizadas?';
  }

  @override
  String get no => 'Non';

  @override
  String get yes => 'Si';

  @override
  String get markSelectedAppsUpdated =>
      'Marcar apps seleccionadas como actualizadas';

  @override
  String get pinToTop => 'Fixar arriba';

  @override
  String get unpinFromTop => 'Non fixar arriba';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Restablecer o estado de instalación das apps seleccionadas?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Vaise restablecer o estado de instalación de todas as app seleccionadas.\\n\\nIsto pode ser de axuda cando a versión da app mostrada en Obtanium non é correcta debido a actualizacións que fallaron ou outros problemas.';

  @override
  String get customLinkMessage =>
      'Estas ligazóns funcionan en dispositivos onde Obtanium está instalada';

  @override
  String get shareAppConfigLinks =>
      'Compartir a configuración da app como ligazón HTML';

  @override
  String get shareSelectedAppURLs => 'Compartir o URL das apps seleccionadas';

  @override
  String get resetInstallStatus => 'Restablecer estado de instalación';

  @override
  String get more => 'Máis';

  @override
  String get removeOutdatedFilter => 'Retirar o filtro de app desactualizada';

  @override
  String get showOutdatedOnly => 'Mostrar só apps desactualizadas';

  @override
  String get filter => 'Filtrar';

  @override
  String get filterApps => 'Filtrar apps';

  @override
  String get appName => 'Nome da app';

  @override
  String get author => 'Autoría';

  @override
  String get upToDateApps => 'Apss ao día';

  @override
  String get nonInstalledApps => 'Apps non instaladas';

  @override
  String get importExport => 'Importar/Exportar';

  @override
  String get settings => 'Axustes';

  @override
  String exportedTo(String arg1) {
    return 'Exportada a ';
  }

  @override
  String get updatiumExport => 'Exportación Obtanium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Saída incorrecta';

  @override
  String importedX(String arg1) {
    return ' importada';
  }

  @override
  String get updatiumImport => 'Importación Updatium';

  @override
  String get importFromURLList => 'Importar desde lista de URL';

  @override
  String get searchQuery => 'Consulta da busca';

  @override
  String get appURLList => 'Lista de URL de apps';

  @override
  String get line => 'Liña';

  @override
  String searchX(String arg1) {
    return 'Buscar ';
  }

  @override
  String get noResults => 'Sen resultados';

  @override
  String importX(String arg1) {
    return 'Importar ';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'As apps importadas poderían mostrarse de xeito incorrecto como \\\"non instaladas\\\".\\nPara solucionar isto, reinstálaas usando Updatium.\\nAsí non deberían verse afectados os datos da app.\\n\\nSó afecta ao URL e aos métodos de importación de terceiras partes.';

  @override
  String get importErrors => 'Erros ao importar';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return ' de  apps importadas.';
  }

  @override
  String get followingURLsHadErrors => 'Os seguintes URL tiñan erros:';

  @override
  String get selectURL => 'Seleccionar URL';

  @override
  String get selectURLs => 'Seleccionar URLs';

  @override
  String get pick => 'Elixir';

  @override
  String get theme => 'Decorado';

  @override
  String get dark => 'Escuro';

  @override
  String get light => 'Claro';

  @override
  String get followSystem => 'Seguir ao sistema';

  @override
  String get followSystemThemeExplanation =>
      'Seguir o decorado do sistema só é posible usando aplicacións de terceiras partes';

  @override
  String get useBlackTheme => 'Usar decorado escuro con negro verdadeiro';

  @override
  String get appSortBy => 'Ordear por';

  @override
  String get authorName => 'Autoría/nome';

  @override
  String get nameAuthor => 'Nome/autoría';

  @override
  String get asAdded => 'Engadida o';

  @override
  String get appSortOrder => 'Orde para as apps';

  @override
  String get ascending => 'Ascendente';

  @override
  String get descending => 'Descendente';

  @override
  String get bgUpdateCheckInterval => 'Período para comprobar actualizacións';

  @override
  String get neverManualOnly => 'Nunca - so manual';

  @override
  String get appearance => 'Aparencia';

  @override
  String get pinUpdates =>
      'Fixar actualizacións na parte superior da vista de apps';

  @override
  String get updates => 'Actualizacións';

  @override
  String get sourceSpecific => 'Orixe-específica';

  @override
  String get appSource => 'Orixe da app';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Sen rexistros';

  @override
  String get appLogs => 'Rexistros da app';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Fechar';

  @override
  String get share => 'Compartir';

  @override
  String get appNotFound => 'Non se atopa a app';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'exportación-updatium';

  @override
  String get pickAnAPK => 'Selecciona un APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return ' ten máis dun paquete:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'O teu dispositivo é compatible coa arquitectura de CPU .';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'O teu dispositivo é compatible coas seguintes arquitecturas de CPU:';

  @override
  String get warning => 'Aviso';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'A orixe da app é \'\' pero o paquete da publicación procede de \'\'. Continuar?';
  }

  @override
  String get updatesAvailable => 'Actualizacións dispoñibles';

  @override
  String get updatesAvailableNotifDescription =>
      'Informa á usuaria de que hai actualizacións dispoñibles para unha ou varias apps seguidas por Updatium';

  @override
  String get noNewUpdates => 'Sen actualizacións.';

  @override
  String xHasAnUpdate(String arg1) {
    return 'Hai unha actualización para .';
  }

  @override
  String get appsUpdated => 'Apps actualizadas';

  @override
  String get appsNotUpdated => 'Fallou a actualización das aplicacións';

  @override
  String get appsUpdatedNotifDescription =>
      'Informa á usuaria de que se aplicaron en segundo plano actualizacións para unha ou varias apps';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return ' actualizouse a .';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Fallou a actualización de  a .';
  }

  @override
  String get errorCheckingUpdates => 'Erro ao comprobar as actualizacións';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Unha notificación que se mostra cando falla a actualización en segundo plano';

  @override
  String get appsRemoved => 'Apps retiradas';

  @override
  String get appsRemovedNotifDescription =>
      'Informa á usuaria de que se retiraron unha ou varias apps debido a erros ao cargalas';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return 'Retirouse  debido a este erro: ';
  }

  @override
  String get completeAppInstallation => 'Instalación completa da app';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium ten que estar aberta para instalar apps';

  @override
  String get completeAppInstallationNotifDescription =>
      'Pídelle á usuaria volver a Updatium para acabar de instalar a app';

  @override
  String get checkingForUpdates => 'Comprobando actualizacións';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Notificación temporal que aparece ao buscar actualizacións';

  @override
  String get pleaseAllowInstallPerm => 'Permite que Updatium instale apps';

  @override
  String get trackOnly => 'Só-seguimento';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Erro ';
  }

  @override
  String get versionCorrectionDisabled =>
      'Corrección da versión desactivada (parece que o complemento non funciona)';

  @override
  String get unknown => 'Descoñecido';

  @override
  String get none => 'Nada';

  @override
  String get all => 'Todo';

  @override
  String get never => 'Nunca';

  @override
  String latestVersionX(String arg1) {
    return 'Última: ';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Instalada: ';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Última comprobación: ';
  }

  @override
  String get remove => 'Retirar';

  @override
  String get yesMarkUpdated => 'Si, marcar como actualizada';

  @override
  String get fdroid => 'Oficial de F-Droid';

  @override
  String get appIdOrName => 'ID da app ou nome';

  @override
  String get appId => 'ID da app';

  @override
  String get appWithIdOrNameNotFound =>
      'Non se atopa ningunha app con ese ID ou nome';

  @override
  String get reposHaveMultipleApps =>
      'Os repositorios poden conter varias apps';

  @override
  String get fdroidThirdPartyRepo => 'Repositorio F-Droid de terceiras partes';

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
  String get install => 'Instalar';

  @override
  String get markInstalled => 'Marcar como instalada';

  @override
  String get update => 'Actualizar';

  @override
  String get updated => 'Actualizada';

  @override
  String get markUpdated => 'Marcar como actualizada';

  @override
  String get additionalOptions => 'Opcións adicionais';

  @override
  String get disableVersionDetection => 'Desactivar detección da versión';

  @override
  String get noVersionDetectionExplanation =>
      'Esta opción só se debería usar coas apps nas que a detección da versión non funciona correctamente.';

  @override
  String downloadingX(String arg1) {
    return 'Descargando ';
  }

  @override
  String downloadX(String arg1) {
    return 'Descargar ';
  }

  @override
  String downloadedX(String arg1) {
    return 'Descargado ';
  }

  @override
  String get releaseAsset => 'Liberar activos';

  @override
  String get downloadNotifDescription =>
      'Informa á usuaria do progreso da descarga da app';

  @override
  String get noAPKFound => 'Non se atopa o APK';

  @override
  String get noVersionDetection => 'Non se detecta a versión';

  @override
  String get categorize => 'Categorizar';

  @override
  String get categories => 'Categorías';

  @override
  String get category => 'Categoría';

  @override
  String get noCategory => 'Sen categoría';

  @override
  String get noCategories => 'Sen categorías';

  @override
  String get deleteCategoriesQuestion => 'Eliminar categorías?';

  @override
  String get categoryDeleteWarning =>
      'Todas as apps nas categorías eliminadas quedarán sen categorizar.';

  @override
  String get addCategory => 'Engadir categoría';

  @override
  String get label => 'Etiqueta';

  @override
  String get language => 'Idioma';

  @override
  String get copiedToClipboard => 'Copiado ao portapapeis';

  @override
  String get storagePermissionDenied => 'Sen permiso para almacenaxe';

  @override
  String get selectedCategorizeWarning =>
      'Isto substituirá calquera todas as categorías existentes nas apps seleccionadas.';

  @override
  String get filterAPKsByRegEx => 'Filtrar APKs cunha expresión regular';

  @override
  String get removeFromUpdatium => 'Retirar de Updatium';

  @override
  String get uninstallFromDevice => 'Desinstalar do dispositivo';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Só funciona para as apps que teñen desactivada a detección da versión.';

  @override
  String get releaseDateAsVersion =>
      'Usar data de publicación como texto da versión.';

  @override
  String get releaseTitleAsVersion =>
      'Usar título da publicación como texto da versión.';

  @override
  String get releaseDateAsVersionExplanation =>
      'Só se debería usar esta opción para apps nas que non funciona ben a detección da versión pero si está dispoñible a data de publicación.';

  @override
  String get changes => 'Cambios';

  @override
  String get releaseDate => 'Data de publicación';

  @override
  String get importFromURLsInFile =>
      'Importar desde URLs no ficheiro (como OPML)';

  @override
  String get versionDetectionExplanation =>
      'Facer concordar a versión detectada polo SO e o texto da versión';

  @override
  String get versionDetection => 'Detección da versión';

  @override
  String get standardVersionDetection => 'Detcción estándar da versión';

  @override
  String get groupByCategory => 'Agrupar por categoría';

  @override
  String get listView => 'Vista de lista';

  @override
  String get gridView => 'Vista de grade';

  @override
  String get autoApkFilterByArch =>
      'Tentar filtrar APKs por arquitectura de CPU se é posible';

  @override
  String get autoLinkFilterByArch =>
      'Intentar filtrar se é posible as ligazóns por arquitectura da CPU';

  @override
  String get overrideSource => 'Obviar orixe';

  @override
  String get dontShowAgain => 'Non mostrar isto máis';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Non mostrar avisos de \'só-seguimento\'';

  @override
  String get dontShowAPKOriginWarnings =>
      'Non mostrar avisos sobre a orixe do APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Mover as apps non instaladas á parte baixa da vista de apps';

  @override
  String get hideNonInstalledApps => 'Ocultar as apps non instaladas';

  @override
  String get gitlabPATLabel => 'Token persoal de acceso a GitLab';

  @override
  String get about => 'Sobre';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return ' precisa credenciais adicionais (nos Axustes)';
  }

  @override
  String get checkOnStart => 'Buscar actualizacións ao inicio';

  @override
  String get safeMode => 'Modo seguro';

  @override
  String get safeModeDescription =>
      'Agochar a páxina Engadir aplicación e mostrar Importar/Exportar no seu lugar';

  @override
  String get safeModeAddAppDisabled =>
      'Engadir aplicación está desactivado no modo seguro';

  @override
  String get tryInferAppIdFromCode =>
      'Intentar adiviñar o ID da app desde o código fonte';

  @override
  String get removeOnExternalUninstall =>
      'Retirar automaticamente as apps desinstaladas externamente';

  @override
  String get pickHighestVersionCode =>
      'Autoseleccionar o APK coa versión máis alta';

  @override
  String get checkUpdateOnDetailPage =>
      'Buscar actualizacións ao abrir a páxina con detalles da app';

  @override
  String get disablePageTransitions =>
      'Desactivar as animacións de transición de páxina';

  @override
  String get reversePageTransitions =>
      'Modo inverso para as animacións de transición';

  @override
  String get minStarCount => 'Número mínimo de estrelas';

  @override
  String get addInfoBelow => 'Engadir esta información embaixo.';

  @override
  String get addInfoInSettings => 'Engadir esta información nos Axustes.';

  @override
  String get githubSourceNote =>
      'Pódese evitar a limitación de intentos de GitHub usando unha clave da API.';

  @override
  String get sortByLastLinkSegment =>
      'Ordear só polo último segmento da ligazón';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filtrar notas da versión con expresión regular';

  @override
  String get customLinkFilterRegex =>
      'Filtro persoal da ligazón da APK con expresión regular (por defecto \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Intentos de actualizar a APP';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Avisa á usuaria de que unha ou varias apps puideron ser actualizadas en segundo plano';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return ' pode actualizarse a .';
  }

  @override
  String get enableBackgroundUpdates =>
      'Activar actualizacións en segundo plano';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Non todas as apps se poden actualizar en segundo plano.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'O éxito dunha instalación en segundo plano só se pode determinar unha vez se abre Obtanium.';

  @override
  String get verifyLatestTag => 'Verificar a etiqueta \'latest\'';

  @override
  String get intermediateLinkRegex =>
      'Filtrar para unha ligazón \'intermediate\' a visitar';

  @override
  String get filterByLinkText => 'Filtrar ligazóns por texto da ligazón';

  @override
  String get matchLinksOutsideATags => 'Buscar en ligazóns fór da etiqueta <a>';

  @override
  String get intermediateLinkNotFound => 'Non se atopan ligazóns intermedias';

  @override
  String get intermediateLink => 'Ligazón intermedia';

  @override
  String get exemptFromBackgroundUpdates =>
      'Omitir nas actualizacións en segundo plano (se activadas)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Desactivar actualizacións en segundo plano cando non se usa Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Desactivar actualizacións en segundo plano cando non está cargando batería';

  @override
  String get autoSelectHighestVersionCode =>
      'Autoseleccionar a versión co versionCode APK máis alto';

  @override
  String get versionExtractionRegEx => 'Extracción do texto da versión RegEx';

  @override
  String get trimVersionString => 'Recortar texto da versión con RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Buscar no grupo a usar para \\\"\\\"';
  }

  @override
  String get matchGroupToUse =>
      'Buscar no grupo a usar para a extración por RegEX do texto da versión';

  @override
  String get highlightTouchTargets => 'Obxectivos menos evidentes';

  @override
  String get pickExportDir => 'Elixir directorio de exportación';

  @override
  String get autoExportOnChanges => 'Exportar automaticamente ao haber cambios';

  @override
  String get includeSettings => 'Incluír axustes';

  @override
  String get filterVersionsByRegEx => 'Filtrar versións por expresión regular';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Intentar seleccionar o versionCode APK suxerido';

  @override
  String get dontSortReleasesList => 'Manter orde de publicación da API';

  @override
  String get reverseSort => 'Orde inversa';

  @override
  String get takeFirstLink => 'Coller a primeira ligazón';

  @override
  String get skipSort => 'Omitir ordear';

  @override
  String get debugMenu => 'Menú depuración';

  @override
  String get bgTaskStarted =>
      'Comezou a tarefa en segundo plano - comproba o rexistro.';

  @override
  String get runBgCheckNow => 'Realizar agora a comprobación de actualizacións';

  @override
  String get versionExtractWholePage =>
      'Aplicar a expresión regular para extracción á páxina completa';

  @override
  String get installing => 'Instalando';

  @override
  String get skipUpdateNotifications => 'Omitir avisos de actualizacións';

  @override
  String get updatesAvailableNotifChannel => 'Actualizacións dispoñibles';

  @override
  String get appsUpdatedNotifChannel => 'Apps actualizadas';

  @override
  String get appsPossiblyUpdatedNotifChannel =>
      'Intentos de actualización da app';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Erro ao buscar actualizacións';

  @override
  String get appsRemovedNotifChannel => 'Apps retiradas';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Descargando ';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Completar instalación da app';

  @override
  String get checkingForUpdatesNotifChannel => 'Comprobando actualizacións';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Buscar actualizacións śo para apps instaladas e só-seguimento';

  @override
  String get supportFixedAPKURL => 'Compatible con APK URLs fixas';

  @override
  String selectX(String arg1) {
    return 'Seleccionar ';
  }

  @override
  String get parallelDownloads => 'Permitir descargas paralelas';

  @override
  String get useShizuku => 'Use Shizuku ou Sui para instalar';

  @override
  String get shizukuBinderNotFound =>
      'O servizo Shizuku non se está executando';

  @override
  String get shizukuOld => 'Versión antiga de Shizuku (<11) - actualiza';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku executándose en Android < 8.1 con ADB - actualiza Android ou usa Sui no seu lugar';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Establecer Google Play como fonte de instalación (se se usa Shizuku)';

  @override
  String get useSystemFont => 'Usar tipo de letra do sistema';

  @override
  String get useVersionCodeAsOSVersion =>
      'Use versionCode da app como versión detectada polo SO';

  @override
  String get requestHeader => 'Solicitar cabeceira';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Usar data de subida do último recurso como data de publicación';

  @override
  String get defaultPseudoVersioningMethod =>
      'Método de pseudo-versión por defecto';

  @override
  String get partialAPKHash => 'Suma de comprobación do APK parcial';

  @override
  String get directAPKLink => 'Ligazón APK directa';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'Nome';

  @override
  String get sortMethod => 'Criterio da orde';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload =>
      'Actualizar detalles sobre a app antes de actualizar';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'Estase a usar unha pseudo-versión';

  @override
  String get installed => 'Instalada';

  @override
  String get latest => 'Última';

  @override
  String get invertRegEx => 'Invertir expresión regular';

  @override
  String get note => 'Nota';

  @override
  String selfHostedNote(String arg1) {
    return 'O menú despregable \\\"\\\" pode usarse para acadar instancias persoais de calquera orixe.';
  }

  @override
  String get badDownload =>
      'Non se puido procesar o APK (non compatible ou parcialmente descargado)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Compartir novas apps con AppVerifier (se está dispoñible)';

  @override
  String get appVerifierInstructionToast =>
      'Compartir con AppVerifier, e volver aquí ao finalizar.';

  @override
  String get wiki => 'Axuda/wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Permitir peticións HTTP non seguras';

  @override
  String get stayOneVersionBehind => 'Manterse nunha versión anterior á última';

  @override
  String get useFirstApkOfVersion =>
      'Autoseleccionar o primeiro de múltiples APKs';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get smartname => 'Nome (intelixente)';

  @override
  String get welcome => 'Benvida';

  @override
  String get documentationLinksNote =>
      'A páxina Updatium GitHub aquí indicada ten ligazóns a vídeos, artigos, conversas, e outros recursos que poden axudarche a usar a app.';

  @override
  String get batteryOptimizationNote =>
      'Ten en conta que as descargas en segundo plano poderías realizarse de xeito máis fiable cambiando ao servizo en \\\"primeiro plano\\\" nos axustes de Updatium e/ou desactivando a optimización da batería para Obtanium nos axustes do sistema.';

  @override
  String fileDeletionError(String arg1) {
    return 'Fallou a eliminación do ficheiro (intentar eliminalo manualmente e volver a intentar): \\\"\\\"';
  }

  @override
  String get foregroundService => 'Servizo en primeiro plano Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Usar un servizo en primeiro plano para a comprobación de actualizacións (máis fiable, consume máis batería)';

  @override
  String get fgServiceNotice =>
      'Esta notificación requírese para a comprobación de actualizacións en segundo plano (pode ocultarse cos axustes do sistema)';

  @override
  String get excludeSecrets => 'Excluír secretos';

  @override
  String get includeZips => 'Incluír ficheiros ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrar APKs dentro do ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google anunciou que, comezando en 2026/2027, todas as apps en dispositivos \\\"certificados\\\" Android van precisar que as desenvolvedoras envíen detalles da súa identidade persoal directamente a Google.\\n\\nDespois diso, Updatium pode deixar de funcionar en dispositivos certificados.';

  @override
  String get googleVerificationWarningP2 =>
      'Vai a https://keepandroidopen.org/ para máis información.';

  @override
  String get googleVerificationWarningP3 =>
      'A curto prazo pode seguir dispoñible a instalación de aplicacións \\\"non verificadas\\\" (non-compliant) cun procedemento \\\"avanzado\\\" que Google prometeu implementar despois das críticas recibidas, pero aínda non publicaron detalles sobre isto e non está claro se realmente será posible levalo adiante de xeito práctico.\\n\\nEn todo caso, os movementos de Google son indicativos sobre o desexo de acabar coa liberdade, o propósito de uso xeral das computadoras por parte das persoas.\\n\\nOs sistemas operativos non certificados, como GrapheneOS, non se deberían ver afectados por isto mentras lles permitan existir.';

  @override
  String get multipleSigners => 'Múltiples Signadores';

  @override
  String get securityDisclaimerTitle => 'Aviso de Seguridade e Legal';

  @override
  String get license => 'Licenza';

  @override
  String get licenseText =>
      'Este aplicativo distribúese baixo a Licenza GPL v3.';

  @override
  String get disclaimer => 'Aviso';

  @override
  String get disclaimerText =>
      'Este aplicativo non distribúe, aloxa nin verifica ningún dos aplicativos externos. O usuario asume a responsabilidade total pola seguridade e legalidade de calquera software instalado a través desta ferramenta.\\n\\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para descargar Updatium - é moi desaconsellable descargalo doutros lugares xa que a descarga desde fontes non oficiais non é segura.';

  @override
  String get privacy => 'Privacidade';

  @override
  String get privacyText =>
      'Este aplicativo está centrado na privacidade e non recolle datos persoais.';

  @override
  String get acceptAndContinue => 'Aceptar e continuar';

  @override
  String get decline => 'Rexeitar';

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
  String get aPKLinkHash => 'APK link hash';

  @override
  String get gHReqPrefix =>
      '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get continueAction => 'Continue';

  @override
  String apps(int count) {
    return 'Apps';
  }

  @override
  String apk(int count) {
    return 'APK';
  }

  @override
  String minute(int count) {
    return 'minutos';
  }

  @override
  String hour(int count) {
    return 'horas';
  }

  @override
  String day(int count) {
    return 'días';
  }
}
