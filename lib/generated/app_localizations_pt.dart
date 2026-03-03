// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'URL $p0 inválida';
  }

  @override
  String get noReleaseFound => 'Não foi possível encontrar uma versão adequada';

  @override
  String get noVersionFound => 'Não foi possível encontrar uma versão';

  @override
  String get urlMatchesNoSource => 'A URL não corresponde a uma fonte conhecida';

  @override
  String get cantInstallOlderVersion => 'Não é permitido instalar uma versão anterior de uma aplicação';

  @override
  String get appIdMismatch => 'O ID do pacote descarregado não é igual ao ID da aplicação instalada';

  @override
  String get functionNotImplemented => 'Esta classe não implementou essa função';

  @override
  String get placeholder => 'Espaço reservado';

  @override
  String get someErrors => 'Alguns erros ocorreram';

  @override
  String get unexpectedError => 'Erro inesperado';

  @override
  String get ok => 'OK';

  @override
  String get and => 'e';

  @override
  String get githubPATLabel => 'Token de acesso pessoal do GitHub\n(Reduz tempos de espera)';

  @override
  String get includePrereleases => 'Incluir pré-lançamentos';

  @override
  String get fallbackToOlderReleases => 'Retornar para versões anteriores';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtrar títulos de versões usando expressão regular';

  @override
  String get invalidRegEx => 'Expressão regular inválida';

  @override
  String get noDescription => 'Sem descrição';

  @override
  String get cancel => 'Cancelar';

  @override
  String get continue => 'Continuar';

  @override
  String get requiredInBrackets => '(Necessário)';

  @override
  String get dropdownNoOptsError => 'ERRO: O DROPDOWN DEVE TER PELO MENOS UMA OPÇÃO';

  @override
  String get color => 'Cor';

  @override
  String get standard => 'Padrão';

  @override
  String get custom => 'Personalizado';

  @override
  String get useMaterialYou => 'Utilizar cores Material You';

  @override
  String get githubStarredRepos => 'repositórios favoritos no GitHub';

  @override
  String get uname => 'Nome de usuário';

  @override
  String get wrongArgNum => 'Número de argumentos errado';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 é \'Apenas monitorar\'';
  }

  @override
  String get source => 'Fonte';

  @override
  String get app => 'Aplicação';

  @override
  String get appsFromSourceAreTrackOnly => 'As aplicações desta fonte são \'Apenas monitorar\'.';

  @override
  String get youPickedTrackOnly => 'Você selecionou a opção \'Apenas monitorar\'.';

  @override
  String get trackOnlyAppDescription => 'As atualizações desta aplicação serão monitorizadas, mas o Updatium não poderá descarregá-la ou instalá-la.';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get appAlreadyAdded => 'Aplicação já adicionada';

  @override
  String get alreadyUpToDateQuestion => 'Aplicação já foi atualizada?';

  @override
  String get addApp => 'Adicionar aplicação';

  @override
  String get appSourceURL => 'URL de origem da aplicação';

  @override
  String get error => 'Erro';

  @override
  String get add => 'Adicionar';

  @override
  String get searchSomeSourcesLabel => 'Procurar (apenas algumas fontes)';

  @override
  String get search => 'Procurar';

  @override
  String additionalOptsFor(Object p0) {
    return 'Opções adicionais para $p0';
  }

  @override
  String get supportedSources => 'Fontes compatíveis';

  @override
  String get trackOnlyInBrackets => '(apenas monitorar)';

  @override
  String get searchableInBrackets => '(pesquisável)';

  @override
  String get appsString => 'Aplicações';

  @override
  String get noApps => 'Bem-vindo!';

  @override
  String get noAppsSubtext => 'Pode adicionar a sua primeira aplicação tocando em \'Adicionar aplicação\' abaixo.';

  @override
  String get noAppsForFilter => 'Sem aplicações para filtrar';

  @override
  String byX(Object p0) {
    return 'Por $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Progresso: $p0%';
  }

  @override
  String get pleaseWait => 'Por favor, espere';

  @override
  String get updateAvailable => 'Atualização disponível';

  @override
  String get notInstalled => 'Não instalado';

  @override
  String get pseudoVersion => 'pseudo-versão';

  @override
  String get selectAll => 'Selecionar todos';

  @override
  String deselectX(Object p0) {
    return 'Deselecionar $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 será removido do Updatium mais permanecerá instalado no dispositivo.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Remover aplicações selecionadas?';

  @override
  String get removeSelectedApps => 'Remover aplicações selecionadas';

  @override
  String updateX(Object p0) {
    return 'Atualizar $p0';
  }

  @override
  String installX(Object p0) {
    return 'Instalar $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Marcar $p0\n(Apenas monitorar)\ncomo Atualizado';
  }

  @override
  String changeX(Object p0) {
    return 'Mudar $p0';
  }

  @override
  String get installUpdateApps => 'Instalar/Atualizar aplicações';

  @override
  String get installUpdateSelectedApps => 'Instalar/Atualizar aplicações selecionadas';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Marcar $p0 aplicações selecionadas como atualizadas?';
  }

  @override
  String get no => 'Não';

  @override
  String get yes => 'Sim';

  @override
  String get markSelectedAppsUpdated => 'Marcar aplicações selecionadas como Atualizadas';

  @override
  String get pinToTop => 'Fixar no topo';

  @override
  String get unpinFromTop => 'Desafixar do topo';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Reiniciar o estado de instalação das aplicações selecionadas?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'O estado de instalação de todas as aplicações selecionadas será reiniciado.\n\nIsto pode ajudar quando uma versão de uma aplicação mostrada no Updatium está incorreta devido a falhas na atualização ou outros problemas.';

  @override
  String get customLinkMessage => 'Esses links funcionam em dispositivos com o Updatium instalado';

  @override
  String get shareAppConfigLinks => 'Partilhar a configuração da aplicação como um link HTML';

  @override
  String get shareSelectedAppURLs => 'Partilhar URLs de aplicações selecionadas';

  @override
  String get resetInstallStatus => 'Reiniciar status de instalação';

  @override
  String get more => 'Mais';

  @override
  String get removeOutdatedFilter => 'Remover filtro de aplicações desatualizadas';

  @override
  String get showOutdatedOnly => 'Mostrar apenas aplicações desatualizadas';

  @override
  String get filter => 'Filtro';

  @override
  String get filterApps => 'Filtrar aplicações';

  @override
  String get appName => 'Nome da aplicação';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Aplicações atualizadas';

  @override
  String get nonInstalledApps => 'Aplicações não instaladas';

  @override
  String get importExport => 'Importar/Exportar';

  @override
  String get settings => 'Configurações';

  @override
  String exportedTo(Object p0) {
    return 'Exportado para $p0';
  }

  @override
  String get updatiumExport => 'Exportar dados do Updatium';

  @override
  String get invalidInput => 'Entrada inválida';

  @override
  String importedX(Object p0) {
    return 'Importado $p0';
  }

  @override
  String get updatiumImport => 'Importar dados do Updatium';

  @override
  String get importFromURLList => 'Importar de lista de URLs';

  @override
  String get searchQuery => 'Pesquisa';

  @override
  String get appURLList => 'Lista de URLs de aplicações';

  @override
  String get line => 'Linha';

  @override
  String searchX(Object p0) {
    return 'Pesquisar na/o $p0';
  }

  @override
  String get noResults => 'Nenhum resultado encontrado';

  @override
  String importX(Object p0) {
    return 'Importar $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Aplicações Importadas podem ser mostradas incorretamente como \"Não Instalado\".\nPara corrigir, reinstale-as usando o Updatium.\nIsto não deve afetar os dados da aplicação.\n\nAfeta apenas os métodos de importação de URL e de terceiros.';

  @override
  String get importErrors => 'Erros de importação';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 de $p1 aplicações importadas.';
  }

  @override
  String get followingURLsHadErrors => 'As seguintes URLs apresentaram erros:';

  @override
  String get selectURL => 'Selecionar URL';

  @override
  String get selectURLs => 'Selecionar URLs';

  @override
  String get pick => 'Escolher';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Escuro';

  @override
  String get light => 'Claro';

  @override
  String get followSystem => 'Padrão do sistema';

  @override
  String get followSystemThemeExplanation => 'O tema do sistema seguinte só é possível através da utilização de aplicações de terceiros';

  @override
  String get useBlackTheme => 'Usar tema preto AMOLED';

  @override
  String get appSortBy => 'Classificar aplicação por';

  @override
  String get authorName => 'Autor/Nome';

  @override
  String get nameAuthor => 'Nome/Autor';

  @override
  String get asAdded => 'Como adicionado';

  @override
  String get appSortOrder => 'Ordem de classificação das aplicações';

  @override
  String get ascending => 'Ascendente';

  @override
  String get descending => 'Descendente';

  @override
  String get bgUpdateCheckInterval => 'Intervalo de verificação de atualizações em segundo-plano';

  @override
  String get neverManualOnly => 'Nunca - apenas manual';

  @override
  String get appearance => 'Aparência';

  @override
  String get pinUpdates => 'Fixar atualizações no topo da janela das aplicações';

  @override
  String get updates => 'Atualizações';

  @override
  String get sourceSpecific => 'Token de acesso';

  @override
  String get appSource => 'Fonte da aplicação';

  @override
  String get noLogs => 'Sem logs';

  @override
  String get appLogs => 'Logs da aplicação';

  @override
  String get close => 'Fechar';

  @override
  String get share => 'Compartilhar';

  @override
  String get appNotFound => 'Aplicação não encontrada';

  @override
  String get networkError => 'Falha na conexão de rede';

  @override
  String get invalidUrlFormat => 'Formato de URL inválido';

  @override
  String get accessDenied => 'Acesso negado';

  @override
  String get importFailed => 'Falha na importação';

  @override
  String get updatiumExportHyphenatedLowercase => 'exportação de updatium';

  @override
  String get pickAnAPK => 'Selecionar um APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 tem mais de um pacote:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Seu dispositivo suporta a arquitetura de CPU $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Seu dispositivo suporta as seguintes arquiteturas de CPU:';

  @override
  String get warning => 'Aviso';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'A fonte da aplicação é \'$p0\' mas a origem do pacote é \'$p1\'. Continuar?';
  }

  @override
  String get updatesAvailable => 'Atualizações disponíveis';

  @override
  String get updatesAvailableNotifDescription => 'Notifica o utilizador quando as atualizações de uma ou mais aplicações monitorizadas pelo Updatium estão disponíveis';

  @override
  String get noNewUpdates => 'Sem novas atualizações.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 tem uma atualização.';
  }

  @override
  String get appsUpdated => 'Aplicações atualizadas';

  @override
  String get appsNotUpdated => 'Falha na atualização das aplicações';

  @override
  String get appsUpdatedNotifDescription => 'Notifica o utilizador quando as atualizações foram aplicadas em segundo plano para uma ou mais aplicações ';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 foi atualizado para $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Falha ao atualizar $p0 para $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Erro ao procurar por atualizações';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Uma notificação que mostra quando a checagem por atualizações em segundo-plano falha';

  @override
  String get appsRemoved => 'Aplicações removidas';

  @override
  String get appsRemovedNotifDescription => 'Notifica o utilizador quando uma ou mais aplicações foram removidas devido a erros de carregamento';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 foi removido devido a este erro: $p1';
  }

  @override
  String get completeAppInstallation => 'Instalação da aplicação concluída';

  @override
  String get updatiumMustBeOpenToInstallApps => 'O Updatium deve estar aberto para instalar as aplicações';

  @override
  String get completeAppInstallationNotifDescription => 'Pede ao usuário que retorne ao Updatium para finalizar a instalação de uma aplicação';

  @override
  String get checkingForUpdates => 'Verificando atualizações';

  @override
  String get checkingForUpdatesNotifDescription => 'Notificação transiente que aparece quando o Updatium está verificando se há atualizações';

  @override
  String get pleaseAllowInstallPerm => 'Por favor, permita que o Updatium instale aplicações';

  @override
  String get trackOnly => 'Apenas monitorar';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Erro $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Correção de versão desativada (plugin parece não funcionar)';

  @override
  String get unknown => 'Desconhecido';

  @override
  String get none => 'Nenhum';

  @override
  String get all => 'Todos';

  @override
  String get never => 'Nunca';

  @override
  String latestVersionX(Object p0) {
    return 'Última versão: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Versão instalada: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Última verificação de atualizações: $p0';
  }

  @override
  String get remove => 'Remover';

  @override
  String get yesMarkUpdated => 'Sim, marcar como atualizado';

  @override
  String get fdroid => 'Oficial F-Droid';

  @override
  String get appIdOrName => 'ID da aplicação ou nome';

  @override
  String get appId => 'ID da aplicação';

  @override
  String get appWithIdOrNameNotFound => 'Nenhuma aplicação foi encontrada com esse ID ou nome';

  @override
  String get reposHaveMultipleApps => 'Os repositórios podem conter múltiplas aplicações';

  @override
  String get fdroidThirdPartyRepo => 'Repositórios de terceiros F-Droid';

  @override
  String get install => 'Instalar';

  @override
  String get markInstalled => 'Marcar instalado';

  @override
  String get update => 'Atualizar';

  @override
  String get updated => 'Atualizado';

  @override
  String get markUpdated => 'Marcar como atualizado';

  @override
  String get additionalOptions => 'Opções adicionais';

  @override
  String get disableVersionDetection => 'Desativar detecção de versão';

  @override
  String get noVersionDetectionExplanation => 'Esta opção deve ser usada apenas por aplicações onde a deteção de versão não funciona corretamente.';

  @override
  String downloadingX(Object p0) {
    return 'Baixando $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Descarregar $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Descarregado $p0';
  }

  @override
  String get releaseAsset => 'Libertação de activos';

  @override
  String get downloadNotifDescription => 'Notifica o utilizador sobre o progresso do download de uma aplicação';

  @override
  String get noAPKFound => 'APK não encontrado';

  @override
  String get noVersionDetection => 'Sem detecção de versão';

  @override
  String get categorize => 'Categorizar';

  @override
  String get categories => 'Categorias';

  @override
  String get category => 'Categoria';

  @override
  String get noCategory => 'Sem categoria';

  @override
  String get noCategories => 'Sem categorias';

  @override
  String get deleteCategoriesQuestion => 'Deletar  categorias?';

  @override
  String get categoryDeleteWarning => 'Todas as aplicações em categorias removidas serão descategorizadas.';

  @override
  String get addCategory => 'Adicionar categoria';

  @override
  String get label => 'Etiqueta';

  @override
  String get language => 'Linguagem';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get storagePermissionDenied => 'Permissão de armazenamento negada';

  @override
  String get selectedCategorizeWarning => 'Isto irá substituir qualquer configuração de categoria para as aplicações selecionadas.';

  @override
  String get filterAPKsByRegEx => 'Filtrar APKs usando expressão regular';

  @override
  String get removeFromUpdatium => 'Remover do Updatium';

  @override
  String get uninstallFromDevice => 'Desinstalar do dispositivo';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Apenas funciona para aplicações com a deteção de versão desativada.';

  @override
  String get releaseDateAsVersion => 'Usar data de lançamento como versão';

  @override
  String get releaseTitleAsVersion => 'Utilizar o título da versão como cadeia de versões';

  @override
  String get releaseDateAsVersionExplanation => 'Esta opção só deve ser usada para aplicações onde a deteção de versão não funciona corretamente, mas existe uma data de lançamento disponível.';

  @override
  String get changes => 'Alterações';

  @override
  String get releaseDate => 'Data de lançamento';

  @override
  String get importFromURLsInFile => 'Importar de URLs em arquivo (formato OPML)';

  @override
  String get versionDetectionExplanation => 'Reconciliar string de versão com versão detectada no sistema operacional';

  @override
  String get versionDetection => 'Detecção de versão';

  @override
  String get standardVersionDetection => 'Detecção de versão padrão';

  @override
  String get groupByCategory => 'Agroupar por categoria';

  @override
  String get listView => 'Vista de lista';

  @override
  String get gridView => 'Vista de grelha';

  @override
  String get autoApkFilterByArch => 'Tente filtrar APKs por arquitetura de CPU, se possível';

  @override
  String get autoLinkFilterByArch => 'Tentativa de filtrar as ligações por arquitetura de CPU, se possível';

  @override
  String get overrideSource => 'Substituir fonte';

  @override
  String get dontShowAgain => 'Não mostrar isso novamente';

  @override
  String get dontShowTrackOnlyWarnings => 'Não mostrar avisos \'Apenas monitorar\'';

  @override
  String get dontShowAPKOriginWarnings => 'Não mostrar avisos de origem da APK';

  @override
  String get moveNonInstalledAppsToBottom => 'Mover aplicações não instaladas para o fundo da lista de aplicações';

  @override
  String get hideNonInstalledApps => 'Ocultar aplicações não instaladas';

  @override
  String get gitlabPATLabel => 'Token de acesso pessoal do Gitlab';

  @override
  String get about => 'Sobre';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0: Isso requer credenciais adicionais (em Configurações)';
  }

  @override
  String get checkOnStart => 'Verificar se há atualizações ao iniciar';

  @override
  String get tryInferAppIdFromCode => 'Tentar inferir o ID da aplicação a partir do código-fonte';

  @override
  String get removeOnExternalUninstall => 'Remover automaticamente aplicações desinstaladas externamente';

  @override
  String get pickHighestVersionCode => 'Auto-selecionar o maior número de versão do APK';

  @override
  String get checkUpdateOnDetailPage => 'Checar por atualizações ao abrir a página de detalhes de uma aplicação';

  @override
  String get disablePageTransitions => 'Desativar animações de transição de página';

  @override
  String get reversePageTransitions => 'Animações de transição de página invertidas';

  @override
  String get minStarCount => 'Contagem mínima de estrelas';

  @override
  String get addInfoBelow => 'Adicionar essa informação abaixo.';

  @override
  String get addInfoInSettings => 'Adicionar essa informação nas configurações.';

  @override
  String get githubSourceNote => 'A limitação de taxa do GitHub pode ser evitada usando uma chave de API.';

  @override
  String get sortByLastLinkSegment => 'Ordenar apenas usando o último segmento do link';

  @override
  String get filterReleaseNotesByRegEx => 'Filtrar notas de versão usando Regex';

  @override
  String get customLinkFilterRegex => 'Filtro de link personalizado usando expressão regular (Padrão \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Aplicações possivelmente atualizadas';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Notifica o utilizador de que as atualizações de uma ou mais aplicações foram potencialmente aplicadas em segundo plano';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 pode ter sido atualizado para $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Ativar atualizações em segundo-plano';

  @override
  String get backgroundUpdateReqsExplanation => 'As atualizações em segundo plano podem não ser possíveis para todas as aplicações.';

  @override
  String get backgroundUpdateLimitsExplanation => 'O sucesso de uma instalação em segundo-plano só pode ser determinado quando o Updatium é aberto.';

  @override
  String get verifyLatestTag => 'Verifique a \'última\' etiqueta';

  @override
  String get intermediateLinkRegex => 'Filtrar um link \'intermediário\' para visitar';

  @override
  String get filterByLinkText => 'Filtrar links pelo texto do link';

  @override
  String get matchLinksOutsideATags => 'Corresponder ligações fora das etiquetas <a>';

  @override
  String get intermediateLinkNotFound => 'Link intermediário não encontrado';

  @override
  String get intermediateLink => 'Link intermediário';

  @override
  String get exemptFromBackgroundUpdates => 'Isento de atualizações em segundo-plano (se ativadas)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Desative as atualizações em segundo-plano quando não estiver conectado no Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Desativar actualizações em segundo plano quando não estiver a carregar';

  @override
  String get autoSelectHighestVersionCode => 'Auto-selecionar a versão mais recente';

  @override
  String get versionExtractionRegEx => 'Regex de extração de versão';

  @override
  String get trimVersionString => 'Cortar a cadeia de caracteres da versão com RegEx';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Grupo de correspondência a utilizar para \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Grupo correspondente a ser usado no Regex de extração de versão';

  @override
  String get highlightTouchTargets => 'Realçar áreas sensíveis ao toque que são menos óbvias';

  @override
  String get pickExportDir => 'Escolher diretório para exportação';

  @override
  String get autoExportOnChanges => 'Auto-exportar em mudanças';

  @override
  String get includeSettings => 'Incluir configurações';

  @override
  String get filterVersionsByRegEx => 'Filtrar versões por expressão regular';

  @override
  String get trySelectingSuggestedVersionCode => 'Tente selecionar a versão sugerida';

  @override
  String get dontSortReleasesList => 'Reter a ordem de lançamento da API';

  @override
  String get reverseSort => 'Ordenação reversa';

  @override
  String get takeFirstLink => 'Obter primeiro link';

  @override
  String get skipSort => 'Ignorar ordenação';

  @override
  String get debugMenu => 'Menu debug';

  @override
  String get bgTaskStarted => 'Tarefa em segundo-plano iniciada - verifique os logs.';

  @override
  String get runBgCheckNow => 'Execute agora em segundo-plano a verificação de atualizações';

  @override
  String get versionExtractWholePage => 'Aplicar regex de extração de versão à página inteira';

  @override
  String get installing => 'Instalando';

  @override
  String get skipUpdateNotifications => 'Pular notificações de update';

  @override
  String get updatesAvailableNotifChannel => 'Atualizações disponíveis';

  @override
  String get appsUpdatedNotifChannel => 'Aplicações atualizadas';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Aplicações possivelmente atualizadas';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Erro ao procurar por atualizações';

  @override
  String get appsRemovedNotifChannel => 'Aplicações removidas';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Baixando $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Instalação da aplicação concluída';

  @override
  String get checkingForUpdatesNotifChannel => 'Checando por atualizações';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Apenas verificar atualizações de aplicações instaladas e \'Apenas monitorizar\'';

  @override
  String get supportFixedAPKURL => 'Suporte a APK com URLs fixas';

  @override
  String selectX(Object p0) {
    return 'Selecionar $p0';
  }

  @override
  String get parallelDownloads => 'Permitir downloads paralelos';

  @override
  String get useShizuku => 'Utilizar Shizuku ou Sui para instalar';

  @override
  String get shizukuBinderNotFound => 'O Shizuku não está rodando';

  @override
  String get shizukuOld => 'Versão antiga do Shizuku (<11) - atualizar';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku a funcionar no Android < 8.1 com ADB - atualizar o Android ou utilizar o Sui';

  @override
  String get shizukuPretendToBeGooglePlay => 'Definir o Google Play como fonte de instalação (se for utilizado o Shizuku)';

  @override
  String get useSystemFont => 'Usar fonte padrão do sistema';

  @override
  String get useVersionCodeAsOSVersion => 'Usar o versionCode da aplicação como a versão detetada pelo sistema operativo';

  @override
  String get requestHeader => 'Requisitar cabeçalho';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Use o último upload de recursos como data de lançamento';

  @override
  String get defaultPseudoVersioningMethod => 'Método de pseudo-versionamento padrão';

  @override
  String get partialAPKHash => 'Hash APK parcial';

  @override
  String get apkLinkHash => 'Hash de links APK';

  @override
  String get directAPKLink => 'Link direto do APK';

  @override
  String get pseudoVersionInUse => 'Uma pseudo-versão está em uso';

  @override
  String get installed => 'Instalado';

  @override
  String get latest => 'Mais recente';

  @override
  String get invertRegEx => 'Inverter expressão regular';

  @override
  String get note => 'Nota';

  @override
  String selfHostedNote(Object p0) {
    return 'O menu suspenso \"$p0\" pode ser usado para acessar instâncias auto-hospedadas/personalizadas de qualquer fonte.';
  }

  @override
  String get badDownload => 'Não foi possível analisar o APK (transferência incompatível ou parcial)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Partilhar novas aplicações com o AppVerifier (se disponível)';

  @override
  String get appVerifierInstructionToast => 'Partilhe com o AppVerifier e, em seguida, regresse aqui quando estiver pronto.';

  @override
  String get wiki => 'Ajuda/Wiki';

  @override
  String get allowInsecure => 'Permitir pedidos HTTP inseguros';

  @override
  String get stayOneVersionBehind => 'Manter-se uma versão atrás da mais recente';

  @override
  String get useFirstApkOfVersion => 'Seleção automática do primeiro de vários APKs';

  @override
  String get refreshBeforeDownload => 'Atualizar os detalhes da aplicação antes da transferência';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Nome';

  @override
  String get smartname => 'Nome (Smart)';

  @override
  String get sortMethod => 'Método de ordenação';

  @override
  String get welcome => 'Bem-vindo';

  @override
  String get documentationLinksNote => 'A página do Updatium no GitHub com a ligação abaixo contém ligações para vídeos, artigos, discussões e outros recursos que o ajudarão a compreender como utilizar a aplicação.';

  @override
  String get batteryOptimizationNote => 'Note que os downloads em segundo plano podem funcionar de forma mais fiável se desativar as optimizações da bateria do SO para o Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'Falha ao eliminar o ficheiro (tente eliminá-lo manualmente e depois tente novamente): \"$p0\"';
  }

  @override
  String get foregroundService => 'Serviço de primeiro plano Updatium';

  @override
  String get foregroundServiceExplanation => 'Utilizar um serviço em primeiro plano para verificação de actualizações (mais fiável, consome mais energia)';

  @override
  String get fgServiceNotice => 'Esta notificação é necessária para a verificação de actualizações em segundo plano (pode ser ocultada nas definições do SO)';

  @override
  String get excludeSecrets => 'Excluir segredos';

  @override
  String get ghReqPrefix => 'Instância \'sky22333/hubproxy\' para pedidos de GitHub';

  @override
  String get includeZips => 'Incluir ficheiros ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrar APKs dentro do ZIP';

  @override
  String get googleVerificationWarningP1 => 'O Google anunciou que, a partir de 2026/2027, todos os aplicativos em dispositivos Android \"certificados\" exigirão que o desenvolvedor envie detalhes de identidade pessoal diretamente ao Google.\n\nDepois disso, Updatium pode parar de funcionar em dispositivos Android certificados.';

  @override
  String get googleVerificationWarningP2 => 'Vá para https://keepandroidopen.org/ para mais informações.';

  @override
  String get googleVerificationWarningP3 => 'Note que, a curto prazo, pode continuar a ser possível instalar aplicativos \"não verificados\" (não conformes) através de um processo de \"fluxo avançado\" que o Google prometeu implementar após uma ampla retrocesso ao seu anúncio, mas eles não detalharam como isso funcionaria então não é claro se ele realmente preservará as liberdades de usuário de alguma forma prática.\n\nEm qualquer caso, o movimento do Google é um passo significativo para o fim da computação gratuita, de propósito geral para os indivíduos.\n\nOS não certificados, como o GrapheneOS, não devem ser afetados por isso enquanto forem autorizados a continuar a existir.';

  @override
  String get multipleSigners => 'Assinantes Múltiplos';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Remover aplicações?',
      one: 'Remover aplicação?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Muitos pedidos (taxa limitada) - tente novamente em $count minutos',
      one: 'Muitos pedidos (taxa de pedidos limitada) - tente novamente em $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A verificação de atualizações em segundo plano encontrou um erro; uma nova verificação será agendada em $count minutos',
      one: 'A verificação de atualizações em segundo plano encontrou um erro; uma nova verificação será agendada em $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A verificação de atualizações em segundo plano encontrou $count atualizações, o utilizador será notificado caso necessário',
      one: 'A verificação de atualizações em segundo plano encontrou $count atualização, o utilizador será notificado caso necessário',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Aplicações',
      one: '$count Aplicação',
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
      other: '$count dias',
      one: '$count dia',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Foram limpos $count logs (antes = $before, depois = $after)',
      one: 'Foi limpo $count log (antes = $before, depois = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$p0 e mais $count outras aplicações possuem atualizações.',
      one: '$p0 e mais 1 outra aplicação possui atualizações.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$p0 e mais $count outras aplicações foram atualizadas.',
      one: '$p0 e mais 1 outra aplicação foi atualizada.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Falha ao atualizar $p0 e mais $count outras aplicações.',
      one: 'Falha ao atualizar $p0 e mais 1 outra aplicação.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$p0 e mais $count outras aplicações podem ter sido atualizadas.',
      one: '$p0 e mais 1 outra aplicação pode ter sido atualizada.',
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
      other: 'Certificado Hashes',
      one: 'Hash do Certificado',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Aviso de Segurança e Legal';

  @override
  String get license => 'Licença';

  @override
  String get licenseText => 'Esta aplicação é distribuída sob a Licença GPL v3.';

  @override
  String get disclaimer => 'Isenção de responsabilidade';

  @override
  String get disclaimerText => 'Esta aplicação não distribui, hospeda ou verifica nenhuma das aplicações externas. O utilizador assume a responsabilidade total pela segurança e legalidade de qualquer software instalado através desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para descarregar Updatium - é altamente desaconselhado descarregá-lo de outros locais, pois o descarregar de fontes não oficiais não é seguro.';

  @override
  String get privacy => 'Privacidade';

  @override
  String get privacyText => 'Esta aplicação é focada na privacidade e não recolhe dados pessoais.';

  @override
  String get acceptAndContinue => 'Aceitar e continuar';

  @override
  String get decline => 'Recusar';
}

