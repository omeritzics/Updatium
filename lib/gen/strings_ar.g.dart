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
class TranslationsAr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsAr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ar,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ar>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsAr _root = this; // ignore: unused_field

	@override 
	TranslationsAr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsAr(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'رابط تطبيق {} غير صالح';
	@override String get noReleaseFound => 'تعذر العثور على إصدار مناسب';
	@override String get noVersionFound => 'تعذر تحديد إصدار التطبيق';
	@override String get urlMatchesNoSource => 'الرابط لا يتطابق مع مصدر معروف';
	@override String get cantInstallOlderVersion => 'لا يمكن تثبيت إصدار أقدم من التطبيق';
	@override String get appIdMismatch => 'معرّف الحزمة المحملة لا يتطابق مع معرّف التطبيق الحالي';
	@override String get functionNotImplemented => 'هذه الوظيفة غير مطبقة في هذا الصنف';
	@override String get placeholder => 'عنصر نائب';
	@override String get someErrors => 'حدثت بعض الأخطاء';
	@override String get unexpectedError => 'خطأ غير متوقع';
	@override String get ok => 'موافق';
	@override String get and => 'و';
	@override String get githubPATLabel => 'رمز الوصول الشخصي لـ GitHub';
	@override String get includePrereleases => 'تضمين الإصدارات الأولية';
	@override String get fallbackToOlderReleases => 'الرجوع إلى الإصدارات الأقدم';
	@override String get filterReleaseTitlesByRegEx => 'تصفية عناوين الإصدارات باستخدام تعبير نمطي';
	@override String get invalidRegEx => 'تعبير نمطي غير صالح';
	@override String get noDescription => 'لا يوجد وصف';
	@override String get cancel => 'ألغِ';
	@override String get kContinue => 'استمر';
	@override String get requiredInBrackets => '(مطلوب)';
	@override String get dropdownNoOptsError => 'خطأ: يجب أن يحتوي القائمة المنسدلة على خيار واحد على الأقل';
	@override String get color => 'لون';
	@override String get standard => 'قياسي';
	@override String get custom => 'مخصّص';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'استخدم ألوان Material You';
	@override String get githubStarredRepos => 'مستودعات GitHub المفضلة';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'اسم المستخدم';
	@override String get wrongArgNum => 'عدد وسائط غير صحيح';
	@override String get xIsTrackOnly => '{} للتعقب فقط';
	@override String get source => 'المصدر';
	@override String get app => 'التطبيق';
	@override String get appsFromSourceAreTrackOnly => 'تطبيقات هذا المصدر للتعقب فقط.';
	@override String get youPickedTrackOnly => 'لقد اخترت خيار \'التعقب فقط\'.';
	@override String get trackOnlyAppDescription => 'سيتم تعقب التطبيق للتحديثات، لكن Updatium لن يتمكن من تنزيله أو تثبيته.';
	@override String get cancelled => 'أُلغيَ';
	@override String get appAlreadyAdded => 'التطبيق مُضاف بالفعل';
	@override String get alreadyUpToDateQuestion => 'التطبيق محدَّث بالفعل؟';
	@override String get addApp => 'أضف تطبيق';
	@override String get appSourceURL => 'رابط مصدر التطبيق';
	@override String get error => 'خطأ';
	@override String get add => 'أضف';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'بحث (بعض المصادر فقط)';
	@override String get search => 'بحث';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'خيارات إضافية لـ {}';
	@override String get supportedSources => 'المصادر المدعومة';
	@override String get trackOnlyInBrackets => '(للتعقب فقط)';
	@override String get searchableInBrackets => '(قابل للبحث)';
	@override String get appsString => 'التطبيقات';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'مرحباً!';
	@override String get noAppsSubtext => 'يمكنك إضافة أول تطبيق بالنقر على \'إضافة تطبيق\' أدناه.';
	@override String get noAppsForFilter => 'لا توجد تطبيقات تطابق التصفية';
	@override String get byX => 'بواسطة {}';
	@override String get percentProgress => 'التقدم: {}%';
	@override String get pleaseWait => 'يُرجى الانتظار';
	@override String get updateAvailable => 'يتوفر تحديث';
	@override String get notInstalled => 'غير مثبت';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'إصدار وهمي';
	@override String get selectAll => 'تحديد الكل';
	@override String get deselectX => 'إلغاء تحديد {}';
	@override String get xWillBeRemovedButRemainInstalled => 'سيتم إزالة {} من Updatium لكنه سيظل مثبتًا على الجهاز.';
	@override String get removeSelectedAppsQuestion => 'إزالة التطبيقات المحددة؟';
	@override String get removeSelectedApps => 'أزل التطبيقات المحددة';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'Removed one app',
		two: 'Removed {count} apps',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'حدِّث {}';
	@override String get installX => 'ثبِّت {}';
	@override String get markXTrackOnlyAsUpdated => 'علِّم {}\n(للتعقب فقط)\nكمحدث';
	@override String get changeX => 'غيِّر {}';
	@override String get installUpdateApps => 'ثبِّت/حدِّث التطبيقات';
	@override String get installUpdateSelectedApps => 'ثبِّت/حدِّث التطبيقات المحددة';
	@override String get markXSelectedAppsAsUpdated => 'تعليم {} تطبيقات محددة كمحدثة؟';
	@override String get no => 'لا';
	@override String get yes => 'نعم';
	@override String get markSelectedAppsUpdated => 'تعليم التطبيقات المحددة كمحدثة';
	@override String get pinToTop => 'تثبيت في الأعلى';
	@override String get unpinFromTop => 'إلغاء التثبيت من الأعلى';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'إعادة تعيين حالة التثبيت للتطبيقات المحددة؟';
	@override String get installStatusOfXWillBeResetExplanation => 'سيتم إعادة تعيين حالة التثبيت لأي تطبيقات محددة.\n\nقد يساعد هذا عندما يكون إصدار التطبيق المعروض في Updatium غير صحيح بسبب فشل التحديثات أو مشاكل أخرى.';
	@override String get customLinkMessage => 'هذه الروابط تعمل على الأجهزة التي بها Updatium مثبتًا';
	@override String get shareAppConfigLinks => 'مشاركة تكوين التطبيق كرابط HTML';
	@override String get resetInstallStatus => 'إعادة تعيين حالة التثبيت';
	@override String get more => 'المزيد';
	@override String get removeOutdatedFilter => 'أزل تصفية التطبيقات غير المحدثة';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'اعرض التطبيقات غير المحدثة فقط';
	@override String get filter => 'تصفية';
	@override String get filterApps => 'تصفية التطبيقات';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'اسم التطبيق';
	@override String get appAuthor => 'المؤلف';
	@override String get upToDateApps => 'تطبيقات محدثة';
	@override String get nonInstalledApps => 'تطبيقات غير مثبتة';
	@override String get importExport => 'استيراد/تصدير';
	@override String get settings => 'الإعدادات';
	@override String get exportedTo => 'تم التصدير إلى {}';
	@override String get updatiumExport => 'تصدير Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'إدخال غير صالح';
	@override String get importedX => 'تم استيراد {}';
	@override String get updatiumImport => 'استيراد Updatium';
	@override String get importFromURLList => 'استيراد من قائمة الروابط';
	@override String get searchQuery => 'استعلام البحث';
	@override String get appURLList => 'قائمة روابط التطبيقات';
	@override String get line => 'سطر';
	@override String get searchX => 'بحث {}';
	@override String get noResults => 'لا توجد نتائج';
	@override String get importX => 'استيراد {}';
	@override String get importedAppsIdDisclaimer => 'قد تظهر التطبيقات المستوردة بشكل غير صحيح كـ "غير مثبتة".\nلإصلاح هذا، قم بإعادة تثبيتها عبر Updatium.\nهذا لا يؤثر على بيانات التطبيق.\n\nينطبق فقط على طرق الاستيراد عبر الروابط أو الطرف الثالث.';
	@override String get importErrors => 'أخطاء الاستيراد';
	@override String get importedXOfYApps => 'استوردت {} من {} تطبيقات.';
	@override String get followingURLsHadErrors => 'حدثت أخطاء في الروابط التالية:';
	@override String get selectURL => 'حدّد رابطًا';
	@override String get selectURLs => 'حدّد روابط';
	@override String get pick => 'اختر';
	@override String get theme => 'المظهر';
	@override String get dark => 'داكن';
	@override String get light => 'فاتح';
	@override String get followSystem => 'اتبع النظام';
	@override String get followSystemThemeExplanation => 'اتبع مظهر النظام ممكن فقط باستخدام تطبيقات طرف ثالث';
	@override String get useBlackTheme => 'استخدم المظهر الأسود الداكن بالكامل';
	@override String get appSortBy => 'رتّب التطبيقات حسب';
	@override String get authorName => 'المؤلف/الاسم';
	@override String get nameAuthor => 'الاسم/المؤلف';
	@override String get asAdded => 'كما أُضيفت';
	@override String get appSortOrder => 'ترتيب التطبيقات';
	@override String get ascending => 'تصاعدي';
	@override String get descending => 'تنازلي';
	@override String get bgUpdateCheckInterval => 'فترة التحقق من التحديثات في الخلفية';
	@override String get neverManualOnly => 'أبدًا - يدوي فقط';
	@override String get appearance => 'المظهر';
	@override String get pinUpdates => 'تدبيس التحديثات في أعلى قائمة التطبيقات';
	@override String get updates => 'التحديثات';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get OpenDNS => 'OpenDNS';
	@override String get sourceSpecific => 'خاص بالمصدر';
	@override String get appSource => 'مصدر التطبيق';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'لا توجد سجلات';
	@override String get appLogs => 'سجلات التطبيق';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'أغلق';
	@override String get share => 'شارك';
	@override String get appNotFound => 'التطبيق غير موجود';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'تصدير-updatium';
	@override String get pickAnAPK => 'اختر ملف APK';
	@override String get appHasMoreThanOnePackage => '{} يحتوي على أكثر من حزمة:';
	@override String get deviceSupportsXArch => 'جهازك يدعم بنية المعالج {}.';
	@override String get deviceSupportsFollowingArchs => 'جهازك يدعم بنى المعالج التالية:';
	@override String get warning => 'تحذير';
	@override String get sourceIsXButPackageFromYPrompt => 'مصدر التطبيق هو \'{}\' لكن الحزمة تأتي من \'{}\'. استمر؟';
	@override String get updatesAvailable => 'تحديثات متاحة';
	@override String get updatesAvailableNotifDescription => 'يخطر المستخدم بوجود تحديثات لواحد أو أكثر من التطبيقات التي يتعقبها Updatium';
	@override String get noNewUpdates => 'لا توجد تحديثات جديدة.';
	@override String get xHasAnUpdate => '{} لديه تحديث.';
	@override String get appsUpdated => 'حُدثت التطبيقات';
	@override String get appsNotUpdated => 'فشل تحديث التطبيقات';
	@override String get appsUpdatedNotifDescription => 'يخطر المستخدم بأن تحديثات لواحد أو أكثر من التطبيقات طبقت في الخلفية';
	@override String get xWasUpdatedToY => 'حُدث {} إلى {}.';
	@override String get xWasNotUpdatedToY => 'فشل تحديث {} إلى {}.';
	@override String get errorCheckingUpdates => 'خطأ في التحقق من التحديثات';
	@override String get errorCheckingUpdatesNotifDescription => 'إشعار يظهر عند فشل التحقق من التحديثات في الخلفية';
	@override String get appsRemoved => 'تمت إزالة التطبيقات';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'يخطر المستخدم بأنه تمت إزالة واحد أو أكثر من التطبيقات بسبب أخطاء أثناء تحميلها';
	@override String get xWasRemovedDueToErrorY => 'تمت إزالة {} بسبب هذا الخطأ: {}';
	@override String get completeAppInstallation => 'إكمال تثبيت التطبيق';
	@override String get updatiumMustBeOpenToInstallApps => 'يجب فتح Updatium لتثبيت التطبيقات';
	@override String get completeAppInstallationNotifDescription => 'يطلب من المستخدم العودة إلى Updatium لإكمال تثبيت التطبيق';
	@override String get checkingForUpdates => 'جاري التحقق من التحديثات';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'إشعار مؤقت يظهر عند التحقق من التحديثات';
	@override String get pleaseAllowInstallPerm => 'يرجى السماح لـ Updatium بتثبيت التطبيقات';
	@override String get trackOnly => 'للتعقب فقط';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'خطأ {}';
	@override String get versionCorrectionDisabled => 'تعطيل تصحيح الإصدار (يبدو أن الملحق لا يعمل)';
	@override String get unknown => 'غير معروف';
	@override String get none => 'لا شيء';
	@override String get all => 'الكل';
	@override String get never => 'أبدًا';
	@override String get latestVersion => 'الأحدث';
	@override String get installedVersionX => 'المثبت: {}';
	@override String get lastUpdateCheckX => 'آخر تحقق من التحديثات: {}';
	@override String get remove => 'أزل';
	@override String get quickLinks => 'روابط سريعة';
	@override String get yesMarkUpdated => 'نعم، علِّم كمحدث';
	@override String get fdroid => 'F-Droid الرسمي';
	@override String get appIdOrName => 'معرّف التطبيق أو الاسم';
	@override String get appId => 'معرّف التطبيق';
	@override String get appWithIdOrNameNotFound => 'لم يُعثر على تطبيق بهذا المعرّف أو الاسم';
	@override String get reposHaveMultipleApps => 'قد تحتوي المستودعات على عدة تطبيقات';
	@override String get fdroidThirdPartyRepo => 'مستودع F-Droid طرف ثالث';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'ثبِّت';
	@override String get markInstalled => 'علِّم كمثبت';
	@override String get update => 'حدِّث';
	@override String get updated => 'مُحدَّث';
	@override String get markUpdated => 'علِّم كمحدث';
	@override String get download => 'Download';
	@override String get additionalOptions => 'خيارات إضافية';
	@override String get disableVersionDetection => 'عطّل اكتشاف الإصدار';
	@override String get noVersionDetectionExplanation => 'يجب استخدام هذا الخيار فقط للتطبيقات التي لا يعمل فيها اكتشاف الإصدار بشكل صحيح.';
	@override String get downloadingX => 'جارِ تنزيل {}';
	@override String get downloadX => 'تنزيل {}';
	@override String get downloadedX => 'نُزَّل {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'ملف الإصدار';
	@override String get downloadNotifDescription => 'يخطر المستخدم بالتقدم في تنزيل التطبيق';
	@override String get noAPKFound => 'لم يُعثر على ملف APK';
	@override String get noVersionDetection => 'لا يوجد اكتشاف للإصدار';
	@override String get categorize => 'تصنيف';
	@override String get categories => 'التصنيفات';
	@override String get category => 'تصنيف';
	@override String get noCategory => 'بدون تصنيف';
	@override String get noCategories => 'لا توجد تصنيفات';
	@override String get categoryDeleteQuestion => 'حذف التصنيفات؟';
	@override String get categoryDeleteWarning => 'سيتم تعيين جميع التطبيقات في التصنيفات المحذوفة كغير مصنفة.';
	@override String get addCategory => 'أضف تصنيف';
	@override String get label => 'تسمية';
	@override String get language => 'اللغة';
	@override String get copiedToClipboard => 'نُسخ إلى الحافظة';
	@override String get storagePermissionDenied => 'رُفض إذن التخزين';
	@override String get selectedCategorizeWarning => 'سيؤدي هذا إلى استبدال أي إعدادات تصنيف موجودة للتطبيقات المحددة.';
	@override String get filterAPKsByRegEx => 'تصفية ملفات APK باستخدام تعبير نمطي';
	@override String get removeFromUpdatium => 'إزالة من Updatium';
	@override String get uninstallFromDevice => 'إلغاء التثبيت من الجهاز';
	@override String get onlyWorksWithNonVersionDetectApps => 'يعمل فقط مع التطبيقات التي تم تعطيل اكتشاف الإصدار لها.';
	@override String get releaseDateAsVersion => 'استخدام تاريخ الإصدار كسلسلة إصدار';
	@override String get releaseTitleAsVersion => 'استخدام عنوان الإصدار كسلسلة إصدار';
	@override String get releaseDateAsVersionExplanation => 'يجب استخدام هذا الخيار فقط للتطبيقات التي لا يعمل فيها اكتشاف الإصدار بشكل صحيح، ولكن تاريخ الإصدار متاح.';
	@override String get changes => 'التغييرات';
	@override String get releaseDate => 'تاريخ الإصدار';
	@override String get importFromURLsInFile => 'استورد من روابط في ملف (مثل OPML)';
	@override String get versionDetectionExplanation => 'تنسيق سلسلة الإصدار مع الإصدار المكتشف من النظام';
	@override String get versionDetection => 'اكتشاف الإصدار';
	@override String get standardVersionDetection => 'اكتشاف الإصدار القياسي';
	@override String get groupByCategory => 'التجميع حسب التصنيف';
	@override String get listView => 'عرض القائمة';
	@override String get gridView => 'عرض الشبكة';
	@override String get autoApkFilterByArch => 'محاولة تصفية ملفات APK حسب بنية المعالج إذا أمكن';
	@override String get autoLinkFilterByArch => 'محاولة تصفية الروابط حسب بنية المعالج إذا أمكن';
	@override String get overrideSource => 'تجاوز المصدر';
	@override String get dontShowAgain => 'عدم إظهار هذا مرة أخرى';
	@override String get dontShowTrackOnlyWarnings => 'عدم إظهار تحذيرات \'للتعقب فقط\'';
	@override String get dontShowAPKOriginWarnings => 'عدم إظهار تحذيرات مصدر APK';
	@override String get moveNonInstalledAppsToBottom => 'نقل التطبيقات غير المثبتة إلى أسفل قائمة التطبيقات';
	@override String get gitlabPATLabel => 'رمز الوصول الشخصي لـ GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'حول';
	@override String get requiresCredentialsInSettings => '{} يحتاج إلى بيانات اعتماد إضافية (في الإعدادات)';
	@override String get checkOnStart => 'التحقق من التحديثات عند البدء';
	@override String get safeMode => 'الوضع الآمن';
	@override String get safeModeDescription => 'منع التغييرات غير المرغوبة في قائمة التطبيقات عن طريق إخفاء صفحة "أضف تطبيق". لتعطيله، يجب عليك الذهاب إلى صفحة الإعدادات وفتح مربع حوار "حول"، ثم النقر على رقم الإصدار 500+ مرة';
	@override String get safeModeAddAppDisabled => 'إضافة التطبيق معطلة في الوضع الآمن';
	@override String get tryInferAppIdFromCode => 'محاولة استنتاج معرّف التطبيق من الكود المصدري';
	@override String get removeOnExternalUninstall => 'إزالة التطبيقات المثبتة خارجيًا تلقائيًا';
	@override String get pickHighestVersionCode => 'تحديد أعلى إصدار تلقائيًا';
	@override String get checkUpdateOnDetailPage => 'التحقق من التحديثات عند فتح صفحة التفاصيل';
	@override String get disablePageTransitions => 'عطّل انتقالات الصفحات';
	@override String get reversePageTransitions => 'اعكس انتقالات الصفحات';
	@override String get minStarCount => 'الحد الأدنى لعدد النجوم';
	@override String get addInfoBelow => 'أضف هذه المعلومات أدناه.';
	@override String get addInfoInSettings => 'أضف هذه المعلومات في الإعدادات.';
	@override String get githubSourceNote => 'يمكن تجنب الحد المسموح لـ GitHub باستخدام مفتاح API.';
	@override String get sortByLastLinkSegment => 'رتّب حسب الجزء الأخير من الرابط فقط';
	@override String get filterReleaseNotesByRegEx => 'تصفية ملاحظات الإصدار باستخدام تعبير نمطي';
	@override String get customLinkFilterRegex => 'تصفية روابط APK المخصصة باستخدام تعبير نمطي (افتراضيًا \'.apk$\')';
	@override String get appsPossiblyUpdated => 'تمت محاولة تحديث التطبيقات';
	@override String get appsPossiblyUpdatedNotifDescription => 'يخطر المستخدم بأن تحديثات لواحد أو أكثر من التطبيقات قد تم تطبيقها في الخلفية';
	@override String get xWasPossiblyUpdatedToY => '{} قد تم تحديثه إلى {}.';
	@override String get enableBackgroundUpdates => 'تمكين التحديثات في الخلفية';
	@override String get backgroundUpdateReqsExplanation => 'قد لا تكون التحديثات في الخلفية ممكنة لجميع التطبيقات.';
	@override String get backgroundUpdateLimitsExplanation => 'يمكن تحديد نجاح التثبيت في الخلفية فقط عند فتح Updatium.';
	@override String get verifyLatestTag => 'التحقق من علامة \'الأحدث\'';
	@override String get intermediateLinkRegex => 'تصفية للوصول إلى رابط \'وسيط\'';
	@override String get filterByLinkText => 'تصفية الروابط حسب نص الرابط';
	@override String get matchLinksOutsideATags => 'تطابق الروابط خارج علامات <a>';
	@override String get intermediateLinkNotFound => 'لم يُعثر على رابط وسيط';
	@override String get intermediateLink => 'رابط وسيط';
	@override String get exemptFromBackgroundUpdates => 'إعفاء من التحديثات في الخلفية (إذا فُعّل)';
	@override String get bgUpdatesOnWiFiOnly => 'عطّل التحديثات في الخلفية عند عدم الاتصال بشبكة Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'عطّل التحديثات في الخلفية عند عدم الشحن';
	@override String get autoSelectHighestVersionCode => 'تحديد أعلى إصدار تلقائيًا';
	@override String get versionExtractionRegEx => 'تعبير نمطي لاستخراج الإصدار';
	@override String get trimVersionString => 'قص سلسلة الإصدار باستخدام تعبير نمطي';
	@override String get matchGroupToUseForX => 'مجموعة المطابقة لاستخدامها لـ "{}"';
	@override String get matchGroupToUse => 'مجموعة المطابقة لاستخدامها في تعبير استخراج الإصدار';
	@override String get highlightTouchTargets => 'تمييز أهداف اللمس الأقل وضوحًا';
	@override String get pickExportDir => 'اختر دليل التصدير';
	@override String get autoExportOnChanges => 'صدِّر تلقائي عند التغييرات';
	@override String get includeSettings => 'ضمّن الإعدادات';
	@override String get filterVersionsByRegEx => 'تصفية الإصدارات باستخدام تعبير نمطي';
	@override String get trySelectingSuggestedVersionCode => 'محاولة تحديد الإصدار المقترح تلقائيًا';
	@override String get dontSortReleasesList => 'حافظ على ترتيب الإصدارات من API';
	@override String get reverseSort => 'رتّب عكسيًا';
	@override String get takeFirstLink => 'أخذ أول رابط';
	@override String get skipSort => 'تخطي الترتيب';
	@override String get debugMenu => 'قائمة التصحيح';
	@override String get bgTaskStarted => 'بدأت المهمة في الخلفية - تحقق من السجلات.';
	@override String get runBgCheckNow => 'تشغيل التحقق من التحديثات في الخلفية الآن';
	@override String get versionExtractWholePage => 'طبّق تعبير استخراج الإصدار على الصفحة بأكملها';
	@override String get installing => 'جارِ التثبيت';
	@override String get skipUpdateNotifications => 'تخطي إخطارات التحديث';
	@override String get updatesAvailableNotifChannel => 'تتوفّر تحديثات';
	@override String get appsUpdatedNotifChannel => 'حُدثت التطبيقات';
	@override String get appsPossiblyUpdatedNotifChannel => 'حاولّ تحديث التطبيقات';
	@override String get errorCheckingUpdatesNotifChannel => 'خطأ في التحقق من التحديثات';
	@override String get appsRemovedNotifChannel => 'أُزيلت التطبيقات';
	@override String get downloadingXNotifChannel => 'جارِ تنزيل {}';
	@override String get completeAppInstallationNotifChannel => 'اكمل تثبيت التطبيق';
	@override String get checkingForUpdatesNotifChannel => 'جارِ التحقق من التحديثات';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'التحقق فقط من التطبيقات المثبتة أو للتعقب فقط';
	@override String get supportFixedAPKURL => 'دعم روابط APK الثابتة';
	@override String get selectX => 'اختر {}';
	@override String get parallelDownloads => 'السماح بالتنزيل المتوازي';
	@override String get useShizuku => 'استخدم Shizuku أو Sui للتثبيت';
	@override String get shizukuBinderNotFound => 'خدمة Shizuku غير قيد التشغيل';
	@override String get shizukuOld => 'إصدار قديم من Shizuku (<11) - حدّثه';
	@override String get shizukuOldAndroidWithADB => 'Shizuku يعمل على إصدار أندرويد < 8.1 مع ADB - حدّث أندرويد أو استخدم Sui بدلاً من ذلك';
	@override String get shizukuPretendToBeGooglePlay => 'عيّن Google Play كمصدر التثبيت (إذا تم استخدام Shizuku)';
	@override String get useSystemFont => 'استخدم خط النظام';
	@override String get useVersionCodeAsOSVersion => 'استخدم versionCode كإصدار مكتشف من النظام';
	@override String get requestHeader => 'رأس الطلب';
	@override String get useLatestAssetDateAsReleaseDate => 'استخدم أحدث رفع للأصول كتاريخ إصدار';
	@override String get defaultPseudoVersioningMethod => 'طريقة الإصدار الوهمي الافتراضية';
	@override String get partialAPKHash => 'جزء من بصمة APK';
	@override String get APKLinkHash => 'بصمة رابط APK';
	@override String get directAPKLink => 'رابط APK مباشر';
	@override String get pseudoVersionInUse => 'يتم استخدام إصدار وهمي';
	@override String get installedVersion => 'مثبت';
	@override String get installed => 'مثبت';
	@override String get notInstalledApps => 'غير مثبت';
	@override String get latest => 'الأحدث';
	@override String get invertRegEx => 'اعكس التعبير النمطي';
	@override String get note => 'ملاحظة';
	@override String get selfHostedNote => 'يمكن استخدام القائمة المنسدلة "{}" للوصول إلى نسخ مخصصة/مستضافة ذاتيًا لأي مصدر.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'تعذر تحليل ملف APK (تنزيل غير متوافق أو غير مكتمل)';
	@override String get beforeNewInstallsShareToAppVerifier => 'مشاركة التطبيقات الجديدة مع AppVerifier (إذا كان متاحًا)';
	@override String get appVerifierInstructionToast => 'شارك مع AppVerifier، ثم عد هنا عندما تكون جاهزًا.';
	@override String get wiki => 'المساعدة/ويكي';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'السماح بطلبات HTTP غير الآمنة';
	@override String get stayOneVersionBehind => 'البقاء بإصدار واحد خلف الأحدث';
	@override String get useFirstApkOfVersion => 'التحديد التلقائي الأول من بين عدة ملفات APK';
	@override String get refreshBeforeDownload => 'تحديث تفاصيل التطبيق قبل التنزيل';
	@override String get tencentAppStore => 'متجر Tencent للتطبيقات';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'متجر vivo للتطبيقات (CN)';
	@override String get name => 'الاسم';
	@override String get smartname => 'الاسم (ذكي)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'طريقة الترتيب';
	@override String get welcome => 'مرحبًا';
	@override String get batteryOptimizationNote => 'لاحظ أن التنزيلات في الخلفية قد تعمل بشكل أكثر موثوقية إذا قمت بتعطيل تحسينات بطارية النظام لـ Updatium.';
	@override String get fileDeletionError => 'فشل حذف الملف (حاول حذفه يدويًا ثم حاول مرة أخرى): "{}"';
	@override String get foregroundService => 'الحصول على خدمة الحصول على خدمة المقدمة';
	@override String get foregroundServiceExplanation => 'استخدام خدمة مقدمة للتحقق من التحديثات (أكثر موثوقية وتستهلك طاقة أكبر)';
	@override String get fgServiceNotice => 'هذا الإخطار مطلوب للتحقق من التحديث في الخلفية (يمكن إخفاؤه في إعدادات نظام التشغيل)';
	@override String get excludeSecrets => 'استعبد الأسرار';
	@override String get GHReqPrefix => 'نسخة "omeritzics/Updatium" لطلبات GitHub';
	@override String get includeZips => 'ضمّن ملفات ZIP';
	@override String get zippedApkFilterRegEx => 'تصفية ملفات APK داخل ZIP';
	@override String get multipleSigners => 'عدد من الدول الموقعة';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'إزالة التطبيق؟',
		two: 'إزالة التطبيقين؟',
		other: 'إزالة التطبيقات؟',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد {count} دقيقة',
		two: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد {count} دقيقتين',
		other: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد {count} دقائق',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'واجه التحقق من التحديثات في الخلفية {error}، سيتم جدولة محاولة أخرى بعد {count} دقيقة',
		two: 'واجه التحقق من التحديثات في الخلفية {error}، سيتم جدولة محاولة أخرى بعد {count} دقيقتين',
		other: 'واجه التحقق من التحديثات في الخلفية {error}، سيتم جدولة محاولة أخرى بعد {count} دقائق',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'وجد التحقق من التحديثات في الخلفية {count} تحديث - سيتم إخطار المستخدم إذا لزم الأمر',
		two: 'وجد التحقق من التحديثات في الخلفية {count} تحديثين - سيتم إخطار المستخدم إذا لزم الأمر',
		other: 'وجد التحقق من التحديثات في الخلفية {count} تحديثات - سيتم إخطار المستخدم إذا لزم الأمر',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{count} تطبيق',
		two: 'تطبيقان',
		other: '{count} تطبيقات',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{count} رابط',
		two: 'رابطان',
		other: '{count} روابط',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{count} دقيقة',
		two: 'دقيقتان',
		other: '{count} دقائق',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{count} ساعة',
		two: 'ساعتان',
		other: '{count} ساعات',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{count} يوم',
		two: 'يومان',
		other: '{count} أيام',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'مُسح {n} سجل (قبل = {before}, بعد = {after})',
		two: 'مُسح {n} سجلان (قبل = {before}, بعد = {after})',
		other: 'مُسح {n} سجلات (قبل = {before}, بعد = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{app} وتطبيق واحد آخر لديه تحديثات.',
		two: '{app} وتطبيقان آخران لديهما تحديثات.',
		other: '{app} و{count} تطبيقات أخرى لديها تحديثات.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{app} وتطبيق واحد آخر حُدث.',
		two: '{app} وتطبيقان آخران حُدثا.',
		other: '{app} و{count} تطبيقات أخرى حُدثت.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'فشل تحديث {app} وتطبيق واحد آخر.',
		two: 'فشل تحديث {app} وتطبيقان آخران.',
		other: 'فشل تحديث {app} و{count} تطبيقات أخرى.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{app} وتطبيق واحد آخر قد حُدث.',
		two: '{app} وتطبيقان آخران قد حُدثا.',
		other: '{app} و{count} تطبيقات أخرى قد حُدثت.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: '{count} APK',
		two: 'APKان',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n,
		one: 'بصمة الشهادة',
		two: 'بصمتا الشهادة',
		other: 'بصمات الشهادة',
	);
	@override String get securityDisclaimerTitle => 'إخلاء مسؤولية الأمان والقانوني';
	@override String get license => 'الرخصة';
	@override String get licenseText => 'هذا التطبيق موزع تحت رخصة GPL v3.';
	@override String get disclaimer => 'إخلاء المسؤولية';
	@override String get disclaimerText => 'هذا التطبيق لا يوزع أو يستضيف أو يتحقق من أي من التطبيقات الخارجية. يتحمل المستخدم المسؤولية الكاملة عن سلامة وقانونية أي برنامج يتم تثبيته من خلال هذه الأداة.\n\nhttps://github.com/omeritzics/Updatium هو المكان الرسمي الوحيد لتنزيل Updatium - يُنصح بشدة بعدم تنزيله من أماكن أخرى حيث أن تنزيله من مصادر غير رسمية غير آمن.';
	@override String get privacy => 'الخصوصية';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'موافق ومتابعة';
	@override String get decline => 'رفض';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'هل تستمتع بـ Updatium؟';
	@override String get githubStarPromptContent => 'Updatium هو مشروع مجتمعي مفتوح المصدر تطوعي تم تطويره في وقت فراغي. إذا كنت ترغب في دعم المشروع، يرجى التفكير في إعطائه نجمة على GitHub لمساعدتنا في الوصول إلى المزيد من المستخدمين والمساهمين. لن يتم تذكيرتك بذلك مرة أخرى. شكراً مقدماً! :)';
	@override String get githubStarPromptStar => 'إعطاء نجمة';
	@override String get githubStarPromptDontShowAgain => 'عدم العرض مرة أخرى';
	@override String get sourceCode => 'الكود المصدري';
	@override String get developedBy => 'طور بواسطة';
	@override String get appDescription => 'كتالوج تطبيقات Android قابل للتخصيص يتيح لك تحديث تطبيقاتك مباشرة من مصادر APK الخاصة بها.';
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

	late final TranslationsDependenciesAr dependencies = TranslationsDependenciesAr._(_root);
}

