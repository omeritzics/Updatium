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
class TranslationsHe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.he,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <he>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHe _root = this; // ignore: unused_field

	@override 
	TranslationsHe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHe(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'אין זו כתובת יישום תקנית של {}';
	@override String get noReleaseFound => 'לא נמצאה מהדורה מתאימה';
	@override String get noVersionFound => 'לא היה ניתן להסיק את מספר הגרסה';
	@override String get urlMatchesNoSource => 'הכתובת אינה מתאימה למקור ידוע';
	@override String get cantInstallOlderVersion => 'לא ניתן להתקין גרסה ישנה יותר של יישום';
	@override String get appIdMismatch => 'מזהה החבילה שהורדה אינו זהה למזהה היישום הנוכחי';
	@override String get functionNotImplemented => 'פונקציה זו עדיין אינה מיושמת במחלקה זו';
	@override String get placeholder => 'ממלא מקום';
	@override String get someErrors => 'אירעו מספר שגיאות';
	@override String get unexpectedError => 'שגיאה לא צפויה';
	@override String get ok => 'אישור';
	@override String get and => 'וגם';
	@override String get githubPATLabel => 'אסימון גישה אישי אל GitHub';
	@override String get includePrereleases => 'לכלול גרסאות קדם־שחרור';
	@override String get fallbackToOlderReleases => 'נסיגה לגרסאות ישנות יותר';
	@override String get filterReleaseTitlesByRegEx => 'סינון כותרות מהדורות לפי ביטוי רגולרי';
	@override String get invalidRegEx => 'ביטוי רגולרי לא תקני';
	@override String get noDescription => 'אין תיאור';
	@override String get cancel => 'ביטול';
	@override String get kContinue => 'המשך';
	@override String get requiredInBrackets => '(חובה)';
	@override String get dropdownNoOptsError => 'שגיאה: על תפריטים נפתחים להציג לפחות אפשרות אחת';
	@override String get color => 'צבע';
	@override String get standard => 'סטנדרטי';
	@override String get custom => 'מותאם אישית';
	@override String get primary => 'צבעים ראשיים';
	@override String get useMaterialYou => 'שימוש בצבעי Material You';
	@override String get githubStarredRepos => 'מאגרי GitHub מסומנים בכוכב';
	@override String get gettingAppInfo => 'מתקבל מידע על היישום';
	@override String get username => 'שם משתמש';
	@override String get wrongArgNum => 'סופק מספר ארגומנטים שגוי';
	@override String get xIsTrackOnly => 'המקור {} מיועד למעקב עדכונים בלבד';
	@override String get source => 'מקור';
	@override String get app => 'יישום';
	@override String get appsFromSourceAreTrackOnly => 'יישומים ממקור זה ניתנים למעקב עדכונים בלבד.';
	@override String get youPickedTrackOnly => 'בחרת באפשרות ‚מעקב עדכונים בלבד’.';
	@override String get trackOnlyAppDescription => 'יתבצע מעקב אחר עדכונים ליישום זה, אבל היישום Updatium לא יוכל להוריד או להתקין אותו.';
	@override String get cancelled => 'בוטל';
	@override String get appAlreadyAdded => 'היישום כבר נוסף';
	@override String get alreadyUpToDateQuestion => 'היישום כבר מעודכן?';
	@override String get addApp => 'הוספת יישום';
	@override String get appSourceURL => 'כתובת המקור של היישום';
	@override String get error => 'שגיאה';
	@override String get add => 'הוספה';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'חיפוש (מספר מקורות בלבד)';
	@override String get search => 'חיפוש';
	@override String get searching => 'מתבצע חיפוש';
	@override String get additionalOptsFor => 'אפשרויות נוספות עבור {}';
	@override String get supportedSources => 'מקורות נתמכים';
	@override String get trackOnlyInBrackets => '(למעקב עדכונים בלבד)';
	@override String get searchableInBrackets => '(ניתן לחיפוש)';
	@override String get appsString => 'יישומים';
	@override String get categoryX => 'קטגוריה: {}';
	@override String get collapse => 'צמצום';
	@override String get downloadProgress => 'התקדמות ההורדה';
	@override String get expand => 'הרחבה';
	@override String get noApps => 'ברוך בואך!';
	@override String get noAppsSubtext => 'אפשר להוסיף את היישום הראשון בעזרת לחיצה על ‚הוספת יישום’ למטה.';
	@override String get noAppsForFilter => 'אין יישומים לסינון';
	@override String get byX => 'מאת {}';
	@override String get percentProgress => 'התקדמות: {}%';
	@override String get pleaseWait => 'נא להמתין';
	@override String get updateAvailable => 'עדכון זמין';
	@override String get notInstalled => 'לא מותקן';
	@override String get openAppDetails => 'פתיחת פרטי היישום';
	@override String get pinned => 'מוצמד';
	@override String get pinnedApp => 'מוצמד: {}, {}';
	@override String get upToDate => 'עדכני';
	@override String get pseudoVersion => 'מעֵין־גרסה';
	@override String get selectAll => 'לבחור הכול';
	@override String get deselectX => 'ביטול הבחירה של {}';
	@override String get xWillBeRemovedButRemainInstalled => 'היישום {} יוסר מ־Updatium אך יישאר מותקן במכשיר.';
	@override String get removeSelectedAppsQuestion => 'להסיר את היישומים שנבחרו?';
	@override String get removeSelectedApps => 'הסרת היישומים שנבחרו';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'הוסר יישום אחד',
		two: 'הוסרו שני יישומים',
		other: 'הוסרו {count} יישומים',
	);
	@override String get updateX => 'עדכון {}';
	@override String get installX => 'התקנת {}';
	@override String get markXTrackOnlyAsUpdated => 'סימון {}\n(למעקב עדכונים בלבד)\nכמעודכן';
	@override String get changeX => 'שינוי {}';
	@override String get installUpdateApps => 'התקנת/עדכון יישומים';
	@override String get installUpdateSelectedApps => 'התקנת/עדכון היישומים שנבחרו';
	@override String get markXSelectedAppsAsUpdated => 'לסמן את {} היישומים שנבחרו כמעודכנים?';
	@override String get no => 'לא';
	@override String get yes => 'כן';
	@override String get markSelectedAppsUpdated => 'סימון היישומים שנבחרו כמעודכנים';
	@override String get pinToTop => 'הצמדה לחלק העליון';
	@override String get unpinFromTop => 'ביטול הצמדה לחלק העליון';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'לאפס את מצב ההתקנה ליישומים שנבחרו?';
	@override String get installStatusOfXWillBeResetExplanation => 'מצב ההתקנה יתאפס לכל היישומים הנבחרים.\n\nפעולה זו יכולה לעזור כאשר גרסת היישום שמופיעה ב־Updatium שגויה בעקבות עדכונים שנכשלו או בעיות אחרות.';
	@override String get customLinkMessage => 'הקישורים האלה עובדים במכשירים שבהם מותקן היישום Updatium';
	@override String get shareAppConfigLinks => 'שיתוף תצורת היישום בתור קישור HTML';
	@override String get resetInstallStatus => 'איפוס מצב התקנה';
	@override String get more => 'עוד';
	@override String get removeOutdatedFilter => 'סינון להסרת יישומים שאינם מעודכנים';
	@override String get removeFilter => 'הסרת סינון';
	@override String get save => 'שמירה';
	@override String get showOutdatedOnly => 'הצגת יישומים לא מעודכנים בלבד';
	@override String get filter => 'סינון';
	@override String get filterApps => 'סינון יישומים';
	@override String get filterDays => 'סינון ימים';
	@override String get appName => 'שם היישום';
	@override String get author => 'מפתחים';
	@override String get upToDateApps => 'יישומים מעודכנים';
	@override String get nonInstalledApps => 'יישומים לא מותקנים';
	@override String get importExport => 'ייבוא/ייצוא';
	@override String get settings => 'הגדרות';
	@override String get exportedTo => 'בוצע ייצוא אל {}';
	@override String get updatiumExport => 'ייצוא מ־Updatium';
	@override String get failedToExport => 'הייצוא נכשל';
	@override String get exportAlreadyInProgress => 'כבר מתבצע ייצוא';
	@override String get exportDirNotAccessible => 'התיקייה לייצוא אינה נגישה';
	@override String get exportDirUriEmpty => 'כתובת תיקיית הייצוא ריקה';
	@override String get failedToCreateExportFile => 'נכשלה יצירת קובץ הייצוא';
	@override String get invalidInput => 'קלט לא תקני';
	@override String get importedX => 'בוצא ייבוא של {}';
	@override String get updatiumImport => 'ייבוא אל Updatium';
	@override String get importFromURLList => 'ייבוא מרשימת כתובות';
	@override String get searchQuery => 'מילת חיפוש';
	@override String get appURLList => 'רשימת כתובות יישומים';
	@override String get line => 'שורה';
	@override String get searchX => 'חיפוש {}';
	@override String get noResults => 'אין תוצאות';
	@override String get importX => 'ייבוא {}';
	@override String get importedAppsIdDisclaimer => 'יישומים מיובאים עלולים להופיע בטעות בתור יישומים „לא מותקנים”.\nבשביל לתקן זאת, יש להתקין אותם פעם נוספת דרך Updatium.\nנתוני היישום לא אמורים להיות מושפעים מכך.\n\nהערה זו תקפה רק לגבי כתובות ושיטות ייבוא מצד שלישי.';
	@override String get importErrors => 'שגיאות במהלך הייבוא';
	@override String get importedXOfYApps => 'יובאו {} מתוך {} יישומים.';
	@override String get followingURLsHadErrors => 'הכתובות הבאות נתקלו בשגיאות:';
	@override String get selectURL => 'בחירת כתובת';
	@override String get selectURLs => 'בחירת כתובות';
	@override String get pick => 'בחירה';
	@override String get theme => 'ערכת נושא';
	@override String get dark => 'כהה';
	@override String get light => 'בהירה';
	@override String get followSystem => 'כמו המערכת';
	@override String get followSystemThemeExplanation => 'שימוש בערכת נושא כמו המערכת אפשרי רק בזכות יישומי צד־שלישי';
	@override String get useBlackTheme => 'שימוש בצבע שחור מוחלט לערכת הנושא הכהה';
	@override String get appSortBy => 'מיון יישומים לפי';
	@override String get authorName => 'מפתחים/שם';
	@override String get nameAuthor => 'שם/מפתחים';
	@override String get asAdded => 'כפי שנוספו';
	@override String get appSortOrder => 'סדר מיון היישומים';
	@override String get ascending => 'עולה';
	@override String get descending => 'יורד';
	@override String get bgUpdateCheckInterval => 'מרווח זמן לבדיקת עדכונים ברקע';
	@override String get neverManualOnly => 'אף פעם - באופן ידני בלבד';
	@override String get appearance => 'מראה';
	@override String get pinUpdates => 'הצמדת עדכונים לחלק העליון של רשימת היישומים';
	@override String get updates => 'עדכונים';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'לפי מקור';
	@override String get appSource => 'מקור היישום';
	@override String get appSourceHint => 'פתיחת מאגר קוד המקור של היישום';
	@override String get noLogs => 'אין יומנים';
	@override String get appLogs => 'יומני יישום';
	@override String get appLogsHint => 'צפייה ביומני היישום';
	@override String get close => 'סגירה';
	@override String get share => 'שיתוף';
	@override String get appNotFound => 'היישום לא נמצא';
	@override String get networkError => 'החיבור לרשת נכשל';
	@override String get invalidUrlFormat => 'תבנית כתובת לא תקנית';
	@override String get accessDenied => 'הגישה נדחתה';
	@override String get importFailed => 'הייבוא נכשל';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'נא לבחור קובץ APK';
	@override String get appHasMoreThanOnePackage => 'ליישום {} יש יותר מחבילה אחת:';
	@override String get deviceSupportsXArch => 'המכשיר שלך תומך בארכיטקטורת המעבד {}.';
	@override String get deviceSupportsFollowingArchs => 'המכשיר שלך תומך בארכיטקטורות המעבד הבאות:';
	@override String get warning => 'אזהרה';
	@override String get sourceIsXButPackageFromYPrompt => 'כתובת המקור של היישום היא ‚{}’ אבל חבילת המהדורה מגיעה מהכתובת ‚{}’. להמשיך?';
	@override String get updatesAvailable => 'עדכונים זמינים';
	@override String get updatesAvailableNotifDescription => 'התראה למשתמש על עצם כך שיש עדכונים זמינים ליישום אחד או יותר שבמעקב בתוך Updatium';
	@override String get noNewUpdates => 'אין עדכונים חדשים.';
	@override String get xHasAnUpdate => 'יש עדכון ליישום {}.';
	@override String get appsUpdated => 'היישומים עודכנו';
	@override String get appsNotUpdated => 'עדכון היישומים נכשל';
	@override String get appsUpdatedNotifDescription => 'Notifies the user that updates to one or more apps were applied in the background';
	@override String get xWasUpdatedToY => '{} עודכן לגרסה {}.';
	@override String get xWasNotUpdatedToY => 'נכשל העדכון של {} לגרסה {}.';
	@override String get errorCheckingUpdates => 'שגיאה בעת  בדיקת עדכונים';
	@override String get errorCheckingUpdatesNotifDescription => 'התראה שמופיעה כאשר נכשלת בדיקת העדכונים ברקע';
	@override String get appsRemoved => 'הוסרו יישומים';
	@override String get undo => 'החזרה';
	@override String get appsRemovedNotifDescription => 'התראה למשתמש על עצם כך שהוסר יישום אחד או יותר בשל שגיאות במהלך טעינתו';
	@override String get xWasRemovedDueToErrorY => 'היישום {} הוסר בשל שגיאה זו: {}';
	@override String get completeAppInstallation => 'השלמת התקנת היישום';
	@override String get updatiumMustBeOpenToInstallApps => 'על Updatium להיות פתוח לצורך התקנת יישומים';
	@override String get completeAppInstallationNotifDescription => 'הודעה למשתמש עם בקשה לחזור ליישום Updatium לצורך סיום ההתקנה של יישום';
	@override String get checkingForUpdates => 'בדיקת עדכונים';
	@override String get checkForUpdates => 'בדיקת עדכונים';
	@override String get checkingForUpdatesNotifDescription => 'Transient notification that appears when checking for updates';
	@override String get pleaseAllowInstallPerm => 'נא לאפשר ל־Updatium להתקין יישומים';
	@override String get trackOnly => 'למעקב עדכונים בלבד';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'שגיאה {}';
	@override String get versionCorrectionDisabled => ' תיקון הגרסה מושבת (נראה שהתוסף לא עובד)';
	@override String get unknown => 'לא ידוע';
	@override String get none => 'ללא';
	@override String get all => 'הכול';
	@override String get never => 'אף פעם';
	@override String get latestVersion => 'גרסה עדכנית';
	@override String get installedVersionX => 'גרסה מותקנת: {}';
	@override String get lastUpdateCheckX => 'בדיקת העדכונים האחרונה: {}';
	@override String get remove => 'הסרה';
	@override String get quickLinks => 'קישורים מהירים';
	@override String get yesMarkUpdated => 'כן, לסמן כמעודכן';
	@override String get fdroid => 'מאגר F-Droid הרשמי';
	@override String get appIdOrName => 'מזהה או שם של יישום';
	@override String get appId => 'מזהה יישום';
	@override String get appWithIdOrNameNotFound => 'לא נמצא יישום עם שם או מזהה זה';
	@override String get reposHaveMultipleApps => 'מאגרים עשויים להכיל יישומים מרובים';
	@override String get fdroidThirdPartyRepo => 'מאגר צד שלישי של F-Droid';
	@override String get codeberg => 'Codeberg';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'יישום Telegram';
	@override String get html => 'HTML';
	@override String get install => 'התקנה';
	@override String get markInstalled => 'סימון כמותקן';
	@override String get update => 'עדכון';
	@override String get updated => 'מעודכן';
	@override String get markUpdated => 'סימון כמעודכן';
	@override String get download => 'הורדה';
	@override String get additionalOptions => 'אפשרויות נוספות';
	@override String get disableVersionDetection => 'השבתת זיהוי גרסה';
	@override String get noVersionDetectionExplanation => 'יש להשתמש באפשרות זו רק עבור יישומים שזיהוי הגרסה לא עובד טוב עבורם.';
	@override String get downloadingX => 'מתבצעת הורדת {}';
	@override String get downloadX => 'הורדת {}';
	@override String get downloadedX => 'בוצעה הורדת {}';
	@override String get editCategory => 'עריכת קטגוריה';
	@override String get releaseAsset => 'משאב גרסה';
	@override String get downloadNotifDescription => 'התראה למשתמש על כך שמתבצעת הורדה של יישום';
	@override String get noAPKFound => 'לא נמצא קובץ APK';
	@override String get noVersionDetection => 'ללא זיהוי גרסה';
	@override String get categorize => 'שיוך לקטגוריה';
	@override String get categories => 'קטגוריות';
	@override String get category => 'קטגוריה';
	@override String get noCategory => 'ללא קטגוריה';
	@override String get noCategories => 'אין קטגוריות';
	@override String categoryDeleteQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'למחוק את הקטגוריה?',
		other: 'למחוק את הקטגוריות?',
	);
	@override String get categoryDeleteWarning => 'יבוטל השיוך לקטגוריות מכל היישומים שבקטגוריות שנמחקו.';
	@override String get addCategory => 'הוספת קטגוריה';
	@override String get label => 'תווית';
	@override String get language => 'שפה';
	@override String get copiedToClipboard => 'הועתק ללוח';
	@override String get storagePermissionDenied => 'הגישה לאחסון נדחתה';
	@override String get selectedCategorizeWarning => 'This will replace any existing category settings for the selected apps.';
	@override String get filterAPKsByRegEx => 'סינון קובצי APK לפי ביטוי רגולרי';
	@override String get removeFromUpdatium => 'הסרה מ־Updatium';
	@override String get uninstallFromDevice => 'הסרה מהמכשיר';
	@override String get onlyWorksWithNonVersionDetectApps => 'עובד רק עבור יישומים שזיהוי הגרסה מושבת אצלם.';
	@override String get releaseDateAsVersion => 'שימוש בתאריך פרסום המהדורה בתור מחרוזת הגרסה';
	@override String get releaseTitleAsVersion => 'שימוש בכותרת המהדורה בתור מחרוזת הגרסה';
	@override String get releaseDateAsVersionExplanation => 'This option should only be used for apps where version detection does not work correctly, but a release date is available.';
	@override String get changes => 'שינויים';
	@override String get releaseDate => 'תאריך שחרור גרסה';
	@override String get importFromURLsInFile => 'ייבוא כתובות מקובץ (כגון OPML)';
	@override String get versionDetectionExplanation => 'Reconcile version string with version detected from OS';
	@override String get versionDetection => 'זיהוי גרסה';
	@override String get standardVersionDetection => 'זיהוי גרסה סטנדרטי';
	@override String get groupByCategory => 'קיבוץ לפי קטגוריה';
	@override String get listView => 'תצוגת רשימה';
	@override String get gridView => 'תצוגת רשת';
	@override String get autoApkFilterByArch => 'ביצוע ניסיון לסינון קובצי APK לפי ארכיטקטורת המעבד במידת האפשר';
	@override String get autoLinkFilterByArch => 'ביצוע לסינון קישורים לפי ארכיטקטורת המעבד במידת האפשר';
	@override String get overrideSource => 'דריסת המקור';
	@override String get dontShowAgain => 'לא להציג שוב';
	@override String get dontShowTrackOnlyWarnings => 'לא להציג אזהרות מסוג ‚למעקב עדכונים בלבד’';
	@override String get dontShowAPKOriginWarnings => 'לא להציג אזהרות לגבי מקור קובץ ה־APK';
	@override String get moveNonInstalledAppsToBottom => 'העברת יישומים שאינם מותקנים לתחתית תצוגת היישומים';
	@override String get gitlabPATLabel => 'אסימון גישה אישי אל GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'מידע כללי';
	@override String get requiresCredentialsInSettings => 'ל־{} נחוצים פרטי זיהוי נוספים (בהגדרות)';
	@override String get checkOnStart => 'בדיקת עדכונים בעת הפעלת היישום';
	@override String get safeMode => 'מצב בטוח';
	@override String get safeModeDescription => 'מניעת שינויים לא רצויים ברשימת היישומים בעזרת הסתרת העמוד „הוספת יישום”. בשביל להשבית את המצב הבטוח יהיה צורך לפתוח את החלונית „מידע כללי”, ואז להקיש על מספר הגרסה מעל 500 פעמים';
	@override String get safeModeAddAppDisabled => 'עמוד הוספת היישומים מושבת במצב הבטוח';
	@override String get tryInferAppIdFromCode => 'ניסיון להסקת מזהה היישום מקוד המקור';
	@override String get removeOnExternalUninstall => 'להסיר אוטומטית מהרשימה יישומים שהוסרו מחוץ ליישום';
	@override String get pickHighestVersionCode => 'בחירה אוטומטית של קובץ ה־APK עם קוד הגרסה הגבוה ביותר';
	@override String get checkUpdateOnDetailPage => 'בדיקת עדכונים בעת פתיחת עמוד פרטי יישום';
	@override String get disablePageTransitions => 'השבתת הנפשות מעבר בין עמודים';
	@override String get reversePageTransitions => 'היפוך הנפשות מעבר בין עמודים';
	@override String get minStarCount => 'מספר כוכבים מינימלי';
	@override String get addInfoBelow => 'יש להוסיף מידע זה למטה.';
	@override String get addInfoInSettings => 'יש להוסיף מידע זה בהגדרות.';
	@override String get githubSourceNote => 'אפשר להימנע ממגבלות השימוש של GitHub בעזרת שימוש במפתח API.';
	@override String get sortByLastLinkSegment => 'Sort by only the last segment of the link';
	@override String get filterReleaseNotesByRegEx => 'סינון הערות מהדורה לפי ביטוי רגולרי';
	@override String get customLinkFilterRegex => ' של קובצי APK לפי ביטוי רגולרי (ברירת המחדל היא ‚‎.apk$‏’)';
	@override String get appsPossiblyUpdated => 'בוצעו ניסיונות לעדכון יישומים';
	@override String get appsPossiblyUpdatedNotifDescription => 'התראה למשתמש על עצם כך שייתכן כי הותקנו ברקע עדכונים ליישום אחד או יותר';
	@override String get xWasPossiblyUpdatedToY => 'ייתכן כי היישום {} עודכן לגרסה {}.';
	@override String get enableBackgroundUpdates => 'הפעלת עדכונים ברקע';
	@override String get backgroundUpdateReqsExplanation => 'עדכוני הרקע עשויים שלא לעבוד לחלק מהיישומים.';
	@override String get backgroundUpdateLimitsExplanation => 'ניתן לאמוד את ההצלחה של התקנה ברקע רק כאשר Updatium פתוח.';
	@override String get verifyLatestTag => 'אימות התגית ‚latest’ (גרסה עדכנית)';
	@override String get intermediateLinkRegex => 'Filter for an \'intermediate\' link to visit';
	@override String get filterByLinkText => 'סינון קישורים לפי טקסט קישור';
	@override String get matchLinksOutsideATags => 'התאמה לקישורים מחוץ לתגיות <a>';
	@override String get intermediateLinkNotFound => 'לא נמצא קישור ביניים';
	@override String get intermediateLink => 'קישור ביניים';
	@override String get exemptFromBackgroundUpdates => 'הוצאה מהעדכונים ברקע (אם מופעלים)';
	@override String get bgUpdatesOnWiFiOnly => 'השבתת עדכוני רקע כאשר המכשיר אינו מחובר לרשת אלחוטית (Wi-Fi)';
	@override String get bgUpdatesWhileChargingOnly => 'השבתת עדכוני רקע כאשר המכשיר אינו בהטענה';
	@override String get autoSelectHighestVersionCode => 'בחירה אוטומטית של קובץ ה־APK עם קוד הגרסה הגבוה ביותר';
	@override String get versionExtractionRegEx => 'ביטוי רגולרי לחילוץ מחרוזת הגרסה';
	@override String get trimVersionString => 'קיצוץ מחרוזת הגרסה בעזרת ביטוי רגולרי';
	@override String get matchGroupToUseForX => 'Match group to use for "{}"';
	@override String get matchGroupToUse => 'Match group to use for version string extraction RegEx';
	@override String get highlightTouchTargets => 'הדגשת מטרות מגע פחות ברורות';
	@override String get pickExportDir => 'בחירת תיקייה לייצוא';
	@override String get autoExportOnChanges => 'ייצוא אוטומטי בעת ביצוע שינויים';
	@override String get includeSettings => 'לכלול הגדרות';
	@override String get filterVersionsByRegEx => 'סינון גרסאות לפי ביטוי רגולרי';
	@override String get trySelectingSuggestedVersionCode => 'ניסיון לבחירת קובץ ה־APK עם מספר הגרסה המוצע';
	@override String get dontSortReleasesList => 'משיכת סדר המהדורות מה־API';
	@override String get reverseSort => 'היפוך סדר';
	@override String get takeFirstLink => 'בחירת הקישור הראשון';
	@override String get skipSort => 'דילוג על מיון לפי סדר';
	@override String get debugMenu => 'תפריט ניפוי שגיאות';
	@override String get bgTaskStarted => 'המשימה ברקע החלה - נא לעיין ביומן.';
	@override String get runBgCheckNow => 'הרצת בדיקת עדכונים ברקע כעת';
	@override String get versionExtractWholePage => 'החלת הביטוי הרגולרי לחילוץ מחרוזת הגרסה על כלל העמוד';
	@override String get installing => 'מתבצעת התקנה';
	@override String get skipUpdateNotifications => 'דילוג על התראות בנוגע לעדכונים';
	@override String get updatesAvailableNotifChannel => 'עדכונים זמינים';
	@override String get appsUpdatedNotifChannel => 'היישומים עודכנו';
	@override String get appsPossiblyUpdatedNotifChannel => 'בוצעו ניסיונות לעדכון';
	@override String get errorCheckingUpdatesNotifChannel => 'שגיאה בעת בדיקת עדכונים';
	@override String get appsRemovedNotifChannel => 'היישומים הוסרו';
	@override String get downloadingXNotifChannel => 'מתבצעת הורדת {}';
	@override String get completeAppInstallationNotifChannel => 'השלמת התקנת היישום';
	@override String get checkingForUpdatesNotifChannel => 'מתבצעת בדיקת עדכונים';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'בדיקת עדכונים רק ליישומים מותקנים ויישומים למעקב עדכונים בלבד';
	@override String get supportFixedAPKURL => 'תמיכה בכתובות קבועות של קובצי APK';
	@override String get selectX => 'בחירת {}';
	@override String get parallelDownloads => 'לאפשר מספר הורדות במקביל';
	@override String get useShizuku => 'שימוש ב־Shizuku או Sui להתקנה';
	@override String get shizukuBinderNotFound => 'שירות Shizuku אינו פעיל';
	@override String get shizukuOld => 'גרסה ישנה של Shizuku (<11) - נא לעדכן';
	@override String get shizukuOldAndroidWithADB => '‏Shizuku פועל על אנדרואיד 8.1 ומעלה עם ADB - נא לעדכן את גרסת אנדרואיד או להשתמש ב־Sui במקום';
	@override String get shizukuPretendToBeGooglePlay => 'הגדרת Google Play כמקור ההתקנה (אם נעשה שימוש ב־Shizuku)';
	@override String get useSystemFont => 'שימוש בגופן המערכת';
	@override String get useVersionCodeAsOSVersion => 'שימוש בקוד הגרסה של היישום בתור הגרסה שזוהתה במערכת ההפעלה';
	@override String get requestHeader => 'כותרת בקשה';
	@override String get useLatestAssetDateAsReleaseDate => 'שימוש בתאריך העלאת משאב הגרסה האחרון בתור תאריך פרסום המהדורה';
	@override String get defaultPseudoVersioningMethod => 'שיטת ברירת מחדל למספור מעֵין־גרסאות';
	@override String get partialAPKHash => 'גיבוב APK חלקי';
	@override String get APKLinkHash => 'גיבוב קישור APK';
	@override String get directAPKLink => 'קישור ישיר לקובץ APK';
	@override String get pseudoVersionInUse => 'נעשה שימוש במעֵין־גרסה';
	@override String get installedVersion => 'גרסה מותקנת';
	@override String get installed => 'מותקנים';
	@override String get notInstalledApps => 'לא מותקנים';
	@override String get latest => 'גרסה עדכנית';
	@override String get invertRegEx => 'היפוך ביטוי רגולרי';
	@override String get note => 'הערה';
	@override String get selfHostedNote => 'הרשימה הנפתחת "{}" מאפשרת למשוך קבצים מעותקים מותאמים אישית/באירוח עצמי של כל מקור שהוא.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'לא היה ניתן לפענח את קובץ ה־APK (בשל חוסר תאימות או הורדה חלקית)';
	@override String get beforeNewInstallsShareToAppVerifier => 'שיתוף יישומים חדשים עם AppVerifier (אם זמין)';
	@override String get appVerifierInstructionToast => 'שיתוף עם AppVerifier, ואז חזרה לכאן כשהיישום מוכן.';
	@override String get wiki => 'עזרה/ויקי';
	@override String get wikiHint => 'פתיחת תיעוד הוויקי של Updatium';
	@override String get allowInsecure => 'לאפשר בקשות חיבור לא מאובטחות מסוג HTTP';
	@override String get stayOneVersionBehind => 'להישאר גרסה אחת מאחור';
	@override String get useFirstApkOfVersion => 'בחירה אוטומטית של הראשון מתוך קובצי APK מרובים';
	@override String get refreshBeforeDownload => 'רענון פרטי היישום לפני ההורדה';
	@override String get tencentAppStore => '‏Tencent App Store';
	@override String get coolApk => '‏CoolApk';
	@override String get vivoAppStore => '‏vivo App Store (סין)';
	@override String get name => 'שם';
	@override String get smartname => 'שם (שיטה חכמה)';
	@override String get smartPlusDate => 'שיטה חכמה + תאריך';
	@override String get sortMethod => 'שיטת מיון';
	@override String get welcome => 'ברוך בואך';
	@override String get batteryOptimizationNote => 'לתשומת ליבך, ייתכן שההורדות ברקע יעבדו בצורה אמינה יותר אם יופעל „שירות חזיתי” בהגדרות של Updatium או אם יושבת מיטוב הסוללה של Updatium בהגדרות מערכת ההפעלה.';
	@override String get fileDeletionError => 'מחיקת הקובץ נכשלה (כדאי לנסות למחוק אותו ידנית ואז לנסות שוב): "{}"';
	@override String get foregroundService => 'שירות העדכון החזיתי של Updatium';
	@override String get foregroundServiceExplanation => 'שימוש בשירות חזיתי לבדיקת העדכונים (אמין יותר, צורך יותר חשמל)';
	@override String get fgServiceNotice => 'התראה זו נחוצה לבדיקת העדכונים ברקע (ניתן להסתיר אותה בהגדרות מערכת ההפעלה)';
	@override String get excludeSecrets => 'החרגת פרטים סודיים';
	@override String get GHReqPrefix => 'דוגמה לבקשות מ־GitHub: ‏‚omeritzics/Updatium’';
	@override String get includeZips => 'לכלול קובצי ZIP';
	@override String get zippedApkFilterRegEx => 'סינון קובצי APK בתוך קובץ ZIP';
	@override String get multipleSigners => 'חותמים מרובים';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'להסיר את היישום?',
		two: 'להסיר את שני היישומים?',
		other: 'להסיר את היישומים?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'יותר מדי בקשות (הגעת למכסת השימוש) - נא לנסות שוב בעוד דקה',
		two: 'יותר מדי בקשות (הגעת למכסת השימוש) - נא לנסות שוב בעוד שתי דקות',
		other: 'יותר מדי בקשות (הגעת למכסת השימוש) - נא לנסות שוב בעוד {count} דקות',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'בדיקת העדכונים ברקע נתקלה ב{error}, ניסיון בדיקה חוזר מתוכנן לעוד דקה',
		two: 'בדיקת העדכונים ברקע נתקלה ב{error}, ניסיון בדיקה חוזר מתוכנן לעוד שתי דקות',
		other: 'בדיקת העדכונים ברקע נתקלה ב{error}, ניסיון בדיקה חוזר מתוכנן לעוד {count}} דקות',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'בדיקת העדכונים ברקע מצאה עדכון אחד - המשתמש יקבל התראה במידת הצורך',
		two: 'בדיקת העדכונים ברקע מצאה שני עדכונים - המשתמש יקבל התראה במידת הצורך',
		other: 'בדיקת העדכונים ברקע מצאה {count} עדכונים - המשתמש יקבל התראה במידת הצורך',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'יישום אחד',
		two: 'שני יישומים',
		other: '{count} יישומים',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'כתובת אחת',
		two: 'שתי כתובות',
		other: '{count} כתובות',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'דקה אחת',
		two: 'שתי דקות',
		other: '{count} דקות',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'שעה אחת',
		two: 'שעתיים',
		other: '{count} שעות',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'יום אחד',
		two: 'יומיים',
		other: '{count} ימים',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'נוקה יומן אחד  (לפני = {before}, אחרי = {after})',
		two: 'נוקו שני יומנים (לפני = {before}, אחרי = {after})',
		other: 'נוקו {n} יומנים (לפני = {before}, אחרי = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'ליישום {app} ולעוד יישום יש עדכונים.',
		two: 'ליישום {app} ולעוד שני יישומים יש עדכונים.',
		other: 'ליישום {app} ולעוד {count} יישומים יש עדכונים.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'היישום {app} ועוד יישום נוסף עודכנו.',
		two: '{app} ועוד שני יישומים נוספים עודכנו.',
		other: '{app} ועוד {count} יישומים נוספים עודכנו.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'נכשל העדכון של {app} ועוד יישום אחד.',
		two: 'נכשל העדכון של {app} ועוד שני יישומים.',
		other: 'נכשל העדכון של {app} ועוד {count} יישומים.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'ייתכן כי {app} ועוד יישום אחד התעדכנו.',
		two: 'ייתכן כי {app} ועוד שני יישומים התעדכנו.',
		other: 'ייתכן כי {app} ועוד {count} יישומים התעדכנו.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'קובץ APK אחד',
		two: 'שני קובצי APK',
		other: '{count} קובצי APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n,
		one: 'גיבוב תעודה',
		other: 'גיבובי תעודה',
	);
	@override String get securityDisclaimerTitle => 'כתב ויתור בנוגע לאבטחה ונושאים משפטיים';
	@override String get license => 'רישיון';
	@override String get licenseText => 'יישום זה מופץ תחת רישיון GPL v3.';
	@override String get disclaimer => 'כתב ויתור';
	@override String get disclaimerText => 'יישום זה אינו מפיץ, מארח או מאמת יישומים חיצוניים כלשהם. המשתמש נושא באחריות המלאה לביטחון וחוקיות כל תוכנה המותקנת באמצעות כלי זה.\n\nhttps://github.com/omeritzics/Updatium הוא המקום הרשמי היחיד להוריד את Updatium - מומלץ מאוד לא להוריד אותו ממקומות אחרים מכיוון שההורדה ממקורות לא רשמיים אינה בטוחה.';
	@override String get privacy => 'פרטיות';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'קבלה והמשך';
	@override String get decline => 'סירוב';
	@override String get delete => 'מחיקה';
	@override String get deleteCategory => 'מחיקת קטגוריה';
	@override String get githubStarPromptTitle => 'כיף לך להשתמש ב־Updatium?';
	@override String get githubStarPromptContent => '‏Updatium הוא מיזם קוד פתוח התנדבותי וקהילתי, שעל פיתוחו אני עובד בזמני הפנוי. אם ברצונך לתמוך במיזם, נא לשקול להעניק לו כוכב ב־GitHub בשביל לעזור למיזם להגיע לכמה שיותר משתמשים ותורמים. הבקשה הזו לא תופיע שוב. תודה מראש! :)';
	@override String get githubStarPromptStar => 'הענקת כוכב';
	@override String get githubStarPromptDontShowAgain => 'לא להציג שוב';
	@override String get sourceCode => 'קוד מקור';
	@override String get developedBy => 'בפיתוח על ידי';
	@override String get appDescription => 'קטלוג יישומים הניתן להתאמה אישית עבור אנדרואיד, המאפשר לעדכן את היישומים ישירות מהמקורות לקובצי ה־APK שלהם.';
	@override String get safeModeEnabled => 'המצב הבטוח מופעל';
	@override String get safeModeDisabled => 'המצב הבטוח מושבת';
	@override String get safeModeDisable => 'השבתת המצב הבטוח';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'ניהול המצב הבטוח';
	@override String get safeModeSetupDescription => 'יש לקבוע סיסמה בשביל להפעיל את המצב הבטוח. לאחר הפעלתו, המצב הבטוח ימנע הוספה של יישומים חדשים וניתן להשביתו רק בעזרת הסיסמה.';
	@override String get safeModeToggleDescription => 'יש להקליד את הסיסמה שלך בשביל להפעיל או להשבית את המצב הבטוח.';
	@override String get safeModeSetPassword => 'קביעת סיסמה';
	@override String get safeModeConfirmPassword => 'אישור הסיסמה';
	@override String get safeModeEnterPassword => 'נא להקליד סיסמה';
	@override String get safeModePasswordHint => 'נדרשים 8 תווים לפחות';
	@override String get safeModePasswordTooShort => 'הסיסמה חייבת להכיל לפחות 8 תווים';
	@override String get safeModePasswordMismatch => 'הסיסמאות אינן תואמות';
	@override String get safeModePasswordIncorrect => 'סיסמה שגויה';
	@override String get safeModePasswordError => 'שגיאה בעת קביעת הסיסמה. נא לנסות שוב.';
	@override String get safeModeEnable => 'הפעלת המצב הבטוח';
	@override String get safeModeToggle => 'השבתת המצב הבטוח';
	@override String get safeModeTapsRemaining => 'נותרו {count} הקשות עד להשבתת המצב הבטוח';
	@override String get safeModeEnabledHint => 'המצב הבטוח מופעל. יש להקיש על מספר הגרסה שבעמוד ההגדרות פעמים רבות בשביל להשבית אותו.';
	@override String get preventUninstallation => 'מניעת הסרה';
	@override String get preventUninstallationDescription => 'מניעת ההסרה של Updatium כאשר המצב הבטוח מופעל';
	@override String get deviceAdminRequired => 'נדרשת הרשאת מנהל מכשיר לצורך מניעת ההסרה';
	@override String get turnOffSafeModeFirst => 'נא לכבות את המצב הבטוח תחילה';
	@override String get gotIt => 'הבנתי';
	@override String get version => 'גרסה';
	@override String get open => 'פתיחה';
	@override String get added => 'נוסף';
	@override String get fileExists => 'הקובץ כבר קיים';
	@override String get fileExistsPrompt => 'כבר קיים קובץ בשם זה. נא להקליד שם חדש לקובץ שיוּרד:';
	@override String get fileName => 'שם הקובץ';
	@override String get downloadCancelled => 'ההורדה בוטלה';
	@override String get showInFileManager => 'הצגה במנהל הקבצים';
	@override String get usedOpenSourcePackages => 'חבילות קוד פתוח בשימוש';
	@override String get pleaseWaitOperationInProgress => 'נא להמתין, מתבצעת פעולה';
	@override String get selectSourceFirst => 'נא לבחור מקור תחילה';
	@override String get completeAdditionalSettingsFirst => 'נא להשלים את ההגדרות הנוספות תחילה';
	@override String get addAppToCollection => 'הוספת היישום הזה לאוסף';
	@override String get enterSearchTermsFirst => 'נא להקליד מונחים לחיפוש תחילה';
	@override String get searchForApps => 'חיפוש יישומים';
}

