// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'URL ứng dụng $arg1 không hợp lệ';
  }

  @override
  String get noReleaseFound => 'Không thể tìm thấy bản phát hành phù hợp';

  @override
  String get noVersionFound => 'Không thể xác định phiên bản phát hành';

  @override
  String get urlMatchesNoSource => 'URL không khớp với nguồn đã biết';

  @override
  String get cantInstallOlderVersion =>
      'Không thể cài đặt phiên bản cũ hơn của Ứng dụng';

  @override
  String get appIdMismatch =>
      'ID gói đã tải xuống không khớp với ID ứng dụng hiện tại';

  @override
  String get functionNotImplemented => 'Lớp này chưa triển khai chức năng này';

  @override
  String get placeholder => 'Giữ chỗ';

  @override
  String get someErrors => 'Đã xảy ra một số lỗi';

  @override
  String get unexpectedError => 'Lỗi không mong đợi';

  @override
  String get ok => 'OK';

  @override
  String get and => 'và';

  @override
  String get githubPATLabel =>
      'Token truy cập cá nhân GitHub (Cải thiện tốc độ giới hạn)';

  @override
  String get includePrereleases => 'Bao gồm các bản phát hành trước';

  @override
  String get fallbackToOlderReleases => 'Dự phòng về bản phát hành cũ hơn';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Lọc tiêu đề bản phát hành theo biểu thức chính quy';

  @override
  String get invalidRegEx => 'Biểu thức chính quy không hợp lệ';

  @override
  String get noDescription => 'Không có mô tả';

  @override
  String get cancel => 'Hủy';

  @override
  String get requiredInBrackets => '(Yêu cầu)';

  @override
  String get dropdownNoOptsError =>
      'LỖI: TẢI XUỐNG PHẢI CÓ ÍT NHẤT MỘT LỰA CHỌN';

  @override
  String get color => 'Màu sắc';

  @override
  String get standard => 'Mặc định';

  @override
  String get custom => 'Tùy chỉnh';

  @override
  String get useMaterialYou => 'Sử dụng màu Material You';

  @override
  String get githubStarredRepos => 'Kho lưu trữ có gắn dấu sao GitHub';

  @override
  String get uname => 'Tên người dùng';

  @override
  String get wrongArgNum => 'Số lượng đối số được cung cấp sai';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 là Chỉ theo dõi';
  }

  @override
  String get source => 'Nguồn';

  @override
  String get app => 'Ứng dụng';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Các ứng dụng từ nguồn này là \'Chỉ theo dõi\'.';

  @override
  String get youPickedTrackOnly => 'Bạn đã chọn tùy chọn \'Chỉ theo dõi\'.';

  @override
  String get trackOnlyAppDescription =>
      'Ứng dụng sẽ được theo dõi để cập nhật, nhưng Updatium sẽ không thể tải xuống hoặc cài đặt nó.';

  @override
  String get cancelled => 'Đã hủy';

  @override
  String get appAlreadyAdded => 'Ứng dụng được thêm rồi';

  @override
  String get alreadyUpToDateQuestion => 'Ứng dụng đã được cập nhật?';

  @override
  String get addApp => 'Thêm';

  @override
  String get appSourceURL => 'URL nguồn ứng dụng';

  @override
  String get error => 'Lỗi';

  @override
  String get add => 'Thêm';

  @override
  String get searchSomeSourcesLabel => 'Tìm kiếm (Chỉ một số nguồn)';

  @override
  String get search => 'Tìm kiếm';

  @override
  String additionalOptsFor(String arg1) {
    return 'Tùy chọn bổ sung cho $arg1';
  }

  @override
  String get supportedSources => 'Nguồn được hỗ trợ';

  @override
  String get trackOnlyInBrackets => '(Chỉ theo dõi)';

  @override
  String get searchableInBrackets => '(Có thể tìm kiếm)';

  @override
  String get appsString => 'Ứng dụng';

  @override
  String get noApps => 'Chào mừng!';

  @override
  String get noAppsSubtext =>
      'Bạn có thể thêm ứng dụng đầu tiên bằng cách nhấn vào \'Thêm\' bên dưới.';

  @override
  String get noAppsForFilter => 'Không có ứng dụng cho bộ lọc';

  @override
  String byX(String arg1) {
    return 'Bởi $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Đang tải $arg1%';
  }

  @override
  String get pleaseWait => 'Vui lòng chờ';

  @override
  String get updateAvailable => 'Có sẵn bản cập nhật';

  @override
  String get notInstalled => 'Chưa cài đặt';

  @override
  String get pseudoVersion => 'phiên bản giả';

  @override
  String get selectAll => 'Chọn tất cả';

  @override
  String deselectX(String arg1) {
    return 'Bỏ chọn $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 sẽ bị xóa khỏi Updatium nhưng vẫn còn cài đặt trên thiết bị.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Xóa ứng dụng đã chọn?';

  @override
  String get removeSelectedApps => 'Xóa ứng dụng đã chọn';

  @override
  String updateX(String arg1) {
    return 'Cập nhật $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Cài đặt $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Đánh dấu $arg1\n(Chỉ theo dõi)\nnhư là đã cập nhật';
  }

  @override
  String changeX(String arg1) {
    return 'Thay đổi $arg1';
  }

  @override
  String get installUpdateApps => 'Cài đặt/Cập nhật ứng dụng';

  @override
  String get installUpdateSelectedApps => 'Cài đặt/Cập nhật ứng dụng đã chọn';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Đánh dấu $arg1 ứng dụng đã chọn là đã cập nhật?';
  }

  @override
  String get no => 'Không';

  @override
  String get yes => 'Đúng';

  @override
  String get markSelectedAppsUpdated =>
      'Đánh dấu các ứng dụng đã chọn là đã cập nhật';

  @override
  String get pinToTop => 'Ghim đầu trang';

  @override
  String get unpinFromTop => 'Bỏ ghim khỏi đầu trang';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Đặt lại trạng thái cài đặt cho ứng dụng đã chọn?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Trạng thái cài đặt của mọi Ứng dụng đã chọn sẽ được đặt lại.\n\nĐiều này có thể hữu ích khi phiên bản Ứng dụng hiển thị trong Updatium không chính xác do cập nhật không thành công hoặc các sự cố khác.';

  @override
  String get customLinkMessage =>
      'Các liên kết này hoạt động trên các thiết bị có cài đặt Updatium';

  @override
  String get shareAppConfigLinks =>
      'Chia sẻ cấu hình ứng dụng dưới dạng liên kết HTML';

  @override
  String get shareSelectedAppURLs => 'Chia sẻ URL ứng dụng đã chọn';

  @override
  String get resetInstallStatus => 'Đặt lại trạng thái cài đặt';

  @override
  String get more => 'Nhiều hơn';

  @override
  String get removeOutdatedFilter => 'Xóa bộ lọc ứng dụng lỗi thời';

  @override
  String get showOutdatedOnly => 'Chỉ hiển thị các ứng dụng lỗi thời';

  @override
  String get filter => 'Lọc';

  @override
  String get filterApps => 'Lọc ứng dụng';

  @override
  String get appName => 'Tên ứng dụng';

  @override
  String get author => 'Tác giả';

  @override
  String get upToDateApps => 'Ứng dụng cập nhật';

  @override
  String get nonInstalledApps => 'Ứng dụng chưa được cài đặt';

  @override
  String get importExport => 'Nhập/Xuất';

  @override
  String get settings => 'Thiết đặt';

  @override
  String exportedTo(String arg1) {
    return 'Đã xuất sang $arg1';
  }

  @override
  String get updatiumExport => 'Xuất';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Đầu vào không hợp lệ';

  @override
  String importedX(String arg1) {
    return 'Đã nhập $arg1';
  }

  @override
  String get updatiumImport => 'Nhập';

  @override
  String get importFromURLList => 'Nhập từ danh sách URL';

  @override
  String get searchQuery => 'Truy vấn tìm kiếm';

  @override
  String get appURLList => 'Danh sách URL ứng dụng';

  @override
  String get line => 'Hàng';

  @override
  String searchX(String arg1) {
    return 'Tìm kiếm $arg1';
  }

  @override
  String get noResults => 'Không có kết quả nào được tìm thấy';

  @override
  String importX(String arg1) {
    return 'Nhập $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Ứng dụng đã nhập có thể hiển thị không chính xác là \"Chưa được cài đặt\".\nĐể khắc phục sự cố này, hãy cài đặt lại chúng thông qua Updatium.\nĐiều này sẽ không ảnh hưởng đến dữ liệu Ứng dụng.\n\nChỉ ảnh hưởng đến URL và phương thức nhập của bên thứ ba.';

  @override
  String get importErrors => 'Lỗi nhập';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1 trong số $arg2 Ứng dụng đã được nhập.';
  }

  @override
  String get followingURLsHadErrors => 'Các URL sau có lỗi:';

  @override
  String get selectURL => 'Chọn URL';

  @override
  String get selectURLs => 'Chọn URL';

  @override
  String get pick => 'Chọn';

  @override
  String get theme => 'Chủ đề';

  @override
  String get dark => 'Tối';

  @override
  String get light => 'Sáng';

  @override
  String get followSystem => 'Theo hệ thống';

  @override
  String get followSystemThemeExplanation =>
      'Việc áp dụng chủ đề hệ thống chỉ có thể thực hiện được thông qua việc sử dụng các ứng dụng của bên thứ ba.';

  @override
  String get useBlackTheme => 'Nền đen';

  @override
  String get appSortBy => 'Sắp xếp ứng dụng';

  @override
  String get authorName => 'Tác giả';

  @override
  String get nameAuthor => 'Tên';

  @override
  String get asAdded => 'Như đã thêm';

  @override
  String get appSortOrder => 'Thứ tự sắp xếp';

  @override
  String get ascending => 'Tăng dần';

  @override
  String get descending => 'Giảm dần';

  @override
  String get bgUpdateCheckInterval => 'Thời gian tự động kiểm tra cập nhật';

  @override
  String get neverManualOnly => 'Không bao giờ';

  @override
  String get appearance => 'Hiển thị';

  @override
  String get pinUpdates => 'Chuyển ứng dụng có phiên bản mới lên đầu danh sách';

  @override
  String get updates => 'Cập nhật';

  @override
  String get sourceSpecific => 'Cài đặt Nguồn';

  @override
  String get appSource => 'Nguồn ứng dụng';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Không có nhật ký';

  @override
  String get appLogs => 'Nhật ký ứng dụng';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Đóng';

  @override
  String get share => 'Chia sẻ';

  @override
  String get appNotFound => 'Không tìm thấy ứng dụng';

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
  String get pickAnAPK => 'Chọn một APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 có nhiều gói:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Thiết bị của bạn hỗ trợ kiến trúc CPU $arg1.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Thiết bị của bạn hỗ trợ các kiến trúc CPU sau:';

  @override
  String get warning => 'Cảnh báo';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Nguồn ứng dụng là \'$arg1\' nhưng gói phát hành đến từ \'$arg2\'. Tiếp tục?';
  }

  @override
  String get updatesAvailable => 'Cập nhật có sẵn';

  @override
  String get updatesAvailableNotifDescription =>
      'Thông báo cho người dùng rằng có bản cập nhật cho một hoặc nhiều Ứng dụng được theo dõi bởi Updatium';

  @override
  String get noNewUpdates => 'Không có bản cập nhật mới.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 có bản cập nhật.';
  }

  @override
  String get appsUpdated => 'Ứng dụng đã cập nhật ';

  @override
  String get appsNotUpdated => 'Ứng dụng đã cập nhật không thành công';

  @override
  String get appsUpdatedNotifDescription =>
      'Thông báo cho người dùng rằng các bản cập nhật cho một hoặc nhiều Ứng dụng đã được áp dụng trong nền';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 đã được cập nhật thành $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return '$arg1 đã cập nhật thành $arg2 không thành công.';
  }

  @override
  String get errorCheckingUpdates => 'Lỗi kiểm tra bản cập nhật';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Thông báo hiển thị khi kiểm tra cập nhật nền không thành công';

  @override
  String get appsRemoved => 'Ứng dụng đã loại bỏ';

  @override
  String get appsRemovedNotifDescription =>
      'Thông báo cho người dùng rằng một hoặc nhiều Ứng dụng đã bị loại bỏ do lỗi khi tải chúng';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 đã bị loại bỏ do lỗi này: $arg2';
  }

  @override
  String get completeAppInstallation => 'Hoàn tất cài đặt ứng dụng';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium phải được mở để cài đặt Ứng dụng';

  @override
  String get completeAppInstallationNotifDescription =>
      'Yêu cầu người dùng quay lại Updatium để hoàn tất cài đặt Ứng dụng';

  @override
  String get checkingForUpdates => 'Đang kiểm tra cập nhật';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Thông báo tạm thời xuất hiện khi kiểm tra bản cập nhật';

  @override
  String get pleaseAllowInstallPerm =>
      'Vui lòng cho phép Updatium cài đặt Ứng dụng';

  @override
  String get trackOnly => 'Chỉ theo dõi';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Lỗi $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Tính năng sửa phiên bản bị vô hiệu hóa (plugin dường như không hoạt động)';

  @override
  String get unknown => 'Không xác định';

  @override
  String get none => 'Không';

  @override
  String get all => 'Tất cả';

  @override
  String get never => 'Không bao giờ';

  @override
  String latestVersionX(String arg1) {
    return 'Phiên bản mới nhất: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Phiên bản đã cài đặt: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Kiểm tra cập nhật lần cuối: $arg1';
  }

  @override
  String get remove => 'Loại bỏ';

  @override
  String get yesMarkUpdated => 'Có, Đánh dấu là đã cập nhật';

  @override
  String get fdroid => 'F-Droid Chính thức';

  @override
  String get appIdOrName => 'ID hoặc tên ứng dụng';

  @override
  String get appId => 'ID ứng dụng';

  @override
  String get appWithIdOrNameNotFound =>
      'Không tìm thấy ứng dụng nào có ID hoặc tên đó';

  @override
  String get reposHaveMultipleApps => 'Kho có thể chứa nhiều Ứng dụng';

  @override
  String get fdroidThirdPartyRepo => 'Kho lưu trữ bên thứ ba F-Droid';

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
  String get install => 'Cài đặt';

  @override
  String get markInstalled => 'Đánh dấu là đã cài đặt';

  @override
  String get update => 'Cập nhật';

  @override
  String get updated => 'Đã cập nhật';

  @override
  String get markUpdated => 'Đánh dấu đã cập nhật';

  @override
  String get additionalOptions => 'Tùy chọn bổ sung';

  @override
  String get disableVersionDetection => 'Tắt tính năng phát hiện phiên bản';

  @override
  String get noVersionDetectionExplanation =>
      'Chỉ nên sử dụng tùy chọn này cho Ứng dụng mà tính năng phát hiện phiên bản không hoạt động chính xác.';

  @override
  String downloadingX(String arg1) {
    return 'Đang tải xuống $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'Tải xuống $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'Đã tải xuống $arg1';
  }

  @override
  String get releaseAsset => 'Tệp phát hành';

  @override
  String get downloadNotifDescription =>
      'Thông báo cho người dùng về tiến trình tải xuống Ứng dụng';

  @override
  String get noAPKFound => 'Không tìm thấy APK';

  @override
  String get noVersionDetection => 'Không phát hiện phiên bản';

  @override
  String get categorize => 'Phân loại';

  @override
  String get categories => 'Danh mục';

  @override
  String get category => 'Danh mục';

  @override
  String get noCategory => 'Không danh mục';

  @override
  String get noCategories => 'Không danh mục';

  @override
  String get deleteCategoriesQuestion => 'Xóa danh mục?';

  @override
  String get categoryDeleteWarning =>
      'Tất cả ứng dụng trong danh mục đã xóa sẽ được đặt thành chưa được phân loại.';

  @override
  String get addCategory => 'Thêm thể loại';

  @override
  String get label => 'Nhãn';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get copiedToClipboard => 'Sao chép vào clipboard';

  @override
  String get storagePermissionDenied => 'Quyền lưu trữ bị từ chối';

  @override
  String get selectedCategorizeWarning =>
      'Điều này sẽ thay thế mọi thiết đặt danh mục hiện có cho Ứng dụng đã chọn.';

  @override
  String get filterAPKsByRegEx => 'Lọc APK theo biểu thức chính quy';

  @override
  String get removeFromUpdatium => 'Loại khỏi Updatium';

  @override
  String get uninstallFromDevice => 'Gỡ cài đặt khỏi thiết bị';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Chỉ hoạt động với Ứng dụng đã tắt tính năng phát hiện phiên bản.';

  @override
  String get releaseDateAsVersion => 'Sử dụng ngày phát hành làm phiên bản';

  @override
  String get releaseTitleAsVersion =>
      'Sử dụng tiêu đề bản phát hành làm chuỗi phiên bản';

  @override
  String get releaseDateAsVersionExplanation =>
      'Chỉ nên sử dụng tùy chọn này cho Ứng dụng trong đó tính năng phát hiện phiên bản không hoạt động chính xác nhưng đã có ngày phát hành.';

  @override
  String get changes => 'Thay đổi';

  @override
  String get releaseDate => 'Ngày phát hành';

  @override
  String get importFromURLsInFile => 'Nhập từ URL trong Tệp (như OPML)';

  @override
  String get versionDetectionExplanation =>
      'Đối chiếu chuỗi phiên bản với phiên bản được phát hiện từ hệ điều hành';

  @override
  String get versionDetection => 'Phát hiện phiên bản';

  @override
  String get standardVersionDetection => 'Phát hiện phiên bản tiêu chuẩn';

  @override
  String get groupByCategory => 'Nhóm theo danh mục';

  @override
  String get listView => 'Chế độ xem danh sách';

  @override
  String get gridView => 'Chế độ xem lưới';

  @override
  String get autoApkFilterByArch =>
      'Cố gắng lọc APK theo kiến trúc CPU nếu có thể';

  @override
  String get autoLinkFilterByArch =>
      'Cố gắng lọc các liên kết theo kiến trúc CPU nếu có thể.';

  @override
  String get overrideSource => 'Ghi đè nguồn';

  @override
  String get dontShowAgain => 'Đừng hiển thị thông tin này nữa';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Không hiển thị cảnh báo \'Chỉ theo dõi\'';

  @override
  String get dontShowAPKOriginWarnings =>
      'Không hiển thị cảnh báo nguồn gốc APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Chuyển Ứng dụng chưa được cài đặt xuống cuối danh sách';

  @override
  String get hideNonInstalledApps => 'Ẩn các ứng dụng chưa được cài đặt';

  @override
  String get gitlabPATLabel => 'Token truy cập cá nhân GitLab';

  @override
  String get about => 'Giới thiệu';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1: Điều này cần thông tin xác thực bổ sung (trong Thiết đặt)';
  }

  @override
  String get checkOnStart => 'Kiểm tra các bản cập nhật khi khởi động';

  @override
  String get safeMode => 'Chế độ an toàn';

  @override
  String get safeModeDescription =>
      'Ẩn trang Thêm ứng dụng và hiển thị Nhập/Xuất thay thế';

  @override
  String get safeModeAddAppDisabled =>
      'Thêm ứng dụng bị vô hiệu hóa trong chế độ an toàn';

  @override
  String get tryInferAppIdFromCode => 'Cố gắng suy ra ID ứng dụng từ mã nguồn';

  @override
  String get removeOnExternalUninstall =>
      'Tự động xóa ứng dụng đã gỡ cài đặt bên ngoài';

  @override
  String get pickHighestVersionCode => 'Tự động chọn APK mã phiên bản cao nhất';

  @override
  String get checkUpdateOnDetailPage =>
      'Kiểm tra các bản cập nhật khi mở trang chi tiết Ứng dụng';

  @override
  String get disablePageTransitions => 'Tắt hiệu ứng chuyển trang';

  @override
  String get reversePageTransitions => 'Hoạt ảnh chuyển đổi trang đảo ngược';

  @override
  String get minStarCount => 'Số lượng sao tối thiểu';

  @override
  String get addInfoBelow => 'Thêm thông tin này vào bên dưới.';

  @override
  String get addInfoInSettings => 'Thêm thông tin này vào Thiết đặt.';

  @override
  String get githubSourceNote =>
      'Có thể tránh được việc giới hạn tốc độ GitHub bằng cách sử dụng khóa API.';

  @override
  String get sortByLastLinkSegment => 'Chỉ sắp xếp theo đoạn cuối của liên kết';

  @override
  String get filterReleaseNotesByRegEx =>
      'Lọc ghi chú phát hành theo biểu thức chính quy';

  @override
  String get customLinkFilterRegex =>
      'Bộ lọc liên kết APK tùy chỉnh theo biểu thức chính quy (Mặc định \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Đã cố gắng cập nhật ứng dụng';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Thông báo cho người dùng rằng các bản cập nhật cho một hoặc nhiều Ứng dụng có khả năng được áp dụng trong nền';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 có thể đã được cập nhật thành $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'Tự động cập nhật trong nền';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Có thể không thực hiện được cập nhật trong nền cho tất cả ứng dụng.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Sự thành công của cài đặt trong nền chỉ có thể được xác định khi mở Updatium.';

  @override
  String get verifyLatestTag => 'Xác minh thẻ \'mới nhất\'';

  @override
  String get intermediateLinkRegex =>
      'Lọc tìm liên kết \'Trung cấp\' để truy cập';

  @override
  String get filterByLinkText => 'Lọc liên kết theo văn bản liên kết';

  @override
  String get matchLinksOutsideATags => 'Khớp các liên kết bên ngoài thẻ <a>';

  @override
  String get intermediateLinkNotFound => 'Không tìm thấy liên kết trung gian';

  @override
  String get intermediateLink => 'Liên kết trung gian';

  @override
  String get exemptFromBackgroundUpdates => 'Miễn cập nhật nền (nếu được bật)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Tắt cập nhật nền khi không có Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Tắt cập nhật nền khi không sạc pin.';

  @override
  String get autoSelectHighestVersionCode =>
      'Tự động chọn APK mã phiên bản cao nhất';

  @override
  String get versionExtractionRegEx => 'Trích xuất phiên bản RegEx';

  @override
  String get trimVersionString => 'Cắt chuỗi phiên bản bằng RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Nhóm khớp được dùng cho \"$arg1\"';
  }

  @override
  String get matchGroupToUse =>
      'Nhóm đối sánh để sử dụng cho Regex trích xuất phiên bản';

  @override
  String get highlightTouchTargets =>
      'Đánh dấu các mục tiêu cảm ứng ít rõ ràng hơn';

  @override
  String get pickExportDir => 'Chọn thư mục xuất';

  @override
  String get autoExportOnChanges => 'Tự động xuất';

  @override
  String get includeSettings => 'Bao gồm thiết đặt';

  @override
  String get filterVersionsByRegEx => 'Lọc phiên bản theo biểu thức chính quy';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Thử chọn APK Mã phiên bản được đề xuất';

  @override
  String get dontSortReleasesList => 'Giữ lại thứ tự phát hành từ API';

  @override
  String get reverseSort => 'Sắp xếp ngược';

  @override
  String get takeFirstLink => 'Lấy liên kết đầu tiên';

  @override
  String get skipSort => 'Bỏ qua việc sắp xếp';

  @override
  String get debugMenu => 'Danh sách gỡ lỗi';

  @override
  String get bgTaskStarted => 'Tác vụ nền đã bắt đầu - kiểm tra nhật ký.';

  @override
  String get runBgCheckNow => 'Chạy kiểm tra cập nhật nền ngay bây giờ';

  @override
  String get versionExtractWholePage =>
      'Áp dụng Regex trích xuất phiên bản cho toàn bộ trang';

  @override
  String get installing => 'Đang cài đặt';

  @override
  String get skipUpdateNotifications => 'Bỏ qua thông báo cập nhật';

  @override
  String get updatesAvailableNotifChannel => 'Cập nhật có sẵn';

  @override
  String get appsUpdatedNotifChannel => 'Đã cập nhật ứng dụng';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Đã cố gắng cập nhật ứng dụng';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Lỗi kiểm tra bản cập nhật';

  @override
  String get appsRemovedNotifChannel => 'Ứng dụng đã bị loại bỏ';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Đang tải xuống $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Hoàn tất cài đặt ứng dụng';

  @override
  String get checkingForUpdatesNotifChannel => 'Đang kiểm tra cập nhật';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Chỉ kiểm tra cập nhật các ứng dụng đã cài đặt và Chỉ theo dõi';

  @override
  String get supportFixedAPKURL => 'Hỗ trợ URL APK cố định';

  @override
  String selectX(String arg1) {
    return 'Lựa chọn $arg1';
  }

  @override
  String get parallelDownloads => 'Cho phép tải đa luồng';

  @override
  String get useShizuku => 'Sử dụng Shizuku hoặc Sui để cài đặt';

  @override
  String get shizukuBinderNotFound => 'Shizuku chưa khởi động';

  @override
  String get shizukuOld => 'Phiên bản Shizuku lỗi thời (<11) - hãy cập nhật nó';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku chạy trên Android < 8.1 với ADB - hãy cập nhật Android hoặc thay bằng Sui';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Đặt Google Play làm nguồn cài đặt (nếu sử dụng Shizuku)';

  @override
  String get useSystemFont => 'Sử dụng phông chữ hệ thống';

  @override
  String get useVersionCodeAsOSVersion =>
      'Sử dụng Mã phiên bản ứng dụng làm phiên bản do hệ điều hành phát hiện';

  @override
  String get requestHeader => 'Tiêu đề yêu cầu';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Sử dụng nội dung tải lên mới nhất làm ngày phát hành';

  @override
  String get defaultPseudoVersioningMethod =>
      'Phương pháp tạo phiên bản giả mặc định';

  @override
  String get partialAPKHash => 'Băm APK một phần';

  @override
  String get directAPKLink => 'Liên kết APK trực tiếp';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'Tên';

  @override
  String get sortMethod => 'Phương thức sắp xếp';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload =>
      'Cập nhật thông tin ứng dụng trước khi tải xuống';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'Phiên bản giả đang được sử dụng';

  @override
  String get installed => 'Đã cài đặt';

  @override
  String get latest => 'Mới nhất';

  @override
  String get invertRegEx => 'Đảo ngược biểu thức chính quy';

  @override
  String get note => 'Ghi chú';

  @override
  String selfHostedNote(String arg1) {
    return 'Trình đơn thả xuống \"$arg1\" có thể được dùng để tiếp cận các phiên bản tự lưu trữ/tùy chỉnh của bất kỳ nguồn nào.';
  }

  @override
  String get badDownload =>
      'Không thể phân tích cú pháp APK (tải xuống một phần hoặc không tương thích)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Chia sẻ ứng dụng mới với AppVerifier (nếu có)';

  @override
  String get appVerifierInstructionToast =>
      'Chia sẻ lên AppVerifier, sau đó quay lại đây khi sẵn sàng.';

  @override
  String get wiki => 'Trợ giúp/Wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Cho phép các yêu cầu HTTP không an toàn';

  @override
  String get stayOneVersionBehind =>
      'Luôn sử dụng phiên bản cũ hơn một phiên bản so với phiên bản mới nhất.';

  @override
  String get useFirstApkOfVersion =>
      'Tự động chọn tệp APK đầu tiên trong danh sách nhiều tệp APK.';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get smartname => 'Tên (Thông minh)';

  @override
  String get welcome => 'Chào mừng';

  @override
  String get documentationLinksNote =>
      'Trang GitHub của Updatium được liên kết bên dưới chứa các liên kết đến video, bài viết, thảo luận và các tài nguyên khác sẽ giúp bạn hiểu cách sử dụng ứng dụng.';

  @override
  String get batteryOptimizationNote =>
      'Lưu ý: tải xuống nền có thể hoạt động ổn định hơn nếu bạn tắt tối ưu pin của hệ điều hành cho Updatium.';

  @override
  String fileDeletionError(String arg1) {
    return 'Không thể xóa tệp (hãy thử xóa tệp thủ công rồi thử lại): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Dịch vụ nền Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Sử dụng dịch vụ nền trước để kiểm tra cập nhật (đáng tin cậy hơn, tiêu tốn nhiều pin hơn)';

  @override
  String get fgServiceNotice =>
      'Thông báo này là bắt buộc để kiểm tra cập nhật nền (có thể ẩn trong cài đặt hệ điều hành).';

  @override
  String get excludeSecrets => 'Loại trừ thông tin bí mật';

  @override
  String get includeZips => 'Bao gồm các tệp ZIP';

  @override
  String get zippedApkFilterRegEx => 'Lọc các tệp APK bên trong tệp ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google đã thông báo rằng, bắt đầu từ năm 2026/2027, tất cả các ứng dụng trên các thiết bị Android được chứng nhận sẽ yêu cầu nhà phát triển gửi thông tin cá nhân trực tiếp đến Google.\n\nSau đó, Updatium có thể ngừng hoạt động trên các thiết bị Android được chứng nhận.';

  @override
  String get googleVerificationWarningP2 =>
      'Truy cập https://keepandroidopen.org/ để biết thêm thông tin.';

  @override
  String get googleVerificationWarningP3 =>
      'Ghi chú rằng trong ngắn hạn, nó có thể tiếp tục có thể được tiếp tục để cài đặt các ứng dụng \"không xác định\" thông qua một quá trình \"vô hạn dòng chảy\" mà Google đã hứa sẽ thực hiện sau một hồi quy rộng cho thông báo của họ, nhưng họ không có chi tiết làm thế nào điều này sẽ hoạt động như thế nào vì vậy nó không rõ ràng nó sẽ thực sự bảo tồn tự do cho người dùng theo bất kỳ cách thực tế nào.\n\nTrong bất kỳ trường hợp nào, sự di chuyển của Google là một bước tiến đáng kể tới sự kết thúc của máy tính tự do, mục đích chung cho cá nhân.\n\nCác hệ điều hành không được ghi nhận, giống như GreneOS, nên không bị ảnh hưởng bởi điều này miễn là chúng được cho phép tiếp tục tồn tại.';

  @override
  String get multipleSigners => 'Nhiều người ký';

  @override
  String get securityDisclaimerTitle =>
      'Tuyên bố Từ chối Trách nhiệm Bảo mật và Pháp lý';

  @override
  String get license => 'Giấy phép';

  @override
  String get licenseText =>
      'Ứng dụng này được phân phối theo Giấy phép GPL v3.';

  @override
  String get disclaimer => 'Tuyên bố từ chối trách nhiệm';

  @override
  String get disclaimerText =>
      'Ứng dụng này không phân phối, lưu trữ hoặc xác minh bất kỳ ứng dụng bên ngoài nào. Người dùng mang toàn bộ trách nhiệm về sự an toàn và tính hợp pháp của bất kỳ phần mềm nào được cài đặt thông qua công cụ này.\n\nhttps://github.com/omeritzics/Updatium là nơi chính thức duy nhất để tải xuống Updatium - rất không khuyến khích tải xuống từ nơi khác vì việc tải xuống từ các nguồn không chính thức không an toàn.';

  @override
  String get privacy => 'Quyền riêng tư';

  @override
  String get privacyText =>
      'Ứng dụng này tập trung vào quyền riêng tư và không thu thập dữ liệu cá nhân.';

  @override
  String get acceptAndContinue => 'Chấp nhận và tiếp tục';

  @override
  String get decline => 'Từ chối';

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
  String get aPKLinkHash => 'Băm liên kết APK';

  @override
  String get gHReqPrefix =>
      'Thực thể \'sky22333/hubproxy\' cho các yêu cầu GitHub';

  @override
  String get continueAction => 'Tiếp tục';

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
    return '$count minutes';
  }

  @override
  String hour(int count) {
    return '$count hours';
  }

  @override
  String day(int count) {
    return '$count days';
  }
}
