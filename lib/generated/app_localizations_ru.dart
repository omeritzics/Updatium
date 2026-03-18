// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Неверный URL-адрес приложения: $arg1';
  }

  @override
  String get noReleaseFound => 'Не удалось найти подходящий выпуск';

  @override
  String get noVersionFound => 'Не удалось определить версию выпуска';

  @override
  String get urlMatchesNoSource =>
      'URL-адрес не соответствует известному источнику';

  @override
  String get cantInstallOlderVersion =>
      'Невозможно установить более старую версию приложения';

  @override
  String get appIdMismatch =>
      'ID загруженного пакета не совпадает с существующим ID приложения';

  @override
  String get functionNotImplemented => 'Этот класс не реализовал эту функцию';

  @override
  String get placeholder => 'Заполнитель';

  @override
  String get someErrors => 'Возникли некоторые ошибки';

  @override
  String get unexpectedError => 'Неожиданная ошибка';

  @override
  String get ok => 'OK';

  @override
  String get and => 'и';

  @override
  String get githubPATLabel =>
      'Персональный токен доступа GitHub\n(увеличивает лимит запросов)';

  @override
  String get includePrereleases => 'Включать предварительные выпуски';

  @override
  String get fallbackToOlderReleases => 'Откатываться к предыдущей версии';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Фильтровать заголовки выпусков\n(регулярное выражение)';

  @override
  String get invalidRegEx => 'Неверное регулярное выражение';

  @override
  String get noDescription => 'Нет описания';

  @override
  String get cancel => 'Отмена';

  @override
  String get requiredInBrackets => '(обязательно)';

  @override
  String get dropdownNoOptsError =>
      'Ошибка: в выпадающем списке должна быть выбрана хотя бы одна настройка';

  @override
  String get color => 'Цвет';

  @override
  String get standard => 'Стандартный';

  @override
  String get custom => 'Индивидуальный';

  @override
  String get useMaterialYou => 'Использовать цвета Material You';

  @override
  String get githubStarredRepos => 'Избранные репозитории GitHub';

  @override
  String get uname => 'Имя пользователя';

  @override
  String get wrongArgNum =>
      'Неправильное количество предоставленных аргументов';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 только для отслеживания';
  }

  @override
  String get source => 'Источник';

  @override
  String get app => 'Приложение';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Приложения из этого источника настроены только для отслеживания';

  @override
  String get youPickedTrackOnly =>
      'Выбрана настройка «только для отслеживания»';

  @override
  String get trackOnlyAppDescription =>
      'Приложение будет отслеживаться на предмет обновлений, но Updatium не сможет загрузить или установить его';

  @override
  String get cancelled => 'Отменено';

  @override
  String get appAlreadyAdded => 'Приложение уже добавлено';

  @override
  String get alreadyUpToDateQuestion => 'Приложение уже обновлено?';

  @override
  String get addApp => 'Добавить';

  @override
  String get appSourceURL => 'URL-адрес источника приложения';

  @override
  String get error => 'Ошибка';

  @override
  String get add => 'Добавить';

  @override
  String get searchSomeSourcesLabel => 'Поиск (в некоторых источниках)';

  @override
  String get search => 'Поиск';

  @override
  String additionalOptsFor(String arg1) {
    return 'Дополнительные настройки для $arg1';
  }

  @override
  String get supportedSources => 'Поддерживаемые источники';

  @override
  String get trackOnlyInBrackets => '(только отслеживание)';

  @override
  String get searchableInBrackets => '(поиск)';

  @override
  String get appsString => 'Приложения';

  @override
  String get noApps => 'Нет приложений';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Нет приложений для фильтра';

  @override
  String byX(String arg1) {
    return 'От $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Прогресс: $arg1%';
  }

  @override
  String get pleaseWait => 'Пожалуйста, подождите';

  @override
  String get updateAvailable => 'Доступно обновление';

  @override
  String get notInstalled => 'Не установлено';

  @override
  String get pseudoVersion => 'псевдоверсия';

  @override
  String get selectAll => 'Выбрать всё';

  @override
  String deselectX(String arg1) {
    return 'Отменить выбор $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 будет удалено из Updatium, но останется на устройстве';
  }

  @override
  String get removeSelectedAppsQuestion => 'Удалить выбранные приложения?';

  @override
  String get removeSelectedApps => 'Удалить выбранные приложения';

  @override
  String updateX(String arg1) {
    return 'Обновить $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Установить $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Отметить $arg1\n(только для отслеживания)\nкак обновлённое';
  }

  @override
  String changeX(String arg1) {
    return 'Изменить $arg1';
  }

  @override
  String get installUpdateApps => 'Установить/обновить приложения';

  @override
  String get installUpdateSelectedApps =>
      'Установить/обновить выбранные приложения';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Выбрано приложений: $arg1. Отметить как обновлённые?';
  }

  @override
  String get no => 'Нет';

  @override
  String get yes => 'Да';

  @override
  String get markSelectedAppsUpdated =>
      'Отметить выбранные приложения как обновлённые';

  @override
  String get pinToTop => 'Закрепить сверху';

  @override
  String get unpinFromTop => 'Открепить';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Сбросить статус установки для выбранных приложений?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Статус установки для выбранных приложений будет сброшен.\n\nЭто может помочь, если версия приложения, отображаемая в Updatium, некорректная (из-за неудачных обновлений или других проблем).';

  @override
  String get customLinkMessage =>
      'Эти ссылки работают на устройствах с установленным Updatium';

  @override
  String get shareAppConfigLinks =>
      'Поделиться конфигурацией приложения в виде HTML-ссылки';

  @override
  String get shareSelectedAppURLs =>
      'Поделиться URL-адресами выбранных приложений';

  @override
  String get resetInstallStatus => 'Сбросить статус установки';

  @override
  String get more => 'Ещё';

  @override
  String get removeOutdatedFilter => 'Удалить фильтр для устаревших приложений';

  @override
  String get showOutdatedOnly => 'Показывать только устаревшие приложения';

  @override
  String get filter => 'Фильтр';

  @override
  String get filterApps => 'Фильтровать приложения';

  @override
  String get appName => 'Название приложения';

  @override
  String get author => 'Автор';

  @override
  String get upToDateApps => 'Приложения с обновлениями';

  @override
  String get nonInstalledApps => 'Неустановленные приложения';

  @override
  String get importExport => 'Данные';

  @override
  String get settings => 'Настройки';

  @override
  String exportedTo(String arg1) {
    return 'Экспортировано в $arg1';
  }

  @override
  String get updatiumExport => 'Экспорт из Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Неверный ввод';

  @override
  String importedX(String arg1) {
    return 'Импортировано $arg1';
  }

  @override
  String get updatiumImport => 'Импорт в Updatium';

  @override
  String get importFromURLList => 'Импорт из списка URL-адресов';

  @override
  String get searchQuery => 'Поисковый запрос';

  @override
  String get appURLList => 'Список URL-адресов приложений';

  @override
  String get line => 'Строка';

  @override
  String searchX(String arg1) {
    return 'Поиск $arg1';
  }

  @override
  String get noResults => 'Ничего не найдено';

  @override
  String importX(String arg1) {
    return 'Импорт $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Импортированные приложения могут неверно отображаться как неустановленные.\nДля исправления этой проблемы повторно установите их через Updatium.\nЭто не должно повлиять на данные приложения.\n\nПроблемы возникают только при импорте из URL-адреса и сторонних источников.';

  @override
  String get importErrors => 'Ошибка импорта';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return 'Импортировано приложений: $arg1 из $arg2';
  }

  @override
  String get followingURLsHadErrors =>
      'При импорте следующие URL-адреса содержали ошибки:';

  @override
  String get selectURL => 'Выбрать URL-адрес';

  @override
  String get selectURLs => 'Выбрать URL-адреса';

  @override
  String get pick => 'Выбрать';

  @override
  String get theme => 'Тема';

  @override
  String get dark => 'Тёмная';

  @override
  String get light => 'Светлая';

  @override
  String get followSystem => 'Как в системе';

  @override
  String get followSystemThemeExplanation =>
      'Следование системной теме возможно только при использовании сторонних приложений';

  @override
  String get useBlackTheme => 'Использовать чёрную тему';

  @override
  String get appSortBy => 'Сортировка приложений';

  @override
  String get authorName => 'Автор/название';

  @override
  String get nameAuthor => 'Название/автор';

  @override
  String get asAdded => 'В порядке добавления';

  @override
  String get appSortOrder => 'Порядок';

  @override
  String get ascending => 'По возрастанию';

  @override
  String get descending => 'По убыванию';

  @override
  String get bgUpdateCheckInterval =>
      'Интервал проверки обновлений в фоновом режиме';

  @override
  String get neverManualOnly => 'Никогда — только вручную';

  @override
  String get appearance => 'Внешний вид';

  @override
  String get pinUpdates => 'Показывать обновления приложений сверху списка';

  @override
  String get updates => 'Обновления';

  @override
  String get sourceSpecific => 'Настройки источников';

  @override
  String get appSource => 'Источник';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Нет журналов';

  @override
  String get appLogs => 'Журналы';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Закрыть';

  @override
  String get share => 'Поделиться';

  @override
  String get appNotFound => 'Приложение не найдено';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'экспорт-updatium';

  @override
  String get pickAnAPK => 'Выберите APK-файл';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 имеет более одного пакета:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Ваше устройство поддерживает архитектуру процессора $arg1';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Ваше устройство поддерживает следующие архитектуры процессора:';

  @override
  String get warning => 'Предупреждение';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Источник приложения — «$arg1», но пакет для установки получен из «$arg2». Продолжить?';
  }

  @override
  String get updatesAvailable => 'Доступны обновления';

  @override
  String get updatesAvailableNotifDescription =>
      'Уведомляет о наличии обновлений для одного или нескольких приложений в Updatium';

  @override
  String get noNewUpdates => 'Нет обновлений';

  @override
  String xHasAnUpdate(String arg1) {
    return 'Для $arg1 есть обновление';
  }

  @override
  String get appsUpdated => 'Приложения обновлены';

  @override
  String get appsNotUpdated => 'Не удалось обновить приложения';

  @override
  String get appsUpdatedNotifDescription =>
      'Уведомляет об обновлении одного или нескольких приложений в фоновом режиме';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 обновлено до версии $arg2';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Не удалось обновить $arg1 до версии $arg2';
  }

  @override
  String get errorCheckingUpdates => 'Ошибка при проверке обновлений';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Уведомление о завершении проверки обновлений в фоновом режиме с ошибкой';

  @override
  String get appsRemoved => 'Приложение удалено';

  @override
  String get appsRemovedNotifDescription =>
      'Уведомление об удалении одного или несколько приложений из-за ошибок при их загрузке';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 удалено из-за ошибки: $arg2';
  }

  @override
  String get completeAppInstallation => 'Завершение установки приложения';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium должен быть открыт для установки приложений';

  @override
  String get completeAppInstallationNotifDescription =>
      'Уведомление о необходимости открыть Updatium для завершения установки приложения';

  @override
  String get checkingForUpdates => 'Проверка обновлений';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Временное уведомление, которое появляется при проверке обновлений';

  @override
  String get pleaseAllowInstallPerm =>
      'Пожалуйста, разрешите Updatium устанавливать приложения';

  @override
  String get trackOnly => 'Только отслеживать';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Ошибка $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Коррекция версий отключена (плагин, кажется, не работает)';

  @override
  String get unknown => 'Неизвестно';

  @override
  String get none => 'Отсутствует';

  @override
  String get all => 'Все';

  @override
  String get never => 'Никогда';

  @override
  String latestVersionX(String arg1) {
    return 'Последняя версия: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Установленная версия: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Последняя проверка: $arg1';
  }

  @override
  String get remove => 'Удалить';

  @override
  String get yesMarkUpdated => 'Да, отметить как обновлённое';

  @override
  String get fdroid => 'Официальные репозитории F-Droid';

  @override
  String get appIdOrName => 'ID или название приложения';

  @override
  String get appId => 'ID приложения';

  @override
  String get appWithIdOrNameNotFound =>
      'Приложение с таким ID или названием не было найдено';

  @override
  String get reposHaveMultipleApps => 'В хранилище несколько приложений';

  @override
  String get fdroidThirdPartyRepo => 'Сторонние репозитории F-Droid';

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
  String get install => 'Установить';

  @override
  String get markInstalled => 'Отметить установленным';

  @override
  String get update => 'Обновить';

  @override
  String get updated => 'Обновлено';

  @override
  String get markUpdated => 'Отметить обновлённым';

  @override
  String get additionalOptions => 'Дополнительные настройки';

  @override
  String get disableVersionDetection => 'Отключить определение версии';

  @override
  String get noVersionDetectionExplanation =>
      'Эта настройка должна использоваться только для приложений, где определение версии не работает корректно';

  @override
  String downloadingX(String arg1) {
    return 'Загрузка $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'Загрузить $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'Загружено $arg1';
  }

  @override
  String get releaseAsset => 'Объект выпуска';

  @override
  String get downloadNotifDescription =>
      'Уведомляет пользователя о прогрессе загрузки приложения';

  @override
  String get noAPKFound => 'APK-файл не найден';

  @override
  String get noVersionDetection => 'Определение версий отключено';

  @override
  String get categorize => 'Категоризировать';

  @override
  String get categories => 'Категории';

  @override
  String get category => 'Категория';

  @override
  String get noCategory => 'Без категории';

  @override
  String get noCategories => 'Без категорий';

  @override
  String get deleteCategoriesQuestion => 'Удалить категории?';

  @override
  String get categoryDeleteWarning =>
      'Все приложения в удалённых категориях будут помечены как «без категории»';

  @override
  String get addCategory => 'Добавить категорию';

  @override
  String get label => 'Метка';

  @override
  String get language => 'Язык';

  @override
  String get copiedToClipboard => 'Скопировано в буфер обмена';

  @override
  String get storagePermissionDenied => 'Отказано в доступе к хранилищу';

  @override
  String get selectedCategorizeWarning =>
      'Это заменит все текущие настройки категорий для выбранных приложений';

  @override
  String get filterAPKsByRegEx =>
      'Фильтровать APK-файлы\n(регулярное выражение)';

  @override
  String get removeFromUpdatium => 'Удалить из Updatium';

  @override
  String get uninstallFromDevice => 'Удалить с устройства';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Работает только для приложений с отключённым определением версии';

  @override
  String get releaseDateAsVersion =>
      'Использовать дату выпуска в качестве версии';

  @override
  String get releaseTitleAsVersion =>
      'Использовать название выпуска в качестве версии';

  @override
  String get releaseDateAsVersionExplanation =>
      'Эта настройка должна использоваться только для приложений, в которых определение версии не работает правильно, но имеется дата выпуска';

  @override
  String get changes => 'Изменения';

  @override
  String get releaseDate => 'Дата выпуска';

  @override
  String get importFromURLsInFile =>
      'Импорт из файла URL-адресов (например: OPML)';

  @override
  String get versionDetectionExplanation =>
      'Согласовать строку версии с версией, обнаруженной в ОС';

  @override
  String get versionDetection => 'Определение версии';

  @override
  String get standardVersionDetection => 'Стандартное';

  @override
  String get groupByCategory => 'Группировать по категориям';

  @override
  String get listView => 'Вид списка';

  @override
  String get gridView => 'Вид сетки';

  @override
  String get autoApkFilterByArch =>
      'Пытаться фильтровать APK по архитектуре процессора';

  @override
  String get autoLinkFilterByArch =>
      'Пытаться фильтровать ссылки по архитектуре процессора, если это возможно';

  @override
  String get overrideSource => 'Переопределить источник';

  @override
  String get dontShowAgain => 'Не показывать снова';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Не показывать предупреждения о только отслеживаемых приложениях';

  @override
  String get dontShowAPKOriginWarnings =>
      'Не показывать предупреждения об отличающемся источнике APK-файлов';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Показывать неустановленные приложения внизу списка';

  @override
  String get hideNonInstalledApps => 'Скрыть неустановленные приложения';

  @override
  String get gitlabPATLabel => 'Персональный токен доступа GitLab';

  @override
  String get about => 'Описание';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1: для этого требуются дополнительные учётные данные (в настройках)';
  }

  @override
  String get checkOnStart => 'Проверять наличие обновлений при запуске';

  @override
  String get safeMode => 'Безопасный режим';

  @override
  String get safeModeDescription =>
      'Скрыть страницу Добавить приложение и показать Импорт/Экспорт вместо этого';

  @override
  String get safeModeAddAppDisabled =>
      'Добавление приложения отключено в безопасном режиме';

  @override
  String get tryInferAppIdFromCode =>
      'Попытаться определить ID приложения из исходного кода';

  @override
  String get removeOnExternalUninstall =>
      'Автоматически убирать из списка удалённые извне приложения';

  @override
  String get pickHighestVersionCode => 'Автовыбор актуальной версии кода APK';

  @override
  String get checkUpdateOnDetailPage =>
      'Проверять наличие обновлений при открытии страницы приложения';

  @override
  String get disablePageTransitions =>
      'Отключить анимацию перехода между страницами';

  @override
  String get reversePageTransitions =>
      'Реверс анимации перехода между страницами';

  @override
  String get minStarCount => 'Минимальное количество звёзд';

  @override
  String get addInfoBelow => 'Добавьте эту информацию ниже';

  @override
  String get addInfoInSettings => 'Добавьте эту информацию в «Настройки»';

  @override
  String get githubSourceNote =>
      'Используя ключ API, можно обойти ограничение запросов GitHub';

  @override
  String get sortByLastLinkSegment =>
      'Сортировать только по последнему сегменту ссылки';

  @override
  String get filterReleaseNotesByRegEx =>
      'Фильтровать примечания к выпуску\n(регулярное выражение)';

  @override
  String get customLinkFilterRegex =>
      'Пользовательский фильтр ссылок APK\n(регулярное выражение, по умолчанию: «.apk\$»)';

  @override
  String get appsPossiblyUpdated => 'Попытки обновления приложений';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Уведомление о возможных обновлениях одного или нескольких приложений в фоновом режиме';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 возможно был обновлён до $arg2';
  }

  @override
  String get enableBackgroundUpdates => 'Включить обновления в фоне';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Фоновые обновления могут быть возможны не для всех приложений';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Успешность фоновой установки можно определить только после открытия Updatium';

  @override
  String get verifyLatestTag => 'Проверять метку «latest»';

  @override
  String get intermediateLinkRegex =>
      'Фильтр для «промежуточной» ссылки для посещения';

  @override
  String get filterByLinkText => 'Фильтровать ссылки по тексту ссылки';

  @override
  String get matchLinksOutsideATags => 'Сопоставлять ссылки вне тегов <a>';

  @override
  String get intermediateLinkNotFound => 'Промежуточная ссылка не найдена';

  @override
  String get intermediateLink => 'Промежуточная ссылка';

  @override
  String get exemptFromBackgroundUpdates =>
      'Исключить из фоновых обновлений (если включено)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Отключить фоновые обновления, если нет подключения к Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Отключить фоновые обновления, если не идёт зарядка';

  @override
  String get autoSelectHighestVersionCode =>
      'Автовыбор APK с актуальной версией кода';

  @override
  String get versionExtractionRegEx =>
      'Извлечение версии\n(регулярное выражение)';

  @override
  String get trimVersionString =>
      'Обрезка строки версии\n(регулярное выражение)';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Группа соответствия для «$arg1»';
  }

  @override
  String get matchGroupToUse => 'Выбрать группу соответствия';

  @override
  String get highlightTouchTargets =>
      'Выделять менее очевидные элементы управления касанием';

  @override
  String get pickExportDir => 'Выбрать каталог для экспорта';

  @override
  String get autoExportOnChanges => 'Автоэкспорт при изменениях';

  @override
  String get includeSettings => 'Включить настройки';

  @override
  String get filterVersionsByRegEx =>
      'Фильтровать версии по регулярному выражению';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Пробовать выбрать предложенный код версии APK';

  @override
  String get dontSortReleasesList => 'Сохранить порядок выпусков от API';

  @override
  String get reverseSort => 'Обратная сортировка';

  @override
  String get takeFirstLink => 'Взять первую ссылку';

  @override
  String get skipSort => 'Пропустить сортировку';

  @override
  String get debugMenu => 'Меню отладки';

  @override
  String get bgTaskStarted => 'Фоновая задача начата — проверьте журналы';

  @override
  String get runBgCheckNow => 'Запустить проверку фонового обновления сейчас';

  @override
  String get versionExtractWholePage =>
      'Применить регулярное выражение версии ко всей странице';

  @override
  String get installing => 'Устанавливается';

  @override
  String get skipUpdateNotifications => 'Не оповещать об обновлениях';

  @override
  String get updatesAvailableNotifChannel => 'Доступны обновления';

  @override
  String get appsUpdatedNotifChannel => 'Приложения обновлены';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Попытки обновления приложений';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Ошибка при проверке обновлений';

  @override
  String get appsRemovedNotifChannel => 'Приложение удалено';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Загрузка $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Завершение установки приложения';

  @override
  String get checkingForUpdatesNotifChannel => 'Проверка обновлений';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Проверять обновления только у установленных или отслеживаемых приложений';

  @override
  String get supportFixedAPKURL => 'Поддержка фиксированных URL-адресов APK';

  @override
  String selectX(String arg1) {
    return 'Выбрать $arg1';
  }

  @override
  String get parallelDownloads => 'Использовать параллельные загрузки';

  @override
  String get useShizuku => 'Использовать Shizuku или Sui для установки';

  @override
  String get shizukuBinderNotFound =>
      'Совместимая служба Shizuku не найдена, возможно, она не запущена';

  @override
  String get shizukuOld => 'Устаревшая версия Shizuku (<11), обновите';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku работает на Android < 8.1 с ADB, обновите Android или используйте Sui';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Указывать Google Play как источник установки (если используется Shizuku)';

  @override
  String get useSystemFont => 'Использовать системный шрифт';

  @override
  String get useVersionCodeAsOSVersion =>
      'Использовать код версии приложения как версию, обнаруженную ОС';

  @override
  String get requestHeader => 'Заголовок запроса';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Использовать последнюю загрузку объекта в качестве даты выпуска';

  @override
  String get defaultPseudoVersioningMethod =>
      'Метод псевдоверсионирования по умолчанию';

  @override
  String get partialAPKHash => 'Частичный хеш APK';

  @override
  String get directAPKLink => 'Прямая ссылка на APK';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'Имя';

  @override
  String get sortMethod => 'Метод сортировки';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload =>
      'Обновлять информацию о приложении перед загрузкой';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'Используется псевдоверсия';

  @override
  String get installed => 'Установлен';

  @override
  String get latest => 'Последний';

  @override
  String get invertRegEx => 'Инвертировать регулярное выражение';

  @override
  String get note => 'Примечание';

  @override
  String selfHostedNote(String arg1) {
    return 'Выпадающий список «$arg1» можно использовать для доступа к самостоятельно размещённым/настроенным экземплярам любого источника.';
  }

  @override
  String get badDownload =>
      'Не удалось разобрать APK (несовместимая или неполная загрузка)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Делиться новыми приложениями с AppVerifier (если доступно)';

  @override
  String get appVerifierInstructionToast =>
      'Поделитесь с AppVerifier, а затем вернитесь сюда, когда будете готовы.';

  @override
  String get wiki => 'Помощь/Вики';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Разрешить небезопасные HTTP-запросы';

  @override
  String get stayOneVersionBehind => 'Оставаться на одну версию ниже последней';

  @override
  String get useFirstApkOfVersion => 'Автовыбор первого из нескольких APK';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get smartname => 'Имя (умное)';

  @override
  String get welcome => 'Добро пожаловать';

  @override
  String get documentationLinksNote =>
      'На странице Updatium в GitHub, ссылка на которую приведена ниже, содержатся ссылки на видео, статьи, обсуждения и другие ресурсы, которые помогут вам понять, как пользоваться приложением.';

  @override
  String get batteryOptimizationNote =>
      'Обратите внимание, что фоновая загрузка может работать более надёжно, если отключить оптимизацию батареи ОС для Updatium.';

  @override
  String fileDeletionError(String arg1) {
    return 'Не удалось удалить файл (попробуйте удалить его вручную, а затем повторите попытку): «$arg1»';
  }

  @override
  String get foregroundService => 'Приоритетная служба Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Использовать приоритетную службу для проверки обновлений (надёжнее, энергозатратнее)';

  @override
  String get fgServiceNotice =>
      'Это уведомление необходимо для фоновой проверки обновлений (оно может быть скрыто в настройках ОС)';

  @override
  String get excludeSecrets => 'Исключить секреты';

  @override
  String get includeZips => 'Включить ZIP-файлы';

  @override
  String get zippedApkFilterRegEx => 'Фильтр APK внутри ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google объявил, что начиная с 2026/2027 года, все приложения на сертифицированных устройствах Android потребуют от разработчика предоставления персональных данных непосредственно Google.\n\nПосле этого, Updatium может перестать работать на сертифицированных устройствах Android.';

  @override
  String get googleVerificationWarningP2 =>
      'Перейдите на https://keepandroidopen.org/ для получения дополнительной информации.';

  @override
  String get googleVerificationWarningP3 =>
      'Обратите внимание, что в краткосрочной перспективе возможно установить «непроверенные» (не соответствующие) приложения с помощью процесса «продвинутого потока», который Google пообещал реализовать после широкой негативной реакции на их объявление, но они не уточнили, как это будет работать, поэтому неясно, действительно ли данный метод сохранит свободы пользователей каким-либо практическим способом.\n\nВ любом случае, действие Google является значительным шагом к завершению разработки бесплатных приложений сторонними разработчиками.\n\nНесертифицированные ОС, такие как GrapheneOS, не должны быть подвержены этому влиянию до тех пор, пока им разрешено продолжать существовать.';

  @override
  String get multipleSigners => 'Несколько подписей';

  @override
  String get securityDisclaimerTitle =>
      'Отказ от ответственности по безопасности и правовым вопросам';

  @override
  String get license => 'Лицензия';

  @override
  String get licenseText =>
      'Это приложение распространяется под лицензией GPL v3.';

  @override
  String get disclaimer => 'Отказ от ответственности';

  @override
  String get disclaimerText =>
      'Это приложение не распространяет, не размещает и не проверяет какие-либо внешние приложения. Пользователь несет полную ответственность за безопасность и законность любого программного обеспечения, установленного через этот инструмент.\n\nhttps://github.com/omeritzics/Updatium - это единственное официальное место для загрузки Updatium - настоятельно не рекомендуется загружать его из других мест, поскольку загрузка из неофициальных источников небезопасна.';

  @override
  String get privacy => 'Конфиденциальность';

  @override
  String get privacyText =>
      'Это приложение ориентировано на конфиденциальность и не собирает личные данные.';

  @override
  String get acceptAndContinue => 'Принять и продолжить';

  @override
  String get decline => 'Отклонить';

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
  String get aPKLinkHash => 'Хеш ссылки APK';

  @override
  String get gHReqPrefix =>
      'Использовать «sky22333/hubproxy» для запросов на GitHub';

  @override
  String get continueAction => 'Продолжить';

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
    return '$count минут';
  }

  @override
  String hour(int count) {
    return '$count часов';
  }

  @override
  String day(int count) {
    return '$count дней';
  }
}
