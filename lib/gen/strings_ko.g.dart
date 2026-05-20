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
class TranslationsKo with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	@override 
	TranslationsKo $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsKo(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => '유효한 {} 앱 URL이 아닙니다';
	@override String get noReleaseFound => '적절한 릴리스를 찾을 수 없습니다';
	@override String get noVersionFound => '릴리스 버전을 결정할 수 없습니다';
	@override String get urlMatchesNoSource => 'URL이 알려진 소스와 일치하지 않습니다';
	@override String get cantInstallOlderVersion => '앱의 이전 버전을 설치할 수 없습니다';
	@override String get appIdMismatch => '다운로드된 패키지 ID가 기존 앱 ID와 일치하지 않습니다';
	@override String get functionNotImplemented => '이 클래스는 이 기능을 구현하지 않았습니다';
	@override String get placeholder => '플레이스홀더';
	@override String get someErrors => '일부 오류가 발생했습니다';
	@override String get unexpectedError => '예기치 않은 오류';
	@override String get ok => '확인';
	@override String get and => '그리고';
	@override String get githubPATLabel => 'GitHub 개인 액세스 토큰';
	@override String get includePrereleases => '사전 릴리스 포함';
	@override String get fallbackToOlderReleases => '이전 릴리스로 대체';
	@override String get filterReleaseTitlesByRegEx => '정규 표현식으로 릴리스 제목 필터링';
	@override String get invalidRegEx => '잘못된 정규 표현식';
	@override String get noDescription => '설명 없음';
	@override String get cancel => '취소';
	@override String get kContinue => '계속';
	@override String get requiredInBrackets => '(필수)';
	@override String get dropdownNoOptsError => '오류: 드롭다운에는 최소 하나의 옵션이 있어야 합니다';
	@override String get color => '색상';
	@override String get standard => '표준';
	@override String get custom => '사용자 정의';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You 색상 사용';
	@override String get githubStarredRepos => 'GitHub 즐겨찾기 저장소';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => '사용자 이름';
	@override String get wrongArgNum => '잘못된 인수 수 제공';
	@override String get xIsTrackOnly => '{}는 추적 전용입니다';
	@override String get source => '소스';
	@override String get app => '앱';
	@override String get appsFromSourceAreTrackOnly => '이 소스의 앱은 \'추적 전용\'입니다.';
	@override String get youPickedTrackOnly => '당신은 \'추적 전용\' 옵션을 선택했습니다.';
	@override String get trackOnlyAppDescription => '앱은 업데이트를 위해 추적되지만 Updatium은 다운로드하거나 설치할 수 없습니다.';
	@override String get cancelled => '취소됨';
	@override String get appAlreadyAdded => '앱이 이미 추가되었습니다';
	@override String get alreadyUpToDateQuestion => '앱이 이미 최신 상태입니까?';
	@override String get addApp => '앱 추가';
	@override String get appSourceURL => '앱 소스 URL';
	@override String get error => '오류';
	@override String get add => '추가';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => '검색 (일부 소스만)';
	@override String get search => '검색';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{}에 대한 추가 옵션';
	@override String get supportedSources => '지원되는 소스';
	@override String get trackOnlyInBrackets => '(추적 전용)';
	@override String get searchableInBrackets => '(검색 가능)';
	@override String get appsString => '앱';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => '환영합니다!';
	@override String get noAppsSubtext => '아래의 \'앱 추가\'를 탭하여 첫 번째 앱을 추가할 수 있습니다.';
	@override String get noAppsForFilter => '필터에 대한 앱 없음';
	@override String get byX => '{}에 의해';
	@override String get percentProgress => '진행률: {}%';
	@override String get pleaseWait => '기다려 주세요';
	@override String get updateAvailable => '업데이트 가능';
	@override String get notInstalled => '설치되지 않음';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => '의사 버전';
	@override String get selectAll => '모두 선택';
	@override String get deselectX => '{} 선택 해제';
	@override String get xWillBeRemovedButRemainInstalled => '{}는 Updatium에서 제거되지만 장치에 설치된 상태로 남아 있습니다.';
	@override String get removeSelectedAppsQuestion => '선택한 앱을 제거하시겠습니까?';
	@override String get removeSelectedApps => '선택한 앱 제거';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} 업데이트';
	@override String get installX => '{} 설치';
	@override String get markXTrackOnlyAsUpdated => '{}\n(추적 전용)\n업데이트됨으로 표시';
	@override String get changeX => '{} 변경';
	@override String get installUpdateApps => '앱 설치/업데이트';
	@override String get installUpdateSelectedApps => '선택한 앱 설치/업데이트';
	@override String get markXSelectedAppsAsUpdated => '{} 선택한 앱을 업데이트됨으로 표시하시겠습니까?';
	@override String get no => '아니요';
	@override String get yes => '예';
	@override String get markSelectedAppsUpdated => '선택한 앱을 업데이트됨으로 표시';
	@override String get pinToTop => '상단에 고정';
	@override String get unpinFromTop => '상단에서 고정 해제';
	@override String get resetInstallStatusForSelectedAppsQuestion => '선택한 앱의 설치 상태를 재설정하시겠습니까?';
	@override String get installStatusOfXWillBeResetExplanation => '선택한 앱의 설치 상태가 재설정됩니다.\n\n이것은 실패한 업데이트나 기타 문제로 인해 Updatium에 표시된 앱 버전이 잘못된 경우에 도움이 될 수 있습니다.';
	@override String get customLinkMessage => '이 링크는 Updatium이 설치된 장치에서 작동합니다';
	@override String get shareAppConfigLinks => '앱 구성 HTML 링크로 공유';
	@override String get resetInstallStatus => '설치 상태 재설정';
	@override String get more => '더보기';
	@override String get removeOutdatedFilter => '구식 앱 필터 제거';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => '구식 앱만 표시';
	@override String get filter => '필터';
	@override String get filterApps => '앱 필터';
	@override String get filterDays => 'Filter days';
	@override String get appName => '앱 이름';
	@override String get author => '저자';
	@override String get upToDateApps => '최신 상태의 앱';
	@override String get nonInstalledApps => '설치되지 않은 앱';
	@override String get importExport => '가져오기/내보내기';
	@override String get settings => '설정';
	@override String get exportedTo => '{}로 내보내기 완료';
	@override String get updatiumExport => 'Updatium 내보내기';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => '잘못된 입력';
	@override String get importedX => '{} 가져오기 완료';
	@override String get updatiumImport => 'Updatium 가져오기';
	@override String get importFromURLList => 'URL 목록에서 가져오기';
	@override String get searchQuery => '검색 쿼리';
	@override String get appURLList => '앱 URL 목록';
	@override String get line => '줄';
	@override String get searchX => '{} 검색';
	@override String get noResults => '결과가 없습니다';
	@override String get importX => '{} 가져오기';
	@override String get importedAppsIdDisclaimer => '가져온 앱은 "설치되지 않음"으로 잘못 표시될 수 있습니다.\n이를 수정하려면 Updatium을 통해 다시 설치하십시오.\n앱 데이터에는 영향을 미치지 않습니다.\n\nURL 및 타사 가져오기 방법에만 영향을 미칩니다.';
	@override String get importErrors => '가져오기 오류';
	@override String get importedXOfYApps => '{}개의 앱 중 {}개 가져오기 완료.';
	@override String get followingURLsHadErrors => '다음 URL에 오류가 있었습니다:';
	@override String get selectURL => 'URL 선택';
	@override String get selectURLs => 'URL 선택';
	@override String get pick => '선택';
	@override String get theme => '테마';
	@override String get dark => '다크';
	@override String get light => '라이트';
	@override String get followSystem => '시스템 따르기';
	@override String get followSystemThemeExplanation => '시스템 테마를 따르려면 타사 애플리케이션을 사용해야 합니다';
	@override String get useBlackTheme => '순수한 검은색 다크 테마 사용';
	@override String get appSortBy => '앱 정렬 기준';
	@override String get authorName => '저자/이름';
	@override String get nameAuthor => '이름/저자';
	@override String get asAdded => '추가된 순서대로';
	@override String get appSortOrder => '앱 정렬 순서';
	@override String get ascending => '오름차순';
	@override String get descending => '내림차순';
	@override String get bgUpdateCheckInterval => '백그라운드 업데이트 확인 간격';
	@override String get neverManualOnly => '절대 - 수동만';
	@override String get appearance => '외관';
	@override String get pinUpdates => '앱 보기 상단에 업데이트 고정';
	@override String get updates => '업데이트';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => '소스별';
	@override String get appSource => '앱 소스';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => '로그 없음';
	@override String get appLogs => '앱 로그';
	@override String get appLogsHint => 'View application logs';
	@override String get close => '닫기';
	@override String get share => '공유';
	@override String get appNotFound => '앱을 찾을 수 없습니다';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'APK 선택';
	@override String get appHasMoreThanOnePackage => '{}에는 둘 이상의 패키지가 있습니다:';
	@override String get deviceSupportsXArch => '장치는 {} CPU 아키텍처를 지원합니다.';
	@override String get deviceSupportsFollowingArchs => '장치는 다음 CPU 아키텍처를 지원합니다:';
	@override String get warning => '경고';
	@override String get sourceIsXButPackageFromYPrompt => '앱 소스는 \'{}\'이지만 릴리스 패키지는 \'{}\'에서 제공됩니다. 계속하시겠습니까?';
	@override String get updatesAvailable => '업데이트 가능';
	@override String get updatesAvailableNotifDescription => 'Updatium이 추적하는 하나 이상의 앱에 대한 업데이트가 있음을 사용자에게 알립니다';
	@override String get noNewUpdates => '새로운 업데이트가 없습니다.';
	@override String get xHasAnUpdate => '{}에 업데이트가 있습니다.';
	@override String get appsUpdated => '앱 업데이트됨';
	@override String get appsNotUpdated => '앱 업데이트 실패';
	@override String get appsUpdatedNotifDescription => '백그라운드에서 하나 이상의 앱에 대한 업데이트가 적용되었음을 사용자에게 알립니다';
	@override String get xWasUpdatedToY => '{}가 {}로 업데이트되었습니다.';
	@override String get xWasNotUpdatedToY => '{}를 {}로 업데이트하지 못했습니다.';
	@override String get errorCheckingUpdates => '업데이트 확인 오류';
	@override String get errorCheckingUpdatesNotifDescription => '백그라운드 업데이트 확인이 실패할 때 표시되는 알림';
	@override String get appsRemoved => '앱 제거됨';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => '로드 중 오류로 인해 하나 이상의 앱이 제거되었음을 사용자에게 알립니다';
	@override String get xWasRemovedDueToErrorY => '{}가 다음 오류로 인해 제거되었습니다: {}';
	@override String get completeAppInstallation => '앱 설치 완료';
	@override String get updatiumMustBeOpenToInstallApps => '앱을 설치하려면 Updatium이 열려 있어야 합니다';
	@override String get completeAppInstallationNotifDescription => '앱 설치를 완료하려면 Updatium으로 돌아가도록 사용자에게 요청합니다';
	@override String get checkingForUpdates => '업데이트 확인 중';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => '업데이트 확인 시 나타나는 일시적인 알림';
	@override String get pleaseAllowInstallPerm => 'Updatium이 앱을 설치할 수 있도록 허용해 주세요';
	@override String get trackOnly => '추적 전용';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => '오류 {}';
	@override String get versionCorrectionDisabled => '버전 수정 비활성화됨 (플러그인이 작동하지 않는 것 같습니다)';
	@override String get unknown => '알 수 없음';
	@override String get none => '없음';
	@override String get all => '모두';
	@override String get never => '절대';
	@override String get latestVersion => '최신';
	@override String get installedVersionX => '설치됨: {}';
	@override String get lastUpdateCheckX => '마지막 업데이트 확인: {}';
	@override String get remove => '제거';
	@override String get quickLinks => 'Quick Links';
	@override String get yesMarkUpdated => '예, 업데이트됨으로 표시';
	@override String get fdroid => 'F-Droid 공식';
	@override String get appIdOrName => '앱 ID 또는 이름';
	@override String get appId => '앱 ID';
	@override String get appWithIdOrNameNotFound => '해당 ID 또는 이름의 앱을 찾을 수 없습니다';
	@override String get reposHaveMultipleApps => '저장소에는 여러 앱이 포함될 수 있습니다';
	@override String get fdroidThirdPartyRepo => 'F-Droid 타사 저장소';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => '설치';
	@override String get markInstalled => '설치됨으로 표시';
	@override String get update => '업데이트';
	@override String get updated => '업데이트됨';
	@override String get markUpdated => '업데이트됨으로 표시';
	@override String get download => 'Download';
	@override String get additionalOptions => '추가 옵션';
	@override String get disableVersionDetection => '버전 감지 비활성화';
	@override String get noVersionDetectionExplanation => '이 옵션은 버전 감지가 올바르게 작동하지 않는 앱에만 사용해야 합니다.';
	@override String get downloadingX => '{} 다운로드 중';
	@override String get downloadX => '{} 다운로드';
	@override String get downloadedX => '{} 다운로드 완료';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => '릴리스 자산';
	@override String get downloadNotifDescription => '앱 다운로드 진행 상황을 사용자에게 알립니다';
	@override String get noAPKFound => 'APK를 찾을 수 없습니다';
	@override String get noVersionDetection => '버전 감지 없음';
	@override String get categorize => '분류';
	@override String get categories => '카테고리';
	@override String get category => '카테고리';
	@override String get noCategory => '카테고리 없음';
	@override String get noCategories => '카테고리 없음';
	@override String get categoryDeleteQuestion => '카테고리를 삭제하시겠습니까?';
	@override String get categoryDeleteWarning => '삭제된 카테고리의 모든 앱은 미분류로 설정됩니다.';
	@override String get addCategory => '카테고리 추가';
	@override String get label => '레이블';
	@override String get language => '언어';
	@override String get copiedToClipboard => '클립보드에 복사됨';
	@override String get storagePermissionDenied => '저장소 권한 거부됨';
	@override String get selectedCategorizeWarning => '이 작업은 선택한 앱의 기존 카테고리 설정을 대체합니다.';
	@override String get filterAPKsByRegEx => '정규 표현식으로 APK 필터링';
	@override String get removeFromUpdatium => 'Updatium에서 제거';
	@override String get uninstallFromDevice => '장치에서 제거';
	@override String get onlyWorksWithNonVersionDetectApps => '버전 감지가 비활성화된 앱에만 작동합니다.';
	@override String get releaseDateAsVersion => '릴리스 날짜를 버전 문자열로 사용';
	@override String get releaseTitleAsVersion => '릴리스 제목을 버전 문자열로 사용';
	@override String get releaseDateAsVersionExplanation => '이 옵션은 버전 감지가 올바르게 작동하지 않지만 릴리스 날짜가 있는 앱에만 사용해야 합니다.';
	@override String get changes => '변경 사항';
	@override String get releaseDate => '릴리스 날짜';
	@override String get importFromURLsInFile => '파일의 URL에서 가져오기 (OPML과 같은)';
	@override String get versionDetectionExplanation => 'OS에서 감지된 버전과 버전 문자열 조정';
	@override String get versionDetection => '버전 감지';
	@override String get standardVersionDetection => '표준 버전 감지';
	@override String get groupByCategory => '카테고리별 그룹화';
	@override String get listView => '목록 보기';
	@override String get gridView => '그리드 보기';
	@override String get autoApkFilterByArch => '가능한 경우 CPU 아키텍처별로 APK 필터링 시도';
	@override String get autoLinkFilterByArch => '가능하면 CPU 아키텍처별로 링크를 필터링해 보세요.';
	@override String get overrideSource => '소스 재정의';
	@override String get dontShowAgain => '다시 표시하지 않기';
	@override String get dontShowTrackOnlyWarnings => '\'추적 전용\' 경고 표시 안 함';
	@override String get dontShowAPKOriginWarnings => 'APK 출처 경고 표시 안 함';
	@override String get moveNonInstalledAppsToBottom => '설치되지 않은 앱을 앱 보기 하단으로 이동';
	@override String get gitlabPATLabel => 'GitLab 개인 액세스 토큰';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => '정보';
	@override String get requiresCredentialsInSettings => '{}는 추가 자격 증명이 필요합니다 (설정에서)';
	@override String get checkOnStart => '시작 시 업데이트 확인';
	@override String get safeMode => '안전 모드';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => '앱 추가는 안전 모드에서 비활성화됩니다';
	@override String get tryInferAppIdFromCode => '소스 코드에서 앱 ID를 추론해보세요';
	@override String get removeOnExternalUninstall => '외부에서 제거된 앱 자동 제거';
	@override String get pickHighestVersionCode => '가장 높은 버전 코드 APK 자동 선택';
	@override String get checkUpdateOnDetailPage => '앱 세부 정보 페이지 열 때 업데이트 확인';
	@override String get disablePageTransitions => '페이지 전환 애니메이션 비활성화';
	@override String get reversePageTransitions => '페이지 전환 애니메이션 반전';
	@override String get minStarCount => '최소 별 개수';
	@override String get addInfoBelow => '아래에 이 정보를 추가하십시오.';
	@override String get addInfoInSettings => '설정에 이 정보를 추가하십시오.';
	@override String get githubSourceNote => 'GitHub 속도 제한은 API 키를 사용하여 피할 수 있습니다.';
	@override String get sortByLastLinkSegment => '링크의 마지막 세그먼트로만 정렬';
	@override String get filterReleaseNotesByRegEx => '정규 표현식으로 릴리스 노트 필터링';
	@override String get customLinkFilterRegex => '정규 표현식으로 사용자 정의 APK 링크 필터링 (기본값 \'.apk$\')';
	@override String get appsPossiblyUpdated => '앱 업데이트 시도됨';
	@override String get appsPossiblyUpdatedNotifDescription => '백그라운드에서 하나 이상의 앱에 대한 업데이트가 잠재적으로 적용되었음을 사용자에게 알립니다';
	@override String get xWasPossiblyUpdatedToY => '{}가 {}로 업데이트되었을 수 있습니다.';
	@override String get enableBackgroundUpdates => '백그라운드 업데이트 활성화';
	@override String get backgroundUpdateReqsExplanation => '모든 앱에 대해 백그라운드 업데이트가 가능하지 않을 수 있습니다.';
	@override String get backgroundUpdateLimitsExplanation => '백그라운드 설치의 성공 여부는 Updatium이 열릴 때만 확인할 수 있습니다.';
	@override String get verifyLatestTag => '\'최신\' 태그 확인';
	@override String get intermediateLinkRegex => '\'중간\' 링크 방문 필터';
	@override String get filterByLinkText => '링크 텍스트로 링크 필터링';
	@override String get matchLinksOutsideATags => '<> 태그 외부의 링크 일치';
	@override String get intermediateLinkNotFound => '중간 링크를 찾을 수 없습니다';
	@override String get intermediateLink => '중간 링크';
	@override String get exemptFromBackgroundUpdates => '백그라운드 업데이트에서 제외 (활성화된 경우)';
	@override String get bgUpdatesOnWiFiOnly => 'WiFi가 아닐 때 백그라운드 업데이트 비활성화';
	@override String get bgUpdatesWhileChargingOnly => '충전 중이 아닐 때 백그라운드 업데이트 비활성화';
	@override String get autoSelectHighestVersionCode => '가장 높은 versionCode APK 자동 선택';
	@override String get versionExtractionRegEx => '버전 문자열 추출 정규 표현식';
	@override String get trimVersionString => '정규 표현식으로 버전 문자열 자르기';
	@override String get matchGroupToUseForX => '"{}"에 사용할 일치 그룹';
	@override String get matchGroupToUse => '버전 문자열 추출 정규 표현식에 사용할 일치 그룹';
	@override String get highlightTouchTargets => '덜 명확한 터치 대상 강조';
	@override String get pickExportDir => '내보내기 디렉토리 선택';
	@override String get autoExportOnChanges => '변경 시 자동 내보내기';
	@override String get includeSettings => '설정 포함';
	@override String get filterVersionsByRegEx => '정규 표현식으로 버전 필터링';
	@override String get trySelectingSuggestedVersionCode => '제안된 versionCode APK 선택 시도';
	@override String get dontSortReleasesList => 'API에서 릴리스 순서 유지';
	@override String get reverseSort => '정렬 반전';
	@override String get takeFirstLink => '첫 번째 링크 선택';
	@override String get skipSort => '정렬 건너뛰기';
	@override String get debugMenu => '디버그 메뉴';
	@override String get bgTaskStarted => '백그라운드 작업 시작됨 - 로그를 확인하세요.';
	@override String get runBgCheckNow => '지금 백그라운드 업데이트 확인 실행';
	@override String get versionExtractWholePage => '전체 페이지에 버전 문자열 추출 정규 표현식 적용';
	@override String get installing => '설치 중';
	@override String get skipUpdateNotifications => '업데이트 알림 건너뛰기';
	@override String get updatesAvailableNotifChannel => '업데이트 가능';
	@override String get appsUpdatedNotifChannel => '앱 업데이트됨';
	@override String get appsPossiblyUpdatedNotifChannel => '앱 업데이트 시도됨';
	@override String get errorCheckingUpdatesNotifChannel => '업데이트 확인 오류';
	@override String get appsRemovedNotifChannel => '앱 제거됨';
	@override String get downloadingXNotifChannel => '{} 다운로드 중';
	@override String get completeAppInstallationNotifChannel => '앱 설치 완료';
	@override String get checkingForUpdatesNotifChannel => '업데이트 확인 중';
	@override String get onlyCheckInstalledOrTrackOnlyApps => '설치된 앱과 추적 전용 앱만 업데이트 확인';
	@override String get supportFixedAPKURL => '고정 APK URL 지원';
	@override String get selectX => '{} 선택';
	@override String get parallelDownloads => '병렬 다운로드 허용';
	@override String get useShizuku => 'Shizuku 또는 Sui를 사용하여 설치';
	@override String get shizukuBinderNotFound => 'Shizuku 서비스가 실행 중이 아닙니다';
	@override String get shizukuOld => '오래된 Shizuku 버전 (<11) - 업데이트 필요';
	@override String get shizukuOldAndroidWithADB => 'ADB로 Android < 8.1에서 실행 중인 Shizuku - Android를 업데이트하거나 대신 Sui를 사용하세요';
	@override String get shizukuPretendToBeGooglePlay => '설치 소스로 Google Play 설정 (Shizuku 사용 시)';
	@override String get useSystemFont => '시스템 글꼴 사용';
	@override String get useVersionCodeAsOSVersion => '앱 versionCode를 OS에서 감지된 버전으로 사용';
	@override String get requestHeader => '요청 헤더';
	@override String get useLatestAssetDateAsReleaseDate => '최신 자산 업로드를 릴리스 날짜로 사용';
	@override String get defaultPseudoVersioningMethod => '기본 의사 버전 관리 방법';
	@override String get partialAPKHash => '부분 APK 해시';
	@override String get APKLinkHash => 'APK 링크 해시';
	@override String get directAPKLink => '직접 APK 링크';
	@override String get pseudoVersionInUse => '의사 버전 사용 중';
	@override String get installedVersion => '설치됨';
	@override String get installed => '설치됨';
	@override String get notInstalledApps => '설치되지 않음';
	@override String get latest => '최신';
	@override String get invertRegEx => '정규 표현식 반전';
	@override String get note => '노트';
	@override String get selfHostedNote => '"{}" 드롭다운을 사용하여 소스의 자체 호스팅/사용자 정의 인스턴스에 도달할 수 있습니다.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK를 구문 분석할 수 없습니다 (호환되지 않거나 부분 다운로드)';
	@override String get beforeNewInstallsShareToAppVerifier => '새 앱을 AppVerifier와 공유 (가능한 경우)';
	@override String get appVerifierInstructionToast => 'AppVerifier에 공유한 후 준비가 되면 여기로 돌아오세요.';
	@override String get wiki => '도움말/위키';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => '안전하지 않은 HTTP 요청 허용';
	@override String get stayOneVersionBehind => '최신 버전보다 한 버전 뒤에 머무르기';
	@override String get useFirstApkOfVersion => '여러 앱 중 첫 번째 앱 자동 선택';
	@override String get refreshBeforeDownload => '다운로드 전에 앱 세부 정보 새로 고침';
	@override String get tencentAppStore => '텐센트 앱 스토어';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => '이름';
	@override String get smartname => '이름(스마트)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => '정렬 방법';
	@override String get welcome => '환영';
	@override String get batteryOptimizationNote => 'Updatium의 OS 배터리 최적화를 비활성화하면 백그라운드 다운로드가 더 안정적으로 작동할 수 있습니다.';
	@override String get fileDeletionError => '파일을 삭제하지 못했습니다(수동으로 삭제한 후 다시 시도하세요): "{}"';
	@override String get foregroundService => '옵테니움 포그라운드 서비스';
	@override String get foregroundServiceExplanation => '업데이트 확인을 위해 포그라운드 서비스 사용(안정성 향상, 전력 소비량 증가)';
	@override String get fgServiceNotice => '이 알림은 백그라운드 업데이트 확인에 필요합니다(OS 설정에서 숨길 수 있음).';
	@override String get excludeSecrets => '비밀 제외';
	@override String get GHReqPrefix => 'GitHub 요청을 위한 \'omeritzics/Updatium\' 인스턴스';
	@override String get includeZips => 'ZIP 파일 포함';
	@override String get zippedApkFilterRegEx => 'ZIP 내 APK 필터링';
	@override String get multipleSigners => '다수 Signers';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '앱을 제거하시겠습니까?',
		other: '앱을 제거하시겠습니까?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '요청이 너무 많습니다 (속도 제한) - {count}분 후에 다시 시도하세요',
		other: '요청이 너무 많습니다 (속도 제한) - {count}분 후에 다시 시도하세요',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: 'BG 업데이트 확인 중 {error} 오류가 발생했습니다. {count}분 후에 다시 확인을 예약합니다',
		other: 'BG 업데이트 확인 중 {error} 오류가 발생했습니다. {count}분 후에 다시 확인을 예약합니다',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: 'BG 업데이트 확인에서 {count}개의 업데이트를 발견했습니다 - 필요 시 사용자에게 알립니다',
		other: 'BG 업데이트 확인에서 {count}개의 업데이트를 발견했습니다 - 필요 시 사용자에게 알립니다',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{count} 앱',
		other: '{count} 앱',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{count} URL',
		other: '{count} URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{count} 분',
		other: '{count} 분',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{count} 시간',
		other: '{count} 시간',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{count} 일',
		other: '{count} 일',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{n}개의 로그가 지워졌습니다 (이전 = {before}, 이후 = {after})',
		other: '{n}개의 로그가 지워졌습니다 (이전 = {before}, 이후 = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{app} 및 1개의 앱에 업데이트가 있습니다.',
		other: '{app} 및 {count}개의 앱에 업데이트가 있습니다.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{app} 및 1개의 앱이 업데이트되었습니다.',
		other: '{app} 및 {count}개의 앱이 업데이트되었습니다.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{app} 및 1개의 앱 업데이트에 실패했습니다.',
		other: '{app} 및 {count}개의 앱 업데이트에 실패했습니다.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{app} 및 1개의 앱이 업데이트되었을 수 있습니다.',
		other: '{app} 및 {count}개의 앱이 업데이트되었을 수 있습니다.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n,
		one: '인증서 해시',
		other: '인증서 해시',
	);
	@override String get securityDisclaimerTitle => '보안 및 법적 고지';
	@override String get license => '라이선스';
	@override String get licenseText => '이 애플리케이션은 GPL v3 라이선스에 따라 배포됩니다.';
	@override String get disclaimer => '면책 조항';
	@override String get disclaimerText => '이 애플리케이션은 외부 애플리케이션을 배포, 호스팅 또는 검증하지 않습니다. 사용자는 이 도구를 통해 설치된 모든 소프트웨어의 안전성과 합법성에 대한 전적인 책임을 집니다.\n\nhttps://github.com/omeritzics/Updatium은 Updatium을 다운로드하는 유일한 공식 장소입니다 - 비공식 소스에서 다운로드하는 것은 안전하지 않으므로 다른 곳에서 다운로드하는 것은 강력히 권장되지 않습니다.';
	@override String get privacy => '개인정보 보호';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => '동의하고 계속';
	@override String get decline => '거부';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Updatium을 즐기고 계신가요?';
	@override String get githubStarPromptContent => 'Updatium은 제가 자유 시간에 개발한 자발적인 오픈소스 커뮤니티 프로젝트입니다. 프로젝트를 지원하고 싶으시다면, 더 많은 사용자와 기여자에게 다다를 수 있도록 GitHub에서 별표를 주시는 것을 고려해 주세요. 이에 대해 다시는 알리지 않겠습니다. 미리 감사드립니다! :)';
	@override String get githubStarPromptStar => '별표 주기';
	@override String get githubStarPromptDontShowAgain => '다시 표시 안 함';
	@override String get sourceCode => '소스 코드';
	@override String get developedBy => '개발자';
	@override String get appDescription => 'APK 소스에서 직접 앱을 업데이트할 수 있는 사용자 지정 Android 앱 카탈로그입니다.';
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

