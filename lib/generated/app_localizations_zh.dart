// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return '无效的 $arg1 URL';
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
  String xIsTrackOnly(String arg1) {
    return '“$arg1”为“仅追踪”模式';
  }

  @override
  String get source => '来源';

  @override
  String get app => '应用';

  @override
  String get appsFromSourceAreTrackOnly => '此来源的应用为“仅追踪”模式。';

  @override
  String get youPickedTrackOnly => '您选择了“仅追踪”。';

  @override
  String get trackOnlyAppDescription => '该应用的更新会被追踪，但 Updatium 无法下载或安装它。';

  @override
  String get cancelled => '已取消';

  @override
  String get appAlreadyAdded => '此应用已经添加';

  @override
  String get alreadyUpToDateQuestion => '应用是否已经为最新版本？';

  @override
  String get addApp => '添加应用';

  @override
  String get appSourceURL => '来源 URL';

  @override
  String get error => '错误';

  @override
  String get add => '添加';

  @override
  String get searchSomeSourcesLabel => '搜索（仅支持部分来源）';

  @override
  String get search => '搜索';

  @override
  String additionalOptsFor(String arg1) {
    return '$arg1 的更多选项';
  }

  @override
  String get supportedSources => '支持的来源';

  @override
  String get trackOnlyInBrackets => '（仅追踪）';

  @override
  String get searchableInBrackets => '（可搜索）';

  @override
  String get appsString => '应用列表';

  @override
  String get noApps => '无应用';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => '没有符合条件的应用';

  @override
  String byX(String arg1) {
    return '开发者：$arg1';
  }

  @override
  String percentProgress(String arg1) {
    return '进度：$arg1%';
  }

  @override
  String get pleaseWait => '请稍候';

  @override
  String get updateAvailable => '更新可用';

  @override
  String get notInstalled => '未安装';

  @override
  String get pseudoVersion => '虚拟版本号';

  @override
  String get selectAll => '全选';

  @override
  String deselectX(String arg1) {
    return '取消选择 $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '“$arg1”将从 Updatium 中删除，但仍安装在您的设备中。';
  }

  @override
  String get removeSelectedAppsQuestion => '是否删除选中的应用？';

  @override
  String get removeSelectedApps => '删除选中的应用';

  @override
  String updateX(String arg1) {
    return '更新 $arg1';
  }

  @override
  String installX(String arg1) {
    return '安装 $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return '将“$arg1”\n（仅追踪）\n标记为已更新';
  }

  @override
  String changeX(String arg1) {
    return '更改 $arg1';
  }

  @override
  String get installUpdateApps => '安装/更新应用';

  @override
  String get installUpdateSelectedApps => '安装/更新选中的应用';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return '是否将选中的 $arg1 个应用标记为已更新？';
  }

  @override
  String get no => '否';

  @override
  String get yes => '是';

  @override
  String get markSelectedAppsUpdated => '将选中的应用标记为已更新';

  @override
  String get pinToTop => '置顶';

  @override
  String get unpinFromTop => '取消置顶';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => '是否重置选中应用的安装状态？';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      '选中应用的安装状态将会被重置。\n\n当更新安装失败或其他问题导致 Updatium 中的应用版本显示错误时，可以尝试通过此方法解决。';

  @override
  String get customLinkMessage => '分享链接仅适用于已安装 Updatium 的设备';

  @override
  String get shareAppConfigLinks => '通过链接分享应用配置';

  @override
  String get shareSelectedAppURLs => '分享选中应用的 URL';

  @override
  String get resetInstallStatus => '重置安装状态';

  @override
  String get more => '更多';

  @override
  String get removeOutdatedFilter => '删除失效的应用筛选';

  @override
  String get showOutdatedOnly => '只显示待更新应用';

  @override
  String get filter => '筛选';

  @override
  String get filterApps => '筛选应用';

  @override
  String get appName => '应用名称';

  @override
  String get author => '作者';

  @override
  String get upToDateApps => '无需更新的应用';

  @override
  String get nonInstalledApps => '未安装的应用';

  @override
  String get importExport => '导入/导出';

  @override
  String get settings => '设置';

  @override
  String exportedTo(String arg1) {
    return '已导出至 $arg1';
  }

  @override
  String get updatiumExport => '导出 Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => '无效的输入';

  @override
  String importedX(String arg1) {
    return '已导入 $arg1';
  }

  @override
  String get updatiumImport => '导入 Updatium';

  @override
  String get importFromURLList => '从 URL 列表导入';

  @override
  String get searchQuery => '搜索查询';

  @override
  String get appURLList => '应用 URL 列表';

  @override
  String get line => '行';

  @override
  String searchX(String arg1) {
    return '搜索$arg1';
  }

  @override
  String get noResults => '无结果';

  @override
  String importX(String arg1) {
    return '导入$arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      '导入的应用可能会错误地显示为“未安装”状态。\n请通过 Updatium 重新安装这些应用来解决此问题。';

  @override
  String get importErrors => '导入错误';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '已导入 $arg1 中的 $arg2 个应用。';
  }

  @override
  String get followingURLsHadErrors => '下列 URL 存在错误：';

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
  String get followSystemThemeExplanation => '跟随系统主题仅在使用第三方应用时有效';

  @override
  String get useBlackTheme => '使用纯黑深色主题';

  @override
  String get appSortBy => '排序依据';

  @override
  String get authorName => '作者 / 应用名称';

  @override
  String get nameAuthor => '应用名称 / 作者';

  @override
  String get asAdded => '添加次序';

  @override
  String get appSortOrder => '顺序';

  @override
  String get ascending => '升序';

  @override
  String get descending => '降序';

  @override
  String get bgUpdateCheckInterval => '后台更新检查间隔';

  @override
  String get neverManualOnly => '手动';

  @override
  String get appearance => '外观';

  @override
  String get pinUpdates => '将待更新应用置顶';

  @override
  String get updates => '更新';

  @override
  String get sourceSpecific => '来源';

  @override
  String get appSource => '源代码';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => '无日志';

  @override
  String get appLogs => '日志';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => '关闭';

  @override
  String get share => '分享';

  @override
  String get appNotFound => '未找到应用';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-export';

  @override
  String get pickAnAPK => '选择一个 APK 文件';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '“$arg1”有多个架构可用：';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return '您的设备支持 $arg1 架构。';
  }

  @override
  String get deviceSupportsFollowingArchs => '您的设备支持下列架构：';

  @override
  String get warning => '警告';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return '此应用的来源是“$arg1”，但 APK 文件来自“$arg2”。是否继续？';
  }

  @override
  String get updatesAvailable => '更新可用';

  @override
  String get updatesAvailableNotifDescription => 'Updatium 追踪的应用有更新时发送通知';

  @override
  String get noNewUpdates => '全部应用已是最新。';

  @override
  String xHasAnUpdate(String arg1) {
    return '“$arg1”可以更新了。';
  }

  @override
  String get appsUpdated => '应用已更新';

  @override
  String get appsNotUpdated => '更新应用失败';

  @override
  String get appsUpdatedNotifDescription => '当应用在后台安装更新时发送通知';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '“$arg1”已更新至 $arg2。';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return '未能将 $arg1 更新为 $arg2。';
  }

  @override
  String get errorCheckingUpdates => '检查更新出错';

  @override
  String get errorCheckingUpdatesNotifDescription => '当后台检查更新失败时显示的通知';

  @override
  String get appsRemoved => '应用已删除';

  @override
  String get appsRemovedNotifDescription => '当应用因加载出错而被删除时发送通知';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '“$arg1”由于以下错误被删除：$arg2';
  }

  @override
  String get completeAppInstallation => '完成应用安装';

  @override
  String get updatiumMustBeOpenToInstallApps => '必须开启 Updatium 才能安装应用';

  @override
  String get completeAppInstallationNotifDescription => '提示返回 Updatium 以完成应用安装';

  @override
  String get checkingForUpdates => '正在检查更新';

  @override
  String get checkingForUpdatesNotifDescription => '检查更新时短暂显示的通知';

  @override
  String get pleaseAllowInstallPerm => '请授予 Updatium 安装应用的权限';

  @override
  String get trackOnly => '仅追踪';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return '$arg1 错误';
  }

  @override
  String get versionCorrectionDisabled => '禁用版本号更正（插件似乎未起作用）';

  @override
  String get unknown => '未知';

  @override
  String get none => '无';

  @override
  String get all => '全部';

  @override
  String get never => '从未';

  @override
  String latestVersionX(String arg1) {
    return '最新版本：$arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return '当前版本：$arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return '上次更新检查：$arg1';
  }

  @override
  String get remove => '删除';

  @override
  String get yesMarkUpdated => '是，标记为已更新';

  @override
  String get fdroid => 'F-Droid 官方存储库';

  @override
  String get appIdOrName => '应用 ID 或名称';

  @override
  String get appId => '应用 ID';

  @override
  String get appWithIdOrNameNotFound => '未找到符合此 ID 或名称的应用';

  @override
  String get reposHaveMultipleApps => '存储库中可能包含多个应用';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid 第三方存储库';

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
  String get noVersionDetectionExplanation => '此选项应该仅用于无法进行版本检测的应用。';

  @override
  String downloadingX(String arg1) {
    return '正在下载 $arg1';
  }

  @override
  String downloadX(String arg1) {
    return '下载 $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return '已下载 $arg1';
  }

  @override
  String get releaseAsset => '发行文件';

  @override
  String get downloadNotifDescription => '提示应用的下载进度';

  @override
  String get noAPKFound => '未找到 APK 文件';

  @override
  String get noVersionDetection => '禁用版本检测';

  @override
  String get categorize => '归类';

  @override
  String get categories => '类别';

  @override
  String get category => '类别';

  @override
  String get noCategory => '无类别';

  @override
  String get noCategories => '无类别';

  @override
  String get deleteCategoriesQuestion => '是否删除选中的类别？';

  @override
  String get categoryDeleteWarning => '被删除类别下的应用将恢复为未分类状态。';

  @override
  String get addCategory => '添加类别';

  @override
  String get label => '标签';

  @override
  String get language => '语言';

  @override
  String get copiedToClipboard => '已复制至剪贴板';

  @override
  String get storagePermissionDenied => '已拒绝授予存储权限';

  @override
  String get selectedCategorizeWarning => '这将覆盖选中应用当前的类别设置。';

  @override
  String get filterAPKsByRegEx => '筛选 APK 文件的正则表达式';

  @override
  String get removeFromUpdatium => '从 Updatium 中删除';

  @override
  String get uninstallFromDevice => '从设备中卸载';

  @override
  String get onlyWorksWithNonVersionDetectApps => '仅适用于禁用版本检测的应用。';

  @override
  String get releaseDateAsVersion => '将发行日期作为版本号';

  @override
  String get releaseTitleAsVersion => '将发行标题作为版本字符串';

  @override
  String get releaseDateAsVersionExplanation => '此选项应该仅用于无法进行版本检测但能够获取发行日期的应用。';

  @override
  String get changes => '更新日志';

  @override
  String get releaseDate => '发行日期';

  @override
  String get importFromURLsInFile => '从文件中的 URL 导入（如 OPML）';

  @override
  String get versionDetectionExplanation => '使发行版本号与应用定义的版本号一致';

  @override
  String get versionDetection => '版本检测';

  @override
  String get standardVersionDetection => '常规版本检测';

  @override
  String get groupByCategory => '按类别分组';

  @override
  String get listView => '列表视图';

  @override
  String get gridView => '网格视图';

  @override
  String get autoApkFilterByArch => '如果可能，尝试按 CPU 架构筛选 APK 文件';

  @override
  String get autoLinkFilterByArch => '尽可能按设备支持的 CPU 架构筛选链接';

  @override
  String get overrideSource => '覆盖来源';

  @override
  String get dontShowAgain => '不再显示';

  @override
  String get dontShowTrackOnlyWarnings => '忽略“仅追踪”模式警告';

  @override
  String get dontShowAPKOriginWarnings => '忽略 APK 文件来源警告';

  @override
  String get moveNonInstalledAppsToBottom => '将未安装应用置底';

  @override
  String get hideNonInstalledApps => '隐藏未安装的应用';

  @override
  String get gitlabPATLabel => 'GitLab 个人访问令牌';

  @override
  String get about => '相关文档';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1：此功能需要额外的凭据（在“设置”中添加）';
  }

  @override
  String get checkOnStart => '启动时进行一次检查';

  @override
  String get safeMode => '安全模式';

  @override
  String get safeModeDescription => '隐藏添加应用页面并显示导入/导出';

  @override
  String get safeModeAddAppDisabled => '添加应用在安全模式下已禁用';

  @override
  String get tryInferAppIdFromCode => '尝试从源代码推断应用 ID';

  @override
  String get removeOnExternalUninstall => '自动删除列表中已卸载的应用';

  @override
  String get pickHighestVersionCode => '自动选取内部版本号最高的 APK 文件';

  @override
  String get checkUpdateOnDetailPage => '打开应用详情页时进行检查';

  @override
  String get disablePageTransitions => '禁用页面过渡动画效果';

  @override
  String get reversePageTransitions => '反转页面过渡动画效果';

  @override
  String get minStarCount => '最小星标数';

  @override
  String get addInfoBelow => '在下方添加此凭据。';

  @override
  String get addInfoInSettings => '在“设置”中添加此凭据。';

  @override
  String get githubSourceNote => '使用访问令牌可避免触发 GitHub 的 API 请求限制。';

  @override
  String get sortByLastLinkSegment => '仅根据链接的末尾部分进行筛选';

  @override
  String get filterReleaseNotesByRegEx => '筛选发行说明的正则表达式';

  @override
  String get customLinkFilterRegex =>
      '筛选自定义来源的 APK 文件链接\n（正则表达式，默认匹配模式为“.apk\$”）';

  @override
  String get appsPossiblyUpdated => '已尝试更新应用';

  @override
  String get appsPossiblyUpdatedNotifDescription => '当应用已尝试在后台更新时发送通知';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '已尝试将“$arg1”更新至 $arg2。';
  }

  @override
  String get enableBackgroundUpdates => '启用全局后台更新';

  @override
  String get backgroundUpdateReqsExplanation => '后台更新未必适用于所有的应用。';

  @override
  String get backgroundUpdateLimitsExplanation => '只有在开启 Updatium 时才能确认是否安装成功。';

  @override
  String get verifyLatestTag => '验证“Latest”标签';

  @override
  String get intermediateLinkRegex => '筛选中转链接的正则表达式';

  @override
  String get filterByLinkText => '根据链接文本进行筛选';

  @override
  String get matchLinksOutsideATags => '匹配 <a> 标签外的链接';

  @override
  String get intermediateLinkNotFound => '未找到中转链接';

  @override
  String get intermediateLink => '中转链接';

  @override
  String get exemptFromBackgroundUpdates => '禁用后台更新（仅此应用生效，即使已启用全局后台更新）';

  @override
  String get bgUpdatesOnWiFiOnly => '未连接 Wi-Fi 时禁用后台更新';

  @override
  String get bgUpdatesWhileChargingOnly => '未充电时禁用后台更新';

  @override
  String get autoSelectHighestVersionCode => '自动选择内部版本号最高的 APK 文件';

  @override
  String get versionExtractionRegEx => '提取版本号的正则表达式';

  @override
  String get trimVersionString => '修剪版本字符串的正则表达式';

  @override
  String matchGroupToUseForX(String arg1) {
    return '“$arg1”中引用的捕获组';
  }

  @override
  String get matchGroupToUse => '“提取版本字符串的正则表达式”中引用的捕获组';

  @override
  String get highlightTouchTargets => '突出展示不明显的可交互区域';

  @override
  String get pickExportDir => '选择导出文件夹';

  @override
  String get autoExportOnChanges => '数据变更时自动导出';

  @override
  String get includeSettings => '同时导出应用设置';

  @override
  String get filterVersionsByRegEx => '筛选版本号的正则表达式';

  @override
  String get trySelectingSuggestedVersionCode => '尝试选择推荐版本的 APK 文件';

  @override
  String get dontSortReleasesList => '保持来自 API 的发行顺序';

  @override
  String get reverseSort => '反转排序';

  @override
  String get takeFirstLink => '选取第一个链接';

  @override
  String get skipSort => '不进行排序';

  @override
  String get debugMenu => '调试选项';

  @override
  String get bgTaskStarted => '后台任务已启动 - 详见日志';

  @override
  String get runBgCheckNow => '立即进行后台更新检查';

  @override
  String get versionExtractWholePage => '将版本号提取规则应用于完整页面';

  @override
  String get installing => '正在安装';

  @override
  String get skipUpdateNotifications => '忽略更新通知';

  @override
  String get updatesAvailableNotifChannel => '更新可用';

  @override
  String get appsUpdatedNotifChannel => '应用已更新';

  @override
  String get appsPossiblyUpdatedNotifChannel => '已尝试更新应用';

  @override
  String get errorCheckingUpdatesNotifChannel => '检查更新出错';

  @override
  String get appsRemovedNotifChannel => '应用已删除';

  @override
  String downloadingXNotifChannel(String arg1) {
    return '正在下载“$arg1”';
  }

  @override
  String get completeAppInstallationNotifChannel => '完成应用安装';

  @override
  String get checkingForUpdatesNotifChannel => '正在检查更新';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => '只检查已安装和“仅追踪”的应用';

  @override
  String get supportFixedAPKURL => '支持固定的 APK 文件链接';

  @override
  String selectX(String arg1) {
    return '选择$arg1';
  }

  @override
  String get parallelDownloads => '启用并行下载';

  @override
  String get useShizuku => '使用 Shizuku 或 Sui 安装';

  @override
  String get shizukuBinderNotFound => '未发现兼容的 Shizuku 服务';

  @override
  String get shizukuOld => 'Shizuku 版本过低（<11）- 请更新';

  @override
  String get shizukuOldAndroidWithADB =>
      '正在低版本 Android（<8.1）系统中以 ADB 模式运行 Shizuku - 请更新 Android 系统版本或使用 Sui 代替';

  @override
  String get shizukuPretendToBeGooglePlay =>
      '将安装来源伪装为 Google Play（需要使用 Shizuku）';

  @override
  String get useSystemFont => '使用系统字体';

  @override
  String get useVersionCodeAsOSVersion => '使用内部版本号代替应用定义的版本号';

  @override
  String get requestHeader => '请求标头';

  @override
  String get useLatestAssetDateAsReleaseDate => '使用最新文件上传时间作为发行日期';

  @override
  String get defaultPseudoVersioningMethod => '默认虚拟版本方案';

  @override
  String get partialAPKHash => 'APK 文件散列值片段';

  @override
  String get directAPKLink => 'APK 文件直链';

  @override
  String get pseudoVersionInUse => '正在使用虚拟版本号';

  @override
  String get installed => '当前版本';

  @override
  String get latest => '最新版本';

  @override
  String get invertRegEx => '反转匹配';

  @override
  String get note => '备注';

  @override
  String selfHostedNote(String arg1) {
    return '可以通过“$arg1”下拉菜单来指向任意来源的自托管/自定义实例。';
  }

  @override
  String get badDownload => '无法解析 APK 文件（不兼容或文件不完整）';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      '通过 AppVerifier 校验新应用（如果可用）';

  @override
  String get appVerifierInstructionToast => '分享至 AppVerifier，完成后返回此处。';

  @override
  String get wiki => '帮助/Wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => '允许不安全的 HTTP 请求';

  @override
  String get stayOneVersionBehind => '始终延后一个版本进行更新';

  @override
  String get useFirstApkOfVersion => '存在多个 APK 文件时自动选择第一个';

  @override
  String get refreshBeforeDownload => '下载前刷新应用详情';

  @override
  String get tencentAppStore => '腾讯应用宝';

  @override
  String get coolApk => '酷安';

  @override
  String get vivoAppStore => '（中国）vivo应用商店';

  @override
  String get name => '发行名称';

  @override
  String get smartname => '发行名称（智能）';

  @override
  String get sortMethod => '排序方法';

  @override
  String get welcome => '欢迎';

  @override
  String get documentationLinksNote =>
      '下方链接的 GitHub 页面中包含关于 Updatium 的视频、文章、讨论及其他资源，可帮助您了解本应用的使用方法。';

  @override
  String get batteryOptimizationNote =>
      '请注意，在设置中切换为“前台服务”，并/或关闭操作系统对 Updatium 的电池优化，可能会让后台下载更稳定。';

  @override
  String fileDeletionError(String arg1) {
    return '删除文件失败（请手动删除后再次尝试）：\"$arg1\"';
  }

  @override
  String get foregroundService => 'Updatium 前台服务';

  @override
  String get foregroundServiceExplanation => '使用前台服务检查更新（更稳定，但也更耗电）';

  @override
  String get fgServiceNotice => '后台检查更新时需要此通知（可在操作系统设置中隐藏）';

  @override
  String get excludeSecrets => '排除机密';

  @override
  String get includeZips => '包含 ZIP 文件';

  @override
  String get zippedApkFilterRegEx => '过滤 ZIP 内的 APK';

  @override
  String get googleVerificationWarningP1 =>
      'Google宣布,从2026/2027年开始,所有在\"认证\"Android设备上的应用程序都将要求开发者直接向Google提交个人身份细节.\n\n之后,Updatium可能会停止在认证的Android设备上工作.';

  @override
  String get googleVerificationWarningP2 =>
      '详情请访问https://keepandroidopen.org/.';

  @override
  String get googleVerificationWarningP3 =>
      '请注意,在短期内,通过谷歌承诺在广泛反对其公告后实施的\"高级流程\"程序,可能继续安装\"未经验证\"(不符合要求)的应用软件,但他们没有详细说明这将如何运作,因此不清楚它是否会以任何实际方式真正维护用户自由.\n\n无论如何，谷歌的这一举动是朝向个人自由、通用计算结束的重要一步.\n\n未经认证的OS,如GrapheneOS,只要允许继续存在,就不应受到影响.';

  @override
  String get multipleSigners => '多个签名人';

  @override
  String get securityDisclaimerTitle => '安全与法律免责声明';

  @override
  String get license => '许可证';

  @override
  String get licenseText => '本应用程序采用 GPL v3 许可证分发。';

  @override
  String get disclaimer => '免责声明';

  @override
  String get disclaimerText =>
      '本应用程序不分发、托管或验证任何外部应用程序。用户对通过此工具安装的任何软件的安全性和合法性承担全部责任。\n\nhttps://github.com/omeritzics/Updatium 是下载 Updatium 的唯一官方地点 - 强烈建议不要从其他地方下载，因为从非官方来源下载是不安全的。';

  @override
  String get privacy => '隐私';

  @override
  String get privacyText => '此应用注重隐私，不收集个人数据。';

  @override
  String get acceptAndContinue => '接受并继续';

  @override
  String get decline => '拒绝';

  @override
  String get githubStarPromptTitle => '喜欢使用 Updatium 吗？';

  @override
  String get githubStarPromptContent =>
      'Updatium 是一个志愿性的开源社区项目，我在业余时间开发。如果您想支持这个项目，请考虑在 GitHub 上为它加星标，以帮助更多用户和贡献者了解我们。您不会再收到关于此的提醒。提前感谢！:)';

  @override
  String get githubStarPromptStar => '加星标';

  @override
  String get githubStarPromptDontShowAgain => '不再显示';

  @override
  String get aPKLinkHash => 'APK 文件链接散列值';

  @override
  String get gHReqPrefix => '用于 GitHub 请求的 \"sky22333/hubproxy \"实例';

  @override
  String get continueAction => '继续';

  @override
  String apps(int count) {
    return '$count Apps';
  }

  @override
  String apk(int count) {
    return '$count APKs';
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
}

