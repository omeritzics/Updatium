// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Неправильна URL-адреса для джерела застосунку $arg1';
  }

  @override
  String get noReleaseFound => 'Не вдалося знайти відповідне видання';

  @override
  String get noVersionFound => 'Не вдалося визначити версію видання';

  @override
  String get urlMatchesNoSource => 'URL не відповідає відомому джерелу';

  @override
  String get cantInstallOlderVersion =>
      'Не можна встановити старішу версію застосунку';

  @override
  String get appIdMismatch =>
      'Ідентифікатор пакета, завантажений, не відповідає ідентифікатору існуючого застосунку';

  @override
  String get functionNotImplemented => 'Цей клас не реалізував цю функцію';

  @override
  String get placeholder => 'Заповнювач';

  @override
  String get someErrors => 'Виникла деяка помилка';

  @override
  String get unexpectedError => 'Неочікувана помилка';

  @override
  String get ok => 'Добре';

  @override
  String get and => 'та';

  @override
  String get githubPATLabel =>
      'Персональний ключ доступу GitHub (збільшує обмеження на швидкість)';

  @override
  String get includePrereleases => 'Включити попередні видання';

  @override
  String get fallbackToOlderReleases => 'Повернутися до старіших видань';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Фільтрувати заголовки видань за допомогою регулярного виразу';

  @override
  String get invalidRegEx => 'Неприпустимий регулярний вираз';

  @override
  String get noDescription => 'Немає опису';

  @override
  String get cancel => 'Скасувати';

  @override
  String get requiredInBrackets => '(Обов\'язково)';

  @override
  String get dropdownNoOptsError =>
      'ПОМИЛКА: В ВИПАДАЮЧОМУ СПИСКУ МАЄ БУТИ ХОЧА Б ОДИН ЕЛЕМЕНТ';

  @override
  String get color => 'Колір';

  @override
  String get standard => 'Стандартний';

  @override
  String get custom => 'Нестандартний';

  @override
  String get useMaterialYou => 'Використовуйте кольори Material You';

  @override
  String get githubStarredRepos => 'Відзначені репозиторії GitHub';

  @override
  String get uname => 'Ім\'я користувача';

  @override
  String get wrongArgNum => 'Надано неправильну кількість аргументів';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 - тільки відстежування';
  }

  @override
  String get source => 'Джерело';

  @override
  String get app => 'застосунок';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Застосунки з цього джерела є лише для відстежування.';

  @override
  String get youPickedTrackOnly => 'Ви вибрали опцію лише для відстежування.';

  @override
  String get trackOnlyAppDescription =>
      'Застосунок буде відстежуватися для оновлень, але Updatium не зможе його завантажити або встановити.';

  @override
  String get cancelled => 'Скасовано';

  @override
  String get appAlreadyAdded => 'Застосунок вже додано';

  @override
  String get alreadyUpToDateQuestion => 'Застосунок вже оновлено?';

  @override
  String get addApp => 'Додати';

  @override
  String get appSourceURL => 'URL-адреса джерела застосунку';

  @override
  String get error => 'Помилка';

  @override
  String get add => 'Додати';

  @override
  String get searchSomeSourcesLabel => 'Пошук (Лише деякі джерела)';

  @override
  String get search => 'Пошук';

  @override
  String additionalOptsFor(String arg1) {
    return 'Додаткові опції для $arg1';
  }

  @override
  String get supportedSources => 'Підтримувані джерела';

  @override
  String get trackOnlyInBrackets => '(Тільки для відстеження)';

  @override
  String get searchableInBrackets => '(Можливий пошук)';

  @override
  String get appsString => 'Застосунки';

  @override
  String get noApps => 'Застосунків немає';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Застосунків для фільтрації немає';

  @override
  String byX(String arg1) {
    return 'Від $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Прогрес: $arg1%';
  }

  @override
  String get pleaseWait => 'Будь ласка, зачекайте';

  @override
  String get updateAvailable => 'Доступно оновлення';

  @override
  String get notInstalled => 'Не встановлено';

  @override
  String get pseudoVersion => 'псевдо-версія';

  @override
  String get selectAll => 'Вибрати все';

  @override
  String deselectX(String arg1) {
    return 'Скасувати вибір $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 буде видалено з Updatium, але залишиться встановленим на пристрої.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Видалити вибрані застосунки?';

  @override
  String get removeSelectedApps => 'Видалити вибрані застосунки';

  @override
  String updateX(String arg1) {
    return 'Оновити $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Встановити $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Позначити $arg1\n(Тільки відстежування)\nяк оновлено';
  }

  @override
  String changeX(String arg1) {
    return 'Змінити $arg1';
  }

  @override
  String get installUpdateApps => 'Встановити/Оновити застосунки';

  @override
  String get installUpdateSelectedApps =>
      'Встановити/Оновити вибрані застосунки';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Позначити $arg1 вибрані застосунки як оновлені?';
  }

  @override
  String get no => 'Ні';

  @override
  String get yes => 'Так';

  @override
  String get markSelectedAppsUpdated =>
      'Позначити вибрані застосунки як оновлені';

  @override
  String get pinToTop => 'Закріпити угорі';

  @override
  String get unpinFromTop => 'Відкріпити зверху';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Скинути статус встановлення для вибраних застосунків?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Статус встановлення будь-яких вибраних застосунків буде скинутий.\n\nЦе може допомогти, коли версія застосунку, відображена в Updatium, є неправильною через невдалі оновлення або інші проблеми.';

  @override
  String get customLinkMessage =>
      'Ці посилання працюють на пристроях з встановленим Updatium';

  @override
  String get shareAppConfigLinks =>
      'Поділитися посиланнями на конфігурацію Застосунку як HTML';

  @override
  String get shareSelectedAppURLs =>
      'Поділитися вибраними URL-адресами застосунків';

  @override
  String get resetInstallStatus => 'Скинути статус встановлення';

  @override
  String get more => 'Більше';

  @override
  String get removeOutdatedFilter => 'Видалити фільтр застарілих застосунків';

  @override
  String get showOutdatedOnly => 'Показати лише застарілі застосунки';

  @override
  String get filter => 'Фільтр';

  @override
  String get filterApps => 'Фільтрувати застосунки';

  @override
  String get appName => 'Назва застосунку';

  @override
  String get author => 'Автор';

  @override
  String get upToDateApps => 'Актуальні застосунки';

  @override
  String get nonInstalledApps => 'Невстановлені застосунки';

  @override
  String get importExport => 'Імпорт/Експорт';

  @override
  String get settings => 'Налаштування';

  @override
  String exportedTo(String arg1) {
    return 'Експортовано в $arg1';
  }

  @override
  String get updatiumExport => 'Експорт з Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Недійсний ввід';

  @override
  String importedX(String arg1) {
    return 'Імпортовано $arg1';
  }

  @override
  String get updatiumImport => 'Імпорт в Updatium';

  @override
  String get importFromURLList => 'Імпорт зі списку URL-адрес';

  @override
  String get searchQuery => 'Пошуковий запит';

  @override
  String get appURLList => 'Список URL-адрес застосунків';

  @override
  String get line => 'Лінія';

  @override
  String searchX(String arg1) {
    return 'Пошук $arg1';
  }

  @override
  String get noResults => 'Результати відсутні';

  @override
  String importX(String arg1) {
    return 'Імпорт $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Імпортовані застосунки можуть неправильно відображатися як \"Не встановлені\".\nДля виправлення цього перевстановіть їх через Updatium.\nЦе не повинно вплинути на дані застосунків.\n\nПов\'язано лише з URL-адресами та імпортом від третіх сторін.';

  @override
  String get importErrors => 'Помилки імпорту';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return 'Імпортовано $arg1 з $arg2 застосунків.';
  }

  @override
  String get followingURLsHadErrors => 'Помилки в наступних URL-адресах:';

  @override
  String get selectURL => 'Вибрати URL';

  @override
  String get selectURLs => 'Вибрати URL-адреси';

  @override
  String get pick => 'Вибрати';

  @override
  String get theme => 'Тема';

  @override
  String get dark => 'Темна';

  @override
  String get light => 'Світла';

  @override
  String get followSystem => 'Дотримуватися системи';

  @override
  String get followSystemThemeExplanation =>
      'Зміна теми системи можлива лише за допомогою сторонніх додатків';

  @override
  String get useBlackTheme => 'Використовувати чорну тему (Amoled)';

  @override
  String get appSortBy => 'Сортувати застосунки за';

  @override
  String get authorName => 'Автор/Назва';

  @override
  String get nameAuthor => 'Назва/Автор';

  @override
  String get asAdded => 'За додаванням';

  @override
  String get appSortOrder => 'Порядок сортування застосунків';

  @override
  String get ascending => 'За зростанням';

  @override
  String get descending => 'За спаданням';

  @override
  String get bgUpdateCheckInterval =>
      'Інтервал перевірки оновлень у фоновому режимі';

  @override
  String get neverManualOnly => 'Ніколи - Тільки вручну';

  @override
  String get appearance => 'Вигляд';

  @override
  String get pinUpdates =>
      'Закріпити оновлення у верхній частині вигляду застосунків';

  @override
  String get updates => 'Оновлення';

  @override
  String get sourceSpecific => 'Певне джерело';

  @override
  String get appSource => 'Джерело застосунку';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Немає логів';

  @override
  String get appLogs => 'Лог застосунку';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Закрити';

  @override
  String get share => 'Поділитися';

  @override
  String get appNotFound => 'Застосунок не знайдено';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'експорт з Updatium';

  @override
  String get pickAnAPK => 'Вибрати APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 має більше одного пакету:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Ваш пристрій підтримує архітектуру процесора $arg1.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Ваш пристрій підтримує наступні архітектури процесора:';

  @override
  String get warning => 'Попередження';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Джерело застосунку - \'$arg1\' але пакет випуску походить з \'$arg2\'. Продовжити?';
  }

  @override
  String get updatesAvailable => 'Доступні оновлення';

  @override
  String get updatesAvailableNotifDescription =>
      'Повідомляє користувача, що доступні оновлення для одного чи декількох застосунків, які відстежує Updatium';

  @override
  String get noNewUpdates => 'Немає нових оновлень.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 має оновлення.';
  }

  @override
  String get appsUpdated => 'Застосунки оновлено';

  @override
  String get appsNotUpdated => 'Не вдалося оновити програми';

  @override
  String get appsUpdatedNotifDescription =>
      'Повідомляє користувача, що оновлення одного чи декількох застосунків було застосовано в фоновому режимі';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 було оновлено до $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Не вдалося оновити $arg1 на $arg2.';
  }

  @override
  String get errorCheckingUpdates => 'Помилка перевірки оновлень';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Повідомлення, яке з\'являється, коли перевірка оновлень в фоновому режимі завершується невдачею';

  @override
  String get appsRemoved => 'Застосунки видалено';

  @override
  String get appsRemovedNotifDescription =>
      'Повідомляє користувача, що один чи декілька застосунків були видалені через помилки при завантаженні';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 було видалено через цю помилку: $arg2';
  }

  @override
  String get completeAppInstallation => 'Завершення установки застосунку';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Для встановлення застосунків Updatium має бути відкритий';

  @override
  String get completeAppInstallationNotifDescription =>
      'Прохання користувача повернутися до Updatium для завершення установки застосунку';

  @override
  String get checkingForUpdates => 'Перевірка оновлень';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Тимчасове повідомлення, яке з\'являється при перевірці оновлень';

  @override
  String get pleaseAllowInstallPerm =>
      'Будь ласка, дозвольте Updatium встановлювати застосунки';

  @override
  String get trackOnly => 'Тільки відстеження';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Помилка $arg1 HTTP-коду';
  }

  @override
  String get versionCorrectionDisabled =>
      'Виправлення версії вимкнено (здається, плагін не працює)';

  @override
  String get unknown => 'Невідомо';

  @override
  String get none => 'Нічого';

  @override
  String get all => 'Усе.';

  @override
  String get never => 'Ніколи';

  @override
  String latestVersionX(String arg1) {
    return 'Остання версія: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Встановлено: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Остання перевірка оновлень: $arg1';
  }

  @override
  String get remove => 'Видалити';

  @override
  String get yesMarkUpdated => 'Так, позначити як оновлене';

  @override
  String get fdroid => 'F-Droid Офіційний';

  @override
  String get appIdOrName => 'Ідентифікатор або назва застосунку';

  @override
  String get appId => 'Ідентифікатор застосунку';

  @override
  String get appWithIdOrNameNotFound =>
      'Застосунок з таким ідентифікатором або назвою не знайдено';

  @override
  String get reposHaveMultipleApps =>
      'Сховища можуть містити кілька застосунків';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid Стороннє сховище';

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
  String get install => 'Встановити';

  @override
  String get markInstalled => 'Позначити як встановлене';

  @override
  String get update => 'Оновити';

  @override
  String get updated => 'Оновлено';

  @override
  String get markUpdated => 'Позначити як оновлене';

  @override
  String get additionalOptions => 'Додаткові опції';

  @override
  String get disableVersionDetection => 'Вимкнути визначення версії';

  @override
  String get noVersionDetectionExplanation =>
      'Цю опцію слід використовувати лише для застосунків, де визначення версії працює неправильно.';

  @override
  String downloadingX(String arg1) {
    return 'Завантаження $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'Завантажити $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'Завантажено $arg1';
  }

  @override
  String get releaseAsset => 'Звільнити актив';

  @override
  String get downloadNotifDescription =>
      'Повідомляє користувача про прогрес завантаження застосунку';

  @override
  String get noAPKFound => 'APK не знайдено';

  @override
  String get noVersionDetection => 'Визначення версії відключено';

  @override
  String get categorize => 'Категоризувати';

  @override
  String get categories => 'Категорії';

  @override
  String get category => 'Категорія';

  @override
  String get noCategory => 'Без категорії';

  @override
  String get noCategories => 'Немає категорій';

  @override
  String get deleteCategoriesQuestion => 'Видалити категорії?';

  @override
  String get categoryDeleteWarning =>
      'Усі застосунки у видалених категоріях будуть переведені у некатегоризовані.';

  @override
  String get addCategory => 'Додати категорію';

  @override
  String get label => 'Мітка';

  @override
  String get language => 'Мова';

  @override
  String get copiedToClipboard => 'Скопійовано в буфер обміну';

  @override
  String get storagePermissionDenied =>
      'Відмовлено у дозволі на доступ до сховища';

  @override
  String get selectedCategorizeWarning =>
      'Це замінить будь-які існуючі налаштування категорій для вибраних застосунків.';

  @override
  String get filterAPKsByRegEx => 'Фільтрувати APK за регулярним виразом';

  @override
  String get removeFromUpdatium => 'Видалити з Updatium';

  @override
  String get uninstallFromDevice => 'Видалити з пристрою';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Працює лише з застосунками з вимкненим визначенням версії.';

  @override
  String get releaseDateAsVersion =>
      'Використовувати дату випуску як рядок версії';

  @override
  String get releaseTitleAsVersion =>
      'Використовувати назву випуску як рядок версії';

  @override
  String get releaseDateAsVersionExplanation =>
      'Цю опцію слід використовувати лише для застосунків, де визначення версії працює неправильно, але є дата випуску.';

  @override
  String get changes => 'Зміни';

  @override
  String get releaseDate => 'Дата випуску';

  @override
  String get importFromURLsInFile =>
      'Імпорт з URL-адрес у файлі (наприклад, OPML)';

  @override
  String get versionDetectionExplanation =>
      'Порівняти рядок версії з версією, визначеною операційною системою';

  @override
  String get versionDetection => 'Визначення версії';

  @override
  String get standardVersionDetection => 'Стандартне визначення версії';

  @override
  String get groupByCategory => 'Групувати за категоріями';

  @override
  String get listView => 'Вигляд списку';

  @override
  String get gridView => 'Вигляд сітки';

  @override
  String get autoApkFilterByArch =>
      'Спробувати фільтрувати APK за архітектурою ЦП, якщо можливо';

  @override
  String get autoLinkFilterByArch =>
      'Спробуйте відфільтрувати посилання за архітектурою процесора, якщо це можливо';

  @override
  String get overrideSource => 'Перевизначити джерело';

  @override
  String get dontShowAgain => 'Не показувати це знову';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Не показувати попередження про \'Тільки відстеження\'';

  @override
  String get dontShowAPKOriginWarnings =>
      'Не показувати попередження про походження APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Перемістити невстановлені застосунки вниз у перегляді застосунців';

  @override
  String get hideNonInstalledApps => 'Приховати невстановлені застосунки';

  @override
  String get gitlabPATLabel =>
      'Особистий токен GitLab (Увімкнення пошуку та краще виявлення APK)';

  @override
  String get about => 'Про програму';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1 потребує додаткових облікових даних (у налаштуваннях)';
  }

  @override
  String get checkOnStart => 'Перевірити наявність оновлень при запуску';

  @override
  String get safeMode => 'Безпечний режим';

  @override
  String get safeModeDescription =>
      'Приховати сторінку Додати додаток і показати Імпорт/Експорт натомість';

  @override
  String get safeModeAddAppDisabled =>
      'Додавання додатка вимкнено в безпечному режимі';

  @override
  String get tryInferAppIdFromCode =>
      'Спробувати вивести ідентифікатор застосунку з вихідного коду';

  @override
  String get removeOnExternalUninstall =>
      'Автоматично видаляти застосунки, які було видалено зовнішнім чином';

  @override
  String get pickHighestVersionCode =>
      'Автоматично вибрати APK з найвищим кодом версії';

  @override
  String get checkUpdateOnDetailPage =>
      'Перевіряти наявність оновлень при відкритті сторінки деталей застосунку';

  @override
  String get disablePageTransitions =>
      'Вимкнути анімації переходів між сторінками';

  @override
  String get reversePageTransitions =>
      'Зворотні анімації переходів між сторінками';

  @override
  String get minStarCount => 'Мінімальна кількість зірок';

  @override
  String get addInfoBelow => 'Додати цю інформацію нижче.';

  @override
  String get addInfoInSettings => 'Додати цю інформацію у налаштуваннях.';

  @override
  String get githubSourceNote =>
      'Лімітування швидкості GitHub можна уникнути, використовуючи ключ API.';

  @override
  String get sortByLastLinkSegment =>
      'Сортувати лише за останнім сегментом посилання';

  @override
  String get filterReleaseNotesByRegEx =>
      'Фільтрувати примітки до релізу за регулярним виразом';

  @override
  String get customLinkFilterRegex =>
      'Фільтр кастомного посилання на APK за регулярним виразом (за замовчуванням \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Спроб оновлення застосунків';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Повідомляє користувача, що оновлення одного або декількох застосунків можливо були застосовані в фоновому режимі';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 можливо було оновлено до $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'Увімкнути оновлення в фоновому режимі';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Оновлення в фоновому режимі може бути неможливим для всіх застосунків.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Успіх фонової установки може бути визначений лише після відкриття Updatium.';

  @override
  String get verifyLatestTag => 'Перевірити тег \'latest\'';

  @override
  String get intermediateLinkRegex =>
      'Фільтр для \'Проміжного\' Посилання для Відвідування';

  @override
  String get filterByLinkText => 'Фільтрувати посилання за текстом посилання';

  @override
  String get matchLinksOutsideATags => 'Зіставлення посилань поза тегами <a>';

  @override
  String get intermediateLinkNotFound => 'Проміжне посилання не знайдено';

  @override
  String get intermediateLink => 'Проміжне посилання';

  @override
  String get exemptFromBackgroundUpdates =>
      'Виключено з фонових оновлень (якщо ввімкнено)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Вимкнути фонові оновлення поза Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Вимкнути фонові оновлення, коли не заряджається';

  @override
  String get autoSelectHighestVersionCode =>
      'Автоматичний вибір APK з найвищим кодом версії';

  @override
  String get versionExtractionRegEx =>
      'Регулярний вираз для вилучення рядка версії';

  @override
  String get trimVersionString => 'Обрізати рядок версії за допомогою RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Група збігів для \"$arg1\"';
  }

  @override
  String get matchGroupToUse =>
      'Група співпадінь для використання в регулярному виразі вилучення версії';

  @override
  String get highlightTouchTargets =>
      'Підсвічувати менш очевидні області дотику';

  @override
  String get pickExportDir => 'Вибрати каталог експорту';

  @override
  String get autoExportOnChanges => 'Автоматичний експорт при змінах';

  @override
  String get includeSettings => 'Включити налаштування';

  @override
  String get filterVersionsByRegEx =>
      'Фільтрувати версії за регулярним виразом';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Спробуйте вибрати запропонований код версії APK';

  @override
  String get dontSortReleasesList => 'Зберігати порядок випуску з API';

  @override
  String get reverseSort => 'Зворотне сортування';

  @override
  String get takeFirstLink => 'Вибрати перше посилання';

  @override
  String get skipSort => 'Пропустити сортування';

  @override
  String get debugMenu => 'Меню налагодження';

  @override
  String get bgTaskStarted => 'Запущено фонове завдання - перевірте журнали.';

  @override
  String get runBgCheckNow =>
      'Запустити перевірку оновлень в фоновому режимі зараз';

  @override
  String get versionExtractWholePage =>
      'Застосувати регулярний вираз вилучення версії до всієї сторінки';

  @override
  String get installing => 'Встановлення';

  @override
  String get skipUpdateNotifications => 'Пропустити сповіщення про оновлення';

  @override
  String get updatesAvailableNotifChannel => 'Доступні оновлення';

  @override
  String get appsUpdatedNotifChannel => 'Застосунки оновлені';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Спроба оновлення застосунків';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Помилка перевірки оновлень';

  @override
  String get appsRemovedNotifChannel => 'Застосунки видалені';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Завантаження $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Завершення встановлення застосунку';

  @override
  String get checkingForUpdatesNotifChannel => 'Перевірка оновлень';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Перевіряти лише встановлені та застосунки, які відстежуються для оновлень';

  @override
  String get supportFixedAPKURL => 'Підтримка фіксованих посилань на APK';

  @override
  String selectX(String arg1) {
    return 'Вибрати $arg1';
  }

  @override
  String get parallelDownloads => 'Дозволити паралельні завантаження';

  @override
  String get useShizuku => 'Використовуйте Shizuku або Sui для встановлення';

  @override
  String get shizukuBinderNotFound =>
      'Сумісний сервіс Shizuku не було знайдено';

  @override
  String get shizukuOld => 'Стара версія Shizuku (<11) - оновіть її';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku працює на Android < 8.1 з ADB - оновіть Android або використовуйте Sui замість нього';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Виберіть Google Play як джерело встановлення (якщо використовується Shizuku)';

  @override
  String get useSystemFont => 'Використовувати системний шрифт';

  @override
  String get useVersionCodeAsOSVersion =>
      'Використовувати код версії застосунку як версію, визначену операційною системою';

  @override
  String get requestHeader => 'Заголовок запиту';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Використовувати останню дату завантаження ресурсу як дату випуску';

  @override
  String get defaultPseudoVersioningMethod =>
      'Метод за замовчуванням псевдо-версіонування';

  @override
  String get partialAPKHash => 'Хеш часткового APK';

  @override
  String get directAPKLink => 'Пряме посилання на APK';

  @override
  String get pseudoVersionInUse => 'Використовується псевдо-версія';

  @override
  String get installed => 'Встановлено';

  @override
  String get latest => 'Остання';

  @override
  String get invertRegEx => 'Інвертувати регулярний вираз';

  @override
  String get note => 'Примітка';

  @override
  String selfHostedNote(String arg1) {
    return 'Випадаючий список \"$arg1\" може використовуватися для доступу до власних/призначених для самостійного використання екземплярів будь-якого джерела.';
  }

  @override
  String get badDownload =>
      'APK не вдалося розпарсити (несумісний або часткове завантаження)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Діліться новими додатками з AppVerifier (якщо доступно)';

  @override
  String get appVerifierInstructionToast =>
      'Надішліть на AppVerifier, а потім поверніться сюди, коли будете готові.';

  @override
  String get wiki => 'Довідка/Вікі';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Дозволити незахищені HTTP-запити';

  @override
  String get stayOneVersionBehind => 'Залишайтеся на одну версію актуальнішою';

  @override
  String get useFirstApkOfVersion =>
      'Автоматичний вибір першого з декількох APK';

  @override
  String get refreshBeforeDownload =>
      'Оновіть інформацію про програму перед завантаженням';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Ім\'я';

  @override
  String get smartname => 'Ім\'я (Smart)';

  @override
  String get sortMethod => 'Метод сортування';

  @override
  String get welcome => 'Ласкаво просимо.';

  @override
  String get documentationLinksNote =>
      'Сторінка Updatium на GitHub, посилання на яку наведено нижче, містить посилання на відео, статті, дискусії та інші ресурси, які допоможуть вам зрозуміти, як користуватися додатком.';

  @override
  String get batteryOptimizationNote =>
      'Зауважте, що фонові завантаження можуть працювати надійніше, якщо ви вимкнете оптимізацію батареї ОС для Updatium.';

  @override
  String fileDeletionError(String arg1) {
    return 'Не вдалося видалити файл (спробуйте видалити його вручну, а потім спробуйте ще раз): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Обслуговування переднього плану Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Використовуйте службу переднього плану для перевірки оновлень (надійніша, споживає більше енергії)';

  @override
  String get fgServiceNotice =>
      'Це сповіщення необхідне для фонової перевірки оновлень (його можна приховати в налаштуваннях ОС)';

  @override
  String get excludeSecrets => 'Виключити секрети';

  @override
  String get includeZips => 'Додайте ZIP-файли';

  @override
  String get zippedApkFilterRegEx => 'Фільтруйте APK-файли всередині ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google оголосила, що, починаючи з 2026/2027, всі додатки на \"сертифікованих\" пристроях Android будуть вимагати розробника, щоб подати особисті дані в Інтернеті безпосередньо на Google.\n\nПісля цього, Updatium може припинити працювати на сертифікованих пристроях Android.';

  @override
  String get googleVerificationWarningP2 =>
      'Перейти на https://keepandroidopen.org/ для отримання додаткової інформації.';

  @override
  String get googleVerificationWarningP3 =>
      'Зауважте, що в короткостроковому терміні вона може продовжувати бути можливою для установки \"необґрунтованих\" (некомпліантних) додатків через процес \"додатковий потік\", який Google обіцяє реалізувати після широкої задньої вії до їх оголошення, але вони не докладно, як це буде працювати так, що це не зрозуміло, чи це буде дійсно зберігати свобод користувачів будь-яким практичним способом.\n\nУ будь-якому випадку, переміщення Google є важливим кроком до кінця безкоштовного, універсального обчислення для фізичних осіб.\n\nНесертифіковані ОС, як GrapheneOS, повинні бути неоцінені цими протягом тривалого часу, щоб вони могли продовжити існування.';

  @override
  String get multipleSigners => 'Кілька підписників';

  @override
  String get securityDisclaimerTitle =>
      'Відмова від відповідальності щодо безпеки та правових питань';

  @override
  String get license => 'Ліцензія';

  @override
  String get licenseText =>
      'Цей додаток розповсюджується під ліцензією GPL v3.';

  @override
  String get disclaimer => 'Відмова від відповідальності';

  @override
  String get disclaimerText =>
      'Цей додаток не розповсюджує, не розміщує та не перевіряє жодні зовнішні додатки. Користувач несе повну відповідальність за безпеку та законність будь-якого програмного забезпечення, встановленого через цей інструмент.\n\nhttps://github.com/omeritzics/Updatium - це єдине офіційне місце для завантаження Updatium - наполегливо не рекомендується завантажувати його з інших місць, оскільки завантаження з неофіційних джерел небезпечне.';

  @override
  String get privacy => 'Конфіденційність';

  @override
  String get privacyText =>
      'Цей додаток орієнтований на конфіденційність і не збирає особисті дані.';

  @override
  String get acceptAndContinue => 'Прийняти та продовжити';

  @override
  String get decline => 'Відхилити';

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
  String get aPKLinkHash => 'Хеш посилання на APK';

  @override
  String get gHReqPrefix =>
      'екземпляр \'sky22333/hubproxy\' для запитів на GitHub';

  @override
  String get continueAction => 'Продовжити';

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