/// The flat map containing all translations for locale <ko>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => '유효한 {} 앱 URL이 아닙니다',
			'noReleaseFound' => '적절한 릴리스를 찾을 수 없습니다',
			'noVersionFound' => '릴리스 버전을 결정할 수 없습니다',
			'urlMatchesNoSource' => 'URL이 알려진 소스와 일치하지 않습니다',
			'cantInstallOlderVersion' => '앱의 이전 버전을 설치할 수 없습니다',
			'appIdMismatch' => '다운로드된 패키지 ID가 기존 앱 ID와 일치하지 않습니다',
			'functionNotImplemented' => '이 클래스는 이 기능을 구현하지 않았습니다',
			'placeholder' => '플레이스홀더',
			'someErrors' => '일부 오류가 발생했습니다',
			'unexpectedError' => '예기치 않은 오류',
			'ok' => '확인',
			'and' => '그리고',
			'githubPATLabel' => 'GitHub 개인 액세스 토큰',
			'includePrereleases' => '사전 릴리스 포함',
			'fallbackToOlderReleases' => '이전 릴리스로 대체',
			'filterReleaseTitlesByRegEx' => '정규 표현식으로 릴리스 제목 필터링',
			'invalidRegEx' => '잘못된 정규 표현식',
			'noDescription' => '설명 없음',
			'cancel' => '취소',
			'kContinue' => '계속',
			'requiredInBrackets' => '(필수)',
			'dropdownNoOptsError' => '오류: 드롭다운에는 최소 하나의 옵션이 있어야 합니다',
			'color' => '색상',
			'standard' => '표준',
			'custom' => '사용자 정의',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You 색상 사용',
			'githubStarredRepos' => 'GitHub 즐겨찾기 저장소',
			'gettingAppInfo' => 'Getting app info',
			'username' => '사용자 이름',
			'wrongArgNum' => '잘못된 인수 수 제공',
			'xIsTrackOnly' => '{}는 추적 전용입니다',
			'source' => '소스',
			'app' => '앱',
			'appsFromSourceAreTrackOnly' => '이 소스의 앱은 \'추적 전용\'입니다.',
			'youPickedTrackOnly' => '당신은 \'추적 전용\' 옵션을 선택했습니다.',
			'trackOnlyAppDescription' => '앱은 업데이트를 위해 추적되지만 Updatium은 다운로드하거나 설치할 수 없습니다.',
			'cancelled' => '취소됨',
			'appAlreadyAdded' => '앱이 이미 추가되었습니다',
			'alreadyUpToDateQuestion' => '앱이 이미 최신 상태입니까?',
			'addApp' => '앱 추가',
			'appSourceURL' => '앱 소스 URL',
			'error' => '오류',
			'add' => '추가',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => '검색 (일부 소스만)',
			'search' => '검색',
			'searching' => 'Searching',
			'additionalOptsFor' => '{}에 대한 추가 옵션',
			'supportedSources' => '지원되는 소스',
			'trackOnlyInBrackets' => '(추적 전용)',
			'searchableInBrackets' => '(검색 가능)',
			'appsString' => '앱',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => '환영합니다!',
			'noAppsSubtext' => '아래의 \'앱 추가\'를 탭하여 첫 번째 앱을 추가할 수 있습니다.',
			'noAppsForFilter' => '필터에 대한 앱 없음',
			'byX' => '{}에 의해',
			'percentProgress' => '진행률: {}%',
			'pleaseWait' => '기다려 주세요',
			'updateAvailable' => '업데이트 가능',
			'notInstalled' => '설치되지 않음',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => '의사 버전',
			'selectAll' => '모두 선택',
			'deselectX' => '{} 선택 해제',
			'xWillBeRemovedButRemainInstalled' => '{}는 Updatium에서 제거되지만 장치에 설치된 상태로 남아 있습니다.',
			'removeSelectedAppsQuestion' => '선택한 앱을 제거하시겠습니까?',
			'removeSelectedApps' => '선택한 앱 제거',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} 업데이트',
			'installX' => '{} 설치',
			'markXTrackOnlyAsUpdated' => '{}\n(추적 전용)\n업데이트됨으로 표시',
			'changeX' => '{} 변경',
			'installUpdateApps' => '앱 설치/업데이트',
			'installUpdateSelectedApps' => '선택한 앱 설치/업데이트',
			'markXSelectedAppsAsUpdated' => '{} 선택한 앱을 업데이트됨으로 표시하시겠습니까?',
			'no' => '아니요',
			'yes' => '예',
			'markSelectedAppsUpdated' => '선택한 앱을 업데이트됨으로 표시',
			'pinToTop' => '상단에 고정',
			'unpinFromTop' => '상단에서 고정 해제',
			'resetInstallStatusForSelectedAppsQuestion' => '선택한 앱의 설치 상태를 재설정하시겠습니까?',
			'installStatusOfXWillBeResetExplanation' => '선택한 앱의 설치 상태가 재설정됩니다.\n\n이것은 실패한 업데이트나 기타 문제로 인해 Updatium에 표시된 앱 버전이 잘못된 경우에 도움이 될 수 있습니다.',
			'customLinkMessage' => '이 링크는 Updatium이 설치된 장치에서 작동합니다',
			'shareAppConfigLinks' => '앱 구성 HTML 링크로 공유',
			'resetInstallStatus' => '설치 상태 재설정',
			'more' => '더보기',
			'removeOutdatedFilter' => '구식 앱 필터 제거',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => '구식 앱만 표시',
			'filter' => '필터',
			'filterApps' => '앱 필터',
			'filterDays' => 'Filter days',
			'appName' => '앱 이름',
			'author' => '저자',
			'upToDateApps' => '최신 상태의 앱',
			'nonInstalledApps' => '설치되지 않은 앱',
			'importExport' => '가져오기/내보내기',
			'settings' => '설정',
			'exportedTo' => '{}로 내보내기 완료',
			'updatiumExport' => 'Updatium 내보내기',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => '잘못된 입력',
			'importedX' => '{} 가져오기 완료',
			'updatiumImport' => 'Updatium 가져오기',
			'importFromURLList' => 'URL 목록에서 가져오기',
			'searchQuery' => '검색 쿼리',
			'appURLList' => '앱 URL 목록',
			'line' => '줄',
			'searchX' => '{} 검색',
			'noResults' => '결과가 없습니다',
			'importX' => '{} 가져오기',
			'importedAppsIdDisclaimer' => '가져온 앱은 "설치되지 않음"으로 잘못 표시될 수 있습니다.\n이를 수정하려면 Updatium을 통해 다시 설치하십시오.\n앱 데이터에는 영향을 미치지 않습니다.\n\nURL 및 타사 가져오기 방법에만 영향을 미칩니다.',
			'importErrors' => '가져오기 오류',
			'importedXOfYApps' => '{}개의 앱 중 {}개 가져오기 완료.',
			'followingURLsHadErrors' => '다음 URL에 오류가 있었습니다:',
			'selectURL' => 'URL 선택',
			'selectURLs' => 'URL 선택',
			'pick' => '선택',
			'theme' => '테마',
			'dark' => '다크',
			'light' => '라이트',
			'followSystem' => '시스템 따르기',
			'followSystemThemeExplanation' => '시스템 테마를 따르려면 타사 애플리케이션을 사용해야 합니다',
			'useBlackTheme' => '순수한 검은색 다크 테마 사용',
			'appSortBy' => '앱 정렬 기준',
			'authorName' => '저자/이름',
			'nameAuthor' => '이름/저자',
			'asAdded' => '추가된 순서대로',
			'appSortOrder' => '앱 정렬 순서',
			'ascending' => '오름차순',
			'descending' => '내림차순',
			'bgUpdateCheckInterval' => '백그라운드 업데이트 확인 간격',
			'neverManualOnly' => '절대 - 수동만',
			'appearance' => '외관',
			'pinUpdates' => '앱 보기 상단에 업데이트 고정',
			'updates' => '업데이트',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => '소스별',
			'appSource' => '앱 소스',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => '로그 없음',
			'appLogs' => '앱 로그',
			'appLogsHint' => 'View application logs',
			'close' => '닫기',
			'share' => '공유',
			'appNotFound' => '앱을 찾을 수 없습니다',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'APK 선택',
			'appHasMoreThanOnePackage' => '{}에는 둘 이상의 패키지가 있습니다:',
			'deviceSupportsXArch' => '장치는 {} CPU 아키텍처를 지원합니다.',
			'deviceSupportsFollowingArchs' => '장치는 다음 CPU 아키텍처를 지원합니다:',
			'warning' => '경고',
			'sourceIsXButPackageFromYPrompt' => '앱 소스는 \'{}\'이지만 릴리스 패키지는 \'{}\'에서 제공됩니다. 계속하시겠습니까?',
			'updatesAvailable' => '업데이트 가능',
			'updatesAvailableNotifDescription' => 'Updatium이 추적하는 하나 이상의 앱에 대한 업데이트가 있음을 사용자에게 알립니다',
			'noNewUpdates' => '새로운 업데이트가 없습니다.',
			'xHasAnUpdate' => '{}에 업데이트가 있습니다.',
			'appsUpdated' => '앱 업데이트됨',
			'appsNotUpdated' => '앱 업데이트 실패',
			'appsUpdatedNotifDescription' => '백그라운드에서 하나 이상의 앱에 대한 업데이트가 적용되었음을 사용자에게 알립니다',
			'xWasUpdatedToY' => '{}가 {}로 업데이트되었습니다.',
			'xWasNotUpdatedToY' => '{}를 {}로 업데이트하지 못했습니다.',
			'errorCheckingUpdates' => '업데이트 확인 오류',
			'errorCheckingUpdatesNotifDescription' => '백그라운드 업데이트 확인이 실패할 때 표시되는 알림',
			'appsRemoved' => '앱 제거됨',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => '로드 중 오류로 인해 하나 이상의 앱이 제거되었음을 사용자에게 알립니다',
			'xWasRemovedDueToErrorY' => '{}가 다음 오류로 인해 제거되었습니다: {}',
			'completeAppInstallation' => '앱 설치 완료',
			'updatiumMustBeOpenToInstallApps' => '앱을 설치하려면 Updatium이 열려 있어야 합니다',
			'completeAppInstallationNotifDescription' => '앱 설치를 완료하려면 Updatium으로 돌아가도록 사용자에게 요청합니다',
			'checkingForUpdates' => '업데이트 확인 중',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => '업데이트 확인 시 나타나는 일시적인 알림',
			'pleaseAllowInstallPerm' => 'Updatium이 앱을 설치할 수 있도록 허용해 주세요',
			'trackOnly' => '추적 전용',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => '오류 {}',
			'versionCorrectionDisabled' => '버전 수정 비활성화됨 (플러그인이 작동하지 않는 것 같습니다)',
			'unknown' => '알 수 없음',
			'none' => '없음',
			'all' => '모두',
			'never' => '절대',
			'latestVersion' => '최신',
			'installedVersionX' => '설치됨: {}',
			'lastUpdateCheckX' => '마지막 업데이트 확인: {}',
			'remove' => '제거',
			'quickLinks' => 'Quick Links',
			'yesMarkUpdated' => '예, 업데이트됨으로 표시',
			'fdroid' => 'F-Droid 공식',
			'appIdOrName' => '앱 ID 또는 이름',
			'appId' => '앱 ID',
			'appWithIdOrNameNotFound' => '해당 ID 또는 이름의 앱을 찾을 수 없습니다',
			'reposHaveMultipleApps' => '저장소에는 여러 앱이 포함될 수 있습니다',
			'fdroidThirdPartyRepo' => 'F-Droid 타사 저장소',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => '설치',
			'markInstalled' => '설치됨으로 표시',
			'update' => '업데이트',
			'updated' => '업데이트됨',
			'markUpdated' => '업데이트됨으로 표시',
			'download' => 'Download',
			'additionalOptions' => '추가 옵션',
			'disableVersionDetection' => '버전 감지 비활성화',
			'noVersionDetectionExplanation' => '이 옵션은 버전 감지가 올바르게 작동하지 않는 앱에만 사용해야 합니다.',
			'downloadingX' => '{} 다운로드 중',
			'downloadX' => '{} 다운로드',
			'downloadedX' => '{} 다운로드 완료',
			'editCategory' => 'Edit category',
			'releaseAsset' => '릴리스 자산',
			'downloadNotifDescription' => '앱 다운로드 진행 상황을 사용자에게 알립니다',
			'noAPKFound' => 'APK를 찾을 수 없습니다',
			'noVersionDetection' => '버전 감지 없음',
			'categorize' => '분류',
			'categories' => '카테고리',
			'category' => '카테고리',
			'noCategory' => '카테고리 없음',
			'noCategories' => '카테고리 없음',
			'categoryDeleteQuestion' => '카테고리를 삭제하시겠습니까?',
			'categoryDeleteWarning' => '삭제된 카테고리의 모든 앱은 미분류로 설정됩니다.',
			'addCategory' => '카테고리 추가',
			'label' => '레이블',
			'language' => '언어',
			'copiedToClipboard' => '클립보드에 복사됨',
			'storagePermissionDenied' => '저장소 권한 거부됨',
			'selectedCategorizeWarning' => '이 작업은 선택한 앱의 기존 카테고리 설정을 대체합니다.',
			'filterAPKsByRegEx' => '정규 표현식으로 APK 필터링',
			'removeFromUpdatium' => 'Updatium에서 제거',
			'uninstallFromDevice' => '장치에서 제거',
			'onlyWorksWithNonVersionDetectApps' => '버전 감지가 비활성화된 앱에만 작동합니다.',
			'releaseDateAsVersion' => '릴리스 날짜를 버전 문자열로 사용',
			'releaseTitleAsVersion' => '릴리스 제목을 버전 문자열로 사용',
			'releaseDateAsVersionExplanation' => '이 옵션은 버전 감지가 올바르게 작동하지 않지만 릴리스 날짜가 있는 앱에만 사용해야 합니다.',
			'changes' => '변경 사항',
			'releaseDate' => '릴리스 날짜',
			'importFromURLsInFile' => '파일의 URL에서 가져오기 (OPML과 같은)',
			'versionDetectionExplanation' => 'OS에서 감지된 버전과 버전 문자열 조정',
			'versionDetection' => '버전 감지',
			'standardVersionDetection' => '표준 버전 감지',
			'groupByCategory' => '카테고리별 그룹화',
			'listView' => '목록 보기',
			'gridView' => '그리드 보기',
			'autoApkFilterByArch' => '가능한 경우 CPU 아키텍처별로 APK 필터링 시도',
			'autoLinkFilterByArch' => '가능하면 CPU 아키텍처별로 링크를 필터링해 보세요.',
			'overrideSource' => '소스 재정의',
			'dontShowAgain' => '다시 표시하지 않기',
			'dontShowTrackOnlyWarnings' => '\'추적 전용\' 경고 표시 안 함',
			'dontShowAPKOriginWarnings' => 'APK 출처 경고 표시 안 함',
			'moveNonInstalledAppsToBottom' => '설치되지 않은 앱을 앱 보기 하단으로 이동',
			'gitlabPATLabel' => 'GitLab 개인 액세스 토큰',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => '정보',
			'requiresCredentialsInSettings' => '{}는 추가 자격 증명이 필요합니다 (설정에서)',
			'checkOnStart' => '시작 시 업데이트 확인',
			'safeMode' => '안전 모드',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => '앱 추가는 안전 모드에서 비활성화됩니다',
			'tryInferAppIdFromCode' => '소스 코드에서 앱 ID를 추론해보세요',
			'removeOnExternalUninstall' => '외부에서 제거된 앱 자동 제거',
			'pickHighestVersionCode' => '가장 높은 버전 코드 APK 자동 선택',
			'checkUpdateOnDetailPage' => '앱 세부 정보 페이지 열 때 업데이트 확인',
			'disablePageTransitions' => '페이지 전환 애니메이션 비활성화',
			'reversePageTransitions' => '페이지 전환 애니메이션 반전',
			'minStarCount' => '최소 별 개수',
			'addInfoBelow' => '아래에 이 정보를 추가하십시오.',
			'addInfoInSettings' => '설정에 이 정보를 추가하십시오.',
			'githubSourceNote' => 'GitHub 속도 제한은 API 키를 사용하여 피할 수 있습니다.',
			'sortByLastLinkSegment' => '링크의 마지막 세그먼트로만 정렬',
			'filterReleaseNotesByRegEx' => '정규 표현식으로 릴리스 노트 필터링',
			'customLinkFilterRegex' => '정규 표현식으로 사용자 정의 APK 링크 필터링 (기본값 \'.apk$\')',
			'appsPossiblyUpdated' => '앱 업데이트 시도됨',
			'appsPossiblyUpdatedNotifDescription' => '백그라운드에서 하나 이상의 앱에 대한 업데이트가 잠재적으로 적용되었음을 사용자에게 알립니다',
			'xWasPossiblyUpdatedToY' => '{}가 {}로 업데이트되었을 수 있습니다.',
			'enableBackgroundUpdates' => '백그라운드 업데이트 활성화',
			'backgroundUpdateReqsExplanation' => '모든 앱에 대해 백그라운드 업데이트가 가능하지 않을 수 있습니다.',
			'backgroundUpdateLimitsExplanation' => '백그라운드 설치의 성공 여부는 Updatium이 열릴 때만 확인할 수 있습니다.',
			'verifyLatestTag' => '\'최신\' 태그 확인',
			'intermediateLinkRegex' => '\'중간\' 링크 방문 필터',
			'filterByLinkText' => '링크 텍스트로 링크 필터링',
			'matchLinksOutsideATags' => '<> 태그 외부의 링크 일치',
			'intermediateLinkNotFound' => '중간 링크를 찾을 수 없습니다',
			'intermediateLink' => '중간 링크',
			'exemptFromBackgroundUpdates' => '백그라운드 업데이트에서 제외 (활성화된 경우)',
			'bgUpdatesOnWiFiOnly' => 'WiFi가 아닐 때 백그라운드 업데이트 비활성화',
			'bgUpdatesWhileChargingOnly' => '충전 중이 아닐 때 백그라운드 업데이트 비활성화',
			'autoSelectHighestVersionCode' => '가장 높은 versionCode APK 자동 선택',
			'versionExtractionRegEx' => '버전 문자열 추출 정규 표현식',
			'trimVersionString' => '정규 표현식으로 버전 문자열 자르기',
			'matchGroupToUseForX' => '"{}"에 사용할 일치 그룹',
			'matchGroupToUse' => '버전 문자열 추출 정규 표현식에 사용할 일치 그룹',
			'highlightTouchTargets' => '덜 명확한 터치 대상 강조',
			'pickExportDir' => '내보내기 디렉토리 선택',
			'autoExportOnChanges' => '변경 시 자동 내보내기',
			'includeSettings' => '설정 포함',
			'filterVersionsByRegEx' => '정규 표현식으로 버전 필터링',
			'trySelectingSuggestedVersionCode' => '제안된 versionCode APK 선택 시도',
			'dontSortReleasesList' => 'API에서 릴리스 순서 유지',
			'reverseSort' => '정렬 반전',
			'takeFirstLink' => '첫 번째 링크 선택',
			'skipSort' => '정렬 건너뛰기',
			'debugMenu' => '디버그 메뉴',
			'bgTaskStarted' => '백그라운드 작업 시작됨 - 로그를 확인하세요.',
			'runBgCheckNow' => '지금 백그라운드 업데이트 확인 실행',
			'versionExtractWholePage' => '전체 페이지에 버전 문자열 추출 정규 표현식 적용',
			'installing' => '설치 중',
			'skipUpdateNotifications' => '업데이트 알림 건너뛰기',
			'updatesAvailableNotifChannel' => '업데이트 가능',
			'appsUpdatedNotifChannel' => '앱 업데이트됨',
			'appsPossiblyUpdatedNotifChannel' => '앱 업데이트 시도됨',
			'errorCheckingUpdatesNotifChannel' => '업데이트 확인 오류',
			'appsRemovedNotifChannel' => '앱 제거됨',
			'downloadingXNotifChannel' => '{} 다운로드 중',
			'completeAppInstallationNotifChannel' => '앱 설치 완료',
			'checkingForUpdatesNotifChannel' => '업데이트 확인 중',
			'onlyCheckInstalledOrTrackOnlyApps' => '설치된 앱과 추적 전용 앱만 업데이트 확인',
			'supportFixedAPKURL' => '고정 APK URL 지원',
			'selectX' => '{} 선택',
			'parallelDownloads' => '병렬 다운로드 허용',
			'useShizuku' => 'Shizuku 또는 Sui를 사용하여 설치',
			'shizukuBinderNotFound' => 'Shizuku 서비스가 실행 중이 아닙니다',
			'shizukuOld' => '오래된 Shizuku 버전 (<11) - 업데이트 필요',
			'shizukuOldAndroidWithADB' => 'ADB로 Android < 8.1에서 실행 중인 Shizuku - Android를 업데이트하거나 대신 Sui를 사용하세요',
			'shizukuPretendToBeGooglePlay' => '설치 소스로 Google Play 설정 (Shizuku 사용 시)',
			'useSystemFont' => '시스템 글꼴 사용',
			'useVersionCodeAsOSVersion' => '앱 versionCode를 OS에서 감지된 버전으로 사용',
			'requestHeader' => '요청 헤더',
			'useLatestAssetDateAsReleaseDate' => '최신 자산 업로드를 릴리스 날짜로 사용',
			'defaultPseudoVersioningMethod' => '기본 의사 버전 관리 방법',
			'partialAPKHash' => '부분 APK 해시',
			'APKLinkHash' => 'APK 링크 해시',
			'directAPKLink' => '직접 APK 링크',
			'pseudoVersionInUse' => '의사 버전 사용 중',
			'installedVersion' => '설치됨',
			'installed' => '설치됨',
			'notInstalledApps' => '설치되지 않음',
			'latest' => '최신',
			'invertRegEx' => '정규 표현식 반전',
			'note' => '노트',
			'selfHostedNote' => '"{}" 드롭다운을 사용하여 소스의 자체 호스팅/사용자 정의 인스턴스에 도달할 수 있습니다.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK를 구문 분석할 수 없습니다 (호환되지 않거나 부분 다운로드)',
			'beforeNewInstallsShareToAppVerifier' => '새 앱을 AppVerifier와 공유 (가능한 경우)',
			'appVerifierInstructionToast' => 'AppVerifier에 공유한 후 준비가 되면 여기로 돌아오세요.',
			'wiki' => '도움말/위키',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => '안전하지 않은 HTTP 요청 허용',
			'stayOneVersionBehind' => '최신 버전보다 한 버전 뒤에 머무르기',
			'useFirstApkOfVersion' => '여러 앱 중 첫 번째 앱 자동 선택',
			'refreshBeforeDownload' => '다운로드 전에 앱 세부 정보 새로 고침',
			'tencentAppStore' => '텐센트 앱 스토어',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => '이름',
			'smartname' => '이름(스마트)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => '정렬 방법',
			'welcome' => '환영',
			'batteryOptimizationNote' => 'Updatium의 OS 배터리 최적화를 비활성화하면 백그라운드 다운로드가 더 안정적으로 작동할 수 있습니다.',
			'fileDeletionError' => '파일을 삭제하지 못했습니다(수동으로 삭제한 후 다시 시도하세요): "{}"',
			'foregroundService' => '옵테니움 포그라운드 서비스',
			'foregroundServiceExplanation' => '업데이트 확인을 위해 포그라운드 서비스 사용(안정성 향상, 전력 소비량 증가)',
			'fgServiceNotice' => '이 알림은 백그라운드 업데이트 확인에 필요합니다(OS 설정에서 숨길 수 있음).',
			'excludeSecrets' => '비밀 제외',
			'GHReqPrefix' => 'GitHub 요청을 위한 \'omeritzics/Updatium\' 인스턴스',
			'includeZips' => 'ZIP 파일 포함',
			'zippedApkFilterRegEx' => 'ZIP 내 APK 필터링',
			'multipleSigners' => '다수 Signers',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '앱을 제거하시겠습니까?', other: '앱을 제거하시겠습니까?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '요청이 너무 많습니다 (속도 제한) - {count}분 후에 다시 시도하세요', other: '요청이 너무 많습니다 (속도 제한) - {count}분 후에 다시 시도하세요', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: 'BG 업데이트 확인 중 {error} 오류가 발생했습니다. {count}분 후에 다시 확인을 예약합니다', other: 'BG 업데이트 확인 중 {error} 오류가 발생했습니다. {count}분 후에 다시 확인을 예약합니다', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: 'BG 업데이트 확인에서 {count}개의 업데이트를 발견했습니다 - 필요 시 사용자에게 알립니다', other: 'BG 업데이트 확인에서 {count}개의 업데이트를 발견했습니다 - 필요 시 사용자에게 알립니다', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{count} 앱', other: '{count} 앱', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{count} URL', other: '{count} URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{count} 분', other: '{count} 분', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{count} 시간', other: '{count} 시간', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{count} 일', other: '{count} 일', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{n}개의 로그가 지워졌습니다 (이전 = {before}, 이후 = {after})', other: '{n}개의 로그가 지워졌습니다 (이전 = {before}, 이후 = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{app} 및 1개의 앱에 업데이트가 있습니다.', other: '{app} 및 {count}개의 앱에 업데이트가 있습니다.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{app} 및 1개의 앱이 업데이트되었습니다.', other: '{app} 및 {count}개의 앱이 업데이트되었습니다.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{app} 및 1개의 앱 업데이트에 실패했습니다.', other: '{app} 및 {count}개의 앱 업데이트에 실패했습니다.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{app} 및 1개의 앱이 업데이트되었을 수 있습니다.', other: '{app} 및 {count}개의 앱이 업데이트되었을 수 있습니다.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ko'))(n, one: '인증서 해시', other: '인증서 해시', ), 
			'securityDisclaimerTitle' => '보안 및 법적 고지',
			'license' => '라이선스',
			'licenseText' => '이 애플리케이션은 GPL v3 라이선스에 따라 배포됩니다.',
			'disclaimer' => '면책 조항',
			'disclaimerText' => '이 애플리케이션은 외부 애플리케이션을 배포, 호스팅 또는 검증하지 않습니다. 사용자는 이 도구를 통해 설치된 모든 소프트웨어의 안전성과 합법성에 대한 전적인 책임을 집니다.\n\nhttps://github.com/omeritzics/Updatium은 Updatium을 다운로드하는 유일한 공식 장소입니다 - 비공식 소스에서 다운로드하는 것은 안전하지 않으므로 다른 곳에서 다운로드하는 것은 강력히 권장되지 않습니다.',
			'privacy' => '개인정보 보호',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => '동의하고 계속',
			'decline' => '거부',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Updatium을 즐기고 계신가요?',
			'githubStarPromptContent' => 'Updatium은 제가 자유 시간에 개발한 자발적인 오픈소스 커뮤니티 프로젝트입니다. 프로젝트를 지원하고 싶으시다면, 더 많은 사용자와 기여자에게 다다를 수 있도록 GitHub에서 별표를 주시는 것을 고려해 주세요. 이에 대해 다시는 알리지 않겠습니다. 미리 감사드립니다! :)',
			'githubStarPromptStar' => '별표 주기',
			'githubStarPromptDontShowAgain' => '다시 표시 안 함',
			'sourceCode' => '소스 코드',
			'developedBy' => '개발자',
			'appDescription' => 'APK 소스에서 직접 앱을 업데이트할 수 있는 사용자 지정 Android 앱 카탈로그입니다.',
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