/// The translations for Chinese, as used in Taiwan, using the Han script (`zh_Hant_TW`).
class AppLocalizationsZhHantTw extends AppLocalizationsZh {
  AppLocalizationsZhHantTw() : super('zh_Hant_TW');

  @override
  String invalidURLForSource(String arg1) {
    return '不是有效的 $arg1 應用程式 URL';
  }

  @override
  String get noReleaseFound => '找不到合適的版本';

  @override
  String get noVersionFound => '無法確定版本';

  @override
  String get urlMatchesNoSource => 'URL 不符合已知來源';

  @override
  String get cantInstallOlderVersion => '無法安裝舊版本的應用程式';

  @override
  String get appIdMismatch => '下載的套件 ID 與現有的應用程式 ID 不相符';

  @override
  String get functionNotImplemented => '此類別尚未實作此功能';

  @override
  String get placeholder => '佔位字串';

  @override
  String get someErrors => '發生了一些錯誤';

  @override
  String get unexpectedError => '意外錯誤';

  @override
  String get ok => '確定';

  @override
  String get and => '和';

  @override
  String get githubPATLabel => 'GitHub 個人存取權杖（放寬速率限制）';

  @override
  String get includePrereleases => '包含預先釋出版本';

  @override
  String get fallbackToOlderReleases => '回退到舊版本';

