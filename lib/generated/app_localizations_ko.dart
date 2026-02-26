// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return '유효한 $p0 앱 URL이 아닙니다';
  }

  @override
  String get noReleaseFound => '적절한 릴리스를 찾을 수 없습니다';

  @override
  String get noVersionFound => '릴리스 버전을 결정할 수 없습니다';

  @override
  String get urlMatchesNoSource => 'URL이 알려진 소스와 일치하지 않습니다';

  @override
  String get cantInstallOlderVersion => '앱의 이전 버전을 설치할 수 없습니다';

  @override
  String get appIdMismatch => '다운로드된 패키지 ID가 기존 앱 ID와 일치하지 않습니다';

  @override
  String get functionNotImplemented => '이 클래스는 이 기능을 구현하지 않았습니다';

  @override
  String get placeholder => '플레이스홀더';

  @override
  String get someErrors => '일부 오류가 발생했습니다';

  @override
  String get unexpectedError => '예기치 않은 오류';

  @override
  String get ok => '확인';

  @override
  String get and => '그리고';

  @override
  String get githubPATLabel => 'GitHub 개인 액세스 토큰 (속도 제한 증가)';

  @override
  String get includePrereleases => '사전 릴리스 포함';

  @override
  String get fallbackToOlderReleases => '이전 릴리스로 대체';

  @override
  String get filterReleaseTitlesByRegEx => '정규 표현식으로 릴리스 제목 필터링';

  @override
  String get invalidRegEx => '잘못된 정규 표현식';

  @override
  String get noDescription => '설명 없음';

  @override
  String get cancel => '취소';

  @override
  String get continue => '계속';

  @override
  String get requiredInBrackets => '(필수)';

  @override
  String get dropdownNoOptsError => '오류: 드롭다운에는 최소 하나의 옵션이 있어야 합니다';

  @override
  String get color => '색상';

  @override
  String get standard => '표준';

  @override
  String get custom => '사용자 정의';

  @override
  String get useMaterialYou => 'Material You 색상 사용';

  @override
  String get githubStarredRepos => 'GitHub 즐겨찾기 저장소';

  @override
  String get uname => '사용자 이름';

  @override
  String get wrongArgNum => '잘못된 인수 수 제공';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0는 추적 전용입니다';
  }

  @override
  String get source => '소스';

  @override
  String get app => '앱';

  @override
  String get appsFromSourceAreTrackOnly => '이 소스의 앱은 \'추적 전용\'입니다.';

  @override
  String get youPickedTrackOnly => '당신은 \'추적 전용\' 옵션을 선택했습니다.';

  @override
  String get trackOnlyAppDescription => '앱은 업데이트를 위해 추적되지만 Updatium은 다운로드하거나 설치할 수 없습니다.';

  @override
  String get cancelled => '취소됨';

  @override
  String get appAlreadyAdded => '앱이 이미 추가되었습니다';

  @override
  String get alreadyUpToDateQuestion => '앱이 이미 최신 상태입니까?';

  @override
  String get addApp => '앱 추가';

  @override
  String get appSourceURL => '앱 소스 URL';

  @override
  String get error => '오류';

  @override
  String get add => '추가';

  @override
  String get searchSomeSourcesLabel => '검색 (일부 소스만)';

  @override
  String get search => '검색';

  @override
  String additionalOptsFor(Object p0) {
    return '$p0에 대한 추가 옵션';
  }

  @override
  String get supportedSources => '지원되는 소스';

  @override
  String get trackOnlyInBrackets => '(추적 전용)';

  @override
  String get searchableInBrackets => '(검색 가능)';

  @override
  String get appsString => '앱';

  @override
  String get noApps => '환영합니다!';

  @override
  String get noAppsSubtext => '아래의 \'앱 추가\'를 탭하여 첫 번째 앱을 추가할 수 있습니다.';

  @override
  String get noAppsForFilter => '필터에 대한 앱 없음';

  @override
  String byX(Object p0) {
    return '$p0에 의해';
  }

  @override
  String percentProgress(Object p0) {
    return '진행률: $p0%';
  }

  @override
  String get pleaseWait => '기다려 주세요';

  @override
  String get updateAvailable => '업데이트 가능';

  @override
  String get notInstalled => '설치되지 않음';

  @override
  String get pseudoVersion => '의사 버전';

  @override
  String get selectAll => '모두 선택';

  @override
  String deselectX(Object p0) {
    return '$p0 선택 해제';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0는 Updatium에서 제거되지만 장치에 설치된 상태로 남아 있습니다.';
  }

  @override
  String get removeSelectedAppsQuestion => '선택한 앱을 제거하시겠습니까?';

  @override
  String get removeSelectedApps => '선택한 앱 제거';

  @override
  String updateX(Object p0) {
    return '$p0 업데이트';
  }

  @override
  String installX(Object p0) {
    return '$p0 설치';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return '$p0\n(추적 전용)\n업데이트됨으로 표시';
  }

  @override
  String changeX(Object p0) {
    return '$p0 변경';
  }

  @override
  String get installUpdateApps => '앱 설치/업데이트';

  @override
  String get installUpdateSelectedApps => '선택한 앱 설치/업데이트';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return '$p0 선택한 앱을 업데이트됨으로 표시하시겠습니까?';
  }

  @override
  String get no => '아니요';

  @override
  String get yes => '예';

  @override
  String get markSelectedAppsUpdated => '선택한 앱을 업데이트됨으로 표시';

  @override
  String get pinToTop => '상단에 고정';

  @override
  String get unpinFromTop => '상단에서 고정 해제';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => '선택한 앱의 설치 상태를 재설정하시겠습니까?';

  @override
  String get installStatusOfXWillBeResetExplanation => '선택한 앱의 설치 상태가 재설정됩니다.\n\n이것은 실패한 업데이트나 기타 문제로 인해 Updatium에 표시된 앱 버전이 잘못된 경우에 도움이 될 수 있습니다.';

  @override
  String get customLinkMessage => '이 링크는 Updatium이 설치된 장치에서 작동합니다';

  @override
  String get shareAppConfigLinks => '앱 구성 HTML 링크로 공유';

  @override
  String get shareSelectedAppURLs => '선택한 앱 URL 공유';

  @override
  String get resetInstallStatus => '설치 상태 재설정';

  @override
  String get more => '더보기';

  @override
  String get removeOutdatedFilter => '구식 앱 필터 제거';

  @override
  String get showOutdatedOnly => '구식 앱만 표시';

  @override
  String get filter => '필터';

  @override
  String get filterApps => '앱 필터';

  @override
  String get appName => '앱 이름';

  @override
  String get author => '저자';

  @override
  String get upToDateApps => '최신 상태의 앱';

  @override
  String get nonInstalledApps => '설치되지 않은 앱';

  @override
  String get importExport => '가져오기/내보내기';

  @override
  String get settings => '설정';

  @override
  String exportedTo(Object p0) {
    return '$p0로 내보내기 완료';
  }

  @override
  String get updatiumExport => 'Updatium 내보내기';

  @override
  String get invalidInput => '잘못된 입력';

  @override
  String importedX(Object p0) {
    return '$p0 가져오기 완료';
  }

  @override
  String get updatiumImport => 'Updatium 가져오기';

  @override
  String get importFromURLList => 'URL 목록에서 가져오기';

  @override
  String get searchQuery => '검색 쿼리';

  @override
  String get appURLList => '앱 URL 목록';

  @override
  String get line => '줄';

  @override
  String searchX(Object p0) {
    return '$p0 검색';
  }

  @override
  String get noResults => '결과가 없습니다';

  @override
  String importX(Object p0) {
    return '$p0 가져오기';
  }

  @override
  String get importedAppsIdDisclaimer => '가져온 앱은 \"설치되지 않음\"으로 잘못 표시될 수 있습니다.\n이를 수정하려면 Updatium을 통해 다시 설치하십시오.\n앱 데이터에는 영향을 미치지 않습니다.\n\nURL 및 타사 가져오기 방법에만 영향을 미칩니다.';

  @override
  String get importErrors => '가져오기 오류';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0개의 앱 중 $p1개 가져오기 완료.';
  }

  @override
  String get followingURLsHadErrors => '다음 URL에 오류가 있었습니다:';

  @override
  String get selectURL => 'URL 선택';

  @override
  String get selectURLs => 'URL 선택';

  @override
  String get pick => '선택';

  @override
  String get theme => '테마';

  @override
  String get dark => '다크';

  @override
  String get light => '라이트';

  @override
  String get followSystem => '시스템 따르기';

  @override
  String get followSystemThemeExplanation => '시스템 테마를 따르려면 타사 애플리케이션을 사용해야 합니다';

  @override
  String get useBlackTheme => '순수한 검은색 다크 테마 사용';

  @override
  String get appSortBy => '앱 정렬 기준';

  @override
  String get authorName => '저자/이름';

  @override
  String get nameAuthor => '이름/저자';

  @override
  String get asAdded => '추가된 순서대로';

  @override
  String get appSortOrder => '앱 정렬 순서';

  @override
  String get ascending => '오름차순';

  @override
  String get descending => '내림차순';

  @override
  String get bgUpdateCheckInterval => '백그라운드 업데이트 확인 간격';

  @override
  String get neverManualOnly => '절대 - 수동만';

  @override
  String get appearance => '외관';

  @override
  String get pinUpdates => '앱 보기 상단에 업데이트 고정';

  @override
  String get updates => '업데이트';

  @override
  String get sourceSpecific => '소스별';

  @override
  String get appSource => '앱 소스';

  @override
  String get noLogs => '로그 없음';

  @override
  String get appLogs => '앱 로그';

  @override
  String get close => '닫기';

  @override
  String get share => '공유';

  @override
  String get appNotFound => '앱을 찾을 수 없습니다';

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
  String get pickAnAPK => 'APK 선택';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0에는 둘 이상의 패키지가 있습니다:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return '장치는 $p0 CPU 아키텍처를 지원합니다.';
  }

  @override
  String get deviceSupportsFollowingArchs => '장치는 다음 CPU 아키텍처를 지원합니다:';

  @override
  String get warning => '경고';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return '앱 소스는 \'$p0\'이지만 릴리스 패키지는 \'$p1\'에서 제공됩니다. 계속하시겠습니까?';
  }

  @override
  String get updatesAvailable => '업데이트 가능';

  @override
  String get updatesAvailableNotifDescription => 'Updatium이 추적하는 하나 이상의 앱에 대한 업데이트가 있음을 사용자에게 알립니다';

  @override
  String get noNewUpdates => '새로운 업데이트가 없습니다.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0에 업데이트가 있습니다.';
  }

  @override
  String get appsUpdated => '앱 업데이트됨';

  @override
  String get appsNotUpdated => '앱 업데이트 실패';

  @override
  String get appsUpdatedNotifDescription => '백그라운드에서 하나 이상의 앱에 대한 업데이트가 적용되었음을 사용자에게 알립니다';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0가 $p1로 업데이트되었습니다.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return '$p0를 $p1로 업데이트하지 못했습니다.';
  }

  @override
  String get errorCheckingUpdates => '업데이트 확인 오류';

  @override
  String get errorCheckingUpdatesNotifDescription => '백그라운드 업데이트 확인이 실패할 때 표시되는 알림';

  @override
  String get appsRemoved => '앱 제거됨';

  @override
  String get appsRemovedNotifDescription => '로드 중 오류로 인해 하나 이상의 앱이 제거되었음을 사용자에게 알립니다';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0가 다음 오류로 인해 제거되었습니다: $p1';
  }

  @override
  String get completeAppInstallation => '앱 설치 완료';

  @override
  String get updatiumMustBeOpenToInstallApps => '앱을 설치하려면 Updatium이 열려 있어야 합니다';

  @override
  String get completeAppInstallationNotifDescription => '앱 설치를 완료하려면 Updatium으로 돌아가도록 사용자에게 요청합니다';

  @override
  String get checkingForUpdates => '업데이트 확인 중';

  @override
  String get checkingForUpdatesNotifDescription => '업데이트 확인 시 나타나는 일시적인 알림';

  @override
  String get pleaseAllowInstallPerm => 'Updatium이 앱을 설치할 수 있도록 허용해 주세요';

  @override
  String get trackOnly => '추적 전용';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return '오류 $p0';
  }

  @override
  String get versionCorrectionDisabled => '버전 수정 비활성화됨 (플러그인이 작동하지 않는 것 같습니다)';

  @override
  String get unknown => '알 수 없음';

  @override
  String get none => '없음';

  @override
  String get all => '모두';

  @override
  String get never => '절대';

  @override
  String latestVersionX(Object p0) {
    return '최신: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return '설치됨: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return '마지막 업데이트 확인: $p0';
  }

  @override
  String get remove => '제거';

  @override
  String get yesMarkUpdated => '예, 업데이트됨으로 표시';

  @override
  String get fdroid => 'F-Droid 공식';

  @override
  String get appIdOrName => '앱 ID 또는 이름';

  @override
  String get appId => '앱 ID';

  @override
  String get appWithIdOrNameNotFound => '해당 ID 또는 이름의 앱을 찾을 수 없습니다';

  @override
  String get reposHaveMultipleApps => '저장소에는 여러 앱이 포함될 수 있습니다';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid 타사 저장소';

  @override
  String get install => '설치';

  @override
  String get markInstalled => '설치됨으로 표시';

  @override
  String get update => '업데이트';

  @override
  String get updated => '업데이트됨';

  @override
  String get markUpdated => '업데이트됨으로 표시';

  @override
  String get additionalOptions => '추가 옵션';

  @override
  String get disableVersionDetection => '버전 감지 비활성화';

  @override
  String get noVersionDetectionExplanation => '이 옵션은 버전 감지가 올바르게 작동하지 않는 앱에만 사용해야 합니다.';

  @override
  String downloadingX(Object p0) {
    return '$p0 다운로드 중';
  }

  @override
  String downloadX(Object p0) {
    return '$p0 다운로드';
  }

  @override
  String downloadedX(Object p0) {
    return '$p0 다운로드 완료';
  }

  @override
  String get releaseAsset => '릴리스 자산';

  @override
  String get downloadNotifDescription => '앱 다운로드 진행 상황을 사용자에게 알립니다';

  @override
  String get noAPKFound => 'APK를 찾을 수 없습니다';

  @override
  String get noVersionDetection => '버전 감지 없음';

  @override
  String get categorize => '분류';

  @override
  String get categories => '카테고리';

  @override
  String get category => '카테고리';

  @override
  String get noCategory => '카테고리 없음';

  @override
  String get noCategories => '카테고리 없음';

  @override
  String get deleteCategoriesQuestion => '카테고리를 삭제하시겠습니까?';

  @override
  String get categoryDeleteWarning => '삭제된 카테고리의 모든 앱은 미분류로 설정됩니다.';

  @override
  String get addCategory => '카테고리 추가';

  @override
  String get label => '레이블';

  @override
  String get language => '언어';

  @override
  String get copiedToClipboard => '클립보드에 복사됨';

  @override
  String get storagePermissionDenied => '저장소 권한 거부됨';

  @override
  String get selectedCategorizeWarning => '이 작업은 선택한 앱의 기존 카테고리 설정을 대체합니다.';

  @override
  String get filterAPKsByRegEx => '정규 표현식으로 APK 필터링';

  @override
  String get removeFromUpdatium => 'Updatium에서 제거';

  @override
  String get uninstallFromDevice => '장치에서 제거';

  @override
  String get onlyWorksWithNonVersionDetectApps => '버전 감지가 비활성화된 앱에만 작동합니다.';

  @override
  String get releaseDateAsVersion => '릴리스 날짜를 버전 문자열로 사용';

  @override
  String get releaseTitleAsVersion => '릴리스 제목을 버전 문자열로 사용';

  @override
  String get releaseDateAsVersionExplanation => '이 옵션은 버전 감지가 올바르게 작동하지 않지만 릴리스 날짜가 있는 앱에만 사용해야 합니다.';

  @override
  String get changes => '변경 사항';

  @override
  String get releaseDate => '릴리스 날짜';

  @override
  String get importFromURLsInFile => '파일의 URL에서 가져오기 (OPML과 같은)';

  @override
  String get versionDetectionExplanation => 'OS에서 감지된 버전과 버전 문자열 조정';

  @override
  String get versionDetection => '버전 감지';

  @override
  String get standardVersionDetection => '표준 버전 감지';

  @override
  String get groupByCategory => '카테고리별 그룹화';

  @override
  String get listView => '목록 보기';

  @override
  String get gridView => '그리드 보기';

  @override
  String get autoApkFilterByArch => '가능한 경우 CPU 아키텍처별로 APK 필터링 시도';

  @override
  String get autoLinkFilterByArch => '가능하면 CPU 아키텍처별로 링크를 필터링해 보세요.';

  @override
  String get overrideSource => '소스 재정의';

  @override
  String get dontShowAgain => '다시 표시하지 않기';

  @override
  String get dontShowTrackOnlyWarnings => '\'추적 전용\' 경고 표시 안 함';

  @override
  String get dontShowAPKOriginWarnings => 'APK 출처 경고 표시 안 함';

  @override
  String get moveNonInstalledAppsToBottom => '설치되지 않은 앱을 앱 보기 하단으로 이동';

  @override
  String get hideNonInstalledApps => '설치되지 않은 앱 숨기기';

  @override
  String get gitlabPATLabel => 'GitLab 개인 액세스 토큰';

  @override
  String get about => '정보';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0는 추가 자격 증명이 필요합니다 (설정에서)';
  }

  @override
  String get checkOnStart => '시작 시 업데이트 확인';

  @override
  String get tryInferAppIdFromCode => '소스 코드에서 앱 ID 추론 시도';

  @override
  String get removeOnExternalUninstall => '외부에서 제거된 앱 자동 제거';

  @override
  String get pickHighestVersionCode => '가장 높은 버전 코드 APK 자동 선택';

  @override
  String get checkUpdateOnDetailPage => '앱 세부 정보 페이지 열 때 업데이트 확인';

  @override
  String get disablePageTransitions => '페이지 전환 애니메이션 비활성화';

  @override
  String get reversePageTransitions => '페이지 전환 애니메이션 반전';

  @override
  String get minStarCount => '최소 별 개수';

  @override
  String get addInfoBelow => '아래에 이 정보를 추가하십시오.';

  @override
  String get addInfoInSettings => '설정에 이 정보를 추가하십시오.';

  @override
  String get githubSourceNote => 'GitHub 속도 제한은 API 키를 사용하여 피할 수 있습니다.';

  @override
  String get sortByLastLinkSegment => '링크의 마지막 세그먼트로만 정렬';

  @override
  String get filterReleaseNotesByRegEx => '정규 표현식으로 릴리스 노트 필터링';

  @override
  String get customLinkFilterRegex => '정규 표현식으로 사용자 정의 APK 링크 필터링 (기본값 \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => '앱 업데이트 시도됨';

  @override
  String get appsPossiblyUpdatedNotifDescription => '백그라운드에서 하나 이상의 앱에 대한 업데이트가 잠재적으로 적용되었음을 사용자에게 알립니다';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0가 $p1로 업데이트되었을 수 있습니다.';
  }

  @override
  String get enableBackgroundUpdates => '백그라운드 업데이트 활성화';

  @override
  String get backgroundUpdateReqsExplanation => '모든 앱에 대해 백그라운드 업데이트가 가능하지 않을 수 있습니다.';

  @override
  String get backgroundUpdateLimitsExplanation => '백그라운드 설치의 성공 여부는 Updatium이 열릴 때만 확인할 수 있습니다.';

  @override
  String get verifyLatestTag => '\'최신\' 태그 확인';

  @override
  String get intermediateLinkRegex => '\'중간\' 링크 방문 필터';

  @override
  String get filterByLinkText => '링크 텍스트로 링크 필터링';

  @override
  String get matchLinksOutsideATags => '<> 태그 외부의 링크 일치';

  @override
  String get intermediateLinkNotFound => '중간 링크를 찾을 수 없습니다';

  @override
  String get intermediateLink => '중간 링크';

  @override
  String get exemptFromBackgroundUpdates => '백그라운드 업데이트에서 제외 (활성화된 경우)';

  @override
  String get bgUpdatesOnWiFiOnly => 'WiFi가 아닐 때 백그라운드 업데이트 비활성화';

  @override
  String get bgUpdatesWhileChargingOnly => '충전 중이 아닐 때 백그라운드 업데이트 비활성화';

  @override
  String get autoSelectHighestVersionCode => '가장 높은 versionCode APK 자동 선택';

  @override
  String get versionExtractionRegEx => '버전 문자열 추출 정규 표현식';

  @override
  String get trimVersionString => '정규 표현식으로 버전 문자열 자르기';

  @override
  String matchGroupToUseForX(Object p0) {
    return '\"$p0\"에 사용할 일치 그룹';
  }

  @override
  String get matchGroupToUse => '버전 문자열 추출 정규 표현식에 사용할 일치 그룹';

  @override
  String get highlightTouchTargets => '덜 명확한 터치 대상 강조';

  @override
  String get pickExportDir => '내보내기 디렉토리 선택';

  @override
  String get autoExportOnChanges => '변경 시 자동 내보내기';

  @override
  String get includeSettings => '설정 포함';

  @override
  String get filterVersionsByRegEx => '정규 표현식으로 버전 필터링';

  @override
  String get trySelectingSuggestedVersionCode => '제안된 versionCode APK 선택 시도';

  @override
  String get dontSortReleasesList => 'API에서 릴리스 순서 유지';

  @override
  String get reverseSort => '정렬 반전';

  @override
  String get takeFirstLink => '첫 번째 링크 선택';

  @override
  String get skipSort => '정렬 건너뛰기';

  @override
  String get debugMenu => '디버그 메뉴';

  @override
  String get bgTaskStarted => '백그라운드 작업 시작됨 - 로그를 확인하세요.';

  @override
  String get runBgCheckNow => '지금 백그라운드 업데이트 확인 실행';

  @override
  String get versionExtractWholePage => '전체 페이지에 버전 문자열 추출 정규 표현식 적용';

  @override
  String get installing => '설치 중';

  @override
  String get skipUpdateNotifications => '업데이트 알림 건너뛰기';

  @override
  String get updatesAvailableNotifChannel => '업데이트 가능';

  @override
  String get appsUpdatedNotifChannel => '앱 업데이트됨';

  @override
  String get appsPossiblyUpdatedNotifChannel => '앱 업데이트 시도됨';

  @override
  String get errorCheckingUpdatesNotifChannel => '업데이트 확인 오류';

  @override
  String get appsRemovedNotifChannel => '앱 제거됨';

  @override
  String downloadingXNotifChannel(Object p0) {
    return '$p0 다운로드 중';
  }

  @override
  String get completeAppInstallationNotifChannel => '앱 설치 완료';

  @override
  String get checkingForUpdatesNotifChannel => '업데이트 확인 중';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => '설치된 앱과 추적 전용 앱만 업데이트 확인';

  @override
  String get supportFixedAPKURL => '고정 APK URL 지원';

  @override
  String selectX(Object p0) {
    return '$p0 선택';
  }

  @override
  String get parallelDownloads => '병렬 다운로드 허용';

  @override
  String get useShizuku => 'Shizuku 또는 Sui를 사용하여 설치';

  @override
  String get shizukuBinderNotFound => 'Shizuku 서비스가 실행 중이 아닙니다';

  @override
  String get shizukuOld => '오래된 Shizuku 버전 (<11) - 업데이트 필요';

  @override
  String get shizukuOldAndroidWithADB => 'ADB로 Android < 8.1에서 실행 중인 Shizuku - Android를 업데이트하거나 대신 Sui를 사용하세요';

  @override
  String get shizukuPretendToBeGooglePlay => '설치 소스로 Google Play 설정 (Shizuku 사용 시)';

  @override
  String get useSystemFont => '시스템 글꼴 사용';

  @override
  String get useVersionCodeAsOSVersion => '앱 versionCode를 OS에서 감지된 버전으로 사용';

  @override
  String get requestHeader => '요청 헤더';

  @override
  String get useLatestAssetDateAsReleaseDate => '최신 자산 업로드를 릴리스 날짜로 사용';

  @override
  String get defaultPseudoVersioningMethod => '기본 의사 버전 관리 방법';

  @override
  String get partialAPKHash => '부분 APK 해시';

  @override
  String get apkLinkHash => 'APK 링크 해시';

  @override
  String get directAPKLink => '직접 APK 링크';

  @override
  String get pseudoVersionInUse => '의사 버전 사용 중';

  @override
  String get installed => '설치됨';

  @override
  String get latest => '최신';

  @override
  String get invertRegEx => '정규 표현식 반전';

  @override
  String get note => '노트';

  @override
  String selfHostedNote(Object p0) {
    return '\"$p0\" 드롭다운을 사용하여 소스의 자체 호스팅/사용자 정의 인스턴스에 도달할 수 있습니다.';
  }

  @override
  String get badDownload => 'APK를 구문 분석할 수 없습니다 (호환되지 않거나 부분 다운로드)';

  @override
  String get beforeNewInstallsShareToAppVerifier => '새 앱을 AppVerifier와 공유 (가능한 경우)';

  @override
  String get appVerifierInstructionToast => 'AppVerifier에 공유한 후 준비가 되면 여기로 돌아오세요.';

  @override
  String get wiki => '도움말/위키';

  @override
  String get allowInsecure => '안전하지 않은 HTTP 요청 허용';

  @override
  String get stayOneVersionBehind => '최신 버전보다 한 버전 뒤에 머무르기';

  @override
  String get useFirstApkOfVersion => '여러 앱 중 첫 번째 앱 자동 선택';

  @override
  String get refreshBeforeDownload => '다운로드 전에 앱 세부 정보 새로 고침';

  @override
  String get tencentAppStore => '텐센트 앱 스토어';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => '이름';

  @override
  String get smartname => '이름(스마트)';

  @override
  String get sortMethod => '정렬 방법';

  @override
  String get welcome => '환영';

  @override
  String get documentationLinksNote => '아래에 링크된 Updatium 깃허브 페이지에는 앱 사용 방법을 이해하는 데 도움이 되는 동영상, 기사, 토론 및 기타 리소스에 대한 링크가 포함되어 있습니다.';

  @override
  String get batteryOptimizationNote => 'Updatium의 OS 배터리 최적화를 비활성화하면 백그라운드 다운로드가 더 안정적으로 작동할 수 있습니다.';

  @override
  String fileDeletionError(Object p0) {
    return '파일을 삭제하지 못했습니다(수동으로 삭제한 후 다시 시도하세요): \"$p0\"';
  }

  @override
  String get foregroundService => '옵테니움 포그라운드 서비스';

  @override
  String get foregroundServiceExplanation => '업데이트 확인을 위해 포그라운드 서비스 사용(안정성 향상, 전력 소비량 증가)';

  @override
  String get fgServiceNotice => '이 알림은 백그라운드 업데이트 확인에 필요합니다(OS 설정에서 숨길 수 있음).';

  @override
  String get excludeSecrets => '비밀 제외';

  @override
  String get ghReqPrefix => 'GitHub 요청을 위한 \'sky22333/hubproxy\' 인스턴스';

  @override
  String get includeZips => 'ZIP 파일 포함';

  @override
  String get zippedApkFilterRegEx => 'ZIP 내 APK 필터링';

  @override
  String get googleVerificationWarningP1 => 'Google은 2026/2027에서 시작하여 \"certified\" Android 기기의 모든 앱은 Google에 직접 개인 식별 정보를 제출하기 위해 개발자가 필요합니다.\n\n그 후, Updatium은 인증 된 Android 장치에서 작동을 중지 할 수 있습니다.';

  @override
  String get googleVerificationWarningP2 => 'Https://keepandroidopen.org/로 이동하세요.';

  @override
  String get googleVerificationWarningP3 => '이 웹 사이트는 애플 리케이션에 전념. 우리는 정품 앱과 게임을 제공 할 목적으로이 사이트를 만들었습니다. 4AppsApk 최고의 안드로이드 애플 리케이션을위한 무료 APK 파일 다운로드 서비스, 계략.\n\n어떤 경우, Google의 이동은 개인을위한 무료, 범용 컴퓨팅의 끝으로 중요한 단계입니다.\n\nGrapheneOS와 같은 비 인증 된 OSes는 존재하지 않아야합니다.';

  @override
  String get multipleSigners => '다수 Signers';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '앱을 제거하시겠습니까?',
      one: '앱을 제거하시겠습니까?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '요청이 너무 많습니다 (속도 제한) - $count분 후에 다시 시도하세요',
      one: '요청이 너무 많습니다 (속도 제한) - $count분 후에 다시 시도하세요',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'BG 업데이트 확인 중 $count 오류가 발생했습니다. $count분 후에 다시 확인을 예약합니다',
      one: 'BG 업데이트 확인 중 $count 오류가 발생했습니다. $count분 후에 다시 확인을 예약합니다',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'BG 업데이트 확인에서 $count개의 업데이트를 발견했습니다 - 필요 시 사용자에게 알립니다',
      one: 'BG 업데이트 확인에서 $count개의 업데이트를 발견했습니다 - 필요 시 사용자에게 알립니다',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 앱',
      one: '$count 앱',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URL',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 분',
      one: '$count 분',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 시간',
      one: '$count 시간',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 일',
      one: '$count 일',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$n개의 로그가 지워졌습니다 (이전 = $before, 이후 = $after)',
      one: '$n개의 로그가 지워졌습니다 (이전 = $before, 이후 = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 및 $count개의 앱에 업데이트가 있습니다.',
      one: '$count 및 1개의 앱에 업데이트가 있습니다.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 및 $count개의 앱이 업데이트되었습니다.',
      one: '$count 및 1개의 앱이 업데이트되었습니다.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 및 $count개의 앱 업데이트에 실패했습니다.',
      one: '$count 및 1개의 앱 업데이트에 실패했습니다.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 및 $count개의 앱이 업데이트되었을 수 있습니다.',
      one: '$count 및 1개의 앱이 업데이트되었을 수 있습니다.',
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
      other: '인증서 해시',
      one: '인증서 해시',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => '보안 및 법적 고지';

  @override
  String get license => '라이선스';

  @override
  String get licenseText => '이 애플리케이션은 GPL v3 라이선스에 따라 배포됩니다.';

  @override
  String get disclaimer => '면책 조항';

  @override
  String get disclaimerText => '이 애플리케이션은 외부 애플리케이션을 배포, 호스팅 또는 검증하지 않습니다. 사용자는 이 도구를 통해 설치된 모든 소프트웨어의 안전성과 합법성에 대한 전적인 책임을 집니다.\n\nhttps://github.com/omeritzics/Updatium은 Updatium을 다운로드하는 유일한 공식 장소입니다 - 비공식 소스에서 다운로드하는 것은 안전하지 않으므로 다른 곳에서 다운로드하는 것은 강력히 권장되지 않습니다.';

  @override
  String get privacy => '개인정보 보호';

  @override
  String get privacyText => '이 앱은 개인정보 보호를 중심으로 하며 개인 데이터를 수집하지 않습니다.';

  @override
  String get acceptAndContinue => '동의하고 계속';

  @override
  String get decline => '거부';
}
