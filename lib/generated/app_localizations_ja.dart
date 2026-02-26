// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return '$p0は有効なソースURLではありません';
  }

  @override
  String get noReleaseFound => '適切なリリースが見つかりませんでした';

  @override
  String get noVersionFound => 'リリースバージョンを特定できませんでした';

  @override
  String get urlMatchesNoSource => 'URLが既知のソースと一致しません';

  @override
  String get cantInstallOlderVersion => '旧バージョンのアプリをインストールできません';

  @override
  String get appIdMismatch => 'ダウンロードしたパッケージのIDが既存のApp IDと一致しません';

  @override
  String get functionNotImplemented => 'このクラスはこの機能を実装していません';

  @override
  String get placeholder => 'プレースホルダー';

  @override
  String get someErrors => '何らかのエラーが発生しました';

  @override
  String get unexpectedError => '予期せぬエラーが発生しました';

  @override
  String get ok => 'OK';

  @override
  String get and => 'と';

  @override
  String get githubPATLabel => 'GitHub パーソナルアクセストークン (レート制限の引き上げ)';

  @override
  String get includePrereleases => 'プレリリースを含む';

  @override
  String get fallbackToOlderReleases => '旧リリースへのフォールバック';

  @override
  String get filterReleaseTitlesByRegEx => '正規表現でリリースタイトルをフィルタリングする';

  @override
  String get invalidRegEx => '無効な正規表現';

  @override
  String get noDescription => '説明はありません';

  @override
  String get cancel => 'キャンセル';

  @override
  String get continue => '続行';

  @override
  String get requiredInBrackets => '(必須)';

  @override
  String get dropdownNoOptsError => 'エラー: ドロップダウンには、少なくとも1つのオプションが必要です';

  @override
  String get color => 'カラー';

  @override
  String get standard => 'スタンダード';

  @override
  String get custom => 'カスタム';

  @override
  String get useMaterialYou => 'Material Youのカラーを使用';

  @override
  String get githubStarredRepos => 'GitHubでスターしたリポジトリ';

  @override
  String get uname => 'ユーザー名';

  @override
  String get wrongArgNum => '引数の数が間違っています';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 は「追跡のみ」です';
  }

  @override
  String get source => 'ソース';

  @override
  String get app => 'アプリ';

  @override
  String get appsFromSourceAreTrackOnly => 'このソースからのアプリは「追跡のみ」です。';

  @override
  String get youPickedTrackOnly => '「追跡のみ」を選択しています';

  @override
  String get trackOnlyAppDescription => 'アプリのアップデートは追跡されますが、Updatiumはアプリのダウンロードやインストールはできません。';

  @override
  String get cancelled => 'キャンセルしました';

  @override
  String get appAlreadyAdded => 'アプリはすでに追加されています';

  @override
  String get alreadyUpToDateQuestion => 'アプリはすでに最新ですか？';

  @override
  String get addApp => 'アプリの追加';

  @override
  String get appSourceURL => 'アプリのソースURL';

  @override
  String get error => 'エラー';

  @override
  String get add => '追加';

  @override
  String get searchSomeSourcesLabel => '検索 (一部ソースのみ)';

  @override
  String get search => '検索';

  @override
  String additionalOptsFor(Object p0) {
    return '$p0の追加オプション';
  }

  @override
  String get supportedSources => '対応するソース';

  @override
  String get trackOnlyInBrackets => '(追跡のみ)';

  @override
  String get searchableInBrackets => '(検索可能)';

  @override
  String get appsString => 'アプリ';

  @override
  String get noApps => 'ようこそ！';

  @override
  String get noAppsSubtext => '下の「アプリを追加」をタップして、最初のアプリを追加できます。';

  @override
  String get noAppsForFilter => 'フィルターに一致するアプリはありません';

  @override
  String byX(Object p0) {
    return 'by $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'ダウンロード中: $p0%';
  }

  @override
  String get pleaseWait => 'しばらくお待ちください';

  @override
  String get updateAvailable => 'アップデートが利用可能';

  @override
  String get notInstalled => '未インストール';

  @override
  String get pseudoVersion => '疑似バージョン';

  @override
  String get selectAll => 'すべて選択';

  @override
  String deselectX(Object p0) {
    return '$p0 件の選択を解除';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 はUpdatiumから削除されますが、デバイスにはインストールされたままです。';
  }

  @override
  String get removeSelectedAppsQuestion => '選択したアプリを削除しますか？';

  @override
  String get removeSelectedApps => '選択したアプリを削除する';

  @override
  String updateX(Object p0) {
    return '$p0 をアップデートする';
  }

  @override
  String installX(Object p0) {
    return '$p0 をインストールする';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return '$p0\n(追跡のみ)\nをアップデート済みとしてマークする';
  }

  @override
  String changeX(Object p0) {
    return '$p0 を変更する';
  }

  @override
  String get installUpdateApps => 'アプリのインストール/アップデート';

  @override
  String get installUpdateSelectedApps => '選択したアプリのインストール/アップデート';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return '$p0個の選択したアプリをアップデート済みとしてマークしますか？';
  }

  @override
  String get no => 'いいえ';

  @override
  String get yes => 'はい';

  @override
  String get markSelectedAppsUpdated => '選択したアプリをアップデート済みとしてマークする';

  @override
  String get pinToTop => 'トップに固定';

  @override
  String get unpinFromTop => 'トップから固定解除';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => '選択したアプリのインストール状態をリセットしますか？';

  @override
  String get installStatusOfXWillBeResetExplanation => '選択したアプリのインストール状態がリセットされます。\n\nアップデートに失敗した場合など、Updatiumに表示されるアプリのバージョンが正しくない場合に役立ちます。';

  @override
  String get customLinkMessage => 'これらのリンクはUpdatiumがインストールされたデバイスで動作します';

  @override
  String get shareAppConfigLinks => 'アプリの設定をHTMLリンクとして共有する';

  @override
  String get shareSelectedAppURLs => '選択したアプリのURLを共有する';

  @override
  String get resetInstallStatus => 'インストール状態をリセットする';

  @override
  String get more => 'その他';

  @override
  String get removeOutdatedFilter => 'アップデートが存在するアプリのフィルターを解除';

  @override
  String get showOutdatedOnly => 'アップデートが存在するアプリのみ表示する';

  @override
  String get filter => 'フィルター';

  @override
  String get filterApps => 'アプリをフィルタリングする';

  @override
  String get appName => 'アプリ名';

  @override
  String get author => '作者';

  @override
  String get upToDateApps => '最新のアプリ';

  @override
  String get nonInstalledApps => '未インストールのアプリ';

  @override
  String get importExport => 'インポート/エクスポート';

  @override
  String get settings => '設定';

  @override
  String exportedTo(Object p0) {
    return '$p0 にエクスポートしました';
  }

  @override
  String get updatiumExport => 'Updatium エクスポート';

  @override
  String get invalidInput => '無効な入力';

  @override
  String importedX(Object p0) {
    return '$p0 をインポートしました';
  }

  @override
  String get updatiumImport => 'Updatium インポート';

  @override
  String get importFromURLList => 'URLリストからのインポート';

  @override
  String get searchQuery => '検索キーワード';

  @override
  String get appURLList => 'アプリのURLリスト';

  @override
  String get line => '行';

  @override
  String searchX(Object p0) {
    return '$p0 で検索';
  }

  @override
  String get noResults => '結果は見つかりませんでした';

  @override
  String importX(Object p0) {
    return '$p0 をインポート';
  }

  @override
  String get importedAppsIdDisclaimer => 'インポートしたアプリが「未インストール」と表示されることがあります。\nこの問題を解決するには、Updatiumから再インストールしてください。\nアプリのデータには影響しません。\n\nURLとサードパーティのインポートメソッドにのみ影響します。';

  @override
  String get importErrors => 'インポートエラー';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 / $p1 アプリをインポートしました';
  }

  @override
  String get followingURLsHadErrors => '以下のURLでエラーが発生しました:';

  @override
  String get selectURL => 'URLを選択';

  @override
  String get selectURLs => 'URLを選択';

  @override
  String get pick => '選択';

  @override
  String get theme => 'テーマ';

  @override
  String get dark => 'ダーク';

  @override
  String get light => 'ライト';

  @override
  String get followSystem => 'システムに従う';

  @override
  String get followSystemThemeExplanation => 'システムテーマへの追従は、サードパーティのアプリケーションを使用することのみで可能です';

  @override
  String get useBlackTheme => 'ピュアブラックダークテーマを使用する';

  @override
  String get appSortBy => 'アプリの並び方';

  @override
  String get authorName => '作者名/アプリ名';

  @override
  String get nameAuthor => 'アプリ名/作者名';

  @override
  String get asAdded => '追加順';

  @override
  String get appSortOrder => '並び順';

  @override
  String get ascending => '昇順';

  @override
  String get descending => '降順';

  @override
  String get bgUpdateCheckInterval => 'バックグラウンドでのアップデート確認の間隔';

  @override
  String get neverManualOnly => '手動のみ';

  @override
  String get appearance => '外観';

  @override
  String get pinUpdates => 'アップデートがあるアプリをトップに固定する';

  @override
  String get updates => 'アップデート';

  @override
  String get sourceSpecific => 'ソース別の設定';

  @override
  String get appSource => 'アプリのソース';

  @override
  String get noLogs => 'ログはありません';

  @override
  String get appLogs => 'アプリのログ';

  @override
  String get close => '閉じる';

  @override
  String get share => '共有';

  @override
  String get appNotFound => 'アプリが見つかりません';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-エクスポート';

  @override
  String get pickAnAPK => 'APKを選択';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 は複数のパッケージが存在します: ';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'お使いのデバイスは $p0 CPUアーキテクチャに対応しています。';
  }

  @override
  String get deviceSupportsFollowingArchs => 'お使いのデバイスは、以下のCPUアーキテクチャをサポートしています:';

  @override
  String get warning => '警告';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'アプリのソースは\'$p0\'ですが、リリースパッケージは\'$p1\'からダウンロードされます。続行しますか？';
  }

  @override
  String get updatesAvailable => 'アップデートが利用可能';

  @override
  String get updatesAvailableNotifDescription => 'Updatiumが追跡している1つまたは複数のアプリのアップデートが利用可能であることをユーザーに通知する';

  @override
  String get noNewUpdates => '新しいアップデートはありません。';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 のアップデートが利用可能です。';
  }

  @override
  String get appsUpdated => 'アプリをアップデートしました';

  @override
  String get appsNotUpdated => 'アプリのアップデートに失敗しました';

  @override
  String get appsUpdatedNotifDescription => '1つまたは複数のアプリのアップデートがバックグラウンドで適用されたことをユーザーに通知する';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 が $p1 にアップデートされました';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return '$p0 の $p1 へのアップデートに失敗しました';
  }

  @override
  String get errorCheckingUpdates => 'アップデート確認中のエラー';

  @override
  String get errorCheckingUpdatesNotifDescription => 'バックグラウンドでのアップデート確認に失敗した際に表示される通知';

  @override
  String get appsRemoved => '削除されたアプリ';

  @override
  String get appsRemovedNotifDescription => 'アプリの読み込み中にエラーが発生したため、1つまたは複数のアプリが削除されたことをユーザーに通知する';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '次のエラーのため、$p0 は削除されました: $p1';
  }

  @override
  String get completeAppInstallation => 'アプリのインストールを完了する';

  @override
  String get updatiumMustBeOpenToInstallApps => 'アプリをインストールするにはUpdatiumを開く必要があります';

  @override
  String get completeAppInstallationNotifDescription => 'アプリのインストールを完了するために、Updatiumに戻る必要があります';

  @override
  String get checkingForUpdates => 'アップデートを確認中';

  @override
  String get checkingForUpdatesNotifDescription => 'アップデートを確認する際に表示される一時的な通知';

  @override
  String get pleaseAllowInstallPerm => 'Updatiumによるアプリのインストールを許可してください';

  @override
  String get trackOnly => '追跡のみ';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'エラー $p0';
  }

  @override
  String get versionCorrectionDisabled => 'バージョン補正無効 (プラグインが動作していません)';

  @override
  String get unknown => '不明';

  @override
  String get none => 'なし';

  @override
  String get all => 'すべて';

  @override
  String get never => 'しない';

  @override
  String latestVersionX(Object p0) {
    return '最新: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'インストール済み: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return '最終アップデート確認: $p0';
  }

  @override
  String get remove => '削除';

  @override
  String get yesMarkUpdated => 'はい、アップデート済みとしてマークします';

  @override
  String get fdroid => 'F-Droid公式';

  @override
  String get appIdOrName => 'アプリのIDまたは名前';

  @override
  String get appId => 'アプリID';

  @override
  String get appWithIdOrNameNotFound => 'そのIDや名前を持つアプリは見つかりませんでした';

  @override
  String get reposHaveMultipleApps => 'リポジトリには複数のアプリが含まれることがあります';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid サードパーティリポジトリ';

  @override
  String get install => 'インストール';

  @override
  String get markInstalled => 'インストール済みとしてマークする';

  @override
  String get update => 'アップデート';

  @override
  String get updated => '更新済み';

  @override
  String get markUpdated => 'アップデート済みとしてマークする';

  @override
  String get additionalOptions => '追加のオプション';

  @override
  String get disableVersionDetection => 'バージョン検出を無効にする';

  @override
  String get noVersionDetectionExplanation => 'このオプションは、バージョン検出が正しく機能しないアプリにのみ使用する必要があります。';

  @override
  String downloadingX(Object p0) {
    return '$p0 をダウンロード中';
  }

  @override
  String downloadX(Object p0) {
    return '$p0 をダウンロード';
  }

  @override
  String downloadedX(Object p0) {
    return '$p0 をダウンロードしました';
  }

  @override
  String get releaseAsset => 'リリースアセット';

  @override
  String get downloadNotifDescription => 'アプリのダウンロード状況を通知する';

  @override
  String get noAPKFound => 'APKが見つかりません';

  @override
  String get noVersionDetection => 'バージョン検出を行わない';

  @override
  String get categorize => 'カテゴライズ';

  @override
  String get categories => 'カテゴリ';

  @override
  String get category => 'カテゴリ';

  @override
  String get noCategory => 'カテゴリなし';

  @override
  String get noCategories => 'カテゴリなし';

  @override
  String get deleteCategoriesQuestion => 'カテゴリを削除しますか？';

  @override
  String get categoryDeleteWarning => '削除されたカテゴリ内のアプリは未分類に設定されます。';

  @override
  String get addCategory => 'カテゴリを追加';

  @override
  String get label => 'ラベル';

  @override
  String get language => '言語';

  @override
  String get copiedToClipboard => 'クリップボードにコピーしました';

  @override
  String get storagePermissionDenied => 'ストレージ権限が拒否されました';

  @override
  String get selectedCategorizeWarning => 'これにより、選択したアプリの既存のカテゴリ設定がすべて置き換えられます。';

  @override
  String get filterAPKsByRegEx => '正規表現でAPKをフィルタリングする';

  @override
  String get removeFromUpdatium => 'Updatiumから削除する';

  @override
  String get uninstallFromDevice => 'デバイスからアンインストールする';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'バージョン検出を無効にしているアプリにのみ動作します。';

  @override
  String get releaseDateAsVersion => 'リリース日をバージョンとして使用する';

  @override
  String get releaseTitleAsVersion => 'リリースタイトルをバージョンとして使用する';

  @override
  String get releaseDateAsVersionExplanation => 'このオプションは、バージョン検出が正しく機能しないアプリで、リリース日が利用可能な場合にのみ使用する必要があります。';

  @override
  String get changes => '変更点';

  @override
  String get releaseDate => 'リリース日';

  @override
  String get importFromURLsInFile => 'ファイル（OPMLなど）内のURLからインポート';

  @override
  String get versionDetectionExplanation => 'バージョン文字列をOSが検出したバージョンと照合する';

  @override
  String get versionDetection => 'バージョン検出';

  @override
  String get standardVersionDetection => '標準のバージョン検出';

  @override
  String get groupByCategory => 'カテゴリー別にグループ化';

  @override
  String get listView => 'リスト表示';

  @override
  String get gridView => 'グリッド表示';

  @override
  String get autoApkFilterByArch => '可能であれば、CPUアーキテクチャによるAPKのフィルタリングを試みる';

  @override
  String get autoLinkFilterByArch => '可能であれば、CPUアーキテクチャによるリンクのフィルタリングを試みる';

  @override
  String get overrideSource => 'ソースの上書き';

  @override
  String get dontShowAgain => '二度と表示しない';

  @override
  String get dontShowTrackOnlyWarnings => '「追跡のみ」の警告を表示しない';

  @override
  String get dontShowAPKOriginWarnings => 'APKのダウンロード元の警告を表示しない';

  @override
  String get moveNonInstalledAppsToBottom => '未インストールのアプリをアプリ一覧の下部に移動させる';

  @override
  String get hideNonInstalledApps => '未インストールのアプリを非表示';

  @override
  String get gitlabPATLabel => 'GitLab パーソナルアクセストークン';

  @override
  String get about => '概要';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0: これには追加の認証が必要です (設定にて)';
  }

  @override
  String get checkOnStart => '起動時にアップデートを確認する';

  @override
  String get tryInferAppIdFromCode => 'ソースコードからApp IDを推測する';

  @override
  String get removeOnExternalUninstall => '外部でアンインストールされたアプリを自動的に削除する';

  @override
  String get pickHighestVersionCode => '最も高いバージョンコードのAPKを自動的に選択する';

  @override
  String get checkUpdateOnDetailPage => 'アプリの詳細ページを開く際にアップデートを確認する';

  @override
  String get disablePageTransitions => 'ページ遷移アニメーションを無効化する';

  @override
  String get reversePageTransitions => 'ページ遷移アニメーションを反転する';

  @override
  String get minStarCount => '最小スター数';

  @override
  String get addInfoBelow => '以下にこの情報を追加してください。';

  @override
  String get addInfoInSettings => '設定でこの情報を追加してください。';

  @override
  String get githubSourceNote => 'GitHubのレート制限はAPIキーを使うことで回避できます。';

  @override
  String get sortByLastLinkSegment => 'リンクの最後のセグメントのみでソートする';

  @override
  String get filterReleaseNotesByRegEx => '正規表現でリリースノートをフィルタリングする';

  @override
  String get customLinkFilterRegex => '正規表現によるカスタムリンクフィルター (デフォルト \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'アプリのアップデートを試行';

  @override
  String get appsPossiblyUpdatedNotifDescription => '1つまたは複数のアプリのアップデートがバックグラウンドで適用された可能性があることをユーザーに通知する';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 が $p1 にアップデートされた可能性があります。';
  }

  @override
  String get enableBackgroundUpdates => 'バックグラウンドアップデートを有効化する';

  @override
  String get backgroundUpdateReqsExplanation => 'バックグラウンドアップデートは、すべてのアプリで利用できるとは限りません。';

  @override
  String get backgroundUpdateLimitsExplanation => 'バックグラウンドアップデートが成功したかどうかは、Updatiumを起動したときにしか判断できません。';

  @override
  String get verifyLatestTag => '\'latest\'タグを確認する';

  @override
  String get intermediateLinkRegex => '訪問する「中間」リンクのフィルター';

  @override
  String get filterByLinkText => 'テキストでリンクをフィルタリングする';

  @override
  String get matchLinksOutsideATags => '<a>タグの外にあるリンクに一致させる';

  @override
  String get intermediateLinkNotFound => '中間リンクが見つかりませんでした';

  @override
  String get intermediateLink => '中間リンク';

  @override
  String get exemptFromBackgroundUpdates => 'バックグラウンドアップデートを行わない (有効な場合)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Wi-Fiに接続していない場合、バックグラウンドアップデートを無効にする';

  @override
  String get bgUpdatesWhileChargingOnly => '非充電時にバックグラウンドアップデートを無効にする';

  @override
  String get autoSelectHighestVersionCode => '最も高いバージョンコードのAPKを自動で選択する';

  @override
  String get versionExtractionRegEx => 'バージョン抽出の正規表現';

  @override
  String get trimVersionString => '正規表現でバージョン文字列をトリムする';

  @override
  String matchGroupToUseForX(Object p0) {
    return '\"$p0\"に使用するマッチしたグループ';
  }

  @override
  String get matchGroupToUse => 'バージョン抽出に使用するマッチしたグループ';

  @override
  String get highlightTouchTargets => '目立たないタップ可能な対象をハイライトする';

  @override
  String get pickExportDir => 'エクスポートディレクトリを選択';

  @override
  String get autoExportOnChanges => '変更があった際に自動でエクスポートする';

  @override
  String get includeSettings => '設定を含む';

  @override
  String get filterVersionsByRegEx => '正規表現でバージョンをフィルタリングする';

  @override
  String get trySelectingSuggestedVersionCode => '提案されたバージョンコードのAPKを選択する';

  @override
  String get dontSortReleasesList => 'APIからのリリース順を保持する';

  @override
  String get reverseSort => '逆順ソート';

  @override
  String get takeFirstLink => '最初のリンクを取得する';

  @override
  String get skipSort => 'ソートをスキップする';

  @override
  String get debugMenu => 'デバッグメニュー';

  @override
  String get bgTaskStarted => 'バックグラウンドタスクが開始されました - ログを確認してください。';

  @override
  String get runBgCheckNow => '今すぐバックグラウンドでのアップデート確認を開始する';

  @override
  String get versionExtractWholePage => 'バージョン抽出の正規表現をページ全体に適用する';

  @override
  String get installing => 'インストール中';

  @override
  String get skipUpdateNotifications => 'アップデート通知を行わない';

  @override
  String get updatesAvailableNotifChannel => 'アップデートが利用可能';

  @override
  String get appsUpdatedNotifChannel => 'アプリをアップデートしました';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'アプリのアップデートを試行';

  @override
  String get errorCheckingUpdatesNotifChannel => 'アップデート確認中のエラー';

  @override
  String get appsRemovedNotifChannel => '削除されたアプリ';

  @override
  String downloadingXNotifChannel(Object p0) {
    return '$p0 をダウンロード中';
  }

  @override
  String get completeAppInstallationNotifChannel => 'アプリのインストールを完了する';

  @override
  String get checkingForUpdatesNotifChannel => 'アップデートを確認中';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'インストール済みのアプリと「追跡のみ」のアプリのアップデートのみを確認する';

  @override
  String get supportFixedAPKURL => '固定されたAPKのURLをサポートする';

  @override
  String selectX(Object p0) {
    return '$p0 選択';
  }

  @override
  String get parallelDownloads => '並行ダウンロードを許可する';

  @override
  String get useShizuku => 'ShizukuまたはSuiを使用してインストールする';

  @override
  String get shizukuBinderNotFound => 'Shizukuが起動していません';

  @override
  String get shizukuOld => '古いShizukuのバージョン (<11) - アップデートしてください';

  @override
  String get shizukuOldAndroidWithADB => 'ShizukuがAndroid 8.1未満でADBを使用して動作しています - Androidをアップデートするか、代わりにSuiを使用してください';

  @override
  String get shizukuPretendToBeGooglePlay => 'Google Playをインストール元として設定する（Shizukuを使用する場合）';

  @override
  String get useSystemFont => 'システムフォントを使用する';

  @override
  String get useVersionCodeAsOSVersion => 'アプリのバージョンコードをOSで検出されたバージョンとして使用する';

  @override
  String get requestHeader => 'リクエストヘッダー';

  @override
  String get useLatestAssetDateAsReleaseDate => '最新のアセットアップロードをリリース日として使用する';

  @override
  String get defaultPseudoVersioningMethod => 'デフォルトの疑似バージョン管理方法';

  @override
  String get partialAPKHash => 'APKの部分ハッシュ';

  @override
  String get apkLinkHash => 'APKリンクのハッシュ';

  @override
  String get directAPKLink => 'APKのダイレクトリンク';

  @override
  String get pseudoVersionInUse => '疑似バージョンが使用されています';

  @override
  String get installed => 'インストール済み';

  @override
  String get latest => '最新';

  @override
  String get invertRegEx => '正規表現を反転';

  @override
  String get note => '注';

  @override
  String selfHostedNote(Object p0) {
    return 'ドロップダウン\"$p0\"を使用すると、あらゆるソースのセルフホスト/カスタムインスタンスにアクセスできます。';
  }

  @override
  String get badDownload => 'APK を解析できませんでした（互換性がないか、部分的にダウンロードされています）。';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'AppVerifierで新しいアプリを共有する（利用可能な場合）';

  @override
  String get appVerifierInstructionToast => 'AppVerifierに共有し、準備ができたらここに戻ってください。';

  @override
  String get wiki => 'ヘルプ/ウィキ';

  @override
  String get allowInsecure => '安全でないHTTPリクエストを許可する';

  @override
  String get stayOneVersionBehind => '最新のバージョンから1つ前のものを使用する';

  @override
  String get useFirstApkOfVersion => '複数のAPKから最初のAPKを自動選択する';

  @override
  String get refreshBeforeDownload => 'ダウンロード前にアプリの詳細を更新する';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'アプリ名';

  @override
  String get smartname => 'アプリ名（スマート）';

  @override
  String get sortMethod => 'ソート方法';

  @override
  String get welcome => 'ようこそ';

  @override
  String get documentationLinksNote => '以下のリンクにあるUpdatium GitHubページには、ビデオ、記事、ディスカッション、その他のリソースへのリンクがあり、アプリの使い方を理解するのに役立ちます。';

  @override
  String get batteryOptimizationNote => 'Updatiumの設定で「フォアグラウンドサービス」に切り替えるか、OSの設定でバッテリー最適化を無効にすると、バックグラウンドダウンロードがより確実に動作するようになります。';

  @override
  String fileDeletionError(Object p0) {
    return 'ファイルの削除に失敗しました（手動で削除してから再試行してください）：\"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium フォアグラウンドサービス';

  @override
  String get foregroundServiceExplanation => 'アップデート確認にフォアグラウンドサービスを使用する（より信頼性が高いが、より電力を消費する）';

  @override
  String get fgServiceNotice => 'この通知は、バックグラウンドでアップデートを確認するために必要です（OSの設定で非表示にできます）。';

  @override
  String get excludeSecrets => 'シークレットを除く';

  @override
  String get ghReqPrefix => 'GitHub リクエスト用の \'sky22333/hubproxy\' インスタンス';

  @override
  String get includeZips => 'ZIPファイルを含む';

  @override
  String get zippedApkFilterRegEx => 'ZIP内のAPKをフィルタリングする';

  @override
  String get googleVerificationWarningP1 => 'Googleは、2026年から2027年以降、「認定」Androidデバイス上のすべてのアプリにおいて、開発者が個人情報をGoogleに直接提出することを義務付けると発表しました。\n\nその後、Updatiumは認定Androidデバイスで動作しなくなる可能性があります。';

  @override
  String get googleVerificationWarningP2 => '詳細については、https://keepandroidopen.org/ をご覧ください。';

  @override
  String get googleVerificationWarningP3 => 'なお、短期的には、Googleが発表後に広範な反発を受けて実装を約束した「高度なフロー」プロセスを通じて、「未検証」（非準拠）のアプリをインストールし続けることが可能になるかもしれません。しかし、その具体的な仕組みは明らかにされておらず、ユーザーの自由が実質的に保たれるかどうかは不明です。\n\nいずれにせよ、Googleのこの動きは、個人向けの自由な汎用コンピューティングの終焉に向けた大きな一歩です。\n\nGrapheneOSのような非認定OSは、その存在が許される限り、この影響を受けないはずです。';

  @override
  String get multipleSigners => '複数の署名者';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'アプリを削除しますか？',
      one: 'アプリを削除しますか？',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'リクエストが多すぎます（レート制限）- $count 分後に再試行してください',
      one: 'リクエストが多すぎます（レート制限）- $count 分後に再試行してください',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'バックグラウンドでのアップデート確認で $count の問題が発生, $count 分後に再試行します',
      one: 'バックグラウンドでのアップデート確認で $count の問題が発生, $count 分後に再試行します',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'バックグラウンドでのアップデート確認で $count 個のアップデートを発見 - 必要に応じてユーザーに通知します',
      one: 'バックグラウンドでのアップデート確認で $count 個のアップデートを発見 - 必要に応じてユーザーに通知します',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個のアプリ',
      one: '$count 個のアプリ',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 個のURL',
      one: '$count 個のURL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 分',
      one: '$count 分',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 時間',
      one: '$count 時間',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 日',
      one: '$count 日',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$n 個のログをクリアしました (前 = $before, 後 = $after)',
      one: '$n 個のログをクリアしました (前 = $before, 後 = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count とさらに $count 個のアプリのアップデートが利用可能です。',
      one: '$count とさらに 1 個のアプリのアップデートが利用可能です。',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count とさらに $count 個のアプリがアップデートされました。',
      one: '$count とさらに 1 個のアプリがアップデートされました。',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count とさらに $count 個のアプリのアップデートに失敗しました。',
      one: '$count とさらに 1 個のアプリのアップデートに失敗しました。',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count とさらに $count 個のアプリがアップデートされた可能性があります。',
      one: '$count とさらに 1 個のアプリがアップデートされた可能性があります。',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APK',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '証明書ハッシュ',
      one: '証明書ハッシュ',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'セキュリティおよび法的免責事項';

  @override
  String get license => 'ライセンス';

  @override
  String get licenseText => 'このアプリケーションはGPL v3ライセンスの下で配布されています。';

  @override
  String get disclaimer => '免責事項';

  @override
  String get disclaimerText => 'このアプリケーションは外部アプリケーションを配布、ホスト、または検証しません。ユーザーはこのツールを通じてインストールされたソフトウェアの安全性と合法性について全責任を負います。\n\nhttps://github.com/omeritzics/Updatium はUpdatiumをダウンロードする唯一の公式場所です - 非公式のソースからダウンロードすることは安全ではないため、他の場所からダウンロードすることは強くお勧めしません。';

  @override
  String get privacy => 'プライバシー';

  @override
  String get privacyText => 'このアプリはプライバシー重視で、個人データを収集しません。';

  @override
  String get acceptAndContinue => '同意して続行';

  @override
  String get decline => '拒否';
}
