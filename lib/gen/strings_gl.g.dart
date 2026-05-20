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
class TranslationsGl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsGl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.gl,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <gl>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsGl _root = this; // ignore: unused_field

	@override 
	TranslationsGl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsGl(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'URL da app {} non válido';
	@override String get noReleaseFound => 'Non se atopou unha publicación axeitada';
	@override String get noVersionFound => 'Non se puido determinar a versión da publicación';
	@override String get urlMatchesNoSource => 'O URL non concorda cunha fonte coñecida';
	@override String get cantInstallOlderVersion => 'Non se pode instalar unha versión máis antiga dunha app';
	@override String get appIdMismatch => 'O ID do paquete descargado non concorda co ID dunha app existente';
	@override String get functionNotImplemented => 'Esta clase non ten implementada esta función';
	@override String get placeholder => 'Marcador';
	@override String get someErrors => 'Houbo fallos';
	@override String get unexpectedError => 'Erro non agardado';
	@override String get ok => 'OK';
	@override String get and => 'e';
	@override String get githubPATLabel => 'Token persoal de acceso a GitHub';
	@override String get includePrereleases => 'Incluír prepublicacións';
	@override String get fallbackToOlderReleases => 'Apoiarse en publicacións máis antigas';
	@override String get filterReleaseTitlesByRegEx => 'Filtrar título das publicacións con expresión regulares';
	@override String get invalidRegEx => 'Expresión regular non válida';
	@override String get noDescription => 'Sen descrición';
	@override String get cancel => 'Cancelar';
	@override String get kContinue => 'Continuar';
	@override String get requiredInBrackets => '(requerido)';
	@override String get dropdownNoOptsError => 'ERRO: DESPREGABLE TEN QUE TER 1 OPCIÓN POLO MENOS';
	@override String get color => 'Cor';
	@override String get standard => 'Estándar';
	@override String get custom => 'Persoal';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Usar cores Material You';
	@override String get githubStarredRepos => 'Repositorios GitHub con estrela';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Identificador';
	@override String get wrongArgNum => 'Número de argumentos proporcionados incorrecto';
	@override String get xIsTrackOnly => '{} é de só-seguimento';
	@override String get source => 'Fonte';
	@override String get app => 'App';
	@override String get appsFromSourceAreTrackOnly => 'As apps desta fonte son de \'só-seguimento\'.';
	@override String get youPickedTrackOnly => 'Seleccionaches a opción \'só-seguimento\'.';
	@override String get trackOnlyAppDescription => 'Vanse comprobar as actualizacións da app, pero Obtanium non poderá descargalas ou instalalas.';
	@override String get cancelled => 'Cancelada';
	@override String get appAlreadyAdded => 'A app xa está engadida';
	@override String get alreadyUpToDateQuestion => 'Está a app ao día?';
	@override String get addApp => 'Engadir app';
	@override String get appSourceURL => 'URL de orixe da app';
	@override String get error => 'Erro';
	@override String get add => 'Engadir';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Buscar (só algunhas fontes)';
	@override String get search => 'Buscar';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opcións adicionais para {}';
	@override String get supportedSources => 'Fontes compatibles';
	@override String get trackOnlyInBrackets => '(só-seguimento)';
	@override String get searchableInBrackets => '(buscable)';
	@override String get appsString => 'Apps';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Sen apps';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Sen apps para filtrar';
	@override String get byX => 'Por {}';
	@override String get percentProgress => 'Progreso: {}%';
	@override String get pleaseWait => 'Agarda';
	@override String get updateAvailable => 'Actualización dispoñible';
	@override String get notInstalled => 'Non instalada';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versión';
	@override String get selectAll => 'Seleccionar todo';
	@override String get deselectX => 'Non seleccionar {}';
	@override String get xWillBeRemovedButRemainInstalled => 'Vaise retirar {} de Updatium pero seguirá instalada no dispositivo.';
	@override String get removeSelectedAppsQuestion => 'Retirar as apps seleccionadas?';
	@override String get removeSelectedApps => 'Retirar apps seleccionadas';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Actualizar {}';
	@override String get installX => 'Instalar {}';
	@override String get markXTrackOnlyAsUpdated => 'Marcar {}\n(só-seguimento)\ncomo actualizada';
	@override String get changeX => 'Cambiar {}';
	@override String get installUpdateApps => 'Instalar/actualizar apps';
	@override String get installUpdateSelectedApps => 'Instalar/actualiazar apps seleccionadas';
	@override String get markXSelectedAppsAsUpdated => 'Marcar {} apps seleccionadas como actualizadas?';
	@override String get no => 'Non';
	@override String get yes => 'Si';
	@override String get markSelectedAppsUpdated => 'Marcar apps seleccionadas como actualizadas';
	@override String get pinToTop => 'Fixar arriba';
	@override String get unpinFromTop => 'Non fixar arriba';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Restablecer o estado de instalación das apps seleccionadas?';
	@override String get installStatusOfXWillBeResetExplanation => 'Vaise restablecer o estado de instalación de todas as app seleccionadas.\n\nIsto pode ser de axuda cando a versión da app mostrada en Obtanium non é correcta debido a actualizacións que fallaron ou outros problemas.';
	@override String get customLinkMessage => 'Estas ligazóns funcionan en dispositivos onde Obtanium está instalada';
	@override String get shareAppConfigLinks => 'Compartir a configuración da app como ligazón HTML';
	@override String get resetInstallStatus => 'Restablecer estado de instalación';
	@override String get more => 'Máis';
	@override String get removeOutdatedFilter => 'Retirar o filtro de app desactualizada';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Mostrar só apps desactualizadas';
	@override String get filter => 'Filtrar';
	@override String get filterApps => 'Filtrar apps';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nome da app';
	@override String get author => 'Autoría';
	@override String get upToDateApps => 'Apss ao día';
	@override String get nonInstalledApps => 'Apps non instaladas';
	@override String get importExport => 'Importar/Exportar';
	@override String get settings => 'Axustes';
	@override String get exportedTo => 'Exportada a {}';
	@override String get updatiumExport => 'Exportación Obtanium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Saída incorrecta';
	@override String get importedX => '{} importada';
	@override String get updatiumImport => 'Importación Updatium';
	@override String get importFromURLList => 'Importar desde lista de URL';
	@override String get searchQuery => 'Consulta da busca';
	@override String get appURLList => 'Lista de URL de apps';
	@override String get line => 'Liña';
	@override String get searchX => 'Buscar {}';
	@override String get noResults => 'Sen resultados';
	@override String get importX => 'Importar {}';
	@override String get importedAppsIdDisclaimer => 'As apps importadas poderían mostrarse de xeito incorrecto como "non instaladas".\nPara solucionar isto, reinstálaas usando Updatium.\nAsí non deberían verse afectados os datos da app.\n\nSó afecta ao URL e aos métodos de importación de terceiras partes.';
	@override String get importErrors => 'Erros ao importar';
	@override String get importedXOfYApps => '{} de {} apps importadas.';
	@override String get followingURLsHadErrors => 'Os seguintes URL tiñan erros:';
	@override String get selectURL => 'Seleccionar URL';
	@override String get selectURLs => 'Seleccionar URLs';
	@override String get pick => 'Elixir';
	@override String get theme => 'Decorado';
	@override String get dark => 'Escuro';
	@override String get light => 'Claro';
	@override String get followSystem => 'Seguir ao sistema';
	@override String get followSystemThemeExplanation => 'Seguir o decorado do sistema só é posible usando aplicacións de terceiras partes';
	@override String get useBlackTheme => 'Usar decorado escuro con negro verdadeiro';
	@override String get appSortBy => 'Ordear por';
	@override String get authorName => 'Autoría/nome';
	@override String get nameAuthor => 'Nome/autoría';
	@override String get asAdded => 'Engadida o';
	@override String get appSortOrder => 'Orde para as apps';
	@override String get ascending => 'Ascendente';
	@override String get descending => 'Descendente';
	@override String get bgUpdateCheckInterval => 'Período para comprobar actualizacións';
	@override String get neverManualOnly => 'Nunca - so manual';
	@override String get appearance => 'Aparencia';
	@override String get pinUpdates => 'Fixar actualizacións na parte superior da vista de apps';
	@override String get updates => 'Actualizacións';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Orixe-específica';
	@override String get appSource => 'Orixe da app';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Sen rexistros';
	@override String get appLogs => 'Rexistros da app';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Fechar';
	@override String get share => 'Compartir';
	@override String get appNotFound => 'Non se atopa a app';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'exportación-updatium';
	@override String get pickAnAPK => 'Selecciona un APK';
	@override String get appHasMoreThanOnePackage => '{} ten máis dun paquete:';
	@override String get deviceSupportsXArch => 'O teu dispositivo é compatible coa arquitectura de CPU {}.';
	@override String get deviceSupportsFollowingArchs => 'O teu dispositivo é compatible coas seguintes arquitecturas de CPU:';
	@override String get warning => 'Aviso';
	@override String get sourceIsXButPackageFromYPrompt => 'A orixe da app é \'{}\' pero o paquete da publicación procede de \'{}\'. Continuar?';
	@override String get updatesAvailable => 'Actualizacións dispoñibles';
	@override String get updatesAvailableNotifDescription => 'Informa á usuaria de que hai actualizacións dispoñibles para unha ou varias apps seguidas por Updatium';
	@override String get noNewUpdates => 'Sen actualizacións.';
	@override String get xHasAnUpdate => 'Hai unha actualización para {}.';
	@override String get appsUpdated => 'Apps actualizadas';
	@override String get appsNotUpdated => 'Fallou a actualización das aplicacións';
	@override String get appsUpdatedNotifDescription => 'Informa á usuaria de que se aplicaron en segundo plano actualizacións para unha ou varias apps';
	@override String get xWasUpdatedToY => '{} actualizouse a {}.';
	@override String get xWasNotUpdatedToY => 'Fallou a actualización de {} a {}.';
	@override String get errorCheckingUpdates => 'Erro ao comprobar as actualizacións';
	@override String get errorCheckingUpdatesNotifDescription => 'Unha notificación que se mostra cando falla a actualización en segundo plano';
	@override String get appsRemoved => 'Apps retiradas';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Informa á usuaria de que se retiraron unha ou varias apps debido a erros ao cargalas';
	@override String get xWasRemovedDueToErrorY => 'Retirouse {} debido a este erro: {}';
	@override String get completeAppInstallation => 'Instalación completa da app';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium ten que estar aberta para instalar apps';
	@override String get completeAppInstallationNotifDescription => 'Pídelle á usuaria volver a Updatium para acabar de instalar a app';
	@override String get checkingForUpdates => 'Comprobando actualizacións';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notificación temporal que aparece ao buscar actualizacións';
	@override String get pleaseAllowInstallPerm => 'Permite que Updatium instale apps';
	@override String get trackOnly => 'Só-seguimento';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Erro {}';
	@override String get versionCorrectionDisabled => 'Corrección da versión desactivada (parece que o complemento non funciona)';
	@override String get unknown => 'Descoñecido';
	@override String get none => 'Nada';
	@override String get all => 'Todo';
	@override String get never => 'Nunca';
	@override String get latestVersion => 'Última';
	@override String get installedVersionX => 'Instalada: {}';
	@override String get lastUpdateCheckX => 'Última comprobación: {}';
	@override String get remove => 'Retirar';
	@override String get quickLinks => 'Quick Links';
	@override String get yesMarkUpdated => 'Si, marcar como actualizada';
	@override String get fdroid => 'Oficial de F-Droid';
	@override String get appIdOrName => 'ID da app ou nome';
	@override String get appId => 'ID da app';
	@override String get appWithIdOrNameNotFound => 'Non se atopa ningunha app con ese ID ou nome';
	@override String get reposHaveMultipleApps => 'Os repositorios poden conter varias apps';
	@override String get fdroidThirdPartyRepo => 'Repositorio F-Droid de terceiras partes';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instalar';
	@override String get markInstalled => 'Marcar como instalada';
	@override String get update => 'Actualizar';
	@override String get updated => 'Actualizada';
	@override String get markUpdated => 'Marcar como actualizada';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opcións adicionais';
	@override String get disableVersionDetection => 'Desactivar detección da versión';
	@override String get noVersionDetectionExplanation => 'Esta opción só se debería usar coas apps nas que a detección da versión non funciona correctamente.';
	@override String get downloadingX => 'Descargando {}';
	@override String get downloadX => 'Descargar {}';
	@override String get downloadedX => 'Descargado {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Liberar activos';
	@override String get downloadNotifDescription => 'Informa á usuaria do progreso da descarga da app';
	@override String get noAPKFound => 'Non se atopa o APK';
	@override String get noVersionDetection => 'Non se detecta a versión';
	@override String get categorize => 'Categorizar';
	@override String get categories => 'Categorías';
	@override String get category => 'Categoría';
	@override String get noCategory => 'Sen categoría';
	@override String get noCategories => 'Sen categorías';
	@override String get categoryDeleteQuestion => 'Eliminar categorías?';
	@override String get categoryDeleteWarning => 'Todas as apps nas categorías eliminadas quedarán sen categorizar.';
	@override String get addCategory => 'Engadir categoría';
	@override String get label => 'Etiqueta';
	@override String get language => 'Idioma';
	@override String get copiedToClipboard => 'Copiado ao portapapeis';
	@override String get storagePermissionDenied => 'Sen permiso para almacenaxe';
	@override String get selectedCategorizeWarning => 'Isto substituirá calquera todas as categorías existentes nas apps seleccionadas.';
	@override String get filterAPKsByRegEx => 'Filtrar APKs cunha expresión regular';
	@override String get removeFromUpdatium => 'Retirar de Updatium';
	@override String get uninstallFromDevice => 'Desinstalar do dispositivo';
	@override String get onlyWorksWithNonVersionDetectApps => 'Só funciona para as apps que teñen desactivada a detección da versión.';
	@override String get releaseDateAsVersion => 'Usar data de publicación como texto da versión.';
	@override String get releaseTitleAsVersion => 'Usar título da publicación como texto da versión.';
	@override String get releaseDateAsVersionExplanation => 'Só se debería usar esta opción para apps nas que non funciona ben a detección da versión pero si está dispoñible a data de publicación.';
	@override String get changes => 'Cambios';
	@override String get releaseDate => 'Data de publicación';
	@override String get importFromURLsInFile => 'Importar desde URLs no ficheiro (como OPML)';
	@override String get versionDetectionExplanation => 'Facer concordar a versión detectada polo SO e o texto da versión';
	@override String get versionDetection => 'Detección da versión';
	@override String get standardVersionDetection => 'Detcción estándar da versión';
	@override String get groupByCategory => 'Agrupar por categoría';
	@override String get listView => 'Vista de lista';
	@override String get gridView => 'Vista de grade';
	@override String get autoApkFilterByArch => 'Tentar filtrar APKs por arquitectura de CPU se é posible';
	@override String get autoLinkFilterByArch => 'Intentar filtrar se é posible as ligazóns por arquitectura da CPU';
	@override String get overrideSource => 'Obviar orixe';
	@override String get dontShowAgain => 'Non mostrar isto máis';
	@override String get dontShowTrackOnlyWarnings => 'Non mostrar avisos de \'só-seguimento\'';
	@override String get dontShowAPKOriginWarnings => 'Non mostrar avisos sobre a orixe do APK';
	@override String get moveNonInstalledAppsToBottom => 'Mover as apps non instaladas á parte baixa da vista de apps';
	@override String get gitlabPATLabel => 'Token persoal de acceso a GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Sobre';
	@override String get requiresCredentialsInSettings => '{} precisa credenciais adicionais (nos Axustes)';
	@override String get checkOnStart => 'Buscar actualizacións ao inicio';
	@override String get safeMode => 'Modo seguro';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Engadir aplicación está desactivado no modo seguro';
	@override String get tryInferAppIdFromCode => 'Intentar adiviñar o ID da app desde o código fonte';
	@override String get removeOnExternalUninstall => 'Retirar automaticamente as apps desinstaladas externamente';
	@override String get pickHighestVersionCode => 'Autoseleccionar o APK coa versión máis alta';
	@override String get checkUpdateOnDetailPage => 'Buscar actualizacións ao abrir a páxina con detalles da app';
	@override String get disablePageTransitions => 'Desactivar as animacións de transición de páxina';
	@override String get reversePageTransitions => 'Modo inverso para as animacións de transición';
	@override String get minStarCount => 'Número mínimo de estrelas';
	@override String get addInfoBelow => 'Engadir esta información embaixo.';
	@override String get addInfoInSettings => 'Engadir esta información nos Axustes.';
	@override String get githubSourceNote => 'Pódese evitar a limitación de intentos de GitHub usando unha clave da API.';
	@override String get sortByLastLinkSegment => 'Ordear só polo último segmento da ligazón';
	@override String get filterReleaseNotesByRegEx => 'Filtrar notas da versión con expresión regular';
	@override String get customLinkFilterRegex => 'Filtro persoal da ligazón da APK con expresión regular (por defecto \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Intentos de actualizar a APP';
	@override String get appsPossiblyUpdatedNotifDescription => 'Avisa á usuaria de que unha ou varias apps puideron ser actualizadas en segundo plano';
	@override String get xWasPossiblyUpdatedToY => '{} pode actualizarse a {}.';
	@override String get enableBackgroundUpdates => 'Activar actualizacións en segundo plano';
	@override String get backgroundUpdateReqsExplanation => 'Non todas as apps se poden actualizar en segundo plano.';
	@override String get backgroundUpdateLimitsExplanation => 'O éxito dunha instalación en segundo plano só se pode determinar unha vez se abre Obtanium.';
	@override String get verifyLatestTag => 'Verificar a etiqueta \'latest\'';
	@override String get intermediateLinkRegex => 'Filtrar para unha ligazón \'intermediate\' a visitar';
	@override String get filterByLinkText => 'Filtrar ligazóns por texto da ligazón';
	@override String get matchLinksOutsideATags => 'Buscar en ligazóns fór da etiqueta <a>';
	@override String get intermediateLinkNotFound => 'Non se atopan ligazóns intermedias';
	@override String get intermediateLink => 'Ligazón intermedia';
	@override String get exemptFromBackgroundUpdates => 'Omitir nas actualizacións en segundo plano (se activadas)';
	@override String get bgUpdatesOnWiFiOnly => 'Desactivar actualizacións en segundo plano cando non se usa Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Desactivar actualizacións en segundo plano cando non está cargando batería';
	@override String get autoSelectHighestVersionCode => 'Autoseleccionar a versión co versionCode APK máis alto';
	@override String get versionExtractionRegEx => 'Extracción do texto da versión RegEx';
	@override String get trimVersionString => 'Recortar texto da versión con RegEx';
	@override String get matchGroupToUseForX => 'Buscar no grupo a usar para "{}"';
	@override String get matchGroupToUse => 'Buscar no grupo a usar para a extración por RegEX do texto da versión';
	@override String get highlightTouchTargets => 'Obxectivos menos evidentes';
	@override String get pickExportDir => 'Elixir directorio de exportación';
	@override String get autoExportOnChanges => 'Exportar automaticamente ao haber cambios';
	@override String get includeSettings => 'Incluír axustes';
	@override String get filterVersionsByRegEx => 'Filtrar versións por expresión regular';
	@override String get trySelectingSuggestedVersionCode => 'Intentar seleccionar o versionCode APK suxerido';
	@override String get dontSortReleasesList => 'Manter orde de publicación da API';
	@override String get reverseSort => 'Orde inversa';
	@override String get takeFirstLink => 'Coller a primeira ligazón';
	@override String get skipSort => 'Omitir ordear';
	@override String get debugMenu => 'Menú depuración';
	@override String get bgTaskStarted => 'Comezou a tarefa en segundo plano - comproba o rexistro.';
	@override String get runBgCheckNow => 'Realizar agora a comprobación de actualizacións';
	@override String get versionExtractWholePage => 'Aplicar a expresión regular para extracción á páxina completa';
	@override String get installing => 'Instalando';
	@override String get skipUpdateNotifications => 'Omitir avisos de actualizacións';
	@override String get updatesAvailableNotifChannel => 'Actualizacións dispoñibles';
	@override String get appsUpdatedNotifChannel => 'Apps actualizadas';
	@override String get appsPossiblyUpdatedNotifChannel => 'Intentos de actualización da app';
	@override String get errorCheckingUpdatesNotifChannel => 'Erro ao buscar actualizacións';
	@override String get appsRemovedNotifChannel => 'Apps retiradas';
	@override String get downloadingXNotifChannel => 'Descargando {}';
	@override String get completeAppInstallationNotifChannel => 'Completar instalación da app';
	@override String get checkingForUpdatesNotifChannel => 'Comprobando actualizacións';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Buscar actualizacións śo para apps instaladas e só-seguimento';
	@override String get supportFixedAPKURL => 'Compatible con APK URLs fixas';
	@override String get selectX => 'Seleccionar {}';
	@override String get parallelDownloads => 'Permitir descargas paralelas';
	@override String get useShizuku => 'Use Shizuku ou Sui para instalar';
	@override String get shizukuBinderNotFound => 'O servizo Shizuku non se está executando';
	@override String get shizukuOld => 'Versión antiga de Shizuku (<11) - actualiza';
	@override String get shizukuOldAndroidWithADB => 'Shizuku executándose en Android < 8.1 con ADB - actualiza Android ou usa Sui no seu lugar';
	@override String get shizukuPretendToBeGooglePlay => 'Establecer Google Play como fonte de instalación (se se usa Shizuku)';
	@override String get useSystemFont => 'Usar tipo de letra do sistema';
	@override String get useVersionCodeAsOSVersion => 'Use versionCode da app como versión detectada polo SO';
	@override String get requestHeader => 'Solicitar cabeceira';
	@override String get useLatestAssetDateAsReleaseDate => 'Usar data de subida do último recurso como data de publicación';
	@override String get defaultPseudoVersioningMethod => 'Método de pseudo-versión por defecto';
	@override String get partialAPKHash => 'Suma de comprobación do APK parcial';
	@override String get APKLinkHash => 'Suma de comprobación da ligazón APK';
	@override String get directAPKLink => 'Ligazón APK directa';
	@override String get pseudoVersionInUse => 'Estase a usar unha pseudo-versión';
	@override String get installedVersion => 'Instalada';
	@override String get installed => 'Instalada';
	@override String get notInstalledApps => 'Non instalada';
	@override String get latest => 'Última';
	@override String get invertRegEx => 'Invertir expresión regular';
	@override String get note => 'Nota';
	@override String get selfHostedNote => 'O menú despregable "{}" pode usarse para acadar instancias persoais de calquera orixe.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'Non se puido procesar o APK (non compatible ou parcialmente descargado)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Compartir novas apps con AppVerifier (se está dispoñible)';
	@override String get appVerifierInstructionToast => 'Compartir con AppVerifier, e volver aquí ao finalizar.';
	@override String get wiki => 'Axuda/wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Permitir peticións HTTP non seguras';
	@override String get stayOneVersionBehind => 'Manterse nunha versión anterior á última';
	@override String get useFirstApkOfVersion => 'Autoseleccionar o primeiro de múltiples APKs';
	@override String get refreshBeforeDownload => 'Actualizar detalles sobre a app antes de actualizar';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nome';
	@override String get smartname => 'Nome (intelixente)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Criterio da orde';
	@override String get welcome => 'Benvida';
	@override String get batteryOptimizationNote => 'Ten en conta que as descargas en segundo plano poderías realizarse de xeito máis fiable cambiando ao servizo en "primeiro plano" nos axustes de Updatium e/ou desactivando a optimización da batería para Obtanium nos axustes do sistema.';
	@override String get fileDeletionError => 'Fallou a eliminación do ficheiro (intentar eliminalo manualmente e volver a intentar): "{}"';
	@override String get foregroundService => 'Servizo en primeiro plano Updatium';
	@override String get foregroundServiceExplanation => 'Usar un servizo en primeiro plano para a comprobación de actualizacións (máis fiable, consume máis batería)';
	@override String get fgServiceNotice => 'Esta notificación requírese para a comprobación de actualizacións en segundo plano (pode ocultarse cos axustes do sistema)';
	@override String get excludeSecrets => 'Excluír secretos';
	@override String get GHReqPrefix => '\'omeritzics/Updatium\' instancia para solicitudes github';
	@override String get includeZips => 'Incluír ficheiros ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrar APKs dentro do ZIP';
	@override String get multipleSigners => 'Múltiples Signadores';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'Remove app?',
		other: 'Retirar apps?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'Demasiadas peticións (taxa limitada) - volver a intentar en {count} minuto',
		other: 'Demasiadas peticións (taxa limitada) - volver a intentar en {count} minutos',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'A actualización en segundo plano atopou un {error}, programará un reintento en {count} minuto',
		other: 'A actualización en segundo plano atopou un {error}, programará un reintento en {count} minutos',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'A actualización en segundo plano atopou {count} actualización - avisará a usuaria se fose preciso',
		other: 'A actualización en segundo plano atopou {count} actualizacións - avisará á usuaria se fose preciso',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{count} App',
		other: '{count} Apps',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{count} URL',
		other: '{count} URLs',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{count} minuto',
		other: '{count} minutos',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{count} hora',
		other: '{count} horas',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{count} día',
		other: '{count} días',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'Limpado {n} rexistro (anterior = {before}, posterior = {after})',
		other: 'Limpados {n} rexistros (anterior = {before}, posterior = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{app} e outra app teñen actualizacións.',
		other: '{app} e {count} apps máis teñen actualizacións.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{app} e outra actualizáronse.',
		other: '{app} e outras {count} apps actualizáronse.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'Fallou a actualización de {app} e outra app.',
		other: 'Fallou a actualización de {app} e {count} apps máis.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{app} e outra app poderían ter sido actualizadas.',
		other: '{app} e {count} apps máis poderían ter sido actualizadas.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n,
		one: 'Certificado hash',
		other: 'Certificado Hashes',
	);
	@override String get securityDisclaimerTitle => 'Aviso de Seguridade e Legal';
	@override String get license => 'Licenza';
	@override String get licenseText => 'Este aplicativo distribúese baixo a Licenza GPL v3.';
	@override String get disclaimer => 'Aviso';
	@override String get disclaimerText => 'Este aplicativo non distribúe, aloxa nin verifica ningún dos aplicativos externos. O usuario asume a responsabilidade total pola seguridade e legalidade de calquera software instalado a través desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para descargar Updatium - é moi desaconsellable descargalo doutros lugares xa que a descarga desde fontes non oficiais non é segura.';
	@override String get privacy => 'Privacidade';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Aceptar e continuar';
	@override String get decline => 'Rexeitar';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => '¿Estás gozando de Updatium?';
	@override String get githubStarPromptContent => 'Updatium é un proxecto comunitario voluntario de código aberto desenvolvido no meu tempo libre. Se che gustaría apoiar o proxecto, por favor considera darlle unha estrela en GitHub para axudarnos a chegar a máis usuarios e colaboradores. Non volverás ser molestado sobre isto. Grazas de antemán! :)';
	@override String get githubStarPromptStar => 'Dar estrela';
	@override String get githubStarPromptDontShowAgain => 'Non mostrar máis';
	@override String get sourceCode => 'Código fonte';
	@override String get developedBy => 'Desenvolvido por';
	@override String get appDescription => 'Un catálogo de aplicacións Android personalizábel que permite actualizar as túas aplicacións directamente desde as súas fontes APK.';
	@override String get safeModeEnabled => 'Modo seguro activado';
	@override String get safeModeDisabled => 'Modo seguro desactivado';
	@override String get safeModeDisable => 'Desactivar Modo seguro';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Administración do Modo seguro';
	@override String get safeModeSetupDescription => 'Establece un contrasinal para activar o Modo seguro. Unha vez activado, o Modo seguro impide engadir novas apps e só pode ser desactivado co contrasinal.';
	@override String get safeModeToggleDescription => 'Introduce o teu contrasinal para activar ou desactivar o Modo seguro.';
	@override String get safeModeSetPassword => 'Establecer contrasinal';
	@override String get safeModeConfirmPassword => 'Confirmar contrasinal';
	@override String get safeModeEnterPassword => 'Introducir contrasinal';
	@override String get safeModePasswordHint => 'Mínimo 8 caracteres';
	@override String get safeModePasswordTooShort => 'O contrasinal debe ter polo menos 8 caracteres';
	@override String get safeModePasswordMismatch => 'Os contrasinais non coinciden';
	@override String get safeModePasswordIncorrect => 'Contrasinal incorrecto';
	@override String get safeModePasswordError => 'Erro ao establecer o contrasinal. Por favor, inténtao de novo.';
	@override String get safeModeEnable => 'Activar Modo seguro';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} toques restantes para desactivar o Modo seguro';
	@override String get safeModeEnabledHint => 'Modo seguro activado. Toca varias veces o número de versión en Configuración para desactivar.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Entendido';
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