/// The flat map containing all translations for locale <he>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'אין זו כתובת יישום תקנית של {}',
			'noReleaseFound' => 'לא נמצאה מהדורה מתאימה',
			'noVersionFound' => 'לא היה ניתן להסיק את מספר הגרסה',
			'urlMatchesNoSource' => 'הכתובת אינה מתאימה למקור ידוע',
			'cantInstallOlderVersion' => 'לא ניתן להתקין גרסה ישנה יותר של יישום',
			'appIdMismatch' => 'מזהה החבילה שהורדה אינו זהה למזהה היישום הנוכחי',
			'functionNotImplemented' => 'פונקציה זו עדיין אינה מיושמת במחלקה זו',
			'placeholder' => 'ממלא מקום',
			'someErrors' => 'אירעו מספר שגיאות',
			'unexpectedError' => 'שגיאה לא צפויה',
			'ok' => 'אישור',
			'and' => 'וגם',
			'githubPATLabel' => 'אסימון גישה אישי אל GitHub',
			'includePrereleases' => 'לכלול גרסאות קדם־שחרור',
			'fallbackToOlderReleases' => 'נסיגה לגרסאות ישנות יותר',
			'filterReleaseTitlesByRegEx' => 'סינון כותרות מהדורות לפי ביטוי רגולרי',
			'invalidRegEx' => 'ביטוי רגולרי לא תקני',
			'noDescription' => 'אין תיאור',
			'cancel' => 'ביטול',
			'kContinue' => 'המשך',
			'requiredInBrackets' => '(חובה)',
			'dropdownNoOptsError' => 'שגיאה: על תפריטים נפתחים להציג לפחות אפשרות אחת',
			'color' => 'צבע',
			'standard' => 'סטנדרטי',
			'custom' => 'מותאם אישית',
			'primary' => 'צבעים ראשיים',
			'useMaterialYou' => 'שימוש בצבעי Material You',
			'githubStarredRepos' => 'מאגרי GitHub מסומנים בכוכב',
			'gettingAppInfo' => 'מתקבל מידע על היישום',
			'username' => 'שם משתמש',
			'wrongArgNum' => 'סופק מספר ארגומנטים שגוי',
			'xIsTrackOnly' => 'המקור {} מיועד למעקב עדכונים בלבד',
			'source' => 'מקור',
			'app' => 'יישום',
			'appsFromSourceAreTrackOnly' => 'יישומים ממקור זה ניתנים למעקב עדכונים בלבד.',
			'youPickedTrackOnly' => 'בחרת באפשרות ‚מעקב עדכונים בלבד’.',
			'trackOnlyAppDescription' => 'יתבצע מעקב אחר עדכונים ליישום זה, אבל היישום Updatium לא יוכל להוריד או להתקין אותו.',
			'cancelled' => 'בוטל',
			'appAlreadyAdded' => 'היישום כבר נוסף',
			'alreadyUpToDateQuestion' => 'היישום כבר מעודכן?',
			'addApp' => 'הוספת יישום',
			'appSourceURL' => 'כתובת המקור של היישום',
			'error' => 'שגיאה',
			'add' => 'הוספה',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'חיפוש (מספר מקורות בלבד)',
			'search' => 'חיפוש',
			'searching' => 'מתבצע חיפוש',
			'additionalOptsFor' => 'אפשרויות נוספות עבור {}',
			'supportedSources' => 'מקורות נתמכים',
			'trackOnlyInBrackets' => '(למעקב עדכונים בלבד)',
			'searchableInBrackets' => '(ניתן לחיפוש)',
			'appsString' => 'יישומים',
			'categoryX' => 'קטגוריה: {}',
			'collapse' => 'צמצום',
			'downloadProgress' => 'התקדמות ההורדה',
			'expand' => 'הרחבה',
			'noApps' => 'ברוך בואך!',
			'noAppsSubtext' => 'אפשר להוסיף את היישום הראשון בעזרת לחיצה על ‚הוספת יישום’ למטה.',
			'noAppsForFilter' => 'אין יישומים לסינון',
			'byX' => 'מאת {}',
			'percentProgress' => 'התקדמות: {}%',
			'pleaseWait' => 'נא להמתין',
			'updateAvailable' => 'עדכון זמין',
			'notInstalled' => 'לא מותקן',
			'openAppDetails' => 'פתיחת פרטי היישום',
			'pinned' => 'מוצמד',
			'pinnedApp' => 'מוצמד: {}, {}',
			'upToDate' => 'עדכני',
			'pseudoVersion' => 'מעֵין־גרסה',
			'selectAll' => 'לבחור הכול',
			'deselectX' => 'ביטול הבחירה של {}',
			'xWillBeRemovedButRemainInstalled' => 'היישום {} יוסר מ־Updatium אך יישאר מותקן במכשיר.',
			'removeSelectedAppsQuestion' => 'להסיר את היישומים שנבחרו?',
			'removeSelectedApps' => 'הסרת היישומים שנבחרו',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'הוסר יישום אחד', two: 'הוסרו שני יישומים', other: 'הוסרו {count} יישומים', ), 
			'updateX' => 'עדכון {}',
			'installX' => 'התקנת {}',
			'markXTrackOnlyAsUpdated' => 'סימון {}\n(למעקב עדכונים בלבד)\nכמעודכן',
			'changeX' => 'שינוי {}',
			'installUpdateApps' => 'התקנת/עדכון יישומים',
			'installUpdateSelectedApps' => 'התקנת/עדכון היישומים שנבחרו',
			'markXSelectedAppsAsUpdated' => 'לסמן את {} היישומים שנבחרו כמעודכנים?',
			'no' => 'לא',
			'yes' => 'כן',
			'markSelectedAppsUpdated' => 'סימון היישומים שנבחרו כמעודכנים',
			'pinToTop' => 'הצמדה לחלק העליון',
			'unpinFromTop' => 'ביטול הצמדה לחלק העליון',
			'resetInstallStatusForSelectedAppsQuestion' => 'לאפס את מצב ההתקנה ליישומים שנבחרו?',
			'installStatusOfXWillBeResetExplanation' => 'מצב ההתקנה יתאפס לכל היישומים הנבחרים.\n\nפעולה זו יכולה לעזור כאשר גרסת היישום שמופיעה ב־Updatium שגויה בעקבות עדכונים שנכשלו או בעיות אחרות.',
			'customLinkMessage' => 'הקישורים האלה עובדים במכשירים שבהם מותקן היישום Updatium',
			'shareAppConfigLinks' => 'שיתוף תצורת היישום בתור קישור HTML',
			'resetInstallStatus' => 'איפוס מצב התקנה',
			'more' => 'עוד',
			'removeOutdatedFilter' => 'סינון להסרת יישומים שאינם מעודכנים',
			'removeFilter' => 'הסרת סינון',
			'save' => 'שמירה',
			'showOutdatedOnly' => 'הצגת יישומים לא מעודכנים בלבד',
			'filter' => 'סינון',
			'filterApps' => 'סינון יישומים',
			'filterDays' => 'סינון ימים',
			'appName' => 'שם היישום',
			'author' => 'מפתחים',
			'upToDateApps' => 'יישומים מעודכנים',
			'nonInstalledApps' => 'יישומים לא מותקנים',
			'importExport' => 'ייבוא/ייצוא',
			'settings' => 'הגדרות',
			'exportedTo' => 'בוצע ייצוא אל {}',
			'updatiumExport' => 'ייצוא מ־Updatium',
			'failedToExport' => 'הייצוא נכשל',
			'exportAlreadyInProgress' => 'כבר מתבצע ייצוא',
			'exportDirNotAccessible' => 'התיקייה לייצוא אינה נגישה',
			'exportDirUriEmpty' => 'כתובת תיקיית הייצוא ריקה',
			'failedToCreateExportFile' => 'נכשלה יצירת קובץ הייצוא',
			'invalidInput' => 'קלט לא תקני',
			'importedX' => 'בוצא ייבוא של {}',
			'updatiumImport' => 'ייבוא אל Updatium',
			'importFromURLList' => 'ייבוא מרשימת כתובות',
			'searchQuery' => 'מילת חיפוש',
			'appURLList' => 'רשימת כתובות יישומים',
			'line' => 'שורה',
			'searchX' => 'חיפוש {}',
			'noResults' => 'אין תוצאות',
			'importX' => 'ייבוא {}',
			'importedAppsIdDisclaimer' => 'יישומים מיובאים עלולים להופיע בטעות בתור יישומים „לא מותקנים”.\nבשביל לתקן זאת, יש להתקין אותם פעם נוספת דרך Updatium.\nנתוני היישום לא אמורים להיות מושפעים מכך.\n\nהערה זו תקפה רק לגבי כתובות ושיטות ייבוא מצד שלישי.',
			'importErrors' => 'שגיאות במהלך הייבוא',
			'importedXOfYApps' => 'יובאו {} מתוך {} יישומים.',
			'followingURLsHadErrors' => 'הכתובות הבאות נתקלו בשגיאות:',
			'selectURL' => 'בחירת כתובת',
			'selectURLs' => 'בחירת כתובות',
			'pick' => 'בחירה',
			'theme' => 'ערכת נושא',
			'dark' => 'כהה',
			'light' => 'בהירה',
			'followSystem' => 'כמו המערכת',
			'followSystemThemeExplanation' => 'שימוש בערכת נושא כמו המערכת אפשרי רק בזכות יישומי צד־שלישי',
			'useBlackTheme' => 'שימוש בצבע שחור מוחלט לערכת הנושא הכהה',
			'appSortBy' => 'מיון יישומים לפי',
			'authorName' => 'מפתחים/שם',
			'nameAuthor' => 'שם/מפתחים',
			'asAdded' => 'כפי שנוספו',
			'appSortOrder' => 'סדר מיון היישומים',
			'ascending' => 'עולה',
			'descending' => 'יורד',
			'bgUpdateCheckInterval' => 'מרווח זמן לבדיקת עדכונים ברקע',
			'neverManualOnly' => 'אף פעם - באופן ידני בלבד',
			'appearance' => 'מראה',
			'pinUpdates' => 'הצמדת עדכונים לחלק העליון של רשימת היישומים',
			'updates' => 'עדכונים',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'לפי מקור',
			'appSource' => 'מקור היישום',
			'appSourceHint' => 'פתיחת מאגר קוד המקור של היישום',
			'noLogs' => 'אין יומנים',
			'appLogs' => 'יומני יישום',
			'appLogsHint' => 'צפייה ביומני היישום',
			'close' => 'סגירה',
			'share' => 'שיתוף',
			'appNotFound' => 'היישום לא נמצא',
			'networkError' => 'החיבור לרשת נכשל',
			'invalidUrlFormat' => 'תבנית כתובת לא תקנית',
			'accessDenied' => 'הגישה נדחתה',
			'importFailed' => 'הייבוא נכשל',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'נא לבחור קובץ APK',
			'appHasMoreThanOnePackage' => 'ליישום {} יש יותר מחבילה אחת:',
			'deviceSupportsXArch' => 'המכשיר שלך תומך בארכיטקטורת המעבד {}.',
			'deviceSupportsFollowingArchs' => 'המכשיר שלך תומך בארכיטקטורות המעבד הבאות:',
			'warning' => 'אזהרה',
			'sourceIsXButPackageFromYPrompt' => 'כתובת המקור של היישום היא ‚{}’ אבל חבילת המהדורה מגיעה מהכתובת ‚{}’. להמשיך?',
			'updatesAvailable' => 'עדכונים זמינים',
			'updatesAvailableNotifDescription' => 'התראה למשתמש על עצם כך שיש עדכונים זמינים ליישום אחד או יותר שבמעקב בתוך Updatium',
			'noNewUpdates' => 'אין עדכונים חדשים.',
			'xHasAnUpdate' => 'יש עדכון ליישום {}.',
			'appsUpdated' => 'היישומים עודכנו',
			'appsNotUpdated' => 'עדכון היישומים נכשל',
			'appsUpdatedNotifDescription' => 'Notifies the user that updates to one or more apps were applied in the background',
			'xWasUpdatedToY' => '{} עודכן לגרסה {}.',
			'xWasNotUpdatedToY' => 'נכשל העדכון של {} לגרסה {}.',
			'errorCheckingUpdates' => 'שגיאה בעת  בדיקת עדכונים',
			'errorCheckingUpdatesNotifDescription' => 'התראה שמופיעה כאשר נכשלת בדיקת העדכונים ברקע',
			'appsRemoved' => 'הוסרו יישומים',
			'undo' => 'החזרה',
			'appsRemovedNotifDescription' => 'התראה למשתמש על עצם כך שהוסר יישום אחד או יותר בשל שגיאות במהלך טעינתו',
			'xWasRemovedDueToErrorY' => 'היישום {} הוסר בשל שגיאה זו: {}',
			'completeAppInstallation' => 'השלמת התקנת היישום',
			'updatiumMustBeOpenToInstallApps' => 'על Updatium להיות פתוח לצורך התקנת יישומים',
			'completeAppInstallationNotifDescription' => 'הודעה למשתמש עם בקשה לחזור ליישום Updatium לצורך סיום ההתקנה של יישום',
			'checkingForUpdates' => 'בדיקת עדכונים',
			'checkForUpdates' => 'בדיקת עדכונים',
			'checkingForUpdatesNotifDescription' => 'Transient notification that appears when checking for updates',
			'pleaseAllowInstallPerm' => 'נא לאפשר ל־Updatium להתקין יישומים',
			'trackOnly' => 'למעקב עדכונים בלבד',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'שגיאה {}',
			'versionCorrectionDisabled' => ' תיקון הגרסה מושבת (נראה שהתוסף לא עובד)',
			'unknown' => 'לא ידוע',
			'none' => 'ללא',
			'all' => 'הכול',
			'never' => 'אף פעם',
			'latestVersion' => 'גרסה עדכנית',
			'installedVersionX' => 'גרסה מותקנת: {}',
			'lastUpdateCheckX' => 'בדיקת העדכונים האחרונה: {}',
			'remove' => 'הסרה',
			'quickLinks' => 'קישורים מהירים',
			'yesMarkUpdated' => 'כן, לסמן כמעודכן',
			'fdroid' => 'מאגר F-Droid הרשמי',
			'appIdOrName' => 'מזהה או שם של יישום',
			'appId' => 'מזהה יישום',
			'appWithIdOrNameNotFound' => 'לא נמצא יישום עם שם או מזהה זה',
			'reposHaveMultipleApps' => 'מאגרים עשויים להכיל יישומים מרובים',
			'fdroidThirdPartyRepo' => 'מאגר צד שלישי של F-Droid',
			'codeberg' => 'Codeberg',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'יישום Telegram',
			'html' => 'HTML',
			'install' => 'התקנה',
			'markInstalled' => 'סימון כמותקן',
			'update' => 'עדכון',
			'updated' => 'מעודכן',
			'markUpdated' => 'סימון כמעודכן',
			'download' => 'הורדה',
			'additionalOptions' => 'אפשרויות נוספות',
			'disableVersionDetection' => 'השבתת זיהוי גרסה',
			'noVersionDetectionExplanation' => 'יש להשתמש באפשרות זו רק עבור יישומים שזיהוי הגרסה לא עובד טוב עבורם.',
			'downloadingX' => 'מתבצעת הורדת {}',
			'downloadX' => 'הורדת {}',
			'downloadedX' => 'בוצעה הורדת {}',
			'editCategory' => 'עריכת קטגוריה',
			'releaseAsset' => 'משאב גרסה',
			'downloadNotifDescription' => 'התראה למשתמש על כך שמתבצעת הורדה של יישום',
			'noAPKFound' => 'לא נמצא קובץ APK',
			'noVersionDetection' => 'ללא זיהוי גרסה',
			'categorize' => 'שיוך לקטגוריה',
			'categories' => 'קטגוריות',
			'category' => 'קטגוריה',
			'noCategory' => 'ללא קטגוריה',
			'noCategories' => 'אין קטגוריות',
			'categoryDeleteQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'למחוק את הקטגוריה?', other: 'למחוק את הקטגוריות?', ), 
			'categoryDeleteWarning' => 'יבוטל השיוך לקטגוריות מכל היישומים שבקטגוריות שנמחקו.',
			'addCategory' => 'הוספת קטגוריה',
			'label' => 'תווית',
			'language' => 'שפה',
			'copiedToClipboard' => 'הועתק ללוח',
			'storagePermissionDenied' => 'הגישה לאחסון נדחתה',
			'selectedCategorizeWarning' => 'This will replace any existing category settings for the selected apps.',
			'filterAPKsByRegEx' => 'סינון קובצי APK לפי ביטוי רגולרי',
			'removeFromUpdatium' => 'הסרה מ־Updatium',
			'uninstallFromDevice' => 'הסרה מהמכשיר',
			'onlyWorksWithNonVersionDetectApps' => 'עובד רק עבור יישומים שזיהוי הגרסה מושבת אצלם.',
			'releaseDateAsVersion' => 'שימוש בתאריך פרסום המהדורה בתור מחרוזת הגרסה',
			'releaseTitleAsVersion' => 'שימוש בכותרת המהדורה בתור מחרוזת הגרסה',
			'releaseDateAsVersionExplanation' => 'This option should only be used for apps where version detection does not work correctly, but a release date is available.',
			'changes' => 'שינויים',
			'releaseDate' => 'תאריך שחרור גרסה',
			'importFromURLsInFile' => 'ייבוא כתובות מקובץ (כגון OPML)',
			'versionDetectionExplanation' => 'Reconcile version string with version detected from OS',
			'versionDetection' => 'זיהוי גרסה',
			'standardVersionDetection' => 'זיהוי גרסה סטנדרטי',
			'groupByCategory' => 'קיבוץ לפי קטגוריה',
			'listView' => 'תצוגת רשימה',
			'gridView' => 'תצוגת רשת',
			'autoApkFilterByArch' => 'ביצוע ניסיון לסינון קובצי APK לפי ארכיטקטורת המעבד במידת האפשר',
			'autoLinkFilterByArch' => 'ביצוע לסינון קישורים לפי ארכיטקטורת המעבד במידת האפשר',
			'overrideSource' => 'דריסת המקור',
			'dontShowAgain' => 'לא להציג שוב',
			'dontShowTrackOnlyWarnings' => 'לא להציג אזהרות מסוג ‚למעקב עדכונים בלבד’',
			'dontShowAPKOriginWarnings' => 'לא להציג אזהרות לגבי מקור קובץ ה־APK',
			'moveNonInstalledAppsToBottom' => 'העברת יישומים שאינם מותקנים לתחתית תצוגת היישומים',
			'gitlabPATLabel' => 'אסימון גישה אישי אל GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'מידע כללי',
			'requiresCredentialsInSettings' => 'ל־{} נחוצים פרטי זיהוי נוספים (בהגדרות)',
			'checkOnStart' => 'בדיקת עדכונים בעת הפעלת היישום',
			'safeMode' => 'מצב בטוח',
			'safeModeDescription' => 'מניעת שינויים לא רצויים ברשימת היישומים בעזרת הסתרת העמוד „הוספת יישום”. בשביל להשבית את המצב הבטוח יהיה צורך לפתוח את החלונית „מידע כללי”, ואז להקיש על מספר הגרסה מעל 500 פעמים',
			'safeModeAddAppDisabled' => 'עמוד הוספת היישומים מושבת במצב הבטוח',
			'tryInferAppIdFromCode' => 'ניסיון להסקת מזהה היישום מקוד המקור',
			'removeOnExternalUninstall' => 'להסיר אוטומטית מהרשימה יישומים שהוסרו מחוץ ליישום',
			'pickHighestVersionCode' => 'בחירה אוטומטית של קובץ ה־APK עם קוד הגרסה הגבוה ביותר',
			'checkUpdateOnDetailPage' => 'בדיקת עדכונים בעת פתיחת עמוד פרטי יישום',
			'disablePageTransitions' => 'השבתת הנפשות מעבר בין עמודים',
			'reversePageTransitions' => 'היפוך הנפשות מעבר בין עמודים',
			'minStarCount' => 'מספר כוכבים מינימלי',
			'addInfoBelow' => 'יש להוסיף מידע זה למטה.',
			'addInfoInSettings' => 'יש להוסיף מידע זה בהגדרות.',
			'githubSourceNote' => 'אפשר להימנע ממגבלות השימוש של GitHub בעזרת שימוש במפתח API.',
			'sortByLastLinkSegment' => 'Sort by only the last segment of the link',
			'filterReleaseNotesByRegEx' => 'סינון הערות מהדורה לפי ביטוי רגולרי',
			'customLinkFilterRegex' => ' של קובצי APK לפי ביטוי רגולרי (ברירת המחדל היא ‚‎.apk$‏’)',
			'appsPossiblyUpdated' => 'בוצעו ניסיונות לעדכון יישומים',
			'appsPossiblyUpdatedNotifDescription' => 'התראה למשתמש על עצם כך שייתכן כי הותקנו ברקע עדכונים ליישום אחד או יותר',
			'xWasPossiblyUpdatedToY' => 'ייתכן כי היישום {} עודכן לגרסה {}.',
			'enableBackgroundUpdates' => 'הפעלת עדכונים ברקע',
			'backgroundUpdateReqsExplanation' => 'עדכוני הרקע עשויים שלא לעבוד לחלק מהיישומים.',
			'backgroundUpdateLimitsExplanation' => 'ניתן לאמוד את ההצלחה של התקנה ברקע רק כאשר Updatium פתוח.',
			'verifyLatestTag' => 'אימות התגית ‚latest’ (גרסה עדכנית)',
			'intermediateLinkRegex' => 'Filter for an \'intermediate\' link to visit',
			'filterByLinkText' => 'סינון קישורים לפי טקסט קישור',
			'matchLinksOutsideATags' => 'התאמה לקישורים מחוץ לתגיות <a>',
			'intermediateLinkNotFound' => 'לא נמצא קישור ביניים',
			'intermediateLink' => 'קישור ביניים',
			'exemptFromBackgroundUpdates' => 'הוצאה מהעדכונים ברקע (אם מופעלים)',
			'bgUpdatesOnWiFiOnly' => 'השבתת עדכוני רקע כאשר המכשיר אינו מחובר לרשת אלחוטית (Wi-Fi)',
			'bgUpdatesWhileChargingOnly' => 'השבתת עדכוני רקע כאשר המכשיר אינו בהטענה',
			'autoSelectHighestVersionCode' => 'בחירה אוטומטית של קובץ ה־APK עם קוד הגרסה הגבוה ביותר',
			'versionExtractionRegEx' => 'ביטוי רגולרי לחילוץ מחרוזת הגרסה',
			'trimVersionString' => 'קיצוץ מחרוזת הגרסה בעזרת ביטוי רגולרי',
			'matchGroupToUseForX' => 'Match group to use for "{}"',
			'matchGroupToUse' => 'Match group to use for version string extraction RegEx',
			'highlightTouchTargets' => 'הדגשת מטרות מגע פחות ברורות',
			'pickExportDir' => 'בחירת תיקייה לייצוא',
			'autoExportOnChanges' => 'ייצוא אוטומטי בעת ביצוע שינויים',
			'includeSettings' => 'לכלול הגדרות',
			'filterVersionsByRegEx' => 'סינון גרסאות לפי ביטוי רגולרי',
			'trySelectingSuggestedVersionCode' => 'ניסיון לבחירת קובץ ה־APK עם מספר הגרסה המוצע',
			'dontSortReleasesList' => 'משיכת סדר המהדורות מה־API',
			'reverseSort' => 'היפוך סדר',
			'takeFirstLink' => 'בחירת הקישור הראשון',
			'skipSort' => 'דילוג על מיון לפי סדר',
			'debugMenu' => 'תפריט ניפוי שגיאות',
			'bgTaskStarted' => 'המשימה ברקע החלה - נא לעיין ביומן.',
			'runBgCheckNow' => 'הרצת בדיקת עדכונים ברקע כעת',
			'versionExtractWholePage' => 'החלת הביטוי הרגולרי לחילוץ מחרוזת הגרסה על כלל העמוד',
			'installing' => 'מתבצעת התקנה',
			'skipUpdateNotifications' => 'דילוג על התראות בנוגע לעדכונים',
			'updatesAvailableNotifChannel' => 'עדכונים זמינים',
			'appsUpdatedNotifChannel' => 'היישומים עודכנו',
			'appsPossiblyUpdatedNotifChannel' => 'בוצעו ניסיונות לעדכון',
			'errorCheckingUpdatesNotifChannel' => 'שגיאה בעת בדיקת עדכונים',
			'appsRemovedNotifChannel' => 'היישומים הוסרו',
			'downloadingXNotifChannel' => 'מתבצעת הורדת {}',
			'completeAppInstallationNotifChannel' => 'השלמת התקנת היישום',
			'checkingForUpdatesNotifChannel' => 'מתבצעת בדיקת עדכונים',
			'onlyCheckInstalledOrTrackOnlyApps' => 'בדיקת עדכונים רק ליישומים מותקנים ויישומים למעקב עדכונים בלבד',
			'supportFixedAPKURL' => 'תמיכה בכתובות קבועות של קובצי APK',
			'selectX' => 'בחירת {}',
			'parallelDownloads' => 'לאפשר מספר הורדות במקביל',
			'useShizuku' => 'שימוש ב־Shizuku או Sui להתקנה',
			'shizukuBinderNotFound' => 'שירות Shizuku אינו פעיל',
			'shizukuOld' => 'גרסה ישנה של Shizuku (<11) - נא לעדכן',
			'shizukuOldAndroidWithADB' => '‏Shizuku פועל על אנדרואיד 8.1 ומעלה עם ADB - נא לעדכן את גרסת אנדרואיד או להשתמש ב־Sui במקום',
			'shizukuPretendToBeGooglePlay' => 'הגדרת Google Play כמקור ההתקנה (אם נעשה שימוש ב־Shizuku)',
			'useSystemFont' => 'שימוש בגופן המערכת',
			'useVersionCodeAsOSVersion' => 'שימוש בקוד הגרסה של היישום בתור הגרסה שזוהתה במערכת ההפעלה',
			'requestHeader' => 'כותרת בקשה',
			'useLatestAssetDateAsReleaseDate' => 'שימוש בתאריך העלאת משאב הגרסה האחרון בתור תאריך פרסום המהדורה',
			'defaultPseudoVersioningMethod' => 'שיטת ברירת מחדל למספור מעֵין־גרסאות',
			'partialAPKHash' => 'גיבוב APK חלקי',
			'APKLinkHash' => 'גיבוב קישור APK',
			'directAPKLink' => 'קישור ישיר לקובץ APK',
			'pseudoVersionInUse' => 'נעשה שימוש במעֵין־גרסה',
			'installedVersion' => 'גרסה מותקנת',
			'installed' => 'מותקנים',
			'notInstalledApps' => 'לא מותקנים',
			'latest' => 'גרסה עדכנית',
			'invertRegEx' => 'היפוך ביטוי רגולרי',
			'note' => 'הערה',
			'selfHostedNote' => 'הרשימה הנפתחת "{}" מאפשרת למשוך קבצים מעותקים מותאמים אישית/באירוח עצמי של כל מקור שהוא.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'לא היה ניתן לפענח את קובץ ה־APK (בשל חוסר תאימות או הורדה חלקית)',
			'beforeNewInstallsShareToAppVerifier' => 'שיתוף יישומים חדשים עם AppVerifier (אם זמין)',
			'appVerifierInstructionToast' => 'שיתוף עם AppVerifier, ואז חזרה לכאן כשהיישום מוכן.',
			'wiki' => 'עזרה/ויקי',
			'wikiHint' => 'פתיחת תיעוד הוויקי של Updatium',
			'allowInsecure' => 'לאפשר בקשות חיבור לא מאובטחות מסוג HTTP',
			'stayOneVersionBehind' => 'להישאר גרסה אחת מאחור',
			'useFirstApkOfVersion' => 'בחירה אוטומטית של הראשון מתוך קובצי APK מרובים',
			'refreshBeforeDownload' => 'רענון פרטי היישום לפני ההורדה',
			'tencentAppStore' => '‏Tencent App Store',
			'coolApk' => '‏CoolApk',
			'vivoAppStore' => '‏vivo App Store (סין)',
			'name' => 'שם',
			'smartname' => 'שם (שיטה חכמה)',
			'smartPlusDate' => 'שיטה חכמה + תאריך',
			'sortMethod' => 'שיטת מיון',
			'welcome' => 'ברוך בואך',
			'batteryOptimizationNote' => 'לתשומת ליבך, ייתכן שההורדות ברקע יעבדו בצורה אמינה יותר אם יופעל „שירות חזיתי” בהגדרות של Updatium או אם יושבת מיטוב הסוללה של Updatium בהגדרות מערכת ההפעלה.',
			'fileDeletionError' => 'מחיקת הקובץ נכשלה (כדאי לנסות למחוק אותו ידנית ואז לנסות שוב): "{}"',
			'foregroundService' => 'שירות העדכון החזיתי של Updatium',
			'foregroundServiceExplanation' => 'שימוש בשירות חזיתי לבדיקת העדכונים (אמין יותר, צורך יותר חשמל)',
			'fgServiceNotice' => 'התראה זו נחוצה לבדיקת העדכונים ברקע (ניתן להסתיר אותה בהגדרות מערכת ההפעלה)',
			'excludeSecrets' => 'החרגת פרטים סודיים',
			'GHReqPrefix' => 'דוגמה לבקשות מ־GitHub: ‏‚omeritzics/Updatium’',
			'includeZips' => 'לכלול קובצי ZIP',
			'zippedApkFilterRegEx' => 'סינון קובצי APK בתוך קובץ ZIP',
			'multipleSigners' => 'חותמים מרובים',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'להסיר את היישום?', two: 'להסיר את שני היישומים?', other: 'להסיר את היישומים?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'יותר מדי בקשות (הגעת למכסת השימוש) - נא לנסות שוב בעוד דקה', two: 'יותר מדי בקשות (הגעת למכסת השימוש) - נא לנסות שוב בעוד שתי דקות', other: 'יותר מדי בקשות (הגעת למכסת השימוש) - נא לנסות שוב בעוד {count} דקות', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'בדיקת העדכונים ברקע נתקלה ב{error}, ניסיון בדיקה חוזר מתוכנן לעוד דקה', two: 'בדיקת העדכונים ברקע נתקלה ב{error}, ניסיון בדיקה חוזר מתוכנן לעוד שתי דקות', other: 'בדיקת העדכונים ברקע נתקלה ב{error}, ניסיון בדיקה חוזר מתוכנן לעוד {count}} דקות', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'בדיקת העדכונים ברקע מצאה עדכון אחד - המשתמש יקבל התראה במידת הצורך', two: 'בדיקת העדכונים ברקע מצאה שני עדכונים - המשתמש יקבל התראה במידת הצורך', other: 'בדיקת העדכונים ברקע מצאה {count} עדכונים - המשתמש יקבל התראה במידת הצורך', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'יישום אחד', two: 'שני יישומים', other: '{count} יישומים', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'כתובת אחת', two: 'שתי כתובות', other: '{count} כתובות', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'דקה אחת', two: 'שתי דקות', other: '{count} דקות', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'שעה אחת', two: 'שעתיים', other: '{count} שעות', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'יום אחד', two: 'יומיים', other: '{count} ימים', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'נוקה יומן אחד  (לפני = {before}, אחרי = {after})', two: 'נוקו שני יומנים (לפני = {before}, אחרי = {after})', other: 'נוקו {n} יומנים (לפני = {before}, אחרי = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'ליישום {app} ולעוד יישום יש עדכונים.', two: 'ליישום {app} ולעוד שני יישומים יש עדכונים.', other: 'ליישום {app} ולעוד {count} יישומים יש עדכונים.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'היישום {app} ועוד יישום נוסף עודכנו.', two: '{app} ועוד שני יישומים נוספים עודכנו.', other: '{app} ועוד {count} יישומים נוספים עודכנו.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'נכשל העדכון של {app} ועוד יישום אחד.', two: 'נכשל העדכון של {app} ועוד שני יישומים.', other: 'נכשל העדכון של {app} ועוד {count} יישומים.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'ייתכן כי {app} ועוד יישום אחד התעדכנו.', two: 'ייתכן כי {app} ועוד שני יישומים התעדכנו.', other: 'ייתכן כי {app} ועוד {count} יישומים התעדכנו.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'קובץ APK אחד', two: 'שני קובצי APK', other: '{count} קובצי APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('he'))(n, one: 'גיבוב תעודה', other: 'גיבובי תעודה', ), 
			'securityDisclaimerTitle' => 'כתב ויתור בנוגע לאבטחה ונושאים משפטיים',
			'license' => 'רישיון',
			'licenseText' => 'יישום זה מופץ תחת רישיון GPL v3.',
			'disclaimer' => 'כתב ויתור',
			'disclaimerText' => 'יישום זה אינו מפיץ, מארח או מאמת יישומים חיצוניים כלשהם. המשתמש נושא באחריות המלאה לביטחון וחוקיות כל תוכנה המותקנת באמצעות כלי זה.\n\nhttps://github.com/omeritzics/Updatium הוא המקום הרשמי היחיד להוריד את Updatium - מומלץ מאוד לא להוריד אותו ממקומות אחרים מכיוון שההורדה ממקורות לא רשמיים אינה בטוחה.',
			'privacy' => 'פרטיות',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'קבלה והמשך',
			'decline' => 'סירוב',
			'delete' => 'מחיקה',
			'deleteCategory' => 'מחיקת קטגוריה',
			'githubStarPromptTitle' => 'כיף לך להשתמש ב־Updatium?',
			'githubStarPromptContent' => '‏Updatium הוא מיזם קוד פתוח התנדבותי וקהילתי, שעל פיתוחו אני עובד בזמני הפנוי. אם ברצונך לתמוך במיזם, נא לשקול להעניק לו כוכב ב־GitHub בשביל לעזור למיזם להגיע לכמה שיותר משתמשים ותורמים. הבקשה הזו לא תופיע שוב. תודה מראש! :)',
			'githubStarPromptStar' => 'הענקת כוכב',
			'githubStarPromptDontShowAgain' => 'לא להציג שוב',
			'sourceCode' => 'קוד מקור',
			'developedBy' => 'בפיתוח על ידי',
			'appDescription' => 'קטלוג יישומים הניתן להתאמה אישית עבור אנדרואיד, המאפשר לעדכן את היישומים ישירות מהמקורות לקובצי ה־APK שלהם.',
			'safeModeEnabled' => 'המצב הבטוח מופעל',
			'safeModeDisabled' => 'המצב הבטוח מושבת',
			'safeModeDisable' => 'השבתת המצב הבטוח',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'ניהול המצב הבטוח',
			'safeModeSetupDescription' => 'יש לקבוע סיסמה בשביל להפעיל את המצב הבטוח. לאחר הפעלתו, המצב הבטוח ימנע הוספה של יישומים חדשים וניתן להשביתו רק בעזרת הסיסמה.',
			'safeModeToggleDescription' => 'יש להקליד את הסיסמה שלך בשביל להפעיל או להשבית את המצב הבטוח.',
			'safeModeSetPassword' => 'קביעת סיסמה',
			'safeModeConfirmPassword' => 'אישור הסיסמה',
			'safeModeEnterPassword' => 'נא להקליד סיסמה',
			'safeModePasswordHint' => 'נדרשים 8 תווים לפחות',
			'safeModePasswordTooShort' => 'הסיסמה חייבת להכיל לפחות 8 תווים',
			'safeModePasswordMismatch' => 'הסיסמאות אינן תואמות',
			'safeModePasswordIncorrect' => 'סיסמה שגויה',
			'safeModePasswordError' => 'שגיאה בעת קביעת הסיסמה. נא לנסות שוב.',
			'safeModeEnable' => 'הפעלת המצב הבטוח',
			'safeModeToggle' => 'השבתת המצב הבטוח',
			'safeModeTapsRemaining' => 'נותרו {count} הקשות עד להשבתת המצב הבטוח',
			'safeModeEnabledHint' => 'המצב הבטוח מופעל. יש להקיש על מספר הגרסה שבעמוד ההגדרות פעמים רבות בשביל להשבית אותו.',
			'preventUninstallation' => 'מניעת הסרה',
			'preventUninstallationDescription' => 'מניעת ההסרה של Updatium כאשר המצב הבטוח מופעל',
			'deviceAdminRequired' => 'נדרשת הרשאת מנהל מכשיר לצורך מניעת ההסרה',
			'turnOffSafeModeFirst' => 'נא לכבות את המצב הבטוח תחילה',
			'gotIt' => 'הבנתי',
			'version' => 'גרסה',
			'open' => 'פתיחה',
			'added' => 'נוסף',
			'fileExists' => 'הקובץ כבר קיים',
			'fileExistsPrompt' => 'כבר קיים קובץ בשם זה. נא להקליד שם חדש לקובץ שיוּרד:',
			'fileName' => 'שם הקובץ',
			'downloadCancelled' => 'ההורדה בוטלה',
			'showInFileManager' => 'הצגה במנהל הקבצים',
			'usedOpenSourcePackages' => 'חבילות קוד פתוח בשימוש',
			'pleaseWaitOperationInProgress' => 'נא להמתין, מתבצעת פעולה',
			'selectSourceFirst' => 'נא לבחור מקור תחילה',
			'completeAdditionalSettingsFirst' => 'נא להשלים את ההגדרות הנוספות תחילה',
			'addAppToCollection' => 'הוספת היישום הזה לאוסף',
			'enterSearchTermsFirst' => 'נא להקליד מונחים לחיפוש תחילה',
			'searchForApps' => 'חיפוש יישומים',
			_ => null,
		};
	}
}
