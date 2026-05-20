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
class TranslationsPt with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPt({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.pt,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPt _root = this; // ignore: unused_field

	@override 
	TranslationsPt $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPt(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'URL {} inválida';
	@override String get noReleaseFound => 'Não foi possível encontrar uma versão adequada';
	@override String get noVersionFound => 'Não foi possível encontrar uma versão';
	@override String get urlMatchesNoSource => 'A URL não corresponde a uma fonte conhecida';
	@override String get cantInstallOlderVersion => 'Não é permitido instalar uma versão anterior de uma aplicação';
	@override String get appIdMismatch => 'O ID do pacote descarregado não é igual ao ID da aplicação instalada';
	@override String get functionNotImplemented => 'Esta classe não implementou essa função';
	@override String get placeholder => 'Espaço reservado';
	@override String get someErrors => 'Alguns erros ocorreram';
	@override String get unexpectedError => 'Erro inesperado';
	@override String get ok => 'OK';
	@override String get and => 'e';
	@override String get githubPATLabel => 'Token de acesso pessoal do GitHub';
	@override String get includePrereleases => 'Incluir pré-lançamentos';
	@override String get fallbackToOlderReleases => 'Retornar para versões anteriores';
	@override String get filterReleaseTitlesByRegEx => 'Filtrar títulos de versões usando expressão regular';
	@override String get invalidRegEx => 'Expressão regular inválida';
	@override String get noDescription => 'Sem descrição';
	@override String get cancel => 'Cancelar';
	@override String get kContinue => 'Continuar';
	@override String get requiredInBrackets => '(Necessário)';
	@override String get dropdownNoOptsError => 'ERRO: O DROPDOWN DEVE TER PELO MENOS UMA OPÇÃO';
	@override String get color => 'Cor';
	@override String get standard => 'Padrão';
	@override String get custom => 'Personalizado';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Utilizar cores Material You';
	@override String get githubStarredRepos => 'repositórios favoritos no GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nome de usuário';
	@override String get wrongArgNum => 'Número de argumentos errado';
	@override String get xIsTrackOnly => '{} é \'Apenas monitorar\'';
	@override String get source => 'Fonte';
	@override String get app => 'Aplicação';
	@override String get appsFromSourceAreTrackOnly => 'As aplicações desta fonte são \'Apenas monitorar\'.';
	@override String get youPickedTrackOnly => 'Você selecionou a opção \'Apenas monitorar\'.';
	@override String get trackOnlyAppDescription => 'As atualizações desta aplicação serão monitorizadas, mas o Updatium não poderá descarregá-la ou instalá-la.';
	@override String get cancelled => 'Cancelado';
	@override String get appAlreadyAdded => 'Aplicação já adicionada';
	@override String get alreadyUpToDateQuestion => 'Aplicação já foi atualizada?';
	@override String get addApp => 'Adicionar aplicação';
	@override String get appSourceURL => 'URL de origem da aplicação';
	@override String get error => 'Erro';
	@override String get add => 'Adicionar';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Procurar (apenas algumas fontes)';
	@override String get search => 'Procurar';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opções adicionais para {}';
	@override String get supportedSources => 'Fontes compatíveis';
	@override String get trackOnlyInBrackets => '(apenas monitorar)';
	@override String get searchableInBrackets => '(pesquisável)';
	@override String get appsString => 'Aplicações';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Bem-vindo!';
	@override String get noAppsSubtext => 'Pode adicionar a sua primeira aplicação tocando em \'Adicionar aplicação\' abaixo.';
	@override String get noAppsForFilter => 'Sem aplicações para filtrar';
	@override String get byX => 'Por {}';
	@override String get percentProgress => 'Progresso: {}%';
	@override String get pleaseWait => 'Por favor, espere';
	@override String get updateAvailable => 'Atualização disponível';
	@override String get notInstalled => 'Não instalado';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versão';
	@override String get selectAll => 'Selecionar todos';
	@override String get deselectX => 'Deselecionar {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} será removido do Updatium mais permanecerá instalado no dispositivo.';
	@override String get removeSelectedAppsQuestion => 'Remover aplicações selecionadas?';
	@override String get removeSelectedApps => 'Remover aplicações selecionadas';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Atualizar {}';
	@override String get installX => 'Instalar {}';
	@override String get markXTrackOnlyAsUpdated => 'Marcar {}\n(Apenas monitorar)\ncomo Atualizado';
	@override String get changeX => 'Mudar {}';
	@override String get installUpdateApps => 'Instalar/Atualizar aplicações';
	@override String get installUpdateSelectedApps => 'Instalar/Atualizar aplicações selecionadas';
	@override String get markXSelectedAppsAsUpdated => 'Marcar {} aplicações selecionadas como atualizadas?';
	@override String get no => 'Não';
	@override String get yes => 'Sim';
	@override String get markSelectedAppsUpdated => 'Marcar aplicações selecionadas como Atualizadas';
	@override String get pinToTop => 'Fixar no topo';
	@override String get unpinFromTop => 'Desafixar do topo';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Reiniciar o estado de instalação das aplicações selecionadas?';
	@override String get installStatusOfXWillBeResetExplanation => 'O estado de instalação de todas as aplicações selecionadas será reiniciado.\n\nIsto pode ajudar quando uma versão de uma aplicação mostrada no Updatium está incorreta devido a falhas na atualização ou outros problemas.';
	@override String get customLinkMessage => 'Esses links funcionam em dispositivos com o Updatium instalado';
	@override String get shareAppConfigLinks => 'Partilhar a configuração da aplicação como um link HTML';
	@override String get resetInstallStatus => 'Reiniciar status de instalação';
	@override String get more => 'Mais';
	@override String get removeOutdatedFilter => 'Remover filtro de aplicações desatualizadas';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Mostrar apenas aplicações desatualizadas';
	@override String get filter => 'Filtro';
	@override String get filterApps => 'Filtrar aplicações';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nome da aplicação';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Aplicações atualizadas';
	@override String get nonInstalledApps => 'Aplicações não instaladas';
	@override String get importExport => 'Importar/Exportar';
	@override String get settings => 'Configurações';
	@override String get exportedTo => 'Exportado para {}';
	@override String get updatiumExport => 'Exportar dados do Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Entrada inválida';
	@override String get importedX => 'Importado {}';
	@override String get updatiumImport => 'Importar dados do Updatium';
	@override String get importFromURLList => 'Importar de lista de URLs';
	@override String get searchQuery => 'Pesquisa';
	@override String get appURLList => 'Lista de URLs de aplicações';
	@override String get line => 'Linha';
	@override String get searchX => 'Pesquisar na/o {}';
	@override String get noResults => 'Nenhum resultado encontrado';
	@override String get importX => 'Importar {}';
	@override String get importedAppsIdDisclaimer => 'Aplicações Importadas podem ser mostradas incorretamente como "Não Instalado".\nPara corrigir, reinstale-as usando o Updatium.\nIsto não deve afetar os dados da aplicação.\n\nAfeta apenas os métodos de importação de URL e de terceiros.';
	@override String get importErrors => 'Erros de importação';
	@override String get importedXOfYApps => '{} de {} aplicações importadas.';
	@override String get followingURLsHadErrors => 'As seguintes URLs apresentaram erros:';
	@override String get selectURL => 'Selecionar URL';
	@override String get selectURLs => 'Selecionar URLs';
	@override String get pick => 'Escolher';
	@override String get theme => 'Tema';
	@override String get dark => 'Escuro';
	@override String get light => 'Claro';
	@override String get followSystem => 'Padrão do sistema';
	@override String get followSystemThemeExplanation => 'O tema do sistema seguinte só é possível através da utilização de aplicações de terceiros';
	@override String get useBlackTheme => 'Usar tema preto AMOLED';
	@override String get appSortBy => 'Classificar aplicação por';
	@override String get authorName => 'Autor/Nome';
	@override String get nameAuthor => 'Nome/Autor';
	@override String get asAdded => 'Como adicionado';
	@override String get appSortOrder => 'Ordem de classificação das aplicações';
	@override String get ascending => 'Ascendente';
	@override String get descending => 'Descendente';
	@override String get bgUpdateCheckInterval => 'Intervalo de verificação de atualizações em segundo-plano';
	@override String get neverManualOnly => 'Nunca - apenas manual';
	@override String get appearance => 'Aparência';
	@override String get pinUpdates => 'Fixar atualizações no topo da janela das aplicações';
	@override String get updates => 'Atualizações';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Token de acesso';
	@override String get appSource => 'Fonte da aplicação';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Sem logs';
	@override String get appLogs => 'Logs da aplicação';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Fechar';
	@override String get share => 'Compartilhar';
	@override String get appNotFound => 'Aplicação não encontrada';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'exportação de updatium';
	@override String get pickAnAPK => 'Selecionar um APK';
	@override String get appHasMoreThanOnePackage => '{} tem mais de um pacote:';
	@override String get deviceSupportsXArch => 'Seu dispositivo suporta a arquitetura de CPU {}.';
	@override String get deviceSupportsFollowingArchs => 'Seu dispositivo suporta as seguintes arquiteturas de CPU:';
	@override String get warning => 'Aviso';
	@override String get sourceIsXButPackageFromYPrompt => 'A fonte da aplicação é \'{}\' mas a origem do pacote é \'{}\'. Continuar?';
	@override String get updatesAvailable => 'Atualizações disponíveis';
	@override String get updatesAvailableNotifDescription => 'Notifica o utilizador quando as atualizações de uma ou mais aplicações monitorizadas pelo Updatium estão disponíveis';
	@override String get noNewUpdates => 'Sem novas atualizações.';
	@override String get xHasAnUpdate => '{} tem uma atualização.';
	@override String get appsUpdated => 'Aplicações atualizadas';
	@override String get appsNotUpdated => 'Falha na atualização das aplicações';
	@override String get appsUpdatedNotifDescription => 'Notifica o utilizador quando as atualizações foram aplicadas em segundo plano para uma ou mais aplicações ';
	@override String get xWasUpdatedToY => '{} foi atualizado para {}.';
	@override String get xWasNotUpdatedToY => 'Falha ao atualizar {} para {}.';
	@override String get errorCheckingUpdates => 'Erro ao procurar por atualizações';
	@override String get errorCheckingUpdatesNotifDescription => 'Uma notificação que mostra quando a checagem por atualizações em segundo-plano falha';
	@override String get appsRemoved => 'Aplicações removidas';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifica o utilizador quando uma ou mais aplicações foram removidas devido a erros de carregamento';
	@override String get xWasRemovedDueToErrorY => '{} foi removido devido a este erro: {}';
	@override String get completeAppInstallation => 'Instalação da aplicação concluída';
	@override String get updatiumMustBeOpenToInstallApps => 'O Updatium deve estar aberto para instalar as aplicações';
	@override String get completeAppInstallationNotifDescription => 'Pede ao usuário que retorne ao Updatium para finalizar a instalação de uma aplicação';
	@override String get checkingForUpdates => 'Verificando atualizações';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notificação transiente que aparece quando o Updatium está verificando se há atualizações';
	@override String get pleaseAllowInstallPerm => 'Por favor, permita que o Updatium instale aplicações';
	@override String get trackOnly => 'Apenas monitorar';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Erro {}';
	@override String get versionCorrectionDisabled => 'Correção de versão desativada (plugin parece não funcionar)';
	@override String get unknown => 'Desconhecido';
	@override String get none => 'Nenhum';
	@override String get all => 'Todos';
	@override String get never => 'Nunca';
	@override String get latestVersion => 'Última versão';
	@override String get installedVersionX => 'Versão instalada: {}';
	@override String get lastUpdateCheckX => 'Última verificação de atualizações: {}';
	@override String get remove => 'Remover';
	@override String get quickLinks => 'Links Rápidos';
	@override String get yesMarkUpdated => 'Sim, marcar como atualizado';
	@override String get fdroid => 'Oficial F-Droid';
	@override String get appIdOrName => 'ID da aplicação ou nome';
	@override String get appId => 'ID da aplicação';
	@override String get appWithIdOrNameNotFound => 'Nenhuma aplicação foi encontrada com esse ID ou nome';
	@override String get reposHaveMultipleApps => 'Os repositórios podem conter múltiplas aplicações';
	@override String get fdroidThirdPartyRepo => 'Repositórios de terceiros F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instalar';
	@override String get markInstalled => 'Marcar instalado';
	@override String get update => 'Atualizar';
	@override String get updated => 'Atualizado';
	@override String get markUpdated => 'Marcar como atualizado';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opções adicionais';
	@override String get disableVersionDetection => 'Desativar detecção de versão';
	@override String get noVersionDetectionExplanation => 'Esta opção deve ser usada apenas por aplicações onde a deteção de versão não funciona corretamente.';
	@override String get downloadingX => 'Baixando {}';
	@override String get downloadX => 'Descarregar {}';
	@override String get downloadedX => 'Descarregado {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Libertação de activos';
	@override String get downloadNotifDescription => 'Notifica o utilizador sobre o progresso do download de uma aplicação';
	@override String get noAPKFound => 'APK não encontrado';
	@override String get noVersionDetection => 'Sem detecção de versão';
	@override String get categorize => 'Categorizar';
	@override String get categories => 'Categorias';
	@override String get category => 'Categoria';
	@override String get noCategory => 'Sem categoria';
	@override String get noCategories => 'Sem categorias';
	@override String get categoryDeleteQuestion => 'Deletar  categorias?';
	@override String get categoryDeleteWarning => 'Todas as aplicações em categorias removidas serão descategorizadas.';
	@override String get addCategory => 'Adicionar categoria';
	@override String get label => 'Etiqueta';
	@override String get language => 'Linguagem';
	@override String get copiedToClipboard => 'Copiado para a área de transferência';
	@override String get storagePermissionDenied => 'Permissão de armazenamento negada';
	@override String get selectedCategorizeWarning => 'Isto irá substituir qualquer configuração de categoria para as aplicações selecionadas.';
	@override String get filterAPKsByRegEx => 'Filtrar APKs usando expressão regular';
	@override String get removeFromUpdatium => 'Remover do Updatium';
	@override String get uninstallFromDevice => 'Desinstalar do dispositivo';
	@override String get onlyWorksWithNonVersionDetectApps => 'Apenas funciona para aplicações com a deteção de versão desativada.';
	@override String get releaseDateAsVersion => 'Usar data de lançamento como versão';
	@override String get releaseTitleAsVersion => 'Utilizar o título da versão como cadeia de versões';
	@override String get releaseDateAsVersionExplanation => 'Esta opção só deve ser usada para aplicações onde a deteção de versão não funciona corretamente, mas existe uma data de lançamento disponível.';
	@override String get changes => 'Alterações';
	@override String get releaseDate => 'Data de lançamento';
	@override String get importFromURLsInFile => 'Importar de URLs em arquivo (formato OPML)';
	@override String get versionDetectionExplanation => 'Reconciliar string de versão com versão detectada no sistema operacional';
	@override String get versionDetection => 'Detecção de versão';
	@override String get standardVersionDetection => 'Detecção de versão padrão';
	@override String get groupByCategory => 'Agroupar por categoria';
	@override String get listView => 'Vista de lista';
	@override String get gridView => 'Vista de grelha';
	@override String get autoApkFilterByArch => 'Tente filtrar APKs por arquitetura de CPU, se possível';
	@override String get autoLinkFilterByArch => 'Tentativa de filtrar as ligações por arquitetura de CPU, se possível';
	@override String get overrideSource => 'Substituir fonte';
	@override String get dontShowAgain => 'Não mostrar isso novamente';
	@override String get dontShowTrackOnlyWarnings => 'Não mostrar avisos \'Apenas monitorar\'';
	@override String get dontShowAPKOriginWarnings => 'Não mostrar avisos de origem da APK';
	@override String get moveNonInstalledAppsToBottom => 'Mover aplicações não instaladas para o fundo da lista de aplicações';
	@override String get gitlabPATLabel => 'Token de acesso pessoal do Gitlab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Sobre';
	@override String get requiresCredentialsInSettings => '{}: Isso requer credenciais adicionais (em Configurações)';
	@override String get checkOnStart => 'Verificar se há atualizações ao iniciar';
	@override String get safeMode => 'Modo de segurança';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Adicionar aplicativo está desativado no modo de segurança';
	@override String get tryInferAppIdFromCode => 'Tentar inferir o ID do aplicativo a partir do código-fonte';
	@override String get removeOnExternalUninstall => 'Remover automaticamente aplicações desinstaladas externamente';
	@override String get pickHighestVersionCode => 'Auto-selecionar o maior número de versão do APK';
	@override String get checkUpdateOnDetailPage => 'Checar por atualizações ao abrir a página de detalhes de uma aplicação';
	@override String get disablePageTransitions => 'Desativar animações de transição de página';
	@override String get reversePageTransitions => 'Animações de transição de página invertidas';
	@override String get minStarCount => 'Contagem mínima de estrelas';
	@override String get addInfoBelow => 'Adicionar essa informação abaixo.';
	@override String get addInfoInSettings => 'Adicionar essa informação nas configurações.';
	@override String get githubSourceNote => 'A limitação de taxa do GitHub pode ser evitada usando uma chave de API.';
	@override String get sortByLastLinkSegment => 'Ordenar apenas usando o último segmento do link';
	@override String get filterReleaseNotesByRegEx => 'Filtrar notas de versão usando Regex';
	@override String get customLinkFilterRegex => 'Filtro de link personalizado usando expressão regular (Padrão \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Aplicações possivelmente atualizadas';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifica o utilizador de que as atualizações de uma ou mais aplicações foram potencialmente aplicadas em segundo plano';
	@override String get xWasPossiblyUpdatedToY => '{} pode ter sido atualizado para {}.';
	@override String get enableBackgroundUpdates => 'Ativar atualizações em segundo-plano';
	@override String get backgroundUpdateReqsExplanation => 'As atualizações em segundo plano podem não ser possíveis para todas as aplicações.';
	@override String get backgroundUpdateLimitsExplanation => 'O sucesso de uma instalação em segundo-plano só pode ser determinado quando o Updatium é aberto.';
	@override String get verifyLatestTag => 'Verifique a \'última\' etiqueta';
	@override String get intermediateLinkRegex => 'Filtrar um link \'intermediário\' para visitar';
	@override String get filterByLinkText => 'Filtrar links pelo texto do link';
	@override String get matchLinksOutsideATags => 'Corresponder ligações fora das etiquetas <a>';
	@override String get intermediateLinkNotFound => 'Link intermediário não encontrado';
	@override String get intermediateLink => 'Link intermediário';
	@override String get exemptFromBackgroundUpdates => 'Isento de atualizações em segundo-plano (se ativadas)';
	@override String get bgUpdatesOnWiFiOnly => 'Desative as atualizações em segundo-plano quando não estiver conectado no Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Desativar actualizações em segundo plano quando não estiver a carregar';
	@override String get autoSelectHighestVersionCode => 'Auto-selecionar a versão mais recente';
	@override String get versionExtractionRegEx => 'Regex de extração de versão';
	@override String get trimVersionString => 'Cortar a cadeia de caracteres da versão com RegEx';
	@override String get matchGroupToUseForX => 'Grupo de correspondência a utilizar para "{}"';
	@override String get matchGroupToUse => 'Grupo correspondente a ser usado no Regex de extração de versão';
	@override String get highlightTouchTargets => 'Realçar áreas sensíveis ao toque que são menos óbvias';
	@override String get pickExportDir => 'Escolher diretório para exportação';
	@override String get autoExportOnChanges => 'Auto-exportar em mudanças';
	@override String get includeSettings => 'Incluir configurações';
	@override String get filterVersionsByRegEx => 'Filtrar versões por expressão regular';
	@override String get trySelectingSuggestedVersionCode => 'Tente selecionar a versão sugerida';
	@override String get dontSortReleasesList => 'Reter a ordem de lançamento da API';
	@override String get reverseSort => 'Ordenação reversa';
	@override String get takeFirstLink => 'Obter primeiro link';
	@override String get skipSort => 'Ignorar ordenação';
	@override String get debugMenu => 'Menu debug';
	@override String get bgTaskStarted => 'Tarefa em segundo-plano iniciada - verifique os logs.';
	@override String get runBgCheckNow => 'Execute agora em segundo-plano a verificação de atualizações';
	@override String get versionExtractWholePage => 'Aplicar regex de extração de versão à página inteira';
	@override String get installing => 'Instalando';
	@override String get skipUpdateNotifications => 'Pular notificações de update';
	@override String get updatesAvailableNotifChannel => 'Atualizações disponíveis';
	@override String get appsUpdatedNotifChannel => 'Aplicações atualizadas';
	@override String get appsPossiblyUpdatedNotifChannel => 'Aplicações possivelmente atualizadas';
	@override String get errorCheckingUpdatesNotifChannel => 'Erro ao procurar por atualizações';
	@override String get appsRemovedNotifChannel => 'Aplicações removidas';
	@override String get downloadingXNotifChannel => 'Baixando {}';
	@override String get completeAppInstallationNotifChannel => 'Instalação da aplicação concluída';
	@override String get checkingForUpdatesNotifChannel => 'Checando por atualizações';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Apenas verificar atualizações de aplicações instaladas e \'Apenas monitorizar\'';
	@override String get supportFixedAPKURL => 'Suporte a APK com URLs fixas';
	@override String get selectX => 'Selecionar {}';
	@override String get parallelDownloads => 'Permitir downloads paralelos';
	@override String get useShizuku => 'Utilizar Shizuku ou Sui para instalar';
	@override String get shizukuBinderNotFound => 'O Shizuku não está rodando';
	@override String get shizukuOld => 'Versão antiga do Shizuku (<11) - atualizar';
	@override String get shizukuOldAndroidWithADB => 'Shizuku a funcionar no Android < 8.1 com ADB - atualizar o Android ou utilizar o Sui';
	@override String get shizukuPretendToBeGooglePlay => 'Definir o Google Play como fonte de instalação (se for utilizado o Shizuku)';
	@override String get useSystemFont => 'Usar fonte padrão do sistema';
	@override String get useVersionCodeAsOSVersion => 'Usar o versionCode da aplicação como a versão detetada pelo sistema operativo';
	@override String get requestHeader => 'Requisitar cabeçalho';
	@override String get useLatestAssetDateAsReleaseDate => 'Use o último upload de recursos como data de lançamento';
	@override String get defaultPseudoVersioningMethod => 'Método de pseudo-versionamento padrão';
	@override String get partialAPKHash => 'Hash APK parcial';
	@override String get APKLinkHash => 'Hash de links APK';
	@override String get directAPKLink => 'Link direto do APK';
	@override String get pseudoVersionInUse => 'Uma pseudo-versão está em uso';
	@override String get installedVersion => 'Instalado';
	@override String get installed => 'Instalado';
	@override String get notInstalledApps => 'Não instalado';
	@override String get latest => 'Mais recente';
	@override String get invertRegEx => 'Inverter expressão regular';
	@override String get note => 'Nota';
	@override String get selfHostedNote => 'O menu suspenso "{}" pode ser usado para acessar instâncias auto-hospedadas/personalizadas de qualquer fonte.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'Não foi possível analisar o APK (transferência incompatível ou parcial)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Partilhar novas aplicações com o AppVerifier (se disponível)';
	@override String get appVerifierInstructionToast => 'Partilhe com o AppVerifier e, em seguida, regresse aqui quando estiver pronto.';
	@override String get wiki => 'Ajuda/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Permitir pedidos HTTP inseguros';
	@override String get stayOneVersionBehind => 'Manter-se uma versão atrás da mais recente';
	@override String get useFirstApkOfVersion => 'Seleção automática do primeiro de vários APKs';
	@override String get refreshBeforeDownload => 'Atualizar os detalhes da aplicação antes da transferência';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nome';
	@override String get smartname => 'Nome (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Método de ordenação';
	@override String get welcome => 'Bem-vindo';
	@override String get batteryOptimizationNote => 'Note que os downloads em segundo plano podem funcionar de forma mais fiável se desativar as optimizações da bateria do SO para o Updatium.';
	@override String get fileDeletionError => 'Falha ao eliminar o ficheiro (tente eliminá-lo manualmente e depois tente novamente): "{}"';
	@override String get foregroundService => 'Serviço de primeiro plano Updatium';
	@override String get foregroundServiceExplanation => 'Utilizar um serviço em primeiro plano para verificação de actualizações (mais fiável, consome mais energia)';
	@override String get fgServiceNotice => 'Esta notificação é necessária para a verificação de actualizações em segundo plano (pode ser ocultada nas definições do SO)';
	@override String get excludeSecrets => 'Excluir segredos';
	@override String get GHReqPrefix => 'Instância \'omeritzics/Updatium\' para pedidos de GitHub';
	@override String get includeZips => 'Incluir ficheiros ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrar APKs dentro do ZIP';
	@override String get multipleSigners => 'Assinantes Múltiplos';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Remover aplicação?',
		other: 'Remover aplicações?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Muitos pedidos (taxa de pedidos limitada) - tente novamente em {count} minuto',
		other: 'Muitos pedidos (taxa limitada) - tente novamente em {count} minutos',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'A verificação de atualizações em segundo plano encontrou um {error}, agendada uma nova verificação em {count} minuto',
		other: 'A verificação de atualizações em segundo plano encontrou um {error}, agendada uma nova verificação em {count} minutos',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'A verificação de atualizações em segundo plano encontrou {count} atualização, o utilizador será notificado caso necessário',
		other: 'A verificação de atualizações em segundo plano encontrou {count} atualizações, o utilizador será notificado caso necessário',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{count} Aplicação',
		other: '{count} Aplicações',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{count} URL',
		other: '{count} URLs',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{count} minuto',
		other: '{count} minutos',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{count} hora',
		other: '{count} horas',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{count} dia',
		other: '{count} dias',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Foi limpo {n} log (antes = {antes}, depois = {depois})',
		other: 'Foram limpos {n} logs (antes = {antes}, depois = {depois})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{app} e uma outra aplicação possui atualizações.',
		other: '{app} e {count} outras aplicações possuem atualizações.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{app} e uma outra aplicação foram atualizadas.',
		other: '{app} e {count} outras aplicações foram atualizadas.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Falha ao atualizar {app} e mais 1 aplicação.',
		other: 'Falha ao atualizar {app} e {count} outras aplicações.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{app} e uma outra aplicação podem ter sido atualizadas.',
		other: '{app} e {count} outras aplicações podem ter sido atualizadas.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Hash do Certificado',
		other: 'Certificado Hashes',
	);
	@override String get securityDisclaimerTitle => 'Aviso de Segurança e Legal';
	@override String get license => 'Licença';
	@override String get licenseText => 'Esta aplicação é distribuída sob a Licença GPL v3.';
	@override String get disclaimer => 'Isenção de responsabilidade';
	@override String get disclaimerText => 'Esta aplicação não distribui, hospeda ou verifica nenhuma das aplicações externas. O utilizador assume a responsabilidade total pela segurança e legalidade de qualquer software instalado através desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para descarregar Updatium - é altamente desaconselhado descarregá-lo de outros locais, pois o descarregar de fontes não oficiais não é seguro.';
	@override String get privacy => 'Privacidade';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Aceitar e continuar';
	@override String get decline => 'Recusar';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Está a gostar do Updatium?';
	@override String get githubStarPromptContent => 'Updatium é um projeto comunitário de código aberto voluntário desenvolvido no meu tempo livre. Se gostaria de apoiar o projeto, por favor considere dar uma estrela no GitHub para nos ajudar a alcançar mais utilizadores e contribuidores. Não será incomodado sobre isto novamente. Obrigado antecipadamente! :)';
	@override String get githubStarPromptStar => 'Dar estrela';
	@override String get githubStarPromptDontShowAgain => 'Não mostrar novamente';
	@override String get sourceCode => 'Código fonte';
	@override String get developedBy => 'Desenvolvido por';
	@override String get appDescription => 'Um catálogo de aplicativos Android personalizável que permite atualizar seus aplicativos diretamente de suas fontes APK.';
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

/// The flat map containing all translations for locale <pt>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPt {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'URL {} inválida',
			'noReleaseFound' => 'Não foi possível encontrar uma versão adequada',
			'noVersionFound' => 'Não foi possível encontrar uma versão',
			'urlMatchesNoSource' => 'A URL não corresponde a uma fonte conhecida',
			'cantInstallOlderVersion' => 'Não é permitido instalar uma versão anterior de uma aplicação',
			'appIdMismatch' => 'O ID do pacote descarregado não é igual ao ID da aplicação instalada',
			'functionNotImplemented' => 'Esta classe não implementou essa função',
			'placeholder' => 'Espaço reservado',
			'someErrors' => 'Alguns erros ocorreram',
			'unexpectedError' => 'Erro inesperado',
			'ok' => 'OK',
			'and' => 'e',
			'githubPATLabel' => 'Token de acesso pessoal do GitHub',
			'includePrereleases' => 'Incluir pré-lançamentos',
			'fallbackToOlderReleases' => 'Retornar para versões anteriores',
			'filterReleaseTitlesByRegEx' => 'Filtrar títulos de versões usando expressão regular',
			'invalidRegEx' => 'Expressão regular inválida',
			'noDescription' => 'Sem descrição',
			'cancel' => 'Cancelar',
			'kContinue' => 'Continuar',
			'requiredInBrackets' => '(Necessário)',
			'dropdownNoOptsError' => 'ERRO: O DROPDOWN DEVE TER PELO MENOS UMA OPÇÃO',
			'color' => 'Cor',
			'standard' => 'Padrão',
			'custom' => 'Personalizado',
			'primary' => 'Primary',
			'useMaterialYou' => 'Utilizar cores Material You',
			'githubStarredRepos' => 'repositórios favoritos no GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nome de usuário',
			'wrongArgNum' => 'Número de argumentos errado',
			'xIsTrackOnly' => '{} é \'Apenas monitorar\'',
			'source' => 'Fonte',
			'app' => 'Aplicação',
			'appsFromSourceAreTrackOnly' => 'As aplicações desta fonte são \'Apenas monitorar\'.',
			'youPickedTrackOnly' => 'Você selecionou a opção \'Apenas monitorar\'.',
			'trackOnlyAppDescription' => 'As atualizações desta aplicação serão monitorizadas, mas o Updatium não poderá descarregá-la ou instalá-la.',
			'cancelled' => 'Cancelado',
			'appAlreadyAdded' => 'Aplicação já adicionada',
			'alreadyUpToDateQuestion' => 'Aplicação já foi atualizada?',
			'addApp' => 'Adicionar aplicação',
			'appSourceURL' => 'URL de origem da aplicação',
			'error' => 'Erro',
			'add' => 'Adicionar',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Procurar (apenas algumas fontes)',
			'search' => 'Procurar',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opções adicionais para {}',
			'supportedSources' => 'Fontes compatíveis',
			'trackOnlyInBrackets' => '(apenas monitorar)',
			'searchableInBrackets' => '(pesquisável)',
			'appsString' => 'Aplicações',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Bem-vindo!',
			'noAppsSubtext' => 'Pode adicionar a sua primeira aplicação tocando em \'Adicionar aplicação\' abaixo.',
			'noAppsForFilter' => 'Sem aplicações para filtrar',
			'byX' => 'Por {}',
			'percentProgress' => 'Progresso: {}%',
			'pleaseWait' => 'Por favor, espere',
			'updateAvailable' => 'Atualização disponível',
			'notInstalled' => 'Não instalado',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versão',
			'selectAll' => 'Selecionar todos',
			'deselectX' => 'Deselecionar {}',
			'xWillBeRemovedButRemainInstalled' => '{} será removido do Updatium mais permanecerá instalado no dispositivo.',
			'removeSelectedAppsQuestion' => 'Remover aplicações selecionadas?',
			'removeSelectedApps' => 'Remover aplicações selecionadas',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Atualizar {}',
			'installX' => 'Instalar {}',
			'markXTrackOnlyAsUpdated' => 'Marcar {}\n(Apenas monitorar)\ncomo Atualizado',
			'changeX' => 'Mudar {}',
			'installUpdateApps' => 'Instalar/Atualizar aplicações',
			'installUpdateSelectedApps' => 'Instalar/Atualizar aplicações selecionadas',
			'markXSelectedAppsAsUpdated' => 'Marcar {} aplicações selecionadas como atualizadas?',
			'no' => 'Não',
			'yes' => 'Sim',
			'markSelectedAppsUpdated' => 'Marcar aplicações selecionadas como Atualizadas',
			'pinToTop' => 'Fixar no topo',
			'unpinFromTop' => 'Desafixar do topo',
			'resetInstallStatusForSelectedAppsQuestion' => 'Reiniciar o estado de instalação das aplicações selecionadas?',
			'installStatusOfXWillBeResetExplanation' => 'O estado de instalação de todas as aplicações selecionadas será reiniciado.\n\nIsto pode ajudar quando uma versão de uma aplicação mostrada no Updatium está incorreta devido a falhas na atualização ou outros problemas.',
			'customLinkMessage' => 'Esses links funcionam em dispositivos com o Updatium instalado',
			'shareAppConfigLinks' => 'Partilhar a configuração da aplicação como um link HTML',
			'resetInstallStatus' => 'Reiniciar status de instalação',
			'more' => 'Mais',
			'removeOutdatedFilter' => 'Remover filtro de aplicações desatualizadas',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Mostrar apenas aplicações desatualizadas',
			'filter' => 'Filtro',
			'filterApps' => 'Filtrar aplicações',
			'filterDays' => 'Filter days',
			'appName' => 'Nome da aplicação',
			'author' => 'Autor',
			'upToDateApps' => 'Aplicações atualizadas',
			'nonInstalledApps' => 'Aplicações não instaladas',
			'importExport' => 'Importar/Exportar',
			'settings' => 'Configurações',
			'exportedTo' => 'Exportado para {}',
			'updatiumExport' => 'Exportar dados do Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Entrada inválida',
			'importedX' => 'Importado {}',
			'updatiumImport' => 'Importar dados do Updatium',
			'importFromURLList' => 'Importar de lista de URLs',
			'searchQuery' => 'Pesquisa',
			'appURLList' => 'Lista de URLs de aplicações',
			'line' => 'Linha',
			'searchX' => 'Pesquisar na/o {}',
			'noResults' => 'Nenhum resultado encontrado',
			'importX' => 'Importar {}',
			'importedAppsIdDisclaimer' => 'Aplicações Importadas podem ser mostradas incorretamente como "Não Instalado".\nPara corrigir, reinstale-as usando o Updatium.\nIsto não deve afetar os dados da aplicação.\n\nAfeta apenas os métodos de importação de URL e de terceiros.',
			'importErrors' => 'Erros de importação',
			'importedXOfYApps' => '{} de {} aplicações importadas.',
			'followingURLsHadErrors' => 'As seguintes URLs apresentaram erros:',
			'selectURL' => 'Selecionar URL',
			'selectURLs' => 'Selecionar URLs',
			'pick' => 'Escolher',
			'theme' => 'Tema',
			'dark' => 'Escuro',
			'light' => 'Claro',
			'followSystem' => 'Padrão do sistema',
			'followSystemThemeExplanation' => 'O tema do sistema seguinte só é possível através da utilização de aplicações de terceiros',
			'useBlackTheme' => 'Usar tema preto AMOLED',
			'appSortBy' => 'Classificar aplicação por',
			'authorName' => 'Autor/Nome',
			'nameAuthor' => 'Nome/Autor',
			'asAdded' => 'Como adicionado',
			'appSortOrder' => 'Ordem de classificação das aplicações',
			'ascending' => 'Ascendente',
			'descending' => 'Descendente',
			'bgUpdateCheckInterval' => 'Intervalo de verificação de atualizações em segundo-plano',
			'neverManualOnly' => 'Nunca - apenas manual',
			'appearance' => 'Aparência',
			'pinUpdates' => 'Fixar atualizações no topo da janela das aplicações',
			'updates' => 'Atualizações',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Token de acesso',
			'appSource' => 'Fonte da aplicação',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Sem logs',
			'appLogs' => 'Logs da aplicação',
			'appLogsHint' => 'View application logs',
			'close' => 'Fechar',
			'share' => 'Compartilhar',
			'appNotFound' => 'Aplicação não encontrada',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'exportação de updatium',
			'pickAnAPK' => 'Selecionar um APK',
			'appHasMoreThanOnePackage' => '{} tem mais de um pacote:',
			'deviceSupportsXArch' => 'Seu dispositivo suporta a arquitetura de CPU {}.',
			'deviceSupportsFollowingArchs' => 'Seu dispositivo suporta as seguintes arquiteturas de CPU:',
			'warning' => 'Aviso',
			'sourceIsXButPackageFromYPrompt' => 'A fonte da aplicação é \'{}\' mas a origem do pacote é \'{}\'. Continuar?',
			'updatesAvailable' => 'Atualizações disponíveis',
			'updatesAvailableNotifDescription' => 'Notifica o utilizador quando as atualizações de uma ou mais aplicações monitorizadas pelo Updatium estão disponíveis',
			'noNewUpdates' => 'Sem novas atualizações.',
			'xHasAnUpdate' => '{} tem uma atualização.',
			'appsUpdated' => 'Aplicações atualizadas',
			'appsNotUpdated' => 'Falha na atualização das aplicações',
			'appsUpdatedNotifDescription' => 'Notifica o utilizador quando as atualizações foram aplicadas em segundo plano para uma ou mais aplicações ',
			'xWasUpdatedToY' => '{} foi atualizado para {}.',
			'xWasNotUpdatedToY' => 'Falha ao atualizar {} para {}.',
			'errorCheckingUpdates' => 'Erro ao procurar por atualizações',
			'errorCheckingUpdatesNotifDescription' => 'Uma notificação que mostra quando a checagem por atualizações em segundo-plano falha',
			'appsRemoved' => 'Aplicações removidas',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifica o utilizador quando uma ou mais aplicações foram removidas devido a erros de carregamento',
			'xWasRemovedDueToErrorY' => '{} foi removido devido a este erro: {}',
			'completeAppInstallation' => 'Instalação da aplicação concluída',
			'updatiumMustBeOpenToInstallApps' => 'O Updatium deve estar aberto para instalar as aplicações',
			'completeAppInstallationNotifDescription' => 'Pede ao usuário que retorne ao Updatium para finalizar a instalação de uma aplicação',
			'checkingForUpdates' => 'Verificando atualizações',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notificação transiente que aparece quando o Updatium está verificando se há atualizações',
			'pleaseAllowInstallPerm' => 'Por favor, permita que o Updatium instale aplicações',
			'trackOnly' => 'Apenas monitorar',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Erro {}',
			'versionCorrectionDisabled' => 'Correção de versão desativada (plugin parece não funcionar)',
			'unknown' => 'Desconhecido',
			'none' => 'Nenhum',
			'all' => 'Todos',
			'never' => 'Nunca',
			'latestVersion' => 'Última versão',
			'installedVersionX' => 'Versão instalada: {}',
			'lastUpdateCheckX' => 'Última verificação de atualizações: {}',
			'remove' => 'Remover',
			'quickLinks' => 'Links Rápidos',
			'yesMarkUpdated' => 'Sim, marcar como atualizado',
			'fdroid' => 'Oficial F-Droid',
			'appIdOrName' => 'ID da aplicação ou nome',
			'appId' => 'ID da aplicação',
			'appWithIdOrNameNotFound' => 'Nenhuma aplicação foi encontrada com esse ID ou nome',
			'reposHaveMultipleApps' => 'Os repositórios podem conter múltiplas aplicações',
			'fdroidThirdPartyRepo' => 'Repositórios de terceiros F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instalar',
			'markInstalled' => 'Marcar instalado',
			'update' => 'Atualizar',
			'updated' => 'Atualizado',
			'markUpdated' => 'Marcar como atualizado',
			'download' => 'Download',
			'additionalOptions' => 'Opções adicionais',
			'disableVersionDetection' => 'Desativar detecção de versão',
			'noVersionDetectionExplanation' => 'Esta opção deve ser usada apenas por aplicações onde a deteção de versão não funciona corretamente.',
			'downloadingX' => 'Baixando {}',
			'downloadX' => 'Descarregar {}',
			'downloadedX' => 'Descarregado {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Libertação de activos',
			'downloadNotifDescription' => 'Notifica o utilizador sobre o progresso do download de uma aplicação',
			'noAPKFound' => 'APK não encontrado',
			'noVersionDetection' => 'Sem detecção de versão',
			'categorize' => 'Categorizar',
			'categories' => 'Categorias',
			'category' => 'Categoria',
			'noCategory' => 'Sem categoria',
			'noCategories' => 'Sem categorias',
			'categoryDeleteQuestion' => 'Deletar  categorias?',
			'categoryDeleteWarning' => 'Todas as aplicações em categorias removidas serão descategorizadas.',
			'addCategory' => 'Adicionar categoria',
			'label' => 'Etiqueta',
			'language' => 'Linguagem',
			'copiedToClipboard' => 'Copiado para a área de transferência',
			'storagePermissionDenied' => 'Permissão de armazenamento negada',
			'selectedCategorizeWarning' => 'Isto irá substituir qualquer configuração de categoria para as aplicações selecionadas.',
			'filterAPKsByRegEx' => 'Filtrar APKs usando expressão regular',
			'removeFromUpdatium' => 'Remover do Updatium',
			'uninstallFromDevice' => 'Desinstalar do dispositivo',
			'onlyWorksWithNonVersionDetectApps' => 'Apenas funciona para aplicações com a deteção de versão desativada.',
			'releaseDateAsVersion' => 'Usar data de lançamento como versão',
			'releaseTitleAsVersion' => 'Utilizar o título da versão como cadeia de versões',
			'releaseDateAsVersionExplanation' => 'Esta opção só deve ser usada para aplicações onde a deteção de versão não funciona corretamente, mas existe uma data de lançamento disponível.',
			'changes' => 'Alterações',
			'releaseDate' => 'Data de lançamento',
			'importFromURLsInFile' => 'Importar de URLs em arquivo (formato OPML)',
			'versionDetectionExplanation' => 'Reconciliar string de versão com versão detectada no sistema operacional',
			'versionDetection' => 'Detecção de versão',
			'standardVersionDetection' => 'Detecção de versão padrão',
			'groupByCategory' => 'Agroupar por categoria',
			'listView' => 'Vista de lista',
			'gridView' => 'Vista de grelha',
			'autoApkFilterByArch' => 'Tente filtrar APKs por arquitetura de CPU, se possível',
			'autoLinkFilterByArch' => 'Tentativa de filtrar as ligações por arquitetura de CPU, se possível',
			'overrideSource' => 'Substituir fonte',
			'dontShowAgain' => 'Não mostrar isso novamente',
			'dontShowTrackOnlyWarnings' => 'Não mostrar avisos \'Apenas monitorar\'',
			'dontShowAPKOriginWarnings' => 'Não mostrar avisos de origem da APK',
			'moveNonInstalledAppsToBottom' => 'Mover aplicações não instaladas para o fundo da lista de aplicações',
			'gitlabPATLabel' => 'Token de acesso pessoal do Gitlab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Sobre',
			'requiresCredentialsInSettings' => '{}: Isso requer credenciais adicionais (em Configurações)',
			'checkOnStart' => 'Verificar se há atualizações ao iniciar',
			'safeMode' => 'Modo de segurança',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Adicionar aplicativo está desativado no modo de segurança',
			'tryInferAppIdFromCode' => 'Tentar inferir o ID do aplicativo a partir do código-fonte',
			'removeOnExternalUninstall' => 'Remover automaticamente aplicações desinstaladas externamente',
			'pickHighestVersionCode' => 'Auto-selecionar o maior número de versão do APK',
			'checkUpdateOnDetailPage' => 'Checar por atualizações ao abrir a página de detalhes de uma aplicação',
			'disablePageTransitions' => 'Desativar animações de transição de página',
			'reversePageTransitions' => 'Animações de transição de página invertidas',
			'minStarCount' => 'Contagem mínima de estrelas',
			'addInfoBelow' => 'Adicionar essa informação abaixo.',
			'addInfoInSettings' => 'Adicionar essa informação nas configurações.',
			'githubSourceNote' => 'A limitação de taxa do GitHub pode ser evitada usando uma chave de API.',
			'sortByLastLinkSegment' => 'Ordenar apenas usando o último segmento do link',
			'filterReleaseNotesByRegEx' => 'Filtrar notas de versão usando Regex',
			'customLinkFilterRegex' => 'Filtro de link personalizado usando expressão regular (Padrão \'.apk$\')',
			'appsPossiblyUpdated' => 'Aplicações possivelmente atualizadas',
			'appsPossiblyUpdatedNotifDescription' => 'Notifica o utilizador de que as atualizações de uma ou mais aplicações foram potencialmente aplicadas em segundo plano',
			'xWasPossiblyUpdatedToY' => '{} pode ter sido atualizado para {}.',
			'enableBackgroundUpdates' => 'Ativar atualizações em segundo-plano',
			'backgroundUpdateReqsExplanation' => 'As atualizações em segundo plano podem não ser possíveis para todas as aplicações.',
			'backgroundUpdateLimitsExplanation' => 'O sucesso de uma instalação em segundo-plano só pode ser determinado quando o Updatium é aberto.',
			'verifyLatestTag' => 'Verifique a \'última\' etiqueta',
			'intermediateLinkRegex' => 'Filtrar um link \'intermediário\' para visitar',
			'filterByLinkText' => 'Filtrar links pelo texto do link',
			'matchLinksOutsideATags' => 'Corresponder ligações fora das etiquetas <a>',
			'intermediateLinkNotFound' => 'Link intermediário não encontrado',
			'intermediateLink' => 'Link intermediário',
			'exemptFromBackgroundUpdates' => 'Isento de atualizações em segundo-plano (se ativadas)',
			'bgUpdatesOnWiFiOnly' => 'Desative as atualizações em segundo-plano quando não estiver conectado no Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Desativar actualizações em segundo plano quando não estiver a carregar',
			'autoSelectHighestVersionCode' => 'Auto-selecionar a versão mais recente',
			'versionExtractionRegEx' => 'Regex de extração de versão',
			'trimVersionString' => 'Cortar a cadeia de caracteres da versão com RegEx',
			'matchGroupToUseForX' => 'Grupo de correspondência a utilizar para "{}"',
			'matchGroupToUse' => 'Grupo correspondente a ser usado no Regex de extração de versão',
			'highlightTouchTargets' => 'Realçar áreas sensíveis ao toque que são menos óbvias',
			'pickExportDir' => 'Escolher diretório para exportação',
			'autoExportOnChanges' => 'Auto-exportar em mudanças',
			'includeSettings' => 'Incluir configurações',
			'filterVersionsByRegEx' => 'Filtrar versões por expressão regular',
			'trySelectingSuggestedVersionCode' => 'Tente selecionar a versão sugerida',
			'dontSortReleasesList' => 'Reter a ordem de lançamento da API',
			'reverseSort' => 'Ordenação reversa',
			'takeFirstLink' => 'Obter primeiro link',
			'skipSort' => 'Ignorar ordenação',
			'debugMenu' => 'Menu debug',
			'bgTaskStarted' => 'Tarefa em segundo-plano iniciada - verifique os logs.',
			'runBgCheckNow' => 'Execute agora em segundo-plano a verificação de atualizações',
			'versionExtractWholePage' => 'Aplicar regex de extração de versão à página inteira',
			'installing' => 'Instalando',
			'skipUpdateNotifications' => 'Pular notificações de update',
			'updatesAvailableNotifChannel' => 'Atualizações disponíveis',
			'appsUpdatedNotifChannel' => 'Aplicações atualizadas',
			'appsPossiblyUpdatedNotifChannel' => 'Aplicações possivelmente atualizadas',
			'errorCheckingUpdatesNotifChannel' => 'Erro ao procurar por atualizações',
			'appsRemovedNotifChannel' => 'Aplicações removidas',
			'downloadingXNotifChannel' => 'Baixando {}',
			'completeAppInstallationNotifChannel' => 'Instalação da aplicação concluída',
			'checkingForUpdatesNotifChannel' => 'Checando por atualizações',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Apenas verificar atualizações de aplicações instaladas e \'Apenas monitorizar\'',
			'supportFixedAPKURL' => 'Suporte a APK com URLs fixas',
			'selectX' => 'Selecionar {}',
			'parallelDownloads' => 'Permitir downloads paralelos',
			'useShizuku' => 'Utilizar Shizuku ou Sui para instalar',
			'shizukuBinderNotFound' => 'O Shizuku não está rodando',
			'shizukuOld' => 'Versão antiga do Shizuku (<11) - atualizar',
			'shizukuOldAndroidWithADB' => 'Shizuku a funcionar no Android < 8.1 com ADB - atualizar o Android ou utilizar o Sui',
			'shizukuPretendToBeGooglePlay' => 'Definir o Google Play como fonte de instalação (se for utilizado o Shizuku)',
			'useSystemFont' => 'Usar fonte padrão do sistema',
			'useVersionCodeAsOSVersion' => 'Usar o versionCode da aplicação como a versão detetada pelo sistema operativo',
			'requestHeader' => 'Requisitar cabeçalho',
			'useLatestAssetDateAsReleaseDate' => 'Use o último upload de recursos como data de lançamento',
			'defaultPseudoVersioningMethod' => 'Método de pseudo-versionamento padrão',
			'partialAPKHash' => 'Hash APK parcial',
			'APKLinkHash' => 'Hash de links APK',
			'directAPKLink' => 'Link direto do APK',
			'pseudoVersionInUse' => 'Uma pseudo-versão está em uso',
			'installedVersion' => 'Instalado',
			'installed' => 'Instalado',
			'notInstalledApps' => 'Não instalado',
			'latest' => 'Mais recente',
			'invertRegEx' => 'Inverter expressão regular',
			'note' => 'Nota',
			'selfHostedNote' => 'O menu suspenso "{}" pode ser usado para acessar instâncias auto-hospedadas/personalizadas de qualquer fonte.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'Não foi possível analisar o APK (transferência incompatível ou parcial)',
			'beforeNewInstallsShareToAppVerifier' => 'Partilhar novas aplicações com o AppVerifier (se disponível)',
			'appVerifierInstructionToast' => 'Partilhe com o AppVerifier e, em seguida, regresse aqui quando estiver pronto.',
			'wiki' => 'Ajuda/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Permitir pedidos HTTP inseguros',
			'stayOneVersionBehind' => 'Manter-se uma versão atrás da mais recente',
			'useFirstApkOfVersion' => 'Seleção automática do primeiro de vários APKs',
			'refreshBeforeDownload' => 'Atualizar os detalhes da aplicação antes da transferência',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nome',
			'smartname' => 'Nome (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Método de ordenação',
			'welcome' => 'Bem-vindo',
			'batteryOptimizationNote' => 'Note que os downloads em segundo plano podem funcionar de forma mais fiável se desativar as optimizações da bateria do SO para o Updatium.',
			'fileDeletionError' => 'Falha ao eliminar o ficheiro (tente eliminá-lo manualmente e depois tente novamente): "{}"',
			'foregroundService' => 'Serviço de primeiro plano Updatium',
			'foregroundServiceExplanation' => 'Utilizar um serviço em primeiro plano para verificação de actualizações (mais fiável, consome mais energia)',
			'fgServiceNotice' => 'Esta notificação é necessária para a verificação de actualizações em segundo plano (pode ser ocultada nas definições do SO)',
			'excludeSecrets' => 'Excluir segredos',
			'GHReqPrefix' => 'Instância \'omeritzics/Updatium\' para pedidos de GitHub',
			'includeZips' => 'Incluir ficheiros ZIP',
			'zippedApkFilterRegEx' => 'Filtrar APKs dentro do ZIP',
			'multipleSigners' => 'Assinantes Múltiplos',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Remover aplicação?', other: 'Remover aplicações?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Muitos pedidos (taxa de pedidos limitada) - tente novamente em {count} minuto', other: 'Muitos pedidos (taxa limitada) - tente novamente em {count} minutos', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'A verificação de atualizações em segundo plano encontrou um {error}, agendada uma nova verificação em {count} minuto', other: 'A verificação de atualizações em segundo plano encontrou um {error}, agendada uma nova verificação em {count} minutos', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'A verificação de atualizações em segundo plano encontrou {count} atualização, o utilizador será notificado caso necessário', other: 'A verificação de atualizações em segundo plano encontrou {count} atualizações, o utilizador será notificado caso necessário', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} Aplicação', other: '{count} Aplicações', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} minuto', other: '{count} minutos', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} hora', other: '{count} horas', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} dia', other: '{count} dias', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Foi limpo {n} log (antes = {antes}, depois = {depois})', other: 'Foram limpos {n} logs (antes = {antes}, depois = {depois})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{app} e uma outra aplicação possui atualizações.', other: '{app} e {count} outras aplicações possuem atualizações.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{app} e uma outra aplicação foram atualizadas.', other: '{app} e {count} outras aplicações foram atualizadas.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Falha ao atualizar {app} e mais 1 aplicação.', other: 'Falha ao atualizar {app} e {count} outras aplicações.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{app} e uma outra aplicação podem ter sido atualizadas.', other: '{app} e {count} outras aplicações podem ter sido atualizadas.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Hash do Certificado', other: 'Certificado Hashes', ), 
			'securityDisclaimerTitle' => 'Aviso de Segurança e Legal',
			'license' => 'Licença',
			'licenseText' => 'Esta aplicação é distribuída sob a Licença GPL v3.',
			'disclaimer' => 'Isenção de responsabilidade',
			'disclaimerText' => 'Esta aplicação não distribui, hospeda ou verifica nenhuma das aplicações externas. O utilizador assume a responsabilidade total pela segurança e legalidade de qualquer software instalado através desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para descarregar Updatium - é altamente desaconselhado descarregá-lo de outros locais, pois o descarregar de fontes não oficiais não é seguro.',
			'privacy' => 'Privacidade',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Aceitar e continuar',
			'decline' => 'Recusar',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Está a gostar do Updatium?',
			'githubStarPromptContent' => 'Updatium é um projeto comunitário de código aberto voluntário desenvolvido no meu tempo livre. Se gostaria de apoiar o projeto, por favor considere dar uma estrela no GitHub para nos ajudar a alcançar mais utilizadores e contribuidores. Não será incomodado sobre isto novamente. Obrigado antecipadamente! :)',
			'githubStarPromptStar' => 'Dar estrela',
			'githubStarPromptDontShowAgain' => 'Não mostrar novamente',
			'sourceCode' => 'Código fonte',
			'developedBy' => 'Desenvolvido por',
			'appDescription' => 'Um catálogo de aplicativos Android personalizável que permite atualizar seus aplicativos diretamente de suas fontes APK.',
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
