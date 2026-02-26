// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Persian (`fa`).
class AppLocalizationsFa extends AppLocalizations {
  AppLocalizationsFa([String locale = 'fa']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'آدرس اینترنتی برنامه $p0 معتبر نیست';
  }

  @override
  String get noReleaseFound => 'نسخه مناسبی پیدا نشد';

  @override
  String get noVersionFound => 'نمی توان نسخه منتشر شده را تعیین کرد';

  @override
  String get urlMatchesNoSource => 'آدرس اینترنتی با منبع شناخته شده مطابقت ندارد';

  @override
  String get cantInstallOlderVersion => 'نمی توان نسخه قدیمی یک برنامه را نصب کرد';

  @override
  String get appIdMismatch => 'شناسه بسته دانلود شده با شناسه برنامه موجود مطابقت ندارد';

  @override
  String get functionNotImplemented => 'این کلاس این تابع را پیاده سازی نکرده است';

  @override
  String get placeholder => 'نگهدارنده مکان';

  @override
  String get someErrors => 'برخی از خطاها رخ داده است';

  @override
  String get unexpectedError => 'خطای غیرمنتظره';

  @override
  String get ok => 'باشه';

  @override
  String get and => 'و';

  @override
  String get githubPATLabel => 'توکن دسترسی شخصی گیت هاب(محدودیت نرخ را افزایش میدهد)';

  @override
  String get includePrereleases => 'شامل نسخه های اولیه';

  @override
  String get fallbackToOlderReleases => 'بازگشت به نسخه های قدیمی تر';

  @override
  String get filterReleaseTitlesByRegEx => 'عناوین انتشار را با بیان منظم فیلتر کنید';

  @override
  String get invalidRegEx => 'عبارت منظم نامعتبر است';

  @override
  String get noDescription => 'بدون توضیحات';

  @override
  String get cancel => 'لغو';

  @override
  String get continue => 'ادامه دهید';

  @override
  String get requiredInBrackets => '(ضروری)';

  @override
  String get dropdownNoOptsError => 'خطا: کشویی باید حداقل یک گزینه داشته باشد';

  @override
  String get color => 'رنگ';

  @override
  String get standard => 'استاندارد';

  @override
  String get custom => 'سفارشی';

  @override
  String get useMaterialYou => 'استفاده از رنگ‌های Material You';

  @override
  String get githubStarredRepos => 'مخازن ستاره دار گیتهاب';

  @override
  String get uname => 'نام کاربری';