/// The translations for Portuguese, as used in Brazil (`pt_BR`).
class AppLocalizationsPtBr extends AppLocalizationsPt {
  AppLocalizationsPtBr(): super('pt_BR');

  @override
  String invalidURLForSource(Object p0) {
    return 'Não é uma URL de app válida de $p0';
  }

  @override
  String get noReleaseFound => 'Não foi possível encontrar um lançamento adequado';

  @override
  String get noVersionFound => 'Não foi possível determinar a versão do lançamento';

  @override
  String get urlMatchesNoSource => 'A URL não corresponde com nenhuma fonte conhecida';

  @override
  String get cantInstallOlderVersion => 'Não é possível instalar uma versão mais antiga de um app';

  @override
  String get appIdMismatch => 'O ID do pacote baixado não corresponde ao existente';

  @override
  String get functionNotImplemented => 'Essa classe não implementou esse recurso ainda';

  @override
  String get placeholder => 'Espaço reservado';

  @override
  String get someErrors => 'Ocorreram alguns erros';

  @override
  String get unexpectedError => 'Erro inesperado';

  @override
  String get ok => 'Ok';

  @override
  String get and => 'e';

  @override
  String get githubPATLabel => 'Token de acesso pessoal do GitHub (aumenta o limite de taxa)';

