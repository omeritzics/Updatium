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
class TranslationsZh with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZh({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zh,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZh _root = this; // ignore: unused_field

	@override 
	TranslationsZh $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZh(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => '无效的 {} URL';
	@override String get noReleaseFound => '找不到合适的发行版';
	@override String get noVersionFound => '无法确定发行版本号';
	@override String get urlMatchesNoSource => 'URL 与已知的来源不符';
	@override String get cantInstallOlderVersion => '无法安装旧版本的应用';
	@override String get appIdMismatch => '所下载 APK 的应用 ID 与现有应用不一致';
	@override String get functionNotImplemented => '该类未实现此功能';
	@override String get placeholder => '占位符';
	@override String get someErrors => '出现了一些错误';
	@override String get unexpectedError => '意外错误';
	@override String get ok => '好的';
	@override String get and => '和';
	@override String get githubPATLabel => 'GitHub 个人访问令牌';
	@override String get includePrereleases => '包含预发行版';
	@override String get fallbackToOlderReleases => '将过往的发行版作为备选';
	@override String get filterReleaseTitlesByRegEx => '筛选发行标题的正则表达式';
	@override String get invalidRegEx => '无效的正则表达式';
	@override String get noDescription => '无描述';
	@override String get cancel => '取消';
	@override String get kContinue => '继续';
	@override String get requiredInBrackets => '（必填）';
	@override String get dropdownNoOptsError => '错误：下拉菜单必须包含至少一个选项';
	@override String get color => '配色';
	@override String get standard => '标准';
	@override String get custom => '自定义';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => '使用 Material You 配色';
	@override String get githubStarredRepos => '已星标的 GitHub 仓库';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => '用户名';
	@override String get wrongArgNum => '参数数量错误';
	@override String get xIsTrackOnly => '“{}”为“仅追踪”模式';
	@override String get source => '来源';
	@override String get app => '应用';
	@override String get appsFromSourceAreTrackOnly => '此来源的应用为“仅追踪”模式。';
	@override String get youPickedTrackOnly => '您选择了“仅追踪”。';
	@override String get trackOnlyAppDescription => '该应用的更新会被追踪，但 Updatium 无法下载或安装它。';
	@override String get cancelled => '已取消';
	@override String get appAlreadyAdded => '此应用已经添加';
	@override String get alreadyUpToDateQuestion => '应用是否已经为最新版本？';
	@override String get addApp => '添加应用';
	@override String get appSourceURL => '来源 URL';
	@override String get error => '错误';
	@override String get add => '添加';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => '搜索（仅支持部分来源）';
	@override String get search => '搜索';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{} 的更多选项';
	@override String get supportedSources => '支持的来源';
	@override String get trackOnlyInBrackets => '（仅追踪）';
	@override String get searchableInBrackets => '（可搜索）';
	@override String get appsString => '应用列表';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => '无应用';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => '没有符合条件的应用';
	@override String get byX => '开发者：{}';
	@override String get percentProgress => '进度：{}%';
	@override String get pleaseWait => '请稍候';
	@override String get updateAvailable => '更新可用';
	@override String get notInstalled => '未安装';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => '虚拟版本号';
	@override String get selectAll => '全选';
	@override String get deselectX => '取消选择 {}';
	@override String get xWillBeRemovedButRemainInstalled => '“{}”将从 Updatium 中删除，但仍安装在您的设备中。';
	@override String get removeSelectedAppsQuestion => '是否删除选中的应用？';
	@override String get removeSelectedApps => '删除选中的应用';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '更新 {}';
	@override String get installX => '安装 {}';
	@override String get markXTrackOnlyAsUpdated => '将“{}”\n（仅追踪）\n标记为已更新';
	@override String get changeX => '更改 {}';
	@override String get installUpdateApps => '安装/更新应用';
	@override String get installUpdateSelectedApps => '安装/更新选中的应用';
	@override String get markXSelectedAppsAsUpdated => '是否将选中的 {} 个应用标记为已更新？';
	@override String get no => '否';
	@override String get yes => '是';
	@override String get markSelectedAppsUpdated => '将选中的应用标记为已更新';
	@override String get pinToTop => '置顶';
	@override String get unpinFromTop => '取消置顶';
	@override String get resetInstallStatusForSelectedAppsQuestion => '是否重置选中应用的安装状态？';
	@override String get installStatusOfXWillBeResetExplanation => '选中应用的安装状态将会被重置。\n\n当更新安装失败或其他问题导致 Updatium 中的应用版本显示错误时，可以尝试通过此方法解决。';
	@override String get customLinkMessage => '分享链接仅适用于已安装 Updatium 的设备';
	@override String get shareAppConfigLinks => '通过链接分享应用配置';
	@override String get resetInstallStatus => '重置安装状态';
	@override String get more => '更多';
	@override String get removeOutdatedFilter => '删除失效的应用筛选';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => '只显示待更新应用';
	@override String get filter => '筛选';
	@override String get filterApps => '筛选应用';
	@override String get filterDays => 'Filter days';
	@override String get appName => '应用名称';
	@override String get author => '作者';
	@override String get upToDateApps => '无需更新的应用';
	@override String get nonInstalledApps => '未安装的应用';
	@override String get importExport => '导入/导出';
	@override String get settings => '设置';
	@override String get exportedTo => '已导出至 {}';
	@override String get updatiumExport => '导出 Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => '无效的输入';
	@override String get importedX => '已导入 {}';
	@override String get updatiumImport => '导入 Updatium';
	@override String get importFromURLList => '从 URL 列表导入';
	@override String get searchQuery => '搜索查询';
	@override String get appURLList => '应用 URL 列表';
	@override String get line => '行';
	@override String get searchX => '搜索{}';
	@override String get noResults => '无结果';
	@override String get importX => '导入{}';
	@override String get importedAppsIdDisclaimer => '导入的应用可能会错误地显示为“未安装”状态。\n请通过 Updatium 重新安装这些应用来解决此问题。';
	@override String get importErrors => '导入错误';
	@override String get importedXOfYApps => '已导入 {} 中的 {} 个应用。';
	@override String get followingURLsHadErrors => '下列 URL 存在错误：';
	@override String get selectURL => '选择 URL';
	@override String get selectURLs => '选择 URL';
	@override String get pick => '选择';
	@override String get theme => '主题';
	@override String get dark => '深色';
	@override String get light => '浅色';
	@override String get followSystem => '跟随系统';
	@override String get followSystemThemeExplanation => '跟随系统主题仅在使用第三方应用时有效';
	@override String get useBlackTheme => '使用纯黑深色主题';
	@override String get appSortBy => '排序依据';
	@override String get authorName => '作者 / 应用名称';
	@override String get nameAuthor => '应用名称 / 作者';
	@override String get asAdded => '添加次序';
	@override String get appSortOrder => '顺序';
	@override String get ascending => '升序';
	@override String get descending => '降序';
	@override String get bgUpdateCheckInterval => '后台更新检查间隔';
	@override String get neverManualOnly => '手动';
	@override String get appearance => '外观';
	@override String get pinUpdates => '将待更新应用置顶';
	@override String get updates => '更新';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => '来源';
	@override String get appSource => '源代码';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => '无日志';
	@override String get appLogs => '日志';
	@override String get appLogsHint => 'View application logs';
	@override String get close => '关闭';
	@override String get share => '分享';
	@override String get appNotFound => '未找到应用';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => '选择一个 APK 文件';
	@override String get appHasMoreThanOnePackage => '“{}”有多个架构可用：';
	@override String get deviceSupportsXArch => '您的设备支持 {} 架构。';
	@override String get deviceSupportsFollowingArchs => '您的设备支持下列架构：';
	@override String get warning => '警告';
	@override String get sourceIsXButPackageFromYPrompt => '此应用的来源是“{}”，但 APK 文件来自“{}”。是否继续？';
	@override String get updatesAvailable => '更新可用';
	@override String get updatesAvailableNotifDescription => 'Updatium 追踪的应用有更新时发送通知';
	@override String get noNewUpdates => '全部应用已是最新。';
	@override String get xHasAnUpdate => '“{}”可以更新了。';
	@override String get appsUpdated => '应用已更新';
	@override String get appsNotUpdated => '更新应用失败';
	@override String get appsUpdatedNotifDescription => '当应用在后台安装更新时发送通知';
	@override String get xWasUpdatedToY => '“{}”已更新至 {}。';
	@override String get xWasNotUpdatedToY => '未能将 {} 更新为 {}。';
	@override String get errorCheckingUpdates => '检查更新出错';
	@override String get errorCheckingUpdatesNotifDescription => '当后台检查更新失败时显示的通知';
	@override String get appsRemoved => '应用已删除';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => '当应用因加载出错而被删除时发送通知';
	@override String get xWasRemovedDueToErrorY => '“{}”由于以下错误被删除：{}';
	@override String get completeAppInstallation => '完成应用安装';
	@override String get updatiumMustBeOpenToInstallApps => '必须开启 Updatium 才能安装应用';
	@override String get completeAppInstallationNotifDescription => '提示返回 Updatium 以完成应用安装';
	@override String get checkingForUpdates => '正在检查更新';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => '检查更新时短暂显示的通知';
	@override String get pleaseAllowInstallPerm => '请授予 Updatium 安装应用的权限';
	@override String get trackOnly => '仅追踪';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => '{} 错误';
	@override String get versionCorrectionDisabled => '禁用版本号更正（插件似乎未起作用）';
	@override String get unknown => '未知';
	@override String get none => '无';
	@override String get all => '全部';
	@override String get never => '从未';
	@override String get latestVersion => '最新版本';
	@override String get installedVersionX => '当前版本：{}';
	@override String get lastUpdateCheckX => '上次更新检查：{}';
	@override String get remove => '删除';
	@override String get quickLinks => '快速链接';
	@override String get yesMarkUpdated => '是，标记为已更新';
	@override String get fdroid => 'F-Droid 官方存储库';
	@override String get appIdOrName => '应用 ID 或名称';
	@override String get appId => '应用 ID';
	@override String get appWithIdOrNameNotFound => '未找到符合此 ID 或名称的应用';
	@override String get reposHaveMultipleApps => '存储库中可能包含多个应用';
	@override String get fdroidThirdPartyRepo => 'F-Droid 第三方存储库';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => '安装';
	@override String get markInstalled => '标记为已安装';
	@override String get update => '更新';
	@override String get updated => '已更新';
	@override String get markUpdated => '标记为已更新';
	@override String get download => 'Download';
	@override String get additionalOptions => '附加选项';
	@override String get disableVersionDetection => '禁用版本检测';
	@override String get noVersionDetectionExplanation => '此选项应该仅用于无法进行版本检测的应用。';
	@override String get downloadingX => '正在下载 {}';
	@override String get downloadX => '下载 {}';
	@override String get downloadedX => '已下载 {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => '发行文件';
	@override String get downloadNotifDescription => '提示应用的下载进度';
	@override String get noAPKFound => '未找到 APK 文件';
	@override String get noVersionDetection => '禁用版本检测';
	@override String get categorize => '归类';
	@override String get categories => '类别';
	@override String get category => '类别';
	@override String get noCategory => '无类别';
	@override String get noCategories => '无类别';
	@override String get categoryDeleteQuestion => '是否删除选中的类别？';
	@override String get categoryDeleteWarning => '被删除类别下的应用将恢复为未分类状态。';
	@override String get addCategory => '添加类别';
	@override String get label => '标签';
	@override String get language => '语言';
	@override String get copiedToClipboard => '已复制至剪贴板';
	@override String get storagePermissionDenied => '已拒绝授予存储权限';
	@override String get selectedCategorizeWarning => '这将覆盖选中应用当前的类别设置。';
	@override String get filterAPKsByRegEx => '筛选 APK 文件的正则表达式';
	@override String get removeFromUpdatium => '从 Updatium 中删除';
	@override String get uninstallFromDevice => '从设备中卸载';
	@override String get onlyWorksWithNonVersionDetectApps => '仅适用于禁用版本检测的应用。';
	@override String get releaseDateAsVersion => '将发行日期作为版本号';
	@override String get releaseTitleAsVersion => '将发行标题作为版本字符串';
	@override String get releaseDateAsVersionExplanation => '此选项应该仅用于无法进行版本检测但能够获取发行日期的应用。';
	@override String get changes => '更新日志';
	@override String get releaseDate => '发行日期';
	@override String get importFromURLsInFile => '从文件中的 URL 导入（如 OPML）';
	@override String get versionDetectionExplanation => '使发行版本号与应用定义的版本号一致';
	@override String get versionDetection => '版本检测';
	@override String get standardVersionDetection => '常规版本检测';
	@override String get groupByCategory => '按类别分组';
	@override String get listView => '列表视图';
	@override String get gridView => '网格视图';
	@override String get autoApkFilterByArch => '如果可能，尝试按 CPU 架构筛选 APK 文件';
	@override String get autoLinkFilterByArch => '尽可能按设备支持的 CPU 架构筛选链接';
	@override String get overrideSource => '覆盖来源';
	@override String get dontShowAgain => '不再显示';
	@override String get dontShowTrackOnlyWarnings => '忽略“仅追踪”模式警告';
	@override String get dontShowAPKOriginWarnings => '忽略 APK 文件来源警告';
	@override String get moveNonInstalledAppsToBottom => '将未安装应用置底';
	@override String get gitlabPATLabel => 'GitLab 个人访问令牌';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => '关于';
	@override String get requiresCredentialsInSettings => '{}：此功能需要额外的凭据（在“设置”中添加）';
	@override String get checkOnStart => '启动时进行一次检查';
	@override String get safeMode => '安全模式';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => '添加应用在安全模式下已禁用';
	@override String get tryInferAppIdFromCode => '尝试从源代码推断应用 ID';
	@override String get removeOnExternalUninstall => '自动删除列表中已卸载的应用';
	@override String get pickHighestVersionCode => '自动选取内部版本号最高的 APK 文件';
	@override String get checkUpdateOnDetailPage => '打开应用详情页时进行检查';
	@override String get disablePageTransitions => '禁用页面过渡动画效果';
	@override String get reversePageTransitions => '反转页面过渡动画效果';
	@override String get minStarCount => '最小星标数';
	@override String get addInfoBelow => '在下方添加此凭据。';
	@override String get addInfoInSettings => '在“设置”中添加此凭据。';
	@override String get githubSourceNote => '使用访问令牌可避免触发 GitHub 的 API 请求限制。';
	@override String get sortByLastLinkSegment => '仅根据链接的末尾部分进行筛选';
	@override String get filterReleaseNotesByRegEx => '筛选发行说明的正则表达式';
	@override String get customLinkFilterRegex => '筛选自定义来源的 APK 文件链接\n（正则表达式，默认匹配模式为“.apk$”）';
	@override String get appsPossiblyUpdated => '已尝试更新应用';
	@override String get appsPossiblyUpdatedNotifDescription => '当应用已尝试在后台更新时发送通知';
	@override String get xWasPossiblyUpdatedToY => '已尝试将“{}”更新至 {}。';
	@override String get enableBackgroundUpdates => '启用全局后台更新';
	@override String get backgroundUpdateReqsExplanation => '后台更新未必适用于所有的应用。';
	@override String get backgroundUpdateLimitsExplanation => '只有在开启 Updatium 时才能确认是否安装成功。';
	@override String get verifyLatestTag => '验证“Latest”标签';
	@override String get intermediateLinkRegex => '筛选中转链接的正则表达式';
	@override String get filterByLinkText => '根据链接文本进行筛选';
	@override String get matchLinksOutsideATags => '匹配 <a> 标签外的链接';
	@override String get intermediateLinkNotFound => '未找到中转链接';
	@override String get intermediateLink => '中转链接';
	@override String get exemptFromBackgroundUpdates => '禁用后台更新（仅此应用生效，即使已启用全局后台更新）';
	@override String get bgUpdatesOnWiFiOnly => '未连接 Wi-Fi 时禁用后台更新';
	@override String get bgUpdatesWhileChargingOnly => '未充电时禁用后台更新';
	@override String get autoSelectHighestVersionCode => '自动选择内部版本号最高的 APK 文件';
	@override String get versionExtractionRegEx => '提取版本号的正则表达式';
	@override String get trimVersionString => '修剪版本字符串的正则表达式';
	@override String get matchGroupToUseForX => '“{}”中引用的捕获组';
	@override String get matchGroupToUse => '“提取版本字符串的正则表达式”中引用的捕获组';
	@override String get highlightTouchTargets => '突出展示不明显的可交互区域';
	@override String get pickExportDir => '选择导出文件夹';
	@override String get autoExportOnChanges => '数据变更时自动导出';
	@override String get includeSettings => '同时导出应用设置';
	@override String get filterVersionsByRegEx => '筛选版本号的正则表达式';
	@override String get trySelectingSuggestedVersionCode => '尝试选择推荐版本的 APK 文件';
	@override String get dontSortReleasesList => '保持来自 API 的发行顺序';
	@override String get reverseSort => '反转排序';
	@override String get takeFirstLink => '选取第一个链接';
	@override String get skipSort => '不进行排序';
	@override String get debugMenu => '调试选项';
	@override String get bgTaskStarted => '后台任务已启动 - 详见日志';
	@override String get runBgCheckNow => '立即进行后台更新检查';
	@override String get versionExtractWholePage => '将版本号提取规则应用于完整页面';
	@override String get installing => '正在安装';
	@override String get skipUpdateNotifications => '忽略更新通知';
	@override String get updatesAvailableNotifChannel => '更新可用';
	@override String get appsUpdatedNotifChannel => '应用已更新';
	@override String get appsPossiblyUpdatedNotifChannel => '已尝试更新应用';
	@override String get errorCheckingUpdatesNotifChannel => '检查更新出错';
	@override String get appsRemovedNotifChannel => '应用已删除';
	@override String get downloadingXNotifChannel => '正在下载“{}”';
	@override String get completeAppInstallationNotifChannel => '完成应用安装';
	@override String get checkingForUpdatesNotifChannel => '正在检查更新';
	@override String get onlyCheckInstalledOrTrackOnlyApps => '只检查已安装和“仅追踪”的应用';
	@override String get supportFixedAPKURL => '支持固定的 APK 文件链接';
	@override String get selectX => '选择{}';
	@override String get parallelDownloads => '启用并行下载';
	@override String get useShizuku => '使用 Shizuku 或 Sui 安装';
	@override String get shizukuBinderNotFound => '未发现兼容的 Shizuku 服务';
	@override String get shizukuOld => 'Shizuku 版本过低（<11）- 请更新';
	@override String get shizukuOldAndroidWithADB => '正在低版本 Android（<8.1）系统中以 ADB 模式运行 Shizuku - 请更新 Android 系统版本或使用 Sui 代替';
	@override String get shizukuPretendToBeGooglePlay => '将安装来源伪装为 Google Play（需要使用 Shizuku）';
	@override String get useSystemFont => '使用系统字体';
	@override String get useVersionCodeAsOSVersion => '使用内部版本号代替应用定义的版本号';
	@override String get requestHeader => '请求标头';
	@override String get useLatestAssetDateAsReleaseDate => '使用最新文件上传时间作为发行日期';
	@override String get defaultPseudoVersioningMethod => '默认虚拟版本方案';
	@override String get partialAPKHash => 'APK 文件散列值片段';
	@override String get APKLinkHash => 'APK 文件链接散列值';
	@override String get directAPKLink => 'APK 文件直链';
	@override String get pseudoVersionInUse => '正在使用虚拟版本';
	@override String get installedVersion => '当前版本';
	@override String get installed => '当前版本';
	@override String get notInstalledApps => '未安装';
	@override String get latest => '最新版本';
	@override String get invertRegEx => '反转匹配';
	@override String get note => '备注';
	@override String get selfHostedNote => '可以通过“{}”下拉菜单来指向任意来源的自托管/自定义实例。';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => '无法解析 APK 文件（不兼容或文件不完整）';
	@override String get beforeNewInstallsShareToAppVerifier => '通过 AppVerifier 校验新应用（如果可用）';
	@override String get appVerifierInstructionToast => '分享至 AppVerifier，完成后返回此处。';
	@override String get wiki => '帮助/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => '允许不安全的 HTTP 请求';
	@override String get stayOneVersionBehind => '始终延后一个版本进行更新';
	@override String get useFirstApkOfVersion => '存在多个 APK 文件时自动选择第一个';
	@override String get refreshBeforeDownload => '下载前刷新应用详情';
	@override String get tencentAppStore => '腾讯应用宝';
	@override String get coolApk => '酷安';
	@override String get vivoAppStore => '（中国）vivo应用商店';
	@override String get name => '发行名称';
	@override String get smartname => '发行名称（智能）';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => '排序方法';
	@override String get welcome => '欢迎';
	@override String get batteryOptimizationNote => '请注意，在设置中切换为“前台服务”，并/或关闭操作系统对 Updatium 的电池优化，可能会让后台下载更稳定。';
	@override String get fileDeletionError => '删除文件失败（请手动删除后再次尝试）："{}"';
	@override String get foregroundService => 'Updatium 前台服务';
	@override String get foregroundServiceExplanation => '使用前台服务检查更新（更稳定，但也更耗电）';
	@override String get fgServiceNotice => '后台检查更新时需要此通知（可在操作系统设置中隐藏）';
	@override String get excludeSecrets => '排除机密';
	@override String get GHReqPrefix => '用于 GitHub 请求的 "omeritzics/Updatium "实例';
	@override String get includeZips => '包含 ZIP 文件';
	@override String get zippedApkFilterRegEx => '过滤 ZIP 内的 APK';
	@override String get multipleSigners => '多个签名人';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '是否删除应用？',
		other: '是否删除应用？',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '请求过于频繁（API 速率限制）- 请在 {count} 分钟后重试',
		other: '请求过于频繁（API 速率限制）- 请在 {count} 分钟后重试',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '后台更新检查遇到了“{error}”问题，将于 {count} 分钟后重试',
		other: '后台更新检查遇到了“{error}”问题，将于 {count} 分钟后重试',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '后台检查发现 {count} 个应用更新 - 如有需要将发送通知',
		other: '后台检查发现 {count} 个应用更新 - 如有需要将发送通知',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 个应用',
		other: '{count} 个应用',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 个 URL',
		other: '{count} 个 URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 分钟',
		other: '{count} 分钟',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 小时',
		other: '{count} 小时',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 天',
		other: '{count} 天',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '清除了 {n} 条日志（早于 {before}，晚于 {after}）',
		other: '清除了 {n} 条日志（早于 {before}，晚于 {after}）',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '“{app}”和另外 1 个应用可以更新了。',
		other: '“{app}”和另外 {count} 个应用可以更新了。',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '“{app}”和另外 1 个应用已更新。',
		other: '“{app}”和另外 {count} 个应用已更新。',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '“{app}”和另外 1 个应用更新失败。',
		other: '“{app}”和另外 {count} 个应用更新失败。',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '已尝试更新“{app}”和另外 1 个应用。',
		other: '已尝试更新“{app}”和另外 {count} 个应用。',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 个 APK 文件',
		other: '{count} 个 APK 文件',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '证书散列',
		other: 'Hashes 证书',
	);
	@override String get securityDisclaimerTitle => '安全与法律免责声明';
	@override String get license => '许可证';
	@override String get licenseText => '本应用程序采用 GPL v3 许可证分发。';
	@override String get disclaimer => '免责声明';
	@override String get disclaimerText => '本应用程序不分发、托管或验证任何外部应用程序。用户对通过此工具安装的任何软件的安全性和合法性承担全部责任。\n\nhttps://github.com/omeritzics/Updatium 是下载 Updatium 的唯一官方地点 - 强烈建议不要从其他地方下载，因为从非官方来源下载是不安全的。';
	@override String get privacy => '隐私';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => '接受并继续';
	@override String get decline => '拒绝';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => '喜欢使用 Updatium 吗？';
	@override String get githubStarPromptContent => 'Updatium 是一个志愿性的开源社区项目，我在业余时间开发。如果您想支持这个项目，请考虑在 GitHub 上为它加星标，以帮助更多用户和贡献者了解我们。您不会再收到关于此的提醒。提前感谢！:)';
	@override String get githubStarPromptStar => '加星标';
	@override String get githubStarPromptDontShowAgain => '不再显示';
	@override String get sourceCode => '源代码';
	@override String get developedBy => '开发者';
	@override String get appDescription => '一个可定制的Android应用目录，允许您直接从APK源更新应用程序。';
	@override String get safeModeEnabled => '安全模式已启用';
	@override String get safeModeDisabled => '安全模式已禁用';
	@override String get safeModeDisable => '禁用安全模式';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => '安全模式管理';
	@override String get safeModeSetupDescription => '设置密码以启用安全模式。启用后，安全模式将阻止添加新应用，仅可通过密码禁用。';
	@override String get safeModeToggleDescription => '输入密码以启用或禁用安全模式。';
	@override String get safeModeSetPassword => '设置密码';
	@override String get safeModeConfirmPassword => '确认密码';
	@override String get safeModeEnterPassword => '输入密码';
	@override String get safeModePasswordHint => '密码最少 8 个字符';
	@override String get safeModePasswordTooShort => '密码长度必须至少为 8 个字符';
	@override String get safeModePasswordMismatch => '密码不匹配';
	@override String get safeModePasswordIncorrect => '密码不正确';
	@override String get safeModePasswordError => '设置密码出错，请重试。';
	@override String get safeModeEnable => '启用安全模式';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '剩余 {count} 次点击以禁用安全模式';
	@override String get safeModeEnabledHint => '安全模式已启用。点击设置中的版本号多次以禁用。';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => '我知道了';
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

/// The flat map containing all translations for locale <zh>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZh {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => '无效的 {} URL',
			'noReleaseFound' => '找不到合适的发行版',
			'noVersionFound' => '无法确定发行版本号',
			'urlMatchesNoSource' => 'URL 与已知的来源不符',
			'cantInstallOlderVersion' => '无法安装旧版本的应用',
			'appIdMismatch' => '所下载 APK 的应用 ID 与现有应用不一致',
			'functionNotImplemented' => '该类未实现此功能',
			'placeholder' => '占位符',
			'someErrors' => '出现了一些错误',
			'unexpectedError' => '意外错误',
			'ok' => '好的',
			'and' => '和',
			'githubPATLabel' => 'GitHub 个人访问令牌',
			'includePrereleases' => '包含预发行版',
			'fallbackToOlderReleases' => '将过往的发行版作为备选',
			'filterReleaseTitlesByRegEx' => '筛选发行标题的正则表达式',
			'invalidRegEx' => '无效的正则表达式',
			'noDescription' => '无描述',
			'cancel' => '取消',
			'kContinue' => '继续',
			'requiredInBrackets' => '（必填）',
			'dropdownNoOptsError' => '错误：下拉菜单必须包含至少一个选项',
			'color' => '配色',
			'standard' => '标准',
			'custom' => '自定义',
			'primary' => 'Primary',
			'useMaterialYou' => '使用 Material You 配色',
			'githubStarredRepos' => '已星标的 GitHub 仓库',
			'gettingAppInfo' => 'Getting app info',
			'username' => '用户名',
			'wrongArgNum' => '参数数量错误',
			'xIsTrackOnly' => '“{}”为“仅追踪”模式',
			'source' => '来源',
			'app' => '应用',
			'appsFromSourceAreTrackOnly' => '此来源的应用为“仅追踪”模式。',
			'youPickedTrackOnly' => '您选择了“仅追踪”。',
			'trackOnlyAppDescription' => '该应用的更新会被追踪，但 Updatium 无法下载或安装它。',
			'cancelled' => '已取消',
			'appAlreadyAdded' => '此应用已经添加',
			'alreadyUpToDateQuestion' => '应用是否已经为最新版本？',
			'addApp' => '添加应用',
			'appSourceURL' => '来源 URL',
			'error' => '错误',
			'add' => '添加',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => '搜索（仅支持部分来源）',
			'search' => '搜索',
			'searching' => 'Searching',
			'additionalOptsFor' => '{} 的更多选项',
			'supportedSources' => '支持的来源',
			'trackOnlyInBrackets' => '（仅追踪）',
			'searchableInBrackets' => '（可搜索）',
			'appsString' => '应用列表',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => '无应用',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => '没有符合条件的应用',
			'byX' => '开发者：{}',
			'percentProgress' => '进度：{}%',
			'pleaseWait' => '请稍候',
			'updateAvailable' => '更新可用',
			'notInstalled' => '未安装',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => '虚拟版本号',
			'selectAll' => '全选',
			'deselectX' => '取消选择 {}',
			'xWillBeRemovedButRemainInstalled' => '“{}”将从 Updatium 中删除，但仍安装在您的设备中。',
			'removeSelectedAppsQuestion' => '是否删除选中的应用？',
			'removeSelectedApps' => '删除选中的应用',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '更新 {}',
			'installX' => '安装 {}',
			'markXTrackOnlyAsUpdated' => '将“{}”\n（仅追踪）\n标记为已更新',
			'changeX' => '更改 {}',
			'installUpdateApps' => '安装/更新应用',
			'installUpdateSelectedApps' => '安装/更新选中的应用',
			'markXSelectedAppsAsUpdated' => '是否将选中的 {} 个应用标记为已更新？',
			'no' => '否',
			'yes' => '是',
			'markSelectedAppsUpdated' => '将选中的应用标记为已更新',
			'pinToTop' => '置顶',
			'unpinFromTop' => '取消置顶',
			'resetInstallStatusForSelectedAppsQuestion' => '是否重置选中应用的安装状态？',
			'installStatusOfXWillBeResetExplanation' => '选中应用的安装状态将会被重置。\n\n当更新安装失败或其他问题导致 Updatium 中的应用版本显示错误时，可以尝试通过此方法解决。',
			'customLinkMessage' => '分享链接仅适用于已安装 Updatium 的设备',
			'shareAppConfigLinks' => '通过链接分享应用配置',
			'resetInstallStatus' => '重置安装状态',
			'more' => '更多',
			'removeOutdatedFilter' => '删除失效的应用筛选',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => '只显示待更新应用',
			'filter' => '筛选',
			'filterApps' => '筛选应用',
			'filterDays' => 'Filter days',
			'appName' => '应用名称',
			'author' => '作者',
			'upToDateApps' => '无需更新的应用',
			'nonInstalledApps' => '未安装的应用',
			'importExport' => '导入/导出',
			'settings' => '设置',
			'exportedTo' => '已导出至 {}',
			'updatiumExport' => '导出 Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => '无效的输入',
			'importedX' => '已导入 {}',
			'updatiumImport' => '导入 Updatium',
			'importFromURLList' => '从 URL 列表导入',
			'searchQuery' => '搜索查询',
			'appURLList' => '应用 URL 列表',
			'line' => '行',
			'searchX' => '搜索{}',
			'noResults' => '无结果',
			'importX' => '导入{}',
			'importedAppsIdDisclaimer' => '导入的应用可能会错误地显示为“未安装”状态。\n请通过 Updatium 重新安装这些应用来解决此问题。',
			'importErrors' => '导入错误',
			'importedXOfYApps' => '已导入 {} 中的 {} 个应用。',
			'followingURLsHadErrors' => '下列 URL 存在错误：',
			'selectURL' => '选择 URL',
			'selectURLs' => '选择 URL',
			'pick' => '选择',
			'theme' => '主题',
			'dark' => '深色',
			'light' => '浅色',
			'followSystem' => '跟随系统',
			'followSystemThemeExplanation' => '跟随系统主题仅在使用第三方应用时有效',
			'useBlackTheme' => '使用纯黑深色主题',
			'appSortBy' => '排序依据',
			'authorName' => '作者 / 应用名称',
			'nameAuthor' => '应用名称 / 作者',
			'asAdded' => '添加次序',
			'appSortOrder' => '顺序',
			'ascending' => '升序',
			'descending' => '降序',
			'bgUpdateCheckInterval' => '后台更新检查间隔',
			'neverManualOnly' => '手动',
			'appearance' => '外观',
			'pinUpdates' => '将待更新应用置顶',
			'updates' => '更新',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => '来源',
			'appSource' => '源代码',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => '无日志',
			'appLogs' => '日志',
			'appLogsHint' => 'View application logs',
			'close' => '关闭',
			'share' => '分享',
			'appNotFound' => '未找到应用',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => '选择一个 APK 文件',
			'appHasMoreThanOnePackage' => '“{}”有多个架构可用：',
			'deviceSupportsXArch' => '您的设备支持 {} 架构。',
			'deviceSupportsFollowingArchs' => '您的设备支持下列架构：',
			'warning' => '警告',
			'sourceIsXButPackageFromYPrompt' => '此应用的来源是“{}”，但 APK 文件来自“{}”。是否继续？',
			'updatesAvailable' => '更新可用',
			'updatesAvailableNotifDescription' => 'Updatium 追踪的应用有更新时发送通知',
			'noNewUpdates' => '全部应用已是最新。',
			'xHasAnUpdate' => '“{}”可以更新了。',
			'appsUpdated' => '应用已更新',
			'appsNotUpdated' => '更新应用失败',
			'appsUpdatedNotifDescription' => '当应用在后台安装更新时发送通知',
			'xWasUpdatedToY' => '“{}”已更新至 {}。',
			'xWasNotUpdatedToY' => '未能将 {} 更新为 {}。',
			'errorCheckingUpdates' => '检查更新出错',
			'errorCheckingUpdatesNotifDescription' => '当后台检查更新失败时显示的通知',
			'appsRemoved' => '应用已删除',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => '当应用因加载出错而被删除时发送通知',
			'xWasRemovedDueToErrorY' => '“{}”由于以下错误被删除：{}',
			'completeAppInstallation' => '完成应用安装',
			'updatiumMustBeOpenToInstallApps' => '必须开启 Updatium 才能安装应用',
			'completeAppInstallationNotifDescription' => '提示返回 Updatium 以完成应用安装',
			'checkingForUpdates' => '正在检查更新',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => '检查更新时短暂显示的通知',
			'pleaseAllowInstallPerm' => '请授予 Updatium 安装应用的权限',
			'trackOnly' => '仅追踪',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => '{} 错误',
			'versionCorrectionDisabled' => '禁用版本号更正（插件似乎未起作用）',
			'unknown' => '未知',
			'none' => '无',
			'all' => '全部',
			'never' => '从未',
			'latestVersion' => '最新版本',
			'installedVersionX' => '当前版本：{}',
			'lastUpdateCheckX' => '上次更新检查：{}',
			'remove' => '删除',
			'quickLinks' => '快速链接',
			'yesMarkUpdated' => '是，标记为已更新',
			'fdroid' => 'F-Droid 官方存储库',
			'appIdOrName' => '应用 ID 或名称',
			'appId' => '应用 ID',
			'appWithIdOrNameNotFound' => '未找到符合此 ID 或名称的应用',
			'reposHaveMultipleApps' => '存储库中可能包含多个应用',
			'fdroidThirdPartyRepo' => 'F-Droid 第三方存储库',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => '安装',
			'markInstalled' => '标记为已安装',
			'update' => '更新',
			'updated' => '已更新',
			'markUpdated' => '标记为已更新',
			'download' => 'Download',
			'additionalOptions' => '附加选项',
			'disableVersionDetection' => '禁用版本检测',
			'noVersionDetectionExplanation' => '此选项应该仅用于无法进行版本检测的应用。',
			'downloadingX' => '正在下载 {}',
			'downloadX' => '下载 {}',
			'downloadedX' => '已下载 {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => '发行文件',
			'downloadNotifDescription' => '提示应用的下载进度',
			'noAPKFound' => '未找到 APK 文件',
			'noVersionDetection' => '禁用版本检测',
			'categorize' => '归类',
			'categories' => '类别',
			'category' => '类别',
			'noCategory' => '无类别',
			'noCategories' => '无类别',
			'categoryDeleteQuestion' => '是否删除选中的类别？',
			'categoryDeleteWarning' => '被删除类别下的应用将恢复为未分类状态。',
			'addCategory' => '添加类别',
			'label' => '标签',
			'language' => '语言',
			'copiedToClipboard' => '已复制至剪贴板',
			'storagePermissionDenied' => '已拒绝授予存储权限',
			'selectedCategorizeWarning' => '这将覆盖选中应用当前的类别设置。',
			'filterAPKsByRegEx' => '筛选 APK 文件的正则表达式',
			'removeFromUpdatium' => '从 Updatium 中删除',
			'uninstallFromDevice' => '从设备中卸载',
			'onlyWorksWithNonVersionDetectApps' => '仅适用于禁用版本检测的应用。',
			'releaseDateAsVersion' => '将发行日期作为版本号',
			'releaseTitleAsVersion' => '将发行标题作为版本字符串',
			'releaseDateAsVersionExplanation' => '此选项应该仅用于无法进行版本检测但能够获取发行日期的应用。',
			'changes' => '更新日志',
			'releaseDate' => '发行日期',
			'importFromURLsInFile' => '从文件中的 URL 导入（如 OPML）',
			'versionDetectionExplanation' => '使发行版本号与应用定义的版本号一致',
			'versionDetection' => '版本检测',
			'standardVersionDetection' => '常规版本检测',
			'groupByCategory' => '按类别分组',
			'listView' => '列表视图',
			'gridView' => '网格视图',
			'autoApkFilterByArch' => '如果可能，尝试按 CPU 架构筛选 APK 文件',
			'autoLinkFilterByArch' => '尽可能按设备支持的 CPU 架构筛选链接',
			'overrideSource' => '覆盖来源',
			'dontShowAgain' => '不再显示',
			'dontShowTrackOnlyWarnings' => '忽略“仅追踪”模式警告',
			'dontShowAPKOriginWarnings' => '忽略 APK 文件来源警告',
			'moveNonInstalledAppsToBottom' => '将未安装应用置底',
			'gitlabPATLabel' => 'GitLab 个人访问令牌',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => '关于',
			'requiresCredentialsInSettings' => '{}：此功能需要额外的凭据（在“设置”中添加）',
			'checkOnStart' => '启动时进行一次检查',
			'safeMode' => '安全模式',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => '添加应用在安全模式下已禁用',
			'tryInferAppIdFromCode' => '尝试从源代码推断应用 ID',
			'removeOnExternalUninstall' => '自动删除列表中已卸载的应用',
			'pickHighestVersionCode' => '自动选取内部版本号最高的 APK 文件',
			'checkUpdateOnDetailPage' => '打开应用详情页时进行检查',
			'disablePageTransitions' => '禁用页面过渡动画效果',
			'reversePageTransitions' => '反转页面过渡动画效果',
			'minStarCount' => '最小星标数',
			'addInfoBelow' => '在下方添加此凭据。',
			'addInfoInSettings' => '在“设置”中添加此凭据。',
			'githubSourceNote' => '使用访问令牌可避免触发 GitHub 的 API 请求限制。',
			'sortByLastLinkSegment' => '仅根据链接的末尾部分进行筛选',
			'filterReleaseNotesByRegEx' => '筛选发行说明的正则表达式',
			'customLinkFilterRegex' => '筛选自定义来源的 APK 文件链接\n（正则表达式，默认匹配模式为“.apk$”）',
			'appsPossiblyUpdated' => '已尝试更新应用',
			'appsPossiblyUpdatedNotifDescription' => '当应用已尝试在后台更新时发送通知',
			'xWasPossiblyUpdatedToY' => '已尝试将“{}”更新至 {}。',
			'enableBackgroundUpdates' => '启用全局后台更新',
			'backgroundUpdateReqsExplanation' => '后台更新未必适用于所有的应用。',
			'backgroundUpdateLimitsExplanation' => '只有在开启 Updatium 时才能确认是否安装成功。',
			'verifyLatestTag' => '验证“Latest”标签',
			'intermediateLinkRegex' => '筛选中转链接的正则表达式',
			'filterByLinkText' => '根据链接文本进行筛选',
			'matchLinksOutsideATags' => '匹配 <a> 标签外的链接',
			'intermediateLinkNotFound' => '未找到中转链接',
			'intermediateLink' => '中转链接',
			'exemptFromBackgroundUpdates' => '禁用后台更新（仅此应用生效，即使已启用全局后台更新）',
			'bgUpdatesOnWiFiOnly' => '未连接 Wi-Fi 时禁用后台更新',
			'bgUpdatesWhileChargingOnly' => '未充电时禁用后台更新',
			'autoSelectHighestVersionCode' => '自动选择内部版本号最高的 APK 文件',
			'versionExtractionRegEx' => '提取版本号的正则表达式',
			'trimVersionString' => '修剪版本字符串的正则表达式',
			'matchGroupToUseForX' => '“{}”中引用的捕获组',
			'matchGroupToUse' => '“提取版本字符串的正则表达式”中引用的捕获组',
			'highlightTouchTargets' => '突出展示不明显的可交互区域',
			'pickExportDir' => '选择导出文件夹',
			'autoExportOnChanges' => '数据变更时自动导出',
			'includeSettings' => '同时导出应用设置',
			'filterVersionsByRegEx' => '筛选版本号的正则表达式',
			'trySelectingSuggestedVersionCode' => '尝试选择推荐版本的 APK 文件',
			'dontSortReleasesList' => '保持来自 API 的发行顺序',
			'reverseSort' => '反转排序',
			'takeFirstLink' => '选取第一个链接',
			'skipSort' => '不进行排序',
			'debugMenu' => '调试选项',
			'bgTaskStarted' => '后台任务已启动 - 详见日志',
			'runBgCheckNow' => '立即进行后台更新检查',
			'versionExtractWholePage' => '将版本号提取规则应用于完整页面',
			'installing' => '正在安装',
			'skipUpdateNotifications' => '忽略更新通知',
			'updatesAvailableNotifChannel' => '更新可用',
			'appsUpdatedNotifChannel' => '应用已更新',
			'appsPossiblyUpdatedNotifChannel' => '已尝试更新应用',
			'errorCheckingUpdatesNotifChannel' => '检查更新出错',
			'appsRemovedNotifChannel' => '应用已删除',
			'downloadingXNotifChannel' => '正在下载“{}”',
			'completeAppInstallationNotifChannel' => '完成应用安装',
			'checkingForUpdatesNotifChannel' => '正在检查更新',
			'onlyCheckInstalledOrTrackOnlyApps' => '只检查已安装和“仅追踪”的应用',
			'supportFixedAPKURL' => '支持固定的 APK 文件链接',
			'selectX' => '选择{}',
			'parallelDownloads' => '启用并行下载',
			'useShizuku' => '使用 Shizuku 或 Sui 安装',
			'shizukuBinderNotFound' => '未发现兼容的 Shizuku 服务',
			'shizukuOld' => 'Shizuku 版本过低（<11）- 请更新',
			'shizukuOldAndroidWithADB' => '正在低版本 Android（<8.1）系统中以 ADB 模式运行 Shizuku - 请更新 Android 系统版本或使用 Sui 代替',
			'shizukuPretendToBeGooglePlay' => '将安装来源伪装为 Google Play（需要使用 Shizuku）',
			'useSystemFont' => '使用系统字体',
			'useVersionCodeAsOSVersion' => '使用内部版本号代替应用定义的版本号',
			'requestHeader' => '请求标头',
			'useLatestAssetDateAsReleaseDate' => '使用最新文件上传时间作为发行日期',
			'defaultPseudoVersioningMethod' => '默认虚拟版本方案',
			'partialAPKHash' => 'APK 文件散列值片段',
			'APKLinkHash' => 'APK 文件链接散列值',
			'directAPKLink' => 'APK 文件直链',
			'pseudoVersionInUse' => '正在使用虚拟版本',
			'installedVersion' => '当前版本',
			'installed' => '当前版本',
			'notInstalledApps' => '未安装',
			'latest' => '最新版本',
			'invertRegEx' => '反转匹配',
			'note' => '备注',
			'selfHostedNote' => '可以通过“{}”下拉菜单来指向任意来源的自托管/自定义实例。',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => '无法解析 APK 文件（不兼容或文件不完整）',
			'beforeNewInstallsShareToAppVerifier' => '通过 AppVerifier 校验新应用（如果可用）',
			'appVerifierInstructionToast' => '分享至 AppVerifier，完成后返回此处。',
			'wiki' => '帮助/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => '允许不安全的 HTTP 请求',
			'stayOneVersionBehind' => '始终延后一个版本进行更新',
			'useFirstApkOfVersion' => '存在多个 APK 文件时自动选择第一个',
			'refreshBeforeDownload' => '下载前刷新应用详情',
			'tencentAppStore' => '腾讯应用宝',
			'coolApk' => '酷安',
			'vivoAppStore' => '（中国）vivo应用商店',
			'name' => '发行名称',
			'smartname' => '发行名称（智能）',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => '排序方法',
			'welcome' => '欢迎',
			'batteryOptimizationNote' => '请注意，在设置中切换为“前台服务”，并/或关闭操作系统对 Updatium 的电池优化，可能会让后台下载更稳定。',
			'fileDeletionError' => '删除文件失败（请手动删除后再次尝试）："{}"',
			'foregroundService' => 'Updatium 前台服务',
			'foregroundServiceExplanation' => '使用前台服务检查更新（更稳定，但也更耗电）',
			'fgServiceNotice' => '后台检查更新时需要此通知（可在操作系统设置中隐藏）',
			'excludeSecrets' => '排除机密',
			'GHReqPrefix' => '用于 GitHub 请求的 "omeritzics/Updatium "实例',
			'includeZips' => '包含 ZIP 文件',
			'zippedApkFilterRegEx' => '过滤 ZIP 内的 APK',
			'multipleSigners' => '多个签名人',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '是否删除应用？', other: '是否删除应用？', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '请求过于频繁（API 速率限制）- 请在 {count} 分钟后重试', other: '请求过于频繁（API 速率限制）- 请在 {count} 分钟后重试', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '后台更新检查遇到了“{error}”问题，将于 {count} 分钟后重试', other: '后台更新检查遇到了“{error}”问题，将于 {count} 分钟后重试', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '后台检查发现 {count} 个应用更新 - 如有需要将发送通知', other: '后台检查发现 {count} 个应用更新 - 如有需要将发送通知', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 个应用', other: '{count} 个应用', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 个 URL', other: '{count} 个 URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 分钟', other: '{count} 分钟', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 小时', other: '{count} 小时', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 天', other: '{count} 天', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '清除了 {n} 条日志（早于 {before}，晚于 {after}）', other: '清除了 {n} 条日志（早于 {before}，晚于 {after}）', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '“{app}”和另外 1 个应用可以更新了。', other: '“{app}”和另外 {count} 个应用可以更新了。', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '“{app}”和另外 1 个应用已更新。', other: '“{app}”和另外 {count} 个应用已更新。', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '“{app}”和另外 1 个应用更新失败。', other: '“{app}”和另外 {count} 个应用更新失败。', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '已尝试更新“{app}”和另外 1 个应用。', other: '已尝试更新“{app}”和另外 {count} 个应用。', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 个 APK 文件', other: '{count} 个 APK 文件', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '证书散列', other: 'Hashes 证书', ), 
			'securityDisclaimerTitle' => '安全与法律免责声明',
			'license' => '许可证',
			'licenseText' => '本应用程序采用 GPL v3 许可证分发。',
			'disclaimer' => '免责声明',
			'disclaimerText' => '本应用程序不分发、托管或验证任何外部应用程序。用户对通过此工具安装的任何软件的安全性和合法性承担全部责任。\n\nhttps://github.com/omeritzics/Updatium 是下载 Updatium 的唯一官方地点 - 强烈建议不要从其他地方下载，因为从非官方来源下载是不安全的。',
			'privacy' => '隐私',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => '接受并继续',
			'decline' => '拒绝',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => '喜欢使用 Updatium 吗？',
			'githubStarPromptContent' => 'Updatium 是一个志愿性的开源社区项目，我在业余时间开发。如果您想支持这个项目，请考虑在 GitHub 上为它加星标，以帮助更多用户和贡献者了解我们。您不会再收到关于此的提醒。提前感谢！:)',
			'githubStarPromptStar' => '加星标',
			'githubStarPromptDontShowAgain' => '不再显示',
			'sourceCode' => '源代码',
			'developedBy' => '开发者',
			'appDescription' => '一个可定制的Android应用目录，允许您直接从APK源更新应用程序。',
			'safeModeEnabled' => '安全模式已启用',
			'safeModeDisabled' => '安全模式已禁用',
			'safeModeDisable' => '禁用安全模式',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => '安全模式管理',
			'safeModeSetupDescription' => '设置密码以启用安全模式。启用后，安全模式将阻止添加新应用，仅可通过密码禁用。',
			'safeModeToggleDescription' => '输入密码以启用或禁用安全模式。',
			'safeModeSetPassword' => '设置密码',
			'safeModeConfirmPassword' => '确认密码',
			'safeModeEnterPassword' => '输入密码',
			'safeModePasswordHint' => '密码最少 8 个字符',
			'safeModePasswordTooShort' => '密码长度必须至少为 8 个字符',
			'safeModePasswordMismatch' => '密码不匹配',
			'safeModePasswordIncorrect' => '密码不正确',
			'safeModePasswordError' => '设置密码出错，请重试。',
			'safeModeEnable' => '启用安全模式',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '剩余 {count} 次点击以禁用安全模式',
			'safeModeEnabledHint' => '安全模式已启用。点击设置中的版本号多次以禁用。',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => '我知道了',
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
