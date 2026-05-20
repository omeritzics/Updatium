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
class TranslationsFa with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fa>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFa _root = this; // ignore: unused_field

	@override 
	TranslationsFa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFa(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'آدرس اینترنتی برنامه {} معتبر نیست';
	@override String get noReleaseFound => 'نسخه مناسبی پیدا نشد';
	@override String get noVersionFound => 'نمی توان نسخه منتشر شده را تعیین کرد';
	@override String get urlMatchesNoSource => 'آدرس اینترنتی با منبع شناخته شده مطابقت ندارد';
	@override String get cantInstallOlderVersion => 'نمی توان نسخه قدیمی یک برنامه را نصب کرد';
	@override String get appIdMismatch => 'شناسه بسته دانلود شده با شناسه برنامه موجود مطابقت ندارد';
	@override String get functionNotImplemented => 'این کلاس این تابع را پیاده سازی نکرده است';
	@override String get placeholder => 'نگهدارنده مکان';
	@override String get someErrors => 'برخی از خطاها رخ داده است';
	@override String get unexpectedError => 'خطای غیرمنتظره';
	@override String get ok => 'باشه';
	@override String get and => 'و';
	@override String get githubPATLabel => 'توکن دسترسی شخصی گیت هاب';
	@override String get includePrereleases => 'شامل نسخه های اولیه';
	@override String get fallbackToOlderReleases => 'بازگشت به نسخه های قدیمی تر';
	@override String get filterReleaseTitlesByRegEx => 'عناوین انتشار را با بیان منظم فیلتر کنید';
	@override String get invalidRegEx => 'عبارت منظم نامعتبر است';
	@override String get noDescription => 'بدون توضیحات';
	@override String get cancel => 'لغو';
	@override String get kContinue => 'ادامه دهید';
	@override String get requiredInBrackets => '(ضروری)';
	@override String get dropdownNoOptsError => 'خطا: کشویی باید حداقل یک گزینه داشته باشد';
	@override String get color => 'رنگ';
	@override String get standard => 'استاندارد';
	@override String get custom => 'سفارشی';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'استفاده از رنگ‌های Material You';
	@override String get githubStarredRepos => 'مخازن ستاره دار گیتهاب';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'نام کاربری';
	@override String get wrongArgNum => 'تعداد آرگومان های ارائه شده اشتباه است';
	@override String get xIsTrackOnly => '{} فقط ردیابی';
	@override String get source => 'منبع';
	@override String get app => 'برنامه';
	@override String get appsFromSourceAreTrackOnly => 'برنامه‌های این منبع «فقط ردیابی» هستند';
	@override String get youPickedTrackOnly => 'شما گزینه ی «فقط ردیابی» را انتخاب کرده اید';
	@override String get trackOnlyAppDescription => 'برنامه برای به روز رسانی ها ردیابی می شود، اما Updatium قادر به دانلود یا نصب آن نخواهد بود.';
	@override String get cancelled => 'لغو شد';
	@override String get appAlreadyAdded => 'برنامه قبلاً اضافه شده است';
	@override String get alreadyUpToDateQuestion => 'برنامه از قبل به روز شده است؟';
	@override String get addApp => 'افزودن برنامه';
	@override String get appSourceURL => 'آدرس اینترنتی منبع برنامه';
	@override String get error => 'خطا';
	@override String get add => 'اضافه کردن';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'جستجو (فقط برخی منابع)';
	@override String get search => 'جستجو کردن';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'گزینه های اضافی برای {}';
	@override String get supportedSources => 'منابع پشتیبانی شده';
	@override String get trackOnlyInBrackets => '«فقط ردیابی»';
	@override String get searchableInBrackets => '(قابل جستجو)';
	@override String get appsString => 'برنامه ها';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'برنامه ای وجود ندارد';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'برنامه ای برای فیلتر کردن وجود ندارد';
	@override String get byX => 'توسط {}';
	@override String get percentProgress => 'پیش رفتن: {}%';
	@override String get pleaseWait => 'لطفا صبر کنید';
	@override String get updateAvailable => 'بروزرسانی در دسترس';
	@override String get notInstalled => 'نصب نشده';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'نسخه شبه';
	@override String get selectAll => 'انتخاب همه';
	@override String get deselectX => 'لغو انتخاب {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} از Updatium حذف می‌شود اما روی دستگاه نصب می‌ماند.';
	@override String get removeSelectedAppsQuestion => 'برنامه های انتخابی حذف شود؟';
	@override String get removeSelectedApps => 'حذف برنامه های انتخاب شده';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'به روز رسانی {}';
	@override String get installX => 'نصب {}';
	@override String get markXTrackOnlyAsUpdated => 'علامت {}\n(فقط ردیابی)\nبروز شده';
	@override String get changeX => 'تغییر دادن {}';
	@override String get installUpdateApps => 'نصب/به‌روزرسانی برنامه‌ها';
	@override String get installUpdateSelectedApps => 'برنامه‌های انتخابی را نصب/به‌روزرسانی کنید';
	@override String get markXSelectedAppsAsUpdated => '{} برنامه های انتخابی را به عنوان به روز علامت گذاری کنید؟';
	@override String get no => 'خیر';
	@override String get yes => 'بله';
	@override String get markSelectedAppsUpdated => 'برنامه های انتخاب شده را به عنوان به روز علامت گذاری کنید';
	@override String get pinToTop => 'پین به بالا';
	@override String get unpinFromTop => 'برداشتن پین از بالا';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'وضعیت نصب برنامه‌های انتخابی بازنشانی شود؟';
	@override String get installStatusOfXWillBeResetExplanation => 'وضعیت نصب برنامه‌های انتخاب‌شده بازنشانی می‌شود.\n\nاگر نسخه برنامه نشان‌داده‌شده در Updatium به دلیل به‌روزرسانی‌های ناموفق یا مشکلات دیگر نادرست باشد، می‌تواند کمک کند.';
	@override String get customLinkMessage => 'این پیوندها بر روی دستگاه هایی با Updatium نصب شده کار می کنند';
	@override String get shareAppConfigLinks => 'اشتراک گذاری پیکربندی برنامه به عنوان پیوند HTML';
	@override String get resetInstallStatus => 'بازنشانی وضعیت نصب';
	@override String get more => 'بیشتر';
	@override String get removeOutdatedFilter => 'فیلتر برنامه قدیمی را حذف کنید';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'فقط برنامه های قدیمی را نشان دهید';
	@override String get filter => 'فیلتر';
	@override String get filterApps => 'فیلتر کردن برنامه ها';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'نام برنامه';
	@override String get author => 'سازنده';
	@override String get upToDateApps => 'برنامه های به روز';
	@override String get nonInstalledApps => 'برنامه های نصب نشده';
	@override String get importExport => 'وارد کردن/صادر کردن';
	@override String get settings => 'تنظیمات';
	@override String get exportedTo => 'صادر کردن به{}';
	@override String get updatiumExport => 'صادر کردن Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'ورودی نامعتبر';
	@override String get importedX => 'وارد شده {}';
	@override String get updatiumImport => 'وارد کردن Updatium';
	@override String get importFromURLList => 'وارد کردن از فهرست آدرس اینترنتی';
	@override String get searchQuery => 'جستجوی سوال';
	@override String get appURLList => 'فهرست آدرس اینترنتی برنامه';
	@override String get line => 'خط';
	@override String get searchX => 'جستجو {}';
	@override String get noResults => 'نتیجه ای پیدا نشد';
	@override String get importX => ' وارد کردن {}';
	@override String get importedAppsIdDisclaimer => 'ممکن است برنامه‌های وارد شده به اشتباه به‌عنوان "نصب نشده" نشان داده شوند.\nبرای رفع این مشکل، آنها را دوباره از طریق Updatium نصب کنید.\nاین نباید روی داده‌های برنامه تأثیر بگذارد.\n\nفقط بر روی آدرس اینترنتی و روش‌های درون ریزی شخص ثالث تأثیر می‌گذارد.';
	@override String get importErrors => 'خطاهای وارد کردن';
	@override String get importedXOfYApps => '{} از {} برنامه وارد شد.';
	@override String get followingURLsHadErrors => 'آدرس های اینترنتی زیر دارای خطا بودند:';
	@override String get selectURL => 'آدرس اینترنتی انتخاب شده';
	@override String get selectURLs => 'آدرس های اینترنتی انتخاب شده';
	@override String get pick => 'انتخاب';
	@override String get theme => 'تم';
	@override String get dark => 'تاریک';
	@override String get light => 'روشن';
	@override String get followSystem => 'هماهنگ با سیستم';
	@override String get followSystemThemeExplanation => 'دنبال کردن تم سیستم فقط با استفاده از برنامه های شخص ثالث امکان پذیر است';
	@override String get useBlackTheme => 'استفاده از تم تیره سیاه خالص';
	@override String get appSortBy => 'مرتب سازی برنامه بر اساس';
	@override String get authorName => 'سازنده/اسم';
	@override String get nameAuthor => 'اسم/سازنده';
	@override String get asAdded => 'همانطور که اضافه شد';
	@override String get appSortOrder => 'ترتیب مرتب سازی برنامه';
	@override String get ascending => 'صعودی';
	@override String get descending => 'نزولی';
	@override String get bgUpdateCheckInterval => 'فاصله بررسی به‌روزرسانی در پس‌زمینه';
	@override String get neverManualOnly => 'هرگز - فقط دستی';
	@override String get appearance => 'ظاهر';
	@override String get pinUpdates => 'به‌روزرسانی‌ها را به نمای بالای برنامه‌ها پین کنید';
	@override String get updates => 'به روز رسانی ها';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'منبع خاص';
	@override String get appSource => 'منبع برنامه';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'بدون گزارش';
	@override String get appLogs => 'گزارش های برنامه';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'بستن';
	@override String get share => 'اشتراک گذاری';
	@override String get appNotFound => 'برنامه پیدا نشد';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'صادر کردن-updatium';
	@override String get pickAnAPK => 'یک APK انتخاب کنید';
	@override String get appHasMoreThanOnePackage => '{} بیش از یک بسته دارد:';
	@override String get deviceSupportsXArch => 'دستگاه شما از معماری پردازنده {} پشتیبانی میکند';
	@override String get deviceSupportsFollowingArchs => 'دستگاه شما از معماری های پردازنده زیر پشتیبانی می کند:';
	@override String get warning => 'اخطار';
	@override String get sourceIsXButPackageFromYPrompt => 'منبع برنامه "{}" است اما بسته انتشار از "{}" آمده است. ادامه هید؟';
	@override String get updatesAvailable => 'بروزرسانی در دسترس ';
	@override String get updatesAvailableNotifDescription => 'به کاربر اطلاع می دهد که به روز رسانی برای یک یا چند برنامه ردیابی شده توسط Updatium در دسترس است';
	@override String get noNewUpdates => 'به روز رسانی جدیدی وجود ندارد.';
	@override String get xHasAnUpdate => '{} یک به روز رسانی دارد.';
	@override String get appsUpdated => 'برنامه ها به روز شدند';
	@override String get appsNotUpdated => 'به روز رسانی برنامه ها ناموفق بود';
	@override String get appsUpdatedNotifDescription => 'به کاربر اطلاع می دهد که به روز رسانی یک یا چند برنامه در پس زمینه اعمال شده است';
	@override String get xWasUpdatedToY => '{} به {} به روز شد.';
	@override String get xWasNotUpdatedToY => 'به روز رسانی {} به {} انجام نشد.';
	@override String get errorCheckingUpdates => 'خطا در بررسی به‌روزرسانی‌ها';
	@override String get errorCheckingUpdatesNotifDescription => 'اعلانی که وقتی بررسی به‌روزرسانی پس‌زمینه ناموفق است نشان می‌دهد';
	@override String get appsRemoved => 'برنامه ها حذف شدند';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'به کاربر اطلاع می دهد که یک یا چند برنامه به دلیل خطا در هنگام بارگیری حذف شده است';
	@override String get xWasRemovedDueToErrorY => '{} به دلیل این خطا حذف شد: {}';
	@override String get completeAppInstallation => 'نصب کامل برنامه';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium باید برای نصب برنامه ها باز باشد';
	@override String get completeAppInstallationNotifDescription => 'از کاربر می‌خواهد برای پایان نصب برنامه به Updatium برگردد';
	@override String get checkingForUpdates => 'بررسی به‌روزرسانی‌ها';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'اعلان گذرا که هنگام بررسی به روز رسانی ظاهر می شود';
	@override String get pleaseAllowInstallPerm => 'لطفاً به Updatium اجازه دهید برنامه‌ها را نصب کند';
	@override String get trackOnly => 'فقط ردیابی';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'خطا {}';
	@override String get versionCorrectionDisabled => 'تصحیح نسخه غیرفعال شد (به نظر می رسد افزونه کار نمی کند)';
	@override String get unknown => 'ناشناخته';
	@override String get none => 'هیچ';
	@override String get all => 'همه چیز';
	@override String get never => 'هرگز';
	@override String get latestVersion => 'آخرین نسخه';
	@override String get installedVersionX => 'نسخه نصب شده: {}';
	@override String get lastUpdateCheckX => 'بررسی آخرین به‌روزرسانی: {}';
	@override String get remove => 'حذف';
	@override String get quickLinks => 'پیوندهای سریع';
	@override String get yesMarkUpdated => 'بله، علامت گذاری به عنوان به روز شده';
	@override String get fdroid => 'F-Droid Official';
	@override String get appIdOrName => 'شناسه یا نام برنامه';
	@override String get appId => 'شناسه برنامه';
	@override String get appWithIdOrNameNotFound => 'هیچ برنامه ای با آن شناسه یا نام یافت نشد';
	@override String get reposHaveMultipleApps => 'مخازن ممکن است شامل چندین برنامه باشد';
	@override String get fdroidThirdPartyRepo => 'مخازن شخص ثالث F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'نصب';
	@override String get markInstalled => 'علامت گذاری به عنوان نصب شده';
	@override String get update => 'به روز رسانی';
	@override String get updated => 'به‌روز شده';
	@override String get markUpdated => 'علامت گذاری به روز شد';
	@override String get download => 'Download';
	@override String get additionalOptions => 'گزینه های اضافی';
	@override String get disableVersionDetection => 'غیرفعال کردن تشخیص نسخه';
	@override String get noVersionDetectionExplanation => 'این گزینه فقط باید برای برنامه هایی استفاده شود که تشخیص نسخه به درستی کار نمی کند.';
	@override String get downloadingX => 'در حال دانلود {}';
	@override String get downloadX => 'دانلود {}';
	@override String get downloadedX => 'دانلود شده {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'انتشار دارایی';
	@override String get downloadNotifDescription => 'کاربر را از پیشرفت دانلود یک برنامه مطلع می کند';
	@override String get noAPKFound => 'APK پیدا نشد فایل';
	@override String get noVersionDetection => 'بدون تشخیص نسخه';
	@override String get categorize => 'دسته بندی کردن';
	@override String get categories => 'دسته بندی ها';
	@override String get category => 'دسته بندی';
	@override String get noCategory => 'بدون دسته بندی';
	@override String get noCategories => 'بدون دسته بندی ها';
	@override String get categoryDeleteQuestion => 'دسته بندی ها حذف شوند؟';
	@override String get categoryDeleteWarning => 'همه برنامه‌ها در دسته‌های حذف شده روی دسته‌بندی نشده تنظیم می‌شوند.';
	@override String get addCategory => 'اضافه کردن دسته';
	@override String get label => 'برچسب';
	@override String get language => 'زبان';
	@override String get copiedToClipboard => 'در کلیپ بورد کپی شد';
	@override String get storagePermissionDenied => 'مجوز ذخیره سازی رد شد';
	@override String get selectedCategorizeWarning => 'این جایگزین تنظیمات دسته بندی موجود برای برنامه های انتخابی می شود.';
	@override String get filterAPKsByRegEx => 'فایل‌های APK را با نظم فیلتر کنید';
	@override String get removeFromUpdatium => 'از Updatium حذف کنید';
	@override String get uninstallFromDevice => 'حذف نصب از دستگاه';
	@override String get onlyWorksWithNonVersionDetectApps => 'فقط برای برنامه‌هایی کار می‌کند که تشخیص نسخه غیرفعال است.';
	@override String get releaseDateAsVersion => 'از تاریخ انتشار به عنوان نسخه استفاده کنید';
	@override String get releaseTitleAsVersion => 'از عنوان انتشار به عنوان رشته نسخه استفاده کنید';
	@override String get releaseDateAsVersionExplanation => 'این گزینه فقط باید برای برنامه هایی استفاده شود که تشخیص نسخه به درستی کار نمی کند، اما تاریخ انتشار در دسترس است.';
	@override String get changes => 'تغییرات';
	@override String get releaseDate => 'تاریخ انتشار';
	@override String get importFromURLsInFile => 'وارد کردن از آدرس های اینترنتی موجود در فایل (مانند OPML)';
	@override String get versionDetectionExplanation => 'تطبیق رشته نسخه با نسخه شناسایی شده از سیستم عامل';
	@override String get versionDetection => 'تشخیص نسخه';
	@override String get standardVersionDetection => 'تشخیص نسخه استاندارد';
	@override String get groupByCategory => 'دسته‌بندی بر اساس گروه';
	@override String get listView => 'نمای لیست';
	@override String get gridView => 'نمای شبکه';
	@override String get autoApkFilterByArch => 'تلاش برای فیلتر کردن APK ها بر اساس معماری CPU در صورت امکان';
	@override String get autoLinkFilterByArch => 'تلاش برای فیلتر کردن لینک ها توسط معماری CPU در صورت امکان';
	@override String get overrideSource => 'نادیده گرفتن منبع';
	@override String get dontShowAgain => 'دوباره این را نشان نده';
	@override String get dontShowTrackOnlyWarnings => 'هشدار \'فقط ردیابی\' را نشان ندهید';
	@override String get dontShowAPKOriginWarnings => 'هشدارهای منبع APK را نشان ندهید';
	@override String get moveNonInstalledAppsToBottom => 'برنامه های نصب نشده را به نمای پایین برنامه ها منتقل کنید';
	@override String get gitlabPATLabel => 'رمز دسترسی شخصی GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'درباره';
	@override String get requiresCredentialsInSettings => '{}: این به اعتبارنامه های اضافی نیاز دارد (در تنظیمات)';
	@override String get checkOnStart => 'بررسی در شروع';
	@override String get safeMode => 'حالت امن';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'افزودن برنامه در حالت امن غیرفعال است';
	@override String get tryInferAppIdFromCode => 'شناسه برنامه را از کد منبع استنباط کنید';
	@override String get removeOnExternalUninstall => 'حذف خودکار برنامه های حذف نصب شده خارجی';
	@override String get pickHighestVersionCode => 'انتخاب خودکار بالاترین کد نسخه APK';
	@override String get checkUpdateOnDetailPage => 'برای باز کردن صفحه جزئیات برنامه، به‌روزرسانی‌ها را بررسی کنید';
	@override String get disablePageTransitions => 'غیرفعال کردن انیمیشن های انتقال صفحه';
	@override String get reversePageTransitions => 'انیمیشن های انتقال معکوس صفحه';
	@override String get minStarCount => 'حداقل تعداد ستاره';
	@override String get addInfoBelow => 'این اطلاعات را در زیر اضافه کنید';
	@override String get addInfoInSettings => 'این اطلاعات را در تنظیمات اضافه کنید.';
	@override String get githubSourceNote => 'با استفاده از کلید API می توان از محدودیت نرخ GitHub جلوگیری کرد.';
	@override String get sortByLastLinkSegment => 'فقط بر اساس آخرین بخش پیوند مرتب کنید';
	@override String get filterReleaseNotesByRegEx => 'یادداشت های انتشار را با بیان منظم فیلتر کنید';
	@override String get customLinkFilterRegex => 'فیلتر پیوند سفارشی بر اساس عبارت منظم (پیش‌فرض \'.apk$\')';
	@override String get appsPossiblyUpdated => 'به‌روزرسانی برنامه انجام شد';
	@override String get appsPossiblyUpdatedNotifDescription => 'به کاربر اطلاع می‌دهد که به‌روزرسانی‌های یک یا چند برنامه به طور بالقوه در پس‌زمینه اعمال شده است';
	@override String get xWasPossiblyUpdatedToY => 'ممکن است {} به {} به روز شده باشد.';
	@override String get enableBackgroundUpdates => 'به روز رسانی پس زمینه را فعال کنید';
	@override String get backgroundUpdateReqsExplanation => 'به روز رسانی پس زمینه ممکن است برای همه برنامه ها امکان پذیر نباشد.';
	@override String get backgroundUpdateLimitsExplanation => 'موفقیت نصب پس‌زمینه تنها زمانی مشخص می‌شود که Updatium باز شود.';
	@override String get verifyLatestTag => 'برچسب "آخرین" را تأیید کنید';
	@override String get intermediateLinkRegex => 'برای بازدید از پیوند «میانگین» فیلتر کنید';
	@override String get filterByLinkText => 'لینک ها را بر اساس متن پیوند فیلتر کنید';
	@override String get matchLinksOutsideATags => 'لینک های خارج از تگ های <a>';
	@override String get intermediateLinkNotFound => 'لینک میانی پیدا نشد';
	@override String get intermediateLink => 'پیوند میانی';
	@override String get exemptFromBackgroundUpdates => 'معاف از به‌روزرسانی‌های پس‌زمینه (در صورت فعال بودن)';
	@override String get bgUpdatesOnWiFiOnly => 'به‌روزرسانی‌های پس‌زمینه را در صورت عدم اتصال به Wi-Fi غیرفعال کنید';
	@override String get bgUpdatesWhileChargingOnly => 'به‌روزرسانی‌های پس‌زمینه را هنگام شارژ نشدن غیرفعال کنید';
	@override String get autoSelectHighestVersionCode => 'انتخاب خودکار بالاترین نسخه کد APK';
	@override String get versionExtractionRegEx => 'نسخه استخراج RegEx';
	@override String get trimVersionString => 'برش رشته نسخه با RegEx';
	@override String get matchGroupToUseForX => 'مطابقت دادن گروه برای استفاده برای "{}"';
	@override String get matchGroupToUse => 'گروه مورد استفاده را مطابقت دهید';
	@override String get highlightTouchTargets => 'اهداف لمسی کمتر واضح را برجسته کنید';
	@override String get pickExportDir => 'فهرست صادر کردن را انتخاب کنید';
	@override String get autoExportOnChanges => 'صادر کردن خودکار تغییرات';
	@override String get includeSettings => 'شامل تنظیمات';
	@override String get filterVersionsByRegEx => 'فیلتر کردن نسخه ها با RegEx';
	@override String get trySelectingSuggestedVersionCode => 'نسخه پیشنهادی APK نسخه کد را انتخاب کنید';
	@override String get dontSortReleasesList => 'حفظ سفارش انتشار از API';
	@override String get reverseSort => 'مرتب سازی معکوس';
	@override String get takeFirstLink => 'لینک اول را بگیرید';
	@override String get skipSort => 'از مرتب سازی صرف نظر کنید';
	@override String get debugMenu => 'منوی اشکال زدایی';
	@override String get bgTaskStarted => 'کار پس زمینه شروع شد - لاگ های مربوط را بررسی کنید.';
	@override String get runBgCheckNow => 'اکنون به‌روزرسانی پس‌زمینه را بررسی کنید';
	@override String get versionExtractWholePage => 'نسخه Extraction Regex را در کل صفحه اعمال کنید';
	@override String get installing => 'در حال نصب';
	@override String get skipUpdateNotifications => 'رد شدن از اعلان های به روز رسانی';
	@override String get updatesAvailableNotifChannel => 'بروزرسانی در دسترس ';
	@override String get appsUpdatedNotifChannel => 'برنامه ها به روز شدند';
	@override String get appsPossiblyUpdatedNotifChannel => 'به‌روزرسانی برنامه انجام شد';
	@override String get errorCheckingUpdatesNotifChannel => 'خطا در بررسی به‌روزرسانی‌ها';
	@override String get appsRemovedNotifChannel => 'برنامه ها حذف شدند';
	@override String get downloadingXNotifChannel => 'در حال دانلود {}';
	@override String get completeAppInstallationNotifChannel => 'نصب کامل برنامه';
	@override String get checkingForUpdatesNotifChannel => 'بررسی به‌روزرسانی‌ها';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'فقط برنامه های نصب شده و فقط ردیابی را برای به روز رسانی بررسی کنید';
	@override String get supportFixedAPKURL => 'پشتیبانی از URL های APK ثابت';
	@override String get selectX => 'انتخاب کنید {}';
	@override String get parallelDownloads => 'اجازه دانلود موازی';
	@override String get useShizuku => 'برای نصب از Shizuku یا Sui استفاده کنید';
	@override String get shizukuBinderNotFound => 'Shizuku در حال اجرا نیست';
	@override String get shizukuOld => 'نسخه قدیمی Shizuku (<11) - آن را به روز کنید';
	@override String get shizukuOldAndroidWithADB => 'Shizuku در Android < 8.1 با ADB اجرا می شود - اندروید را به روز کنید یا به جای آن از Sui استفاده کنید';
	@override String get shizukuPretendToBeGooglePlay => 'Google Play را به عنوان منبع نصب تنظیم کنید (در صورت استفاده از Shizuku)';
	@override String get useSystemFont => 'استفاده از فونت سیستم';
	@override String get useVersionCodeAsOSVersion => 'استفاده کد نسخه برنامه به جای نسخه شناسایی شده توسط سیستم عامل استفاده کنید';
	@override String get requestHeader => 'درخواست سطر بالایی';
	@override String get useLatestAssetDateAsReleaseDate => 'استفاده از آخرین بارگذاری دارایی به عنوان تاریخ انتشار';
	@override String get defaultPseudoVersioningMethod => 'روش پیش فرض شبه نسخه';
	@override String get partialAPKHash => 'هش جزئی APK';
	@override String get APKLinkHash => 'هش پیوند APK';
	@override String get directAPKLink => 'لینک مستقیم APK';
	@override String get pseudoVersionInUse => 'یک نسخه شبه در حال استفاده است';
	@override String get installedVersion => 'نصب شده است';
	@override String get installed => 'نصب شده است';
	@override String get notInstalledApps => 'نصب نشده';
	@override String get latest => 'جدیدترین';
	@override String get invertRegEx => 'معکوس کردن عبارت منظم';
	@override String get note => 'یادداشت';
	@override String get selfHostedNote => 'از منوی کرکره ای "{}" می توان برای دسترسی به نمونه های خود میزبانی/سفارشی از هر منبعی استفاده کرد.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK قابل تجزیه نیست (دانلود ناسازگار یا جزئی)';
	@override String get beforeNewInstallsShareToAppVerifier => 'اشتراک‌گذاری برنامه‌های جدید با AppVerifier (در صورت وجود)';
	@override String get appVerifierInstructionToast => 'در AppVerifier به اشتراک بگذارید، سپس پس از آماده شدن به اینجا برگردید.';
	@override String get wiki => 'راهنما/ویکی';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'درخواست های HTTP ناامن را مجاز کنید';
	@override String get stayOneVersionBehind => 'یک نسخه از آخرین نسخه پشت سر بگذارید';
	@override String get useFirstApkOfVersion => 'اولین بار از چندین APK';
	@override String get refreshBeforeDownload => 'قبل از دانلود، جزئیات برنامه را بازخوانی کنید';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'نام';
	@override String get smartname => 'Name (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sort Method';
	@override String get welcome => 'خوش آمدید خوش آمدید';
	@override String get batteryOptimizationNote => 'Note that background downloads may work more reliably if you disable OS battery optimizations for Updatium.';
	@override String get fileDeletionError => 'شکست برای حذف فایل (سعی کنید آن را به صورت دستی حذف کنید سپس دوباره امتحان کنید): “{}”';
	@override String get foregroundService => 'خدمات Foreground';
	@override String get foregroundServiceExplanation => 'استفاده از یک سرویس پیش زمینه برای بررسی به روز رسانی (قابل اعتماد تر، مصرف انرژی بیشتر)';
	@override String get fgServiceNotice => 'این اعلان برای بررسی به روز رسانی پس زمینه مورد نیاز است (می تواند در تنظیمات OS پنهان شود)';
	@override String get excludeSecrets => 'رازهای پنهان';
	@override String get GHReqPrefix => 'مثال “omeritzics/Updatium”';
	@override String get includeZips => 'فایل های ZIP';
	@override String get zippedApkFilterRegEx => 'فیلتر APK در داخل Zip';
	@override String get multipleSigners => 'ثبت نام های متعدد';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'برنامه حذف شود؟',
		other: 'برنامه ها حذف شوند؟',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'درخواست‌های بسیار زیاد (نرخ محدود) - {count} دقیقه دیگر دوباره امتحان کنید',
		other: 'درخواست های بسیار زیاد (نرخ محدود) - بعد از {count} دقیقه دوباره امتحان کنید',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'بررسی به‌روزرسانی BG با یک {error} مواجه شد، یک بررسی مجدد را در {count} دقیقه برنامه‌ریزی می‌کند',
		other: 'بررسی به‌روزرسانی BG با {error} مواجه شد، یک بررسی مجدد را در {count} دقیقه برنامه‌ریزی می‌کند',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'بررسی به‌روزرسانی BG پیدا شد {count} به‌روزرسانی - در صورت نیاز به کاربر اطلاع می‌دهد',
		other: 'بررسی به‌روزرسانی BG {count} به‌روزرسانی‌های یافت شده - در صورت نیاز به کاربر اطلاع می‌دهد',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'برنامه {count}',
		other: '{count} برنامه ها',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{count} آدرس اینترنتی',
		other: '{count} آدرس های اینترنتی',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{count} دقیقه',
		other: '{count} دقیقه',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{count} ساعت',
		other: '{count} ساعت',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{count} روز',
		other: '{count} روز',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'گزارش {n} پاک شد (قبل از = {before}، بعد = {after})',
		other: '{n} گزارش پاک شد (قبل از = {before}، بعد = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{app} و 1 برنامه دیگر به‌روزرسانی دارند.',
		other: '{app} و {count} برنامه دیگر به روز رسانی دارند.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{app} و 1 برنامه دیگر به روز شدند.',
		other: '{app} و {count} برنامه دیگر به روز شدند.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{app} و 1 برنامه دیگر به روز نشد.',
		other: '{app} و {count} برنامه دیگر به روز نشد.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{app} و 1 برنامه دیگر ممکن است به روز شده باشند.',
		other: 'ممکن است {app} و {count} برنامه های دیگر به روز شده باشند.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n,
		one: 'گواهی Hash',
		other: 'گواهی Hashes',
	);
	@override String get securityDisclaimerTitle => 'سلب مسئولیت امنیتی و حقوقی';
	@override String get license => 'مجوز';
	@override String get licenseText => 'این برنامه تحت مجوز GPL v3 توزیع شده است.';
	@override String get disclaimer => 'سلب مسئولیت';
	@override String get disclaimerText => 'این برنامه هیچ یک از برنامه‌های خارجی را توزیع، میزبانی یا تأیید نمی‌کند. کاربر مسئولیت کامل امنیت و قانونی بودن هر نرم‌افزاری که از طریق این ابزار نصب می‌شود را بر عهده دارد.\n\nhttps://github.com/omeritzics/Updatium تنها مکان رسمی برای دانلود Updatium است - به شدت توصیه می‌شود آن را از جاهای دیگر دانلود نکنید زیرا دانلود از منابع غیررسمی ناامن است.';
	@override String get privacy => 'حریم خصوصی';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'پذیرش و ادامه';
	@override String get decline => 'رد کردن';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'از Updatium لذت می‌برید؟';
	@override String get githubStarPromptContent => 'Updatium یک پروژه داوطلبانه متن‌باز جامعه‌محور است که در وقت آزاد من توسعه داده شده است. اگر مایل به حمایت از پروژه هستید، لطفاً در نظر داشته باشید که به آن در GitHub ستاره بدهید تا به ما کمک کنید تا به کاربران و مشارکت‌کنندگان بیشتری برسیم. دیگر در این مورد به شما یادآوری نخواهد شد. از قبل متشکریم! :)';
	@override String get githubStarPromptStar => 'ستاره دادن';
	@override String get githubStarPromptDontShowAgain => 'دیگر نشان نده';
	@override String get sourceCode => 'کد منبع';
	@override String get developedBy => 'توسعه داده شده توسط';
	@override String get appDescription => 'یک کاتالوگ برنامه اندروید قابل سفارشی‌سازی که به شما اجازه می‌دهد برنامه‌های خود را مستقیماً از منابع APK به‌روزرسانی کنید.';
	@override String get safeModeEnabled => 'حالت امن فعال شده است';
	@override String get safeModeDisabled => 'حالت امن غیرفعال شده است';
	@override String get safeModeDisable => 'غیرفعال کردن حالت امن';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'مدیریت حالت امن';
	@override String get safeModeSetupDescription => 'رمز عبور را برای فعال کردن حالت امن تنظیم کنید. پس از فعال شدن، حالت امن از اضافه کردن برنامه های جدید جلوگیری می کند و تنها با رمز عبور می توان آن را غیرفعال کرد.';
	@override String get safeModeToggleDescription => 'رمز عبور خود را وارد کنید تا حالت امن را فعال یا غیرفعال کنید.';
	@override String get safeModeSetPassword => 'تنظیم رمز عبور';
	@override String get safeModeConfirmPassword => 'تایید رمز عبور';
	@override String get safeModeEnterPassword => 'ورود رمز عبور';
	@override String get safeModePasswordHint => 'حداقل 8 کاراکتر';
	@override String get safeModePasswordTooShort => 'رمز عبور باید حداقل 8 کاراکتر داشته باشد';
	@override String get safeModePasswordMismatch => 'رمزهای عبور مطابقت ندارند';
	@override String get safeModePasswordIncorrect => 'رمز عبور اشتباه است';
	@override String get safeModePasswordError => 'خطایی در تنظیم رمز عبور رخ داد. لطفاً دوباره تلاش کنید.';
	@override String get safeModeEnable => 'فعال کردن حالت امن';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} ضربه دیگر تا غیرفعال شدن حالت امن';
	@override String get safeModeEnabledHint => 'حالت امن فعال شد. برای غیرفعال کردن، چند بار روی شماره نسخه در تنظیمات ضربه بزنید.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'متوجه شدم';
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

