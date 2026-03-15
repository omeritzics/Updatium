/// Generated localization file for Updatium.
///
/// This file is generated automatically. Do not edit manually.


import 'app_localizations.dart';

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String invalidURLForSource(String appType) {
    return '无效的 $appType URL';
  }

  @override
  String get noReleaseFound => '找不到合适的发行版';

  @override
  String get noVersionFound => '无法确定发行版本号';

  @override
  String get urlMatchesNoSource => 'URL 与已知的来源不符';

  @override
  String get cantInstallOlderVersion => '无法安装旧版本的应用';

  @override
  String get appIdMismatch => '所下载 APK 的应用 ID 与现有应用不一致';

  @override
  String get functionNotImplemented => '该类未实现此功能';

  @override
  String get placeholder => '占位符';

  @override
  String get someErrors => '出现了一些错误';

  @override
  String get unexpectedError => '意外错误';

  @override
  String get ok => '好的';

  @override
  String get and => '和';

  @override
  String get githubPATLabel => 'GitHub 个人访问令牌（提升 API 请求限额）';

  @override
  String get includePrereleases => '包含预发行版';

  @override
  String get fallbackToOlderReleases => '将过往的发行版作为备选';

  @override
  String get filterReleaseTitlesByRegEx => '筛选发行标题的正则表达式';

  @override
  String get invalidRegEx => '无效的正则表达式';

  @override
  String get noDescription => '无描述';

  @override
  String get cancel => '取消';

  @override
  String get continue => '继续';

  @override
  String get requiredInBrackets => '（必填）';

  @override
  String get dropdownNoOptsError => '错误：下拉菜单必须包含至少一个选项';

  @override
  String get color => '配色';

  @override
  String get standard => '标准';

  @override
  String get custom => '自定义';

  @override
  String get useMaterialYou => '使用 Material You 配色';

  @override
  String get githubStarredRepos => '已星标的 GitHub 仓库';

  @override
  String get uname => '用户名';

  @override
  String get wrongArgNum => '参数数量错误';

  @override
  String xIsTrackOnly(String appName) {
    return '$appName 仅追踪';
  }

  @override
  String get source => '来源';

  @override
  String get app => '应用';

  @override
  String get appsFromSourceAreTrackOnly => '来自此来源的应用为\'仅追踪\'。';

  @override
  String get youPickedTrackOnly => '您已选择\'仅追踪\'选项。';

  @override
  String get trackOnlyAppDescription => '应用将被追踪更新，但 Updatium 将无法下载或安装它。';

  @override
  String get cancelled => '已取消';

  @override
  String get appAlreadyAdded => '应用已添加';

  @override
  String get alreadyUpToDateQuestion => '应用已是最新？';

  @override
  String get addApp => '添加应用';

  @override
  String get appSourceURL => '应用来源 URL';

  @override
  String get error => '错误';

  @override
  String get add => '添加';

  @override
  String get searchSomeSourcesLabel => '搜索（仅限部分来源）';

  @override
  String get search => '搜索';

  @override
  String additionalOptsFor(String appName) {
    return '$appName 的附加选项';
  }

  @override
  String get supportedSources => '支持的来源';

  @override
  String get trackOnlyInBrackets => '（仅追踪）';

  @override
  String get searchableInBrackets => '（可搜索）';

  @override
  String get appsString => '应用';

  @override
  String get noApps => '欢迎！';

  @override
  String get noAppsSubtext => '您可以点击下方的\'添加应用\'来添加您的第一个应用。';

  @override
  String get noAppsForFilter => '没有符合筛选条件的应用';

  @override
  String byX(String author) {
    return '作者：$author';
  }

  @override
  String percentProgress(String progress) {
    return '进度：$progress%';
  }

  @override
  String get pleaseWait => '请稍候';

  @override
  String get updateAvailable => '有可用更新';

  @override
  String get notInstalled => '未安装';

  @override
  String get pseudoVersion => '伪版本';

  @override
  String get selectAll => '全选';

  @override
  String deselectX(String count) {
    return '取消选择 $count';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String appName) {
    return '$appName 将从 Updatium 中移除但仍保留在设备上。';
  }

  @override
  String get removeSelectedAppsQuestion => '移除选中的应用？';

  @override
  String get removeSelectedApps => '移除选中的应用';

  @override
  String updateX(String appName) {
    return '更新 $appName';
  }

  @override
  String installX(String appName) {
    return '安装 $appName';
  }

  @override
  String markXTrackOnlyAsUpdated(String appName) {
    return '将 $appName\n（仅追踪）\n标记为已更新';
  }

  @override
  String changeX(String appName) {
    return '更改 $appName';
  }

  @override
  String get installUpdateApps => '安装/更新应用';

  @override
  String get installUpdateSelectedApps => '安装/更新选中的应用';

  @override
  String markXSelectedAppsAsUpdated(String count) {
    return '将 $count 个选中的应用标记为已更新？';
  }

  @override
  String get no => '否';

  @override
  String get yes => '是';

  @override
  String get markSelectedAppsUpdated => '将选中的应用标记为已更新';

  @override
  String get pinToTop => '固定到顶部';

  @override
  String get unpinFromTop => '从顶部取消固定';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => '重置选中应用的安装状态？';

  @override
  String get installStatusOfXWillBeResetExplanation => '任何选中应用的安装状态将被重置。\n\n当 Updatium 中显示的应用版本因更新失败或其他问题而不正确时，这可以帮助解决。';

  @override
  String get customLinkMessage => '这些链接在安装了 Updatium 的设备上有效';

  @override
  String get shareAppConfigLinks => '以 HTML 链接形式分享应用配置';

  @override
  String get shareSelectedAppURLs => '分享选中的应用 URL';

  @override
  String get resetInstallStatus => '重置安装状态';

  @override
  String get more => '更多';

  @override
  String get removeOutdatedFilter => '移除过期应用筛选';

  @override
  String get showOutdatedOnly => '仅显示过期应用';

  @override
  String get filter => '筛选';

  @override
  String get filterApps => '筛选应用';

  @override
  String get appName => '应用名称';

  @override
  String get author => '作者';

  @override
  String get upToDateApps => '最新应用';

  @override
  String get nonInstalledApps => '未安装应用';

  @override
  String get importExport => '导入/导出';

  @override
  String get settings => '设置';

  @override
  String exportedTo(String location) {
    return '已导出到 $location';
  }

  @override
  String get updatiumExport => 'Updatium 导出';

  @override
  String get failedToExport => '导出失败';

  @override
  String get exportAlreadyInProgress => '导出已在进行中';

  @override
  String get failedToCreateExportFile => '创建导出文件失败';

  @override
  String get exportDirNotAccessible => '导出目录不可访问';

  @override
  String get invalidInput => '无效输入';

  @override
  String importedX(String count) {
    return '已导入 $count';
  }

  @override
  String get updatiumImport => 'Updatium 导入';

  @override
  String get importFromURLList => '从 URL 列表导入';

  @override
  String get searchQuery => '搜索查询';

  @override
  String get appURLList => '应用 URL 列表';

  @override
  String get line => '行';

  @override
  String searchX(String query) {
    return '搜索 $query';
  }

  @override
  String get noResults => '未找到结果';

  @override
  String importX(String count) {
    return '导入 $count';
  }

  @override
  String get importedAppsIdDisclaimer => '导入的应用可能错误显示为\'未安装\'。\n要解决此问题，请通过 Updatium 重新安装它们。\n这不应影响应用数据。\n\n仅影响 URL 和第三方导入方法。';

  @override
  String get importErrors => '导入错误';

  @override
  String importedXOfYApps(String imported, String total) {
    return '已导入 $imported 个应用，共 $total 个。';
  }

  @override
  String get followingURLsHadErrors => '以下 URL 有错误：';

  @override
  String get selectURL => '选择 URL';

  @override
  String get selectURLs => '选择 URL';

  @override
  String get pick => '选择';

  @override
  String get theme => '主题';

  @override
  String get dark => '深色';

  @override
  String get light => '浅色';

  @override
  String get followSystem => '跟随系统';

  @override
  String get followSystemThemeExplanation => '跟随系统主题只能通过第三方应用实现';

  @override
  String get useBlackTheme => '使用纯黑色深色主题';

  @override
  String get appSortBy => '应用排序方式';

  @override
  String get authorName => '作者/名称';

  @override
  String get nameAuthor => '名称/作者';

  @override
  String get asAdded => '按添加顺序';

  @override
  String get appSortOrder => '应用排序顺序';

  @override
  String get ascending => '升序';

  @override
  String get descending => '降序';

  @override
  String get bgUpdateCheckInterval => '后台更新检查间隔';

  @override
  String get neverManualOnly => '从不 - 仅手动';

  @override
  String get appearance => '外观';

  @override
  String get pinUpdates => '将更新固定到应用视图顶部';

  @override
  String get updates => '更新';

  @override
  String get sourceSpecific => '来源特定';

  @override
  String get appSource => '应用来源';

  @override
  String get appSourceHint => '打开应用来源仓库';

  @override
  String get noLogs => '无日志';

  @override
  String get appLogs => '应用日志';

  @override
  String get appLogsHint => '查看应用日志';

  @override
  String get close => '关闭';

  @override
  String get share => '分享';

  @override
  String get appNotFound => '未找到应用';

  @override
  String get networkError => '网络连接失败';

  @override
  String get invalidUrlFormat => '无效的 URL 格式';

  @override
  String get accessDenied => '访问被拒绝';

  @override
  String get importFailed => '导入失败';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-export';

  @override
  String get pickAnAPK => '选择 APK';

  @override
  String appHasMoreThanOnePackage(String appName) {
    return '$appName 有多个包：';
  }

  @override
  String deviceSupportsXArch(String arch) {
    return '您的设备支持 $arch CPU 架构。';
  }

  @override
  String get deviceSupportsFollowingArchs => '您的设备支持以下 CPU 架构：';

  @override
  String get warning => '警告';

  @override
  String sourceIsXButPackageFromYPrompt(String source, String package) {
    return '应用来源是 \'$source\' 但发布包来自 \'$package\'。继续？';
  }

  @override
  String get updatesAvailable => '有可用更新';

  @override
  String get updatesAvailableNotifDescription => '通知用户 Updatium 跟踪的一个或多个应用有可用更新';

  @override
  String get noNewUpdates => '没有新更新。';

  @override
  String xHasAnUpdate(String appName) {
    return '$appName 有更新。';
  }

  @override
  String get appsUpdated => '应用已更新';

  @override
  String get appsNotUpdated => '更新应用失败';

  @override
  String get appsUpdatedNotifDescription => '通知用户一个或多个应用的更新已在后台应用';

  @override
  String xWasUpdatedToY(String appName, String version) {
    return '$appName 已更新到 $version。';
  }

  @override
  String xWasNotUpdatedToY(String appName, String version) {
    return '更新 $appName 到 $version 失败。';
  }

  @override
  String get errorCheckingUpdates => '检查更新时出错';

  @override
  String get errorCheckingUpdatesNotifDescription => '后台更新检查失败时显示的通知';

  @override
  String get appsRemoved => '应用已移除';

  @override
  String get appsRemovedNotifDescription => '通知用户一个或多个应用因加载时出错而被移除';

  @override
  String xWasRemovedDueToErrorY(String appName, String error) {
    return '$appName 因此错误被移除：$error';
  }

  @override
  String get completeAppInstallation => '完成应用安装';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium 必须打开才能安装应用';

  @override
  String get completeAppInstallationNotifDescription => '要求用户返回 Updatium 完成应用安装';

  @override
  String get checkingForUpdates => '正在检查更新';

  @override
  String get checkingForUpdatesNotifDescription => '检查更新时显示的临时通知';

  @override
  String get pleaseAllowInstallPerm => '请允许 Updatium 安装应用';

  @override
  String get trackOnly => '仅追踪';

  @override
  String errorWithHttpStatusCode(String statusCode) {
    return '错误 $statusCode';
  }

  @override
  String get versionCorrectionDisabled => '版本更正已禁用（插件似乎不工作）';

  @override
  String get unknown => '未知';

  @override
  String get none => '无';

  @override
  String get all => '全部';

  @override
  String get never => '从不';

  @override
  String latestVersionX(String version) {
    return '最新：$version';
  }

  @override
  String installedVersionX(String version) {
    return '已安装：$version';
  }

  @override
  String lastUpdateCheckX(String time) {
    return '上次更新检查：$time';
  }

  @override
  String get remove => '移除';

  @override
  String get yesMarkUpdated => '是，标记为已更新';

  @override
  String get fdroid => 'F-Droid 官方';

  @override
  String get appIdOrName => '应用 ID 或名称';

  @override
  String get appId => '应用 ID';

  @override
  String get appWithIdOrNameNotFound => '未找到具有该 ID 或名称的应用';

  @override
  String get reposHaveMultipleApps => '仓库可能包含多个应用';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid 第三方仓库';

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
  String get huaweiappgallery => '华为应用市场';

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
  String get install => '安装';

  @override
  String get markInstalled => '标记为已安装';

  @override
  String get update => '更新';

  @override
  String get updated => '已更新';

  @override
  String get markUpdated => '标记为已更新';

  @override
  String get additionalOptions => '附加选项';

  @override
  String get disableVersionDetection => '禁用版本检测';

  @override
  String get noVersionDetectionExplanation => '此选项仅应用于版本检测无法正常工作的应用。';

  @override
  String downloadingX(String appName) {
    return '正在下载 $appName';
  }

  @override
  String downloadX(String appName) {
    return '下载 $appName';
  }

  @override
  String downloadedX(String appName) {
    return '已下载 $appName';
  }

  @override
  String get releaseAsset => '发布资源';

  @override
  String get downloadNotifDescription => '通知用户下载应用的进度';

  @override
  String get noAPKFound => '未找到 APK';

  @override
  String get noVersionDetection => '无版本检测';

  @override
  String get categorize => '分类';

  @override
  String get categories => '分类';

  @override
  String get category => '分类';

  @override
  String get noCategory => '无分类';

  @override
  String get noCategories => '无分类';

  @override
  String get deleteCategoriesQuestion => '删除分类？';

  @override
  String get categoryDeleteWarning => '已删除分类中的所有应用将被设置为未分类。';

  @override
  String get addCategory => '添加分类';

  @override
  String get label => '标签';

  @override
  String get language => '语言';

  @override
  String get copiedToClipboard => '已复制到剪贴板';

  @override
  String get storagePermissionDenied => '存储权限被拒绝';

  @override
  String get selectedCategorizeWarning => '这将替换选中应用的任何现有分类设置。';

  @override
  String get filterAPKsByRegEx => '用正则表达式筛选 APK';

  @override
  String get removeFromUpdatium => '从 Updatium 移除';

  @override
  String get uninstallFromDevice => '从设备卸载';

  @override
  String get onlyWorksWithNonVersionDetectApps => '仅适用于禁用版本检测的应用。';

  @override
  String get releaseDateAsVersion => '使用发布日期作为版本字符串';

  @override
  String get releaseTitleAsVersion => '使用发布标题作为版本字符串';

  @override
  String get releaseDateAsVersionExplanation => '此选项仅应用于版本检测无法正常工作但有发布日期可用的应用。';

  @override
  String get changes => '更改';

  @override
  String get releaseDate => '发布日期';

  @override
  String get importFromURLsInFile => '从文件中的 URL 导入（如 OPML）';

  @override
  String get versionDetectionExplanation => '将版本字符串与操作系统检测到的版本协调';

  @override
  String get versionDetection => '版本检测';

  @override
  String get standardVersionDetection => '标准版本检测';

  @override
  String get groupByCategory => '按分类分组';

  @override
  String get listView => '列表视图';

  @override
  String get gridView => '网格视图';

  @override
  String get autoApkFilterByArch => '如果可能，尝试按 CPU 架构筛选 APK';

  @override
  String get autoLinkFilterByArch => '如果可能，尝试按 CPU 架构筛选链接';

  @override
  String get overrideSource => '覆盖来源';

  @override
  String get dontShowAgain => '不再显示';

  @override
  String get dontShowTrackOnlyWarnings => '不显示\'仅追踪\'警告';

  @override
  String get dontShowAPKOriginWarnings => '不显示 APK 来源警告';

  @override
  String get moveNonInstalledAppsToBottom => '将未安装应用移至应用视图底部';

  @override
  String get hideNonInstalledApps => '隐藏未安装应用';

  @override
  String get gitlabPATLabel => 'GitLab 个人访问令牌';

  @override
  String get about => '关于';

  @override
  String requiresCredentialsInSettings(String source) {
    return '$source 需要额外凭据（在设置中）';
  }

  @override
  String get checkOnStart => '启动时检查更新';

  @override
  String get safeMode => '安全模式';

  @override
  String get safeModeDescription => '隐藏添加应用页面并显示导入/导出';

  @override
  String get safeModeAddAppDisabled => '安全模式下禁用添加应用';

  @override
  String get tryInferAppIdFromCode => '尝试从源代码推断应用 ID';

  @override
  String get removeOnExternalUninstall => '自动移除外部卸载的应用';

  @override
  String get pickHighestVersionCode => '自动选择最高版本代码的 APK';

  @override
  String get checkUpdateOnDetailPage => '打开应用详情页面时检查更新';

  @override
  String get disablePageTransitions => '禁用页面过渡动画';

  @override
  String get reversePageTransitions => '反转页面过渡动画';

  @override
  String get minStarCount => '最小星数';

  @override
  String get addInfoBelow => '在下方添加此信息。';

  @override
  String get addInfoInSettings => '在设置中添加此信息。';

  @override
  String get githubSourceNote => '可以使用 API 密钥避免 GitHub 速率限制。';

  @override
  String get sortByLastLinkSegment => '仅按链接的最后一段排序';

  @override
  String get filterReleaseNotesByRegEx => '用正则表达式筛选发布说明';

  @override
  String get customLinkFilterRegex => '自定义 APK 链接筛选正则表达式（默认 \'.apk\$\'）';

  @override
  String get appsPossiblyUpdated => '应用更新尝试';

  @override
  String get appsPossiblyUpdatedNotifDescription => '通知用户一个或多个应用的更新可能已在后台应用';

  @override
  String xWasPossiblyUpdatedToY(String appName, String version) {
    return '$appName 可能已更新到 $version。';
  }

  @override
  String get enableBackgroundUpdates => '启用后台更新';

  @override
  String get backgroundUpdateReqsExplanation => '后台更新可能不适用于所有应用。';

  @override
  String get backgroundUpdateLimitsExplanation => '后台安装的成功只能在打开 Updatium 时确定。';

  @override
  String get verifyLatestTag => '验证\'latest\'标签';

  @override
  String get intermediateLinkRegex => '筛选要访问的\'中间\'链接';

  @override
  String get filterByLinkText => '按链接文本筛选链接';

  @override
  String get matchLinksOutsideATags => '匹配 <a> 标签外的链接';

  @override
  String get intermediateLinkNotFound => '未找到中间链接';

  @override
  String get intermediateLink => '中间链接';

  @override
  String get exemptFromBackgroundUpdates => '免于后台更新（如果启用）';

  @override
  String get bgUpdatesOnWiFiOnly => '不在 Wi-Fi 时禁用后台更新';

  @override
  String get bgUpdatesWhileChargingOnly => '不在充电时禁用后台更新';

  @override
  String get autoSelectHighestVersionCode => '自动选择最高版本代码的 APK';

  @override
  String get versionExtractionRegEx => '版本字符串提取正则表达式';

  @override
  String get trimVersionString => '用正则表达式修剪版本字符串';

  @override
  String matchGroupToUseForX(String regexName) {
    return '用于\"$regexName\"的匹配组';
  }

  @override
  String get matchGroupToUse => '用于版本字符串提取正则表达式的匹配组';

  @override
  String get highlightTouchTargets => '突出显示不太明显的触摸目标';

  @override
  String get pickExportDir => '选择导出目录';

  @override
  String get autoExportOnChanges => '更改时自动导出';

  @override
  String get includeSettings => '包含设置';

  @override
  String get filterVersionsByRegEx => '用正则表达式筛选版本';

  @override
  String get trySelectingSuggestedVersionCode => '尝试选择建议的版本代码 APK';

  @override
  String get dontSortReleasesList => '保留 API 中的发布顺序';

  @override
  String get reverseSort => '反向排序';

  @override
  String get takeFirstLink => '取第一个链接';

  @override
  String get skipSort => '跳过排序';

  @override
  String get debugMenu => '调试菜单';

  @override
  String get bgTaskStarted => '后台任务已启动 - 检查日志。';

  @override
  String get runBgCheckNow => '立即运行后台更新检查';

  @override
  String get versionExtractWholePage => '将版本字符串提取正则表达式应用于整个页面';

  @override
  String get installing => '正在安装';

  @override
  String get skipUpdateNotifications => '跳过更新通知';

  @override
  String get updatesAvailableNotifChannel => '有可用更新';

  @override
  String get appsUpdatedNotifChannel => '应用已更新';

  @override
  String get appsPossiblyUpdatedNotifChannel => '应用更新尝试';

  @override
  String get errorCheckingUpdatesNotifChannel => '检查更新时出错';

  @override
  String get appsRemovedNotifChannel => '应用已移除';

  @override
  String downloadingXNotifChannel(String appName) {
    return '正在下载 $appName';
  }

  @override
  String get completeAppInstallationNotifChannel => '完成应用安装';

  @override
  String get checkingForUpdatesNotifChannel => '正在检查更新';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => '仅检查已安装和仅追踪应用的更新';

  @override
  String get supportFixedAPKURL => '支持固定 APK URL';

  @override
  String selectX(String count) {
    return '选择 $count';
  }

  @override
  String get parallelDownloads => '允许并行下载';

  @override
  String get useShizuku => '使用 Shizuku 或 Sui 安装';

  @override
  String get shizukuBinderNotFound => 'Shizuku 服务未运行';

  @override
  String get shizukuOld => '旧版 Shizuku (<11) - 请更新';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku 在 Android < 8.1 上与 ADB 一起运行 - 请更新 Android 或改用 Sui';

  @override
  String get shizukuPretendToBeGooglePlay => '将 Google Play 设置为安装来源（如果使用 Shizuku）';

  @override
  String get useSystemFont => '使用系统字体';

  @override
  String get useVersionCodeAsOSVersion => '使用应用版本代码作为操作系统检测到的版本';

  @override
  String get requestHeader => '请求头';

  @override
  String get useLatestAssetDateAsReleaseDate => '使用最新资源上传作为发布日期';

  @override
  String get defaultPseudoVersioningMethod => '默认伪版本方法';

  @override
  String get partialAPKHash => '部分 APK 哈希';

  @override
  String get apkLinkHash => 'APK link hash';

  @override
  String get directAPKLink => '直接 APK 链接';

  @override
  String get pseudoVersionInUse => '正在使用伪版本';

  @override
  String get installed => '已安装';

  @override
  String get latest => '最新';

  @override
  String get invertRegEx => '反转正则表达式';

  @override
  String get note => '注意';

  @override
  String selfHostedNote(String dropdown) {
    return '可以使用\"$dropdown\"下拉菜单来访问任何来源的自托管/自定义实例。';
  }

  @override
  String get badDownload => '无法解析 APK（不兼容或部分下载）';

  @override
  String get beforeNewInstallsShareToAppVerifier => '将新应用分享给 AppVerifier（如果可用）';

  @override
  String get appVerifierInstructionToast => '分享给 AppVerifier，准备好后返回这里。';

  @override
  String get wiki => '帮助/维基';

  @override
  String get wikiHint => '打开 Updatium 维基文档';

  @override
  String get allowInsecure => '允许不安全的 HTTP 请求';

  @override
  String get stayOneVersionBehind => '保持落后最新版本一个版本';

  @override
  String get useFirstApkOfVersion => '自动选择多个 APK 中的第一个';

  @override
  String get refreshBeforeDownload => '下载前刷新应用详情';

  @override
  String get tencentAppStore => '腾讯应用商店';

  @override
  String get coolApk => '酷安';

  @override
  String get vivoAppStore => 'vivo 应用商店（中国）';

  @override
  String get name => '名称';

  @override
  String get smartname => '名称（智能）';

  @override
  String get sortMethod => '排序方法';

  @override
  String get welcome => '欢迎';

  @override
  String get documentationLinksNote => '下面链接的 Updatium GitHub 页面包含视频、文章、讨论和其他资源的链接，这些资源将帮助您了解如何使用该应用。';

  @override
  String get batteryOptimizationNote => '请注意，如果您在 Updatium 设置中切换到\"前台服务\"和/或在操作系统设置中禁用 Updatium 的电池优化，后台下载可能会更可靠地工作。';

  @override
  String fileDeletionError(String filename) {
    return '删除文件失败（请尝试手动删除然后重试）：\"$filename\"';
  }

  @override
  String get foregroundService => 'Updatium 前台服务';

  @override
  String get foregroundServiceExplanation => '使用前台服务进行更新检查（更可靠，消耗更多电量）';

  @override
  String get fgServiceNotice => '此通知是后台更新检查所必需的（可以在操作系统设置中隐藏）';

  @override
  String get excludeSecrets => '排除机密信息';

  @override
  String get ghReqPrefix => '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get includeZips => '包含 ZIP 文件';

  @override
  String get zippedApkFilterRegEx => '筛选 ZIP 中的 APK';

  @override
  String get googleVerificationWarningP1 => '谷歌已宣布，从 2026/2027 年开始，\"认证\"Android 设备上的所有应用都需要开发者直接向谷歌提交个人身份详细信息。\n\n此后，Updatium 可能停止在认证 Android 设备上工作。';

  @override
  String get googleVerificationWarningP2 => '请访问 https://keepandroidopen.org/ 获取更多信息。';

  @override
  String get googleVerificationWarningP3 => '请注意，短期内，谷歌承诺在广泛反对其宣布后实施\"高级流程\"后，可能继续可以通过\"高级流程\"过程安装\"未验证\"（不合规）应用，但他们没有详细说明这将如何工作，因此不清楚它是否真正保留用户自由度。\n\n无论如何，谷歌的举动是结束个人自由通用计算的重要一步。\n\n非认证操作系统，如 GrapheneOS，只要它们被允许继续存在，应该不受影响。';

  @override
  String get multipleSigners => '多个签名者';

  @override
  String get removeAppQuestion => '移除应用？';

  @override
  String tooManyRequestsTryAgainInMinutes(int count) {
    return '请求过多（速率限制）- $count 分钟后重试';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(String error, int count) {
    return '后台更新检查遇到 $error，将安排在 $count 分钟后重试检查';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(int count) {
    return '后台更新检查找到 $count 个更新 - 如需要将通知用户';
  }

  @override
  String apps(int count) {
    return '$count 个应用';
  }

  @override
  String url(int count) {
    return '$count 个 URL';
  }

  @override
  String minute(int count) {
    return '$count 分钟';
  }

  @override
  String hour(int count) {
    return '$count 小时';
  }

  @override
  String day(int count) {
    return '$count 天';
  }

  @override
  String clearedNLogsBeforeXAfterY(int n, int before, int after) {
    return '清除了 $n 条日志（之前 = $before，之后 = $after）';
  }

  @override
  String xAndNMoreUpdatesAvailable(String appName, int count) {
    return '$appName 和 $count 个更多应用有更新。';
  }

  @override
  String xAndNMoreUpdatesInstalled(String appName, int count) {
    return '$appName 和 $count 个更多应用已更新。';
  }

  @override
  String xAndNMoreUpdatesFailed(String appName, int count) {
    return '更新 $appName 和 $count 个更多应用失败。';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(String appName, int count) {
    return '$appName 和 $count 个更多应用可能已更新。';
  }

  @override
  String apk(int count) {
    return '$count 个 APK';
  }

  @override
  String get certificateHash => '证书哈希';

  @override
  String get securityDisclaimerTitle => '安全与法律免责声明';

  @override
  String get license => '许可证';

  @override
  String get licenseText => '此应用程序在 GPL v3 许可证下分发。';

  @override
  String get disclaimer => '免责声明';

  @override
  String get disclaimerText => '此应用程序不分发、托管或验证任何外部应用程序。用户对通过此工具安装的任何软件的安全性和合法性承担全部责任。\n\nhttps://github.com/omeritzics/Updatium 是下载 Updatium 的唯一官方地点 - 强烈建议不要从其他地方下载，因为非官方来源不安全。';

  @override
  String get privacy => '隐私';

  @override
  String get privacyText => '此应用注重隐私，不收集个人数据。';

  @override
  String get acceptAndContinue => '接受并继续';

  @override
  String get decline => '拒绝';

  @override
  String get githubStarPromptTitle => '喜欢 Updatium 吗？';

  @override
  String get githubStarPromptContent => 'Updatium 是一个志愿的、开源的社区项目，我在我的空闲时间开发。如果您想支持这个项目，请考虑在 GitHub 上给它加星，以帮助我们触达更多用户和贡献者。您不会再收到关于此的提醒。提前感谢！：）';

  @override
  String get githubStarPromptStar => '加星';

  @override
  String get githubStarPromptDontShowAgain => '不再显示';
}
