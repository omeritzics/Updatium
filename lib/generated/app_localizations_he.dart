// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hebrew (`he`).
class AppLocalizationsHe extends AppLocalizations {
  AppLocalizationsHe([String locale = 'he']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'אין זו כתובת יישום תקנית של $arg1';
  }

  @override
  String get noReleaseFound => 'לא נמצאה מהדורה מתאימה';

  @override
  String get noVersionFound => 'לא היה ניתן להסיק את מספר הגרסה';

  @override
  String get urlMatchesNoSource => 'הכתובת אינה מתאימה למקור ידוע';

  @override
  String get cantInstallOlderVersion =>
      'לא ניתן להתקין גרסה ישנה יותר של יישום';

  @override
  String get appIdMismatch => 'מזהה החבילה שהורדה אינו זהה למזהה היישום הנוכחי';

  @override
  String get functionNotImplemented => 'פונקציה זו עדיין אינה מיושמת במחלקה זו';

  @override
  String get placeholder => 'ממלא מקום';

  @override
  String get someErrors => 'אירעו מספר שגיאות';

  @override
  String get unexpectedError => 'שגיאה לא צפויה';

  @override
  String get ok => 'אישור';

  @override
  String get and => 'וגם';

  @override
  String get githubPATLabel =>
      'אסימון גישה אישי אל GitHub (מרחיב את מגבלת השימוש)';

  @override
  String get includePrereleases => 'לכלול גרסאות קדם־שחרור';

  @override
  String get fallbackToOlderReleases => 'נסיגה לגרסאות ישנות יותר';

  @override
  String get filterReleaseTitlesByRegEx =>
      'סינון כותרות מהדורות לפי ביטוי רגולרי';

  @override
  String get invalidRegEx => 'ביטוי רגולרי לא תקני';

  @override
  String get noDescription => 'אין תיאור';

  @override
  String get cancel => 'ביטול';

  @override
  String get requiredInBrackets => '(חובה)';

  @override
  String get dropdownNoOptsError =>
      'שגיאה: על תפריטים נפתחים להציג לפחות אפשרות אחת';

  @override
  String get color => 'צבע';

  @override
  String get standard => 'סטנדרטי';

  @override
  String get custom => 'מותאם אישית';

  @override
  String get useMaterialYou => 'שימוש בצבעי Material You';

  @override
  String get githubStarredRepos => 'מאגרי GitHub מסומנים בכוכב';

  @override
  String get uname => 'שם משתמש';

  @override
  String get wrongArgNum => 'סופק מספר ארגומנטים שגוי';

  @override
  String xIsTrackOnly(String arg1) {
    return 'המקור $arg1 מיועד למעקב עדכונים בלבד';
  }

  @override
  String get source => 'מקור';

  @override
  String get app => 'יישום';

  @override
  String get appsFromSourceAreTrackOnly =>
      'יישומים ממקור זה ניתנים למעקב עדכונים בלבד.';

  @override
  String get youPickedTrackOnly => 'בחרת באפשרות ‚מעקב עדכונים בלבד’.';

  @override
  String get trackOnlyAppDescription =>
      'יתבצע מעקב אחר עדכונים ליישום זה, אבל היישום Updatium לא יוכל להוריד או להתקין אותו.';

  @override
  String get cancelled => 'בוטל';

  @override
  String get appAlreadyAdded => 'היישום כבר נוסף';

  @override
  String get alreadyUpToDateQuestion => 'היישום כבר מעודכן?';

  @override
  String get addApp => 'הוספת יישום';

  @override
  String get appSourceURL => 'כתובת המקור של היישום';

  @override
  String get error => 'שגיאה';

  @override
  String get add => 'הוספה';

  @override
  String get searchSomeSourcesLabel => 'חיפוש (מספר מקורות בלבד)';

  @override
  String get search => 'חיפוש';

  @override
  String additionalOptsFor(String arg1) {
    return 'אפשרויות נוספות עבור $arg1';
  }