/// The flat map containing all translations for locale <fa>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'آدرس اینترنتی برنامه {} معتبر نیست',
			'noReleaseFound' => 'نسخه مناسبی پیدا نشد',
			'noVersionFound' => 'نمی توان نسخه منتشر شده را تعیین کرد',
			'urlMatchesNoSource' => 'آدرس اینترنتی با منبع شناخته شده مطابقت ندارد',
			'cantInstallOlderVersion' => 'نمی توان نسخه قدیمی یک برنامه را نصب کرد',
			'appIdMismatch' => 'شناسه بسته دانلود شده با شناسه برنامه موجود مطابقت ندارد',
			'functionNotImplemented' => 'این کلاس این تابع را پیاده سازی نکرده است',
			'placeholder' => 'نگهدارنده مکان',
			'someErrors' => 'برخی از خطاها رخ داده است',
			'unexpectedError' => 'خطای غیرمنتظره',
			'ok' => 'باشه',
			'and' => 'و',
			'githubPATLabel' => 'توکن دسترسی شخصی گیت هاب',
			'includePrereleases' => 'شامل نسخه های اولیه',
			'fallbackToOlderReleases' => 'بازگشت به نسخه های قدیمی تر',
			'filterReleaseTitlesByRegEx' => 'عناوین انتشار را با بیان منظم فیلتر کنید',
			'invalidRegEx' => 'عبارت منظم نامعتبر است',
			'noDescription' => 'بدون توضیحات',
			'cancel' => 'لغو',
			'kContinue' => 'ادامه دهید',
			'requiredInBrackets' => '(ضروری)',
			'dropdownNoOptsError' => 'خطا: کشویی باید حداقل یک گزینه داشته باشد',
			'color' => 'رنگ',
			'standard' => 'استاندارد',
			'custom' => 'سفارشی',
			'primary' => 'Primary',
			'useMaterialYou' => 'استفاده از رنگ‌های Material You',
			'githubStarredRepos' => 'مخازن ستاره دار گیتهاب',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'نام کاربری',
			'wrongArgNum' => 'تعداد آرگومان های ارائه شده اشتباه است',
			'xIsTrackOnly' => '{} فقط ردیابی',
			'source' => 'منبع',
			'app' => 'برنامه',
			'appsFromSourceAreTrackOnly' => 'برنامه‌های این منبع «فقط ردیابی» هستند',
			'youPickedTrackOnly' => 'شما گزینه ی «فقط ردیابی» را انتخاب کرده اید',
			'trackOnlyAppDescription' => 'برنامه برای به روز رسانی ها ردیابی می شود، اما Updatium قادر به دانلود یا نصب آن نخواهد بود.',
			'cancelled' => 'لغو شد',
			'appAlreadyAdded' => 'برنامه قبلاً اضافه شده است',
			'alreadyUpToDateQuestion' => 'برنامه از قبل به روز شده است؟',
			'addApp' => 'افزودن برنامه',
			'appSourceURL' => 'آدرس اینترنتی منبع برنامه',
			'error' => 'خطا',
			'add' => 'اضافه کردن',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'جستجو (فقط برخی منابع)',
			'search' => 'جستجو کردن',
			'searching' => 'Searching',
			'additionalOptsFor' => 'گزینه های اضافی برای {}',
			'supportedSources' => 'منابع پشتیبانی شده',
			'trackOnlyInBrackets' => '«فقط ردیابی»',
			'searchableInBrackets' => '(قابل جستجو)',
			'appsString' => 'برنامه ها',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'برنامه ای وجود ندارد',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'برنامه ای برای فیلتر کردن وجود ندارد',
			'byX' => 'توسط {}',
			'percentProgress' => 'پیش رفتن: {}%',
			'pleaseWait' => 'لطفا صبر کنید',
			'updateAvailable' => 'بروزرسانی در دسترس',
			'notInstalled' => 'نصب نشده',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'نسخه شبه',
			'selectAll' => 'انتخاب همه',
			'deselectX' => 'لغو انتخاب {}',
			'xWillBeRemovedButRemainInstalled' => '{} از Updatium حذف می‌شود اما روی دستگاه نصب می‌ماند.',
			'removeSelectedAppsQuestion' => 'برنامه های انتخابی حذف شود؟',
			'removeSelectedApps' => 'حذف برنامه های انتخاب شده',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'به روز رسانی {}',
			'installX' => 'نصب {}',
			'markXTrackOnlyAsUpdated' => 'علامت {}\n(فقط ردیابی)\nبروز شده',
			'changeX' => 'تغییر دادن {}',
			'installUpdateApps' => 'نصب/به‌روزرسانی برنامه‌ها',
			'installUpdateSelectedApps' => 'برنامه‌های انتخابی را نصب/به‌روزرسانی کنید',
			'markXSelectedAppsAsUpdated' => '{} برنامه های انتخابی را به عنوان به روز علامت گذاری کنید؟',
			'no' => 'خیر',
			'yes' => 'بله',
			'markSelectedAppsUpdated' => 'برنامه های انتخاب شده را به عنوان به روز علامت گذاری کنید',
			'pinToTop' => 'پین به بالا',
			'unpinFromTop' => 'برداشتن پین از بالا',
			'resetInstallStatusForSelectedAppsQuestion' => 'وضعیت نصب برنامه‌های انتخابی بازنشانی شود؟',
			'installStatusOfXWillBeResetExplanation' => 'وضعیت نصب برنامه‌های انتخاب‌شده بازنشانی می‌شود.\n\nاگر نسخه برنامه نشان‌داده‌شده در Updatium به دلیل به‌روزرسانی‌های ناموفق یا مشکلات دیگر نادرست باشد، می‌تواند کمک کند.',
			'customLinkMessage' => 'این پیوندها بر روی دستگاه هایی با Updatium نصب شده کار می کنند',
			'shareAppConfigLinks' => 'اشتراک گذاری پیکربندی برنامه به عنوان پیوند HTML',
			'resetInstallStatus' => 'بازنشانی وضعیت نصب',
			'more' => 'بیشتر',
			'removeOutdatedFilter' => 'فیلتر برنامه قدیمی را حذف کنید',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'فقط برنامه های قدیمی را نشان دهید',
			'filter' => 'فیلتر',
			'filterApps' => 'فیلتر کردن برنامه ها',
			'filterDays' => 'Filter days',
			'appName' => 'نام برنامه',
			'author' => 'سازنده',
			'upToDateApps' => 'برنامه های به روز',
			'nonInstalledApps' => 'برنامه های نصب نشده',
			'importExport' => 'وارد کردن/صادر کردن',
			'settings' => 'تنظیمات',
			'exportedTo' => 'صادر کردن به{}',
			'updatiumExport' => 'صادر کردن Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'ورودی نامعتبر',
			'importedX' => 'وارد شده {}',
			'updatiumImport' => 'وارد کردن Updatium',
			'importFromURLList' => 'وارد کردن از فهرست آدرس اینترنتی',
			'searchQuery' => 'جستجوی سوال',
			'appURLList' => 'فهرست آدرس اینترنتی برنامه',
			'line' => 'خط',
			'searchX' => 'جستجو {}',
			'noResults' => 'نتیجه ای پیدا نشد',
			'importX' => ' وارد کردن {}',
			'importedAppsIdDisclaimer' => 'ممکن است برنامه‌های وارد شده به اشتباه به‌عنوان "نصب نشده" نشان داده شوند.\nبرای رفع این مشکل، آنها را دوباره از طریق Updatium نصب کنید.\nاین نباید روی داده‌های برنامه تأثیر بگذارد.\n\nفقط بر روی آدرس اینترنتی و روش‌های درون ریزی شخص ثالث تأثیر می‌گذارد.',
			'importErrors' => 'خطاهای وارد کردن',
			'importedXOfYApps' => '{} از {} برنامه وارد شد.',
			'followingURLsHadErrors' => 'آدرس های اینترنتی زیر دارای خطا بودند:',
			'selectURL' => 'آدرس اینترنتی انتخاب شده',
			'selectURLs' => 'آدرس های اینترنتی انتخاب شده',
			'pick' => 'انتخاب',
			'theme' => 'تم',
			'dark' => 'تاریک',
			'light' => 'روشن',
			'followSystem' => 'هماهنگ با سیستم',
			'followSystemThemeExplanation' => 'دنبال کردن تم سیستم فقط با استفاده از برنامه های شخص ثالث امکان پذیر است',
			'useBlackTheme' => 'استفاده از تم تیره سیاه خالص',
			'appSortBy' => 'مرتب سازی برنامه بر اساس',
			'authorName' => 'سازنده/اسم',
			'nameAuthor' => 'اسم/سازنده',
			'asAdded' => 'همانطور که اضافه شد',
			'appSortOrder' => 'ترتیب مرتب سازی برنامه',
			'ascending' => 'صعودی',
			'descending' => 'نزولی',
			'bgUpdateCheckInterval' => 'فاصله بررسی به‌روزرسانی در پس‌زمینه',
			'neverManualOnly' => 'هرگز - فقط دستی',
			'appearance' => 'ظاهر',
			'pinUpdates' => 'به‌روزرسانی‌ها را به نمای بالای برنامه‌ها پین کنید',
			'updates' => 'به روز رسانی ها',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'منبع خاص',
			'appSource' => 'منبع برنامه',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'بدون گزارش',
			'appLogs' => 'گزارش های برنامه',
			'appLogsHint' => 'View application logs',
			'close' => 'بستن',
			'share' => 'اشتراک گذاری',
			'appNotFound' => 'برنامه پیدا نشد',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'صادر کردن-updatium',
			'pickAnAPK' => 'یک APK انتخاب کنید',
			'appHasMoreThanOnePackage' => '{} بیش از یک بسته دارد:',
			'deviceSupportsXArch' => 'دستگاه شما از معماری پردازنده {} پشتیبانی میکند',
			'deviceSupportsFollowingArchs' => 'دستگاه شما از معماری های پردازنده زیر پشتیبانی می کند:',
			'warning' => 'اخطار',
			'sourceIsXButPackageFromYPrompt' => 'منبع برنامه "{}" است اما بسته انتشار از "{}" آمده است. ادامه هید؟',
			'updatesAvailable' => 'بروزرسانی در دسترس ',
			'updatesAvailableNotifDescription' => 'به کاربر اطلاع می دهد که به روز رسانی برای یک یا چند برنامه ردیابی شده توسط Updatium در دسترس است',
			'noNewUpdates' => 'به روز رسانی جدیدی وجود ندارد.',
			'xHasAnUpdate' => '{} یک به روز رسانی دارد.',
			'appsUpdated' => 'برنامه ها به روز شدند',
			'appsNotUpdated' => 'به روز رسانی برنامه ها ناموفق بود',
			'appsUpdatedNotifDescription' => 'به کاربر اطلاع می دهد که به روز رسانی یک یا چند برنامه در پس زمینه اعمال شده است',
			'xWasUpdatedToY' => '{} به {} به روز شد.',
			'xWasNotUpdatedToY' => 'به روز رسانی {} به {} انجام نشد.',
			'errorCheckingUpdates' => 'خطا در بررسی به‌روزرسانی‌ها',
			'errorCheckingUpdatesNotifDescription' => 'اعلانی که وقتی بررسی به‌روزرسانی پس‌زمینه ناموفق است نشان می‌دهد',
			'appsRemoved' => 'برنامه ها حذف شدند',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'به کاربر اطلاع می دهد که یک یا چند برنامه به دلیل خطا در هنگام بارگیری حذف شده است',
			'xWasRemovedDueToErrorY' => '{} به دلیل این خطا حذف شد: {}',
			'completeAppInstallation' => 'نصب کامل برنامه',
			'updatiumMustBeOpenToInstallApps' => 'Updatium باید برای نصب برنامه ها باز باشد',
			'completeAppInstallationNotifDescription' => 'از کاربر می‌خواهد برای پایان نصب برنامه به Updatium برگردد',
			'checkingForUpdates' => 'بررسی به‌روزرسانی‌ها',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'اعلان گذرا که هنگام بررسی به روز رسانی ظاهر می شود',
			'pleaseAllowInstallPerm' => 'لطفاً به Updatium اجازه دهید برنامه‌ها را نصب کند',
			'trackOnly' => 'فقط ردیابی',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'خطا {}',
			'versionCorrectionDisabled' => 'تصحیح نسخه غیرفعال شد (به نظر می رسد افزونه کار نمی کند)',
			'unknown' => 'ناشناخته',
			'none' => 'هیچ',
			'all' => 'همه چیز',
			'never' => 'هرگز',
			'latestVersion' => 'آخرین نسخه',
			'installedVersionX' => 'نسخه نصب شده: {}',
			'lastUpdateCheckX' => 'بررسی آخرین به‌روزرسانی: {}',
			'remove' => 'حذف',
			'quickLinks' => 'پیوندهای سریع',
			'yesMarkUpdated' => 'بله، علامت گذاری به عنوان به روز شده',
			'fdroid' => 'F-Droid Official',
			'appIdOrName' => 'شناسه یا نام برنامه',
			'appId' => 'شناسه برنامه',
			'appWithIdOrNameNotFound' => 'هیچ برنامه ای با آن شناسه یا نام یافت نشد',
			'reposHaveMultipleApps' => 'مخازن ممکن است شامل چندین برنامه باشد',
			'fdroidThirdPartyRepo' => 'مخازن شخص ثالث F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'نصب',
			'markInstalled' => 'علامت گذاری به عنوان نصب شده',
			'update' => 'به روز رسانی',
			'updated' => 'به‌روز شده',
			'markUpdated' => 'علامت گذاری به روز شد',
			'download' => 'Download',
			'additionalOptions' => 'گزینه های اضافی',
			'disableVersionDetection' => 'غیرفعال کردن تشخیص نسخه',
			'noVersionDetectionExplanation' => 'این گزینه فقط باید برای برنامه هایی استفاده شود که تشخیص نسخه به درستی کار نمی کند.',
			'downloadingX' => 'در حال دانلود {}',
			'downloadX' => 'دانلود {}',
			'downloadedX' => 'دانلود شده {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'انتشار دارایی',
			'downloadNotifDescription' => 'کاربر را از پیشرفت دانلود یک برنامه مطلع می کند',
			'noAPKFound' => 'APK پیدا نشد فایل',
			'noVersionDetection' => 'بدون تشخیص نسخه',
			'categorize' => 'دسته بندی کردن',
			'categories' => 'دسته بندی ها',
			'category' => 'دسته بندی',
			'noCategory' => 'بدون دسته بندی',
			'noCategories' => 'بدون دسته بندی ها',
			'categoryDeleteQuestion' => 'دسته بندی ها حذف شوند؟',
			'categoryDeleteWarning' => 'همه برنامه‌ها در دسته‌های حذف شده روی دسته‌بندی نشده تنظیم می‌شوند.',
			'addCategory' => 'اضافه کردن دسته',
			'label' => 'برچسب',
			'language' => 'زبان',
			'copiedToClipboard' => 'در کلیپ بورد کپی شد',
			'storagePermissionDenied' => 'مجوز ذخیره سازی رد شد',
			'selectedCategorizeWarning' => 'این جایگزین تنظیمات دسته بندی موجود برای برنامه های انتخابی می شود.',
			'filterAPKsByRegEx' => 'فایل‌های APK را با نظم فیلتر کنید',
			'removeFromUpdatium' => 'از Updatium حذف کنید',
			'uninstallFromDevice' => 'حذف نصب از دستگاه',
			'onlyWorksWithNonVersionDetectApps' => 'فقط برای برنامه‌هایی کار می‌کند که تشخیص نسخه غیرفعال است.',
			'releaseDateAsVersion' => 'از تاریخ انتشار به عنوان نسخه استفاده کنید',
			'releaseTitleAsVersion' => 'از عنوان انتشار به عنوان رشته نسخه استفاده کنید',
			'releaseDateAsVersionExplanation' => 'این گزینه فقط باید برای برنامه هایی استفاده شود که تشخیص نسخه به درستی کار نمی کند، اما تاریخ انتشار در دسترس است.',
			'changes' => 'تغییرات',
			'releaseDate' => 'تاریخ انتشار',
			'importFromURLsInFile' => 'وارد کردن از آدرس های اینترنتی موجود در فایل (مانند OPML)',
			'versionDetectionExplanation' => 'تطبیق رشته نسخه با نسخه شناسایی شده از سیستم عامل',
			'versionDetection' => 'تشخیص نسخه',
			'standardVersionDetection' => 'تشخیص نسخه استاندارد',
			'groupByCategory' => 'دسته‌بندی بر اساس گروه',
			'listView' => 'نمای لیست',
			'gridView' => 'نمای شبکه',
			'autoApkFilterByArch' => 'تلاش برای فیلتر کردن APK ها بر اساس معماری CPU در صورت امکان',
			'autoLinkFilterByArch' => 'تلاش برای فیلتر کردن لینک ها توسط معماری CPU در صورت امکان',
			'overrideSource' => 'نادیده گرفتن منبع',
			'dontShowAgain' => 'دوباره این را نشان نده',
			'dontShowTrackOnlyWarnings' => 'هشدار \'فقط ردیابی\' را نشان ندهید',
			'dontShowAPKOriginWarnings' => 'هشدارهای منبع APK را نشان ندهید',
			'moveNonInstalledAppsToBottom' => 'برنامه های نصب نشده را به نمای پایین برنامه ها منتقل کنید',
			'gitlabPATLabel' => 'رمز دسترسی شخصی GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'درباره',
			'requiresCredentialsInSettings' => '{}: این به اعتبارنامه های اضافی نیاز دارد (در تنظیمات)',
			'checkOnStart' => 'بررسی در شروع',
			'safeMode' => 'حالت امن',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'افزودن برنامه در حالت امن غیرفعال است',
			'tryInferAppIdFromCode' => 'شناسه برنامه را از کد منبع استنباط کنید',
			'removeOnExternalUninstall' => 'حذف خودکار برنامه های حذف نصب شده خارجی',
			'pickHighestVersionCode' => 'انتخاب خودکار بالاترین کد نسخه APK',
			'checkUpdateOnDetailPage' => 'برای باز کردن صفحه جزئیات برنامه، به‌روزرسانی‌ها را بررسی کنید',
			'disablePageTransitions' => 'غیرفعال کردن انیمیشن های انتقال صفحه',
			'reversePageTransitions' => 'انیمیشن های انتقال معکوس صفحه',
			'minStarCount' => 'حداقل تعداد ستاره',
			'addInfoBelow' => 'این اطلاعات را در زیر اضافه کنید',
			'addInfoInSettings' => 'این اطلاعات را در تنظیمات اضافه کنید.',
			'githubSourceNote' => 'با استفاده از کلید API می توان از محدودیت نرخ GitHub جلوگیری کرد.',
			'sortByLastLinkSegment' => 'فقط بر اساس آخرین بخش پیوند مرتب کنید',
			'filterReleaseNotesByRegEx' => 'یادداشت های انتشار را با بیان منظم فیلتر کنید',
			'customLinkFilterRegex' => 'فیلتر پیوند سفارشی بر اساس عبارت منظم (پیش‌فرض \'.apk$\')',
			'appsPossiblyUpdated' => 'به‌روزرسانی برنامه انجام شد',
			'appsPossiblyUpdatedNotifDescription' => 'به کاربر اطلاع می‌دهد که به‌روزرسانی‌های یک یا چند برنامه به طور بالقوه در پس‌زمینه اعمال شده است',
			'xWasPossiblyUpdatedToY' => 'ممکن است {} به {} به روز شده باشد.',
			'enableBackgroundUpdates' => 'به روز رسانی پس زمینه را فعال کنید',
			'backgroundUpdateReqsExplanation' => 'به روز رسانی پس زمینه ممکن است برای همه برنامه ها امکان پذیر نباشد.',
			'backgroundUpdateLimitsExplanation' => 'موفقیت نصب پس‌زمینه تنها زمانی مشخص می‌شود که Updatium باز شود.',
			'verifyLatestTag' => 'برچسب "آخرین" را تأیید کنید',
			'intermediateLinkRegex' => 'برای بازدید از پیوند «میانگین» فیلتر کنید',
			'filterByLinkText' => 'لینک ها را بر اساس متن پیوند فیلتر کنید',
			'matchLinksOutsideATags' => 'لینک های خارج از تگ های <a>',
			'intermediateLinkNotFound' => 'لینک میانی پیدا نشد',
			'intermediateLink' => 'پیوند میانی',
			'exemptFromBackgroundUpdates' => 'معاف از به‌روزرسانی‌های پس‌زمینه (در صورت فعال بودن)',
			'bgUpdatesOnWiFiOnly' => 'به‌روزرسانی‌های پس‌زمینه را در صورت عدم اتصال به Wi-Fi غیرفعال کنید',
			'bgUpdatesWhileChargingOnly' => 'به‌روزرسانی‌های پس‌زمینه را هنگام شارژ نشدن غیرفعال کنید',
			'autoSelectHighestVersionCode' => 'انتخاب خودکار بالاترین نسخه کد APK',
			'versionExtractionRegEx' => 'نسخه استخراج RegEx',
			'trimVersionString' => 'برش رشته نسخه با RegEx',
			'matchGroupToUseForX' => 'مطابقت دادن گروه برای استفاده برای "{}"',
			'matchGroupToUse' => 'گروه مورد استفاده را مطابقت دهید',
			'highlightTouchTargets' => 'اهداف لمسی کمتر واضح را برجسته کنید',
			'pickExportDir' => 'فهرست صادر کردن را انتخاب کنید',
			'autoExportOnChanges' => 'صادر کردن خودکار تغییرات',
			'includeSettings' => 'شامل تنظیمات',
			'filterVersionsByRegEx' => 'فیلتر کردن نسخه ها با RegEx',
			'trySelectingSuggestedVersionCode' => 'نسخه پیشنهادی APK نسخه کد را انتخاب کنید',
			'dontSortReleasesList' => 'حفظ سفارش انتشار از API',
			'reverseSort' => 'مرتب سازی معکوس',
			'takeFirstLink' => 'لینک اول را بگیرید',
			'skipSort' => 'از مرتب سازی صرف نظر کنید',
			'debugMenu' => 'منوی اشکال زدایی',
			'bgTaskStarted' => 'کار پس زمینه شروع شد - لاگ های مربوط را بررسی کنید.',
			'runBgCheckNow' => 'اکنون به‌روزرسانی پس‌زمینه را بررسی کنید',
			'versionExtractWholePage' => 'نسخه Extraction Regex را در کل صفحه اعمال کنید',
			'installing' => 'در حال نصب',
			'skipUpdateNotifications' => 'رد شدن از اعلان های به روز رسانی',
			'updatesAvailableNotifChannel' => 'بروزرسانی در دسترس ',
			'appsUpdatedNotifChannel' => 'برنامه ها به روز شدند',
			'appsPossiblyUpdatedNotifChannel' => 'به‌روزرسانی برنامه انجام شد',
			'errorCheckingUpdatesNotifChannel' => 'خطا در بررسی به‌روزرسانی‌ها',
			'appsRemovedNotifChannel' => 'برنامه ها حذف شدند',
			'downloadingXNotifChannel' => 'در حال دانلود {}',
			'completeAppInstallationNotifChannel' => 'نصب کامل برنامه',
			'checkingForUpdatesNotifChannel' => 'بررسی به‌روزرسانی‌ها',
			'onlyCheckInstalledOrTrackOnlyApps' => 'فقط برنامه های نصب شده و فقط ردیابی را برای به روز رسانی بررسی کنید',
			'supportFixedAPKURL' => 'پشتیبانی از URL های APK ثابت',
			'selectX' => 'انتخاب کنید {}',
			'parallelDownloads' => 'اجازه دانلود موازی',
			'useShizuku' => 'برای نصب از Shizuku یا Sui استفاده کنید',
			'shizukuBinderNotFound' => 'Shizuku در حال اجرا نیست',
			'shizukuOld' => 'نسخه قدیمی Shizuku (<11) - آن را به روز کنید',
			'shizukuOldAndroidWithADB' => 'Shizuku در Android < 8.1 با ADB اجرا می شود - اندروید را به روز کنید یا به جای آن از Sui استفاده کنید',
			'shizukuPretendToBeGooglePlay' => 'Google Play را به عنوان منبع نصب تنظیم کنید (در صورت استفاده از Shizuku)',
			'useSystemFont' => 'استفاده از فونت سیستم',
			'useVersionCodeAsOSVersion' => 'استفاده کد نسخه برنامه به جای نسخه شناسایی شده توسط سیستم عامل استفاده کنید',
			'requestHeader' => 'درخواست سطر بالایی',
			'useLatestAssetDateAsReleaseDate' => 'استفاده از آخرین بارگذاری دارایی به عنوان تاریخ انتشار',
			'defaultPseudoVersioningMethod' => 'روش پیش فرض شبه نسخه',
			'partialAPKHash' => 'هش جزئی APK',
			'APKLinkHash' => 'هش پیوند APK',
			'directAPKLink' => 'لینک مستقیم APK',
			'pseudoVersionInUse' => 'یک نسخه شبه در حال استفاده است',
			'installedVersion' => 'نصب شده است',
			'installed' => 'نصب شده است',
			'notInstalledApps' => 'نصب نشده',
			'latest' => 'جدیدترین',
			'invertRegEx' => 'معکوس کردن عبارت منظم',
			'note' => 'یادداشت',
			'selfHostedNote' => 'از منوی کرکره ای "{}" می توان برای دسترسی به نمونه های خود میزبانی/سفارشی از هر منبعی استفاده کرد.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK قابل تجزیه نیست (دانلود ناسازگار یا جزئی)',
			'beforeNewInstallsShareToAppVerifier' => 'اشتراک‌گذاری برنامه‌های جدید با AppVerifier (در صورت وجود)',
			'appVerifierInstructionToast' => 'در AppVerifier به اشتراک بگذارید، سپس پس از آماده شدن به اینجا برگردید.',
			'wiki' => 'راهنما/ویکی',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'درخواست های HTTP ناامن را مجاز کنید',
			'stayOneVersionBehind' => 'یک نسخه از آخرین نسخه پشت سر بگذارید',
			'useFirstApkOfVersion' => 'اولین بار از چندین APK',
			'refreshBeforeDownload' => 'قبل از دانلود، جزئیات برنامه را بازخوانی کنید',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'نام',
			'smartname' => 'Name (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sort Method',
			'welcome' => 'خوش آمدید خوش آمدید',
			'batteryOptimizationNote' => 'Note that background downloads may work more reliably if you disable OS battery optimizations for Updatium.',
			'fileDeletionError' => 'شکست برای حذف فایل (سعی کنید آن را به صورت دستی حذف کنید سپس دوباره امتحان کنید): “{}”',
			'foregroundService' => 'خدمات Foreground',
			'foregroundServiceExplanation' => 'استفاده از یک سرویس پیش زمینه برای بررسی به روز رسانی (قابل اعتماد تر، مصرف انرژی بیشتر)',
			'fgServiceNotice' => 'این اعلان برای بررسی به روز رسانی پس زمینه مورد نیاز است (می تواند در تنظیمات OS پنهان شود)',
			'excludeSecrets' => 'رازهای پنهان',
			'GHReqPrefix' => 'مثال “omeritzics/Updatium”',
			'includeZips' => 'فایل های ZIP',
			'zippedApkFilterRegEx' => 'فیلتر APK در داخل Zip',
			'multipleSigners' => 'ثبت نام های متعدد',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'برنامه حذف شود؟', other: 'برنامه ها حذف شوند؟', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'درخواست‌های بسیار زیاد (نرخ محدود) - {count} دقیقه دیگر دوباره امتحان کنید', other: 'درخواست های بسیار زیاد (نرخ محدود) - بعد از {count} دقیقه دوباره امتحان کنید', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'بررسی به‌روزرسانی BG با یک {error} مواجه شد، یک بررسی مجدد را در {count} دقیقه برنامه‌ریزی می‌کند', other: 'بررسی به‌روزرسانی BG با {error} مواجه شد، یک بررسی مجدد را در {count} دقیقه برنامه‌ریزی می‌کند', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'بررسی به‌روزرسانی BG پیدا شد {count} به‌روزرسانی - در صورت نیاز به کاربر اطلاع می‌دهد', other: 'بررسی به‌روزرسانی BG {count} به‌روزرسانی‌های یافت شده - در صورت نیاز به کاربر اطلاع می‌دهد', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'برنامه {count}', other: '{count} برنامه ها', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{count} آدرس اینترنتی', other: '{count} آدرس های اینترنتی', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{count} دقیقه', other: '{count} دقیقه', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{count} ساعت', other: '{count} ساعت', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{count} روز', other: '{count} روز', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'گزارش {n} پاک شد (قبل از = {before}، بعد = {after})', other: '{n} گزارش پاک شد (قبل از = {before}، بعد = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{app} و 1 برنامه دیگر به‌روزرسانی دارند.', other: '{app} و {count} برنامه دیگر به روز رسانی دارند.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{app} و 1 برنامه دیگر به روز شدند.', other: '{app} و {count} برنامه دیگر به روز شدند.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{app} و 1 برنامه دیگر به روز نشد.', other: '{app} و {count} برنامه دیگر به روز نشد.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{app} و 1 برنامه دیگر ممکن است به روز شده باشند.', other: 'ممکن است {app} و {count} برنامه های دیگر به روز شده باشند.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fa'))(n, one: 'گواهی Hash', other: 'گواهی Hashes', ), 
			'securityDisclaimerTitle' => 'سلب مسئولیت امنیتی و حقوقی',
			'license' => 'مجوز',
			'licenseText' => 'این برنامه تحت مجوز GPL v3 توزیع شده است.',
			'disclaimer' => 'سلب مسئولیت',
			'disclaimerText' => 'این برنامه هیچ یک از برنامه‌های خارجی را توزیع، میزبانی یا تأیید نمی‌کند. کاربر مسئولیت کامل امنیت و قانونی بودن هر نرم‌افزاری که از طریق این ابزار نصب می‌شود را بر عهده دارد.\n\nhttps://github.com/omeritzics/Updatium تنها مکان رسمی برای دانلود Updatium است - به شدت توصیه می‌شود آن را از جاهای دیگر دانلود نکنید زیرا دانلود از منابع غیررسمی ناامن است.',
			'privacy' => 'حریم خصوصی',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'پذیرش و ادامه',
			'decline' => 'رد کردن',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'از Updatium لذت می‌برید؟',
			'githubStarPromptContent' => 'Updatium یک پروژه داوطلبانه متن‌باز جامعه‌محور است که در وقت آزاد من توسعه داده شده است. اگر مایل به حمایت از پروژه هستید، لطفاً در نظر داشته باشید که به آن در GitHub ستاره بدهید تا به ما کمک کنید تا به کاربران و مشارکت‌کنندگان بیشتری برسیم. دیگر در این مورد به شما یادآوری نخواهد شد. از قبل متشکریم! :)',
			'githubStarPromptStar' => 'ستاره دادن',
			'githubStarPromptDontShowAgain' => 'دیگر نشان نده',
			'sourceCode' => 'کد منبع',
			'developedBy' => 'توسعه داده شده توسط',
			'appDescription' => 'یک کاتالوگ برنامه اندروید قابل سفارشی‌سازی که به شما اجازه می‌دهد برنامه‌های خود را مستقیماً از منابع APK به‌روزرسانی کنید.',
			'safeModeEnabled' => 'حالت امن فعال شده است',
			'safeModeDisabled' => 'حالت امن غیرفعال شده است',
			'safeModeDisable' => 'غیرفعال کردن حالت امن',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'مدیریت حالت امن',
			'safeModeSetupDescription' => 'رمز عبور را برای فعال کردن حالت امن تنظیم کنید. پس از فعال شدن، حالت امن از اضافه کردن برنامه های جدید جلوگیری می کند و تنها با رمز عبور می توان آن را غیرفعال کرد.',
			'safeModeToggleDescription' => 'رمز عبور خود را وارد کنید تا حالت امن را فعال یا غیرفعال کنید.',
			'safeModeSetPassword' => 'تنظیم رمز عبور',
			'safeModeConfirmPassword' => 'تایید رمز عبور',
			'safeModeEnterPassword' => 'ورود رمز عبور',
			'safeModePasswordHint' => 'حداقل 8 کاراکتر',
			'safeModePasswordTooShort' => 'رمز عبور باید حداقل 8 کاراکتر داشته باشد',
			'safeModePasswordMismatch' => 'رمزهای عبور مطابقت ندارند',
			'safeModePasswordIncorrect' => 'رمز عبور اشتباه است',
			'safeModePasswordError' => 'خطایی در تنظیم رمز عبور رخ داد. لطفاً دوباره تلاش کنید.',
			'safeModeEnable' => 'فعال کردن حالت امن',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} ضربه دیگر تا غیرفعال شدن حالت امن',
			'safeModeEnabledHint' => 'حالت امن فعال شد. برای غیرفعال کردن، چند بار روی شماره نسخه در تنظیمات ضربه بزنید.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'متوجه شدم',
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