  @override
  String get filterReleaseTitlesByRegEx => '用正則表達式過濾版本發佈標題';

  @override
  String get invalidRegEx => '無效的正則表達式';

  @override
  String get noDescription => '沒有描述';

  @override
  String get cancel => '取消';

  @override
  String get requiredInBrackets => '（必填）';

  @override
  String get dropdownNoOptsError => '錯誤：下拉選單必須至少有一個選項';

  @override
  String get color => '顏色';

  @override
  String get standard => '標準';

  @override
  String get custom => '自訂';

  @override
  String get useMaterialYou => '使用 Material You 顏色';

  @override
  String get githubStarredRepos => 'GitHub 打星星的專案';

  @override
  String get uname => '使用者名稱';

  @override
  String get wrongArgNum => '提供的參數數量錯誤';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 是僅追蹤';
  }

  @override
  String get source => '來源';

  @override
  String get app => '應用程式';

  @override
  String get appsFromSourceAreTrackOnly => '來自此來源的應用程式是「僅追蹤」。';

  @override
  String get youPickedTrackOnly => '您已選擇「僅追蹤」選項。';

  @override
  String get trackOnlyAppDescription => '該應用程式將被追蹤更新，但 Updatium 將無法下載或安裝它。';

  @override
  String get cancelled => '已取消';

  @override
  String get appAlreadyAdded => '應用程式已新增';

  @override
  String get alreadyUpToDateQuestion => '應用程式已經是最新的？';

  @override
  String get addApp => '新增應用程式';

  @override
  String get appSourceURL => '應用程式來源 URL';

  @override
  String get error => '錯誤';

  @override
  String get add => '新增';

  @override
  String get searchSomeSourcesLabel => '搜尋（僅限部分來源）';

  @override
  String get search => '搜尋';

  @override
  String additionalOptsFor(String arg1) {
    return '$arg1 的其他選項';
  }

  @override
  String get supportedSources => '支援的來源';

  @override
  String get trackOnlyInBrackets => '（僅追蹤）';

  @override
  String get searchableInBrackets => '（可搜尋）';

  @override
  String get appsString => '應用程式';

  @override
  String get noApps => '無應用程式';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => '無符合過濾條件的應用程式';

  @override
  String byX(String arg1) {
    return '由 $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return '進度：$arg1%';
  }

  @override
  String get pleaseWait => '請稍候';

  @override
  String get updateAvailable => '有可用的更新';

  @override
  String get notInstalled => '未安裝';

  @override
  String get pseudoVersion => '偽版本';

  @override
  String get selectAll => '全選';

  @override
  String deselectX(String arg1) {
    return '取消選取 $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 將從 Updatium 中移除，但仍然安裝在裝置上。';
  }

  @override
  String get removeSelectedAppsQuestion => '移除選取的應用程式？';

  @override
  String get removeSelectedApps => '移除選取的應用程式';

  @override
  String updateX(String arg1) {
    return '更新 $arg1';
  }

  @override
  String installX(String arg1) {
    return '安裝 $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return '標記 $arg1\n（僅追蹤）\n為已更新';
  }

  @override
  String changeX(String arg1) {
    return '更改 $arg1';
  }

  @override
  String get installUpdateApps => '安裝/更新應用程式';

  @override
  String get installUpdateSelectedApps => '安裝/更新選取的應用程式';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return '標記 $arg1 個選取的應用程式為已更新？';
  }

  @override
  String get no => '否';

  @override
  String get yes => '是';

  @override
  String get markSelectedAppsUpdated => '標記選取的應用程式為已更新';

  @override
  String get pinToTop => '釘選到頂端';

  @override
  String get unpinFromTop => '取消釘選';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => '重設選取應用程式的安裝狀態？';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      '任何選取應用程式的安裝狀態將被重設。\n\n這可以在由於更新失敗或其他問題導致 Updatium 顯示的應用程式版本不正確時有所幫助。';

  @override
  String get customLinkMessage => '這些連結適用於已安裝 Updatium 的裝置';

  @override
  String get shareAppConfigLinks => '分享應用程式設定為 HTML 連結';

  @override
  String get shareSelectedAppURLs => '分享選取的應用程式 URL';

  @override
  String get resetInstallStatus => '重設安裝狀態';

  @override
  String get more => '更多';

  @override
  String get removeOutdatedFilter => '移除過時應用程式過濾';

  @override
  String get showOutdatedOnly => '僅顯示過時的應用程式';

  @override
  String get filter => '過濾';

  @override
  String get filterApps => '過濾應用程式';

  @override
  String get appName => '應用程式名稱';

  @override
  String get author => '作者';

  @override
  String get upToDateApps => '最新的應用程式';

  @override
  String get nonInstalledApps => '未安裝的應用程式';

  @override
  String get importExport => '匯入/匯出';

  @override
  String get settings => '設定';

  @override
  String exportedTo(String arg1) {
    return '匯出到 $arg1';
  }

  @override
  String get updatiumExport => 'Updatium 匯出';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => '無效的輸入';

  @override
  String importedX(String arg1) {
    return '已匯入 $arg1';
  }

  @override
  String get updatiumImport => 'Updatium 匯入';

  @override
  String get importFromURLList => '從 URL 清單匯入';

  @override
  String get searchQuery => '搜尋查詢';

  @override
  String get appURLList => '應用程式 URL 清單';

  @override
  String get line => '行';

  @override
  String searchX(String arg1) {
    return '搜尋 $arg1';
  }

  @override
  String get noResults => '沒有找到結果';

  @override
  String importX(String arg1) {
    return '匯入 $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      '匯入的應用程式可能會錯誤地顯示為「未安裝」。\n要修正此問題，請透過 Updatium 重新安裝它們。\n這不應該影響應用程式資料。\n\n僅影響 URL 和第三方匯入方法。';

  @override
  String get importErrors => '匯入錯誤';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '已匯入 $arg1 個中的 $arg2 個應用程式。';
  }

  @override
  String get followingURLsHadErrors => '以下 URL 有錯誤：';

  @override
  String get selectURL => '選擇 URL';

  @override
  String get selectURLs => '選擇多個 URL';

  @override
  String get pick => '選取';

  @override
  String get theme => '主題';

  @override
  String get dark => '深色';

  @override
  String get light => '淺色';

  @override
  String get followSystem => '跟隨系統';

  @override
  String get followSystemThemeExplanation => '僅使用第三方應用程式時才可跟隨系統主題';

  @override
  String get useBlackTheme => '使用純黑色深色主題';

  @override
  String get appSortBy => '應用程式排序依據';

  @override
  String get authorName => '作者/名稱';

  @override
  String get nameAuthor => '名稱/作者';

  @override
  String get asAdded => '新增順序';

  @override
  String get appSortOrder => '應用程式排序順序';

  @override
  String get ascending => '升序';

  @override
  String get descending => '降序';

  @override
  String get bgUpdateCheckInterval => '背景更新檢查間隔';

  @override
  String get neverManualOnly => '從不 - 僅手動';

  @override
  String get appearance => '外觀';

  @override
  String get pinUpdates => '將更新釘選至應用程式檢視的頂端';

  @override
  String get updates => '更新';

  @override
  String get sourceSpecific => '特定來源';

  @override
  String get appSource => '應用程式來源';

  @override
  String get noLogs => '無日誌';

  @override
  String get appLogs => '應用程式日誌';

  @override
  String get close => '關閉';

  @override
  String get share => '分享';

  @override
  String get appNotFound => '沒有找到應用程式';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-export';

  @override
  String get pickAnAPK => '選擇一個 APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 有多個套件：';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return '您的裝置支援 $arg1 CPU 架構。';
  }

  @override
  String get deviceSupportsFollowingArchs => '您的裝置支援以下 CPU 架構：';

  @override
  String get warning => '警告';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return '應用程式來源是 「$arg1」，但發佈套件來自 「$arg2」。要繼續嗎？';
  }

  @override
  String get updatesAvailable => '有可用的更新';

  @override
  String get updatesAvailableNotifDescription =>
      '通知使用者有一個或多個由 Updatium 追蹤的應用程式有更新';

  @override
  String get noNewUpdates => '沒有新更新。';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 有一個更新。';
  }

  @override
  String get appsUpdated => '應用程式已更新';

  @override
  String get appsNotUpdated => '未能更新應用程式';

  @override
  String get appsUpdatedNotifDescription => '通知使用者一個或多個應用程式的更新已在背景中套用';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 已更新到 $arg2。';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return '未能將 $arg1 更新到 $arg2。';
  }

  @override
  String get errorCheckingUpdates => '檢查更新時出錯';

  @override
  String get errorCheckingUpdatesNotifDescription => '背景檢查更新失敗時顯示的通知';

  @override
  String get appsRemoved => '應用程式已移除';

  @override
  String get appsRemovedNotifDescription => '通知使用者由於載入時出錯，一個或多個應用程式已被移除';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 已因以下錯誤被移除：$arg2';
  }

  @override
  String get completeAppInstallation => '完成應用程式安裝';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium 必須開啟才能安裝應用程式';

  @override
  String get completeAppInstallationNotifDescription =>
      '請使用者回到 Updatium 以完成應用程式安裝';

  @override
  String get checkingForUpdates => '正在檢查更新';

  @override
  String get checkingForUpdatesNotifDescription => '檢查更新時顯示的暫時性通知';

  @override
  String get pleaseAllowInstallPerm => '請允許 Updatium 安裝應用程式';

  @override
  String get trackOnly => '僅追蹤';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return '錯誤 $arg1';
  }

  @override
  String get versionCorrectionDisabled => '版本校正已停用（外掛程式似乎無法正常工作）';

  @override
  String get unknown => '未知';

  @override
  String get none => '無';

  @override
  String get all => '全體';

  @override
  String get never => '從不';

  @override
  String latestVersionX(String arg1) {
    return '最新版本：$arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return '已安裝版本：$arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return '上次檢查更新時間：$arg1';
  }

  @override
  String get remove => '移除';

  @override
  String get yesMarkUpdated => '是，標記為已更新';

  @override
  String get fdroid => 'F-Droid 官方';

  @override
  String get appIdOrName => '應用程式 ID 或名稱';

  @override
  String get appId => '應用程式 ID';

  @override
  String get appWithIdOrNameNotFound => '找不到具有該 ID 或名稱的應用程式';

  @override
  String get reposHaveMultipleApps => '倉庫可能包含多個應用程式';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid 第三方倉庫';

  @override
  String get install => '安裝';

  @override
  String get markInstalled => '標記為已安裝';

  @override
  String get update => '更新';

  @override
  String get updated => '已更新';

  @override
  String get markUpdated => '標記為已更新';

  @override
  String get additionalOptions => '額外選項';

  @override
  String get disableVersionDetection => '停用版本偵測';

  @override
  String get noVersionDetectionExplanation => '此選項僅應用於版本偵測無法正確工作的應用程式。';

  @override
  String downloadingX(String arg1) {
    return '正在下載 $arg1';
  }

  @override
  String downloadX(String arg1) {
    return '下載 $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return '已下載 $arg1';
  }

  @override
  String get releaseAsset => '發佈資源';

  @override
  String get downloadNotifDescription => '通知使用者應用程式下載進度';

  @override
  String get noAPKFound => '沒有找到 APK';

  @override
  String get noVersionDetection => '無版本偵測';

  @override
  String get categorize => '分類';

  @override
  String get categories => '類別';

  @override
  String get category => '類別';

  @override
  String get noCategory => '無類別';

  @override
  String get noCategories => '無類別';

  @override
  String get deleteCategoriesQuestion => '刪除類別？';

  @override
  String get categoryDeleteWarning => '所有在已刪除類別中的應用程式將被設定為未分類。';

  @override
  String get addCategory => '新增類別';

  @override
  String get label => '標籤';

  @override
  String get language => '語言';

  @override
  String get copiedToClipboard => '已複製到剪貼簿';

  @override
  String get storagePermissionDenied => '存取權限被拒絕';

  @override
  String get selectedCategorizeWarning => '這將替換選取應用程式的任何現有類別設定。';

  @override
  String get filterAPKsByRegEx => '用正則表達式過濾 APK';

  @override
  String get removeFromUpdatium => '從 Updatium 移除';

  @override
  String get uninstallFromDevice => '從裝置解除安裝';

  @override
  String get onlyWorksWithNonVersionDetectApps => '僅適用於停用版本偵測的應用程式。';

  @override
  String get releaseDateAsVersion => '使用發佈日期作為版本字串';

  @override
  String get releaseTitleAsVersion => '使用發佈標題作為版本字串';

  @override
  String get releaseDateAsVersionExplanation => '此選項僅應用於版本偵測無法正確工作但有發佈日期的應用程式。';

  @override
  String get changes => '變更';

  @override
  String get releaseDate => '發佈日期';

  @override
  String get importFromURLsInFile => '從檔案中的 URL 匯入（如 OPML）';

  @override
  String get versionDetectionExplanation => '將版本字串與作業系統偵測到的版本對比';

  @override
  String get versionDetection => '版本偵測';

  @override
  String get standardVersionDetection => '標準版本偵測';

  @override
  String get groupByCategory => '按類別分組';

  @override
  String get listView => '列表檢視';

  @override
  String get gridView => '網格檢視';

  @override
  String get autoApkFilterByArch => '如果可能，嘗試按 CPU 架構過濾 APK';

  @override
  String get autoLinkFilterByArch => '若可能，自動根據 CPU 架構篩選連結';

  @override
  String get overrideSource => '覆蓋來源';

  @override
  String get dontShowAgain => '不要再顯示';

  @override
  String get dontShowTrackOnlyWarnings => '不要顯示「僅追蹤」警告';

  @override
  String get dontShowAPKOriginWarnings => '不要顯示 APK 來源警告';

  @override
  String get moveNonInstalledAppsToBottom => '將未安裝的應用程式移到應用程式檢視的末端';

  @override
  String get hideNonInstalledApps => '隱藏未安裝的應用程式';

  @override
  String get gitlabPATLabel => 'GitLab 個人存取權杖';

  @override
  String get about => '關於';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1 需要額外的憑證（在設定中）';
  }

  @override
  String get checkOnStart => '啟動時檢查更新';

  @override
  String get safeMode => '安全模式';

  @override
  String get safeModeDescription => '隱藏新增應用程式頁面並顯示匯入/匯出';

  @override
  String get safeModeAddAppDisabled => '新增應用程式在安全模式中已停用';

  @override
  String get tryInferAppIdFromCode => '嘗試從原始碼推斷應用程式 ID';

  @override
  String get removeOnExternalUninstall => '自動移除外部解除安裝的應用程式';

  @override
  String get pickHighestVersionCode => '自動選取最高版本號的 APK';

  @override
  String get checkUpdateOnDetailPage => '在開啟應用程式詳細頁面時檢查更新';

  @override
  String get disablePageTransitions => '停用頁面過渡動畫';

  @override
  String get reversePageTransitions => '反轉頁面過渡動畫';

  @override
  String get minStarCount => '最少星星數';

  @override
  String get addInfoBelow => '在下方新增此資訊。';

  @override
  String get addInfoInSettings => '在設定中增加此資訊。';

  @override
  String get githubSourceNote => '使用 API 金鑰可以避免 GitHub 的速率限制。';

  @override
  String get sortByLastLinkSegment => '僅按連結的最後一段排序';

  @override
  String get filterReleaseNotesByRegEx => '用正則表達式過濾發佈說明';

  @override
  String get customLinkFilterRegex => '自定 APK 連結過濾正則表達式（預設為 \'.apk\$\'）';

  @override
  String get appsPossiblyUpdated => '嘗試更新應用程式';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      '通知使用者一個或多個應用程式的更新可能已在背景中套用';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 可能已更新到 $arg2。';
  }

  @override
  String get enableBackgroundUpdates => '啟用背景更新';

  @override
  String get backgroundUpdateReqsExplanation => '並非所有應用程式都能進行背景更新。';

  @override
  String get backgroundUpdateLimitsExplanation =>
      '背景安裝的成功與否只能在開啟 Updatium 時確定。';

  @override
  String get verifyLatestTag => '驗證「最新」標籤';

  @override
  String get intermediateLinkRegex => '過濾要存取的「中間」連結';

  @override
  String get filterByLinkText => '按連結文字過濾連結';

  @override
  String get matchLinksOutsideATags => '匹配 <a> 標籤外的連結';

  @override
  String get intermediateLinkNotFound => '沒有找到中間連結';

  @override
  String get intermediateLink => '中間連結';

  @override
  String get exemptFromBackgroundUpdates => '免除背景更新（若已啟用）';

  @override
  String get bgUpdatesOnWiFiOnly => '停用非 Wi-Fi 的背景更新';

  @override
  String get bgUpdatesWhileChargingOnly => '未充電時停用背景更新';

  @override
  String get autoSelectHighestVersionCode => '自動選擇最高 versionCode 的 APK';

  @override
  String get versionExtractionRegEx => '版本字串提取正則表達式';

  @override
  String get trimVersionString => '用正則表達式修剪版本字串';

  @override
  String matchGroupToUseForX(String arg1) {
    return '用於「$arg1」的對應群組';
  }

  @override
  String get matchGroupToUse => '要用於版本字串提取的對應群組';

  @override
  String get highlightTouchTargets => '突出顯示不明顯的觸控目標';

  @override
  String get pickExportDir => '選擇匯出目錄';

  @override
  String get autoExportOnChanges => '更改時自動匯出';

  @override
  String get includeSettings => '包含設定';

  @override
  String get filterVersionsByRegEx => '用正則表達式過濾版本';

  @override
  String get trySelectingSuggestedVersionCode => '嘗試選擇建議的 versionCode APK';

  @override
  String get dontSortReleasesList => '保留 API 的發佈順序';

  @override
  String get reverseSort => '反向排序';

  @override
  String get takeFirstLink => '使用第一個連結';

  @override
  String get skipSort => '跳過排序';

  @override
  String get debugMenu => '除錯選單';

  @override
  String get bgTaskStarted => '背景任務已啟動 - 檢查日誌。';

  @override
  String get runBgCheckNow => '立即執行背景更新檢查';

  @override
  String get versionExtractWholePage => '將版本字串提取正則表達式套用於整個頁面';

  @override
  String get installing => '正在安裝';

  @override
  String get skipUpdateNotifications => '跳過更新通知';

  @override
  String get updatesAvailableNotifChannel => '有可用的更新';

  @override
  String get appsUpdatedNotifChannel => '應用程式已更新';

  @override
  String get appsPossiblyUpdatedNotifChannel => '嘗試更新應用程式';

  @override
  String get errorCheckingUpdatesNotifChannel => '檢查更新錯誤';

  @override
  String get appsRemovedNotifChannel => '應用程式已移除';

  @override
  String downloadingXNotifChannel(String arg1) {
    return '正在下載 $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel => '完成應用程式安裝';

  @override
  String get checkingForUpdatesNotifChannel => '正在檢查更新';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => '僅檢查已安裝和僅追蹤的應用程式更新';

  @override
  String get supportFixedAPKURL => '支援固定的 APK 網址';

  @override
  String selectX(String arg1) {
    return '選擇 $arg1';
  }

  @override
  String get parallelDownloads => '允許平行下載';

  @override
  String get useShizuku => '使用 Shizuku 或 Sui 來安裝';

  @override
  String get shizukuBinderNotFound => 'Shizuku 服務未運作';

  @override
  String get shizukuOld => '舊版 Shizuku (<11) - 請更新';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku 在 Android 8.1 以下版本使用 ADB 執行 - 請更新 Android 或改用 Sui';

  @override
  String get shizukuPretendToBeGooglePlay =>
      '設定 Google Play 為安裝來源（如果使用 Shizuku）';

  @override
  String get useSystemFont => '使用系統字型';

  @override
  String get useVersionCodeAsOSVersion => '使用應用程式 versionCode 作為作業系統偵測的版本';

  @override
  String get requestHeader => '請求標頭';

  @override
  String get useLatestAssetDateAsReleaseDate => '使用最新資源上傳日期作為發佈日期';

  @override
  String get defaultPseudoVersioningMethod => '預設偽版本管理方法';

  @override
  String get partialAPKHash => '部分 APK Hash';

  @override
  String get directAPKLink => '直接 APK 連結';

  @override
  String get pseudoVersionInUse => '正在使用偽版本';

  @override
  String get installed => '已安裝';

  @override
  String get latest => '最新';

  @override
  String get invertRegEx => '反轉正則表達式';

  @override
  String get note => '備註';

  @override
  String selfHostedNote(String arg1) {
    return '可使用「$arg1」下拉選單來存取任何來源的自行託管/自訂執行個體。';
  }

  @override
  String get badDownload => '無法解析 APK（不相容或下載不完整）';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      '將新應用程式分享到 AppVerifier（如果可用）';

  @override
  String get appVerifierInstructionToast => '分享至 AppVerifier，然後準備好時回到此處。';

  @override
  String get wiki => '幫助/維基';

  @override
  String get allowInsecure => '允許不安全的 HTTP 請求';

  @override
  String get stayOneVersionBehind => '保持比最新版本落後一個版本';

  @override
  String get useFirstApkOfVersion => '自動選擇多個 APK 的第一個';

  @override
  String get refreshBeforeDownload => '下載前刷新應用程式詳細資訊';

  @override
  String get tencentAppStore => '騰訊應用寶';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo 應用商店 (CN)';

  @override
  String get name => '名稱';

  @override
  String get smartname => '名稱（智慧）';

  @override
  String get sortMethod => '排序方式';

  @override
  String get welcome => '歡迎';

  @override
  String get documentationLinksNote =>
      '下方連結的 Updatium GitHub 頁面包含影片、文章、討論及其他資源，能幫助你瞭解如何使用這款應用程式。';

  @override
  String get batteryOptimizationNote =>
      '請注意，若您在 Updatium 的設定中切換至「前景服務」並／或在作業系統設定中為 Updatium 停用電池最佳化功能，背景下載可能會運作得更穩定。';

  @override
  String fileDeletionError(String arg1) {
    return '刪除文件失敗( 嘗試手動刪除, 然後再次嘗試 ) : “ _% ”';
  }

  @override
  String get foregroundService => '獲取前景服務';

  @override
  String get foregroundServiceExplanation => '使用前景服務進行更新檢查( 更可靠, 消耗更多電源)';

  @override
  String get fgServiceNotice => '此通知用於背景更新檢查( 可以在 OS 設置中隱藏)';

  @override
  String get excludeSecrets => '不包括機密內容';

  @override
  String get includeZips => '包含 ZIP 文件';

  @override
  String get zippedApkFilterRegEx => '在 ZIP 內過濾 APK';

  @override
  String get googleVerificationWarningP1 =>
      'Google 已宣布，自 2026／2027 年起，所有在「通過認證（certified）」的 Android 裝置上執行的應用程式，都必須由開發者直接向 Google 提交個人身分資訊。\n\n之後，Updatium 可能會停止在通過認證的 Android 裝置上運作。';

  @override
  String get googleVerificationWarningP2 =>
      '如需更多資訊，請前往 https://keepandroidopen.org/.';

  @override
  String get googleVerificationWarningP3 =>
      '請注意，從短期來看，Google 表示在其公告引發廣泛反彈後，可能仍可透過其承諾實作的「進階流程（advanced flow）」來安裝「未經驗證」（不符合規範）的應用程式；然而，Google 尚未說明此流程的具體運作方式，因此無法確定它是否能在實務上真正維護使用者的自由。\n\n無論如何，Google 的這項作法，都是朝向終結個人自由、通用運算的一大步。\n\n只要仍被允許持續存在，像 GrapheneOS 這類未通過認證的作業系統，理論上不會受到此政策影響。';

  @override
  String get multipleSigners => '多重簽署者';

  @override
  String get securityDisclaimerTitle => '安全與法律免責聲明';

  @override
  String get license => '授權';

  @override
  String get licenseText => '此應用程式採用 GPL v3 授權條款分發。';

  @override
  String get disclaimer => '免責聲明';

  @override
  String get disclaimerText =>
      '此應用程式不分發、託管或驗證任何外部應用程式。使用者對透過此工具安裝的任何軟體的安全性和合法性承擔全部責任。\n\nhttps://github.com/omeritzics/Updatium 是下載 Updatium 的唯一官方地點 - 強烈建議不要從其他地方下載，因為從非官方來源下載是不安全的。';

  @override
  String get privacy => '隱私';

  @override
  String get privacyText => '此應用程式注重隱私，不收集個人資料。';

  @override
  String get acceptAndContinue => '接受並繼續';

  @override
  String get decline => '拒絕';

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
  String get aPKLinkHash => 'APK 連結 Hash';

  @override
  String get gHReqPrefix => 'GitHub 請求的 \'sky22333/hubproxy\' 實例';

  @override
  String get continueAction => '繼續';
}