  @override
  String get supportedSources => 'מקורות נתמכים';

  @override
  String get trackOnlyInBrackets => '(למעקב עדכונים בלבד)';

  @override
  String get searchableInBrackets => '(ניתן לחיפוש)';

  @override
  String get appsString => 'יישומים';

  @override
  String get noApps => 'ברוך בואך!';

  @override
  String get noAppsSubtext =>
      'אפשר להוסיף את היישום הראשון בעזרת לחיצה על ‚הוספת יישום’ למטה.';

  @override
  String get noAppsForFilter => 'אין יישומים לסינון';

  @override
  String byX(String arg1) {
    return 'מאת $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'התקדמות: $arg1%';
  }

  @override
  String get pleaseWait => 'נא להמתין';

  @override
  String get updateAvailable => 'עדכון זמין';

  @override
  String get notInstalled => 'לא מותקן';

  @override
  String get pseudoVersion => 'מעֵין־גרסה';

  @override
  String get selectAll => 'לבחור הכול';

  @override
  String deselectX(String arg1) {
    return 'ביטול הבחירה של $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return 'היישום $arg1 יוסר מ־Updatium אך יישאר מותקן במכשיר.';
  }

  @override
  String get removeSelectedAppsQuestion => 'להסיר את היישומים שנבחרו?';

  @override
  String get removeSelectedApps => 'הסרת היישומים שנבחרו';

  @override
  String updateX(String arg1) {
    return 'עדכון $arg1';
  }

  @override
  String installX(String arg1) {
    return 'התקנת $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'סימון $arg1\n(למעקב עדכונים בלבד)\nכמעודכן';
  }

  @override
  String changeX(String arg1) {
    return 'שינוי $arg1';
  }

  @override
  String get installUpdateApps => 'התקנת/עדכון יישומים';

