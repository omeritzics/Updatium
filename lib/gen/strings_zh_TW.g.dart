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
class TranslationsZhTw with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhTw _root = this; // ignore: unused_field

	@override 
	TranslationsZhTw $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhTw(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => '不是有效的 {} 應用程式 URL';
	@override String get noReleaseFound => '找不到合適的版本';
	@override String get noVersionFound => '無法確定版本';
	@override String get urlMatchesNoSource => 'URL 不符合已知來源';
	@override String get cantInstallOlderVersion => '無法安裝舊版本的應用程式';
	@override String get appIdMismatch => '下載的套件 ID 與現有的應用程式 ID 不相符';
	@override String get functionNotImplemented => '此類別尚未實作此功能';
	@override String get placeholder => '佔位字串';
	@override String get someErrors => '發生了一些錯誤';
	@override String get unexpectedError => '意外錯誤';
	@override String get ok => '確定';
	@override String get and => '和';
	@override String get githubPATLabel => 'GitHub 個人存取權杖';
	@override String get includePrereleases => '包含預先釋出版本';
	@override String get fallbackToOlderReleases => '回退到舊版本';
	@override String get filterReleaseTitlesByRegEx => '用正則表達式過濾版本發佈標題';
	@override String get invalidRegEx => '無效的正則表達式';
	@override String get noDescription => '沒有描述';
	@override String get cancel => '取消';
	@override String get kContinue => '繼續';
	@override String get requiredInBrackets => '（必填）';
	@override String get dropdownNoOptsError => '錯誤：下拉選單必須至少有一個選項';
	@override String get color => '顏色';
	@override String get standard => '標準';
	@override String get custom => '自訂';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => '使用 Material You 顏色';
	@override String get githubStarredRepos => 'GitHub 打星星的專案';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => '使用者名稱';
	@override String get wrongArgNum => '提供的參數數量錯誤';
	@override String get xIsTrackOnly => '{} 是僅追蹤';
	@override String get source => '來源';
	@override String get app => '應用程式';
	@override String get appsFromSourceAreTrackOnly => '來自此來源的應用程式是「僅追蹤」。';
	@override String get youPickedTrackOnly => '您已選擇「僅追蹤」選項。';
	@override String get trackOnlyAppDescription => '該應用程式將被追蹤更新，但 Updatium 將無法下載或安裝它。';
	@override String get cancelled => '已取消';
	@override String get appAlreadyAdded => '應用程式已新增';
	@override String get alreadyUpToDateQuestion => '應用程式已經是最新的？';
	@override String get addApp => '新增應用程式';
	@override String get appSourceURL => '應用程式來源 URL';
	@override String get error => '錯誤';
	@override String get add => '新增';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => '搜尋（僅限部分來源）';
	@override String get search => '搜尋';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{} 的其他選項';
	@override String get supportedSources => '支援的來源';
	@override String get trackOnlyInBrackets => '（僅追蹤）';
	@override String get searchableInBrackets => '（可搜尋）';
	@override String get appsString => '應用程式';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => '無應用程式';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => '無符合過濾條件的應用程式';
	@override String get byX => '由 {}';
	@override String get percentProgress => '進度：{}%';
	@override String get pleaseWait => '請稍候';
	@override String get updateAvailable => '有可用的更新';
	@override String get notInstalled => '未安裝';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => '偽版本';
	@override String get selectAll => '全選';
	@override String get deselectX => '取消選取 {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} 將從 Updatium 中移除，但仍然安裝在裝置上。';
	@override String get removeSelectedAppsQuestion => '移除選取的應用程式？';
	@override String get removeSelectedApps => '移除選取的應用程式';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '更新 {}';
	@override String get installX => '安裝 {}';
	@override String get markXTrackOnlyAsUpdated => '標記 {}\n（僅追蹤）\n為已更新';
	@override String get changeX => '更改 {}';
	@override String get installUpdateApps => '安裝/更新應用程式';
	@override String get installUpdateSelectedApps => '安裝/更新選取的應用程式';
	@override String get markXSelectedAppsAsUpdated => '標記 {} 個選取的應用程式為已更新？';
	@override String get no => '否';
	@override String get yes => '是';
	@override String get markSelectedAppsUpdated => '標記選取的應用程式為已更新';
	@override String get pinToTop => '釘選到頂端';
	@override String get unpinFromTop => '取消釘選';
	@override String get resetInstallStatusForSelectedAppsQuestion => '重設選取應用程式的安裝狀態？';
	@override String get installStatusOfXWillBeResetExplanation => '任何選取應用程式的安裝狀態將被重設。\n\n這可以在由於更新失敗或其他問題導致 Updatium 顯示的應用程式版本不正確時有所幫助。';
	@override String get customLinkMessage => '這些連結適用於已安裝 Updatium 的裝置';
	@override String get shareAppConfigLinks => '分享應用程式設定為 HTML 連結';
	@override String get resetInstallStatus => '重設安裝狀態';
	@override String get more => '更多';
	@override String get removeOutdatedFilter => '移除過時應用程式過濾';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => '僅顯示過時的應用程式';
	@override String get filter => '過濾';
	@override String get filterApps => '過濾應用程式';
	@override String get filterDays => 'Filter days';
	@override String get appName => '應用程式名稱';
	@override String get author => '作者';
	@override String get upToDateApps => '最新的應用程式';
	@override String get nonInstalledApps => '未安裝的應用程式';
	@override String get importExport => '匯入/匯出';
	@override String get settings => '設定';
	@override String get exportedTo => '匯出到 {}';
	@override String get updatiumExport => 'Updatium 匯出';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => '無效的輸入';
	@override String get importedX => '已匯入 {}';
	@override String get updatiumImport => 'Updatium 匯入';
	@override String get importFromURLList => '從 URL 清單匯入';
	@override String get searchQuery => '搜尋查詢';
	@override String get appURLList => '應用程式 URL 清單';
	@override String get line => '行';
	@override String get searchX => '搜尋 {}';
	@override String get noResults => '沒有找到結果';
	@override String get importX => '匯入 {}';
	@override String get importedAppsIdDisclaimer => '匯入的應用程式可能會錯誤地顯示為「未安裝」。\n要修正此問題，請透過 Updatium 重新安裝它們。\n這不應該影響應用程式資料。\n\n僅影響 URL 和第三方匯入方法。';
	@override String get importErrors => '匯入錯誤';
	@override String get importedXOfYApps => '已匯入 {} 個中的 {} 個應用程式。';
	@override String get followingURLsHadErrors => '以下 URL 有錯誤：';
	@override String get selectURL => '選擇 URL';
	@override String get selectURLs => '選擇多個 URL';
	@override String get pick => '選取';
	@override String get theme => '主題';
	@override String get dark => '深色';
	@override String get light => '淺色';
	@override String get followSystem => '跟隨系統';
	@override String get followSystemThemeExplanation => '僅使用第三方應用程式時才可跟隨系統主題';
	@override String get useBlackTheme => '使用純黑色深色主題';
	@override String get appSortBy => '應用程式排序依據';
	@override String get authorName => '作者/名稱';
	@override String get nameAuthor => '名稱/作者';
	@override String get asAdded => '新增順序';
	@override String get appSortOrder => '應用程式排序順序';
	@override String get ascending => '升序';
	@override String get descending => '降序';
	@override String get bgUpdateCheckInterval => '背景更新檢查間隔';
	@override String get neverManualOnly => '從不 - 僅手動';
	@override String get appearance => '外觀';
	@override String get pinUpdates => '將更新釘選至應用程式檢視的頂端';
	@override String get updates => '更新';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => '特定來源';
	@override String get appSource => '應用程式來源';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => '無日誌';
	@override String get appLogs => '應用程式日誌';
	@override String get appLogsHint => 'View application logs';
	@override String get close => '關閉';
	@override String get share => '分享';
	@override String get appNotFound => '沒有找到應用程式';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => '選擇一個 APK';
	@override String get appHasMoreThanOnePackage => '{} 有多個套件：';
	@override String get deviceSupportsXArch => '您的裝置支援 {} CPU 架構。';
	@override String get deviceSupportsFollowingArchs => '您的裝置支援以下 CPU 架構：';
	@override String get warning => '警告';
	@override String get sourceIsXButPackageFromYPrompt => '應用程式來源是 「{}」，但發佈套件來自 「{}」。要繼續嗎？';
	@override String get updatesAvailable => '有可用的更新';
	@override String get updatesAvailableNotifDescription => '通知使用者有一個或多個由 Updatium 追蹤的應用程式有更新';
	@override String get noNewUpdates => '沒有新更新。';
	@override String get xHasAnUpdate => '{} 有一個更新。';
	@override String get appsUpdated => '應用程式已更新';
	@override String get appsNotUpdated => '未能更新應用程式';
	@override String get appsUpdatedNotifDescription => '通知使用者一個或多個應用程式的更新已在背景中套用';
	@override String get xWasUpdatedToY => '{} 已更新到 {}。';
	@override String get xWasNotUpdatedToY => '未能將 {} 更新到 {}。';
	@override String get errorCheckingUpdates => '檢查更新時出錯';
	@override String get errorCheckingUpdatesNotifDescription => '背景檢查更新失敗時顯示的通知';
	@override String get appsRemoved => '應用程式已移除';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => '通知使用者由於載入時出錯，一個或多個應用程式已被移除';
	@override String get xWasRemovedDueToErrorY => '{} 已因以下錯誤被移除：{}';
	@override String get completeAppInstallation => '完成應用程式安裝';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium 必須開啟才能安裝應用程式';
	@override String get completeAppInstallationNotifDescription => '請使用者回到 Updatium 以完成應用程式安裝';
	@override String get checkingForUpdates => '正在檢查更新';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => '檢查更新時顯示的暫時性通知';
	@override String get pleaseAllowInstallPerm => '請允許 Updatium 安裝應用程式';
	@override String get trackOnly => '僅追蹤';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => '錯誤 {}';
	@override String get versionCorrectionDisabled => '版本校正已停用（外掛程式似乎無法正常工作）';
	@override String get unknown => '未知';
	@override String get none => '無';
	@override String get all => '全體';
	@override String get never => '從不';
	@override String get latestVersion => '最新版本';
	@override String get installedVersionX => '已安裝版本：{}';
	@override String get lastUpdateCheckX => '上次檢查更新時間：{}';
	@override String get remove => '移除';
	@override String get quickLinks => '快速連結';
	@override String get yesMarkUpdated => '是，標記為已更新';
	@override String get fdroid => 'F-Droid 官方';
	@override String get appIdOrName => '應用程式 ID 或名稱';
	@override String get appId => '應用程式 ID';
	@override String get appWithIdOrNameNotFound => '找不到具有該 ID 或名稱的應用程式';
	@override String get reposHaveMultipleApps => '倉庫可能包含多個應用程式';
	@override String get fdroidThirdPartyRepo => 'F-Droid 第三方倉庫';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => '安裝';
	@override String get markInstalled => '標記為已安裝';
	@override String get update => '更新';
	@override String get updated => '已更新';
	@override String get markUpdated => '標記為已更新';
	@override String get download => 'Download';
	@override String get additionalOptions => '額外選項';
	@override String get disableVersionDetection => '停用版本偵測';
	@override String get noVersionDetectionExplanation => '此選項僅應用於版本偵測無法正確工作的應用程式。';
	@override String get downloadingX => '正在下載 {}';
	@override String get downloadX => '下載 {}';
	@override String get downloadedX => '已下載 {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => '發佈資源';
	@override String get downloadNotifDescription => '通知使用者應用程式下載進度';
	@override String get noAPKFound => '沒有找到 APK';
	@override String get noVersionDetection => '無版本偵測';
	@override String get categorize => '分類';
	@override String get categories => '類別';
	@override String get category => '類別';
	@override String get noCategory => '無類別';
	@override String get noCategories => '無類別';
	@override String get categoryDeleteQuestion => '刪除類別？';
	@override String get categoryDeleteWarning => '所有在已刪除類別中的應用程式將被設定為未分類。';
	@override String get addCategory => '新增類別';
	@override String get label => '標籤';
	@override String get language => '語言';
	@override String get copiedToClipboard => '已複製到剪貼簿';
	@override String get storagePermissionDenied => '存取權限被拒絕';
	@override String get selectedCategorizeWarning => '這將替換選取應用程式的任何現有類別設定。';
	@override String get filterAPKsByRegEx => '用正則表達式過濾 APK';
	@override String get removeFromUpdatium => '從 Updatium 移除';
	@override String get uninstallFromDevice => '從裝置解除安裝';
	@override String get onlyWorksWithNonVersionDetectApps => '僅適用於停用版本偵測的應用程式。';
	@override String get releaseDateAsVersion => '使用發佈日期作為版本字串';
	@override String get releaseTitleAsVersion => '使用發佈標題作為版本字串';
	@override String get releaseDateAsVersionExplanation => '此選項僅應用於版本偵測無法正確工作但有發佈日期的應用程式。';
	@override String get changes => '變更';
	@override String get releaseDate => '發佈日期';
	@override String get importFromURLsInFile => '從檔案中的 URL 匯入（如 OPML）';
	@override String get versionDetectionExplanation => '將版本字串與作業系統偵測到的版本對比';
	@override String get versionDetection => '版本偵測';
	@override String get standardVersionDetection => '標準版本偵測';
	@override String get groupByCategory => '按類別分組';
	@override String get listView => '列表檢視';
	@override String get gridView => '網格檢視';
	@override String get autoApkFilterByArch => '如果可能，嘗試按 CPU 架構過濾 APK';
	@override String get autoLinkFilterByArch => '若可能，自動根據 CPU 架構篩選連結';
	@override String get overrideSource => '覆蓋來源';
	@override String get dontShowAgain => '不要再顯示';
	@override String get dontShowTrackOnlyWarnings => '不要顯示「僅追蹤」警告';
	@override String get dontShowAPKOriginWarnings => '不要顯示 APK 來源警告';
	@override String get moveNonInstalledAppsToBottom => '將未安裝的應用程式移到應用程式檢視的末端';
	@override String get gitlabPATLabel => 'GitLab 個人存取權杖';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => '關於';
	@override String get requiresCredentialsInSettings => '{} 需要額外的憑證（在設定中）';
	@override String get checkOnStart => '啟動時檢查更新';
	@override String get safeMode => '安全模式';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => '新增應用程式在安全模式中已停用';
	@override String get tryInferAppIdFromCode => '嘗試從原始碼推斷應用程式 ID';
	@override String get removeOnExternalUninstall => '自動移除外部解除安裝的應用程式';
	@override String get pickHighestVersionCode => '自動選取最高版本號的 APK';
	@override String get checkUpdateOnDetailPage => '在開啟應用程式詳細頁面時檢查更新';
	@override String get disablePageTransitions => '停用頁面過渡動畫';
	@override String get reversePageTransitions => '反轉頁面過渡動畫';
	@override String get minStarCount => '最少星星數';
	@override String get addInfoBelow => '在下方新增此資訊。';
	@override String get addInfoInSettings => '在設定中增加此資訊。';
	@override String get githubSourceNote => '使用 API 金鑰可以避免 GitHub 的速率限制。';
	@override String get sortByLastLinkSegment => '僅按連結的最後一段排序';
	@override String get filterReleaseNotesByRegEx => '用正則表達式過濾發佈說明';
	@override String get customLinkFilterRegex => '自定 APK 連結過濾正則表達式（預設為 \'.apk$\'）';
	@override String get appsPossiblyUpdated => '嘗試更新應用程式';
	@override String get appsPossiblyUpdatedNotifDescription => '通知使用者一個或多個應用程式的更新可能已在背景中套用';
	@override String get xWasPossiblyUpdatedToY => '{} 可能已更新到 {}。';
	@override String get enableBackgroundUpdates => '啟用背景更新';
	@override String get backgroundUpdateReqsExplanation => '並非所有應用程式都能進行背景更新。';
	@override String get backgroundUpdateLimitsExplanation => '背景安裝的成功與否只能在開啟 Updatium 時確定。';
	@override String get verifyLatestTag => '驗證「最新」標籤';
	@override String get intermediateLinkRegex => '過濾要存取的「中間」連結';
	@override String get filterByLinkText => '按連結文字過濾連結';
	@override String get matchLinksOutsideATags => '匹配 <a> 標籤外的連結';
	@override String get intermediateLinkNotFound => '沒有找到中間連結';
	@override String get intermediateLink => '中間連結';
	@override String get exemptFromBackgroundUpdates => '免除背景更新（若已啟用）';
	@override String get bgUpdatesOnWiFiOnly => '停用非 Wi-Fi 的背景更新';
	@override String get bgUpdatesWhileChargingOnly => '未充電時停用背景更新';
	@override String get autoSelectHighestVersionCode => '自動選擇最高 versionCode 的 APK';
	@override String get versionExtractionRegEx => '版本字串提取正則表達式';
	@override String get trimVersionString => '用正則表達式修剪版本字串';
	@override String get matchGroupToUseForX => '用於「{}」的對應群組';
	@override String get matchGroupToUse => '要用於版本字串提取的對應群組';
	@override String get highlightTouchTargets => '突出顯示不明顯的觸控目標';
	@override String get pickExportDir => '選擇匯出目錄';
	@override String get autoExportOnChanges => '更改時自動匯出';
	@override String get includeSettings => '包含設定';
	@override String get filterVersionsByRegEx => '用正則表達式過濾版本';
	@override String get trySelectingSuggestedVersionCode => '嘗試選擇建議的 versionCode APK';
	@override String get dontSortReleasesList => '保留 API 的發佈順序';
	@override String get reverseSort => '反向排序';
	@override String get takeFirstLink => '使用第一個連結';
	@override String get skipSort => '跳過排序';
	@override String get debugMenu => '除錯選單';
	@override String get bgTaskStarted => '背景任務已啟動 - 檢查日誌。';
	@override String get runBgCheckNow => '立即執行背景更新檢查';
	@override String get versionExtractWholePage => '將版本字串提取正則表達式套用於整個頁面';
	@override String get installing => '正在安裝';
	@override String get skipUpdateNotifications => '跳過更新通知';
	@override String get updatesAvailableNotifChannel => '有可用的更新';
	@override String get appsUpdatedNotifChannel => '應用程式已更新';
	@override String get appsPossiblyUpdatedNotifChannel => '嘗試更新應用程式';
	@override String get errorCheckingUpdatesNotifChannel => '檢查更新錯誤';
	@override String get appsRemovedNotifChannel => '應用程式已移除';
	@override String get downloadingXNotifChannel => '正在下載 {}';
	@override String get completeAppInstallationNotifChannel => '完成應用程式安裝';
	@override String get checkingForUpdatesNotifChannel => '正在檢查更新';
	@override String get onlyCheckInstalledOrTrackOnlyApps => '僅檢查已安裝和僅追蹤的應用程式更新';
	@override String get supportFixedAPKURL => '支援固定的 APK 網址';
	@override String get selectX => '選擇 {}';
	@override String get parallelDownloads => '允許平行下載';
	@override String get useShizuku => '使用 Shizuku 或 Sui 來安裝';
	@override String get shizukuBinderNotFound => 'Shizuku 服務未運作';
	@override String get shizukuOld => '舊版 Shizuku (<11) - 請更新';
	@override String get shizukuOldAndroidWithADB => 'Shizuku 在 Android 8.1 以下版本使用 ADB 執行 - 請更新 Android 或改用 Sui';
	@override String get shizukuPretendToBeGooglePlay => '設定 Google Play 為安裝來源（如果使用 Shizuku）';
	@override String get useSystemFont => '使用系統字型';
	@override String get useVersionCodeAsOSVersion => '使用應用程式 versionCode 作為作業系統偵測的版本';
	@override String get requestHeader => '請求標頭';
	@override String get useLatestAssetDateAsReleaseDate => '使用最新資源上傳日期作為發佈日期';
	@override String get defaultPseudoVersioningMethod => '預設偽版本管理方法';
	@override String get partialAPKHash => '部分 APK Hash';
	@override String get APKLinkHash => 'APK 連結 Hash';
	@override String get directAPKLink => '直接 APK 連結';
	@override String get pseudoVersionInUse => '正在使用偽版本';
	@override String get installedVersion => '已安裝';
	@override String get installed => '已安裝';
	@override String get notInstalledApps => '未安裝';
	@override String get latest => '最新';
	@override String get invertRegEx => '反轉正則表達式';
	@override String get note => '備註';
	@override String get selfHostedNote => '可使用「{}」下拉選單來存取任何來源的自行託管/自訂執行個體。';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => '無法解析 APK（不相容或下載不完整）';
	@override String get beforeNewInstallsShareToAppVerifier => '將新應用程式分享到 AppVerifier（如果可用）';
	@override String get appVerifierInstructionToast => '分享至 AppVerifier，然後準備好時回到此處。';
	@override String get wiki => '幫助/維基';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => '允許不安全的 HTTP 請求';
	@override String get stayOneVersionBehind => '保持比最新版本落後一個版本';
	@override String get useFirstApkOfVersion => '自動選擇多個 APK 的第一個';
	@override String get refreshBeforeDownload => '下載前刷新應用程式詳細資訊';
	@override String get tencentAppStore => '騰訊應用寶';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo 應用商店 (CN)';
	@override String get name => '名稱';
	@override String get smartname => '名稱（智慧）';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => '排序方式';
	@override String get welcome => '歡迎';
	@override String get batteryOptimizationNote => '請注意，若您在 Updatium 的設定中切換至「前景服務」並／或在作業系統設定中為 Updatium 停用電池最佳化功能，背景下載可能會運作得更穩定。';
	@override String get fileDeletionError => '刪除文件失敗( 嘗試手動刪除, 然後再次嘗試 ) : "{}"';
	@override String get foregroundService => '獲取前景服務';
	@override String get foregroundServiceExplanation => '使用前景服務進行更新檢查( 更可靠, 消耗更多電源)';
	@override String get fgServiceNotice => '此通知用於背景更新檢查( 可以在 OS 設置中隱藏)';
	@override String get excludeSecrets => '不包括機密內容';
	@override String get GHReqPrefix => 'GitHub 請求的 \'omeritzics/Updatium\' 實例';
	@override String get includeZips => '包含 ZIP 文件';
	@override String get zippedApkFilterRegEx => '在 ZIP 內過濾 APK';
	@override String get multipleSigners => '多重簽署者';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '移除應用程式？',
		other: '移除應用程式？',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '請求過多（速率限制）- {count} 分鐘後重試',
		other: '請求過多（速率限制）- {count} 分鐘後重試',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '背景更新檢查遇到 {error}，將在 {count} 分鐘後重新檢查',
		other: '背景更新檢查遇到 {error}，將在 {count} 分鐘後重新檢查',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '背景更新檢查發現 {count} 個更新 - 如果需要將通知使用者',
		other: '背景更新檢查發現 {count} 個更新 - 如果需要將通知使用者',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 個應用程式',
		other: '{count} 個應用程式',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 個 URL',
		other: '{count} 個 URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 分鐘',
		other: '{count} 分鐘',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 小時',
		other: '{count} 小時',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 天',
		other: '{count} 天',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '清除 {n} 個日誌（之前 = {before}，之後 = {after}）',
		other: '清除 {n} 個日誌（之前 = {before}，之後 = {after}）',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{app} 和另外 1 個應用程式有更新。',
		other: '{app} 和另外 {count} 個應用程式有更新。',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{app} 和另外 1 個應用程式已更新。',
		other: '{app} 和另外 {count} 個應用程式已更新。',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '更新 {app} 和另外 1 個應用程式失敗。',
		other: '更新 {app} 和另外 {count} 個應用程式失敗。',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{app} 和另外 1 個應用程式可能已更新。',
		other: '{app} 和另外 {count} 個應用程式可能已更新。',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '{count} 個 APK',
		other: '{count} 個 APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n,
		one: '憑證雜湊',
		other: '憑證雜湊',
	);
	@override String get securityDisclaimerTitle => '安全與法律免責聲明';
	@override String get license => '授權';
	@override String get licenseText => '此應用程式採用 GPL v3 授權條款分發。';
	@override String get disclaimer => '免責聲明';
	@override String get disclaimerText => '此應用程式不分發、託管或驗證任何外部應用程式。使用者對透過此工具安裝的任何軟體的安全性和合法性承擔全部責任。\n\nhttps://github.com/omeritzics/Updatium 是下載 Updatium 的唯一官方地點 - 強烈建議不要從其他地方下載，因為從非官方來源下載是不安全的。';
	@override String get privacy => '隱私';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => '接受並繼續';
	@override String get decline => '拒絕';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => '您喜歡使用 Updatium 嗎？';
	@override String get githubStarPromptContent => 'Updatium 是一個自願性的開源社群專案，我在空閒時間開發。如果您想支持這個專案，請考慮在 GitHub 上給它一顆星，以幫助我們接觸更多用戶和貢獻者。您不會再收到關於此事的提醒。提前感謝！:)';
	@override String get githubStarPromptStar => '給星';
	@override String get githubStarPromptDontShowAgain => '不再顯示';
	@override String get sourceCode => '原始碼';
	@override String get developedBy => '開發者';
	@override String get appDescription => '一個可自定義的Android應用程式目錄，允許您直接從APK來源更新應用程式。';
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