  @override
  String get includePrereleases => 'Incluir pré-lançamentos';

  @override
  String get fallbackToOlderReleases => 'Recorrer à lançamentos mais antigos';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtrar títulos de lançamentos por expressão regular';

  @override
  String get invalidRegEx => 'Expressão regular inválida';

  @override
  String get noDescription => 'Sem descrição';

  @override
  String get cancel => 'Cancelar';

  @override
  String get continue => 'Continuar';

  @override
  String get requiredInBrackets => '(obrigatório)';

  @override
  String get dropdownNoOptsError => 'ERRO: O MENU DEVE TER PELO MENOS UMA OPÇÃO';

  @override
  String get color => 'Cor';

  @override
  String get standard => 'Padrão';

  @override
  String get custom => 'Personalizado';

  @override
  String get useMaterialYou => 'Usar cores Material You';

  @override
  String get githubStarredRepos => 'Repositórios com estrela do GitHub';

  @override
  String get uname => 'Nome de usuário';

  @override
  String get wrongArgNum => 'Número errado de argumentos fornecidos';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 é somente de rastreio';
  }

  @override
  String get source => 'Fonte';

  @override
  String get app => 'Aplicativo';

  @override
  String get appsFromSourceAreTrackOnly => 'Apps desta fonte são somente para rastreamento.';

  @override
  String get youPickedTrackOnly => 'Você selecionou a opção de somente rastreamento.';

  @override
  String get trackOnlyAppDescription => 'As atualizações do app serão rastreadas, mas o Updatium não baixará ou instalará elas.';

  @override
  String get cancelled => 'Cancelado';

  @override
  String get appAlreadyAdded => 'O app já foi adicionado';

  @override
  String get alreadyUpToDateQuestion => 'O app já está atualizado?';

  @override
  String get addApp => 'Adicionar app';

  @override
  String get appSourceURL => 'URL da fonte do app';

  @override
  String get error => 'Erro';

  @override
  String get add => 'Adicionar';

  @override
  String get searchSomeSourcesLabel => 'Pesquisar (somente algumas fontes)';

  @override
  String get search => 'Pesquisar';

  @override
  String additionalOptsFor(Object p0) {
    return 'Opções adicionais de $p0';
  }

  @override
  String get supportedSources => 'Fontes suportadas';

  @override
  String get trackOnlyInBrackets => '(somente rastreamento)';

  @override
  String get searchableInBrackets => '(pesquisável)';

  @override
  String get appsString => 'Aplicativos';

  @override
  String get noApps => 'Nenhum app';

  @override
  String get noAppsForFilter => 'Nenhum app pro filtro';

  @override
  String byX(Object p0) {
    return 'Por $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Progresso: $p0%';
  }

  @override
  String get pleaseWait => 'Por favor aguarde';

  @override
  String get updateAvailable => 'Atualização disponível';

  @override
  String get notInstalled => 'Não instalado';

  @override
  String get pseudoVersion => 'pseudo-versão';

  @override
  String get selectAll => 'Selecionar tudo';

  @override
  String deselectX(Object p0) {
    return 'Desselecionar $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 será removido do Updatium mas continuará instalado no dispositivo.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Remover os apps selecionados?';

  @override
  String get removeSelectedApps => 'Remover apps selecionados';

  @override
  String updateX(Object p0) {
    return 'Atualizar $p0';
  }

  @override
  String installX(Object p0) {
    return 'Instalar $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Marcar $p0\n(somente rastreamento)\ncomo atualizado';
  }

  @override
  String changeX(Object p0) {
    return 'Alterar $p0';
  }

  @override
  String get installUpdateApps => 'Instalar/atualizar apps';

  @override
  String get installUpdateSelectedApps => 'Instalar/atualizar apps selecionados';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Marcar os $p0 apps selecionados como atualizados?';
  }

  @override
  String get no => 'Não';

  @override
  String get yes => 'Sim';

  @override
  String get markSelectedAppsUpdated => 'Marcar apps selecionados como atualizados';

  @override
  String get pinToTop => 'Fixar ao topo';

  @override
  String get unpinFromTop => 'Desfixar do topo';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Redefinir o estado de instalação dos apps selecionados?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Os estados de instalação dos apps selecionados serão redefinidos.\n\nIsso pode ajudar quando a versão exibida no Updatium está incorreta devido a atualizações malsucedidas ou outros problemas.';

  @override
  String get customLinkMessage => 'Esses links funcionarão em dispositivos com o Updatium instalado';

  @override
  String get shareAppConfigLinks => 'Compartilhar configuração do app como um link HTML';

  @override
  String get shareSelectedAppURLs => 'Compartilhar as URLs dos apps selecionados';

  @override
  String get resetInstallStatus => 'Redefinir estado de instalação';

  @override
  String get more => 'Mais';

  @override
  String get removeOutdatedFilter => 'Remover filtro de apps desatualizados';

  @override
  String get showOutdatedOnly => 'Mostrar somente apps desatualizados';

  @override
  String get filter => 'Filtro';

  @override
  String get filterApps => 'Filtrar apps';

  @override
  String get appName => 'Nome do app';

  @override
  String get author => 'Autor';

  @override
  String get upToDateApps => 'Apps atualizados';

  @override
  String get nonInstalledApps => 'Apps não instalados';

  @override
  String get importExport => 'Importar/Exportar';

  @override
  String get settings => 'Configurações';

  @override
  String exportedTo(Object p0) {
    return 'Exportado para $p0';
  }

  @override
  String get updatiumExport => 'Exportação do Updatium';

  @override
  String get invalidInput => 'Entrada inválida';

  @override
  String importedX(Object p0) {
    return '$p0 importado(s)';
  }

  @override
  String get updatiumImport => 'Importação do Updatium';

  @override
  String get importFromURLList => 'Importar da lista de URLs';

  @override
  String get searchQuery => 'Consulta de pesquisa';

  @override
  String get appURLList => 'Lista de URLs dos apps';

  @override
  String get line => 'Linha';

  @override
  String searchX(Object p0) {
    return 'Pesquisar $p0';
  }

  @override
  String get noResults => 'Nenhum resultado encontrado';

  @override
  String importX(Object p0) {
    return 'Importar $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Os apps importados podem ser exibidos incorretamente como se não estivessem instalados.\nPara resolver isso, reinstale eles pelo Updatium.\nIsso não afetará os dados dos apps.\n\nIsso somente afeta a URL e os métodos de importação de terceiros.';

  @override
  String get importErrors => 'Erros de importação';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 de $p1 foram importados.';
  }

  @override
  String get followingURLsHadErrors => 'As seguintes URLs tiveram erros:';

  @override
  String get selectURL => 'Selecionar URL';

  @override
  String get selectURLs => 'Selecionar URLs';

  @override
  String get pick => 'Escolher';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Escuro';

  @override
  String get light => 'Claro';

  @override
  String get followSystem => 'Seguir o sistema';

  @override
  String get followSystemThemeExplanation => 'Só é possível seguir o tema do sistema ao usar aplicativos de terceiros';

  @override
  String get useBlackTheme => 'Usar o tema escuro de preto profundo';

  @override
  String get appSortBy => 'Ordenar apps por';

  @override
  String get authorName => 'Autor/nome';

  @override
  String get nameAuthor => 'Nome/autor';

  @override
  String get asAdded => 'Como adicionados';

  @override
  String get appSortOrder => 'Ordem dos apps';

  @override
  String get ascending => 'Crescente';

  @override
  String get descending => 'Decrescente';

  @override
  String get bgUpdateCheckInterval => 'Intervalo de busca por atualizações em segundo plano';

  @override
  String get neverManualOnly => 'Nunca - somente manualmente';

  @override
  String get appearance => 'Aparência';

  @override
  String get pinUpdates => 'Fixar atualizações no topo da tela de apps';

  @override
  String get updates => 'Atualizações';

  @override
  String get sourceSpecific => 'Específico à fonte';

  @override
  String get appSource => 'Fonte do app';

  @override
  String get noLogs => 'Nenhum registro';

  @override
  String get appLogs => 'Registros do app';

  @override
  String get close => 'Fechar';

  @override
  String get share => 'Compartilhar';

  @override
  String get appNotFound => 'O app não foi encontrado';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-export';

  @override
  String get pickAnAPK => 'Selecione um APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 tem mais de um pacote:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Seu dispositivo suporta a arquitetura de CPU $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Seu dispositivo suporta as seguintes arquiteturas de CPU:';

  @override
  String get warning => 'Alerta';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'A fonte do app é \'$p0\' mas o pacote de lançamento vem de \'$p1\'. Continuar mesmo assim?';
  }

  @override
  String get updatesAvailable => 'Atualizações disponíveis';

  @override
  String get updatesAvailableNotifDescription => 'Notifica o usuário que atualizações estão disponíveis para um ou mais apps rastreados pelo Updatium';

  @override
  String get noNewUpdates => 'Nenhuma atualização disponível.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 tem uma atualização.';
  }

  @override
  String get appsUpdated => 'Apps atualizados';

  @override
  String get appsNotUpdated => 'Falhou ao atualizar os aplicativos';

  @override
  String get appsUpdatedNotifDescription => 'Notifica o usuário que atualizações de um ou mais apps foram aplicadas em segundo plano';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 foi atualizado para a versão $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Falha ao atualizar $p0 para a versão $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Ocorreu um erro ao buscar atualizações';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Uma notificação que mostra quando a busca de atualizações em segundo plano falha';

  @override
  String get appsRemoved => 'Apps removidos';

  @override
  String get appsRemovedNotifDescription => 'Notifica o usuário que um ou mais apps foram removidos devido a erros ao carregá-los';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 foi removido devido ao erro: $p1';
  }

  @override
  String get completeAppInstallation => 'Concluir instalação do app';

  @override
  String get updatiumMustBeOpenToInstallApps => 'O Updatium precisa estar aberto para instalar apps';

  @override
  String get completeAppInstallationNotifDescription => 'Pede pro usuário voltar ao Updatium para concluir a instalação de um app';

  @override
  String get checkingForUpdates => 'Buscando atualizações';

  @override
  String get checkingForUpdatesNotifDescription => 'Notificação transitória que aparece ao buscar atualizações';

  @override
  String get pleaseAllowInstallPerm => 'Permita que o Updatium instale apps';

  @override
  String get trackOnly => 'Somente rastreamento';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Erro $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Correção de versão desativada (o plugin parece não funcionar)';

  @override
  String get unknown => 'Desconhecido';

  @override
  String get none => 'Nenhum';

  @override
  String get all => 'Todos';

  @override
  String get never => 'Nunca';

  @override
  String latestVersionX(Object p0) {
    return 'Mais recente: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Instalado: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Última busca por atualizações: $p0';
  }

  @override
  String get remove => 'Remover';

  @override
  String get yesMarkUpdated => 'Sim, marcar como atualizado';

  @override
  String get fdroid => 'Oficial do F-Droid';

  @override
  String get appIdOrName => 'ID do app ou nome';

  @override
  String get appId => 'ID do app';

  @override
  String get appWithIdOrNameNotFound => 'Nenhum app foi encontrado com aquele ID ou nome';

  @override
  String get reposHaveMultipleApps => 'Repositórios podem conter vários apps';

  @override
  String get fdroidThirdPartyRepo => 'Repositório de terceiros do F-Droid';

  @override
  String get install => 'Instalar';

  @override
  String get markInstalled => 'Marcar como instalado';

  @override
  String get update => 'Atualizar';

  @override
  String get updated => 'Atualizado';

  @override
  String get markUpdated => 'Marcar como atualizado';

  @override
  String get additionalOptions => 'Opções adicionais';

  @override
  String get disableVersionDetection => 'Desativar detecção de versão';

  @override
  String get noVersionDetectionExplanation => 'Essa opção só seve ser usada para apps aonde a detecção de versão não funciona corretamente.';

  @override
  String downloadingX(Object p0) {
    return 'Baixando $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Baixar $p0';
  }

  @override
  String downloadedX(Object p0) {
    return '$p0 foi baixado';
  }

  @override
  String get releaseAsset => 'Item de lançamento';

  @override
  String get downloadNotifDescription => 'Notifica o usuário do progresso ao baixar um app';

  @override
  String get noAPKFound => 'Nenhum APK encontrado';

  @override
  String get noVersionDetection => 'Sem detecção de versão';

  @override
  String get categorize => 'Categorizar';

  @override
  String get categories => 'Categorias';

  @override
  String get category => 'Categoria';

  @override
  String get noCategory => 'Nenhuma categoria';

  @override
  String get noCategories => 'Nenhuma categoria';

  @override
  String get deleteCategoriesQuestion => 'Excluir categorias?';

  @override
  String get categoryDeleteWarning => 'Todos os apps em categorias excluídas ficarão sem categoria.';

  @override
  String get addCategory => 'Adicionar categoria';

  @override
  String get label => 'Rótulo';

  @override
  String get language => 'Idioma';

  @override
  String get copiedToClipboard => 'Copiado para a área de transferência';

  @override
  String get storagePermissionDenied => 'Permissão de armazenamento negada';

  @override
  String get selectedCategorizeWarning => 'Isso substituirá a configuração de categoria existente dos apps selecionados.';

  @override
  String get filterAPKsByRegEx => 'Filtrar APKs por expressão regular';

  @override
  String get removeFromUpdatium => 'Remover do Updatium';

  @override
  String get uninstallFromDevice => 'Desinstalar do dispositivo';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Funciona somente em apps com a detecção de versão desativada.';

  @override
  String get releaseDateAsVersion => 'Usar data de lançamento como número da versão';

  @override
  String get releaseTitleAsVersion => 'Usar título do lançamento como número da versão';

  @override
  String get releaseDateAsVersionExplanation => 'Essa opção só deve ser usada para apps quais a detecção de versão não funciona corretamente, mas uma data de lançamento está disponível.';

  @override
  String get changes => 'Alterações';

  @override
  String get releaseDate => 'Data de lançamento';

  @override
  String get importFromURLsInFile => 'Importar das URLs em arquivo (como OPML)';

  @override
  String get versionDetectionExplanation => 'Combinar o número da versão com a versão detectada pelo sistema';

  @override
  String get versionDetection => 'Detecção de versão';

  @override
  String get standardVersionDetection => 'Detecção de versão padrão';

  @override
  String get groupByCategory => 'Agrupar por categoria';

  @override
  String get listView => 'Visualização em lista';

  @override
  String get gridView => 'Visualização em grade';

  @override
  String get autoApkFilterByArch => 'Tentar filtrar APKs pela arquitetura da CPU quando possível';

  @override
  String get autoLinkFilterByArch => 'Tentar filtrar links pela arquitetura da CPU quando possível';

  @override
  String get overrideSource => 'Sobrescrever fonte';

  @override
  String get dontShowAgain => 'Não mostrar isso novamente';

  @override
  String get dontShowTrackOnlyWarnings => 'Não mostrar alertas de \"somente rastreamento\"';

  @override
  String get dontShowAPKOriginWarnings => 'Não mostrar alertas de origem dos APKs';

  @override
  String get moveNonInstalledAppsToBottom => 'Mover apps não instalados ao final da tela de apps';

  @override
  String get hideNonInstalledApps => 'Ocultar apps não instalados';

  @override
  String get gitlabPATLabel => 'Token de acesso pessoal do GitLab';

  @override
  String get about => 'Sobre';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0 precisa de credenciais adicionais (nas Configurações)';
  }

  @override
  String get checkOnStart => 'Buscar atualizações ao abrir o app';

  @override
  String get tryInferAppIdFromCode => 'Tentar inferir o ID do app pelo código fonte';

  @override
  String get removeOnExternalUninstall => 'Remover automaticamente apps desinstalados externamente';

  @override
  String get pickHighestVersionCode => 'Selecionar APK de versão mais alta automaticamente';

  @override
  String get checkUpdateOnDetailPage => 'Buscar atualizações ao abrir a tela de detalhes de um app';

  @override
  String get disablePageTransitions => 'Desativar animações de transição de tela';

  @override
  String get reversePageTransitions => 'Inverter animações de transição de tela';

  @override
  String get minStarCount => 'Número de estrelas mínimo';

  @override
  String get addInfoBelow => 'Adicione essa informação abaixo.';

  @override
  String get addInfoInSettings => 'Adicione essa informação nas Configurações.';

  @override
  String get githubSourceNote => 'O limite de taxa do GitHub pode ser evitado ao usar uma chave de API.';

  @override
  String get sortByLastLinkSegment => 'Ordenar somente pelo ultimo segmento do link';

  @override
  String get filterReleaseNotesByRegEx => 'Filtrar notas de lançamento por expressão regular';

  @override
  String get customLinkFilterRegex => 'Filtro de link de APK personalizado por expressão regular (padrão \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Tentativas de atualização de apps';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Notifica o usuário que atualizações de um ou mais apps podem ter sido aplicadas em segundo plano';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 pode ter sido atualizado para a versão $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Ativar atualizações em segundo plano';

  @override
  String get backgroundUpdateReqsExplanation => 'Atualizações em segundo plano podem não funcionar com todos os apps.';

  @override
  String get backgroundUpdateLimitsExplanation => 'O sucesso de uma instalação em segundo plano só pode ser determinada ao abrir o Updatium.';

  @override
  String get verifyLatestTag => 'Verificar a tag \'mais recente\'';

  @override
  String get intermediateLinkRegex => 'Filtrar por um link \'intermediário\' para visitar';

  @override
  String get filterByLinkText => 'Filtrar links por texto do link';

  @override
  String get matchLinksOutsideATags => 'Corresponder links fora das tags <a>';

  @override
  String get intermediateLinkNotFound => 'Link intermediário não encontrado';

  @override
  String get intermediateLink => 'Link intermediário';

  @override
  String get exemptFromBackgroundUpdates => 'Isento de atualizações em segundo plano (caso ativadas)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Desativar atualizações em segundo plano fora do Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Desativar atualizações em segundo plano fora do carregador';

  @override
  String get autoSelectHighestVersionCode => 'Selecionar automaticamente APK com o código de versão mais alto';

  @override
  String get versionExtractionRegEx => 'ExReg de extração do número da versão';

  @override
  String get trimVersionString => 'Cortar número da versal com ExReg';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Corresponder grupo para o uso em \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Corresponder grupo para o uso para a extração do número da versão por ExReg';

  @override
  String get highlightTouchTargets => 'Acentuar alvos de toque menos óbvios';

  @override
  String get pickExportDir => 'Selecionar pasta de exportação';

  @override
  String get autoExportOnChanges => 'Exportar automaticamente ao ocorrer alterações';

  @override
  String get includeSettings => 'Incluir configurações';

  @override
  String get filterVersionsByRegEx => 'Filtrar versões por expressão regular';

  @override
  String get trySelectingSuggestedVersionCode => 'Tente selecionar o APK com o código de versão sugerido';

  @override
  String get dontSortReleasesList => 'Manter ordem de lançamento da API';

  @override
  String get reverseSort => 'Ordem inversa';

  @override
  String get takeFirstLink => 'Usar o primeiro link';

  @override
  String get skipSort => 'Pular ordenação';

  @override
  String get debugMenu => 'Menu de depuração';

  @override
  String get bgTaskStarted => 'Tarefa em segundo plano iniada - verifique os registros.';

  @override
  String get runBgCheckNow => 'Executar busca por atualizações em segundo plano agora';

  @override
  String get versionExtractWholePage => 'Aplicar ExReg de extração de número de versão à página inteira';

  @override
  String get installing => 'Instalando';

  @override
  String get skipUpdateNotifications => 'Pular notificações de atualização';

  @override
  String get updatesAvailableNotifChannel => 'Atualizações disponíveis';

  @override
  String get appsUpdatedNotifChannel => 'Apps atualizados';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Tentativas de atualização de apps';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Erro ao buscar atualizações';

  @override
  String get appsRemovedNotifChannel => 'Apps removidos';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Baixando $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Concluir instalação do app';

  @override
  String get checkingForUpdatesNotifChannel => 'Buscando atualizações';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Buscar atualizações somente para apps instalados e de somente rastreamento';

  @override
  String get supportFixedAPKURL => 'Suportar URLs de APK fixas';

  @override
  String selectX(Object p0) {
    return 'Selecionar $p0';
  }

  @override
  String get parallelDownloads => 'Permitir downloads em paralelo';

  @override
  String get useShizuku => 'Usar Shizuku ou Sui para instalação';

  @override
  String get shizukuBinderNotFound => 'Serviço Shizuku não está em execução';

  @override
  String get shizukuOld => 'Versão do Shizuku antiga (<11) - atualize';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku sendo executado no Android < 8.1 com ADB - atualize o Android ou use o Sui';

  @override
  String get shizukuPretendToBeGooglePlay => 'Definir Google Play como a fonte de instalação (se o Shizuku é usado)';

  @override
  String get useSystemFont => 'Usar a fonte do sistema';

  @override
  String get useVersionCodeAsOSVersion => 'Usar código de versão do app como a versão detectada pelo sistema';

  @override
  String get requestHeader => 'Cabeçalho da solicitação';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Usar o envio de item mais recente como a data de lançamento';

  @override
  String get defaultPseudoVersioningMethod => 'Método de pseudo-versão padrão';

  @override
  String get partialAPKHash => 'Hash do APK parcial';

  @override
  String get apkLinkHash => 'Hash do link do APK';

  @override
  String get directAPKLink => 'Link direto ao APK';

  @override
  String get pseudoVersionInUse => 'Uma pseudo-versão está em uso';

  @override
  String get installed => 'Instalado';

  @override
  String get latest => 'Mais recente';

  @override
  String get invertRegEx => 'Inverter expressão regular';

  @override
  String get note => 'Observação';

  @override
  String selfHostedNote(Object p0) {
    return 'O menu de opções \"$p0\" pode ser usado para alcançar instâncias hospedadas-por-você/personalizadas de qualquer fonte.';
  }

  @override
  String get badDownload => 'O APK não pode ser interpretado (incompatível ou baixado parcialmente)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Compartilhar apps novos com o AppVerifier (se disponível)';

  @override
  String get appVerifierInstructionToast => 'Compartilhe com o AppVerifier, e volte aqui ao estar pronto.';

  @override
  String get wiki => 'Ajuda/Wiki';

  @override
  String get allowInsecure => 'Permitir solicitações de HTTP inseguras';

  @override
  String get stayOneVersionBehind => 'Ficar uma versão antes da mais recente';

  @override
  String get useFirstApkOfVersion => 'Seleção automática do primeiro de vários APKs';

  @override
  String get refreshBeforeDownload => 'Atualizar detalhes do app antes de baixar';

  @override
  String get tencentAppStore => 'Loja de Apps da Tencent';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'Vivo App Store (CN)';

  @override
  String get name => 'Nome';

  @override
  String get smartname => 'Nome (inteligente)';

  @override
  String get sortMethod => 'Método de ordenação';

  @override
  String get welcome => 'Boas vindas';

  @override
  String get documentationLinksNote => 'A página do Updatium no GitHub visível abaixo contém links de vídeos, artigos, discussões, e outros recursos que podem te ajudar ao usar o app.';

  @override
  String get batteryOptimizationNote => 'Observe que os downloads em segundo plano podem funcionar de forma mais confiável se você desativar as otimizações de bateria do sistema operacional para o Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'Falha ao excluir o arquivo (tente excluí-lo manualmente e tente novamente): \"$p0\"';
  }

  @override
  String get foregroundService => 'Serviço de primeiro plano do Updatium';

  @override
  String get foregroundServiceExplanation => 'Usar um serviço em primeiro plano para verificação de atualizações (mais confiável, consome mais energia)';

  @override
  String get fgServiceNotice => 'Essa notificação é necessária para a verificação de atualizações em segundo plano (ela pode ser ocultada nas configurações do sistema operacional)';

  @override
  String get excludeSecrets => 'Excluir segredos';

  @override
  String get ghReqPrefix => 'Instância \"sky22333/hubproxy\" para solicitações do GitHub';

  @override
  String get includeZips => 'Incluir arquivos ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrar APKs dentro do ZIP';

  @override
  String get googleVerificationWarningP1 => 'O Google anunciou que, a partir de 2026/2027, todos os aplicativos em dispositivos Android \"certificados\" exigirão que o desenvolvedor envie detalhes de identidade pessoal diretamente ao Google.\n\nDepois disso, Updatium pode parar de funcionar em dispositivos Android certificados.';

  @override
  String get googleVerificationWarningP2 => 'Vá para https://keepandroidopen.org/ para mais informações.';

  @override
  String get googleVerificationWarningP3 => 'Note que, a curto prazo, pode continuar a ser possível instalar aplicativos \"não verificados\" (não conformes) através de um processo de \"fluxo avançado\" que o Google prometeu implementar após uma ampla retrocesso ao seu anúncio, mas eles não detalharam como isso funcionaria então não é claro se ele realmente preservará as liberdades de usuário de alguma forma prática.\n\nEm qualquer caso, o movimento do Google é um passo significativo para o fim da computação gratuita, de propósito geral para os indivíduos.\n\nOS não certificados, como o GrapheneOS, não devem ser afetados por isso enquanto forem autorizados a continuar a existir.';

  @override
  String get multipleSigners => 'Assinantes Múltiplos';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Remover apps?',
      one: 'Remover app?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Muitas solicitações (limitado) - tente novamente em $count minutos',
      one: 'Muitas solicitações (limitado) - tente novamente em $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'A busca de atualizações em segundo plano encontrou um erro; uma nova tentativa será agendada em $count minutos',
      one: 'A busca de atualizações em segundo plano encontrou um erro; uma nova tentativa será agendada em $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Verificação de atualização do BG encontrou atualizações $count - notificará o usuário se necessário',
      one: 'Verificação da atualização do BG encontrada $count atualização - notificará o usuário se necessário',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '$count app',
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
      other: '$count dias',
      one: '$count dia',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Limpou $count registros (antes = $before, depois = $after)',
      one: 'Limpou $count registro (antes = $before, depois = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$p0 e mais $count apps têm atualizações.',
      one: '$p0 e mais 1 app têm atualizações.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$p0 e mais $count apps foram atualizados.',
      one: '$p0 e mais 1 app foi atualizado.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Falha ao atualizar $p0 e mais $count apps.',
      one: 'Falha ao atualizar $p0 e mais 1 app.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(Object p0, num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$p0 e mais $count apps podem ter sido atualizados.',
      one: '$p0 e mais 1 app pode ter sido atualizado.',
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
      other: 'Certificado Hashes',
      one: 'Hash do Certificado',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Aviso de Segurança e Legal';

  @override
  String get license => 'Licença';

  @override
  String get licenseText => 'Este aplicativo é distribuído sob a Licença GPL v3.';

  @override
  String get disclaimer => 'Isenção de responsabilidade';

  @override
  String get disclaimerText => 'Este aplicativo não distribui, hospeda ou verifica nenhum dos aplicativos externos. O usuário assume a responsabilidade total pela segurança e legalidade de qualquer software instalado através desta ferramenta.\n\nhttps://github.com/omeritzics/Updatium é o único lugar oficial para baixar Updatium - é altamente desaconselhável baixá-lo de outros lugares pois o download de fontes não oficiais não é seguro.';

  @override
  String get privacy => 'Privacidade';

  @override
  String get privacyText => 'Este aplicativo é focado em privacidade e não coleta dados pessoais.';

  @override
  String get acceptAndContinue => 'Aceitar e continuar';

  @override
  String get decline => 'Recusar';
}
