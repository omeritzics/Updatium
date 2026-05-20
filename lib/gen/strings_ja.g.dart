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
class TranslationsJa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => '{}は有効なソースURLではありません';
	@override String get noReleaseFound => '適切なリリースが見つかりませんでした';
	@override String get noVersionFound => 'リリースバージョンを特定できませんでした';
	@override String get urlMatchesNoSource => 'URLが既知のソースと一致しません';
	@override String get cantInstallOlderVersion => '旧バージョンのアプリをインストールできません';
	@override String get appIdMismatch => 'ダウンロードしたパッケージのIDが既存のApp IDと一致しません';
	@override String get functionNotImplemented => 'このクラスはこの機能を実装していません';
	@override String get placeholder => 'プレースホルダー';
	@override String get someErrors => '何らかのエラーが発生しました';
	@override String get unexpectedError => '予期せぬエラーが発生しました';
	@override String get ok => 'OK';
	@override String get and => 'と';
	@override String get githubPATLabel => 'GitHub パーソナルアクセストークン';
	@override String get includePrereleases => 'プレリリースを含む';
	@override String get fallbackToOlderReleases => '旧リリースへのフォールバック';
	@override String get filterReleaseTitlesByRegEx => '正規表現でリリースタイトルをフィルタリングする';
	@override String get invalidRegEx => '無効な正規表現';
	@override String get noDescription => '説明はありません';
	@override String get cancel => 'キャンセル';
	@override String get kContinue => '続行';
	@override String get requiredInBrackets => '(必須)';
	@override String get dropdownNoOptsError => 'エラー: ドロップダウンには、少なくとも1つのオプションが必要です';
	@override String get color => 'カラー';
	@override String get standard => 'スタンダード';
	@override String get custom => 'カスタム';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material Youのカラーを使用';
	@override String get githubStarredRepos => 'GitHubでスターしたリポジトリ';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'ユーザー名';
	@override String get wrongArgNum => '引数の数が間違っています';
	@override String get xIsTrackOnly => '{} は「追跡のみ」です';
	@override String get source => 'ソース';
	@override String get app => 'アプリ';
	@override String get appsFromSourceAreTrackOnly => 'このソースからのアプリは「追跡のみ」です。';
	@override String get youPickedTrackOnly => '「追跡のみ」を選択しています';
	@override String get trackOnlyAppDescription => 'アプリのアップデートは追跡されますが、Updatiumはアプリのダウンロードやインストールはできません。';
	@override String get cancelled => 'キャンセルしました';
	@override String get appAlreadyAdded => 'アプリはすでに追加されています';
	@override String get alreadyUpToDateQuestion => 'アプリはすでに最新ですか？';
	@override String get addApp => 'アプリの追加';
	@override String get appSourceURL => 'アプリのソースURL';
	@override String get error => 'エラー';
	@override String get add => '追加';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => '検索 (一部ソースのみ)';
	@override String get search => '検索';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{}の追加オプション';
	@override String get supportedSources => '対応するソース';
	@override String get trackOnlyInBrackets => '(追跡のみ)';
	@override String get searchableInBrackets => '(検索可能)';
	@override String get appsString => 'アプリ';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'ようこそ！';
	@override String get noAppsSubtext => '下の「アプリを追加」をタップして、最初のアプリを追加できます。';
	@override String get noAppsForFilter => 'フィルターに一致するアプリはありません';
	@override String get byX => 'by {}';
	@override String get percentProgress => 'ダウンロード中: {}%';
	@override String get pleaseWait => 'しばらくお待ちください';
	@override String get updateAvailable => 'アップデートが利用可能';
	@override String get notInstalled => '未インストール';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => '疑似バージョン';
	@override String get selectAll => 'すべて選択';
	@override String get deselectX => '{} 件の選択を解除';
	@override String get xWillBeRemovedButRemainInstalled => '{} はUpdatiumから削除されますが、デバイスにはインストールされたままです。';
	@override String get removeSelectedAppsQuestion => '選択したアプリを削除しますか？';
	@override String get removeSelectedApps => '選択したアプリを削除する';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} をアップデートする';
	@override String get installX => '{} をインストールする';
	@override String get markXTrackOnlyAsUpdated => '{}\n(追跡のみ)\nをアップデート済みとしてマークする';
	@override String get changeX => '{} を変更する';
	@override String get installUpdateApps => 'アプリのインストール/アップデート';
	@override String get installUpdateSelectedApps => '選択したアプリのインストール/アップデート';
	@override String get markXSelectedAppsAsUpdated => '{}個の選択したアプリをアップデート済みとしてマークしますか？';
	@override String get no => 'いいえ';
	@override String get yes => 'はい';
	@override String get markSelectedAppsUpdated => '選択したアプリをアップデート済みとしてマークする';
	@override String get pinToTop => 'トップに固定';
	@override String get unpinFromTop => 'トップから固定解除';
	@override String get resetInstallStatusForSelectedAppsQuestion => '選択したアプリのインストール状態をリセットしますか？';
	@override String get installStatusOfXWillBeResetExplanation => '選択したアプリのインストール状態がリセットされます。\n\nアップデートに失敗した場合など、Updatiumに表示されるアプリのバージョンが正しくない場合に役立ちます。';
	@override String get customLinkMessage => 'これらのリンクはUpdatiumがインストールされたデバイスで動作します';
	@override String get shareAppConfigLinks => 'アプリの設定をHTMLリンクとして共有する';
	@override String get resetInstallStatus => 'インストール状態をリセットする';
	@override String get more => 'その他';
	@override String get removeOutdatedFilter => 'アップデートが存在するアプリのフィルターを解除';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'アップデートが存在するアプリのみ表示する';
	@override String get filter => 'フィルター';
	@override String get filterApps => 'アプリをフィルタリングする';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'アプリ名';
	@override String get author => '作者';
	@override String get upToDateApps => '最新のアプリ';
	@override String get nonInstalledApps => '未インストールのアプリ';
	@override String get importExport => 'インポート/エクスポート';
	@override String get settings => '設定';
	@override String get exportedTo => '{} にエクスポートしました';
	@override String get updatiumExport => 'Updatium エクスポート';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => '無効な入力';
	@override String get importedX => '{} をインポートしました';
	@override String get updatiumImport => 'Updatium インポート';
	@override String get importFromURLList => 'URLリストからのインポート';
	@override String get searchQuery => '検索キーワード';
	@override String get appURLList => 'アプリのURLリスト';
	@override String get line => '行';
	@override String get searchX => '{} で検索';
	@override String get noResults => '結果は見つかりませんでした';
	@override String get importX => '{} をインポート';
	@override String get importedAppsIdDisclaimer => 'インポートしたアプリが「未インストール」と表示されることがあります。\nこの問題を解決するには、Updatiumから再インストールしてください。\nアプリのデータには影響しません。\n\nURLとサードパーティのインポートメソッドにのみ影響します。';
	@override String get importErrors => 'インポートエラー';
	@override String get importedXOfYApps => '{} / {} アプリをインポートしました';
	@override String get followingURLsHadErrors => '以下のURLでエラーが発生しました:';
	@override String get selectURL => 'URLを選択';
	@override String get selectURLs => 'URLを選択';
	@override String get pick => '選択';
	@override String get theme => 'テーマ';
	@override String get dark => 'ダーク';
	@override String get light => 'ライト';
	@override String get followSystem => 'システムに従う';
	@override String get followSystemThemeExplanation => 'システムテーマへの追従は、サードパーティのアプリケーションを使用することのみで可能です';
	@override String get useBlackTheme => 'ピュアブラックダークテーマを使用する';
	@override String get appSortBy => 'アプリの並び方';
	@override String get authorName => '作者名/アプリ名';
	@override String get nameAuthor => 'アプリ名/作者名';
	@override String get asAdded => '追加順';
	@override String get appSortOrder => '並び順';
	@override String get ascending => '昇順';
	@override String get descending => '降順';
	@override String get bgUpdateCheckInterval => 'バックグラウンドでのアップデート確認の間隔';
	@override String get neverManualOnly => '手動のみ';
	@override String get appearance => '外観';
	@override String get pinUpdates => 'アップデートがあるアプリをトップに固定する';
	@override String get updates => 'アップデート';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'ソース別の設定';
	@override String get appSource => 'アプリのソース';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'ログはありません';
	@override String get appLogs => 'アプリのログ';
	@override String get appLogsHint => 'View application logs';
	@override String get close => '閉じる';
	@override String get share => '共有';
	@override String get appNotFound => 'アプリが見つかりません';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-エクスポート';
	@override String get pickAnAPK => 'APKを選択';
	@override String get appHasMoreThanOnePackage => '{} は複数のパッケージが存在します: ';
	@override String get deviceSupportsXArch => 'お使いのデバイスは {} CPUアーキテクチャに対応しています。';
	@override String get deviceSupportsFollowingArchs => 'お使いのデバイスは、以下のCPUアーキテクチャをサポートしています:';
	@override String get warning => '警告';
	@override String get sourceIsXButPackageFromYPrompt => 'アプリのソースは\'{}\'ですが、リリースパッケージは\'{}\'からダウンロードされます。続行しますか？';
	@override String get updatesAvailable => 'アップデートが利用可能';
	@override String get updatesAvailableNotifDescription => 'Updatiumが追跡している1つまたは複数のアプリのアップデートが利用可能であることをユーザーに通知する';
	@override String get noNewUpdates => '新しいアップデートはありません。';
	@override String get xHasAnUpdate => '{} のアップデートが利用可能です。';
	@override String get appsUpdated => 'アプリをアップデートしました';
	@override String get appsNotUpdated => 'アプリのアップデートに失敗しました';
	@override String get appsUpdatedNotifDescription => '1つまたは複数のアプリのアップデートがバックグラウンドで適用されたことをユーザーに通知する';
	@override String get xWasUpdatedToY => '{} が {} にアップデートされました';
	@override String get xWasNotUpdatedToY => '{} の {} へのアップデートに失敗しました';
	@override String get errorCheckingUpdates => 'アップデート確認中のエラー';
	@override String get errorCheckingUpdatesNotifDescription => 'バックグラウンドでのアップデート確認に失敗した際に表示される通知';
	@override String get appsRemoved => '削除されたアプリ';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'アプリの読み込み中にエラーが発生したため、1つまたは複数のアプリが削除されたことをユーザーに通知する';
	@override String get xWasRemovedDueToErrorY => '次のエラーのため、{} は削除されました: {}';
	@override String get completeAppInstallation => 'アプリのインストールを完了する';
	@override String get updatiumMustBeOpenToInstallApps => 'アプリをインストールするにはUpdatiumを開く必要があります';
	@override String get completeAppInstallationNotifDescription => 'アプリのインストールを完了するために、Updatiumに戻る必要があります';
	@override String get checkingForUpdates => 'アップデートを確認中';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'アップデートを確認する際に表示される一時的な通知';
	@override String get pleaseAllowInstallPerm => 'Updatiumによるアプリのインストールを許可してください';
	@override String get trackOnly => '追跡のみ';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'エラー {}';
	@override String get versionCorrectionDisabled => 'バージョン補正無効 (プラグインが動作していません)';
	@override String get unknown => '不明';
	@override String get none => 'なし';
	@override String get all => 'すべて';
	@override String get never => 'しない';
	@override String get latestVersion => '最新';
	@override String get installedVersionX => 'インストール済み: {}';
	@override String get lastUpdateCheckX => '最終アップデート確認: {}';
	@override String get remove => '削除';
	@override String get quickLinks => 'クイックリンク';
	@override String get yesMarkUpdated => 'はい、アップデート済みとしてマークします';
	@override String get fdroid => 'F-Droid公式';
	@override String get appIdOrName => 'アプリのIDまたは名前';
	@override String get appId => 'アプリID';
	@override String get appWithIdOrNameNotFound => 'そのIDや名前を持つアプリは見つかりませんでした';
	@override String get reposHaveMultipleApps => 'リポジトリには複数のアプリが含まれることがあります';
	@override String get fdroidThirdPartyRepo => 'F-Droid サードパーティリポジトリ';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'インストール';
	@override String get markInstalled => 'インストール済みとしてマークする';
	@override String get update => 'アップデート';
	@override String get updated => '更新済み';
	@override String get markUpdated => 'アップデート済みとしてマークする';
	@override String get download => 'Download';
	@override String get additionalOptions => '追加のオプション';
	@override String get disableVersionDetection => 'バージョン検出を無効にする';
	@override String get noVersionDetectionExplanation => 'このオプションは、バージョン検出が正しく機能しないアプリにのみ使用する必要があります。';
	@override String get downloadingX => '{} をダウンロード中';
	@override String get downloadX => '{} をダウンロード';
	@override String get downloadedX => '{} をダウンロードしました';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'リリースアセット';
	@override String get downloadNotifDescription => 'アプリのダウンロード状況を通知する';
	@override String get noAPKFound => 'APKが見つかりません';
	@override String get noVersionDetection => 'バージョン検出を行わない';
	@override String get categorize => 'カテゴライズ';
	@override String get categories => 'カテゴリ';
	@override String get category => 'カテゴリ';
	@override String get noCategory => 'カテゴリなし';
	@override String get noCategories => 'カテゴリなし';
	@override String get categoryDeleteQuestion => 'カテゴリを削除しますか？';
	@override String get categoryDeleteWarning => '削除されたカテゴリ内のアプリは未分類に設定されます。';
	@override String get addCategory => 'カテゴリを追加';
	@override String get label => 'ラベル';
	@override String get language => '言語';
	@override String get copiedToClipboard => 'クリップボードにコピーしました';
	@override String get storagePermissionDenied => 'ストレージ権限が拒否されました';
	@override String get selectedCategorizeWarning => 'これにより、選択したアプリの既存のカテゴリ設定がすべて置き換えられます。';
	@override String get filterAPKsByRegEx => '正規表現でAPKをフィルタリングする';
	@override String get removeFromUpdatium => 'Updatiumから削除する';
	@override String get uninstallFromDevice => 'デバイスからアンインストールする';
	@override String get onlyWorksWithNonVersionDetectApps => 'バージョン検出を無効にしているアプリにのみ動作します。';
	@override String get releaseDateAsVersion => 'リリース日をバージョンとして使用する';
	@override String get releaseTitleAsVersion => 'リリースタイトルをバージョンとして使用する';
	@override String get releaseDateAsVersionExplanation => 'このオプションは、バージョン検出が正しく機能しないアプリで、リリース日が利用可能な場合にのみ使用する必要があります。';
	@override String get changes => '変更点';
	@override String get releaseDate => 'リリース日';
	@override String get importFromURLsInFile => 'ファイル（OPMLなど）内のURLからインポート';
	@override String get versionDetectionExplanation => 'バージョン文字列をOSが検出したバージョンと照合する';
	@override String get versionDetection => 'バージョン検出';
	@override String get standardVersionDetection => '標準のバージョン検出';
	@override String get groupByCategory => 'カテゴリー別にグループ化';
	@override String get listView => 'リスト表示';
	@override String get gridView => 'グリッド表示';
	@override String get autoApkFilterByArch => '可能であれば、CPUアーキテクチャによるAPKのフィルタリングを試みる';
	@override String get autoLinkFilterByArch => '可能であれば、CPUアーキテクチャによるリンクのフィルタリングを試みる';
	@override String get overrideSource => 'ソースの上書き';
	@override String get dontShowAgain => '二度と表示しない';
	@override String get dontShowTrackOnlyWarnings => '「追跡のみ」の警告を表示しない';
	@override String get dontShowAPKOriginWarnings => 'APKのダウンロード元の警告を表示しない';
	@override String get moveNonInstalledAppsToBottom => '未インストールのアプリをアプリ一覧の下部に移動させる';
	@override String get gitlabPATLabel => 'GitLab パーソナルアクセストークン';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'について';
	@override String get requiresCredentialsInSettings => '{}: これには追加の認証が必要です (設定にて)';
	@override String get checkOnStart => '起動時にアップデートを確認する';
	@override String get safeMode => 'セーフモード';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'アプリ追加はセーフモードで無効になっています';
	@override String get tryInferAppIdFromCode => 'ソースコードからアプリIDを推測しようとする';
	@override String get removeOnExternalUninstall => '外部でアンインストールされたアプリを自動的に削除する';
	@override String get pickHighestVersionCode => '最も高いバージョンコードのAPKを自動的に選択する';
	@override String get checkUpdateOnDetailPage => 'アプリの詳細ページを開く際にアップデートを確認する';
	@override String get disablePageTransitions => 'ページ遷移アニメーションを無効化する';
	@override String get reversePageTransitions => 'ページ遷移アニメーションを反転する';
	@override String get minStarCount => '最小スター数';
	@override String get addInfoBelow => '以下にこの情報を追加してください。';
	@override String get addInfoInSettings => '設定でこの情報を追加してください。';
	@override String get githubSourceNote => 'GitHubのレート制限はAPIキーを使うことで回避できます。';
	@override String get sortByLastLinkSegment => 'リンクの最後のセグメントのみでソートする';
	@override String get filterReleaseNotesByRegEx => '正規表現でリリースノートをフィルタリングする';
	@override String get customLinkFilterRegex => '正規表現によるカスタムリンクフィルター (デフォルト \'.apk$\')';
	@override String get appsPossiblyUpdated => 'アプリのアップデートを試行';
	@override String get appsPossiblyUpdatedNotifDescription => '1つまたは複数のアプリのアップデートがバックグラウンドで適用された可能性があることをユーザーに通知する';
	@override String get xWasPossiblyUpdatedToY => '{} が {} にアップデートされた可能性があります。';
	@override String get enableBackgroundUpdates => 'バックグラウンドアップデートを有効化する';
	@override String get backgroundUpdateReqsExplanation => 'バックグラウンドアップデートは、すべてのアプリで利用できるとは限りません。';
	@override String get backgroundUpdateLimitsExplanation => 'バックグラウンドアップデートが成功したかどうかは、Updatiumを起動したときにしか判断できません。';
	@override String get verifyLatestTag => '\'latest\'タグを確認する';
	@override String get intermediateLinkRegex => '訪問する「中間」リンクのフィルター';
	@override String get filterByLinkText => 'テキストでリンクをフィルタリングする';
	@override String get matchLinksOutsideATags => '<a>タグの外にあるリンクに一致させる';
	@override String get intermediateLinkNotFound => '中間リンクが見つかりませんでした';
	@override String get intermediateLink => '中間リンク';
	@override String get exemptFromBackgroundUpdates => 'バックグラウンドアップデートを行わない (有効な場合)';
	@override String get bgUpdatesOnWiFiOnly => 'Wi-Fiに接続していない場合、バックグラウンドアップデートを無効にする';
	@override String get bgUpdatesWhileChargingOnly => '非充電時にバックグラウンドアップデートを無効にする';
	@override String get autoSelectHighestVersionCode => '最も高いバージョンコードのAPKを自動で選択する';
	@override String get versionExtractionRegEx => 'バージョン抽出の正規表現';
	@override String get trimVersionString => '正規表現でバージョン文字列をトリムする';
	@override String get matchGroupToUseForX => '"{}"に使用するマッチしたグループ';
	@override String get matchGroupToUse => 'バージョン抽出に使用するマッチしたグループ';
	@override String get highlightTouchTargets => '目立たないタップ可能な対象をハイライトする';
	@override String get pickExportDir => 'エクスポートディレクトリを選択';
	@override String get autoExportOnChanges => '変更があった際に自動でエクスポートする';
	@override String get includeSettings => '設定を含む';
	@override String get filterVersionsByRegEx => '正規表現でバージョンをフィルタリングする';
	@override String get trySelectingSuggestedVersionCode => '提案されたバージョンコードのAPKを選択する';
	@override String get dontSortReleasesList => 'APIからのリリース順を保持する';
	@override String get reverseSort => '逆順ソート';
	@override String get takeFirstLink => '最初のリンクを取得する';
	@override String get skipSort => 'ソートをスキップする';
	@override String get debugMenu => 'デバッグメニュー';
	@override String get bgTaskStarted => 'バックグラウンドタスクが開始されました - ログを確認してください。';
	@override String get runBgCheckNow => '今すぐバックグラウンドでのアップデート確認を開始する';
	@override String get versionExtractWholePage => 'バージョン抽出の正規表現をページ全体に適用する';
	@override String get installing => 'インストール中';
	@override String get skipUpdateNotifications => 'アップデート通知を行わない';
	@override String get updatesAvailableNotifChannel => 'アップデートが利用可能';
	@override String get appsUpdatedNotifChannel => 'アプリをアップデートしました';
	@override String get appsPossiblyUpdatedNotifChannel => 'アプリのアップデートを試行';
	@override String get errorCheckingUpdatesNotifChannel => 'アップデート確認中のエラー';
	@override String get appsRemovedNotifChannel => '削除されたアプリ';
	@override String get downloadingXNotifChannel => '{} をダウンロード中';
	@override String get completeAppInstallationNotifChannel => 'アプリのインストールを完了する';
	@override String get checkingForUpdatesNotifChannel => 'アップデートを確認中';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'インストール済みのアプリと「追跡のみ」のアプリのアップデートのみを確認する';
	@override String get supportFixedAPKURL => '固定されたAPKのURLをサポートする';
	@override String get selectX => '{} 選択';
	@override String get parallelDownloads => '並行ダウンロードを許可する';
	@override String get useShizuku => 'ShizukuまたはSuiを使用してインストールする';
	@override String get shizukuBinderNotFound => 'Shizukuが起動していません';
	@override String get shizukuOld => '古いShizukuのバージョン (<11) - アップデートしてください';
	@override String get shizukuOldAndroidWithADB => 'ShizukuがAndroid 8.1未満でADBを使用して動作しています - Androidをアップデートするか、代わりにSuiを使用してください';
	@override String get shizukuPretendToBeGooglePlay => 'Google Playをインストール元として設定する（Shizukuを使用する場合）';
	@override String get useSystemFont => 'システムフォントを使用する';
	@override String get useVersionCodeAsOSVersion => 'アプリのバージョンコードをOSで検出されたバージョンとして使用する';
	@override String get requestHeader => 'リクエストヘッダー';
	@override String get useLatestAssetDateAsReleaseDate => '最新のアセットアップロードをリリース日として使用する';
	@override String get defaultPseudoVersioningMethod => 'デフォルトの疑似バージョン管理方法';
	@override String get partialAPKHash => 'APKの部分ハッシュ';
	@override String get APKLinkHash => 'APKリンクのハッシュ';
	@override String get directAPKLink => 'APKのダイレクトリンク';
	@override String get pseudoVersionInUse => '疑似バージョンが使用されています';
	@override String get installedVersion => 'インストール済み';
	@override String get installed => 'インストール済み';
	@override String get notInstalledApps => '未インストール';
	@override String get latest => '最新';
	@override String get invertRegEx => '正規表現を反転';
	@override String get note => '注';
	@override String get selfHostedNote => 'ドロップダウン"{}"を使用すると、あらゆるソースのセルフホスト/カスタムインスタンスにアクセスできます。';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK を解析できませんでした（互換性がないか、部分的にダウンロードされています）。';
	@override String get beforeNewInstallsShareToAppVerifier => 'AppVerifierで新しいアプリを共有する（利用可能な場合）';
	@override String get appVerifierInstructionToast => 'AppVerifierに共有し、準備ができたらここに戻ってください。';
	@override String get wiki => 'ヘルプ/ウィキ';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => '安全でないHTTPリクエストを許可する';
	@override String get stayOneVersionBehind => '最新のバージョンから1つ前のものを使用する';
	@override String get useFirstApkOfVersion => '複数のAPKから最初のAPKを自動選択する';
	@override String get refreshBeforeDownload => 'ダウンロード前にアプリの詳細を更新する';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'アプリ名';
	@override String get smartname => 'アプリ名（スマート）';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'ソート方法';
	@override String get welcome => 'ようこそ';
	@override String get batteryOptimizationNote => 'Updatiumの設定で「フォアグラウンドサービス」に切り替えるか、OSの設定でバッテリー最適化を無効にすると、バックグラウンドダウンロードがより確実に動作するようになります。';
	@override String get fileDeletionError => 'ファイルの削除に失敗しました（手動で削除してから再試行してください）："{}"';
	@override String get foregroundService => 'Updatium フォアグラウンドサービス';
	@override String get foregroundServiceExplanation => 'アップデート確認にフォアグラウンドサービスを使用する（より信頼性が高いが、より電力を消費する）';
	@override String get fgServiceNotice => 'この通知は、バックグラウンドでアップデートを確認するために必要です（OSの設定で非表示にできます）。';
	@override String get excludeSecrets => 'シークレットを除く';
	@override String get GHReqPrefix => 'GitHub リクエスト用の \'omeritzics/Updatium\' インスタンス';
	@override String get includeZips => 'ZIPファイルを含む';
	@override String get zippedApkFilterRegEx => 'ZIP内のAPKをフィルタリングする';
	@override String get multipleSigners => '複数の署名者';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'アプリを削除しますか？',
		other: 'アプリを削除しますか？',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'リクエストが多すぎます（レート制限）- {count} 分後に再試行してください',
		other: 'リクエストが多すぎます（レート制限）- {count} 分後に再試行してください',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'バックグラウンドでのアップデート確認で {error} の問題が発生, {count} 分後に再試行します',
		other: 'バックグラウンドでのアップデート確認で {error} の問題が発生, {count} 分後に再試行します',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: 'バックグラウンドでのアップデート確認で {count} 個のアップデートを発見 - 必要に応じてユーザーに通知します',
		other: 'バックグラウンドでのアップデート確認で {count} 個のアップデートを発見 - 必要に応じてユーザーに通知します',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{count} 個のアプリ',
		other: '{count} 個のアプリ',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{count} 個のURL',
		other: '{count} 個のURL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{count} 分',
		other: '{count} 分',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{count} 時間',
		other: '{count} 時間',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{count} 日',
		other: '{count} 日',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{n} 個のログをクリアしました (前 = {before}, 後 = {after})',
		other: '{n} 個のログをクリアしました (前 = {before}, 後 = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{app} とさらに 1 個のアプリのアップデートが利用可能です。',
		other: '{app} とさらに {count} 個のアプリのアップデートが利用可能です。',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{app} とさらに 1 個のアプリがアップデートされました。',
		other: '{app} とさらに {count} 個のアプリがアップデートされました。',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{app} とさらに 1 個のアプリのアップデートに失敗しました。',
		other: '{app} とさらに {count} 個のアプリのアップデートに失敗しました。',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{app} とさらに 1 個のアプリがアップデートされた可能性があります。',
		other: '{app} とさらに {count} 個のアプリがアップデートされた可能性があります。',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n,
		one: '証明書ハッシュ',
		other: '証明書ハッシュ',
	);
	@override String get securityDisclaimerTitle => 'セキュリティおよび法的免責事項';
	@override String get license => 'ライセンス';
	@override String get licenseText => 'このアプリケーションはGPL v3ライセンスの下で配布されています。';
	@override String get disclaimer => '免責事項';
	@override String get disclaimerText => 'このアプリケーションは外部アプリケーションを配布、ホスト、または検証しません。ユーザーはこのツールを通じてインストールされたソフトウェアの安全性と合法性について全責任を負います。\n\nhttps://github.com/omeritzics/Updatium はUpdatiumをダウンロードする唯一の公式場所です - 非公式のソースからダウンロードすることは安全ではないため、他の場所からダウンロードすることは強くお勧めしません。';
	@override String get privacy => 'プライバシー';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => '同意して続行';
	@override String get decline => '拒否';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Updatiumをお楽しみですか？';
	@override String get githubStarPromptContent => 'Updatiumは、私の自由時間に開発したボランティアのオープンソースコミュニティプロジェクトです。プロジェクトをサポートしていただける場合は、より多くのユーザーや貢献者に到達するのを助けるために、GitHubでスターを付けていただくことをご検討ください。この件については今後ご案内しません。前もってありがとうございます！:)';
	@override String get githubStarPromptStar => 'スターを付ける';
	@override String get githubStarPromptDontShowAgain => '今後表示しない';
	@override String get sourceCode => 'ソースコード';
	@override String get developedBy => '開発者';
	@override String get appDescription => 'APKソースから直接アプリを更新できるカスタマイズ可能なAndroidアプリカタログです。';
	@override String get safeModeEnabled => 'セーフモードが有効化されています';
	@override String get safeModeDisabled => 'セーフモードが無効化されています';
	@override String get safeModeDisable => 'セーフモードを無効にする';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'セーフモード管理';
	@override String get safeModeSetupDescription => 'セーフモードを有効にするためにパスワードを設定してください。有効化後、セーフモードは新しいアプリの追加を防ぎ、パスワードでのみ無効化できます。';
	@override String get safeModeToggleDescription => 'パスワードを入力してセーフモードをオン/オフに切り替えてください。';
	@override String get safeModeSetPassword => 'パスワードを設定';
	@override String get safeModeConfirmPassword => 'パスワードを確認';
	@override String get safeModeEnterPassword => 'パスワードを入力';
	@override String get safeModePasswordHint => '最低8文字';
	@override String get safeModePasswordTooShort => 'パスワードは最低8文字必要です';
	@override String get safeModePasswordMismatch => 'パスワードが一致しません';
	@override String get safeModePasswordIncorrect => 'パスワードが間違っています';
	@override String get safeModePasswordError => 'パスワードの設定にエラーが発生しました。もう一度お試しください。';
	@override String get safeModeEnable => 'セーフモードを有効にする';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} 回タップしてセーフモードを無効にする';
	@override String get safeModeEnabledHint => 'セーフモードが有効になっています。設定でバージョンコードをタップして無効にしてください';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'わかりました';
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

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => '{}は有効なソースURLではありません',
			'noReleaseFound' => '適切なリリースが見つかりませんでした',
			'noVersionFound' => 'リリースバージョンを特定できませんでした',
			'urlMatchesNoSource' => 'URLが既知のソースと一致しません',
			'cantInstallOlderVersion' => '旧バージョンのアプリをインストールできません',
			'appIdMismatch' => 'ダウンロードしたパッケージのIDが既存のApp IDと一致しません',
			'functionNotImplemented' => 'このクラスはこの機能を実装していません',
			'placeholder' => 'プレースホルダー',
			'someErrors' => '何らかのエラーが発生しました',
			'unexpectedError' => '予期せぬエラーが発生しました',
			'ok' => 'OK',
			'and' => 'と',
			'githubPATLabel' => 'GitHub パーソナルアクセストークン',
			'includePrereleases' => 'プレリリースを含む',
			'fallbackToOlderReleases' => '旧リリースへのフォールバック',
			'filterReleaseTitlesByRegEx' => '正規表現でリリースタイトルをフィルタリングする',
			'invalidRegEx' => '無効な正規表現',
			'noDescription' => '説明はありません',
			'cancel' => 'キャンセル',
			'kContinue' => '続行',
			'requiredInBrackets' => '(必須)',
			'dropdownNoOptsError' => 'エラー: ドロップダウンには、少なくとも1つのオプションが必要です',
			'color' => 'カラー',
			'standard' => 'スタンダード',
			'custom' => 'カスタム',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material Youのカラーを使用',
			'githubStarredRepos' => 'GitHubでスターしたリポジトリ',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'ユーザー名',
			'wrongArgNum' => '引数の数が間違っています',
			'xIsTrackOnly' => '{} は「追跡のみ」です',
			'source' => 'ソース',
			'app' => 'アプリ',
			'appsFromSourceAreTrackOnly' => 'このソースからのアプリは「追跡のみ」です。',
			'youPickedTrackOnly' => '「追跡のみ」を選択しています',
			'trackOnlyAppDescription' => 'アプリのアップデートは追跡されますが、Updatiumはアプリのダウンロードやインストールはできません。',
			'cancelled' => 'キャンセルしました',
			'appAlreadyAdded' => 'アプリはすでに追加されています',
			'alreadyUpToDateQuestion' => 'アプリはすでに最新ですか？',
			'addApp' => 'アプリの追加',
			'appSourceURL' => 'アプリのソースURL',
			'error' => 'エラー',
			'add' => '追加',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => '検索 (一部ソースのみ)',
			'search' => '検索',
			'searching' => 'Searching',
			'additionalOptsFor' => '{}の追加オプション',
			'supportedSources' => '対応するソース',
			'trackOnlyInBrackets' => '(追跡のみ)',
			'searchableInBrackets' => '(検索可能)',
			'appsString' => 'アプリ',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'ようこそ！',
			'noAppsSubtext' => '下の「アプリを追加」をタップして、最初のアプリを追加できます。',
			'noAppsForFilter' => 'フィルターに一致するアプリはありません',
			'byX' => 'by {}',
			'percentProgress' => 'ダウンロード中: {}%',
			'pleaseWait' => 'しばらくお待ちください',
			'updateAvailable' => 'アップデートが利用可能',
			'notInstalled' => '未インストール',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => '疑似バージョン',
			'selectAll' => 'すべて選択',
			'deselectX' => '{} 件の選択を解除',
			'xWillBeRemovedButRemainInstalled' => '{} はUpdatiumから削除されますが、デバイスにはインストールされたままです。',
			'removeSelectedAppsQuestion' => '選択したアプリを削除しますか？',
			'removeSelectedApps' => '選択したアプリを削除する',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} をアップデートする',
			'installX' => '{} をインストールする',
			'markXTrackOnlyAsUpdated' => '{}\n(追跡のみ)\nをアップデート済みとしてマークする',
			'changeX' => '{} を変更する',
			'installUpdateApps' => 'アプリのインストール/アップデート',
			'installUpdateSelectedApps' => '選択したアプリのインストール/アップデート',
			'markXSelectedAppsAsUpdated' => '{}個の選択したアプリをアップデート済みとしてマークしますか？',
			'no' => 'いいえ',
			'yes' => 'はい',
			'markSelectedAppsUpdated' => '選択したアプリをアップデート済みとしてマークする',
			'pinToTop' => 'トップに固定',
			'unpinFromTop' => 'トップから固定解除',
			'resetInstallStatusForSelectedAppsQuestion' => '選択したアプリのインストール状態をリセットしますか？',
			'installStatusOfXWillBeResetExplanation' => '選択したアプリのインストール状態がリセットされます。\n\nアップデートに失敗した場合など、Updatiumに表示されるアプリのバージョンが正しくない場合に役立ちます。',
			'customLinkMessage' => 'これらのリンクはUpdatiumがインストールされたデバイスで動作します',
			'shareAppConfigLinks' => 'アプリの設定をHTMLリンクとして共有する',
			'resetInstallStatus' => 'インストール状態をリセットする',
			'more' => 'その他',
			'removeOutdatedFilter' => 'アップデートが存在するアプリのフィルターを解除',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'アップデートが存在するアプリのみ表示する',
			'filter' => 'フィルター',
			'filterApps' => 'アプリをフィルタリングする',
			'filterDays' => 'Filter days',
			'appName' => 'アプリ名',
			'author' => '作者',
			'upToDateApps' => '最新のアプリ',
			'nonInstalledApps' => '未インストールのアプリ',
			'importExport' => 'インポート/エクスポート',
			'settings' => '設定',
			'exportedTo' => '{} にエクスポートしました',
			'updatiumExport' => 'Updatium エクスポート',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => '無効な入力',
			'importedX' => '{} をインポートしました',
			'updatiumImport' => 'Updatium インポート',
			'importFromURLList' => 'URLリストからのインポート',
			'searchQuery' => '検索キーワード',
			'appURLList' => 'アプリのURLリスト',
			'line' => '行',
			'searchX' => '{} で検索',
			'noResults' => '結果は見つかりませんでした',
			'importX' => '{} をインポート',
			'importedAppsIdDisclaimer' => 'インポートしたアプリが「未インストール」と表示されることがあります。\nこの問題を解決するには、Updatiumから再インストールしてください。\nアプリのデータには影響しません。\n\nURLとサードパーティのインポートメソッドにのみ影響します。',
			'importErrors' => 'インポートエラー',
			'importedXOfYApps' => '{} / {} アプリをインポートしました',
			'followingURLsHadErrors' => '以下のURLでエラーが発生しました:',
			'selectURL' => 'URLを選択',
			'selectURLs' => 'URLを選択',
			'pick' => '選択',
			'theme' => 'テーマ',
			'dark' => 'ダーク',
			'light' => 'ライト',
			'followSystem' => 'システムに従う',
			'followSystemThemeExplanation' => 'システムテーマへの追従は、サードパーティのアプリケーションを使用することのみで可能です',
			'useBlackTheme' => 'ピュアブラックダークテーマを使用する',
			'appSortBy' => 'アプリの並び方',
			'authorName' => '作者名/アプリ名',
			'nameAuthor' => 'アプリ名/作者名',
			'asAdded' => '追加順',
			'appSortOrder' => '並び順',
			'ascending' => '昇順',
			'descending' => '降順',
			'bgUpdateCheckInterval' => 'バックグラウンドでのアップデート確認の間隔',
			'neverManualOnly' => '手動のみ',
			'appearance' => '外観',
			'pinUpdates' => 'アップデートがあるアプリをトップに固定する',
			'updates' => 'アップデート',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'ソース別の設定',
			'appSource' => 'アプリのソース',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'ログはありません',
			'appLogs' => 'アプリのログ',
			'appLogsHint' => 'View application logs',
			'close' => '閉じる',
			'share' => '共有',
			'appNotFound' => 'アプリが見つかりません',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-エクスポート',
			'pickAnAPK' => 'APKを選択',
			'appHasMoreThanOnePackage' => '{} は複数のパッケージが存在します: ',
			'deviceSupportsXArch' => 'お使いのデバイスは {} CPUアーキテクチャに対応しています。',
			'deviceSupportsFollowingArchs' => 'お使いのデバイスは、以下のCPUアーキテクチャをサポートしています:',
			'warning' => '警告',
			'sourceIsXButPackageFromYPrompt' => 'アプリのソースは\'{}\'ですが、リリースパッケージは\'{}\'からダウンロードされます。続行しますか？',
			'updatesAvailable' => 'アップデートが利用可能',
			'updatesAvailableNotifDescription' => 'Updatiumが追跡している1つまたは複数のアプリのアップデートが利用可能であることをユーザーに通知する',
			'noNewUpdates' => '新しいアップデートはありません。',
			'xHasAnUpdate' => '{} のアップデートが利用可能です。',
			'appsUpdated' => 'アプリをアップデートしました',
			'appsNotUpdated' => 'アプリのアップデートに失敗しました',
			'appsUpdatedNotifDescription' => '1つまたは複数のアプリのアップデートがバックグラウンドで適用されたことをユーザーに通知する',
			'xWasUpdatedToY' => '{} が {} にアップデートされました',
			'xWasNotUpdatedToY' => '{} の {} へのアップデートに失敗しました',
			'errorCheckingUpdates' => 'アップデート確認中のエラー',
			'errorCheckingUpdatesNotifDescription' => 'バックグラウンドでのアップデート確認に失敗した際に表示される通知',
			'appsRemoved' => '削除されたアプリ',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'アプリの読み込み中にエラーが発生したため、1つまたは複数のアプリが削除されたことをユーザーに通知する',
			'xWasRemovedDueToErrorY' => '次のエラーのため、{} は削除されました: {}',
			'completeAppInstallation' => 'アプリのインストールを完了する',
			'updatiumMustBeOpenToInstallApps' => 'アプリをインストールするにはUpdatiumを開く必要があります',
			'completeAppInstallationNotifDescription' => 'アプリのインストールを完了するために、Updatiumに戻る必要があります',
			'checkingForUpdates' => 'アップデートを確認中',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'アップデートを確認する際に表示される一時的な通知',
			'pleaseAllowInstallPerm' => 'Updatiumによるアプリのインストールを許可してください',
			'trackOnly' => '追跡のみ',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'エラー {}',
			'versionCorrectionDisabled' => 'バージョン補正無効 (プラグインが動作していません)',
			'unknown' => '不明',
			'none' => 'なし',
			'all' => 'すべて',
			'never' => 'しない',
			'latestVersion' => '最新',
			'installedVersionX' => 'インストール済み: {}',
			'lastUpdateCheckX' => '最終アップデート確認: {}',
			'remove' => '削除',
			'quickLinks' => 'クイックリンク',
			'yesMarkUpdated' => 'はい、アップデート済みとしてマークします',
			'fdroid' => 'F-Droid公式',
			'appIdOrName' => 'アプリのIDまたは名前',
			'appId' => 'アプリID',
			'appWithIdOrNameNotFound' => 'そのIDや名前を持つアプリは見つかりませんでした',
			'reposHaveMultipleApps' => 'リポジトリには複数のアプリが含まれることがあります',
			'fdroidThirdPartyRepo' => 'F-Droid サードパーティリポジトリ',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'インストール',
			'markInstalled' => 'インストール済みとしてマークする',
			'update' => 'アップデート',
			'updated' => '更新済み',
			'markUpdated' => 'アップデート済みとしてマークする',
			'download' => 'Download',
			'additionalOptions' => '追加のオプション',
			'disableVersionDetection' => 'バージョン検出を無効にする',
			'noVersionDetectionExplanation' => 'このオプションは、バージョン検出が正しく機能しないアプリにのみ使用する必要があります。',
			'downloadingX' => '{} をダウンロード中',
			'downloadX' => '{} をダウンロード',
			'downloadedX' => '{} をダウンロードしました',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'リリースアセット',
			'downloadNotifDescription' => 'アプリのダウンロード状況を通知する',
			'noAPKFound' => 'APKが見つかりません',
			'noVersionDetection' => 'バージョン検出を行わない',
			'categorize' => 'カテゴライズ',
			'categories' => 'カテゴリ',
			'category' => 'カテゴリ',
			'noCategory' => 'カテゴリなし',
			'noCategories' => 'カテゴリなし',
			'categoryDeleteQuestion' => 'カテゴリを削除しますか？',
			'categoryDeleteWarning' => '削除されたカテゴリ内のアプリは未分類に設定されます。',
			'addCategory' => 'カテゴリを追加',
			'label' => 'ラベル',
			'language' => '言語',
			'copiedToClipboard' => 'クリップボードにコピーしました',
			'storagePermissionDenied' => 'ストレージ権限が拒否されました',
			'selectedCategorizeWarning' => 'これにより、選択したアプリの既存のカテゴリ設定がすべて置き換えられます。',
			'filterAPKsByRegEx' => '正規表現でAPKをフィルタリングする',
			'removeFromUpdatium' => 'Updatiumから削除する',
			'uninstallFromDevice' => 'デバイスからアンインストールする',
			'onlyWorksWithNonVersionDetectApps' => 'バージョン検出を無効にしているアプリにのみ動作します。',
			'releaseDateAsVersion' => 'リリース日をバージョンとして使用する',
			'releaseTitleAsVersion' => 'リリースタイトルをバージョンとして使用する',
			'releaseDateAsVersionExplanation' => 'このオプションは、バージョン検出が正しく機能しないアプリで、リリース日が利用可能な場合にのみ使用する必要があります。',
			'changes' => '変更点',
			'releaseDate' => 'リリース日',
			'importFromURLsInFile' => 'ファイル（OPMLなど）内のURLからインポート',
			'versionDetectionExplanation' => 'バージョン文字列をOSが検出したバージョンと照合する',
			'versionDetection' => 'バージョン検出',
			'standardVersionDetection' => '標準のバージョン検出',
			'groupByCategory' => 'カテゴリー別にグループ化',
			'listView' => 'リスト表示',
			'gridView' => 'グリッド表示',
			'autoApkFilterByArch' => '可能であれば、CPUアーキテクチャによるAPKのフィルタリングを試みる',
			'autoLinkFilterByArch' => '可能であれば、CPUアーキテクチャによるリンクのフィルタリングを試みる',
			'overrideSource' => 'ソースの上書き',
			'dontShowAgain' => '二度と表示しない',
			'dontShowTrackOnlyWarnings' => '「追跡のみ」の警告を表示しない',
			'dontShowAPKOriginWarnings' => 'APKのダウンロード元の警告を表示しない',
			'moveNonInstalledAppsToBottom' => '未インストールのアプリをアプリ一覧の下部に移動させる',
			'gitlabPATLabel' => 'GitLab パーソナルアクセストークン',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'について',
			'requiresCredentialsInSettings' => '{}: これには追加の認証が必要です (設定にて)',
			'checkOnStart' => '起動時にアップデートを確認する',
			'safeMode' => 'セーフモード',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'アプリ追加はセーフモードで無効になっています',
			'tryInferAppIdFromCode' => 'ソースコードからアプリIDを推測しようとする',
			'removeOnExternalUninstall' => '外部でアンインストールされたアプリを自動的に削除する',
			'pickHighestVersionCode' => '最も高いバージョンコードのAPKを自動的に選択する',
			'checkUpdateOnDetailPage' => 'アプリの詳細ページを開く際にアップデートを確認する',
			'disablePageTransitions' => 'ページ遷移アニメーションを無効化する',
			'reversePageTransitions' => 'ページ遷移アニメーションを反転する',
			'minStarCount' => '最小スター数',
			'addInfoBelow' => '以下にこの情報を追加してください。',
			'addInfoInSettings' => '設定でこの情報を追加してください。',
			'githubSourceNote' => 'GitHubのレート制限はAPIキーを使うことで回避できます。',
			'sortByLastLinkSegment' => 'リンクの最後のセグメントのみでソートする',
			'filterReleaseNotesByRegEx' => '正規表現でリリースノートをフィルタリングする',
			'customLinkFilterRegex' => '正規表現によるカスタムリンクフィルター (デフォルト \'.apk$\')',
			'appsPossiblyUpdated' => 'アプリのアップデートを試行',
			'appsPossiblyUpdatedNotifDescription' => '1つまたは複数のアプリのアップデートがバックグラウンドで適用された可能性があることをユーザーに通知する',
			'xWasPossiblyUpdatedToY' => '{} が {} にアップデートされた可能性があります。',
			'enableBackgroundUpdates' => 'バックグラウンドアップデートを有効化する',
			'backgroundUpdateReqsExplanation' => 'バックグラウンドアップデートは、すべてのアプリで利用できるとは限りません。',
			'backgroundUpdateLimitsExplanation' => 'バックグラウンドアップデートが成功したかどうかは、Updatiumを起動したときにしか判断できません。',
			'verifyLatestTag' => '\'latest\'タグを確認する',
			'intermediateLinkRegex' => '訪問する「中間」リンクのフィルター',
			'filterByLinkText' => 'テキストでリンクをフィルタリングする',
			'matchLinksOutsideATags' => '<a>タグの外にあるリンクに一致させる',
			'intermediateLinkNotFound' => '中間リンクが見つかりませんでした',
			'intermediateLink' => '中間リンク',
			'exemptFromBackgroundUpdates' => 'バックグラウンドアップデートを行わない (有効な場合)',
			'bgUpdatesOnWiFiOnly' => 'Wi-Fiに接続していない場合、バックグラウンドアップデートを無効にする',
			'bgUpdatesWhileChargingOnly' => '非充電時にバックグラウンドアップデートを無効にする',
			'autoSelectHighestVersionCode' => '最も高いバージョンコードのAPKを自動で選択する',
			'versionExtractionRegEx' => 'バージョン抽出の正規表現',
			'trimVersionString' => '正規表現でバージョン文字列をトリムする',
			'matchGroupToUseForX' => '"{}"に使用するマッチしたグループ',
			'matchGroupToUse' => 'バージョン抽出に使用するマッチしたグループ',
			'highlightTouchTargets' => '目立たないタップ可能な対象をハイライトする',
			'pickExportDir' => 'エクスポートディレクトリを選択',
			'autoExportOnChanges' => '変更があった際に自動でエクスポートする',
			'includeSettings' => '設定を含む',
			'filterVersionsByRegEx' => '正規表現でバージョンをフィルタリングする',
			'trySelectingSuggestedVersionCode' => '提案されたバージョンコードのAPKを選択する',
			'dontSortReleasesList' => 'APIからのリリース順を保持する',
			'reverseSort' => '逆順ソート',
			'takeFirstLink' => '最初のリンクを取得する',
			'skipSort' => 'ソートをスキップする',
			'debugMenu' => 'デバッグメニュー',
			'bgTaskStarted' => 'バックグラウンドタスクが開始されました - ログを確認してください。',
			'runBgCheckNow' => '今すぐバックグラウンドでのアップデート確認を開始する',
			'versionExtractWholePage' => 'バージョン抽出の正規表現をページ全体に適用する',
			'installing' => 'インストール中',
			'skipUpdateNotifications' => 'アップデート通知を行わない',
			'updatesAvailableNotifChannel' => 'アップデートが利用可能',
			'appsUpdatedNotifChannel' => 'アプリをアップデートしました',
			'appsPossiblyUpdatedNotifChannel' => 'アプリのアップデートを試行',
			'errorCheckingUpdatesNotifChannel' => 'アップデート確認中のエラー',
			'appsRemovedNotifChannel' => '削除されたアプリ',
			'downloadingXNotifChannel' => '{} をダウンロード中',
			'completeAppInstallationNotifChannel' => 'アプリのインストールを完了する',
			'checkingForUpdatesNotifChannel' => 'アップデートを確認中',
			'onlyCheckInstalledOrTrackOnlyApps' => 'インストール済みのアプリと「追跡のみ」のアプリのアップデートのみを確認する',
			'supportFixedAPKURL' => '固定されたAPKのURLをサポートする',
			'selectX' => '{} 選択',
			'parallelDownloads' => '並行ダウンロードを許可する',
			'useShizuku' => 'ShizukuまたはSuiを使用してインストールする',
			'shizukuBinderNotFound' => 'Shizukuが起動していません',
			'shizukuOld' => '古いShizukuのバージョン (<11) - アップデートしてください',
			'shizukuOldAndroidWithADB' => 'ShizukuがAndroid 8.1未満でADBを使用して動作しています - Androidをアップデートするか、代わりにSuiを使用してください',
			'shizukuPretendToBeGooglePlay' => 'Google Playをインストール元として設定する（Shizukuを使用する場合）',
			'useSystemFont' => 'システムフォントを使用する',
			'useVersionCodeAsOSVersion' => 'アプリのバージョンコードをOSで検出されたバージョンとして使用する',
			'requestHeader' => 'リクエストヘッダー',
			'useLatestAssetDateAsReleaseDate' => '最新のアセットアップロードをリリース日として使用する',
			'defaultPseudoVersioningMethod' => 'デフォルトの疑似バージョン管理方法',
			'partialAPKHash' => 'APKの部分ハッシュ',
			'APKLinkHash' => 'APKリンクのハッシュ',
			'directAPKLink' => 'APKのダイレクトリンク',
			'pseudoVersionInUse' => '疑似バージョンが使用されています',
			'installedVersion' => 'インストール済み',
			'installed' => 'インストール済み',
			'notInstalledApps' => '未インストール',
			'latest' => '最新',
			'invertRegEx' => '正規表現を反転',
			'note' => '注',
			'selfHostedNote' => 'ドロップダウン"{}"を使用すると、あらゆるソースのセルフホスト/カスタムインスタンスにアクセスできます。',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK を解析できませんでした（互換性がないか、部分的にダウンロードされています）。',
			'beforeNewInstallsShareToAppVerifier' => 'AppVerifierで新しいアプリを共有する（利用可能な場合）',
			'appVerifierInstructionToast' => 'AppVerifierに共有し、準備ができたらここに戻ってください。',
			'wiki' => 'ヘルプ/ウィキ',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => '安全でないHTTPリクエストを許可する',
			'stayOneVersionBehind' => '最新のバージョンから1つ前のものを使用する',
			'useFirstApkOfVersion' => '複数のAPKから最初のAPKを自動選択する',
			'refreshBeforeDownload' => 'ダウンロード前にアプリの詳細を更新する',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'アプリ名',
			'smartname' => 'アプリ名（スマート）',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'ソート方法',
			'welcome' => 'ようこそ',
			'batteryOptimizationNote' => 'Updatiumの設定で「フォアグラウンドサービス」に切り替えるか、OSの設定でバッテリー最適化を無効にすると、バックグラウンドダウンロードがより確実に動作するようになります。',
			'fileDeletionError' => 'ファイルの削除に失敗しました（手動で削除してから再試行してください）："{}"',
			'foregroundService' => 'Updatium フォアグラウンドサービス',
			'foregroundServiceExplanation' => 'アップデート確認にフォアグラウンドサービスを使用する（より信頼性が高いが、より電力を消費する）',
			'fgServiceNotice' => 'この通知は、バックグラウンドでアップデートを確認するために必要です（OSの設定で非表示にできます）。',
			'excludeSecrets' => 'シークレットを除く',
			'GHReqPrefix' => 'GitHub リクエスト用の \'omeritzics/Updatium\' インスタンス',
			'includeZips' => 'ZIPファイルを含む',
			'zippedApkFilterRegEx' => 'ZIP内のAPKをフィルタリングする',
			'multipleSigners' => '複数の署名者',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: 'アプリを削除しますか？', other: 'アプリを削除しますか？', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: 'リクエストが多すぎます（レート制限）- {count} 分後に再試行してください', other: 'リクエストが多すぎます（レート制限）- {count} 分後に再試行してください', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: 'バックグラウンドでのアップデート確認で {error} の問題が発生, {count} 分後に再試行します', other: 'バックグラウンドでのアップデート確認で {error} の問題が発生, {count} 分後に再試行します', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: 'バックグラウンドでのアップデート確認で {count} 個のアップデートを発見 - 必要に応じてユーザーに通知します', other: 'バックグラウンドでのアップデート確認で {count} 個のアップデートを発見 - 必要に応じてユーザーに通知します', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{count} 個のアプリ', other: '{count} 個のアプリ', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{count} 個のURL', other: '{count} 個のURL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{count} 分', other: '{count} 分', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{count} 時間', other: '{count} 時間', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{count} 日', other: '{count} 日', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{n} 個のログをクリアしました (前 = {before}, 後 = {after})', other: '{n} 個のログをクリアしました (前 = {before}, 後 = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{app} とさらに 1 個のアプリのアップデートが利用可能です。', other: '{app} とさらに {count} 個のアプリのアップデートが利用可能です。', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{app} とさらに 1 個のアプリがアップデートされました。', other: '{app} とさらに {count} 個のアプリがアップデートされました。', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{app} とさらに 1 個のアプリのアップデートに失敗しました。', other: '{app} とさらに {count} 個のアプリのアップデートに失敗しました。', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{app} とさらに 1 個のアプリがアップデートされた可能性があります。', other: '{app} とさらに {count} 個のアプリがアップデートされた可能性があります。', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ja'))(n, one: '証明書ハッシュ', other: '証明書ハッシュ', ), 
			'securityDisclaimerTitle' => 'セキュリティおよび法的免責事項',
			'license' => 'ライセンス',
			'licenseText' => 'このアプリケーションはGPL v3ライセンスの下で配布されています。',
			'disclaimer' => '免責事項',
			'disclaimerText' => 'このアプリケーションは外部アプリケーションを配布、ホスト、または検証しません。ユーザーはこのツールを通じてインストールされたソフトウェアの安全性と合法性について全責任を負います。\n\nhttps://github.com/omeritzics/Updatium はUpdatiumをダウンロードする唯一の公式場所です - 非公式のソースからダウンロードすることは安全ではないため、他の場所からダウンロードすることは強くお勧めしません。',
			'privacy' => 'プライバシー',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => '同意して続行',
			'decline' => '拒否',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Updatiumをお楽しみですか？',
			'githubStarPromptContent' => 'Updatiumは、私の自由時間に開発したボランティアのオープンソースコミュニティプロジェクトです。プロジェクトをサポートしていただける場合は、より多くのユーザーや貢献者に到達するのを助けるために、GitHubでスターを付けていただくことをご検討ください。この件については今後ご案内しません。前もってありがとうございます！:)',
			'githubStarPromptStar' => 'スターを付ける',
			'githubStarPromptDontShowAgain' => '今後表示しない',
			'sourceCode' => 'ソースコード',
			'developedBy' => '開発者',
			'appDescription' => 'APKソースから直接アプリを更新できるカスタマイズ可能なAndroidアプリカタログです。',
			'safeModeEnabled' => 'セーフモードが有効化されています',
			'safeModeDisabled' => 'セーフモードが無効化されています',
			'safeModeDisable' => 'セーフモードを無効にする',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'セーフモード管理',
			'safeModeSetupDescription' => 'セーフモードを有効にするためにパスワードを設定してください。有効化後、セーフモードは新しいアプリの追加を防ぎ、パスワードでのみ無効化できます。',
			'safeModeToggleDescription' => 'パスワードを入力してセーフモードをオン/オフに切り替えてください。',
			'safeModeSetPassword' => 'パスワードを設定',
			'safeModeConfirmPassword' => 'パスワードを確認',
			'safeModeEnterPassword' => 'パスワードを入力',
			'safeModePasswordHint' => '最低8文字',
			'safeModePasswordTooShort' => 'パスワードは最低8文字必要です',
			'safeModePasswordMismatch' => 'パスワードが一致しません',
			'safeModePasswordIncorrect' => 'パスワードが間違っています',
			'safeModePasswordError' => 'パスワードの設定にエラーが発生しました。もう一度お試しください。',
			'safeModeEnable' => 'セーフモードを有効にする',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} 回タップしてセーフモードを無効にする',
			'safeModeEnabledHint' => 'セーフモードが有効になっています。設定でバージョンコードをタップして無効にしてください',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'わかりました',
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