// Path: dependencies
class TranslationsDependenciesAr {
	TranslationsDependenciesAr._(this._root);

	final TranslationsAr _root; // ignore: unused_field

	// Translations

	/// ar: '^3.0.1'
	String get translate => '^3.0.1';
}

/// The flat map containing all translations for locale <ar>.

/// The flat map containing all translations for locale <ar>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsAr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'dependencies.translate' => '^3.0.1',
			'invalidURLForSource' => 'رابط تطبيق {} غير صالح',
			'noReleaseFound' => 'تعذر العثور على إصدار مناسب',
			'noVersionFound' => 'تعذر تحديد إصدار التطبيق',
			'urlMatchesNoSource' => 'الرابط لا يتطابق مع مصدر معروف',
			'cantInstallOlderVersion' => 'لا يمكن تثبيت إصدار أقدم من التطبيق',
			'appIdMismatch' => 'معرّف الحزمة المحملة لا يتطابق مع معرّف التطبيق الحالي',
			'functionNotImplemented' => 'هذه الوظيفة غير مطبقة في هذا الصنف',
			'placeholder' => 'عنصر نائب',
			'someErrors' => 'حدثت بعض الأخطاء',
			'unexpectedError' => 'خطأ غير متوقع',
			'ok' => 'موافق',
			'and' => 'و',
			'githubPATLabel' => 'رمز الوصول الشخصي لـ GitHub',
			'includePrereleases' => 'تضمين الإصدارات الأولية',
			'fallbackToOlderReleases' => 'الرجوع إلى الإصدارات الأقدم',
			'filterReleaseTitlesByRegEx' => 'تصفية عناوين الإصدارات باستخدام تعبير نمطي',
			'invalidRegEx' => 'تعبير نمطي غير صالح',
			'noDescription' => 'لا يوجد وصف',
			'cancel' => 'ألغِ',
			'kContinue' => 'استمر',
			'requiredInBrackets' => '(مطلوب)',
			'dropdownNoOptsError' => 'خطأ: يجب أن يحتوي القائمة المنسدلة على خيار واحد على الأقل',
			'color' => 'لون',
			'standard' => 'قياسي',
			'custom' => 'مخصّص',
			'primary' => 'Primary',
			'useMaterialYou' => 'استخدم ألوان Material You',
			'githubStarredRepos' => 'مستودعات GitHub المفضلة',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'اسم المستخدم',
			'wrongArgNum' => 'عدد وسائط غير صحيح',
			'xIsTrackOnly' => '{} للتعقب فقط',
			'source' => 'المصدر',
			'app' => 'التطبيق',
			'appsFromSourceAreTrackOnly' => 'تطبيقات هذا المصدر للتعقب فقط.',
			'youPickedTrackOnly' => 'لقد اخترت خيار \'التعقب فقط\'.',
			'trackOnlyAppDescription' => 'سيتم تعقب التطبيق للتحديثات، لكن Updatium لن يتمكن من تنزيله أو تثبيته.',
			'cancelled' => 'أُلغيَ',
			'appAlreadyAdded' => 'التطبيق مُضاف بالفعل',
			'alreadyUpToDateQuestion' => 'التطبيق محدَّث بالفعل؟',
			'addApp' => 'أضف تطبيق',
			'appSourceURL' => 'رابط مصدر التطبيق',
			'error' => 'خطأ',
			'add' => 'أضف',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'بحث (بعض المصادر فقط)',
			'search' => 'بحث',
			'searching' => 'Searching',
			'additionalOptsFor' => 'خيارات إضافية لـ {}',
			'supportedSources' => 'المصادر المدعومة',
			'trackOnlyInBrackets' => '(للتعقب فقط)',
			'searchableInBrackets' => '(قابل للبحث)',
			'appsString' => 'التطبيقات',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'مرحباً!',
			'noAppsSubtext' => 'يمكنك إضافة أول تطبيق بالنقر على \'إضافة تطبيق\' أدناه.',
			'noAppsForFilter' => 'لا توجد تطبيقات تطابق التصفية',
			'byX' => 'بواسطة {}',
			'percentProgress' => 'التقدم: {}%',
			'pleaseWait' => 'يُرجى الانتظار',
			'updateAvailable' => 'يتوفر تحديث',
			'notInstalled' => 'غير مثبت',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'إصدار وهمي',
			'selectAll' => 'تحديد الكل',
			'deselectX' => 'إلغاء تحديد {}',
			'xWillBeRemovedButRemainInstalled' => 'سيتم إزالة {} من Updatium لكنه سيظل مثبتًا على الجهاز.',
			'removeSelectedAppsQuestion' => 'إزالة التطبيقات المحددة؟',
			'removeSelectedApps' => 'أزل التطبيقات المحددة',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'Removed one app', two: 'Removed {count} apps', other: 'Removed {count} apps', ), 
			'updateX' => 'حدِّث {}',
			'installX' => 'ثبِّت {}',
			'markXTrackOnlyAsUpdated' => 'علِّم {}\n(للتعقب فقط)\nكمحدث',
			'changeX' => 'غيِّر {}',
			'installUpdateApps' => 'ثبِّت/حدِّث التطبيقات',
			'installUpdateSelectedApps' => 'ثبِّت/حدِّث التطبيقات المحددة',
			'markXSelectedAppsAsUpdated' => 'تعليم {} تطبيقات محددة كمحدثة؟',
			'no' => 'لا',
			'yes' => 'نعم',
			'markSelectedAppsUpdated' => 'تعليم التطبيقات المحددة كمحدثة',
			'pinToTop' => 'تثبيت في الأعلى',
			'unpinFromTop' => 'إلغاء التثبيت من الأعلى',
			'resetInstallStatusForSelectedAppsQuestion' => 'إعادة تعيين حالة التثبيت للتطبيقات المحددة؟',
			'installStatusOfXWillBeResetExplanation' => 'سيتم إعادة تعيين حالة التثبيت لأي تطبيقات محددة.\n\nقد يساعد هذا عندما يكون إصدار التطبيق المعروض في Updatium غير صحيح بسبب فشل التحديثات أو مشاكل أخرى.',
			'customLinkMessage' => 'هذه الروابط تعمل على الأجهزة التي بها Updatium مثبتًا',
			'shareAppConfigLinks' => 'مشاركة تكوين التطبيق كرابط HTML',
			'resetInstallStatus' => 'إعادة تعيين حالة التثبيت',
			'more' => 'المزيد',
			'removeOutdatedFilter' => 'أزل تصفية التطبيقات غير المحدثة',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'اعرض التطبيقات غير المحدثة فقط',
			'filter' => 'تصفية',
			'filterApps' => 'تصفية التطبيقات',
			'filterDays' => 'Filter days',
			'appName' => 'اسم التطبيق',
			'appAuthor' => 'المؤلف',
			'upToDateApps' => 'تطبيقات محدثة',
			'nonInstalledApps' => 'تطبيقات غير مثبتة',
			'importExport' => 'استيراد/تصدير',
			'settings' => 'الإعدادات',
			'exportedTo' => 'تم التصدير إلى {}',
			'updatiumExport' => 'تصدير Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'إدخال غير صالح',
			'importedX' => 'تم استيراد {}',
			'updatiumImport' => 'استيراد Updatium',
			'importFromURLList' => 'استيراد من قائمة الروابط',
			'searchQuery' => 'استعلام البحث',
			'appURLList' => 'قائمة روابط التطبيقات',
			'line' => 'سطر',
			'searchX' => 'بحث {}',
			'noResults' => 'لا توجد نتائج',
			'importX' => 'استيراد {}',
			'importedAppsIdDisclaimer' => 'قد تظهر التطبيقات المستوردة بشكل غير صحيح كـ "غير مثبتة".\nلإصلاح هذا، قم بإعادة تثبيتها عبر Updatium.\nهذا لا يؤثر على بيانات التطبيق.\n\nينطبق فقط على طرق الاستيراد عبر الروابط أو الطرف الثالث.',
			'importErrors' => 'أخطاء الاستيراد',
			'importedXOfYApps' => 'استوردت {} من {} تطبيقات.',
			'followingURLsHadErrors' => 'حدثت أخطاء في الروابط التالية:',
			'selectURL' => 'حدّد رابطًا',
			'selectURLs' => 'حدّد روابط',
			'pick' => 'اختر',
			'theme' => 'المظهر',
			'dark' => 'داكن',
			'light' => 'فاتح',
			'followSystem' => 'اتبع النظام',
			'followSystemThemeExplanation' => 'اتبع مظهر النظام ممكن فقط باستخدام تطبيقات طرف ثالث',
			'useBlackTheme' => 'استخدم المظهر الأسود الداكن بالكامل',
			'appSortBy' => 'رتّب التطبيقات حسب',
			'authorName' => 'المؤلف/الاسم',
			'nameAuthor' => 'الاسم/المؤلف',
			'asAdded' => 'كما أُضيفت',
			'appSortOrder' => 'ترتيب التطبيقات',
			'ascending' => 'تصاعدي',
			'descending' => 'تنازلي',
			'bgUpdateCheckInterval' => 'فترة التحقق من التحديثات في الخلفية',
			'neverManualOnly' => 'أبدًا - يدوي فقط',
			'appearance' => 'المظهر',
			'pinUpdates' => 'تدبيس التحديثات في أعلى قائمة التطبيقات',
			'updates' => 'التحديثات',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'OpenDNS' => 'OpenDNS',
			'sourceSpecific' => 'خاص بالمصدر',
			'appSource' => 'مصدر التطبيق',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'لا توجد سجلات',
			'appLogs' => 'سجلات التطبيق',
			'appLogsHint' => 'View application logs',
			'close' => 'أغلق',
			'share' => 'شارك',
			'appNotFound' => 'التطبيق غير موجود',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'تصدير-updatium',
			'pickAnAPK' => 'اختر ملف APK',
			'appHasMoreThanOnePackage' => '{} يحتوي على أكثر من حزمة:',
			'deviceSupportsXArch' => 'جهازك يدعم بنية المعالج {}.',
			'deviceSupportsFollowingArchs' => 'جهازك يدعم بنى المعالج التالية:',
			'warning' => 'تحذير',
			'sourceIsXButPackageFromYPrompt' => 'مصدر التطبيق هو \'{}\' لكن الحزمة تأتي من \'{}\'. استمر؟',
			'updatesAvailable' => 'تحديثات متاحة',
			'updatesAvailableNotifDescription' => 'يخطر المستخدم بوجود تحديثات لواحد أو أكثر من التطبيقات التي يتعقبها Updatium',
			'noNewUpdates' => 'لا توجد تحديثات جديدة.',
			'xHasAnUpdate' => '{} لديه تحديث.',
			'appsUpdated' => 'حُدثت التطبيقات',
			'appsNotUpdated' => 'فشل تحديث التطبيقات',
			'appsUpdatedNotifDescription' => 'يخطر المستخدم بأن تحديثات لواحد أو أكثر من التطبيقات طبقت في الخلفية',
			'xWasUpdatedToY' => 'حُدث {} إلى {}.',
			'xWasNotUpdatedToY' => 'فشل تحديث {} إلى {}.',
			'errorCheckingUpdates' => 'خطأ في التحقق من التحديثات',
			'errorCheckingUpdatesNotifDescription' => 'إشعار يظهر عند فشل التحقق من التحديثات في الخلفية',
			'appsRemoved' => 'تمت إزالة التطبيقات',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'يخطر المستخدم بأنه تمت إزالة واحد أو أكثر من التطبيقات بسبب أخطاء أثناء تحميلها',
			'xWasRemovedDueToErrorY' => 'تمت إزالة {} بسبب هذا الخطأ: {}',
			'completeAppInstallation' => 'إكمال تثبيت التطبيق',
			'updatiumMustBeOpenToInstallApps' => 'يجب فتح Updatium لتثبيت التطبيقات',
			'completeAppInstallationNotifDescription' => 'يطلب من المستخدم العودة إلى Updatium لإكمال تثبيت التطبيق',
			'checkingForUpdates' => 'جاري التحقق من التحديثات',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'إشعار مؤقت يظهر عند التحقق من التحديثات',
			'pleaseAllowInstallPerm' => 'يرجى السماح لـ Updatium بتثبيت التطبيقات',
			'trackOnly' => 'للتعقب فقط',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'خطأ {}',
			'versionCorrectionDisabled' => 'تعطيل تصحيح الإصدار (يبدو أن الملحق لا يعمل)',
			'unknown' => 'غير معروف',
			'none' => 'لا شيء',
			'all' => 'الكل',
			'never' => 'أبدًا',
			'latestVersion' => 'الأحدث',
			'installedVersionX' => 'المثبت: {}',
			'lastUpdateCheckX' => 'آخر تحقق من التحديثات: {}',
			'remove' => 'أزل',
			'quickLinks' => 'روابط سريعة',
			'yesMarkUpdated' => 'نعم، علِّم كمحدث',
			'fdroid' => 'F-Droid الرسمي',
			'appIdOrName' => 'معرّف التطبيق أو الاسم',
			'appId' => 'معرّف التطبيق',
			'appWithIdOrNameNotFound' => 'لم يُعثر على تطبيق بهذا المعرّف أو الاسم',
			'reposHaveMultipleApps' => 'قد تحتوي المستودعات على عدة تطبيقات',
			'fdroidThirdPartyRepo' => 'مستودع F-Droid طرف ثالث',
			'codeberg' => 'Forgejo (Codeberg)',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'ثبِّت',
			'markInstalled' => 'علِّم كمثبت',
			'update' => 'حدِّث',
			'updated' => 'مُحدَّث',
			'markUpdated' => 'علِّم كمحدث',
			'download' => 'Download',
			'additionalOptions' => 'خيارات إضافية',
			'disableVersionDetection' => 'عطّل اكتشاف الإصدار',
			'noVersionDetectionExplanation' => 'يجب استخدام هذا الخيار فقط للتطبيقات التي لا يعمل فيها اكتشاف الإصدار بشكل صحيح.',
			'downloadingX' => 'جارِ تنزيل {}',
			'downloadX' => 'تنزيل {}',
			'downloadedX' => 'نُزَّل {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'ملف الإصدار',
			'downloadNotifDescription' => 'يخطر المستخدم بالتقدم في تنزيل التطبيق',
			'noAPKFound' => 'لم يُعثر على ملف APK',
			'noVersionDetection' => 'لا يوجد اكتشاف للإصدار',
			'categorize' => 'تصنيف',
			'categories' => 'التصنيفات',
			'category' => 'تصنيف',
			'noCategory' => 'بدون تصنيف',
			'noCategories' => 'لا توجد تصنيفات',
			'categoryDeleteQuestion' => 'حذف التصنيفات؟',
			'categoryDeleteWarning' => 'سيتم تعيين جميع التطبيقات في التصنيفات المحذوفة كغير مصنفة.',
			'addCategory' => 'أضف تصنيف',
			'label' => 'تسمية',
			'language' => 'اللغة',
			'copiedToClipboard' => 'نُسخ إلى الحافظة',
			'storagePermissionDenied' => 'رُفض إذن التخزين',
			'selectedCategorizeWarning' => 'سيؤدي هذا إلى استبدال أي إعدادات تصنيف موجودة للتطبيقات المحددة.',
			'filterAPKsByRegEx' => 'تصفية ملفات APK باستخدام تعبير نمطي',
			'removeFromUpdatium' => 'إزالة من Updatium',
			'uninstallFromDevice' => 'إلغاء التثبيت من الجهاز',
			'onlyWorksWithNonVersionDetectApps' => 'يعمل فقط مع التطبيقات التي تم تعطيل اكتشاف الإصدار لها.',
			'releaseDateAsVersion' => 'استخدام تاريخ الإصدار كسلسلة إصدار',
			'releaseTitleAsVersion' => 'استخدام عنوان الإصدار كسلسلة إصدار',
			'releaseDateAsVersionExplanation' => 'يجب استخدام هذا الخيار فقط للتطبيقات التي لا يعمل فيها اكتشاف الإصدار بشكل صحيح، ولكن تاريخ الإصدار متاح.',
			'changes' => 'التغييرات',
			'releaseDate' => 'تاريخ الإصدار',
			'importFromURLsInFile' => 'استورد من روابط في ملف (مثل OPML)',
			'versionDetectionExplanation' => 'تنسيق سلسلة الإصدار مع الإصدار المكتشف من النظام',
			'versionDetection' => 'اكتشاف الإصدار',
			'standardVersionDetection' => 'اكتشاف الإصدار القياسي',
			'groupByCategory' => 'التجميع حسب التصنيف',
			'listView' => 'عرض القائمة',
			'gridView' => 'عرض الشبكة',
			'autoApkFilterByArch' => 'محاولة تصفية ملفات APK حسب بنية المعالج إذا أمكن',
			'autoLinkFilterByArch' => 'محاولة تصفية الروابط حسب بنية المعالج إذا أمكن',
			'overrideSource' => 'تجاوز المصدر',
			'dontShowAgain' => 'عدم إظهار هذا مرة أخرى',
			'dontShowTrackOnlyWarnings' => 'عدم إظهار تحذيرات \'للتعقب فقط\'',
			'dontShowAPKOriginWarnings' => 'عدم إظهار تحذيرات مصدر APK',
			'moveNonInstalledAppsToBottom' => 'نقل التطبيقات غير المثبتة إلى أسفل قائمة التطبيقات',
			'gitlabPATLabel' => 'رمز الوصول الشخصي لـ GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'حول',
			'requiresCredentialsInSettings' => '{} يحتاج إلى بيانات اعتماد إضافية (في الإعدادات)',
			'checkOnStart' => 'التحقق من التحديثات عند البدء',
			'safeMode' => 'الوضع الآمن',
			'safeModeDescription' => 'منع التغييرات غير المرغوبة في قائمة التطبيقات عن طريق إخفاء صفحة "أضف تطبيق". لتعطيله، يجب عليك الذهاب إلى صفحة الإعدادات وفتح مربع حوار "حول"، ثم النقر على رقم الإصدار 500+ مرة',
			'safeModeAddAppDisabled' => 'إضافة التطبيق معطلة في الوضع الآمن',
			'tryInferAppIdFromCode' => 'محاولة استنتاج معرّف التطبيق من الكود المصدري',
			'removeOnExternalUninstall' => 'إزالة التطبيقات المثبتة خارجيًا تلقائيًا',
			'pickHighestVersionCode' => 'تحديد أعلى إصدار تلقائيًا',
			'checkUpdateOnDetailPage' => 'التحقق من التحديثات عند فتح صفحة التفاصيل',
			'disablePageTransitions' => 'عطّل انتقالات الصفحات',
			'reversePageTransitions' => 'اعكس انتقالات الصفحات',
			'minStarCount' => 'الحد الأدنى لعدد النجوم',
			'addInfoBelow' => 'أضف هذه المعلومات أدناه.',
			'addInfoInSettings' => 'أضف هذه المعلومات في الإعدادات.',
			'githubSourceNote' => 'يمكن تجنب الحد المسموح لـ GitHub باستخدام مفتاح API.',
			'sortByLastLinkSegment' => 'رتّب حسب الجزء الأخير من الرابط فقط',
			'filterReleaseNotesByRegEx' => 'تصفية ملاحظات الإصدار باستخدام تعبير نمطي',
			'customLinkFilterRegex' => 'تصفية روابط APK المخصصة باستخدام تعبير نمطي (افتراضيًا \'.apk$\')',
			'appsPossiblyUpdated' => 'تمت محاولة تحديث التطبيقات',
			'appsPossiblyUpdatedNotifDescription' => 'يخطر المستخدم بأن تحديثات لواحد أو أكثر من التطبيقات قد تم تطبيقها في الخلفية',
			'xWasPossiblyUpdatedToY' => '{} قد تم تحديثه إلى {}.',
			'enableBackgroundUpdates' => 'تمكين التحديثات في الخلفية',
			'backgroundUpdateReqsExplanation' => 'قد لا تكون التحديثات في الخلفية ممكنة لجميع التطبيقات.',
			'backgroundUpdateLimitsExplanation' => 'يمكن تحديد نجاح التثبيت في الخلفية فقط عند فتح Updatium.',
			'verifyLatestTag' => 'التحقق من علامة \'الأحدث\'',
			'intermediateLinkRegex' => 'تصفية للوصول إلى رابط \'وسيط\'',
			'filterByLinkText' => 'تصفية الروابط حسب نص الرابط',
			'matchLinksOutsideATags' => 'تطابق الروابط خارج علامات <a>',
			'intermediateLinkNotFound' => 'لم يُعثر على رابط وسيط',
			'intermediateLink' => 'رابط وسيط',
			'exemptFromBackgroundUpdates' => 'إعفاء من التحديثات في الخلفية (إذا فُعّل)',
			'bgUpdatesOnWiFiOnly' => 'عطّل التحديثات في الخلفية عند عدم الاتصال بشبكة Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'عطّل التحديثات في الخلفية عند عدم الشحن',
			'autoSelectHighestVersionCode' => 'تحديد أعلى إصدار تلقائيًا',
			'versionExtractionRegEx' => 'تعبير نمطي لاستخراج الإصدار',
			'trimVersionString' => 'قص سلسلة الإصدار باستخدام تعبير نمطي',
			'matchGroupToUseForX' => 'مجموعة المطابقة لاستخدامها لـ "{}"',
			'matchGroupToUse' => 'مجموعة المطابقة لاستخدامها في تعبير استخراج الإصدار',
			'highlightTouchTargets' => 'تمييز أهداف اللمس الأقل وضوحًا',
			'pickExportDir' => 'اختر دليل التصدير',
			'autoExportOnChanges' => 'صدِّر تلقائي عند التغييرات',
			'includeSettings' => 'ضمّن الإعدادات',
			'filterVersionsByRegEx' => 'تصفية الإصدارات باستخدام تعبير نمطي',
			'trySelectingSuggestedVersionCode' => 'محاولة تحديد الإصدار المقترح تلقائيًا',
			'dontSortReleasesList' => 'حافظ على ترتيب الإصدارات من API',
			'reverseSort' => 'رتّب عكسيًا',
			'takeFirstLink' => 'أخذ أول رابط',
			'skipSort' => 'تخطي الترتيب',
			'debugMenu' => 'قائمة التصحيح',
			'bgTaskStarted' => 'بدأت المهمة في الخلفية - تحقق من السجلات.',
			'runBgCheckNow' => 'تشغيل التحقق من التحديثات في الخلفية الآن',
			'versionExtractWholePage' => 'طبّق تعبير استخراج الإصدار على الصفحة بأكملها',
			'installing' => 'جارِ التثبيت',
			'skipUpdateNotifications' => 'تخطي إخطارات التحديث',
			'updatesAvailableNotifChannel' => 'تتوفّر تحديثات',
			'appsUpdatedNotifChannel' => 'حُدثت التطبيقات',
			'appsPossiblyUpdatedNotifChannel' => 'حاولّ تحديث التطبيقات',
			'errorCheckingUpdatesNotifChannel' => 'خطأ في التحقق من التحديثات',
			'appsRemovedNotifChannel' => 'أُزيلت التطبيقات',
			'downloadingXNotifChannel' => 'جارِ تنزيل {}',
			'completeAppInstallationNotifChannel' => 'اكمل تثبيت التطبيق',
			'checkingForUpdatesNotifChannel' => 'جارِ التحقق من التحديثات',
			'onlyCheckInstalledOrTrackOnlyApps' => 'التحقق فقط من التطبيقات المثبتة أو للتعقب فقط',
			'supportFixedAPKURL' => 'دعم روابط APK الثابتة',
			'selectX' => 'اختر {}',
			'parallelDownloads' => 'السماح بالتنزيل المتوازي',
			'useShizuku' => 'استخدم Shizuku أو Sui للتثبيت',
			'shizukuBinderNotFound' => 'خدمة Shizuku غير قيد التشغيل',
			'shizukuOld' => 'إصدار قديم من Shizuku (<11) - حدّثه',
			'shizukuOldAndroidWithADB' => 'Shizuku يعمل على إصدار أندرويد < 8.1 مع ADB - حدّث أندرويد أو استخدم Sui بدلاً من ذلك',
			'shizukuPretendToBeGooglePlay' => 'عيّن Google Play كمصدر التثبيت (إذا تم استخدام Shizuku)',
			'useSystemFont' => 'استخدم خط النظام',
			'useVersionCodeAsOSVersion' => 'استخدم versionCode كإصدار مكتشف من النظام',
			'requestHeader' => 'رأس الطلب',
			'useLatestAssetDateAsReleaseDate' => 'استخدم أحدث رفع للأصول كتاريخ إصدار',
			'defaultPseudoVersioningMethod' => 'طريقة الإصدار الوهمي الافتراضية',
			'partialAPKHash' => 'جزء من بصمة APK',
			'APKLinkHash' => 'بصمة رابط APK',
			'directAPKLink' => 'رابط APK مباشر',
			'pseudoVersionInUse' => 'يتم استخدام إصدار وهمي',
			'installedVersion' => 'مثبت',
			'installed' => 'مثبت',
			'notInstalledApps' => 'غير مثبت',
			'latest' => 'الأحدث',
			'invertRegEx' => 'اعكس التعبير النمطي',
			'note' => 'ملاحظة',
			'selfHostedNote' => 'يمكن استخدام القائمة المنسدلة "{}" للوصول إلى نسخ مخصصة/مستضافة ذاتيًا لأي مصدر.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'تعذر تحليل ملف APK (تنزيل غير متوافق أو غير مكتمل)',
			'beforeNewInstallsShareToAppVerifier' => 'مشاركة التطبيقات الجديدة مع AppVerifier (إذا كان متاحًا)',
			'appVerifierInstructionToast' => 'شارك مع AppVerifier، ثم عد هنا عندما تكون جاهزًا.',
			'wiki' => 'المساعدة/ويكي',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'السماح بطلبات HTTP غير الآمنة',
			'stayOneVersionBehind' => 'البقاء بإصدار واحد خلف الأحدث',
			'useFirstApkOfVersion' => 'التحديد التلقائي الأول من بين عدة ملفات APK',
			'refreshBeforeDownload' => 'تحديث تفاصيل التطبيق قبل التنزيل',
			'tencentAppStore' => 'متجر Tencent للتطبيقات',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'متجر vivo للتطبيقات (CN)',
			'name' => 'الاسم',
			'smartname' => 'الاسم (ذكي)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'طريقة الترتيب',
			'welcome' => 'مرحبًا',
			'batteryOptimizationNote' => 'لاحظ أن التنزيلات في الخلفية قد تعمل بشكل أكثر موثوقية إذا قمت بتعطيل تحسينات بطارية النظام لـ Updatium.',
			'fileDeletionError' => 'فشل حذف الملف (حاول حذفه يدويًا ثم حاول مرة أخرى): "{}"',
			'foregroundService' => 'الحصول على خدمة الحصول على خدمة المقدمة',
			'foregroundServiceExplanation' => 'استخدام خدمة مقدمة للتحقق من التحديثات (أكثر موثوقية وتستهلك طاقة أكبر)',
			'fgServiceNotice' => 'هذا الإخطار مطلوب للتحقق من التحديث في الخلفية (يمكن إخفاؤه في إعدادات نظام التشغيل)',
			'excludeSecrets' => 'استعبد الأسرار',
			'GHReqPrefix' => 'نسخة "omeritzics/Updatium" لطلبات GitHub',
			'includeZips' => 'ضمّن ملفات ZIP',
			'zippedApkFilterRegEx' => 'تصفية ملفات APK داخل ZIP',
			'multipleSigners' => 'عدد من الدول الموقعة',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'إزالة التطبيق؟', two: 'إزالة التطبيقين؟', other: 'إزالة التطبيقات؟', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد {count} دقيقة', two: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد {count} دقيقتين', other: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد {count} دقائق', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'واجه التحقق من التحديثات في الخلفية {error}، سيتم جدولة محاولة أخرى بعد {count} دقيقة', two: 'واجه التحقق من التحديثات في الخلفية {error}، سيتم جدولة محاولة أخرى بعد {count} دقيقتين', other: 'واجه التحقق من التحديثات في الخلفية {error}، سيتم جدولة محاولة أخرى بعد {count} دقائق', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'وجد التحقق من التحديثات في الخلفية {count} تحديث - سيتم إخطار المستخدم إذا لزم الأمر', two: 'وجد التحقق من التحديثات في الخلفية {count} تحديثين - سيتم إخطار المستخدم إذا لزم الأمر', other: 'وجد التحقق من التحديثات في الخلفية {count} تحديثات - سيتم إخطار المستخدم إذا لزم الأمر', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{count} تطبيق', two: 'تطبيقان', other: '{count} تطبيقات', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{count} رابط', two: 'رابطان', other: '{count} روابط', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{count} دقيقة', two: 'دقيقتان', other: '{count} دقائق', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{count} ساعة', two: 'ساعتان', other: '{count} ساعات', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{count} يوم', two: 'يومان', other: '{count} أيام', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'مُسح {n} سجل (قبل = {before}, بعد = {after})', two: 'مُسح {n} سجلان (قبل = {before}, بعد = {after})', other: 'مُسح {n} سجلات (قبل = {before}, بعد = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{app} وتطبيق واحد آخر لديه تحديثات.', two: '{app} وتطبيقان آخران لديهما تحديثات.', other: '{app} و{count} تطبيقات أخرى لديها تحديثات.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{app} وتطبيق واحد آخر حُدث.', two: '{app} وتطبيقان آخران حُدثا.', other: '{app} و{count} تطبيقات أخرى حُدثت.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'فشل تحديث {app} وتطبيق واحد آخر.', two: 'فشل تحديث {app} وتطبيقان آخران.', other: 'فشل تحديث {app} و{count} تطبيقات أخرى.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{app} وتطبيق واحد آخر قد حُدث.', two: '{app} وتطبيقان آخران قد حُدثا.', other: '{app} و{count} تطبيقات أخرى قد حُدثت.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: '{count} APK', two: 'APKان', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ar'))(n, one: 'بصمة الشهادة', two: 'بصمتا الشهادة', other: 'بصمات الشهادة', ), 
			'securityDisclaimerTitle' => 'إخلاء مسؤولية الأمان والقانوني',
			'license' => 'الرخصة',
			'licenseText' => 'هذا التطبيق موزع تحت رخصة GPL v3.',
			'disclaimer' => 'إخلاء المسؤولية',
			'disclaimerText' => 'هذا التطبيق لا يوزع أو يستضيف أو يتحقق من أي من التطبيقات الخارجية. يتحمل المستخدم المسؤولية الكاملة عن سلامة وقانونية أي برنامج يتم تثبيته من خلال هذه الأداة.\n\nhttps://github.com/omeritzics/Updatium هو المكان الرسمي الوحيد لتنزيل Updatium - يُنصح بشدة بعدم تنزيله من أماكن أخرى حيث أن تنزيله من مصادر غير رسمية غير آمن.',
			'privacy' => 'الخصوصية',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'موافق ومتابعة',
			'decline' => 'رفض',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'هل تستمتع بـ Updatium؟',
			'githubStarPromptContent' => 'Updatium هو مشروع مجتمعي مفتوح المصدر تطوعي تم تطويره في وقت فراغي. إذا كنت ترغب في دعم المشروع، يرجى التفكير في إعطائه نجمة على GitHub لمساعدتنا في الوصول إلى المزيد من المستخدمين والمساهمين. لن يتم تذكيرتك بذلك مرة أخرى. شكراً مقدماً! :)',
			'githubStarPromptStar' => 'إعطاء نجمة',
			'githubStarPromptDontShowAgain' => 'عدم العرض مرة أخرى',
			'sourceCode' => 'الكود المصدري',
			'developedBy' => 'طور بواسطة',
			'appDescription' => 'كتالوج تطبيقات Android قابل للتخصيص يتيح لك تحديث تطبيقاتك مباشرة من مصادر APK الخاصة بها.',
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
