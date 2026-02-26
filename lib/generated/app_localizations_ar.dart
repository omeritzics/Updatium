// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'رابط تطبيق $p0 غير صالح';
  }

  @override
  String get noReleaseFound => 'تعذر العثور على إصدار مناسب';

  @override
  String get noVersionFound => 'تعذر تحديد إصدار التطبيق';

  @override
  String get urlMatchesNoSource => 'الرابط لا يتطابق مع مصدر معروف';

  @override
  String get cantInstallOlderVersion => 'لا يمكن تثبيت إصدار أقدم من التطبيق';

  @override
  String get appIdMismatch => 'معرّف الحزمة المحملة لا يتطابق مع معرّف التطبيق الحالي';

  @override
  String get functionNotImplemented => 'هذه الوظيفة غير مطبقة في هذا الصنف';

  @override
  String get placeholder => 'عنصر نائب';

  @override
  String get someErrors => 'حدثت بعض الأخطاء';

  @override
  String get unexpectedError => 'خطأ غير متوقع';

  @override
  String get ok => 'موافق';

  @override
  String get and => 'و';

  @override
  String get githubPATLabel => 'رمز الوصول الشخصي لـ GitHub (يزيد من الحد المسموح)';

  @override
  String get includePrereleases => 'تضمين الإصدارات الأولية';

  @override
  String get fallbackToOlderReleases => 'الرجوع إلى الإصدارات الأقدم';

  @override
  String get filterReleaseTitlesByRegEx => 'تصفية عناوين الإصدارات باستخدام تعبير نمطي';

  @override
  String get invalidRegEx => 'تعبير نمطي غير صالح';

  @override
  String get noDescription => 'لا يوجد وصف';

  @override
  String get cancel => 'ألغِ';

  @override
  String get continue => 'استمر';

  @override
  String get requiredInBrackets => '(مطلوب)';

  @override
  String get dropdownNoOptsError => 'خطأ: يجب أن يحتوي القائمة المنسدلة على خيار واحد على الأقل';

  @override
  String get color => 'لون';

  @override
  String get standard => 'قياسي';

  @override
  String get custom => 'مخصّص';

  @override
  String get useMaterialYou => 'استخدم ألوان Material You';

  @override
  String get githubStarredRepos => 'مستودعات GitHub المفضلة';

  @override
  String get uname => 'اسم المستخدم';

  @override
  String get wrongArgNum => 'عدد وسائط غير صحيح';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 للتعقب فقط';
  }

  @override
  String get source => 'المصدر';

  @override
  String get app => 'التطبيق';

  @override
  String get appsFromSourceAreTrackOnly => 'تطبيقات هذا المصدر للتعقب فقط.';

  @override
  String get youPickedTrackOnly => 'لقد اخترت خيار \'التعقب فقط\'.';

  @override
  String get trackOnlyAppDescription => 'سيتم تعقب التطبيق للتحديثات، لكن Updatium لن يتمكن من تنزيله أو تثبيته.';

  @override
  String get cancelled => 'أُلغيَ';

  @override
  String get appAlreadyAdded => 'التطبيق مُضاف بالفعل';

  @override
  String get alreadyUpToDateQuestion => 'التطبيق محدَّث بالفعل؟';

  @override
  String get addApp => 'أضف تطبيق';

  @override
  String get appSourceURL => 'رابط مصدر التطبيق';

  @override
  String get error => 'خطأ';

  @override
  String get add => 'أضف';

  @override
  String get searchSomeSourcesLabel => 'بحث (بعض المصادر فقط)';

  @override
  String get search => 'بحث';

  @override
  String additionalOptsFor(Object p0) {
    return 'خيارات إضافية لـ $p0';
  }

  @override
  String get supportedSources => 'المصادر المدعومة';

  @override
  String get trackOnlyInBrackets => '(للتعقب فقط)';

  @override
  String get searchableInBrackets => '(قابل للبحث)';

  @override
  String get appsString => 'التطبيقات';

  @override
  String get noApps => 'مرحباً!';

  @override
  String get noAppsSubtext => 'يمكنك إضافة أول تطبيق بالنقر على \'إضافة تطبيق\' أدناه.';

  @override
  String get noAppsForFilter => 'لا توجد تطبيقات تطابق التصفية';

  @override
  String byX(Object p0) {
    return 'بواسطة $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'التقدم: $p0%';
  }

  @override
  String get pleaseWait => 'يُرجى الانتظار';

  @override
  String get updateAvailable => 'يتوفر تحديث';

  @override
  String get notInstalled => 'غير مثبت';

  @override
  String get pseudoVersion => 'إصدار وهمي';

  @override
  String get selectAll => 'تحديد الكل';

  @override
  String deselectX(Object p0) {
    return 'إلغاء تحديد $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return 'سيتم إزالة $p0 من Updatium لكنه سيظل مثبتًا على الجهاز.';
  }

  @override
  String get removeSelectedAppsQuestion => 'إزالة التطبيقات المحددة؟';

  @override
  String get removeSelectedApps => 'أزل التطبيقات المحددة';

  @override
  String updateX(Object p0) {
    return 'حدِّث $p0';
  }

  @override
  String installX(Object p0) {
    return 'ثبِّت $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'علِّم $p0\n(للتعقب فقط)\nكمحدث';
  }

  @override
  String changeX(Object p0) {
    return 'غيِّر $p0';
  }

  @override
  String get installUpdateApps => 'ثبِّت/حدِّث التطبيقات';

  @override
  String get installUpdateSelectedApps => 'ثبِّت/حدِّث التطبيقات المحددة';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'تعليم $p0 تطبيقات محددة كمحدثة؟';
  }

  @override
  String get no => 'لا';

  @override
  String get yes => 'نعم';

  @override
  String get markSelectedAppsUpdated => 'تعليم التطبيقات المحددة كمحدثة';

  @override
  String get pinToTop => 'تثبيت في الأعلى';

  @override
  String get unpinFromTop => 'إلغاء التثبيت من الأعلى';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'إعادة تعيين حالة التثبيت للتطبيقات المحددة؟';

  @override
  String get installStatusOfXWillBeResetExplanation => 'سيتم إعادة تعيين حالة التثبيت لأي تطبيقات محددة.\n\nقد يساعد هذا عندما يكون إصدار التطبيق المعروض في Updatium غير صحيح بسبب فشل التحديثات أو مشاكل أخرى.';

  @override
  String get customLinkMessage => 'هذه الروابط تعمل على الأجهزة التي بها Updatium مثبتًا';

  @override
  String get shareAppConfigLinks => 'مشاركة تكوين التطبيق كرابط HTML';

  @override
  String get shareSelectedAppURLs => 'مشاركة روابط التطبيقات المحددة';

  @override
  String get resetInstallStatus => 'إعادة تعيين حالة التثبيت';

  @override
  String get more => 'المزيد';

  @override
  String get removeOutdatedFilter => 'أزل تصفية التطبيقات غير المحدثة';

  @override
  String get showOutdatedOnly => 'اعرض التطبيقات غير المحدثة فقط';

  @override
  String get filter => 'تصفية';

  @override
  String get filterApps => 'تصفية التطبيقات';

  @override
  String get appName => 'اسم التطبيق';

  @override
  String get author => 'المؤلف';

  @override
  String get upToDateApps => 'تطبيقات محدثة';

  @override
  String get nonInstalledApps => 'تطبيقات غير مثبتة';

  @override
  String get importExport => 'استيراد/تصدير';

  @override
  String get settings => 'الإعدادات';

  @override
  String exportedTo(Object p0) {
    return 'تم التصدير إلى $p0';
  }

  @override
  String get updatiumExport => 'تصدير Updatium';

  @override
  String get invalidInput => 'إدخال غير صالح';

  @override
  String importedX(Object p0) {
    return 'تم استيراد $p0';
  }

  @override
  String get updatiumImport => 'استيراد Updatium';

  @override
  String get importFromURLList => 'استيراد من قائمة الروابط';

  @override
  String get searchQuery => 'استعلام البحث';

  @override
  String get appURLList => 'قائمة روابط التطبيقات';

  @override
  String get line => 'سطر';

  @override
  String searchX(Object p0) {
    return 'بحث $p0';
  }

  @override
  String get noResults => 'لا توجد نتائج';

  @override
  String importX(Object p0) {
    return 'استيراد $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'قد تظهر التطبيقات المستوردة بشكل غير صحيح كـ \"غير مثبتة\".\nلإصلاح هذا، قم بإعادة تثبيتها عبر Updatium.\nهذا لا يؤثر على بيانات التطبيق.\n\nينطبق فقط على طرق الاستيراد عبر الروابط أو الطرف الثالث.';

  @override
  String get importErrors => 'أخطاء الاستيراد';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return 'استوردت $p0 من $p1 تطبيقات.';
  }

  @override
  String get followingURLsHadErrors => 'حدثت أخطاء في الروابط التالية:';

  @override
  String get selectURL => 'حدّد رابطًا';

  @override
  String get selectURLs => 'حدّد روابط';

  @override
  String get pick => 'اختر';

  @override
  String get theme => 'المظهر';

  @override
  String get dark => 'داكن';

  @override
  String get light => 'فاتح';

  @override
  String get followSystem => 'اتبع النظام';

  @override
  String get followSystemThemeExplanation => 'اتبع مظهر النظام ممكن فقط باستخدام تطبيقات طرف ثالث';

  @override
  String get useBlackTheme => 'استخدم المظهر الأسود الداكن بالكامل';

  @override
  String get appSortBy => 'رتّب التطبيقات حسب';

  @override
  String get authorName => 'المؤلف/الاسم';

  @override
  String get nameAuthor => 'الاسم/المؤلف';

  @override
  String get asAdded => 'كما أُضيفت';

  @override
  String get appSortOrder => 'ترتيب التطبيقات';

  @override
  String get ascending => 'تصاعدي';

  @override
  String get descending => 'تنازلي';

  @override
  String get bgUpdateCheckInterval => 'فترة التحقق من التحديثات في الخلفية';

  @override
  String get neverManualOnly => 'أبدًا - يدوي فقط';

  @override
  String get appearance => 'المظهر';

  @override
  String get pinUpdates => 'تدبيس التحديثات في أعلى قائمة التطبيقات';

  @override
  String get updates => 'التحديثات';

  @override
  String get sourceSpecific => 'خاص بالمصدر';

  @override
  String get appSource => 'مصدر التطبيق';

  @override
  String get noLogs => 'لا توجد سجلات';

  @override
  String get appLogs => 'سجلات التطبيق';

  @override
  String get close => 'أغلق';

  @override
  String get share => 'شارك';

  @override
  String get appNotFound => 'التطبيق غير موجود';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'تصدير-updatium';

  @override
  String get pickAnAPK => 'اختر ملف APK';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 يحتوي على أكثر من حزمة:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'جهازك يدعم بنية المعالج $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'جهازك يدعم بنى المعالج التالية:';

  @override
  String get warning => 'تحذير';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'مصدر التطبيق هو \'$p0\' لكن الحزمة تأتي من \'$p1\'. استمر؟';
  }

  @override
  String get updatesAvailable => 'تحديثات متاحة';

  @override
  String get updatesAvailableNotifDescription => 'يخطر المستخدم بوجود تحديثات لواحد أو أكثر من التطبيقات التي يتعقبها Updatium';

  @override
  String get noNewUpdates => 'لا توجد تحديثات جديدة.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 لديه تحديث.';
  }

  @override
  String get appsUpdated => 'حُدثت التطبيقات';

  @override
  String get appsNotUpdated => 'فشل تحديث التطبيقات';

  @override
  String get appsUpdatedNotifDescription => 'يخطر المستخدم بأن تحديثات لواحد أو أكثر من التطبيقات طبقت في الخلفية';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return 'حُدث $p0 إلى $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'فشل تحديث $p0 إلى $p1.';
  }

  @override
  String get errorCheckingUpdates => 'خطأ في التحقق من التحديثات';

  @override
  String get errorCheckingUpdatesNotifDescription => 'إشعار يظهر عند فشل التحقق من التحديثات في الخلفية';

  @override
  String get appsRemoved => 'تمت إزالة التطبيقات';

  @override
  String get appsRemovedNotifDescription => 'يخطر المستخدم بأنه تمت إزالة واحد أو أكثر من التطبيقات بسبب أخطاء أثناء تحميلها';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return 'تمت إزالة $p0 بسبب هذا الخطأ: $p1';
  }

  @override
  String get completeAppInstallation => 'إكمال تثبيت التطبيق';

  @override
  String get updatiumMustBeOpenToInstallApps => 'يجب فتح Updatium لتثبيت التطبيقات';

  @override
  String get completeAppInstallationNotifDescription => 'يطلب من المستخدم العودة إلى Updatium لإكمال تثبيت التطبيق';

  @override
  String get checkingForUpdates => 'جاري التحقق من التحديثات';

  @override
  String get checkingForUpdatesNotifDescription => 'إشعار مؤقت يظهر عند التحقق من التحديثات';

  @override
  String get pleaseAllowInstallPerm => 'يرجى السماح لـ Updatium بتثبيت التطبيقات';

  @override
  String get trackOnly => 'للتعقب فقط';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'خطأ $p0';
  }

  @override
  String get versionCorrectionDisabled => 'تعطيل تصحيح الإصدار (يبدو أن الملحق لا يعمل)';

  @override
  String get unknown => 'غير معروف';

  @override
  String get none => 'لا شيء';

  @override
  String get all => 'الكل';

  @override
  String get never => 'أبدًا';

  @override
  String latestVersionX(Object p0) {
    return 'الأحدث: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'المثبت: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'آخر تحقق من التحديثات: $p0';
  }

  @override
  String get remove => 'أزل';

  @override
  String get yesMarkUpdated => 'نعم، علِّم كمحدث';

  @override
  String get fdroid => 'F-Droid الرسمي';

  @override
  String get appIdOrName => 'معرّف التطبيق أو الاسم';

  @override
  String get appId => 'معرّف التطبيق';

  @override
  String get appWithIdOrNameNotFound => 'لم يُعثر على تطبيق بهذا المعرّف أو الاسم';

  @override
  String get reposHaveMultipleApps => 'قد تحتوي المستودعات على عدة تطبيقات';

  @override
  String get fdroidThirdPartyRepo => 'مستودع F-Droid طرف ثالث';

  @override
  String get install => 'ثبِّت';

  @override
  String get markInstalled => 'علِّم كمثبت';

  @override
  String get update => 'حدِّث';

  @override
  String get updated => 'مُحدَّث';

  @override
  String get markUpdated => 'علِّم كمحدث';

  @override
  String get additionalOptions => 'خيارات إضافية';

  @override
  String get disableVersionDetection => 'عطّل اكتشاف الإصدار';

  @override
  String get noVersionDetectionExplanation => 'يجب استخدام هذا الخيار فقط للتطبيقات التي لا يعمل فيها اكتشاف الإصدار بشكل صحيح.';

  @override
  String downloadingX(Object p0) {
    return 'جارِ تنزيل $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'تنزيل $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'نُزَّل $p0';
  }

  @override
  String get releaseAsset => 'ملف الإصدار';

  @override
  String get downloadNotifDescription => 'يخطر المستخدم بالتقدم في تنزيل التطبيق';

  @override
  String get noAPKFound => 'لم يُعثر على ملف APK';

  @override
  String get noVersionDetection => 'لا يوجد اكتشاف للإصدار';

  @override
  String get categorize => 'تصنيف';

  @override
  String get categories => 'التصنيفات';

  @override
  String get category => 'تصنيف';

  @override
  String get noCategory => 'بدون تصنيف';

  @override
  String get noCategories => 'لا توجد تصنيفات';

  @override
  String get deleteCategoriesQuestion => 'حذف التصنيفات؟';

  @override
  String get categoryDeleteWarning => 'سيتم تعيين جميع التطبيقات في التصنيفات المحذوفة كغير مصنفة.';

  @override
  String get addCategory => 'أضف تصنيف';

  @override
  String get label => 'تسمية';

  @override
  String get language => 'اللغة';

  @override
  String get copiedToClipboard => 'نُسخ إلى الحافظة';

  @override
  String get storagePermissionDenied => 'رُفض إذن التخزين';

  @override
  String get selectedCategorizeWarning => 'سيؤدي هذا إلى استبدال أي إعدادات تصنيف موجودة للتطبيقات المحددة.';

  @override
  String get filterAPKsByRegEx => 'تصفية ملفات APK باستخدام تعبير نمطي';

  @override
  String get removeFromUpdatium => 'إزالة من Updatium';

  @override
  String get uninstallFromDevice => 'إلغاء التثبيت من الجهاز';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'يعمل فقط مع التطبيقات التي تم تعطيل اكتشاف الإصدار لها.';

  @override
  String get releaseDateAsVersion => 'استخدام تاريخ الإصدار كسلسلة إصدار';

  @override
  String get releaseTitleAsVersion => 'استخدام عنوان الإصدار كسلسلة إصدار';

  @override
  String get releaseDateAsVersionExplanation => 'يجب استخدام هذا الخيار فقط للتطبيقات التي لا يعمل فيها اكتشاف الإصدار بشكل صحيح، ولكن تاريخ الإصدار متاح.';

  @override
  String get changes => 'التغييرات';

  @override
  String get releaseDate => 'تاريخ الإصدار';

  @override
  String get importFromURLsInFile => 'استورد من روابط في ملف (مثل OPML)';

  @override
  String get versionDetectionExplanation => 'تنسيق سلسلة الإصدار مع الإصدار المكتشف من النظام';

  @override
  String get versionDetection => 'اكتشاف الإصدار';

  @override
  String get standardVersionDetection => 'اكتشاف الإصدار القياسي';

  @override
  String get groupByCategory => 'التجميع حسب التصنيف';

  @override
  String get listView => 'عرض القائمة';

  @override
  String get gridView => 'عرض الشبكة';

  @override
  String get autoApkFilterByArch => 'محاولة تصفية ملفات APK حسب بنية المعالج إذا أمكن';

  @override
  String get autoLinkFilterByArch => 'محاولة تصفية الروابط حسب بنية المعالج إذا أمكن';

  @override
  String get overrideSource => 'تجاوز المصدر';

  @override
  String get dontShowAgain => 'عدم إظهار هذا مرة أخرى';

  @override
  String get dontShowTrackOnlyWarnings => 'عدم إظهار تحذيرات \'للتعقب فقط\'';

  @override
  String get dontShowAPKOriginWarnings => 'عدم إظهار تحذيرات مصدر APK';

  @override
  String get moveNonInstalledAppsToBottom => 'نقل التطبيقات غير المثبتة إلى أسفل قائمة التطبيقات';

  @override
  String get hideNonInstalledApps => 'Hide non-installed apps';

  @override
  String get gitlabPATLabel => 'رمز الوصول الشخصي لـ GitLab';

  @override
  String get about => 'حول';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0 يحتاج إلى بيانات اعتماد إضافية (في الإعدادات)';
  }

  @override
  String get checkOnStart => 'التحقق من التحديثات عند البدء';

  @override
  String get tryInferAppIdFromCode => 'محاولة استنتاج معرّف التطبيق من الكود المصدري';

  @override
  String get removeOnExternalUninstall => 'إزالة التطبيقات المثبتة خارجيًا تلقائيًا';

  @override
  String get pickHighestVersionCode => 'تحديد أعلى إصدار تلقائيًا';

  @override
  String get checkUpdateOnDetailPage => 'التحقق من التحديثات عند فتح صفحة التفاصيل';

  @override
  String get disablePageTransitions => 'عطّل انتقالات الصفحات';

  @override
  String get reversePageTransitions => 'اعكس انتقالات الصفحات';

  @override
  String get minStarCount => 'الحد الأدنى لعدد النجوم';

  @override
  String get addInfoBelow => 'أضف هذه المعلومات أدناه.';

  @override
  String get addInfoInSettings => 'أضف هذه المعلومات في الإعدادات.';

  @override
  String get githubSourceNote => 'يمكن تجنب الحد المسموح لـ GitHub باستخدام مفتاح API.';

  @override
  String get sortByLastLinkSegment => 'رتّب حسب الجزء الأخير من الرابط فقط';

  @override
  String get filterReleaseNotesByRegEx => 'تصفية ملاحظات الإصدار باستخدام تعبير نمطي';

  @override
  String get customLinkFilterRegex => 'تصفية روابط APK المخصصة باستخدام تعبير نمطي (افتراضيًا \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'تمت محاولة تحديث التطبيقات';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'يخطر المستخدم بأن تحديثات لواحد أو أكثر من التطبيقات قد تم تطبيقها في الخلفية';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 قد تم تحديثه إلى $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'تمكين التحديثات في الخلفية';

  @override
  String get backgroundUpdateReqsExplanation => 'قد لا تكون التحديثات في الخلفية ممكنة لجميع التطبيقات.';

  @override
  String get backgroundUpdateLimitsExplanation => 'يمكن تحديد نجاح التثبيت في الخلفية فقط عند فتح Updatium.';

  @override
  String get verifyLatestTag => 'التحقق من علامة \'الأحدث\'';

  @override
  String get intermediateLinkRegex => 'تصفية للوصول إلى رابط \'وسيط\'';

  @override
  String get filterByLinkText => 'تصفية الروابط حسب نص الرابط';

  @override
  String get matchLinksOutsideATags => 'تطابق الروابط خارج علامات <a>';

  @override
  String get intermediateLinkNotFound => 'لم يُعثر على رابط وسيط';

  @override
  String get intermediateLink => 'رابط وسيط';

  @override
  String get exemptFromBackgroundUpdates => 'إعفاء من التحديثات في الخلفية (إذا فُعّل)';

  @override
  String get bgUpdatesOnWiFiOnly => 'عطّل التحديثات في الخلفية عند عدم الاتصال بشبكة Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'عطّل التحديثات في الخلفية عند عدم الشحن';

  @override
  String get autoSelectHighestVersionCode => 'تحديد أعلى إصدار تلقائيًا';

  @override
  String get versionExtractionRegEx => 'تعبير نمطي لاستخراج الإصدار';

  @override
  String get trimVersionString => 'قص سلسلة الإصدار باستخدام تعبير نمطي';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'مجموعة المطابقة لاستخدامها لـ \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'مجموعة المطابقة لاستخدامها في تعبير استخراج الإصدار';

  @override
  String get highlightTouchTargets => 'تمييز أهداف اللمس الأقل وضوحًا';

  @override
  String get pickExportDir => 'اختر دليل التصدير';

  @override
  String get autoExportOnChanges => 'صدِّر تلقائي عند التغييرات';

  @override
  String get includeSettings => 'ضمّن الإعدادات';

  @override
  String get filterVersionsByRegEx => 'تصفية الإصدارات باستخدام تعبير نمطي';

  @override
  String get trySelectingSuggestedVersionCode => 'محاولة تحديد الإصدار المقترح تلقائيًا';

  @override
  String get dontSortReleasesList => 'حافظ على ترتيب الإصدارات من API';

  @override
  String get reverseSort => 'رتّب عكسيًا';

  @override
  String get takeFirstLink => 'أخذ أول رابط';

  @override
  String get skipSort => 'تخطي الترتيب';

  @override
  String get debugMenu => 'قائمة التصحيح';

  @override
  String get bgTaskStarted => 'بدأت المهمة في الخلفية - تحقق من السجلات.';

  @override
  String get runBgCheckNow => 'تشغيل التحقق من التحديثات في الخلفية الآن';

  @override
  String get versionExtractWholePage => 'طبّق تعبير استخراج الإصدار على الصفحة بأكملها';

  @override
  String get installing => 'جارِ التثبيت';

  @override
  String get skipUpdateNotifications => 'تخطي إخطارات التحديث';

  @override
  String get updatesAvailableNotifChannel => 'تتوفّر تحديثات';

  @override
  String get appsUpdatedNotifChannel => 'حُدثت التطبيقات';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'حاولّ تحديث التطبيقات';

  @override
  String get errorCheckingUpdatesNotifChannel => 'خطأ في التحقق من التحديثات';

  @override
  String get appsRemovedNotifChannel => 'أُزيلت التطبيقات';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'جارِ تنزيل $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'اكمل تثبيت التطبيق';

  @override
  String get checkingForUpdatesNotifChannel => 'جارِ التحقق من التحديثات';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'التحقق فقط من التطبيقات المثبتة أو للتعقب فقط';

  @override
  String get supportFixedAPKURL => 'دعم روابط APK الثابتة';

  @override
  String selectX(Object p0) {
    return 'اختر $p0';
  }

  @override
  String get parallelDownloads => 'السماح بالتنزيل المتوازي';

  @override
  String get useShizuku => 'استخدم Shizuku أو Sui للتثبيت';

  @override
  String get shizukuBinderNotFound => 'خدمة Shizuku غير قيد التشغيل';

  @override
  String get shizukuOld => 'إصدار قديم من Shizuku (<11) - حدّثه';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku يعمل على إصدار أندرويد < 8.1 مع ADB - حدّث أندرويد أو استخدم Sui بدلاً من ذلك';

  @override
  String get shizukuPretendToBeGooglePlay => 'عيّن Google Play كمصدر التثبيت (إذا تم استخدام Shizuku)';

  @override
  String get useSystemFont => 'استخدم خط النظام';

  @override
  String get useVersionCodeAsOSVersion => 'استخدم versionCode كإصدار مكتشف من النظام';

  @override
  String get requestHeader => 'رأس الطلب';

  @override
  String get useLatestAssetDateAsReleaseDate => 'استخدم أحدث رفع للأصول كتاريخ إصدار';

  @override
  String get defaultPseudoVersioningMethod => 'طريقة الإصدار الوهمي الافتراضية';

  @override
  String get partialAPKHash => 'جزء من بصمة APK';

  @override
  String get apkLinkHash => 'بصمة رابط APK';

  @override
  String get directAPKLink => 'رابط APK مباشر';

  @override
  String get pseudoVersionInUse => 'يتم استخدام إصدار وهمي';

  @override
  String get installed => 'مثبت';

  @override
  String get latest => 'الأحدث';

  @override
  String get invertRegEx => 'اعكس التعبير النمطي';

  @override
  String get note => 'ملاحظة';

  @override
  String selfHostedNote(Object p0) {
    return 'يمكن استخدام القائمة المنسدلة \"$p0\" للوصول إلى نسخ مخصصة/مستضافة ذاتيًا لأي مصدر.';
  }

  @override
  String get badDownload => 'تعذر تحليل ملف APK (تنزيل غير متوافق أو غير مكتمل)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'مشاركة التطبيقات الجديدة مع AppVerifier (إذا كان متاحًا)';

  @override
  String get appVerifierInstructionToast => 'شارك مع AppVerifier، ثم عد هنا عندما تكون جاهزًا.';

  @override
  String get wiki => 'المساعدة/ويكي';

  @override
  String get allowInsecure => 'السماح بطلبات HTTP غير الآمنة';

  @override
  String get stayOneVersionBehind => 'البقاء بإصدار واحد خلف الأحدث';

  @override
  String get useFirstApkOfVersion => 'التحديد التلقائي الأول من بين عدة ملفات APK';

  @override
  String get refreshBeforeDownload => 'تحديث تفاصيل التطبيق قبل التنزيل';

  @override
  String get tencentAppStore => 'متجر Tencent للتطبيقات';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'متجر vivo للتطبيقات (CN)';

  @override
  String get name => 'الاسم';

  @override
  String get smartname => 'الاسم (ذكي)';

  @override
  String get sortMethod => 'طريقة الترتيب';

  @override
  String get welcome => 'مرحبًا';

  @override
  String get documentationLinksNote => 'تحتوي صفحة Updatium على GitHub المرتبطة أدناه على روابط لمقاطع فيديو، مقالات، مناقشات وموارد أخرى ستساعدك على فهم كيفية استخدام التطبيق.';

  @override
  String get batteryOptimizationNote => 'لاحظ أن التنزيلات في الخلفية قد تعمل بشكل أكثر موثوقية إذا قمت بتعطيل تحسينات بطارية النظام لـ Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'فشل حذف الملف (حاول حذفه يدويًا ثم حاول مرة أخرى): \"$p0\"';
  }

  @override
  String get foregroundService => 'الحصول على خدمة الحصول على خدمة المقدمة';

  @override
  String get foregroundServiceExplanation => 'استخدام خدمة مقدمة للتحقق من التحديثات (أكثر موثوقية وتستهلك طاقة أكبر)';

  @override
  String get fgServiceNotice => 'هذا الإخطار مطلوب للتحقق من التحديث في الخلفية (يمكن إخفاؤه في إعدادات نظام التشغيل)';

  @override
  String get excludeSecrets => 'استعبد الأسرار';

  @override
  String get ghReqPrefix => 'نسخة \"sky22333/hubproxy\" لطلبات GitHub';

  @override
  String get includeZips => 'ضمّن ملفات ZIP';

  @override
  String get zippedApkFilterRegEx => 'تصفية ملفات APK داخل ZIP';

  @override
  String get googleVerificationWarningP1 => '(جوجل) أعلن أنه، بدءاً من عام 2026/2027، كل التطبيقات على أجهزة (أندرويد) مصدقة ستطلب من المطور تقديم تفاصيل الهوية الشخصية مباشرة إلى (غوغل).\n\nبعد ذلك، قد يتوقف Updatium عن العمل على أجهزة أندرويدية معتمدة.';

  @override
  String get googleVerificationWarningP2 => 'Go to https://keepandroidopen.org/ for more information.';

  @override
  String get googleVerificationWarningP3 => 'ونلاحظ أنه في الأجل القصير، قد يظل من الممكن تركيب عملية \" غير متوافقة \" من خلال عملية \" تدفق سريع \" وعد غوغل بتنفيذها بعد رد فعل واسع النطاق على إعلانهم، ولكنهم لم يفصلوا كيف سينجح ذلك حتى لا يتضح ما إذا كان سيحافظ حقا على حريات المستعملين بأي طريقة عملية.\n\nعلى أية حال، حركة (جوجل) خطوة هامة نحو نهاية الحوسبة المجانية ذات الأغراض العامة للأفراد\n\nوينبغي ألا يتأثر هذا النظام غير المصدق عليه، مثل غرافينيوس، طالما يسمح له باستمرار وجوده.';

  @override
  String get multipleSigners => 'عدد من الدول الموقعة';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'إزالة التطبيقات؟',
      one: 'إزالة التطبيق؟',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد $count دقائق',
      one: 'طلبات كثيرة جدًا (حُدد المعدل) - حاول مرة أخرى بعد $count دقيقة',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'واجه التحقق من التحديثات في الخلفية $count، سيتم جدولة محاولة أخرى بعد $count دقائق',
      one: 'واجه التحقق من التحديثات في الخلفية $count، سيتم جدولة محاولة أخرى بعد $count دقيقة',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'وجد التحقق من التحديثات في الخلفية $count تحديثات - سيتم إخطار المستخدم إذا لزم الأمر',
      one: 'وجد التحقق من التحديثات في الخلفية $count تحديث - سيتم إخطار المستخدم إذا لزم الأمر',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تطبيقات',
      one: '$count تطبيق',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count روابط',
      one: '$count رابط',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count دقائق',
      one: '$count دقيقة',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ساعات',
      one: '$count ساعة',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count أيام',
      one: '$count يوم',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'مُسح $n سجلات (قبل = $before, بعد = $after)',
      one: 'مُسح $n سجل (قبل = $before, بعد = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count و$count تطبيقات أخرى لديها تحديثات.',
      one: '$count وتطبيق واحد آخر لديه تحديثات.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count و$count تطبيقات أخرى حُدثت.',
      one: '$count وتطبيق واحد آخر حُدث.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'فشل تحديث $count و$count تطبيقات أخرى.',
      one: 'فشل تحديث $count وتطبيق واحد آخر.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count و$count تطبيقات أخرى قد حُدثت.',
      one: '$count وتطبيق واحد آخر قد حُدث.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ملفات APK',
      one: 'ملف APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count بصمات الشهادة',
      one: 'بصمة الشهادة',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'إخلاء مسؤولية الأمان والقانوني';

  @override
  String get license => 'الرخصة';

  @override
  String get licenseText => 'هذا التطبيق موزع تحت رخصة GPL v3.';

  @override
  String get disclaimer => 'إخلاء المسؤولية';

  @override
  String get disclaimerText => 'هذا التطبيق لا يوزع أو يستضيف أو يتحقق من أي من التطبيقات الخارجية. يتحمل المستخدم المسؤولية الكاملة عن سلامة وقانونية أي برنامج يتم تثبيته من خلال هذه الأداة.\n\nhttps://github.com/omeritzics/Updatium هو المكان الرسمي الوحيد لتنزيل Updatium - يُنصح بشدة بعدم تنزيله من أماكن أخرى حيث أن تنزيله من مصادر غير رسمية غير آمن.';

  @override
  String get privacy => 'الخصوصية';

  @override
  String get privacyText => 'هذا التطبيق يركز على الخصوصية ولا يجمع البيانات الشخصية.';

  @override
  String get acceptAndContinue => 'موافق ومتابعة';

  @override
  String get decline => 'رفض';
}