/// The flat map containing all translations for locale <gl>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsGl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'URL da app {} non válido',
			'noReleaseFound' => 'Non se atopou unha publicación axeitada',
			'noVersionFound' => 'Non se puido determinar a versión da publicación',
			'urlMatchesNoSource' => 'O URL non concorda cunha fonte coñecida',
			'cantInstallOlderVersion' => 'Non se pode instalar unha versión máis antiga dunha app',
			'appIdMismatch' => 'O ID do paquete descargado non concorda co ID dunha app existente',
			'functionNotImplemented' => 'Esta clase non ten implementada esta función',
			'placeholder' => 'Marcador',
			'someErrors' => 'Houbo fallos',
			'unexpectedError' => 'Erro non agardado',
			'ok' => 'OK',
			'and' => 'e',
			'githubPATLabel' => 'Token persoal de acceso a GitHub',
			'includePrereleases' => 'Incluír prepublicacións',
			'fallbackToOlderReleases' => 'Apoiarse en publicacións máis antigas',
			'filterReleaseTitlesByRegEx' => 'Filtrar título das publicacións con expresión regulares',
			'invalidRegEx' => 'Expresión regular non válida',
			'noDescription' => 'Sen descrición',
			'cancel' => 'Cancelar',
			'kContinue' => 'Continuar',
			'requiredInBrackets' => '(requerido)',
			'dropdownNoOptsError' => 'ERRO: DESPREGABLE TEN QUE TER 1 OPCIÓN POLO MENOS',
			'color' => 'Cor',
			'standard' => 'Estándar',
			'custom' => 'Persoal',
			'primary' => 'Primary',
			'useMaterialYou' => 'Usar cores Material You',
			'githubStarredRepos' => 'Repositorios GitHub con estrela',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Identificador',
			'wrongArgNum' => 'Número de argumentos proporcionados incorrecto',
			'xIsTrackOnly' => '{} é de só-seguimento',
			'source' => 'Fonte',
			'app' => 'App',
			'appsFromSourceAreTrackOnly' => 'As apps desta fonte son de \'só-seguimento\'.',
			'youPickedTrackOnly' => 'Seleccionaches a opción \'só-seguimento\'.',
			'trackOnlyAppDescription' => 'Vanse comprobar as actualizacións da app, pero Obtanium non poderá descargalas ou instalalas.',
			'cancelled' => 'Cancelada',
			'appAlreadyAdded' => 'A app xa está engadida',
			'alreadyUpToDateQuestion' => 'Está a app ao día?',
			'addApp' => 'Engadir app',
			'appSourceURL' => 'URL de orixe da app',
			'error' => 'Erro',
			'add' => 'Engadir',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Buscar (só algunhas fontes)',
			'search' => 'Buscar',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opcións adicionais para {}',
			'supportedSources' => 'Fontes compatibles',
			'trackOnlyInBrackets' => '(só-seguimento)',
			'searchableInBrackets' => '(buscable)',
			'appsString' => 'Apps',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Sen apps',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Sen apps para filtrar',
			'byX' => 'Por {}',
			'percentProgress' => 'Progreso: {}%',
			'pleaseWait' => 'Agarda',
			'updateAvailable' => 'Actualización dispoñible',
			'notInstalled' => 'Non instalada',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versión',
			'selectAll' => 'Seleccionar todo',
			'deselectX' => 'Non seleccionar {}',
			'xWillBeRemovedButRemainInstalled' => 'Vaise retirar {} de Updatium pero seguirá instalada no dispositivo.',
			'removeSelectedAppsQuestion' => 'Retirar as apps seleccionadas?',
			'removeSelectedApps' => 'Retirar apps seleccionadas',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Actualizar {}',
			'installX' => 'Instalar {}',
			'markXTrackOnlyAsUpdated' => 'Marcar {}\n(só-seguimento)\ncomo actualizada',
			'changeX' => 'Cambiar {}',
			'installUpdateApps' => 'Instalar/actualizar apps',
			'installUpdateSelectedApps' => 'Instalar/actualiazar apps seleccionadas',
			'markXSelectedAppsAsUpdated' => 'Marcar {} apps seleccionadas como actualizadas?',
			'no' => 'Non',
			'yes' => 'Si',
			'markSelectedAppsUpdated' => 'Marcar apps seleccionadas como actualizadas',
			'pinToTop' => 'Fixar arriba',
			'unpinFromTop' => 'Non fixar arriba',
			'resetInstallStatusForSelectedAppsQuestion' => 'Restablecer o estado de instalación das apps seleccionadas?',
			'installStatusOfXWillBeResetExplanation' => 'Vaise restablecer o estado de instalación de todas as app seleccionadas.\n\nIsto pode ser de axuda cando a versión da app mostrada en Obtanium non é correcta debido a actualizacións que fallaron ou outros problemas.',
			'customLinkMessage' => 'Estas ligazóns funcionan en dispositivos onde Obtanium está instalada',
			'shareAppConfigLinks' => 'Compartir a configuración da app como ligazón HTML',
			'resetInstallStatus' => 'Restablecer estado de instalación',
			'more' => 'Máis',
			'removeOutdatedFilter' => 'Retirar o filtro de app desactualizada',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Mostrar só apps desactualizadas',
			'filter' => 'Filtrar',
			'filterApps' => 'Filtrar apps',
			'filterDays' => 'Filter days',
			'appName' => 'Nome da app',
			'author' => 'Autoría',
			'upToDateApps' => 'Apss ao día',
			'nonInstalledApps' => 'Apps non instaladas',
			'importExport' => 'Importar/Exportar',
			'settings' => 'Axustes',
			'exportedTo' => 'Exportada a {}',
			'updatiumExport' => 'Exportación Obtanium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Saída incorrecta',
			'importedX' => '{} importada',
			'updatiumImport' => 'Importación Updatium',
			'importFromURLList' => 'Importar desde lista de URL',
			'searchQuery' => 'Consulta da busca',
			'appURLList' => 'Lista de URL de apps',
			'line' => 'Liña',
			'searchX' => 'Buscar {}',
			'noResults' => 'Sen resultados',
			'importX' => 'Importar {}',
			'importedAppsIdDisclaimer' => 'As apps importadas poderían mostrarse de xeito incorrecto como "non instaladas".\nPara solucionar isto, reinstálaas usando Updatium.\nAsí non deberían verse afectados os datos da app.\n\nSó afecta ao URL e aos métodos de importación de terceiras partes.',
			'importErrors' => 'Erros ao importar',
			'importedXOfYApps' => '{} de {} apps importadas.',
			'followingURLsHadErrors' => 'Os seguintes URL tiñan erros:',
			'selectURL' => 'Seleccionar URL',
			'selectURLs' => 'Seleccionar URLs',
			'pick' => 'Elixir',
			'theme' => 'Decorado',
			'dark' => 'Escuro',
			'light' => 'Claro',
			'followSystem' => 'Seguir ao sistema',
			'followSystemThemeExplanation' => 'Seguir o decorado do sistema só é posible usando aplicacións de terceiras partes',
			'useBlackTheme' => 'Usar decorado escuro con negro verdadeiro',
			'appSortBy' => 'Ordear por',
			'authorName' => 'Autoría/nome',
			'nameAuthor' => 'Nome/autoría',
			'asAdded' => 'Engadida o',
			'appSortOrder' => 'Orde para as apps',
			'ascending' => 'Ascendente',
			'descending' => 'Descendente',
			'bgUpdateCheckInterval' => 'Período para comprobar actualizacións',
			'neverManualOnly' => 'Nunca - so manual',
			'appearance' => 'Aparencia',
			'pinUpdates' => 'Fixar actualizacións na parte superior da vista de apps',
			'updates' => 'Actualizacións',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Orixe-específica',
			'appSource' => 'Orixe da app',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Sen rexistros',
			'appLogs' => 'Rexistros da app',
			'appLogsHint' => 'View application logs',
			'close' => 'Fechar',
			'share' => 'Compartir',
			'appNotFound' => 'Non se atopa a app',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'exportación-updatium',
			'pickAnAPK' => 'Selecciona un APK',
			'appHasMoreThanOnePackage' => '{} ten máis dun paquete:',
			'deviceSupportsXArch' => 'O teu dispositivo é compatible coa arquitectura de CPU {}.',
			'deviceSupportsFollowingArchs' => 'O teu dispositivo é compatible coas seguintes arquitecturas de CPU:',
			'warning' => 'Aviso',
			'sourceIsXButPackageFromYPrompt' => 'A orixe da app é \'{}\' pero o paquete da publicación procede de \'{}\'. Continuar?',
			'updatesAvailable' => 'Actualizacións dispoñibles',
			'updatesAvailableNotifDescription' => 'Informa á usuaria de que hai actualizacións dispoñibles para unha ou varias apps seguidas por Updatium',
			'noNewUpdates' => 'Sen actualizacións.',
			'xHasAnUpdate' => 'Hai unha actualización para {}.',
			'appsUpdated' => 'Apps actualizadas',
			'appsNotUpdated' => 'Fallou a actualización das aplicacións',
			'appsUpdatedNotifDescription' => 'Informa á usuaria de que se aplicaron en segundo plano actualizacións para unha ou varias apps',
			'xWasUpdatedToY' => '{} actualizouse a {}.',
			'xWasNotUpdatedToY' => 'Fallou a actualización de {} a {}.',
			'errorCheckingUpdates' => 'Erro ao comprobar as actualizacións',
			'errorCheckingUpdatesNotifDescription' => 'Unha notificación que se mostra cando falla a actualización en segundo plano',
			'appsRemoved' => 'Apps retiradas',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Informa á usuaria de que se retiraron unha ou varias apps debido a erros ao cargalas',
			'xWasRemovedDueToErrorY' => 'Retirouse {} debido a este erro: {}',
			'completeAppInstallation' => 'Instalación completa da app',
			'updatiumMustBeOpenToInstallApps' => 'Updatium ten que estar aberta para instalar apps',
			'completeAppInstallationNotifDescription' => 'Pídelle á usuaria volver a Updatium para acabar de instalar a app',
			'checkingForUpdates' => 'Comprobando actualizacións',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notificación temporal que aparece ao buscar actualizacións',
			'pleaseAllowInstallPerm' => 'Permite que Updatium instale apps',
			'trackOnly' => 'Só-seguimento',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Erro {}',
			'versionCorrectionDisabled' => 'Corrección da versión desactivada (parece que o complemento non funciona)',
			'unknown' => 'Descoñecido',
			'none' => 'Nada',
			'all' => 'Todo',
			'never' => 'Nunca',
			'latestVersion' => 'Última',
			'installedVersionX' => 'Instalada: {}',
			'lastUpdateCheckX' => 'Última comprobación: {}',
			'remove' => 'Retirar',
			'quickLinks' => 'Quick Links',
			'yesMarkUpdated' => 'Si, marcar como actualizada',
			'fdroid' => 'Oficial de F-Droid',
			'appIdOrName' => 'ID da app ou nome',
			'appId' => 'ID da app',
			'appWithIdOrNameNotFound' => 'Non se atopa ningunha app con ese ID ou nome',
			'reposHaveMultipleApps' => 'Os repositorios poden conter varias apps',
			'fdroidThirdPartyRepo' => 'Repositorio F-Droid de terceiras partes',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instalar',
			'markInstalled' => 'Marcar como instalada',
			'update' => 'Actualizar',
			'updated' => 'Actualizada',
			'markUpdated' => 'Marcar como actualizada',
			'download' => 'Download',
			'additionalOptions' => 'Opcións adicionais',
			'disableVersionDetection' => 'Desactivar detección da versión',
			'noVersionDetectionExplanation' => 'Esta opción só se debería usar coas apps nas que a detección da versión non funciona correctamente.',
			'downloadingX' => 'Descargando {}',
			'downloadX' => 'Descargar {}',
			'downloadedX' => 'Descargado {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Liberar activos',
			'downloadNotifDescription' => 'Informa á usuaria do progreso da descarga da app',
			'noAPKFound' => 'Non se atopa o APK',
			'noVersionDetection' => 'Non se detecta a versión',
			'categorize' => 'Categorizar',
			'categories' => 'Categorías',
			'category' => 'Categoría',
			'noCategory' => 'Sen categoría',
			'noCategories' => 'Sen categorías',
			'categoryDeleteQuestion' => 'Eliminar categorías?',
			'categoryDeleteWarning' => 'Todas as apps nas categorías eliminadas quedarán sen categorizar.',
			'addCategory' => 'Engadir categoría',
			'label' => 'Etiqueta',
			'language' => 'Idioma',
			'copiedToClipboard' => 'Copiado ao portapapeis',
			'storagePermissionDenied' => 'Sen permiso para almacenaxe',
			'selectedCategorizeWarning' => 'Isto substituirá calquera todas as categorías existentes nas apps seleccionadas.',
			'filterAPKsByRegEx' => 'Filtrar APKs cunha expresión regular',
			'removeFromUpdatium' => 'Retirar de Updatium',
			'uninstallFromDevice' => 'Desinstalar do dispositivo',
			'onlyWorksWithNonVersionDetectApps' => 'Só funciona para as apps que teñen desactivada a detección da versión.',
			'releaseDateAsVersion' => 'Usar data de publicación como texto da versión.',
			'releaseTitleAsVersion' => 'Usar título da publicación como texto da versión.',
			'releaseDateAsVersionExplanation' => 'Só se debería usar esta opción para apps nas que non funciona ben a detección da versión pero si está dispoñible a data de publicación.',
			'changes' => 'Cambios',
			'releaseDate' => 'Data de publicación',
			'importFromURLsInFile' => 'Importar desde URLs no ficheiro (como OPML)',
			'versionDetectionExplanation' => 'Facer concordar a versión detectada polo SO e o texto da versión',
			'versionDetection' => 'Detección da versión',
			'standardVersionDetection' => 'Detcción estándar da versión',
			'groupByCategory' => 'Agrupar por categoría',
			'listView' => 'Vista de lista',
			'gridView' => 'Vista de grade',
			'autoApkFilterByArch' => 'Tentar filtrar APKs por arquitectura de CPU se é posible',
			'autoLinkFilterByArch' => 'Intentar filtrar se é posible as ligazóns por arquitectura da CPU',
			'overrideSource' => 'Obviar orixe',
			'dontShowAgain' => 'Non mostrar isto máis',
			'dontShowTrackOnlyWarnings' => 'Non mostrar avisos de \'só-seguimento\'',
			'dontShowAPKOriginWarnings' => 'Non mostrar avisos sobre a orixe do APK',
			'moveNonInstalledAppsToBottom' => 'Mover as apps non instaladas á parte baixa da vista de apps',
			'gitlabPATLabel' => 'Token persoal de acceso a GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Sobre',
			'requiresCredentialsInSettings' => '{} precisa credenciais adicionais (nos Axustes)',
			'checkOnStart' => 'Buscar actualizacións ao inicio',
			'safeMode' => 'Modo seguro',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Engadir aplicación está desactivado no modo seguro',
			'tryInferAppIdFromCode' => 'Intentar adiviñar o ID da app desde o código fonte',
			'removeOnExternalUninstall' => 'Retirar automaticamente as apps desinstaladas externamente',
			'pickHighestVersionCode' => 'Autoseleccionar o APK coa versión máis alta',
			'checkUpdateOnDetailPage' => 'Buscar actualizacións ao abrir a páxina con detalles da app',
			'disablePageTransitions' => 'Desactivar as animacións de transición de páxina',
			'reversePageTransitions' => 'Modo inverso para as animacións de transición',
			'minStarCount' => 'Número mínimo de estrelas',
			'addInfoBelow' => 'Engadir esta información embaixo.',
			'addInfoInSettings' => 'Engadir esta información nos Axustes.',
			'githubSourceNote' => 'Pódese evitar a limitación de intentos de GitHub usando unha clave da API.',
			'sortByLastLinkSegment' => 'Ordear só polo último segmento da ligazón',
			'filterReleaseNotesByRegEx' => 'Filtrar notas da versión con expresión regular',
			'customLinkFilterRegex' => 'Filtro persoal da ligazón da APK con expresión regular (por defecto \'.apk$\')',
			'appsPossiblyUpdated' => 'Intentos de actualizar a APP',
			'appsPossiblyUpdatedNotifDescription' => 'Avisa á usuaria de que unha ou varias apps puideron ser actualizadas en segundo plano',
			'xWasPossiblyUpdatedToY' => '{} pode actualizarse a {}.',
			'enableBackgroundUpdates' => 'Activar actualizacións en segundo plano',
			'backgroundUpdateReqsExplanation' => 'Non todas as apps se poden actualizar en segundo plano.',
			'backgroundUpdateLimitsExplanation' => 'O éxito dunha instalación en segundo plano só se pode determinar unha vez se abre Obtanium.',
			'verifyLatestTag' => 'Verificar a etiqueta \'latest\'',
			'intermediateLinkRegex' => 'Filtrar para unha ligazón \'intermediate\' a visitar',
			'filterByLinkText' => 'Filtrar ligazóns por texto da ligazón',
			'matchLinksOutsideATags' => 'Buscar en ligazóns fór da etiqueta <a>',
			'intermediateLinkNotFound' => 'Non se atopan ligazóns intermedias',
			'intermediateLink' => 'Ligazón intermedia',
			'exemptFromBackgroundUpdates' => 'Omitir nas actualizacións en segundo plano (se activadas)',
			'bgUpdatesOnWiFiOnly' => 'Desactivar actualizacións en segundo plano cando non se usa Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Desactivar actualizacións en segundo plano cando non está cargando batería',
			'autoSelectHighestVersionCode' => 'Autoseleccionar a versión co versionCode APK máis alto',
			'versionExtractionRegEx' => 'Extracción do texto da versión RegEx',
			'trimVersionString' => 'Recortar texto da versión con RegEx',
			'matchGroupToUseForX' => 'Buscar no grupo a usar para "{}"',
			'matchGroupToUse' => 'Buscar no grupo a usar para a extración por RegEX do texto da versión',
			'highlightTouchTargets' => 'Obxectivos menos evidentes',
			'pickExportDir' => 'Elixir directorio de exportación',
			'autoExportOnChanges' => 'Exportar automaticamente ao haber cambios',
			'includeSettings' => 'Incluír axustes',
			'filterVersionsByRegEx' => 'Filtrar versións por expresión regular',
			'trySelectingSuggestedVersionCode' => 'Intentar seleccionar o versionCode APK suxerido',
			'dontSortReleasesList' => 'Manter orde de publicación da API',
			'reverseSort' => 'Orde inversa',
			'takeFirstLink' => 'Coller a primeira ligazón',
			'skipSort' => 'Omitir ordear',
			'debugMenu' => 'Menú depuración',
			'bgTaskStarted' => 'Comezou a tarefa en segundo plano - comproba o rexistro.',
			'runBgCheckNow' => 'Realizar agora a comprobación de actualizacións',
			'versionExtractWholePage' => 'Aplicar a expresión regular para extracción á páxina completa',
			'installing' => 'Instalando',
			'skipUpdateNotifications' => 'Omitir avisos de actualizacións',
			'updatesAvailableNotifChannel' => 'Actualizacións dispoñibles',
			'appsUpdatedNotifChannel' => 'Apps actualizadas',
			'appsPossiblyUpdatedNotifChannel' => 'Intentos de actualización da app',
			'errorCheckingUpdatesNotifChannel' => 'Erro ao buscar actualizacións',
			'appsRemovedNotifChannel' => 'Apps retiradas',
			'downloadingXNotifChannel' => 'Descargando {}',
			'completeAppInstallationNotifChannel' => 'Completar instalación da app',
			'checkingForUpdatesNotifChannel' => 'Comprobando actualizacións',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Buscar actualizacións śo para apps instaladas e só-seguimento',
			'supportFixedAPKURL' => 'Compatible con APK URLs fixas',
			'selectX' => 'Seleccionar {}',
			'parallelDownloads' => 'Permitir descargas paralelas',
			'useShizuku' => 'Use Shizuku ou Sui para instalar',
			'shizukuBinderNotFound' => 'O servizo Shizuku non se está executando',
			'shizukuOld' => 'Versión antiga de Shizuku (<11) - actualiza',
			'shizukuOldAndroidWithADB' => 'Shizuku executándose en Android < 8.1 con ADB - actualiza Android ou usa Sui no seu lugar',
			'shizukuPretendToBeGooglePlay' => 'Establecer Google Play como fonte de instalación (se se usa Shizuku)',
			'useSystemFont' => 'Usar tipo de letra do sistema',
			'useVersionCodeAsOSVersion' => 'Use versionCode da app como versión detectada polo SO',
			'requestHeader' => 'Solicitar cabeceira',
			'useLatestAssetDateAsReleaseDate' => 'Usar data de subida do último recurso como data de publicación',
			'defaultPseudoVersioningMethod' => 'Método de pseudo-versión por defecto',
			'partialAPKHash' => 'Suma de comprobación do APK parcial',
			'APKLinkHash' => 'Suma de comprobación da ligazón APK',
			'directAPKLink' => 'Ligazón APK directa',
			'pseudoVersionInUse' => 'Estase a usar unha pseudo-versión',
			'installedVersion' => 'Instalada',
			'installed' => 'Instalada',
			'notInstalledApps' => 'Non instalada',
			'latest' => 'Última',
			'invertRegEx' => 'Invertir expresión regular',
			'note' => 'Nota',
			'selfHostedNote' => 'O menú despregable "{}" pode usarse para acadar instancias persoais de calquera orixe.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'Non se puido procesar o APK (non compatible ou parcialmente descargado)',
			'beforeNewInstallsShareToAppVerifier' => 'Compartir novas apps con AppVerifier (se está dispoñible)',
			'appVerifierInstructionToast' => 'Compartir con AppVerifier, e volver aquí ao finalizar.',
			'wiki' => 'Axuda/wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Permitir peticións HTTP non seguras',
			'stayOneVersionBehind' => 'Manterse nunha versión anterior á última',
			'useFirstApkOfVersion' => 'Autoseleccionar o primeiro de múltiples APKs',
			'refreshBeforeDownload' => 'Actualizar detalles sobre a app antes de actualizar',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nome',
			'smartname' => 'Nome (intelixente)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Criterio da orde',
			'welcome' => 'Benvida',
			'batteryOptimizationNote' => 'Ten en conta que as descargas en segundo plano poderías realizarse de xeito máis fiable cambiando ao servizo en "primeiro plano" nos axustes de Updatium e/ou desactivando a optimización da batería para Obtanium nos axustes do sistema.',
			'fileDeletionError' => 'Fallou a eliminación do ficheiro (intentar eliminalo manualmente e volver a intentar): "{}"',
			'foregroundService' => 'Servizo en primeiro plano Updatium',
			'foregroundServiceExplanation' => 'Usar un servizo en primeiro plano para a comprobación de actualizacións (máis fiable, consume máis batería)',
			'fgServiceNotice' => 'Esta notificación requírese para a comprobación de actualizacións en segundo plano (pode ocultarse cos axustes do sistema)',
			'excludeSecrets' => 'Excluír secretos',
			'GHReqPrefix' => '\'omeritzics/Updatium\' instancia para solicitudes github',
			'includeZips' => 'Incluír ficheiros ZIP',
			'zippedApkFilterRegEx' => 'Filtrar APKs dentro do ZIP',
			'multipleSigners' => 'Múltiples Signadores',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'Remove app?', other: 'Retirar apps?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'Demasiadas peticións (taxa limitada) - volver a intentar en {count} minuto', other: 'Demasiadas peticións (taxa limitada) - volver a intentar en {count} minutos', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'A actualización en segundo plano atopou un {error}, programará un reintento en {count} minuto', other: 'A actualización en segundo plano atopou un {error}, programará un reintento en {count} minutos', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'A actualización en segundo plano atopou {count} actualización - avisará a usuaria se fose preciso', other: 'A actualización en segundo plano atopou {count} actualizacións - avisará á usuaria se fose preciso', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{count} App', other: '{count} Apps', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{count} minuto', other: '{count} minutos', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{count} hora', other: '{count} horas', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{count} día', other: '{count} días', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'Limpado {n} rexistro (anterior = {before}, posterior = {after})', other: 'Limpados {n} rexistros (anterior = {before}, posterior = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{app} e outra app teñen actualizacións.', other: '{app} e {count} apps máis teñen actualizacións.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{app} e outra actualizáronse.', other: '{app} e outras {count} apps actualizáronse.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'Fallou a actualización de {app} e outra app.', other: 'Fallou a actualización de {app} e {count} apps máis.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{app} e outra app poderían ter sido actualizadas.', other: '{app} e {count} apps máis poderían ter sido actualizadas.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('gl'))(n, one: 'Certificado hash', other: 'Certificado Hashes', ), 
			'securityDisclaimerTitle' => 'Aviso de Seguridade e Legal',
			'license' => 'Licenza',
			'licenseText' => 'Este aplicativo distribúese baixo a Licenza GPL v3.',
			'disclaimer' => 'Aviso',
			'disclaimerText' => 'Este aplicativo non distribúe, aloxa nin verifica ningún dos aplicativos externos. O usuario asume a responsabilidade total pola seguridade e legalidade de calquera software instalado a través desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para descargar Updatium - é moi desaconsellable descargalo doutros lugares xa que a descarga desde fontes non oficiais non é segura.',
			'privacy' => 'Privacidade',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Aceptar e continuar',
			'decline' => 'Rexeitar',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => '¿Estás gozando de Updatium?',
			'githubStarPromptContent' => 'Updatium é un proxecto comunitario voluntario de código aberto desenvolvido no meu tempo libre. Se che gustaría apoiar o proxecto, por favor considera darlle unha estrela en GitHub para axudarnos a chegar a máis usuarios e colaboradores. Non volverás ser molestado sobre isto. Grazas de antemán! :)',
			'githubStarPromptStar' => 'Dar estrela',
			'githubStarPromptDontShowAgain' => 'Non mostrar máis',
			'sourceCode' => 'Código fonte',
			'developedBy' => 'Desenvolvido por',
			'appDescription' => 'Un catálogo de aplicacións Android personalizábel que permite actualizar as túas aplicacións directamente desde as súas fontes APK.',
			'safeModeEnabled' => 'Modo seguro activado',
			'safeModeDisabled' => 'Modo seguro desactivado',
			'safeModeDisable' => 'Desactivar Modo seguro',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Administración do Modo seguro',
			'safeModeSetupDescription' => 'Establece un contrasinal para activar o Modo seguro. Unha vez activado, o Modo seguro impide engadir novas apps e só pode ser desactivado co contrasinal.',
			'safeModeToggleDescription' => 'Introduce o teu contrasinal para activar ou desactivar o Modo seguro.',
			'safeModeSetPassword' => 'Establecer contrasinal',
			'safeModeConfirmPassword' => 'Confirmar contrasinal',
			'safeModeEnterPassword' => 'Introducir contrasinal',
			'safeModePasswordHint' => 'Mínimo 8 caracteres',
			'safeModePasswordTooShort' => 'O contrasinal debe ter polo menos 8 caracteres',
			'safeModePasswordMismatch' => 'Os contrasinais non coinciden',
			'safeModePasswordIncorrect' => 'Contrasinal incorrecto',
			'safeModePasswordError' => 'Erro ao establecer o contrasinal. Por favor, inténtao de novo.',
			'safeModeEnable' => 'Activar Modo seguro',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} toques restantes para desactivar o Modo seguro',
			'safeModeEnabledHint' => 'Modo seguro activado. Toca varias veces o número de versión en Configuración para desactivar.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Entendido',
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
