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
class TranslationsPtBr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsPtBr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ptBr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <pt-BR>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsPtBr _root = this; // ignore: unused_field

	@override 
	TranslationsPtBr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsPtBr(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Não é uma URL de app válida de {}';
	@override String get noReleaseFound => 'Não foi possível encontrar um lançamento adequado';
	@override String get noVersionFound => 'Não foi possível determinar a versão do lançamento';
	@override String get urlMatchesNoSource => 'A URL não corresponde com nenhuma fonte conhecida';
	@override String get cantInstallOlderVersion => 'Não é possível instalar uma versão mais antiga de um app';
	@override String get appIdMismatch => 'O ID do pacote baixado não corresponde ao existente';
	@override String get functionNotImplemented => 'Essa classe não implementou esse recurso ainda';
	@override String get placeholder => 'Espaço reservado';
	@override String get someErrors => 'Ocorreram alguns erros';
	@override String get unexpectedError => 'Erro inesperado';
	@override String get ok => 'Ok';
	@override String get and => 'e';
	@override String get githubPATLabel => 'Token de acesso pessoal do GitHub';
	@override String get includePrereleases => 'Incluir pré-lançamentos';
	@override String get fallbackToOlderReleases => 'Recorrer à lançamentos mais antigos';
	@override String get filterReleaseTitlesByRegEx => 'Filtrar títulos de lançamentos por expressão regular';
	@override String get invalidRegEx => 'Expressão regular inválida';
	@override String get noDescription => 'Sem descrição';
	@override String get cancel => 'Cancelar';
	@override String get kContinue => 'Continuar';
	@override String get requiredInBrackets => '(obrigatório)';
	@override String get dropdownNoOptsError => 'ERRO: O MENU DEVE TER PELO MENOS UMA OPÇÃO';
	@override String get color => 'Cor';
	@override String get standard => 'Padrão';
	@override String get custom => 'Personalizado';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Usar cores Material You';
	@override String get githubStarredRepos => 'Repositórios com estrela do GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nome de usuário';
	@override String get wrongArgNum => 'Número errado de argumentos fornecidos';
	@override String get xIsTrackOnly => '{} é somente de rastreio';
	@override String get source => 'Fonte';
	@override String get app => 'Aplicativo';
	@override String get appsFromSourceAreTrackOnly => 'Apps desta fonte são somente para rastreamento.';
	@override String get youPickedTrackOnly => 'Você selecionou a opção de somente rastreamento.';
	@override String get trackOnlyAppDescription => 'As atualizações do app serão rastreadas, mas o Updatium não baixará ou instalará elas.';
	@override String get cancelled => 'Cancelado';
	@override String get appAlreadyAdded => 'O app já foi adicionado';
	@override String get alreadyUpToDateQuestion => 'O app já está atualizado?';
	@override String get addApp => 'Adicionar app';
	@override String get appSourceURL => 'URL da fonte do app';
	@override String get error => 'Erro';
	@override String get add => 'Adicionar';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Pesquisar (somente algumas fontes)';
	@override String get search => 'Pesquisar';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opções adicionais de {}';
	@override String get supportedSources => 'Fontes suportadas';
	@override String get trackOnlyInBrackets => '(somente rastreamento)';
	@override String get searchableInBrackets => '(pesquisável)';
	@override String get appsString => 'Aplicativos';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Nenhum app';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Nenhum app pro filtro';
	@override String get byX => 'Por {}';
	@override String get percentProgress => 'Progresso: {}%';
	@override String get pleaseWait => 'Por favor aguarde';
	@override String get updateAvailable => 'Atualização disponível';
	@override String get notInstalled => 'Não instalado';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-versão';
	@override String get selectAll => 'Selecionar tudo';
	@override String get deselectX => 'Desselecionar {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} será removido do Updatium mas continuará instalado no dispositivo.';
	@override String get removeSelectedAppsQuestion => 'Remover os apps selecionados?';
	@override String get removeSelectedApps => 'Remover apps selecionados';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Atualizar {}';
	@override String get installX => 'Instalar {}';
	@override String get markXTrackOnlyAsUpdated => 'Marcar {}\n(somente rastreamento)\ncomo atualizado';
	@override String get changeX => 'Alterar {}';
	@override String get installUpdateApps => 'Instalar/atualizar apps';
	@override String get installUpdateSelectedApps => 'Instalar/atualizar apps selecionados';
	@override String get markXSelectedAppsAsUpdated => 'Marcar os {} apps selecionados como atualizados?';
	@override String get no => 'Não';
	@override String get yes => 'Sim';
	@override String get markSelectedAppsUpdated => 'Marcar apps selecionados como atualizados';
	@override String get pinToTop => 'Fixar ao topo';
	@override String get unpinFromTop => 'Desfixar do topo';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Redefinir o estado de instalação dos apps selecionados?';
	@override String get installStatusOfXWillBeResetExplanation => 'Os estados de instalação dos apps selecionados serão redefinidos.\n\nIsso pode ajudar quando a versão exibida no Updatium está incorreta devido a atualizações malsucedidas ou outros problemas.';
	@override String get customLinkMessage => 'Esses links funcionarão em dispositivos com o Updatium instalado';
	@override String get shareAppConfigLinks => 'Compartilhar configuração do app como um link HTML';
	@override String get resetInstallStatus => 'Redefinir estado de instalação';
	@override String get more => 'Mais';
	@override String get removeOutdatedFilter => 'Remover filtro de apps desatualizados';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Mostrar somente apps desatualizados';
	@override String get filter => 'Filtro';
	@override String get filterApps => 'Filtrar apps';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nome do app';
	@override String get author => 'Autor';
	@override String get upToDateApps => 'Apps atualizados';
	@override String get nonInstalledApps => 'Apps não instalados';
	@override String get importExport => 'Importar/Exportar';
	@override String get settings => 'Configurações';
	@override String get exportedTo => 'Exportado para {}';
	@override String get updatiumExport => 'Exportação do Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Entrada inválida';
	@override String get importedX => '{} importado(s)';
	@override String get updatiumImport => 'Importação do Updatium';
	@override String get importFromURLList => 'Importar da lista de URLs';
	@override String get searchQuery => 'Consulta de pesquisa';
	@override String get appURLList => 'Lista de URLs dos apps';
	@override String get line => 'Linha';
	@override String get searchX => 'Pesquisar {}';
	@override String get noResults => 'Nenhum resultado encontrado';
	@override String get importX => 'Importar {}';
	@override String get importedAppsIdDisclaimer => 'Os apps importados podem ser exibidos incorretamente como se não estivessem instalados.\nPara resolver isso, reinstale eles pelo Updatium.\nIsso não afetará os dados dos apps.\n\nIsso somente afeta a URL e os métodos de importação de terceiros.';
	@override String get importErrors => 'Erros de importação';
	@override String get importedXOfYApps => '{} de {} foram importados.';
	@override String get followingURLsHadErrors => 'As seguintes URLs tiveram erros:';
	@override String get selectURL => 'Selecionar URL';
	@override String get selectURLs => 'Selecionar URLs';
	@override String get pick => 'Escolher';
	@override String get theme => 'Tema';
	@override String get dark => 'Escuro';
	@override String get light => 'Claro';
	@override String get followSystem => 'Seguir o sistema';
	@override String get followSystemThemeExplanation => 'Só é possível seguir o tema do sistema ao usar aplicativos de terceiros';
	@override String get useBlackTheme => 'Usar o tema escuro de preto profundo';
	@override String get appSortBy => 'Ordenar apps por';
	@override String get authorName => 'Autor/nome';
	@override String get nameAuthor => 'Nome/autor';
	@override String get asAdded => 'Como adicionados';
	@override String get appSortOrder => 'Ordem dos apps';
	@override String get ascending => 'Crescente';
	@override String get descending => 'Decrescente';
	@override String get bgUpdateCheckInterval => 'Intervalo de busca por atualizações em segundo plano';
	@override String get neverManualOnly => 'Nunca - somente manualmente';
	@override String get appearance => 'Aparência';
	@override String get pinUpdates => 'Fixar atualizações no topo da tela de apps';
	@override String get updates => 'Atualizações';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Específico à fonte';
	@override String get appSource => 'Fonte do app';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Nenhum registro';
	@override String get appLogs => 'Registros do app';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Fechar';
	@override String get share => 'Compartilhar';
	@override String get appNotFound => 'O app não foi encontrado';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Selecione um APK';
	@override String get appHasMoreThanOnePackage => '{} tem mais de um pacote:';
	@override String get deviceSupportsXArch => 'Seu dispositivo suporta a arquitetura de CPU {}.';
	@override String get deviceSupportsFollowingArchs => 'Seu dispositivo suporta as seguintes arquiteturas de CPU:';
	@override String get warning => 'Alerta';
	@override String get sourceIsXButPackageFromYPrompt => 'A fonte do app é \'{}\' mas o pacote de lançamento vem de \'{}\'. Continuar mesmo assim?';
	@override String get updatesAvailable => 'Atualizações disponíveis';
	@override String get updatesAvailableNotifDescription => 'Notifica o usuário que atualizações estão disponíveis para um ou mais apps rastreados pelo Updatium';
	@override String get noNewUpdates => 'Nenhuma atualização disponível.';
	@override String get xHasAnUpdate => '{} tem uma atualização.';
	@override String get appsUpdated => 'Apps atualizados';
	@override String get appsNotUpdated => 'Falhou ao atualizar os aplicativos';
	@override String get appsUpdatedNotifDescription => 'Notifica o usuário que atualizações de um ou mais apps foram aplicadas em segundo plano';
	@override String get xWasUpdatedToY => '{} foi atualizado para a versão {}.';
	@override String get xWasNotUpdatedToY => 'Falha ao atualizar {} para a versão {}.';
	@override String get errorCheckingUpdates => 'Ocorreu um erro ao buscar atualizações';
	@override String get errorCheckingUpdatesNotifDescription => 'Uma notificação que mostra quando a busca de atualizações em segundo plano falha';
	@override String get appsRemoved => 'Apps removidos';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifica o usuário que um ou mais apps foram removidos devido a erros ao carregá-los';
	@override String get xWasRemovedDueToErrorY => '{} for removido devido ao erro: {}';
	@override String get completeAppInstallation => 'Concluir instalação do app';
	@override String get updatiumMustBeOpenToInstallApps => 'O Updatium precisa estar aberto para instalar apps';
	@override String get completeAppInstallationNotifDescription => 'Pede pro usuário voltar ao Updatium para concluir a instalação de um app';
	@override String get checkingForUpdates => 'Buscando atualizações';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notificação transitória que aparece ao buscar atualizações';
	@override String get pleaseAllowInstallPerm => 'Permita que o Updatium instale apps';
	@override String get trackOnly => 'Somente rastreamento';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Erro {}';
	@override String get versionCorrectionDisabled => 'Correção de versão desativada (o plugin parece não funcionar)';
	@override String get unknown => 'Desconhecido';
	@override String get none => 'Nenhum';
	@override String get all => 'Todos';
	@override String get never => 'Nunca';
	@override String get latestVersion => 'Mais recente';
	@override String get installedVersionX => 'Instalado: {}';
	@override String get lastUpdateCheckX => 'Última busca por atualizações: {}';
	@override String get remove => 'Remover';
	@override String get quickLinks => 'Links Rápidos';
	@override String get yesMarkUpdated => 'Sim, marcar como atualizado';
	@override String get fdroid => 'Oficial do F-Droid';
	@override String get appIdOrName => 'ID do app ou nome';
	@override String get appId => 'ID do app';
	@override String get appWithIdOrNameNotFound => 'Nenhum app foi encontrado com aquele ID ou nome';
	@override String get reposHaveMultipleApps => 'Repositórios podem conter vários apps';
	@override String get fdroidThirdPartyRepo => 'Repositório de terceiros do F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Instalar';
	@override String get markInstalled => 'Marcar como instalado';
	@override String get update => 'Atualizar';
	@override String get updated => 'Atualizado';
	@override String get markUpdated => 'Marcar como atualizado';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opções adicionais';
	@override String get disableVersionDetection => 'Desativar detecção de versão';
	@override String get noVersionDetectionExplanation => 'Essa opção só seve ser usada para apps aonde a detecção de versão não funciona corretamente.';
	@override String get downloadingX => 'Baixando {}';
	@override String get downloadX => 'Baixar {}';
	@override String get downloadedX => '{} foi baixado';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Item de lançamento';
	@override String get downloadNotifDescription => 'Notifica o usuário do progresso ao baixar um app';
	@override String get noAPKFound => 'Nenhum APK encontrado';
	@override String get noVersionDetection => 'Sem detecção de versão';
	@override String get categorize => 'Categorizar';
	@override String get categories => 'Categorias';
	@override String get category => 'Categoria';
	@override String get noCategory => 'Nenhuma categoria';
	@override String get noCategories => 'Nenhuma categoria';
	@override String get categoryDeleteQuestion => 'Excluir categorias?';
	@override String get categoryDeleteWarning => 'Todos os apps em categorias excluídas ficarão sem categoria.';
	@override String get addCategory => 'Adicionar categoria';
	@override String get label => 'Rótulo';
	@override String get language => 'Idioma';
	@override String get copiedToClipboard => 'Copiado para a área de transferência';
	@override String get storagePermissionDenied => 'Permissão de armazenamento negada';
	@override String get selectedCategorizeWarning => 'Isso substituirá a configuração de categoria existente dos apps selecionados.';
	@override String get filterAPKsByRegEx => 'Filtrar APKs por expressão regular';
	@override String get removeFromUpdatium => 'Remover do Updatium';
	@override String get uninstallFromDevice => 'Desinstalar do dispositivo';
	@override String get onlyWorksWithNonVersionDetectApps => 'Funciona somente em apps com a detecção de versão desativada.';
	@override String get releaseDateAsVersion => 'Usar data de lançamento como número da versão';
	@override String get releaseTitleAsVersion => 'Usar título do lançamento como número da versão';
	@override String get releaseDateAsVersionExplanation => 'Essa opção só deve ser usada para apps quais a detecção de versão não funciona corretamente, mas uma data de lançamento está disponível.';
	@override String get changes => 'Alterações';
	@override String get releaseDate => 'Data de lançamento';
	@override String get importFromURLsInFile => 'Importar das URLs em arquivo (como OPML)';
	@override String get versionDetectionExplanation => 'Combinar o número da versão com a versão detectada pelo sistema';
	@override String get versionDetection => 'Detecção de versão';
	@override String get standardVersionDetection => 'Detecção de versão padrão';
	@override String get groupByCategory => 'Agrupar por categoria';
	@override String get listView => 'Visualização em lista';
	@override String get gridView => 'Visualização em grade';
	@override String get autoApkFilterByArch => 'Tentar filtrar APKs pela arquitetura da CPU quando possível';
	@override String get autoLinkFilterByArch => 'Tentar filtrar links pela arquitetura da CPU quando possível';
	@override String get overrideSource => 'Sobrescrever fonte';
	@override String get dontShowAgain => 'Não mostrar isso novamente';
	@override String get dontShowTrackOnlyWarnings => 'Não mostrar alertas de "somente rastreamento"';
	@override String get dontShowAPKOriginWarnings => 'Não mostrar alertas de origem dos APKs';
	@override String get moveNonInstalledAppsToBottom => 'Mover apps não instalados ao final da tela de apps';
	@override String get gitlabPATLabel => 'Token de acesso pessoal do GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Sobre';
	@override String get requiresCredentialsInSettings => '{} precisa de credenciais adicionais (nas Configurações)';
	@override String get checkOnStart => 'Buscar atualizações ao abrir o app';
	@override String get safeMode => 'Modo seguro';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Adicionar app está desabilitado no modo seguro';
	@override String get tryInferAppIdFromCode => 'Tentar inferir o ID do aplicativo a partir do código-fonte';
	@override String get removeOnExternalUninstall => 'Remover automaticamente apps desinstalados externamente';
	@override String get pickHighestVersionCode => 'Selecionar APK de versão mais alta automaticamente';
	@override String get checkUpdateOnDetailPage => 'Buscar atualizações ao abrir a tela de detalhes de um app';
	@override String get disablePageTransitions => 'Desativar animações de transição de tela';
	@override String get reversePageTransitions => 'Inverter animações de transição de tela';
	@override String get minStarCount => 'Número de estrelas mínimo';
	@override String get addInfoBelow => 'Adicione essa informação abaixo.';
	@override String get addInfoInSettings => 'Adicione essa informação nas Configurações.';
	@override String get githubSourceNote => 'O limite de taxa do GitHub pode ser evitado ao usar uma chave de API.';
	@override String get sortByLastLinkSegment => 'Ordenar somente pelo ultimo segmento do link';
	@override String get filterReleaseNotesByRegEx => 'Filtrar notas de lançamento por expressão regular';
	@override String get customLinkFilterRegex => 'Filtro de link de APK personalizado por expressão regular (padrão \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Tentativas de atualização de apps';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifica o usuário que atualizações de um ou mais apps podem ter sido aplicadas em segundo plano';
	@override String get xWasPossiblyUpdatedToY => '{} pode ter sido atualizado para a versão {}.';
	@override String get enableBackgroundUpdates => 'Ativar atualizações em segundo plano';
	@override String get backgroundUpdateReqsExplanation => 'Atualizações em segundo plano podem não funcionar com todos os apps.';
	@override String get backgroundUpdateLimitsExplanation => 'O sucesso de uma instalação em segundo plano só pode ser determinada ao abrir o Updatium.';
	@override String get verifyLatestTag => 'Verificar a tag \'mais recente\'';
	@override String get intermediateLinkRegex => 'Filtrar por um link \'intermediário\' para visitar';
	@override String get filterByLinkText => 'Filtrar links por texto do link';
	@override String get matchLinksOutsideATags => 'Corresponder links fora das tags <a>';
	@override String get intermediateLinkNotFound => 'Link intermediário não encontrado';
	@override String get intermediateLink => 'Link intermediário';
	@override String get exemptFromBackgroundUpdates => 'Isento de atualizações em segundo plano (caso ativadas)';
	@override String get bgUpdatesOnWiFiOnly => 'Desativar atualizações em segundo plano fora do Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Desativar atualizações em segundo plano fora do carregador';
	@override String get autoSelectHighestVersionCode => 'Selecionar automaticamente APK com o código de versão mais alto';
	@override String get versionExtractionRegEx => 'ExReg de extração do número da versão';
	@override String get trimVersionString => 'Cortar número da versal com ExReg';
	@override String get matchGroupToUseForX => 'Corresponder grupo para o uso em "{}"';
	@override String get matchGroupToUse => 'Corresponder grupo para o uso para a extração do número da versão por ExReg';
	@override String get highlightTouchTargets => 'Acentuar alvos de toque menos óbvios';
	@override String get pickExportDir => 'Selecionar pasta de exportação';
	@override String get autoExportOnChanges => 'Exportar automaticamente ao ocorrer alterações';
	@override String get includeSettings => 'Incluir configurações';
	@override String get filterVersionsByRegEx => 'Filtrar versões por expressão regular';
	@override String get trySelectingSuggestedVersionCode => 'Tente selecionar o APK com o código de versão sugerido';
	@override String get dontSortReleasesList => 'Manter ordem de lançamento da API';
	@override String get reverseSort => 'Ordem inversa';
	@override String get takeFirstLink => 'Usar o primeiro link';
	@override String get skipSort => 'Pular ordenação';
	@override String get debugMenu => 'Menu de depuração';
	@override String get bgTaskStarted => 'Tarefa em segundo plano iniada - verifique os registros.';
	@override String get runBgCheckNow => 'Executar busca por atualizações em segundo plano agora';
	@override String get versionExtractWholePage => 'Aplicar ExReg de extração de número de versão à página inteira';
	@override String get installing => 'Instalando';
	@override String get skipUpdateNotifications => 'Pular notificações de atualização';
	@override String get updatesAvailableNotifChannel => 'Atualizações disponíveis';
	@override String get appsUpdatedNotifChannel => 'Apps atualizados';
	@override String get appsPossiblyUpdatedNotifChannel => 'Tentativas de atualização de apps';
	@override String get errorCheckingUpdatesNotifChannel => 'Erro ao buscar atualizações';
	@override String get appsRemovedNotifChannel => 'Apps removidos';
	@override String get downloadingXNotifChannel => 'Baixando {}';
	@override String get completeAppInstallationNotifChannel => 'Concluir instalação do app';
	@override String get checkingForUpdatesNotifChannel => 'Buscando atualizações';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Buscar atualizações somente para apps instalados e de somente rastreamento';
	@override String get supportFixedAPKURL => 'Suportar URLs de APK fixas';
	@override String get selectX => 'Selecionar {}';
	@override String get parallelDownloads => 'Permitir downloads em paralelo';
	@override String get useShizuku => 'Usar Shizuku ou Sui para instalação';
	@override String get shizukuBinderNotFound => 'Serviço Shizuku não está em execução';
	@override String get shizukuOld => 'Versão do Shizuku antiga (<11) - atualize';
	@override String get shizukuOldAndroidWithADB => 'Shizuku sendo executado no Android < 8.1 com ADB - atualize o Android ou use o Sui';
	@override String get shizukuPretendToBeGooglePlay => 'Definir Google Play como a fonte de instalação (se o Shizuku é usado)';
	@override String get useSystemFont => 'Usar a fonte do sistema';
	@override String get useVersionCodeAsOSVersion => 'Usar código de versão do app como a versão detectada pelo sistema';
	@override String get requestHeader => 'Cabeçalho da solicitação';
	@override String get useLatestAssetDateAsReleaseDate => 'Usar o envio de item mais recente como a data de lançamento';
	@override String get defaultPseudoVersioningMethod => 'Método de pseudo-versão padrão';
	@override String get partialAPKHash => 'Hash do APK parcial';
	@override String get APKLinkHash => 'Hash do link do APK';
	@override String get directAPKLink => 'Link direto ao APK';
	@override String get pseudoVersionInUse => 'Uma pseudo-versão está em uso';
	@override String get installedVersion => 'Instalado';
	@override String get installed => 'Instalado';
	@override String get notInstalledApps => 'Não instalado';
	@override String get latest => 'Mais recente';
	@override String get invertRegEx => 'Inverter expressão regular';
	@override String get note => 'Observação';
	@override String get selfHostedNote => 'O menu de opções "{}" pode ser usado para alcançar instâncias hospedadas-por-você/personalizadas de qualquer fonte.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'O APK não pode ser interpretado (incompatível ou baixado parcialmente)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Compartilhar apps novos com o AppVerifier (se disponível)';
	@override String get appVerifierInstructionToast => 'Compartilhe com o AppVerifier, e volte aqui ao estar pronto.';
	@override String get wiki => 'Ajuda/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Permitir solicitações de HTTP inseguras';
	@override String get stayOneVersionBehind => 'Ficar uma versão antes da mais recente';
	@override String get useFirstApkOfVersion => 'Seleção automática do primeiro de vários APKs';
	@override String get refreshBeforeDownload => 'Atualizar detalhes do app antes de baixar';
	@override String get tencentAppStore => 'Loja de Apps da Tencent';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'Vivo App Store (CN)';
	@override String get name => 'Nome';
	@override String get smartname => 'Nome (inteligente)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Método de ordenação';
	@override String get welcome => 'Boas vindas';
	@override String get batteryOptimizationNote => 'Observe que os downloads em segundo plano podem funcionar de forma mais confiável se você desativar as otimizações de bateria do sistema operacional para o Updatium.';
	@override String get fileDeletionError => 'Falha ao excluir o arquivo (tente excluí-lo manualmente e tente novamente): "{}"';
	@override String get foregroundService => 'Serviço de primeiro plano do Updatium';
	@override String get foregroundServiceExplanation => 'Usar um serviço em primeiro plano para verificação de atualizações (mais confiável, consome mais energia)';
	@override String get fgServiceNotice => 'Essa notificação é necessária para a verificação de atualizações em segundo plano (ela pode ser ocultada nas configurações do sistema operacional)';
	@override String get excludeSecrets => 'Excluir segredos';
	@override String get GHReqPrefix => 'Instância "omeritzics/Updatium" para solicitações do GitHub';
	@override String get includeZips => 'Incluir arquivos ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrar APKs dentro do ZIP';
	@override String get multipleSigners => 'Assinantes Múltiplos';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Remover app?',
		other: 'Remover apps?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Muitas solicitações (limitado) - tente novamente em {count} minuto',
		other: 'Muitas solicitações (limitado) - tente novamente em {count} minutos',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'A busca de atualizações em segundo plano encontrou um {error}, será agendado uma nova tentativa em {count} minuto',
		other: 'A busca de atualizações em segundo plano encontrou um {error}, será agendado uma nova tentativa em {count} minutos',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Verificação da atualização do BG encontrada {count} atualização - notificará o usuário se necessário',
		other: 'Verificação de atualização do BG encontrou atualizações {count} - notificará o usuário se necessário',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{count} app',
		other: '{count} apps',
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
		one: 'Limpou {n} registros (before = {before}, after = {after})',
		other: 'Limpou {n} registros (antes = {before}, depois = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{app} e mais 1 app têm atualizações.',
		other: '{app} e mais {count} apps têm atualizações.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{app} e mais 1 app foram atualizados.',
		other: '{app} e mais {count} apps foram atualizados.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: 'Falha ao atualizar {app} e mais 1 app.',
		other: 'Falha ao atualizar {app} e mais {count} apps.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n,
		one: '{app} e mais 1 app podem ter sido atualizados.',
		other: '{app} e mais {count} apps podem ter sido atualizados.',
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
	@override String get licenseText => 'Este aplicativo é distribuído sob a Licença GPL v3.';
	@override String get disclaimer => 'Isenção de responsabilidade';
	@override String get disclaimerText => 'Este aplicativo não distribui, hospeda ou verifica nenhum dos aplicativos externos. O usuário assume a responsabilidade total pela segurança e legalidade de qualquer software instalado através desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para baixar Updatium - é altamente desaconselhável baixá-lo de outros lugares pois o download de fontes não oficiais não é seguro.';
	@override String get privacy => 'Privacidade';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Aceitar e continuar';
	@override String get decline => 'Recusar';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Gostando do Updatium?';
	@override String get githubStarPromptContent => 'Updatium é um projeto comunitário de código aberto voluntário desenvolvido no meu tempo livre. Se você gostaria de apoiar o projeto, por favor considere dar uma estrela no GitHub para nos ajudar a alcançar mais usuários e contribuidores. Você não será incomodado sobre isso novamente. Obrigado antecipadamente! :)';
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

/// The flat map containing all translations for locale <pt-BR>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsPtBr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Não é uma URL de app válida de {}',
			'noReleaseFound' => 'Não foi possível encontrar um lançamento adequado',
			'noVersionFound' => 'Não foi possível determinar a versão do lançamento',
			'urlMatchesNoSource' => 'A URL não corresponde com nenhuma fonte conhecida',
			'cantInstallOlderVersion' => 'Não é possível instalar uma versão mais antiga de um app',
			'appIdMismatch' => 'O ID do pacote baixado não corresponde ao existente',
			'functionNotImplemented' => 'Essa classe não implementou esse recurso ainda',
			'placeholder' => 'Espaço reservado',
			'someErrors' => 'Ocorreram alguns erros',
			'unexpectedError' => 'Erro inesperado',
			'ok' => 'Ok',
			'and' => 'e',
			'githubPATLabel' => 'Token de acesso pessoal do GitHub',
			'includePrereleases' => 'Incluir pré-lançamentos',
			'fallbackToOlderReleases' => 'Recorrer à lançamentos mais antigos',
			'filterReleaseTitlesByRegEx' => 'Filtrar títulos de lançamentos por expressão regular',
			'invalidRegEx' => 'Expressão regular inválida',
			'noDescription' => 'Sem descrição',
			'cancel' => 'Cancelar',
			'kContinue' => 'Continuar',
			'requiredInBrackets' => '(obrigatório)',
			'dropdownNoOptsError' => 'ERRO: O MENU DEVE TER PELO MENOS UMA OPÇÃO',
			'color' => 'Cor',
			'standard' => 'Padrão',
			'custom' => 'Personalizado',
			'primary' => 'Primary',
			'useMaterialYou' => 'Usar cores Material You',
			'githubStarredRepos' => 'Repositórios com estrela do GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nome de usuário',
			'wrongArgNum' => 'Número errado de argumentos fornecidos',
			'xIsTrackOnly' => '{} é somente de rastreio',
			'source' => 'Fonte',
			'app' => 'Aplicativo',
			'appsFromSourceAreTrackOnly' => 'Apps desta fonte são somente para rastreamento.',
			'youPickedTrackOnly' => 'Você selecionou a opção de somente rastreamento.',
			'trackOnlyAppDescription' => 'As atualizações do app serão rastreadas, mas o Updatium não baixará ou instalará elas.',
			'cancelled' => 'Cancelado',
			'appAlreadyAdded' => 'O app já foi adicionado',
			'alreadyUpToDateQuestion' => 'O app já está atualizado?',
			'addApp' => 'Adicionar app',
			'appSourceURL' => 'URL da fonte do app',
			'error' => 'Erro',
			'add' => 'Adicionar',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Pesquisar (somente algumas fontes)',
			'search' => 'Pesquisar',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opções adicionais de {}',
			'supportedSources' => 'Fontes suportadas',
			'trackOnlyInBrackets' => '(somente rastreamento)',
			'searchableInBrackets' => '(pesquisável)',
			'appsString' => 'Aplicativos',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Nenhum app',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Nenhum app pro filtro',
			'byX' => 'Por {}',
			'percentProgress' => 'Progresso: {}%',
			'pleaseWait' => 'Por favor aguarde',
			'updateAvailable' => 'Atualização disponível',
			'notInstalled' => 'Não instalado',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-versão',
			'selectAll' => 'Selecionar tudo',
			'deselectX' => 'Desselecionar {}',
			'xWillBeRemovedButRemainInstalled' => '{} será removido do Updatium mas continuará instalado no dispositivo.',
			'removeSelectedAppsQuestion' => 'Remover os apps selecionados?',
			'removeSelectedApps' => 'Remover apps selecionados',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Atualizar {}',
			'installX' => 'Instalar {}',
			'markXTrackOnlyAsUpdated' => 'Marcar {}\n(somente rastreamento)\ncomo atualizado',
			'changeX' => 'Alterar {}',
			'installUpdateApps' => 'Instalar/atualizar apps',
			'installUpdateSelectedApps' => 'Instalar/atualizar apps selecionados',
			'markXSelectedAppsAsUpdated' => 'Marcar os {} apps selecionados como atualizados?',
			'no' => 'Não',
			'yes' => 'Sim',
			'markSelectedAppsUpdated' => 'Marcar apps selecionados como atualizados',
			'pinToTop' => 'Fixar ao topo',
			'unpinFromTop' => 'Desfixar do topo',
			'resetInstallStatusForSelectedAppsQuestion' => 'Redefinir o estado de instalação dos apps selecionados?',
			'installStatusOfXWillBeResetExplanation' => 'Os estados de instalação dos apps selecionados serão redefinidos.\n\nIsso pode ajudar quando a versão exibida no Updatium está incorreta devido a atualizações malsucedidas ou outros problemas.',
			'customLinkMessage' => 'Esses links funcionarão em dispositivos com o Updatium instalado',
			'shareAppConfigLinks' => 'Compartilhar configuração do app como um link HTML',
			'resetInstallStatus' => 'Redefinir estado de instalação',
			'more' => 'Mais',
			'removeOutdatedFilter' => 'Remover filtro de apps desatualizados',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Mostrar somente apps desatualizados',
			'filter' => 'Filtro',
			'filterApps' => 'Filtrar apps',
			'filterDays' => 'Filter days',
			'appName' => 'Nome do app',
			'author' => 'Autor',
			'upToDateApps' => 'Apps atualizados',
			'nonInstalledApps' => 'Apps não instalados',
			'importExport' => 'Importar/Exportar',
			'settings' => 'Configurações',
			'exportedTo' => 'Exportado para {}',
			'updatiumExport' => 'Exportação do Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Entrada inválida',
			'importedX' => '{} importado(s)',
			'updatiumImport' => 'Importação do Updatium',
			'importFromURLList' => 'Importar da lista de URLs',
			'searchQuery' => 'Consulta de pesquisa',
			'appURLList' => 'Lista de URLs dos apps',
			'line' => 'Linha',
			'searchX' => 'Pesquisar {}',
			'noResults' => 'Nenhum resultado encontrado',
			'importX' => 'Importar {}',
			'importedAppsIdDisclaimer' => 'Os apps importados podem ser exibidos incorretamente como se não estivessem instalados.\nPara resolver isso, reinstale eles pelo Updatium.\nIsso não afetará os dados dos apps.\n\nIsso somente afeta a URL e os métodos de importação de terceiros.',
			'importErrors' => 'Erros de importação',
			'importedXOfYApps' => '{} de {} foram importados.',
			'followingURLsHadErrors' => 'As seguintes URLs tiveram erros:',
			'selectURL' => 'Selecionar URL',
			'selectURLs' => 'Selecionar URLs',
			'pick' => 'Escolher',
			'theme' => 'Tema',
			'dark' => 'Escuro',
			'light' => 'Claro',
			'followSystem' => 'Seguir o sistema',
			'followSystemThemeExplanation' => 'Só é possível seguir o tema do sistema ao usar aplicativos de terceiros',
			'useBlackTheme' => 'Usar o tema escuro de preto profundo',
			'appSortBy' => 'Ordenar apps por',
			'authorName' => 'Autor/nome',
			'nameAuthor' => 'Nome/autor',
			'asAdded' => 'Como adicionados',
			'appSortOrder' => 'Ordem dos apps',
			'ascending' => 'Crescente',
			'descending' => 'Decrescente',
			'bgUpdateCheckInterval' => 'Intervalo de busca por atualizações em segundo plano',
			'neverManualOnly' => 'Nunca - somente manualmente',
			'appearance' => 'Aparência',
			'pinUpdates' => 'Fixar atualizações no topo da tela de apps',
			'updates' => 'Atualizações',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Específico à fonte',
			'appSource' => 'Fonte do app',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Nenhum registro',
			'appLogs' => 'Registros do app',
			'appLogsHint' => 'View application logs',
			'close' => 'Fechar',
			'share' => 'Compartilhar',
			'appNotFound' => 'O app não foi encontrado',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Selecione um APK',
			'appHasMoreThanOnePackage' => '{} tem mais de um pacote:',
			'deviceSupportsXArch' => 'Seu dispositivo suporta a arquitetura de CPU {}.',
			'deviceSupportsFollowingArchs' => 'Seu dispositivo suporta as seguintes arquiteturas de CPU:',
			'warning' => 'Alerta',
			'sourceIsXButPackageFromYPrompt' => 'A fonte do app é \'{}\' mas o pacote de lançamento vem de \'{}\'. Continuar mesmo assim?',
			'updatesAvailable' => 'Atualizações disponíveis',
			'updatesAvailableNotifDescription' => 'Notifica o usuário que atualizações estão disponíveis para um ou mais apps rastreados pelo Updatium',
			'noNewUpdates' => 'Nenhuma atualização disponível.',
			'xHasAnUpdate' => '{} tem uma atualização.',
			'appsUpdated' => 'Apps atualizados',
			'appsNotUpdated' => 'Falhou ao atualizar os aplicativos',
			'appsUpdatedNotifDescription' => 'Notifica o usuário que atualizações de um ou mais apps foram aplicadas em segundo plano',
			'xWasUpdatedToY' => '{} foi atualizado para a versão {}.',
			'xWasNotUpdatedToY' => 'Falha ao atualizar {} para a versão {}.',
			'errorCheckingUpdates' => 'Ocorreu um erro ao buscar atualizações',
			'errorCheckingUpdatesNotifDescription' => 'Uma notificação que mostra quando a busca de atualizações em segundo plano falha',
			'appsRemoved' => 'Apps removidos',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifica o usuário que um ou mais apps foram removidos devido a erros ao carregá-los',
			'xWasRemovedDueToErrorY' => '{} for removido devido ao erro: {}',
			'completeAppInstallation' => 'Concluir instalação do app',
			'updatiumMustBeOpenToInstallApps' => 'O Updatium precisa estar aberto para instalar apps',
			'completeAppInstallationNotifDescription' => 'Pede pro usuário voltar ao Updatium para concluir a instalação de um app',
			'checkingForUpdates' => 'Buscando atualizações',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notificação transitória que aparece ao buscar atualizações',
			'pleaseAllowInstallPerm' => 'Permita que o Updatium instale apps',
			'trackOnly' => 'Somente rastreamento',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Erro {}',
			'versionCorrectionDisabled' => 'Correção de versão desativada (o plugin parece não funcionar)',
			'unknown' => 'Desconhecido',
			'none' => 'Nenhum',
			'all' => 'Todos',
			'never' => 'Nunca',
			'latestVersion' => 'Mais recente',
			'installedVersionX' => 'Instalado: {}',
			'lastUpdateCheckX' => 'Última busca por atualizações: {}',
			'remove' => 'Remover',
			'quickLinks' => 'Links Rápidos',
			'yesMarkUpdated' => 'Sim, marcar como atualizado',
			'fdroid' => 'Oficial do F-Droid',
			'appIdOrName' => 'ID do app ou nome',
			'appId' => 'ID do app',
			'appWithIdOrNameNotFound' => 'Nenhum app foi encontrado com aquele ID ou nome',
			'reposHaveMultipleApps' => 'Repositórios podem conter vários apps',
			'fdroidThirdPartyRepo' => 'Repositório de terceiros do F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Instalar',
			'markInstalled' => 'Marcar como instalado',
			'update' => 'Atualizar',
			'updated' => 'Atualizado',
			'markUpdated' => 'Marcar como atualizado',
			'download' => 'Download',
			'additionalOptions' => 'Opções adicionais',
			'disableVersionDetection' => 'Desativar detecção de versão',
			'noVersionDetectionExplanation' => 'Essa opção só seve ser usada para apps aonde a detecção de versão não funciona corretamente.',
			'downloadingX' => 'Baixando {}',
			'downloadX' => 'Baixar {}',
			'downloadedX' => '{} foi baixado',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Item de lançamento',
			'downloadNotifDescription' => 'Notifica o usuário do progresso ao baixar um app',
			'noAPKFound' => 'Nenhum APK encontrado',
			'noVersionDetection' => 'Sem detecção de versão',
			'categorize' => 'Categorizar',
			'categories' => 'Categorias',
			'category' => 'Categoria',
			'noCategory' => 'Nenhuma categoria',
			'noCategories' => 'Nenhuma categoria',
			'categoryDeleteQuestion' => 'Excluir categorias?',
			'categoryDeleteWarning' => 'Todos os apps em categorias excluídas ficarão sem categoria.',
			'addCategory' => 'Adicionar categoria',
			'label' => 'Rótulo',
			'language' => 'Idioma',
			'copiedToClipboard' => 'Copiado para a área de transferência',
			'storagePermissionDenied' => 'Permissão de armazenamento negada',
			'selectedCategorizeWarning' => 'Isso substituirá a configuração de categoria existente dos apps selecionados.',
			'filterAPKsByRegEx' => 'Filtrar APKs por expressão regular',
			'removeFromUpdatium' => 'Remover do Updatium',
			'uninstallFromDevice' => 'Desinstalar do dispositivo',
			'onlyWorksWithNonVersionDetectApps' => 'Funciona somente em apps com a detecção de versão desativada.',
			'releaseDateAsVersion' => 'Usar data de lançamento como número da versão',
			'releaseTitleAsVersion' => 'Usar título do lançamento como número da versão',
			'releaseDateAsVersionExplanation' => 'Essa opção só deve ser usada para apps quais a detecção de versão não funciona corretamente, mas uma data de lançamento está disponível.',
			'changes' => 'Alterações',
			'releaseDate' => 'Data de lançamento',
			'importFromURLsInFile' => 'Importar das URLs em arquivo (como OPML)',
			'versionDetectionExplanation' => 'Combinar o número da versão com a versão detectada pelo sistema',
			'versionDetection' => 'Detecção de versão',
			'standardVersionDetection' => 'Detecção de versão padrão',
			'groupByCategory' => 'Agrupar por categoria',
			'listView' => 'Visualização em lista',
			'gridView' => 'Visualização em grade',
			'autoApkFilterByArch' => 'Tentar filtrar APKs pela arquitetura da CPU quando possível',
			'autoLinkFilterByArch' => 'Tentar filtrar links pela arquitetura da CPU quando possível',
			'overrideSource' => 'Sobrescrever fonte',
			'dontShowAgain' => 'Não mostrar isso novamente',
			'dontShowTrackOnlyWarnings' => 'Não mostrar alertas de "somente rastreamento"',
			'dontShowAPKOriginWarnings' => 'Não mostrar alertas de origem dos APKs',
			'moveNonInstalledAppsToBottom' => 'Mover apps não instalados ao final da tela de apps',
			'gitlabPATLabel' => 'Token de acesso pessoal do GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Sobre',
			'requiresCredentialsInSettings' => '{} precisa de credenciais adicionais (nas Configurações)',
			'checkOnStart' => 'Buscar atualizações ao abrir o app',
			'safeMode' => 'Modo seguro',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Adicionar app está desabilitado no modo seguro',
			'tryInferAppIdFromCode' => 'Tentar inferir o ID do aplicativo a partir do código-fonte',
			'removeOnExternalUninstall' => 'Remover automaticamente apps desinstalados externamente',
			'pickHighestVersionCode' => 'Selecionar APK de versão mais alta automaticamente',
			'checkUpdateOnDetailPage' => 'Buscar atualizações ao abrir a tela de detalhes de um app',
			'disablePageTransitions' => 'Desativar animações de transição de tela',
			'reversePageTransitions' => 'Inverter animações de transição de tela',
			'minStarCount' => 'Número de estrelas mínimo',
			'addInfoBelow' => 'Adicione essa informação abaixo.',
			'addInfoInSettings' => 'Adicione essa informação nas Configurações.',
			'githubSourceNote' => 'O limite de taxa do GitHub pode ser evitado ao usar uma chave de API.',
			'sortByLastLinkSegment' => 'Ordenar somente pelo ultimo segmento do link',
			'filterReleaseNotesByRegEx' => 'Filtrar notas de lançamento por expressão regular',
			'customLinkFilterRegex' => 'Filtro de link de APK personalizado por expressão regular (padrão \'.apk$\')',
			'appsPossiblyUpdated' => 'Tentativas de atualização de apps',
			'appsPossiblyUpdatedNotifDescription' => 'Notifica o usuário que atualizações de um ou mais apps podem ter sido aplicadas em segundo plano',
			'xWasPossiblyUpdatedToY' => '{} pode ter sido atualizado para a versão {}.',
			'enableBackgroundUpdates' => 'Ativar atualizações em segundo plano',
			'backgroundUpdateReqsExplanation' => 'Atualizações em segundo plano podem não funcionar com todos os apps.',
			'backgroundUpdateLimitsExplanation' => 'O sucesso de uma instalação em segundo plano só pode ser determinada ao abrir o Updatium.',
			'verifyLatestTag' => 'Verificar a tag \'mais recente\'',
			'intermediateLinkRegex' => 'Filtrar por um link \'intermediário\' para visitar',
			'filterByLinkText' => 'Filtrar links por texto do link',
			'matchLinksOutsideATags' => 'Corresponder links fora das tags <a>',
			'intermediateLinkNotFound' => 'Link intermediário não encontrado',
			'intermediateLink' => 'Link intermediário',
			'exemptFromBackgroundUpdates' => 'Isento de atualizações em segundo plano (caso ativadas)',
			'bgUpdatesOnWiFiOnly' => 'Desativar atualizações em segundo plano fora do Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Desativar atualizações em segundo plano fora do carregador',
			'autoSelectHighestVersionCode' => 'Selecionar automaticamente APK com o código de versão mais alto',
			'versionExtractionRegEx' => 'ExReg de extração do número da versão',
			'trimVersionString' => 'Cortar número da versal com ExReg',
			'matchGroupToUseForX' => 'Corresponder grupo para o uso em "{}"',
			'matchGroupToUse' => 'Corresponder grupo para o uso para a extração do número da versão por ExReg',
			'highlightTouchTargets' => 'Acentuar alvos de toque menos óbvios',
			'pickExportDir' => 'Selecionar pasta de exportação',
			'autoExportOnChanges' => 'Exportar automaticamente ao ocorrer alterações',
			'includeSettings' => 'Incluir configurações',
			'filterVersionsByRegEx' => 'Filtrar versões por expressão regular',
			'trySelectingSuggestedVersionCode' => 'Tente selecionar o APK com o código de versão sugerido',
			'dontSortReleasesList' => 'Manter ordem de lançamento da API',
			'reverseSort' => 'Ordem inversa',
			'takeFirstLink' => 'Usar o primeiro link',
			'skipSort' => 'Pular ordenação',
			'debugMenu' => 'Menu de depuração',
			'bgTaskStarted' => 'Tarefa em segundo plano iniada - verifique os registros.',
			'runBgCheckNow' => 'Executar busca por atualizações em segundo plano agora',
			'versionExtractWholePage' => 'Aplicar ExReg de extração de número de versão à página inteira',
			'installing' => 'Instalando',
			'skipUpdateNotifications' => 'Pular notificações de atualização',
			'updatesAvailableNotifChannel' => 'Atualizações disponíveis',
			'appsUpdatedNotifChannel' => 'Apps atualizados',
			'appsPossiblyUpdatedNotifChannel' => 'Tentativas de atualização de apps',
			'errorCheckingUpdatesNotifChannel' => 'Erro ao buscar atualizações',
			'appsRemovedNotifChannel' => 'Apps removidos',
			'downloadingXNotifChannel' => 'Baixando {}',
			'completeAppInstallationNotifChannel' => 'Concluir instalação do app',
			'checkingForUpdatesNotifChannel' => 'Buscando atualizações',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Buscar atualizações somente para apps instalados e de somente rastreamento',
			'supportFixedAPKURL' => 'Suportar URLs de APK fixas',
			'selectX' => 'Selecionar {}',
			'parallelDownloads' => 'Permitir downloads em paralelo',
			'useShizuku' => 'Usar Shizuku ou Sui para instalação',
			'shizukuBinderNotFound' => 'Serviço Shizuku não está em execução',
			'shizukuOld' => 'Versão do Shizuku antiga (<11) - atualize',
			'shizukuOldAndroidWithADB' => 'Shizuku sendo executado no Android < 8.1 com ADB - atualize o Android ou use o Sui',
			'shizukuPretendToBeGooglePlay' => 'Definir Google Play como a fonte de instalação (se o Shizuku é usado)',
			'useSystemFont' => 'Usar a fonte do sistema',
			'useVersionCodeAsOSVersion' => 'Usar código de versão do app como a versão detectada pelo sistema',
			'requestHeader' => 'Cabeçalho da solicitação',
			'useLatestAssetDateAsReleaseDate' => 'Usar o envio de item mais recente como a data de lançamento',
			'defaultPseudoVersioningMethod' => 'Método de pseudo-versão padrão',
			'partialAPKHash' => 'Hash do APK parcial',
			'APKLinkHash' => 'Hash do link do APK',
			'directAPKLink' => 'Link direto ao APK',
			'pseudoVersionInUse' => 'Uma pseudo-versão está em uso',
			'installedVersion' => 'Instalado',
			'installed' => 'Instalado',
			'notInstalledApps' => 'Não instalado',
			'latest' => 'Mais recente',
			'invertRegEx' => 'Inverter expressão regular',
			'note' => 'Observação',
			'selfHostedNote' => 'O menu de opções "{}" pode ser usado para alcançar instâncias hospedadas-por-você/personalizadas de qualquer fonte.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'O APK não pode ser interpretado (incompatível ou baixado parcialmente)',
			'beforeNewInstallsShareToAppVerifier' => 'Compartilhar apps novos com o AppVerifier (se disponível)',
			'appVerifierInstructionToast' => 'Compartilhe com o AppVerifier, e volte aqui ao estar pronto.',
			'wiki' => 'Ajuda/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Permitir solicitações de HTTP inseguras',
			'stayOneVersionBehind' => 'Ficar uma versão antes da mais recente',
			'useFirstApkOfVersion' => 'Seleção automática do primeiro de vários APKs',
			'refreshBeforeDownload' => 'Atualizar detalhes do app antes de baixar',
			'tencentAppStore' => 'Loja de Apps da Tencent',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'Vivo App Store (CN)',
			'name' => 'Nome',
			'smartname' => 'Nome (inteligente)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Método de ordenação',
			'welcome' => 'Boas vindas',
			'batteryOptimizationNote' => 'Observe que os downloads em segundo plano podem funcionar de forma mais confiável se você desativar as otimizações de bateria do sistema operacional para o Updatium.',
			'fileDeletionError' => 'Falha ao excluir o arquivo (tente excluí-lo manualmente e tente novamente): "{}"',
			'foregroundService' => 'Serviço de primeiro plano do Updatium',
			'foregroundServiceExplanation' => 'Usar um serviço em primeiro plano para verificação de atualizações (mais confiável, consome mais energia)',
			'fgServiceNotice' => 'Essa notificação é necessária para a verificação de atualizações em segundo plano (ela pode ser ocultada nas configurações do sistema operacional)',
			'excludeSecrets' => 'Excluir segredos',
			'GHReqPrefix' => 'Instância "omeritzics/Updatium" para solicitações do GitHub',
			'includeZips' => 'Incluir arquivos ZIP',
			'zippedApkFilterRegEx' => 'Filtrar APKs dentro do ZIP',
			'multipleSigners' => 'Assinantes Múltiplos',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Remover app?', other: 'Remover apps?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Muitas solicitações (limitado) - tente novamente em {count} minuto', other: 'Muitas solicitações (limitado) - tente novamente em {count} minutos', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'A busca de atualizações em segundo plano encontrou um {error}, será agendado uma nova tentativa em {count} minuto', other: 'A busca de atualizações em segundo plano encontrou um {error}, será agendado uma nova tentativa em {count} minutos', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Verificação da atualização do BG encontrada {count} atualização - notificará o usuário se necessário', other: 'Verificação de atualização do BG encontrou atualizações {count} - notificará o usuário se necessário', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} app', other: '{count} apps', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} minuto', other: '{count} minutos', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} hora', other: '{count} horas', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} dia', other: '{count} dias', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Limpou {n} registros (before = {before}, after = {after})', other: 'Limpou {n} registros (antes = {before}, depois = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{app} e mais 1 app têm atualizações.', other: '{app} e mais {count} apps têm atualizações.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{app} e mais 1 app foram atualizados.', other: '{app} e mais {count} apps foram atualizados.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Falha ao atualizar {app} e mais 1 app.', other: 'Falha ao atualizar {app} e mais {count} apps.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{app} e mais 1 app podem ter sido atualizados.', other: '{app} e mais {count} apps podem ter sido atualizados.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('pt'))(n, one: 'Hash do Certificado', other: 'Certificado Hashes', ), 
			'securityDisclaimerTitle' => 'Aviso de Segurança e Legal',
			'license' => 'Licença',
			'licenseText' => 'Este aplicativo é distribuído sob a Licença GPL v3.',
			'disclaimer' => 'Isenção de responsabilidade',
			'disclaimerText' => 'Este aplicativo não distribui, hospeda ou verifica nenhum dos aplicativos externos. O usuário assume a responsabilidade total pela segurança e legalidade de qualquer software instalado através desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para baixar Updatium - é altamente desaconselhável baixá-lo de outros lugares pois o download de fontes não oficiais não é seguro.',
			'privacy' => 'Privacidade',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Aceitar e continuar',
			'decline' => 'Recusar',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Gostando do Updatium?',
			'githubStarPromptContent' => 'Updatium é um projeto comunitário de código aberto voluntário desenvolvido no meu tempo livre. Se você gostaria de apoiar o projeto, por favor considere dar uma estrela no GitHub para nos ajudar a alcançar mais usuários e contribuidores. Você não será incomodado sobre isso novamente. Obrigado antecipadamente! :)',
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