  @override
  String get wrongArgNum => 'تعداد آرگومان های ارائه شده اشتباه است';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 فقط ردیابی';
  }

  @override
  String get source => 'منبع';

  @override
  String get app => 'برنامه';

  @override
  String get appsFromSourceAreTrackOnly => 'برنامه‌های این منبع «فقط ردیابی» هستند';

  @override
  String get youPickedTrackOnly => 'شما گزینه ی «فقط ردیابی» را انتخاب کرده اید';

  @override
  String get trackOnlyAppDescription => 'برنامه برای به روز رسانی ها ردیابی می شود، اما Updatium قادر به دانلود یا نصب آن نخواهد بود.';

  @override
  String get cancelled => 'لغو شد';

  @override
  String get appAlreadyAdded => 'برنامه قبلاً اضافه شده است';

  @override
  String get alreadyUpToDateQuestion => 'برنامه از قبل به روز شده است؟';

  @override
  String get addApp => 'افزودن برنامه';

  @override
  String get appSourceURL => 'آدرس اینترنتی منبع برنامه';

  @override
  String get error => 'خطا';

  @override
  String get add => 'اضافه کردن';

  @override
  String get searchSomeSourcesLabel => 'جستجو (فقط برخی منابع)';

  @override
  String get search => 'جستجو کردن';

  @override
  String additionalOptsFor(Object p0) {
    return 'گزینه های اضافی برای $p0';
  }

  @override
  String get supportedSources => 'منابع پشتیبانی شده';

  @override
  String get trackOnlyInBrackets => '«فقط ردیابی»';

  @override
  String get searchableInBrackets => '(قابل جستجو)';

  @override
  String get appsString => 'برنامه ها';

  @override
  String get noApps => 'برنامه ای وجود ندارد';

  @override
  String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'برنامه ای برای فیلتر کردن وجود ندارد';

  @override
  String byX(Object p0) {
    return 'توسط $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'پیش رفتن: $p0%';
  }

  @override
  String get pleaseWait => 'لطفا صبر کنید';

  @override
  String get updateAvailable => 'بروزرسانی در دسترس';

  @override
  String get notInstalled => 'نصب نشده';

  @override
  String get pseudoVersion => 'نسخه شبه';

  @override
  String get selectAll => 'انتخاب همه';

  @override
  String deselectX(Object p0) {
    return 'لغو انتخاب $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 از Updatium حذف می‌شود اما روی دستگاه نصب می‌ماند.';
  }

  @override
  String get removeSelectedAppsQuestion => 'برنامه های انتخابی حذف شود؟';

  @override
  String get removeSelectedApps => 'حذف برنامه های انتخاب شده';

  @override
  String updateX(Object p0) {
    return 'به روز رسانی $p0';
  }

  @override
  String installX(Object p0) {
    return 'نصب $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'علامت $p0\n(فقط ردیابی)\nبروز شده';
  }

  @override
  String changeX(Object p0) {
    return 'تغییر دادن $p0';
  }

  @override
  String get installUpdateApps => 'نصب/به‌روزرسانی برنامه‌ها';

  @override
  String get installUpdateSelectedApps => 'برنامه‌های انتخابی را نصب/به‌روزرسانی کنید';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return '$p0 برنامه های انتخابی را به عنوان به روز علامت گذاری کنید؟';
  }

  @override
  String get no => 'خیر';

  @override
  String get yes => 'بله';

  @override
  String get markSelectedAppsUpdated => 'برنامه های انتخاب شده را به عنوان به روز علامت گذاری کنید';

  @override
  String get pinToTop => 'پین به بالا';

  @override
  String get unpinFromTop => 'برداشتن پین از بالا';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'وضعیت نصب برنامه‌های انتخابی بازنشانی شود؟';

  @override
  String get installStatusOfXWillBeResetExplanation => 'وضعیت نصب برنامه‌های انتخاب‌شده بازنشانی می‌شود.\n\nاگر نسخه برنامه نشان‌داده‌شده در Updatium به دلیل به‌روزرسانی‌های ناموفق یا مشکلات دیگر نادرست باشد، می‌تواند کمک کند.';

  @override
  String get customLinkMessage => 'این پیوندها بر روی دستگاه هایی با Updatium نصب شده کار می کنند';

  @override
  String get shareAppConfigLinks => 'اشتراک گذاری پیکربندی برنامه به عنوان پیوند HTML';

  @override
  String get shareSelectedAppURLs => 'اشتراک گذاری آدرس اینترنتی برنامه های انتخاب شده';

  @override
  String get resetInstallStatus => 'بازنشانی وضعیت نصب';

  @override
  String get more => 'بیشتر';

  @override
  String get removeOutdatedFilter => 'فیلتر برنامه قدیمی را حذف کنید';

  @override
  String get showOutdatedOnly => 'فقط برنامه های قدیمی را نشان دهید';

  @override
  String get filter => 'فیلتر';

  @override
  String get filterApps => 'فیلتر کردن برنامه ها';

  @override
  String get appName => 'نام برنامه';

  @override
  String get author => 'سازنده';

  @override
  String get upToDateApps => 'برنامه های به روز';

  @override
  String get nonInstalledApps => 'برنامه های نصب نشده';

  @override
  String get importExport => 'وارد کردن/صادر کردن';

  @override
  String get settings => 'تنظیمات';

  @override
  String exportedTo(Object p0) {
    return 'صادر کردن به$p0';
  }

  @override
  String get updatiumExport => 'صادر کردن Updatium';

  @override
  String get invalidInput => 'ورودی نامعتبر';

  @override
  String importedX(Object p0) {
    return 'وارد شده $p0';
  }

  @override
  String get updatiumImport => 'وارد کردن Updatium';

  @override
  String get importFromURLList => 'وارد کردن از فهرست آدرس اینترنتی';

  @override
  String get searchQuery => 'جستجوی سوال';

  @override
  String get appURLList => 'فهرست آدرس اینترنتی برنامه';

  @override
  String get line => 'خط';

  @override
  String searchX(Object p0) {
    return 'جستجو $p0';
  }

  @override
  String get noResults => 'نتیجه ای پیدا نشد';

  @override
  String importX(Object p0) {
    return ' وارد کردن $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'ممکن است برنامه‌های وارد شده به اشتباه به‌عنوان \"نصب نشده\" نشان داده شوند.\nبرای رفع این مشکل، آنها را دوباره از طریق Updatium نصب کنید.\nاین نباید روی داده‌های برنامه تأثیر بگذارد.\n\nفقط بر روی آدرس اینترنتی و روش‌های درون ریزی شخص ثالث تأثیر می‌گذارد.';

  @override
  String get importErrors => 'خطاهای وارد کردن';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 از $p1 برنامه وارد شد.';
  }

  @override
  String get followingURLsHadErrors => 'آدرس های اینترنتی زیر دارای خطا بودند:';

  @override
  String get selectURL => 'آدرس اینترنتی انتخاب شده';

  @override
  String get selectURLs => 'آدرس های اینترنتی انتخاب شده';

  @override
  String get pick => 'انتخاب';

  @override
  String get theme => 'تم';

  @override
  String get dark => 'تاریک';

  @override
  String get light => 'روشن';

  @override
  String get followSystem => 'هماهنگ با سیستم';

  @override
  String get followSystemThemeExplanation => 'دنبال کردن تم سیستم فقط با استفاده از برنامه های شخص ثالث امکان پذیر است';

  @override
  String get useBlackTheme => 'استفاده از تم تیره سیاه خالص';

  @override
  String get appSortBy => 'مرتب سازی برنامه بر اساس';

  @override
  String get authorName => 'سازنده/اسم';

  @override
  String get nameAuthor => 'اسم/سازنده';

  @override
  String get asAdded => 'همانطور که اضافه شد';

  @override
  String get appSortOrder => 'ترتیب مرتب سازی برنامه';

  @override
  String get ascending => 'صعودی';

  @override
  String get descending => 'نزولی';

  @override
  String get bgUpdateCheckInterval => 'فاصله بررسی به‌روزرسانی در پس‌زمینه';

  @override
  String get neverManualOnly => 'هرگز - فقط دستی';

  @override
  String get appearance => 'ظاهر';

  @override
  String get pinUpdates => 'به‌روزرسانی‌ها را به نمای بالای برنامه‌ها پین کنید';

  @override
  String get updates => 'به روز رسانی ها';

  @override
  String get sourceSpecific => 'منبع خاص';

  @override
  String get appSource => 'منبع برنامه';

  @override
  String get noLogs => 'بدون گزارش';

  @override
  String get appLogs => 'گزارش های برنامه';

  @override
  String get close => 'بستن';

  @override
  String get share => 'اشتراک گذاری';

  @override
  String get appNotFound => 'برنامه پیدا نشد';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'صادر کردن-updatium';

  @override
  String get pickAnAPK => 'یک APK انتخاب کنید';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 بیش از یک بسته دارد:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'دستگاه شما از معماری پردازنده $p0 پشتیبانی میکند';
  }

  @override
  String get deviceSupportsFollowingArchs => 'دستگاه شما از معماری های پردازنده زیر پشتیبانی می کند:';

  @override
  String get warning => 'اخطار';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'منبع برنامه \"$p0\" است اما بسته انتشار از \"$p1\" آمده است. ادامه هید؟';
  }

  @override
  String get updatesAvailable => 'بروزرسانی در دسترس ';

  @override
  String get updatesAvailableNotifDescription => 'به کاربر اطلاع می دهد که به روز رسانی برای یک یا چند برنامه ردیابی شده توسط Updatium در دسترس است';

  @override
  String get noNewUpdates => 'به روز رسانی جدیدی وجود ندارد.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 یک به روز رسانی دارد.';
  }

  @override
  String get appsUpdated => 'برنامه ها به روز شدند';

  @override
  String get appsNotUpdated => 'به روز رسانی برنامه ها ناموفق بود';

  @override
  String get appsUpdatedNotifDescription => 'به کاربر اطلاع می دهد که به روز رسانی یک یا چند برنامه در پس زمینه اعمال شده است';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 به $p1 به روز شد.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'به روز رسانی $p0 به $p1 انجام نشد.';
  }

  @override
  String get errorCheckingUpdates => 'خطا در بررسی به‌روزرسانی‌ها';

  @override
  String get errorCheckingUpdatesNotifDescription => 'اعلانی که وقتی بررسی به‌روزرسانی پس‌زمینه ناموفق است نشان می‌دهد';

  @override
  String get appsRemoved => 'برنامه ها حذف شدند';

  @override
  String get appsRemovedNotifDescription => 'به کاربر اطلاع می دهد که یک یا چند برنامه به دلیل خطا در هنگام بارگیری حذف شده است';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 به دلیل این خطا حذف شد: $p1';
  }

  @override
  String get completeAppInstallation => 'نصب کامل برنامه';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium باید برای نصب برنامه ها باز باشد';

  @override
  String get completeAppInstallationNotifDescription => 'از کاربر می‌خواهد برای پایان نصب برنامه به Updatium برگردد';

  @override
  String get checkingForUpdates => 'بررسی به‌روزرسانی‌ها';

  @override
  String get checkingForUpdatesNotifDescription => 'اعلان گذرا که هنگام بررسی به روز رسانی ظاهر می شود';

  @override
  String get pleaseAllowInstallPerm => 'لطفاً به Updatium اجازه دهید برنامه‌ها را نصب کند';

  @override
  String get trackOnly => 'فقط ردیابی';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'خطا $p0';
  }

  @override
  String get versionCorrectionDisabled => 'تصحیح نسخه غیرفعال شد (به نظر می رسد افزونه کار نمی کند)';

  @override
  String get unknown => 'ناشناخته';

  @override
  String get none => 'هیچ';

  @override
  String get all => 'همه چیز';

  @override
  String get never => 'هرگز';

  @override
  String latestVersionX(Object p0) {
    return 'آخرین نسخه: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'نسخه نصب شده: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'بررسی آخرین به‌روزرسانی: $p0';
  }

  @override
  String get remove => 'حذف';

  @override
  String get yesMarkUpdated => 'بله، علامت گذاری به عنوان به روز شده';

  @override
  String get fdroid => 'F-Droid Official';

  @override
  String get appIdOrName => 'شناسه یا نام برنامه';

  @override
  String get appId => 'شناسه برنامه';

  @override
  String get appWithIdOrNameNotFound => 'هیچ برنامه ای با آن شناسه یا نام یافت نشد';

  @override
  String get reposHaveMultipleApps => 'مخازن ممکن است شامل چندین برنامه باشد';

  @override
  String get fdroidThirdPartyRepo => 'مخازن شخص ثالث F-Droid';

  @override
  String get install => 'نصب';

  @override
  String get markInstalled => 'علامت گذاری به عنوان نصب شده';

  @override
  String get update => 'به روز رسانی';

  @override
  String get updated => 'به‌روز شده';

  @override
  String get markUpdated => 'علامت گذاری به روز شد';

  @override
  String get additionalOptions => 'گزینه های اضافی';

  @override
  String get disableVersionDetection => 'غیرفعال کردن تشخیص نسخه';

  @override
  String get noVersionDetectionExplanation => 'این گزینه فقط باید برای برنامه هایی استفاده شود که تشخیص نسخه به درستی کار نمی کند.';

  @override
  String downloadingX(Object p0) {
    return 'در حال دانلود $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'دانلود $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'دانلود شده $p0';
  }

  @override
  String get releaseAsset => 'انتشار دارایی';

  @override
  String get downloadNotifDescription => 'کاربر را از پیشرفت دانلود یک برنامه مطلع می کند';

  @override
  String get noAPKFound => 'APK پیدا نشد فایل';

  @override
  String get noVersionDetection => 'بدون تشخیص نسخه';

  @override
  String get categorize => 'دسته بندی کردن';

  @override
  String get categories => 'دسته بندی ها';

  @override
  String get category => 'دسته بندی';

  @override
  String get noCategory => 'بدون دسته بندی';

  @override
  String get noCategories => 'بدون دسته بندی ها';

  @override
  String get deleteCategoriesQuestion => 'دسته بندی ها حذف شوند؟';

  @override
  String get categoryDeleteWarning => 'همه برنامه‌ها در دسته‌های حذف شده روی دسته‌بندی نشده تنظیم می‌شوند.';

  @override
  String get addCategory => 'اضافه کردن دسته';

  @override
  String get label => 'برچسب';

  @override
  String get language => 'زبان';

  @override
  String get copiedToClipboard => 'در کلیپ بورد کپی شد';

  @override
  String get storagePermissionDenied => 'مجوز ذخیره سازی رد شد';

  @override
  String get selectedCategorizeWarning => 'این جایگزین تنظیمات دسته بندی موجود برای برنامه های انتخابی می شود.';

  @override
  String get filterAPKsByRegEx => 'فایل‌های APK را با نظم فیلتر کنید';

  @override
  String get removeFromUpdatium => 'از Updatium حذف کنید';

  @override
  String get uninstallFromDevice => 'حذف نصب از دستگاه';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'فقط برای برنامه‌هایی کار می‌کند که تشخیص نسخه غیرفعال است.';

  @override
  String get releaseDateAsVersion => 'از تاریخ انتشار به عنوان نسخه استفاده کنید';

  @override
  String get releaseTitleAsVersion => 'از عنوان انتشار به عنوان رشته نسخه استفاده کنید';

  @override
  String get releaseDateAsVersionExplanation => 'این گزینه فقط باید برای برنامه هایی استفاده شود که تشخیص نسخه به درستی کار نمی کند، اما تاریخ انتشار در دسترس است.';

  @override
  String get changes => 'تغییرات';

  @override
  String get releaseDate => 'تاریخ انتشار';

  @override
  String get importFromURLsInFile => 'وارد کردن از آدرس های اینترنتی موجود در فایل (مانند OPML)';

  @override
  String get versionDetectionExplanation => 'تطبیق رشته نسخه با نسخه شناسایی شده از سیستم عامل';

  @override
  String get versionDetection => 'تشخیص نسخه';

  @override
  String get standardVersionDetection => 'تشخیص نسخه استاندارد';

  @override
  String get groupByCategory => 'دسته‌بندی بر اساس گروه';

  @override
  String get listView => 'نمای لیست';

  @override
  String get gridView => 'نمای شبکه';

  @override
  String get autoApkFilterByArch => 'تلاش برای فیلتر کردن APK ها بر اساس معماری CPU در صورت امکان';

  @override
  String get autoLinkFilterByArch => 'تلاش برای فیلتر کردن لینک ها توسط معماری CPU در صورت امکان';

  @override
  String get overrideSource => 'نادیده گرفتن منبع';

  @override
  String get dontShowAgain => 'دوباره این را نشان نده';

  @override
  String get dontShowTrackOnlyWarnings => 'هشدار \'فقط ردیابی\' را نشان ندهید';

  @override
  String get dontShowAPKOriginWarnings => 'هشدارهای منبع APK را نشان ندهید';

  @override
  String get moveNonInstalledAppsToBottom => 'برنامه های نصب نشده را به نمای پایین برنامه ها منتقل کنید';

  @override
  String get hideNonInstalledApps => 'پنهان کردن برنامه‌های نصب‌نشده';

  @override
  String get gitlabPATLabel => 'رمز دسترسی شخصی GitLab';

  @override
  String get about => 'درباره';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0: این به اعتبارنامه های اضافی نیاز دارد (در تنظیمات)';
  }

  @override
  String get checkOnStart => 'بررسی در شروع';

  @override
  String get tryInferAppIdFromCode => 'شناسه برنامه را از کد منبع استنباط کنید';

  @override
  String get removeOnExternalUninstall => 'حذف خودکار برنامه های حذف نصب شده خارجی';

  @override
  String get pickHighestVersionCode => 'انتخاب خودکار بالاترین کد نسخه APK';

  @override
  String get checkUpdateOnDetailPage => 'برای باز کردن صفحه جزئیات برنامه، به‌روزرسانی‌ها را بررسی کنید';

  @override
  String get disablePageTransitions => 'غیرفعال کردن انیمیشن های انتقال صفحه';

  @override
  String get reversePageTransitions => 'انیمیشن های انتقال معکوس صفحه';

  @override
  String get minStarCount => 'حداقل تعداد ستاره';

  @override
  String get addInfoBelow => 'این اطلاعات را در زیر اضافه کنید';

  @override
  String get addInfoInSettings => 'این اطلاعات را در تنظیمات اضافه کنید.';

  @override
  String get githubSourceNote => 'با استفاده از کلید API می توان از محدودیت نرخ GitHub جلوگیری کرد.';

  @override
  String get sortByLastLinkSegment => 'فقط بر اساس آخرین بخش پیوند مرتب کنید';

  @override
  String get filterReleaseNotesByRegEx => 'یادداشت های انتشار را با بیان منظم فیلتر کنید';

  @override
  String get customLinkFilterRegex => 'فیلتر پیوند سفارشی بر اساس عبارت منظم (پیش‌فرض \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'به‌روزرسانی برنامه انجام شد';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'به کاربر اطلاع می‌دهد که به‌روزرسانی‌های یک یا چند برنامه به طور بالقوه در پس‌زمینه اعمال شده است';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return 'ممکن است $p0 به $p1 به روز شده باشد.';
  }

  @override
  String get enableBackgroundUpdates => 'به روز رسانی پس زمینه را فعال کنید';

  @override
  String get backgroundUpdateReqsExplanation => 'به روز رسانی پس زمینه ممکن است برای همه برنامه ها امکان پذیر نباشد.';

  @override
  String get backgroundUpdateLimitsExplanation => 'موفقیت نصب پس‌زمینه تنها زمانی مشخص می‌شود که Updatium باز شود.';

  @override
  String get verifyLatestTag => 'برچسب \"آخرین\" را تأیید کنید';

  @override
  String get intermediateLinkRegex => 'برای بازدید از پیوند «میانگین» فیلتر کنید';

  @override
  String get filterByLinkText => 'لینک ها را بر اساس متن پیوند فیلتر کنید';

  @override
  String get matchLinksOutsideATags => 'لینک های خارج از تگ های <a>';

  @override
  String get intermediateLinkNotFound => 'لینک میانی پیدا نشد';

  @override
  String get intermediateLink => 'پیوند میانی';

  @override
  String get exemptFromBackgroundUpdates => 'معاف از به‌روزرسانی‌های پس‌زمینه (در صورت فعال بودن)';

  @override
  String get bgUpdatesOnWiFiOnly => 'به‌روزرسانی‌های پس‌زمینه را در صورت عدم اتصال به Wi-Fi غیرفعال کنید';

  @override
  String get bgUpdatesWhileChargingOnly => 'به‌روزرسانی‌های پس‌زمینه را هنگام شارژ نشدن غیرفعال کنید';

  @override
  String get autoSelectHighestVersionCode => 'انتخاب خودکار بالاترین نسخه کد APK';

  @override
  String get versionExtractionRegEx => 'نسخه استخراج RegEx';

  @override
  String get trimVersionString => 'برش رشته نسخه با RegEx';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'مطابقت دادن گروه برای استفاده برای \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'گروه مورد استفاده را مطابقت دهید';

  @override
  String get highlightTouchTargets => 'اهداف لمسی کمتر واضح را برجسته کنید';

  @override
  String get pickExportDir => 'فهرست صادر کردن را انتخاب کنید';

  @override
  String get autoExportOnChanges => 'صادر کردن خودکار تغییرات';

  @override
  String get includeSettings => 'شامل تنظیمات';

  @override
  String get filterVersionsByRegEx => 'فیلتر کردن نسخه ها با RegEx';

  @override
  String get trySelectingSuggestedVersionCode => 'نسخه پیشنهادی APK نسخه کد را انتخاب کنید';

  @override
  String get dontSortReleasesList => 'حفظ سفارش انتشار از API';

  @override
  String get reverseSort => 'مرتب سازی معکوس';

  @override
  String get takeFirstLink => 'لینک اول را بگیرید';

  @override
  String get skipSort => 'از مرتب سازی صرف نظر کنید';

  @override
  String get debugMenu => 'منوی اشکال زدایی';

  @override
  String get bgTaskStarted => 'کار پس زمینه شروع شد - لاگ های مربوط را بررسی کنید.';

  @override
  String get runBgCheckNow => 'اکنون به‌روزرسانی پس‌زمینه را بررسی کنید';

  @override
  String get versionExtractWholePage => 'نسخه Extraction Regex را در کل صفحه اعمال کنید';

  @override
  String get installing => 'در حال نصب';

  @override
  String get skipUpdateNotifications => 'رد شدن از اعلان های به روز رسانی';

  @override
  String get updatesAvailableNotifChannel => 'بروزرسانی در دسترس ';

  @override
  String get appsUpdatedNotifChannel => 'برنامه ها به روز شدند';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'به‌روزرسانی برنامه انجام شد';

  @override
  String get errorCheckingUpdatesNotifChannel => 'خطا در بررسی به‌روزرسانی‌ها';

  @override
  String get appsRemovedNotifChannel => 'برنامه ها حذف شدند';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'در حال دانلود $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'نصب کامل برنامه';

  @override
  String get checkingForUpdatesNotifChannel => 'بررسی به‌روزرسانی‌ها';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'فقط برنامه های نصب شده و فقط ردیابی را برای به روز رسانی بررسی کنید';

  @override
  String get supportFixedAPKURL => 'پشتیبانی از URL های APK ثابت';

  @override
  String selectX(Object p0) {
    return 'انتخاب کنید $p0';
  }

  @override
  String get parallelDownloads => 'اجازه دانلود موازی';

  @override
  String get useShizuku => 'برای نصب از Shizuku یا Sui استفاده کنید';

  @override
  String get shizukuBinderNotFound => 'Shizuku در حال اجرا نیست';

  @override
  String get shizukuOld => 'نسخه قدیمی Shizuku (<11) - آن را به روز کنید';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku در Android < 8.1 با ADB اجرا می شود - اندروید را به روز کنید یا به جای آن از Sui استفاده کنید';

  @override
  String get shizukuPretendToBeGooglePlay => 'Google Play را به عنوان منبع نصب تنظیم کنید (در صورت استفاده از Shizuku)';

  @override
  String get useSystemFont => 'استفاده از فونت سیستم';

  @override
  String get useVersionCodeAsOSVersion => 'استفاده کد نسخه برنامه به جای نسخه شناسایی شده توسط سیستم عامل استفاده کنید';

  @override
  String get requestHeader => 'درخواست سطر بالایی';

  @override
  String get useLatestAssetDateAsReleaseDate => 'استفاده از آخرین بارگذاری دارایی به عنوان تاریخ انتشار';

  @override
  String get defaultPseudoVersioningMethod => 'روش پیش فرض شبه نسخه';

  @override
  String get partialAPKHash => 'هش جزئی APK';

  @override
  String get apkLinkHash => 'هش پیوند APK';

  @override
  String get directAPKLink => 'لینک مستقیم APK';

  @override
  String get pseudoVersionInUse => 'یک نسخه شبه در حال استفاده است';

  @override
  String get installed => 'نصب شده است';

  @override
  String get latest => 'آخرین';

  @override
  String get invertRegEx => 'معکوس کردن عبارت منظم';

  @override
  String get note => 'یادداشت';

  @override
  String selfHostedNote(Object p0) {
    return 'از منوی کرکره ای \"$p0\" می توان برای دسترسی به نمونه های خود میزبانی/سفارشی از هر منبعی استفاده کرد.';
  }

  @override
  String get badDownload => 'APK قابل تجزیه نیست (دانلود ناسازگار یا جزئی)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'اشتراک‌گذاری برنامه‌های جدید با AppVerifier (در صورت وجود)';

  @override
  String get appVerifierInstructionToast => 'در AppVerifier به اشتراک بگذارید، سپس پس از آماده شدن به اینجا برگردید.';

  @override
  String get wiki => 'راهنما/ویکی';

  @override
  String get allowInsecure => 'درخواست های HTTP ناامن را مجاز کنید';

  @override
  String get stayOneVersionBehind => 'یک نسخه از آخرین نسخه پشت سر بگذارید';

  @override
  String get useFirstApkOfVersion => 'اولین بار از چندین APK';

  @override
  String get refreshBeforeDownload => 'قبل از دانلود، جزئیات برنامه را بازخوانی کنید';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'نام';

  @override
  String get smartname => 'Name (Smart)';

  @override
  String get sortMethod => 'Sort Method';

  @override
  String get welcome => 'خوش آمدید خوش آمدید';

  @override
  String get documentationLinksNote => 'صفحه GitHub به دست آمده در زیر شامل پیوندهایی با ویدیوها، مقالات، بحث ها و سایر منابع است که به شما کمک می کند تا چگونگی استفاده از برنامه را درک کنید.';

  @override
  String get batteryOptimizationNote => 'Note that background downloads may work more reliably if you disable OS battery optimizations for Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'شکست برای حذف فایل (سعی کنید آن را به صورت دستی حذف کنید سپس دوباره امتحان کنید): “$p0”';
  }

  @override
  String get foregroundService => 'خدمات Foreground';

  @override
  String get foregroundServiceExplanation => 'استفاده از یک سرویس پیش زمینه برای بررسی به روز رسانی (قابل اعتماد تر، مصرف انرژی بیشتر)';

  @override
  String get fgServiceNotice => 'این اعلان برای بررسی به روز رسانی پس زمینه مورد نیاز است (می تواند در تنظیمات OS پنهان شود)';

  @override
  String get excludeSecrets => 'رازهای پنهان';

  @override
  String get ghReqPrefix => 'مثال “sky22333/hubproxy”';

  @override
  String get includeZips => 'فایل های ZIP';

  @override
  String get zippedApkFilterRegEx => 'فیلتر APK در داخل Zip';

  @override
  String get googleVerificationWarningP1 => 'گوگل اعلام کرده است که از سال 2026/2027، تمام برنامه های موجود در دستگاه های اندرویدی معتبر نیاز به توسعه دهنده دارند تا جزئیات هویت شخصی را مستقیماً به گوگل ارسال کنند.\n\nپس از آن، Updatium ممکن است در دستگاه های اندرویدی گواهی شده کار نکند.';

  @override
  String get googleVerificationWarningP2 => 'به https://Keepandroidopen.org یا برای اطلاعات بیشتر بروید.';

  @override
  String get googleVerificationWarningP3 => 'توجه داشته باشید که در کوتاه مدت، ممکن است همچنان برای نصب برنامه های \"unverified\" (غیر سازگار) از طریق یک فرایند \"advanced Flow\" که گوگل وعده داده است پس از واکنش گسترده به اعلام خود اجرا کند، اما آنها جزئیات چگونگی کار این را به طوری که مشخص نیست که آیا آن واقعا حفظ آزادی های کاربر در هر روش عملی.\n\nدر هر صورت، حرکت گوگل یک گام مهم به سمت پایان محاسبات رایگان و عمومی برای افراد است.\n\nسیستم عامل های غیر گواهی شده، مانند گرافنموس، باید تا زمانی که اجازه دارند به وجود خود ادامه دهند، تحت تاثیر قرار گیرند.';

  @override
  String get multipleSigners => 'ثبت نام های متعدد';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'برنامه ها حذف شوند؟',
      one: 'برنامه حذف شود؟',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'درخواست های بسیار زیاد (نرخ محدود) - بعد از $count دقیقه دوباره امتحان کنید',
      one: 'درخواست‌های بسیار زیاد (نرخ محدود) - $count دقیقه دیگر دوباره امتحان کنید',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'بررسی به‌روزرسانی BG با $count مواجه شد، یک بررسی مجدد را در $count دقیقه برنامه‌ریزی می‌کند',
      one: 'بررسی به‌روزرسانی BG با یک $count مواجه شد، یک بررسی مجدد را در $count دقیقه برنامه‌ریزی می‌کند',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'بررسی به‌روزرسانی BG $count به‌روزرسانی‌های یافت شده - در صورت نیاز به کاربر اطلاع می‌دهد',
      one: 'بررسی به‌روزرسانی BG پیدا شد $count به‌روزرسانی - در صورت نیاز به کاربر اطلاع می‌دهد',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count برنامه ها',
      one: 'برنامه $count',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count آدرس های اینترنتی',
      one: '$count آدرس اینترنتی',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقیقه',
      one: '$count دقیقه',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعت',
      one: '$count ساعت',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روز',
      one: '$count روز',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$n گزارش پاک شد (قبل از = $before، بعد = $after)',
      one: 'گزارش $n پاک شد (قبل از = $before، بعد = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count و $count برنامه دیگر به روز رسانی دارند.',
      one: '$count و 1 برنامه دیگر به‌روزرسانی دارند.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count و $count برنامه دیگر به روز شدند.',
      one: '$count و 1 برنامه دیگر به روز شدند.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count و $count برنامه دیگر به روز نشد.',
      one: '$count و 1 برنامه دیگر به روز نشد.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'ممکن است $count و $count برنامه های دیگر به روز شده باشند.',
      one: '$count و 1 برنامه دیگر ممکن است به روز شده باشند.',
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
      other: 'گواهی Hashes',
      one: 'گواهی Hash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'سلب مسئولیت امنیتی و حقوقی';

  @override
  String get license => 'مجوز';

  @override
  String get licenseText => 'این برنامه تحت مجوز GPL v3 توزیع شده است.';

  @override
  String get disclaimer => 'سلب مسئولیت';

  @override
  String get disclaimerText => 'این برنامه هیچ یک از برنامه‌های خارجی را توزیع، میزبانی یا تأیید نمی‌کند. کاربر مسئولیت کامل امنیت و قانونی بودن هر نرم‌افزاری که از طریق این ابزار نصب می‌شود را بر عهده دارد.\n\nhttps://github.com/omeritzics/Updatium تنها مکان رسمی برای دانلود Updatium است - به شدت توصیه می‌شود آن را از جاهای دیگر دانلود نکنید زیرا دانلود از منابع غیررسمی ناامن است.';

  @override
  String get privacy => 'حریم خصوصی';

  @override
  String get privacyText => 'این برنامه متمرکز بر حریم خصوصی است و داده‌های شخصی جمع‌آوری نمی‌کند.';

  @override
  String get acceptAndContinue => 'پذیرش و ادامه';

  @override
  String get decline => 'رد کردن';
}