  @override
  String get installUpdateSelectedApps => 'התקנת/עדכון היישומים שנבחרו';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'לסמן את $arg1 היישומים שנבחרו כמעודכנים?';
  }

  @override
  String get no => 'לא';

  @override
  String get yes => 'כן';

  @override
  String get markSelectedAppsUpdated => 'סימון היישומים שנבחרו כמעודכנים';

  @override
  String get pinToTop => 'הצמדה לחלק העליון';

  @override
  String get unpinFromTop => 'ביטול הצמדה לחלק העליון';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'לאפס את מצב ההתקנה ליישומים שנבחרו?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'The install status of any selected apps will be reset.\n\nThis can help when the app version shown in Updatium is incorrect due to failed updates or other issues.';

  @override
  String get customLinkMessage =>
      'הקישורים האלה עובדים במכשירים שבהם מותקן היישום Updatium';

  @override
  String get shareAppConfigLinks => 'שיתוף תצורת היישום בתור קישור HTML';

  @override
  String get shareSelectedAppURLs => 'שיתוף כתובות היישומים שנבחרו';

  @override
  String get resetInstallStatus => 'איפוס מצב התקנה';

  @override
  String get more => 'עוד';

  @override
  String get removeOutdatedFilter => 'סינון להסרת יישומים שאינם מעודכנים';

  @override
  String get showOutdatedOnly => 'הצגת יישומים לא מעודכנים בלבד';

  @override
  String get filter => 'סינון';

  @override
  String get filterApps => 'סינון יישומים';

  @override
  String get appName => 'שם היישום';

  @override
  String get author => 'מפתח/ת';

  @override
  String get upToDateApps => 'יישומים מעודכנים';

  @override
  String get nonInstalledApps => 'יישומים לא מותקנים';

  @override
  String get importExport => 'ייבוא/ייצוא';

  @override
  String get settings => 'הגדרות';

  @override
  String exportedTo(String arg1) {
    return 'בוצע ייצוא אל $arg1';
  }

  @override
  String get updatiumExport => 'ייצוא מ־Updatium';

  @override
  String get failedToExport => 'הייצוא נכשל';

  @override
  String get exportAlreadyInProgress => 'כבר מתבצע ייצוא';

  @override
  String get failedToCreateExportFile => 'נכשלה יצירת קובץ הייצוא';

  @override
  String get exportDirNotAccessible => 'לא ניתן לגשת לתיקיית הייצוא';

  @override
  String get invalidInput => 'קלט לא תקני';

  @override
  String importedX(String arg1) {
    return 'בוצא ייבוא של $arg1';
  }

  @override
  String get updatiumImport => 'ייבוא ל־Updatium';

  @override
  String get importFromURLList => 'ייבוא מרשימת כתובות';

  @override
  String get searchQuery => 'מילת חיפוש';

  @override
  String get appURLList => 'רשימת כתובות יישומים';

  @override
  String get line => 'שורה';

  @override
  String searchX(String arg1) {
    return 'חיפוש $arg1';
  }

  @override
  String get noResults => 'אין תוצאות';

  @override
  String importX(String arg1) {
    return 'ייבוא $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'יישומים מיובאים עלולים להופיע בטעות בתור יישומים „לא מותקנים”.\nבשביל לתקן זאת, יש להתקין אותם פעם נוספת דרך Updatium.\nנתוני היישום לא אמורים להיות מושפעים מכך.\n\nהערה זו תקפה רק לגבי כתובות ושיטות ייבוא מצד שלישי.';

  @override
  String get importErrors => 'ייבוא שגיאות';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return 'יובאו $arg1 מתוך $arg2 יישומים.';
  }

  @override
  String get followingURLsHadErrors => 'הכתובות הבאות נתקלו בשגיאות:';

  @override
  String get selectURL => 'בחירת כתובת';

  @override
  String get selectURLs => 'בחירת כתובות';

  @override
  String get pick => 'בחירה';

  @override
  String get theme => 'ערכת נושא';

  @override
  String get dark => 'כהה';

  @override
  String get light => 'בהירה';

  @override
  String get followSystem => 'כמו המערכת';

  @override
  String get followSystemThemeExplanation =>
      'שימוש בערכת נושא כמו המערכת אפשרי רק בזכות יישומי צד־שלישי';

  @override
  String get useBlackTheme => 'שימוש בצבע שחור מוחלט לערכת הנושא הכהה';

  @override
  String get appSortBy => 'מיון יישומים לפי';

  @override
  String get authorName => 'מפתחים/שם';

  @override
  String get nameAuthor => 'שם/מפתחים';

  @override
  String get asAdded => 'כפי שנוספו';

  @override
  String get appSortOrder => 'סדר מיון היישומים';

  @override
  String get ascending => 'עולה';

  @override
  String get descending => 'יורד';

  @override
  String get bgUpdateCheckInterval => 'מרווח זמן לבדיקת עדכונים ברקע';

  @override
  String get neverManualOnly => 'אף פעם - באופן ידני בלבד';

  @override
  String get appearance => 'מראה';

  @override
  String get pinUpdates => 'הצמדת עדכונים לחלק העליון של רשימת היישומים';

  @override
  String get updates => 'עדכונים';

  @override
  String get sourceSpecific => 'לפי מקור';

  @override
  String get appSource => 'מקור היישום';

  @override
  String get appSourceHint => 'פתיחת מאגר קוד המקור של היישום';

  @override
  String get noLogs => 'אין יומנים';

  @override
  String get appLogs => 'יומני יישום';

  @override
  String get appLogsHint => 'צפייה ביומני היישום';

  @override
  String get close => 'סגירה';

  @override
  String get share => 'שיתוף';

  @override
  String get appNotFound => 'היישום לא נמצא';

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
  String get pickAnAPK => 'נא לבחור קובץ APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return 'ליישום $arg1 יש יותר מחבילה אחת:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'המכשיר שלך תומך בארכיטקטורת המעבד $arg1.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'המכשיר שלך תומך בארכיטקטורות המעבד הבאות:';

  @override
  String get warning => 'אזהרה';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'The app source is \'$arg1\' but the release package comes from \'$arg2\'. Continue?';
  }

  @override
  String get updatesAvailable => 'עדכונים זמינים';

  @override
  String get updatesAvailableNotifDescription =>
      'Notifies the user that updates are available for one or more apps tracked by Updatium';

  @override
  String get noNewUpdates => 'אין עדכונים חדשים.';

  @override
  String xHasAnUpdate(String arg1) {
    return 'יש עדכון ליישום $arg1.';
  }

  @override
  String get appsUpdated => 'היישומים עודכנו';

  @override
  String get appsNotUpdated => 'עדכון היישומים נכשל';

  @override
  String get appsUpdatedNotifDescription =>
      'Notifies the user that updates to one or more apps were applied in the background';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 עודכן לגרסה $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'נכשל העדכון של $arg1 לגרסה $arg2.';
  }

  @override
  String get errorCheckingUpdates => 'שגיאה בעת  בדיקת עדכונים';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'התראה שמופיעה כאשר נכשלת בדיקת העדכונים ברקע';

  @override
  String get appsRemoved => 'הוסרו יישומים';

  @override
  String get appsRemovedNotifDescription =>
      'Notifies the user that one or more apps were removed due to errors while loading them';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return 'היישום $arg1 הוסר בשל שגיאה זו: $arg2';
  }

  @override
  String get completeAppInstallation => 'השלמת התקנת היישום';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'על Updatium להיות פתוח לצורך התקנת יישומים';

  @override
  String get completeAppInstallationNotifDescription =>
      'Asks the user to return to Updatium to finish installing an app';

  @override
  String get checkingForUpdates => 'מתבצעת בדיקת עדכונים';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Transient notification that appears when checking for updates';

  @override
  String get pleaseAllowInstallPerm => 'נא לאפשר ל־Updatium להתקין יישומים';

  @override
  String get trackOnly => 'למעקב עדכונים בלבד';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'שגיאה $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      ' תיקון הגרסה מושבת (נראה שהתוסף לא עובד)';

  @override
  String get unknown => 'לא ידוע';

  @override
  String get none => 'ללא';

  @override
  String get all => 'הכול';

  @override
  String get never => 'אף פעם';

  @override
  String latestVersionX(String arg1) {
    return 'גרסה עדכנית: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'גרסה מותקנת: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'בדיקת העדכונים האחרונה: $arg1';
  }

  @override
  String get remove => 'הסרה';

  @override
  String get yesMarkUpdated => 'כן, לסמן כמעודכן';

  @override
  String get fdroid => 'מאגר F-Droid הרשמי';

  @override
  String get appIdOrName => 'מזהה או שם של יישום';

  @override
  String get appId => 'מזהה יישום';

  @override
  String get appWithIdOrNameNotFound => 'לא נמצא יישום עם שם או מזהה זה';

  @override
  String get reposHaveMultipleApps => 'מאגרים עשויים להכיל יישומים מרובים';

  @override
  String get fdroidThirdPartyRepo => 'מאגר צד שלישי של F-Droid';

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
  String get install => 'התקנה';

  @override
  String get markInstalled => 'סימון כמותקן';

  @override
  String get update => 'עדכון';

  @override
  String get updated => 'מעודכן';

  @override
  String get markUpdated => 'סימון כמעודכן';

  @override
  String get additionalOptions => 'אפשרויות נוספות';

  @override
  String get disableVersionDetection => 'השבתת זיהוי גרסה';

  @override
  String get noVersionDetectionExplanation =>
      'This option should only be used for apps where version detection does not work correctly.';

  @override
  String downloadingX(String arg1) {
    return 'מתבצעת הורדת $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'הורדת $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'בוצעה הורדת $arg1';
  }

  @override
  String get releaseAsset => 'משאב גרסה';

  @override
  String get downloadNotifDescription =>
      'Notifies the user of the progress in downloading an app';

  @override
  String get noAPKFound => 'לא נמצא קובץ APK';

  @override
  String get noVersionDetection => 'ללא זיהוי גרסה';

  @override
  String get categorize => 'שיוך לקטגוריה';

  @override
  String get categories => 'קטגוריות';

  @override
  String get category => 'קטגוריה';

  @override
  String get noCategory => 'ללא קטגוריה';

  @override
  String get noCategories => 'אין קטגוריות';

  @override
  String get deleteCategoriesQuestion => 'למחוק את הקטגוריות?';

  @override
  String get categoryDeleteWarning =>
      'יבוטל השיוך לקטגוריות מכל היישומים שבקטגוריות שנמחקו.';

  @override
  String get addCategory => 'הוספת קטגוריה';

  @override
  String get label => 'תווית';

  @override
  String get language => 'שפה';

  @override
  String get copiedToClipboard => 'הועתק ללוח';

  @override
  String get storagePermissionDenied => 'הגישה לאחסון נדחתה';

  @override
  String get selectedCategorizeWarning =>
      'This will replace any existing category settings for the selected apps.';

  @override
  String get filterAPKsByRegEx => 'סינון קובצי APK לפי ביטוי רגולרי';

  @override
  String get removeFromUpdatium => 'הסרה מ־Updatium';

  @override
  String get uninstallFromDevice => 'הסרה מהמכשיר';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'עובד רק עבור יישומים שזיהוי הגרסה מושבת אצלם.';

  @override
  String get releaseDateAsVersion =>
      'שימוש בתאריך פרסום המהדורה בתור מחרוזת הגרסה';

  @override
  String get releaseTitleAsVersion => 'שימוש בכותרת המהדורה בתור מחרוזת הגרסה';

  @override
  String get releaseDateAsVersionExplanation =>
      'This option should only be used for apps where version detection does not work correctly, but a release date is available.';

  @override
  String get changes => 'שינויים';

  @override
  String get releaseDate => 'תאריך שחרור גרסה';

  @override
  String get importFromURLsInFile => 'ייבוא כתובות מקובץ (כגון OPML)';

  @override
  String get versionDetectionExplanation =>
      'Reconcile version string with version detected from OS';

  @override
  String get versionDetection => 'זיהוי גרסה';

  @override
  String get standardVersionDetection => 'זיהוי גרסה סטנדרטי';

  @override
  String get groupByCategory => 'קיבוץ לפי קטגוריה';

  @override
  String get listView => 'תצוגת רשימה';

  @override
  String get gridView => 'תצוגת רשת';

  @override
  String get autoApkFilterByArch =>
      'Attempt to filter APKs by CPU architecture if possible';

  @override
  String get autoLinkFilterByArch =>
      'Attempt to filter links by CPU architecture if possible';

  @override
  String get overrideSource => 'דריסת המקור';

  @override
  String get dontShowAgain => 'לא להציג זאת שוב';

  @override
  String get dontShowTrackOnlyWarnings =>
      'לא להציג אזהרות מסוג ‚למעקב עדכונים בלבד’';

  @override
  String get dontShowAPKOriginWarnings =>
      'לא להציג אזהרות לגבי מקור קובץ ה־APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'העברת יישומים שאינם מותקנים לתחתית תצוגת היישומים';

  @override
  String get hideNonInstalledApps => 'הסתרת יישומים שאינם מותקנים';

  @override
  String get gitlabPATLabel => 'אסימון גישה אישי אל GitLab';

  @override
  String get about => 'על אודות';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return 'ל־$arg1 נחוצים פרטי זיהוי נוספים (בהגדרות)';
  }

  @override
  String get checkOnStart => 'בדיקת עדכונים בעת הפעלת היישום';

  @override
  String get safeMode => 'מצב בטוח';

  @override
  String get safeModeDescription =>
      'הסתרת דף הוספת אפליקציה והצגת ייבוא/ייצוא במקום';

  @override
  String get safeModeAddAppDisabled => 'הוספת אפליקציה מושבתת במצב בטוח';

  @override
  String get tryInferAppIdFromCode => 'ניסיון הסקת מזהה אפליקציה מקוד המקור';

  @override
  String get removeOnExternalUninstall =>
      'להסיר אוטומטית מהרשימה יישומים שהוסרו מחוץ ליישום';

  @override
  String get pickHighestVersionCode =>
      'בחירה אוטומטית של קובץ ה־APK עם קוד הגרסה הגבוה ביותר';

  @override
  String get checkUpdateOnDetailPage =>
      'בדיקת עדכונים בעת פתיחת עמוד פרטי יישום';

  @override
  String get disablePageTransitions => 'השבתת הנפשות מעבר בין עמודים';

  @override
  String get reversePageTransitions => 'היפוך הנפשות מעבר בין עמודים';

  @override
  String get minStarCount => 'מספר כוכבים מינימלי';

  @override
  String get addInfoBelow => 'יש להוסיף מידע זה למטה.';

  @override
  String get addInfoInSettings => 'יש להוסיף מידע זה בהגדרות.';

  @override
  String get githubSourceNote =>
      'GitHub rate limiting can be avoided using an API key.';

  @override
  String get sortByLastLinkSegment =>
      'Sort by only the last segment of the link';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filter release notes by regular expression';

  @override
  String get customLinkFilterRegex =>
      'Custom APK link filter by regular expression (default \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'בוצעו ניסיונות לעדכון יישומים';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Notifies the user that updates to one or more apps were potentially applied in the background';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return 'ייתכן כי היישום $arg1 עודכן לגרסה $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'הפעלת עדכונים ברקע';

  @override
  String get backgroundUpdateReqsExplanation =>
      'עדכוני הרקע עשויים שלא לעבוד לחלק מהיישומים.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'The success of a background install can only be determined when Updatium is opened.';

  @override
  String get verifyLatestTag => 'אימות התגית ‚latest’ (גרסה עדכנית)';

  @override
  String get intermediateLinkRegex =>
      'Filter for an \'intermediate\' link to visit';

  @override
  String get filterByLinkText => 'סינון קישורים לפי טקסט קישור';

  @override
  String get matchLinksOutsideATags => 'Match links outside <a> tags';

  @override
  String get intermediateLinkNotFound => 'לא נמצא קישור ביניים';

  @override
  String get intermediateLink => 'קישור ביניים';

  @override
  String get exemptFromBackgroundUpdates => 'הוצאה מהעדכונים ברקע (אם מופעלים)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'השבתת עדכוני רקע כאשר המכשיר אינו מחובר לרשת אלחוטית (Wi-Fi)';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'השבתת עדכוני רקע כאשר המכשיר אינו בהטענה';

  @override
  String get autoSelectHighestVersionCode =>
      'Auto-select highest versionCode APK';

  @override
  String get versionExtractionRegEx => 'Version string extraction RegEx';

  @override
  String get trimVersionString => 'Trim version string with RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Match group to use for \"$arg1\"';
  }

  @override
  String get matchGroupToUse =>
      'Match group to use for version string extraction RegEx';

  @override
  String get highlightTouchTargets => 'Highlight less obvious touch targets';

  @override
  String get pickExportDir => 'בחירת תיקייה לייצוא';

  @override
  String get autoExportOnChanges => 'ייצוא אוטומטי בעת ביצוע שינויים';

  @override
  String get includeSettings => 'לכלול הגדרות';

  @override
  String get filterVersionsByRegEx => 'סינון גרסאות לפי ביטוי רגולרי';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Try selecting suggested versionCode APK';

  @override
  String get dontSortReleasesList => 'Retain release order from API';

  @override
  String get reverseSort => 'היפוך סדר';

  @override
  String get takeFirstLink => 'בחירת הקישור הראשון';

  @override
  String get skipSort => 'Skip sorting';

  @override
  String get debugMenu => 'תפריט ניפוי שגיאות';

  @override
  String get bgTaskStarted => 'המשימה ברקע החלה - נא לעיין ביומן.';

  @override
  String get runBgCheckNow => 'הרצת בדיקת עדכונים ברקע כעת';

  @override
  String get versionExtractWholePage =>
      'Apply version string extraction Regex to entire page';

  @override
  String get installing => 'מתבצעת התקנה';

  @override
  String get skipUpdateNotifications => 'דילוג על התראות בנוגע לעדכונים';

  @override
  String get updatesAvailableNotifChannel => 'עדכונים זמינים';

  @override
  String get appsUpdatedNotifChannel => 'היישומים עודכנו';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'בוצעו ניסיונות לעדכון';

  @override
  String get errorCheckingUpdatesNotifChannel => 'שגיאה בעת בדיקת עדכונים';

  @override
  String get appsRemovedNotifChannel => 'היישומים הוסרו';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'מתבצעת הורדת $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel => 'השלמת התקנת היישום';

  @override
  String get checkingForUpdatesNotifChannel => 'מתבצעת בדיקת עדכונים';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Only check installed and track-only apps for updates';

  @override
  String get supportFixedAPKURL => 'תמיכה בכתובות קבועות של קובצי APK';

  @override
  String selectX(String arg1) {
    return 'בחירת $arg1';
  }

  @override
  String get parallelDownloads => 'לאפשר מספר הורדות במקביל';

  @override
  String get useShizuku => 'שימוש ב־Shizuku או Sui להתקנה';

  @override
  String get shizukuBinderNotFound => 'שירות Shizuku אינו פעיל';

  @override
  String get shizukuOld => 'גרסה ישנה של Shizuku (<11) - נא לעדכן';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku running on Android < 8.1 with ADB - update Android or use Sui instead';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'הגדרת Google Play כמקור ההתקנה (אם נעשה שימוש ב־Shizuku)';

  @override
  String get useSystemFont => 'שימוש בגופן המערכת';

  @override
  String get useVersionCodeAsOSVersion =>
      'Use app versionCode as OS-detected version';

  @override
  String get requestHeader => 'כותרת בקשה';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Use latest asset upload as release date';

  @override
  String get defaultPseudoVersioningMethod =>
      'Default pseudo-versioning method';

  @override
  String get partialAPKHash => 'גיבוב APK חלקי';

  @override
  String get directAPKLink => 'קישור ישיר לקובץ APK';

  @override
  String get pseudoVersionInUse => 'נעשה שימוש במעֵין־גרסה';

  @override
  String get installed => 'גרסה מותקנת';

  @override
  String get latest => 'גרסה עדכנית';

  @override
  String get invertRegEx => 'היפוך ביטוי רגולרי';

  @override
  String get note => 'הערה';

  @override
  String selfHostedNote(String arg1) {
    return 'הרשימה הנפתחת \"$arg1\" מאפשרת למשוך קבצים מעותקים מותאמים אישית/באירוח עצמי של כל מקור שהוא.';
  }

  @override
  String get badDownload =>
      'לא היה ניתן לפענח את קובץ ה־APK (בשל חוסר תאימות או הורדה חלקית)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'שיתוף היישומים חדשים עם AppVerifier (אם זמין)';

  @override
  String get appVerifierInstructionToast =>
      'שיתוף עם AppVerifier, ואז חזרה לכאן כשהיישום מוכן.';

  @override
  String get wiki => 'עזרה/ויקי';

  @override
  String get wikiHint => 'פתיחת תיעוד הוויקי של Updatium';

  @override
  String get allowInsecure => 'לאפשר בקשות חיבור לא מאובטחות מסוג HTTP';

  @override
  String get stayOneVersionBehind => 'להישאר גרסה אחת מאחור';

  @override
  String get useFirstApkOfVersion =>
      'בחירה אוטומטית של הראשון מתוך קובצי APK מרובים';

  @override
  String get refreshBeforeDownload => 'רענון פרטי היישום לפני ההורדה';

  @override
  String get tencentAppStore => '‏Tencent App Store';

  @override
  String get coolApk => '‏CoolApk';

  @override
  String get vivoAppStore => '‏vivo App Store (סין)';

  @override
  String get name => 'שם';

  @override
  String get smartname => 'שם (שיטה חכמה)';

  @override
  String get sortMethod => 'שיטת מיון';

  @override
  String get welcome => 'ברוך בואך';

  @override
  String get documentationLinksNote =>
      'The Updatium GitHub page linked below contains links to videos, articles, discussions, and other resources that will help you understand how to use the app.';

  @override
  String get batteryOptimizationNote =>
      'Note that background downloads may work more reliably if you switch to the \"foreground service\" in the Updatium settings and/or disable battery optimization for Updatium in your OS settings.';

  @override
  String fileDeletionError(String arg1) {
    return 'מחיקת הקובץ נכשלה (כדאי לנסות למחוק אותו ידנית ואז לנסות שוב): \"$arg1\"';
  }

  @override
  String get foregroundService => 'שירות העדכון החזיתי של Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Use a foreground service for update checking (more reliable, consumes more power)';

  @override
  String get fgServiceNotice =>
      'This notification is required for background update checking (it can be hidden in the OS settings)';

  @override
  String get excludeSecrets => 'החרגת פרטים סודיים';

  @override
  String get includeZips => 'לכלול קובצי ZIP';

  @override
  String get zippedApkFilterRegEx => 'סינון קובצי APK בתוך קובץ ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google has announced that, starting in 2026/2027, all apps on \"certified\" Android devices will require the developer to submit personal identity details directly to Google.\n\nAfter then, Updatium may stop working on certified Android devices.';

  @override
  String get googleVerificationWarningP2 =>
      'Go to https://keepandroidopen.org/ for more information.';

  @override
  String get googleVerificationWarningP3 =>
      'Note that in the short term, it may continue to be possible to install \"unverified\" (non-compliant) apps through an \"advanced flow\" process that Google has promised to implement after broad backlash to their announcement, but they have not detailed how this would work so it is unclear whether it will truly preserve user freedoms in any practical way.\n\nIn any case, Google\'s move is a significant step towards the end of free, general-purpose computing for individuals.\n\nNon-certified OSes, like GrapheneOS, should be unaffected by this for as long as they are allowed to continue to exist.';

  @override
  String get multipleSigners => 'Multiple Signers';

  @override
  String get securityDisclaimerTitle =>
      'כתב ויתור בנוגע לאבטחה ונושאים משפטיים';

  @override
  String get license => 'רישיון';

  @override
  String get licenseText => 'יישום זה מופץ תחת רישיון GPL v3.';

  @override
  String get disclaimer => 'כתב ויתור';

  @override
  String get disclaimerText =>
      'יישום זה אינו מפיץ, מארח או מאמת יישומים חיצוניים כלשהם. המשתמש נושא באחריות המלאה לביטחון וחוקיות כל תוכנה המותקנת באמצעות כלי זה.\n\nhttps://github.com/omeritzics/Updatium הוא המקום הרשמי היחיד להוריד את Updatium - מומלץ מאוד לא להוריד אותו ממקומות אחרים מכיוון שההורדה ממקורות לא רשמיים אינה בטוחה.';

  @override
  String get privacy => 'פרטיות';

  @override
  String get privacyText => 'יישום זה ממוקד פרטיות ואינו אוסף נתונים אישיים.';

  @override
  String get acceptAndContinue => 'קבלה והמשך';

  @override
  String get decline => 'סירוב';

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
  String get aPKLinkHash => 'APK link hash';

  @override
  String get gHReqPrefix =>
      '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get continueAction => 'המשך';

  @override
  String apps(int count) {
    return '$count אפליקציות';
  }

  @override
  String apk(int count) {
    return '$count APKs';
  }

  @override
  String minute(int count) {
    return '$count minutes';
  }
}