/// The flat map containing all translations for locale <zh-TW>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhTw {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => '不是有效的 {} 應用程式 URL',
			'noReleaseFound' => '找不到合適的版本',
			'noVersionFound' => '無法確定版本',
			'urlMatchesNoSource' => 'URL 不符合已知來源',
			'cantInstallOlderVersion' => '無法安裝舊版本的應用程式',
			'appIdMismatch' => '下載的套件 ID 與現有的應用程式 ID 不相符',
			'functionNotImplemented' => '此類別尚未實作此功能',
			'placeholder' => '佔位字串',
			'someErrors' => '發生了一些錯誤',
			'unexpectedError' => '意外錯誤',
			'ok' => '確定',
			'and' => '和',
			'githubPATLabel' => 'GitHub 個人存取權杖',
			'includePrereleases' => '包含預先釋出版本',
			'fallbackToOlderReleases' => '回退到舊版本',
			'filterReleaseTitlesByRegEx' => '用正則表達式過濾版本發佈標題',
			'invalidRegEx' => '無效的正則表達式',
			'noDescription' => '沒有描述',
			'cancel' => '取消',
			'kContinue' => '繼續',
			'requiredInBrackets' => '（必填）',
			'dropdownNoOptsError' => '錯誤：下拉選單必須至少有一個選項',
			'color' => '顏色',
			'standard' => '標準',
			'custom' => '自訂',
			'primary' => 'Primary',
			'useMaterialYou' => '使用 Material You 顏色',
			'githubStarredRepos' => 'GitHub 打星星的專案',
			'gettingAppInfo' => 'Getting app info',
			'username' => '使用者名稱',
			'wrongArgNum' => '提供的參數數量錯誤',
			'xIsTrackOnly' => '{} 是僅追蹤',
			'source' => '來源',
			'app' => '應用程式',
			'appsFromSourceAreTrackOnly' => '來自此來源的應用程式是「僅追蹤」。',
			'youPickedTrackOnly' => '您已選擇「僅追蹤」選項。',
			'trackOnlyAppDescription' => '該應用程式將被追蹤更新，但 Updatium 將無法下載或安裝它。',
			'cancelled' => '已取消',
			'appAlreadyAdded' => '應用程式已新增',
			'alreadyUpToDateQuestion' => '應用程式已經是最新的？',
			'addApp' => '新增應用程式',
			'appSourceURL' => '應用程式來源 URL',
			'error' => '錯誤',
			'add' => '新增',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => '搜尋（僅限部分來源）',
			'search' => '搜尋',
			'searching' => 'Searching',
			'additionalOptsFor' => '{} 的其他選項',
			'supportedSources' => '支援的來源',
			'trackOnlyInBrackets' => '（僅追蹤）',
			'searchableInBrackets' => '（可搜尋）',
			'appsString' => '應用程式',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => '無應用程式',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => '無符合過濾條件的應用程式',
			'byX' => '由 {}',
			'percentProgress' => '進度：{}%',
			'pleaseWait' => '請稍候',
			'updateAvailable' => '有可用的更新',
			'notInstalled' => '未安裝',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => '偽版本',
			'selectAll' => '全選',
			'deselectX' => '取消選取 {}',
			'xWillBeRemovedButRemainInstalled' => '{} 將從 Updatium 中移除，但仍然安裝在裝置上。',
			'removeSelectedAppsQuestion' => '移除選取的應用程式？',
			'removeSelectedApps' => '移除選取的應用程式',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '更新 {}',
			'installX' => '安裝 {}',
			'markXTrackOnlyAsUpdated' => '標記 {}\n（僅追蹤）\n為已更新',
			'changeX' => '更改 {}',
			'installUpdateApps' => '安裝/更新應用程式',
			'installUpdateSelectedApps' => '安裝/更新選取的應用程式',
			'markXSelectedAppsAsUpdated' => '標記 {} 個選取的應用程式為已更新？',
			'no' => '否',
			'yes' => '是',
			'markSelectedAppsUpdated' => '標記選取的應用程式為已更新',
			'pinToTop' => '釘選到頂端',
			'unpinFromTop' => '取消釘選',
			'resetInstallStatusForSelectedAppsQuestion' => '重設選取應用程式的安裝狀態？',
			'installStatusOfXWillBeResetExplanation' => '任何選取應用程式的安裝狀態將被重設。\n\n這可以在由於更新失敗或其他問題導致 Updatium 顯示的應用程式版本不正確時有所幫助。',
			'customLinkMessage' => '這些連結適用於已安裝 Updatium 的裝置',
			'shareAppConfigLinks' => '分享應用程式設定為 HTML 連結',
			'resetInstallStatus' => '重設安裝狀態',
			'more' => '更多',
			'removeOutdatedFilter' => '移除過時應用程式過濾',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => '僅顯示過時的應用程式',
			'filter' => '過濾',
			'filterApps' => '過濾應用程式',
			'filterDays' => 'Filter days',
			'appName' => '應用程式名稱',
			'author' => '作者',
			'upToDateApps' => '最新的應用程式',
			'nonInstalledApps' => '未安裝的應用程式',
			'importExport' => '匯入/匯出',
			'settings' => '設定',
			'exportedTo' => '匯出到 {}',
			'updatiumExport' => 'Updatium 匯出',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => '無效的輸入',
			'importedX' => '已匯入 {}',
			'updatiumImport' => 'Updatium 匯入',
			'importFromURLList' => '從 URL 清單匯入',
			'searchQuery' => '搜尋查詢',
			'appURLList' => '應用程式 URL 清單',
			'line' => '行',
			'searchX' => '搜尋 {}',
			'noResults' => '沒有找到結果',
			'importX' => '匯入 {}',
			'importedAppsIdDisclaimer' => '匯入的應用程式可能會錯誤地顯示為「未安裝」。\n要修正此問題，請透過 Updatium 重新安裝它們。\n這不應該影響應用程式資料。\n\n僅影響 URL 和第三方匯入方法。',
			'importErrors' => '匯入錯誤',
			'importedXOfYApps' => '已匯入 {} 個中的 {} 個應用程式。',
			'followingURLsHadErrors' => '以下 URL 有錯誤：',
			'selectURL' => '選擇 URL',
			'selectURLs' => '選擇多個 URL',
			'pick' => '選取',
			'theme' => '主題',
			'dark' => '深色',
			'light' => '淺色',
			'followSystem' => '跟隨系統',
			'followSystemThemeExplanation' => '僅使用第三方應用程式時才可跟隨系統主題',
			'useBlackTheme' => '使用純黑色深色主題',
			'appSortBy' => '應用程式排序依據',
			'authorName' => '作者/名稱',
			'nameAuthor' => '名稱/作者',
			'asAdded' => '新增順序',
			'appSortOrder' => '應用程式排序順序',
			'ascending' => '升序',
			'descending' => '降序',
			'bgUpdateCheckInterval' => '背景更新檢查間隔',
			'neverManualOnly' => '從不 - 僅手動',
			'appearance' => '外觀',
			'pinUpdates' => '將更新釘選至應用程式檢視的頂端',
			'updates' => '更新',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => '特定來源',
			'appSource' => '應用程式來源',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => '無日誌',
			'appLogs' => '應用程式日誌',
			'appLogsHint' => 'View application logs',
			'close' => '關閉',
			'share' => '分享',
			'appNotFound' => '沒有找到應用程式',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => '選擇一個 APK',
			'appHasMoreThanOnePackage' => '{} 有多個套件：',
			'deviceSupportsXArch' => '您的裝置支援 {} CPU 架構。',
			'deviceSupportsFollowingArchs' => '您的裝置支援以下 CPU 架構：',
			'warning' => '警告',
			'sourceIsXButPackageFromYPrompt' => '應用程式來源是 「{}」，但發佈套件來自 「{}」。要繼續嗎？',
			'updatesAvailable' => '有可用的更新',
			'updatesAvailableNotifDescription' => '通知使用者有一個或多個由 Updatium 追蹤的應用程式有更新',
			'noNewUpdates' => '沒有新更新。',
			'xHasAnUpdate' => '{} 有一個更新。',
			'appsUpdated' => '應用程式已更新',
			'appsNotUpdated' => '未能更新應用程式',
			'appsUpdatedNotifDescription' => '通知使用者一個或多個應用程式的更新已在背景中套用',
			'xWasUpdatedToY' => '{} 已更新到 {}。',
			'xWasNotUpdatedToY' => '未能將 {} 更新到 {}。',
			'errorCheckingUpdates' => '檢查更新時出錯',
			'errorCheckingUpdatesNotifDescription' => '背景檢查更新失敗時顯示的通知',
			'appsRemoved' => '應用程式已移除',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => '通知使用者由於載入時出錯，一個或多個應用程式已被移除',
			'xWasRemovedDueToErrorY' => '{} 已因以下錯誤被移除：{}',
			'completeAppInstallation' => '完成應用程式安裝',
			'updatiumMustBeOpenToInstallApps' => 'Updatium 必須開啟才能安裝應用程式',
			'completeAppInstallationNotifDescription' => '請使用者回到 Updatium 以完成應用程式安裝',
			'checkingForUpdates' => '正在檢查更新',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => '檢查更新時顯示的暫時性通知',
			'pleaseAllowInstallPerm' => '請允許 Updatium 安裝應用程式',
			'trackOnly' => '僅追蹤',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => '錯誤 {}',
			'versionCorrectionDisabled' => '版本校正已停用（外掛程式似乎無法正常工作）',
			'unknown' => '未知',
			'none' => '無',
			'all' => '全體',
			'never' => '從不',
			'latestVersion' => '最新版本',
			'installedVersionX' => '已安裝版本：{}',
			'lastUpdateCheckX' => '上次檢查更新時間：{}',
			'remove' => '移除',
			'quickLinks' => '快速連結',
			'yesMarkUpdated' => '是，標記為已更新',
			'fdroid' => 'F-Droid 官方',
			'appIdOrName' => '應用程式 ID 或名稱',
			'appId' => '應用程式 ID',
			'appWithIdOrNameNotFound' => '找不到具有該 ID 或名稱的應用程式',
			'reposHaveMultipleApps' => '倉庫可能包含多個應用程式',
			'fdroidThirdPartyRepo' => 'F-Droid 第三方倉庫',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => '安裝',
			'markInstalled' => '標記為已安裝',
			'update' => '更新',
			'updated' => '已更新',
			'markUpdated' => '標記為已更新',
			'download' => 'Download',
			'additionalOptions' => '額外選項',
			'disableVersionDetection' => '停用版本偵測',
			'noVersionDetectionExplanation' => '此選項僅應用於版本偵測無法正確工作的應用程式。',
			'downloadingX' => '正在下載 {}',
			'downloadX' => '下載 {}',
			'downloadedX' => '已下載 {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => '發佈資源',
			'downloadNotifDescription' => '通知使用者應用程式下載進度',
			'noAPKFound' => '沒有找到 APK',
			'noVersionDetection' => '無版本偵測',
			'categorize' => '分類',
			'categories' => '類別',
			'category' => '類別',
			'noCategory' => '無類別',
			'noCategories' => '無類別',
			'categoryDeleteQuestion' => '刪除類別？',
			'categoryDeleteWarning' => '所有在已刪除類別中的應用程式將被設定為未分類。',
			'addCategory' => '新增類別',
			'label' => '標籤',
			'language' => '語言',
			'copiedToClipboard' => '已複製到剪貼簿',
			'storagePermissionDenied' => '存取權限被拒絕',
			'selectedCategorizeWarning' => '這將替換選取應用程式的任何現有類別設定。',
			'filterAPKsByRegEx' => '用正則表達式過濾 APK',
			'removeFromUpdatium' => '從 Updatium 移除',
			'uninstallFromDevice' => '從裝置解除安裝',
			'onlyWorksWithNonVersionDetectApps' => '僅適用於停用版本偵測的應用程式。',
			'releaseDateAsVersion' => '使用發佈日期作為版本字串',
			'releaseTitleAsVersion' => '使用發佈標題作為版本字串',
			'releaseDateAsVersionExplanation' => '此選項僅應用於版本偵測無法正確工作但有發佈日期的應用程式。',
			'changes' => '變更',
			'releaseDate' => '發佈日期',
			'importFromURLsInFile' => '從檔案中的 URL 匯入（如 OPML）',
			'versionDetectionExplanation' => '將版本字串與作業系統偵測到的版本對比',
			'versionDetection' => '版本偵測',
			'standardVersionDetection' => '標準版本偵測',
			'groupByCategory' => '按類別分組',
			'listView' => '列表檢視',
			'gridView' => '網格檢視',
			'autoApkFilterByArch' => '如果可能，嘗試按 CPU 架構過濾 APK',
			'autoLinkFilterByArch' => '若可能，自動根據 CPU 架構篩選連結',
			'overrideSource' => '覆蓋來源',
			'dontShowAgain' => '不要再顯示',
			'dontShowTrackOnlyWarnings' => '不要顯示「僅追蹤」警告',
			'dontShowAPKOriginWarnings' => '不要顯示 APK 來源警告',
			'moveNonInstalledAppsToBottom' => '將未安裝的應用程式移到應用程式檢視的末端',
			'gitlabPATLabel' => 'GitLab 個人存取權杖',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => '關於',
			'requiresCredentialsInSettings' => '{} 需要額外的憑證（在設定中）',
			'checkOnStart' => '啟動時檢查更新',
			'safeMode' => '安全模式',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => '新增應用程式在安全模式中已停用',
			'tryInferAppIdFromCode' => '嘗試從原始碼推斷應用程式 ID',
			'removeOnExternalUninstall' => '自動移除外部解除安裝的應用程式',
			'pickHighestVersionCode' => '自動選取最高版本號的 APK',
			'checkUpdateOnDetailPage' => '在開啟應用程式詳細頁面時檢查更新',
			'disablePageTransitions' => '停用頁面過渡動畫',
			'reversePageTransitions' => '反轉頁面過渡動畫',
			'minStarCount' => '最少星星數',
			'addInfoBelow' => '在下方新增此資訊。',
			'addInfoInSettings' => '在設定中增加此資訊。',
			'githubSourceNote' => '使用 API 金鑰可以避免 GitHub 的速率限制。',
			'sortByLastLinkSegment' => '僅按連結的最後一段排序',
			'filterReleaseNotesByRegEx' => '用正則表達式過濾發佈說明',
			'customLinkFilterRegex' => '自定 APK 連結過濾正則表達式（預設為 \'.apk$\'）',
			'appsPossiblyUpdated' => '嘗試更新應用程式',
			'appsPossiblyUpdatedNotifDescription' => '通知使用者一個或多個應用程式的更新可能已在背景中套用',
			'xWasPossiblyUpdatedToY' => '{} 可能已更新到 {}。',
			'enableBackgroundUpdates' => '啟用背景更新',
			'backgroundUpdateReqsExplanation' => '並非所有應用程式都能進行背景更新。',
			'backgroundUpdateLimitsExplanation' => '背景安裝的成功與否只能在開啟 Updatium 時確定。',
			'verifyLatestTag' => '驗證「最新」標籤',
			'intermediateLinkRegex' => '過濾要存取的「中間」連結',
			'filterByLinkText' => '按連結文字過濾連結',
			'matchLinksOutsideATags' => '匹配 <a> 標籤外的連結',
			'intermediateLinkNotFound' => '沒有找到中間連結',
			'intermediateLink' => '中間連結',
			'exemptFromBackgroundUpdates' => '免除背景更新（若已啟用）',
			'bgUpdatesOnWiFiOnly' => '停用非 Wi-Fi 的背景更新',
			'bgUpdatesWhileChargingOnly' => '未充電時停用背景更新',
			'autoSelectHighestVersionCode' => '自動選擇最高 versionCode 的 APK',
			'versionExtractionRegEx' => '版本字串提取正則表達式',
			'trimVersionString' => '用正則表達式修剪版本字串',
			'matchGroupToUseForX' => '用於「{}」的對應群組',
			'matchGroupToUse' => '要用於版本字串提取的對應群組',
			'highlightTouchTargets' => '突出顯示不明顯的觸控目標',
			'pickExportDir' => '選擇匯出目錄',
			'autoExportOnChanges' => '更改時自動匯出',
			'includeSettings' => '包含設定',
			'filterVersionsByRegEx' => '用正則表達式過濾版本',
			'trySelectingSuggestedVersionCode' => '嘗試選擇建議的 versionCode APK',
			'dontSortReleasesList' => '保留 API 的發佈順序',
			'reverseSort' => '反向排序',
			'takeFirstLink' => '使用第一個連結',
			'skipSort' => '跳過排序',
			'debugMenu' => '除錯選單',
			'bgTaskStarted' => '背景任務已啟動 - 檢查日誌。',
			'runBgCheckNow' => '立即執行背景更新檢查',
			'versionExtractWholePage' => '將版本字串提取正則表達式套用於整個頁面',
			'installing' => '正在安裝',
			'skipUpdateNotifications' => '跳過更新通知',
			'updatesAvailableNotifChannel' => '有可用的更新',
			'appsUpdatedNotifChannel' => '應用程式已更新',
			'appsPossiblyUpdatedNotifChannel' => '嘗試更新應用程式',
			'errorCheckingUpdatesNotifChannel' => '檢查更新錯誤',
			'appsRemovedNotifChannel' => '應用程式已移除',
			'downloadingXNotifChannel' => '正在下載 {}',
			'completeAppInstallationNotifChannel' => '完成應用程式安裝',
			'checkingForUpdatesNotifChannel' => '正在檢查更新',
			'onlyCheckInstalledOrTrackOnlyApps' => '僅檢查已安裝和僅追蹤的應用程式更新',
			'supportFixedAPKURL' => '支援固定的 APK 網址',
			'selectX' => '選擇 {}',
			'parallelDownloads' => '允許平行下載',
			'useShizuku' => '使用 Shizuku 或 Sui 來安裝',
			'shizukuBinderNotFound' => 'Shizuku 服務未運作',
			'shizukuOld' => '舊版 Shizuku (<11) - 請更新',
			'shizukuOldAndroidWithADB' => 'Shizuku 在 Android 8.1 以下版本使用 ADB 執行 - 請更新 Android 或改用 Sui',
			'shizukuPretendToBeGooglePlay' => '設定 Google Play 為安裝來源（如果使用 Shizuku）',
			'useSystemFont' => '使用系統字型',
			'useVersionCodeAsOSVersion' => '使用應用程式 versionCode 作為作業系統偵測的版本',
			'requestHeader' => '請求標頭',
			'useLatestAssetDateAsReleaseDate' => '使用最新資源上傳日期作為發佈日期',
			'defaultPseudoVersioningMethod' => '預設偽版本管理方法',
			'partialAPKHash' => '部分 APK Hash',
			'APKLinkHash' => 'APK 連結 Hash',
			'directAPKLink' => '直接 APK 連結',
			'pseudoVersionInUse' => '正在使用偽版本',
			'installedVersion' => '已安裝',
			'installed' => '已安裝',
			'notInstalledApps' => '未安裝',
			'latest' => '最新',
			'invertRegEx' => '反轉正則表達式',
			'note' => '備註',
			'selfHostedNote' => '可使用「{}」下拉選單來存取任何來源的自行託管/自訂執行個體。',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => '無法解析 APK（不相容或下載不完整）',
			'beforeNewInstallsShareToAppVerifier' => '將新應用程式分享到 AppVerifier（如果可用）',
			'appVerifierInstructionToast' => '分享至 AppVerifier，然後準備好時回到此處。',
			'wiki' => '幫助/維基',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => '允許不安全的 HTTP 請求',
			'stayOneVersionBehind' => '保持比最新版本落後一個版本',
			'useFirstApkOfVersion' => '自動選擇多個 APK 的第一個',
			'refreshBeforeDownload' => '下載前刷新應用程式詳細資訊',
			'tencentAppStore' => '騰訊應用寶',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo 應用商店 (CN)',
			'name' => '名稱',
			'smartname' => '名稱（智慧）',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => '排序方式',
			'welcome' => '歡迎',
			'batteryOptimizationNote' => '請注意，若您在 Updatium 的設定中切換至「前景服務」並／或在作業系統設定中為 Updatium 停用電池最佳化功能，背景下載可能會運作得更穩定。',
			'fileDeletionError' => '刪除文件失敗( 嘗試手動刪除, 然後再次嘗試 ) : "{}"',
			'foregroundService' => '獲取前景服務',
			'foregroundServiceExplanation' => '使用前景服務進行更新檢查( 更可靠, 消耗更多電源)',
			'fgServiceNotice' => '此通知用於背景更新檢查( 可以在 OS 設置中隱藏)',
			'excludeSecrets' => '不包括機密內容',
			'GHReqPrefix' => 'GitHub 請求的 \'omeritzics/Updatium\' 實例',
			'includeZips' => '包含 ZIP 文件',
			'zippedApkFilterRegEx' => '在 ZIP 內過濾 APK',
			'multipleSigners' => '多重簽署者',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '移除應用程式？', other: '移除應用程式？', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '請求過多（速率限制）- {count} 分鐘後重試', other: '請求過多（速率限制）- {count} 分鐘後重試', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '背景更新檢查遇到 {error}，將在 {count} 分鐘後重新檢查', other: '背景更新檢查遇到 {error}，將在 {count} 分鐘後重新檢查', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '背景更新檢查發現 {count} 個更新 - 如果需要將通知使用者', other: '背景更新檢查發現 {count} 個更新 - 如果需要將通知使用者', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 個應用程式', other: '{count} 個應用程式', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 個 URL', other: '{count} 個 URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 分鐘', other: '{count} 分鐘', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 小時', other: '{count} 小時', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 天', other: '{count} 天', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '清除 {n} 個日誌（之前 = {before}，之後 = {after}）', other: '清除 {n} 個日誌（之前 = {before}，之後 = {after}）', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{app} 和另外 1 個應用程式有更新。', other: '{app} 和另外 {count} 個應用程式有更新。', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{app} 和另外 1 個應用程式已更新。', other: '{app} 和另外 {count} 個應用程式已更新。', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '更新 {app} 和另外 1 個應用程式失敗。', other: '更新 {app} 和另外 {count} 個應用程式失敗。', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{app} 和另外 1 個應用程式可能已更新。', other: '{app} 和另外 {count} 個應用程式可能已更新。', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '{count} 個 APK', other: '{count} 個 APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('zh'))(n, one: '憑證雜湊', other: '憑證雜湊', ), 
			'securityDisclaimerTitle' => '安全與法律免責聲明',
			'license' => '授權',
			'licenseText' => '此應用程式採用 GPL v3 授權條款分發。',
			'disclaimer' => '免責聲明',
			'disclaimerText' => '此應用程式不分發、託管或驗證任何外部應用程式。使用者對透過此工具安裝的任何軟體的安全性和合法性承擔全部責任。\n\nhttps://github.com/omeritzics/Updatium 是下載 Updatium 的唯一官方地點 - 強烈建議不要從其他地方下載，因為從非官方來源下載是不安全的。',
			'privacy' => '隱私',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => '接受並繼續',
			'decline' => '拒絕',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => '您喜歡使用 Updatium 嗎？',
			'githubStarPromptContent' => 'Updatium 是一個自願性的開源社群專案，我在空閒時間開發。如果您想支持這個專案，請考慮在 GitHub 上給它一顆星，以幫助我們接觸更多用戶和貢獻者。您不會再收到關於此事的提醒。提前感謝！:)',
			'githubStarPromptStar' => '給星',
			'githubStarPromptDontShowAgain' => '不再顯示',
			'sourceCode' => '原始碼',
			'developedBy' => '開發者',
			'appDescription' => '一個可自定義的Android應用程式目錄，允許您直接從APK來源更新應用程式。',
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
