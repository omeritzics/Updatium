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
class TranslationsRu with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsRu({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ru,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ru>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsRu _root = this; // ignore: unused_field

	@override 
	TranslationsRu $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsRu(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Неверный URL-адрес приложения: {}';
	@override String get noReleaseFound => 'Не удалось найти подходящий выпуск';
	@override String get noVersionFound => 'Не удалось определить версию выпуска';
	@override String get urlMatchesNoSource => 'URL-адрес не соответствует известному источнику';
	@override String get cantInstallOlderVersion => 'Невозможно установить более старую версию приложения';
	@override String get appIdMismatch => 'ID загруженного пакета не совпадает с существующим ID приложения';
	@override String get functionNotImplemented => 'Этот класс не реализовал эту функцию';
	@override String get placeholder => 'Заполнитель';
	@override String get someErrors => 'Возникли некоторые ошибки';
	@override String get unexpectedError => 'Неожиданная ошибка';
	@override String get ok => 'OK';
	@override String get and => 'и';
	@override String get githubPATLabel => 'Персональный токен доступа GitHub';
	@override String get includePrereleases => 'Включать предварительные выпуски';
	@override String get fallbackToOlderReleases => 'Откатываться к предыдущей версии';
	@override String get filterReleaseTitlesByRegEx => 'Фильтровать заголовки выпусков\n(регулярное выражение)';
	@override String get invalidRegEx => 'Неверное регулярное выражение';
	@override String get noDescription => 'Нет описания';
	@override String get cancel => 'Отмена';
	@override String get kContinue => 'Продолжить';
	@override String get requiredInBrackets => '(обязательно)';
	@override String get dropdownNoOptsError => 'Ошибка: в выпадающем списке должна быть выбрана хотя бы одна настройка';
	@override String get color => 'Цвет';
	@override String get standard => 'Стандартный';
	@override String get custom => 'Индивидуальный';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Использовать цвета Material You';
	@override String get githubStarredRepos => 'Избранные репозитории GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Имя пользователя';
	@override String get wrongArgNum => 'Неправильное количество предоставленных аргументов';
	@override String get xIsTrackOnly => '{} только для отслеживания';
	@override String get source => 'Источник';
	@override String get app => 'Приложение';
	@override String get appsFromSourceAreTrackOnly => 'Приложения из этого источника настроены только для отслеживания';
	@override String get youPickedTrackOnly => 'Выбрана настройка «только для отслеживания»';
	@override String get trackOnlyAppDescription => 'Приложение будет отслеживаться на предмет обновлений, но Updatium не сможет загрузить или установить его';
	@override String get cancelled => 'Отменено';
	@override String get appAlreadyAdded => 'Приложение уже добавлено';
	@override String get alreadyUpToDateQuestion => 'Приложение уже обновлено?';
	@override String get addApp => 'Добавить';
	@override String get appSourceURL => 'URL-адрес источника приложения';
	@override String get error => 'Ошибка';
	@override String get add => 'Добавить';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Поиск (в некоторых источниках)';
	@override String get search => 'Поиск';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Дополнительные настройки для {}';
	@override String get supportedSources => 'Поддерживаемые источники';
	@override String get trackOnlyInBrackets => '(только отслеживание)';
	@override String get searchableInBrackets => '(поиск)';
	@override String get appsString => 'Приложения';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Нет приложений';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Нет приложений для фильтра';
	@override String get byX => 'От {}';
	@override String get percentProgress => 'Прогресс: {}%';
	@override String get pleaseWait => 'Пожалуйста, подождите';
	@override String get updateAvailable => 'Доступно обновление';
	@override String get notInstalled => 'Не установлено';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'псевдоверсия';
	@override String get selectAll => 'Выбрать всё';
	@override String get deselectX => 'Отменить выбор {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} будет удалено из Updatium, но останется на устройстве';
	@override String get removeSelectedAppsQuestion => 'Удалить выбранные приложения?';
	@override String get removeSelectedApps => 'Удалить выбранные приложения';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Обновить {}';
	@override String get installX => 'Установить {}';
	@override String get markXTrackOnlyAsUpdated => 'Отметить {}\n(только для отслеживания)\nкак обновлённое';
	@override String get changeX => 'Изменить {}';
	@override String get installUpdateApps => 'Установить/обновить приложения';
	@override String get installUpdateSelectedApps => 'Установить/обновить выбранные приложения';
	@override String get markXSelectedAppsAsUpdated => 'Выбрано приложений: {}. Отметить как обновлённые?';
	@override String get no => 'Нет';
	@override String get yes => 'Да';
	@override String get markSelectedAppsUpdated => 'Отметить выбранные приложения как обновлённые';
	@override String get pinToTop => 'Закрепить сверху';
	@override String get unpinFromTop => 'Открепить';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Сбросить статус установки для выбранных приложений?';
	@override String get installStatusOfXWillBeResetExplanation => 'Статус установки для выбранных приложений будет сброшен.\n\nЭто может помочь, если версия приложения, отображаемая в Updatium, некорректная (из-за неудачных обновлений или других проблем).';
	@override String get customLinkMessage => 'Эти ссылки работают на устройствах с установленным Updatium';
	@override String get shareAppConfigLinks => 'Поделиться конфигурацией приложения в виде HTML-ссылки';
	@override String get resetInstallStatus => 'Сбросить статус установки';
	@override String get more => 'Ещё';
	@override String get removeOutdatedFilter => 'Удалить фильтр для устаревших приложений';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Показывать только устаревшие приложения';
	@override String get filter => 'Фильтр';
	@override String get filterApps => 'Фильтровать приложения';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Название приложения';
	@override String get author => 'Автор';
	@override String get upToDateApps => 'Приложения с обновлениями';
	@override String get nonInstalledApps => 'Неустановленные приложения';
	@override String get importExport => 'Данные';
	@override String get settings => 'Настройки';
	@override String get exportedTo => 'Экспортировано в {}';
	@override String get updatiumExport => 'Экспорт из Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Неверный ввод';
	@override String get importedX => 'Импортировано {}';
	@override String get updatiumImport => 'Импорт в Updatium';
	@override String get importFromURLList => 'Импорт из списка URL-адресов';
	@override String get searchQuery => 'Поисковый запрос';
	@override String get appURLList => 'Список URL-адресов приложений';
	@override String get line => 'Строка';
	@override String get searchX => 'Поиск {}';
	@override String get noResults => 'Ничего не найдено';
	@override String get importX => 'Импорт {}';
	@override String get importedAppsIdDisclaimer => 'Импортированные приложения могут неверно отображаться как неустановленные.\nДля исправления этой проблемы повторно установите их через Updatium.\nЭто не должно повлиять на данные приложения.\n\nПроблемы возникают только при импорте из URL-адреса и сторонних источников.';
	@override String get importErrors => 'Ошибка импорта';
	@override String get importedXOfYApps => 'Импортировано приложений: {} из {}';
	@override String get followingURLsHadErrors => 'При импорте следующие URL-адреса содержали ошибки:';
	@override String get selectURL => 'Выбрать URL-адрес';
	@override String get selectURLs => 'Выбрать URL-адреса';
	@override String get pick => 'Выбрать';
	@override String get theme => 'Тема';
	@override String get dark => 'Тёмная';
	@override String get light => 'Светлая';
	@override String get followSystem => 'Как в системе';
	@override String get followSystemThemeExplanation => 'Следование системной теме возможно только при использовании сторонних приложений';
	@override String get useBlackTheme => 'Использовать чёрную тему';
	@override String get appSortBy => 'Сортировка приложений';
	@override String get authorName => 'Автор/название';
	@override String get nameAuthor => 'Название/автор';
	@override String get asAdded => 'В порядке добавления';
	@override String get appSortOrder => 'Порядок';
	@override String get ascending => 'По возрастанию';
	@override String get descending => 'По убыванию';
	@override String get bgUpdateCheckInterval => 'Интервал проверки обновлений в фоновом режиме';
	@override String get neverManualOnly => 'Никогда — только вручную';
	@override String get appearance => 'Внешний вид';
	@override String get pinUpdates => 'Показывать обновления приложений сверху списка';
	@override String get updates => 'Обновления';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Настройки источников';
	@override String get appSource => 'Источник';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Нет журналов';
	@override String get appLogs => 'Журналы';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Закрыть';
	@override String get share => 'Поделиться';
	@override String get appNotFound => 'Приложение не найдено';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'экспорт-updatium';
	@override String get pickAnAPK => 'Выберите APK-файл';
	@override String get appHasMoreThanOnePackage => '{} имеет более одного пакета:';
	@override String get deviceSupportsXArch => 'Ваше устройство поддерживает архитектуру процессора {}';
	@override String get deviceSupportsFollowingArchs => 'Ваше устройство поддерживает следующие архитектуры процессора:';
	@override String get warning => 'Предупреждение';
	@override String get sourceIsXButPackageFromYPrompt => 'Источник приложения — «{}», но пакет для установки получен из «{}». Продолжить?';
	@override String get updatesAvailable => 'Доступны обновления';
	@override String get updatesAvailableNotifDescription => 'Уведомляет о наличии обновлений для одного или нескольких приложений в Updatium';
	@override String get noNewUpdates => 'Нет обновлений';
	@override String get xHasAnUpdate => 'Для {} есть обновление';
	@override String get appsUpdated => 'Приложения обновлены';
	@override String get appsNotUpdated => 'Не удалось обновить приложения';
	@override String get appsUpdatedNotifDescription => 'Уведомляет об обновлении одного или нескольких приложений в фоновом режиме';
	@override String get xWasUpdatedToY => '{} обновлено до версии {}';
	@override String get xWasNotUpdatedToY => 'Не удалось обновить {} до версии {}';
	@override String get errorCheckingUpdates => 'Ошибка при проверке обновлений';
	@override String get errorCheckingUpdatesNotifDescription => 'Уведомление о завершении проверки обновлений в фоновом режиме с ошибкой';
	@override String get appsRemoved => 'Приложение удалено';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Уведомление об удалении одного или несколько приложений из-за ошибок при их загрузке';
	@override String get xWasRemovedDueToErrorY => '{} удалено из-за ошибки: {}';
	@override String get completeAppInstallation => 'Завершение установки приложения';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium должен быть открыт для установки приложений';
	@override String get completeAppInstallationNotifDescription => 'Уведомление о необходимости открыть Updatium для завершения установки приложения';
	@override String get checkingForUpdates => 'Проверка обновлений';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Временное уведомление, которое появляется при проверке обновлений';
	@override String get pleaseAllowInstallPerm => 'Пожалуйста, разрешите Updatium устанавливать приложения';
	@override String get trackOnly => 'Только отслеживать';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Ошибка {}';
	@override String get versionCorrectionDisabled => 'Коррекция версий отключена (плагин, кажется, не работает)';
	@override String get unknown => 'Неизвестно';
	@override String get none => 'Отсутствует';
	@override String get all => 'Все';
	@override String get never => 'Никогда';
	@override String get latestVersion => 'Последняя версия';
	@override String get installedVersionX => 'Установленная версия: {}';
	@override String get lastUpdateCheckX => 'Последняя проверка: {}';
	@override String get remove => 'Удалить';
	@override String get quickLinks => 'Быстрые ссылки';
	@override String get yesMarkUpdated => 'Да, отметить как обновлённое';
	@override String get fdroid => 'Официальные репозитории F-Droid';
	@override String get appIdOrName => 'ID или название приложения';
	@override String get appId => 'ID приложения';
	@override String get appWithIdOrNameNotFound => 'Приложение с таким ID или названием не было найдено';
	@override String get reposHaveMultipleApps => 'В хранилище несколько приложений';
	@override String get fdroidThirdPartyRepo => 'Сторонние репозитории F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Установить';
	@override String get markInstalled => 'Отметить установленным';
	@override String get update => 'Обновить';
	@override String get updated => 'Обновлено';
	@override String get markUpdated => 'Отметить обновлённым';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Дополнительные настройки';
	@override String get disableVersionDetection => 'Отключить определение версии';
	@override String get noVersionDetectionExplanation => 'Эта настройка должна использоваться только для приложений, где определение версии не работает корректно';
	@override String get downloadingX => 'Загрузка {}';
	@override String get downloadX => 'Загрузить {}';
	@override String get downloadedX => 'Загружено {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Объект выпуска';
	@override String get downloadNotifDescription => 'Уведомляет пользователя о прогрессе загрузки приложения';
	@override String get noAPKFound => 'APK-файл не найден';
	@override String get noVersionDetection => 'Определение версий отключено';
	@override String get categorize => 'Категоризировать';
	@override String get categories => 'Категории';
	@override String get category => 'Категория';
	@override String get noCategory => 'Без категории';
	@override String get noCategories => 'Без категорий';
	@override String get categoryDeleteQuestion => 'Удалить категории?';
	@override String get categoryDeleteWarning => 'Все приложения в удалённых категориях будут помечены как «без категории»';
	@override String get addCategory => 'Добавить категорию';
	@override String get label => 'Метка';
	@override String get language => 'Язык';
	@override String get copiedToClipboard => 'Скопировано в буфер обмена';
	@override String get storagePermissionDenied => 'Отказано в доступе к хранилищу';
	@override String get selectedCategorizeWarning => 'Это заменит все текущие настройки категорий для выбранных приложений';
	@override String get filterAPKsByRegEx => 'Фильтровать APK-файлы\n(регулярное выражение)';
	@override String get removeFromUpdatium => 'Удалить из Updatium';
	@override String get uninstallFromDevice => 'Удалить с устройства';
	@override String get onlyWorksWithNonVersionDetectApps => 'Работает только для приложений с отключённым определением версии';
	@override String get releaseDateAsVersion => 'Использовать дату выпуска в качестве версии';
	@override String get releaseTitleAsVersion => 'Использовать название выпуска в качестве версии';
	@override String get releaseDateAsVersionExplanation => 'Эта настройка должна использоваться только для приложений, в которых определение версии не работает правильно, но имеется дата выпуска';
	@override String get changes => 'Изменения';
	@override String get releaseDate => 'Дата выпуска';
	@override String get importFromURLsInFile => 'Импорт из файла URL-адресов (например: OPML)';
	@override String get versionDetectionExplanation => 'Согласовать строку версии с версией, обнаруженной в ОС';
	@override String get versionDetection => 'Определение версии';
	@override String get standardVersionDetection => 'Стандартное';
	@override String get groupByCategory => 'Группировать по категориям';
	@override String get listView => 'Вид списка';
	@override String get gridView => 'Вид сетки';
	@override String get autoApkFilterByArch => 'Пытаться фильтровать APK по архитектуре процессора';
	@override String get autoLinkFilterByArch => 'Пытаться фильтровать ссылки по архитектуре процессора, если это возможно';
	@override String get overrideSource => 'Переопределить источник';
	@override String get dontShowAgain => 'Не показывать снова';
	@override String get dontShowTrackOnlyWarnings => 'Не показывать предупреждения о только отслеживаемых приложениях';
	@override String get dontShowAPKOriginWarnings => 'Не показывать предупреждения об отличающемся источнике APK-файлов';
	@override String get moveNonInstalledAppsToBottom => 'Показывать неустановленные приложения внизу списка';
	@override String get gitlabPATLabel => 'Персональный токен доступа GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'О приложении';
	@override String get requiresCredentialsInSettings => '{}: для этого требуются дополнительные учётные данные (в настройках)';
	@override String get checkOnStart => 'Проверять наличие обновлений при запуске';
	@override String get safeMode => 'Безопасный режим';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Добавление приложения отключено в безопасном режиме';
	@override String get tryInferAppIdFromCode => 'Попытаться определить ID приложения из исходного кода';
	@override String get removeOnExternalUninstall => 'Автоматически убирать из списка удалённые извне приложения';
	@override String get pickHighestVersionCode => 'Автовыбор актуальной версии кода APK';
	@override String get checkUpdateOnDetailPage => 'Проверять наличие обновлений при открытии страницы приложения';
	@override String get disablePageTransitions => 'Отключить анимацию перехода между страницами';
	@override String get reversePageTransitions => 'Реверс анимации перехода между страницами';
	@override String get minStarCount => 'Минимальное количество звёзд';
	@override String get addInfoBelow => 'Добавьте эту информацию ниже';
	@override String get addInfoInSettings => 'Добавьте эту информацию в «Настройки»';
	@override String get githubSourceNote => 'Используя ключ API, можно обойти ограничение запросов GitHub';
	@override String get sortByLastLinkSegment => 'Сортировать только по последнему сегменту ссылки';
	@override String get filterReleaseNotesByRegEx => 'Фильтровать примечания к выпуску\n(регулярное выражение)';
	@override String get customLinkFilterRegex => 'Пользовательский фильтр ссылок APK\n(регулярное выражение, по умолчанию: «.apk$»)';
	@override String get appsPossiblyUpdated => 'Попытки обновления приложений';
	@override String get appsPossiblyUpdatedNotifDescription => 'Уведомление о возможных обновлениях одного или нескольких приложений в фоновом режиме';
	@override String get xWasPossiblyUpdatedToY => '{} возможно был обновлён до {}';
	@override String get enableBackgroundUpdates => 'Включить обновления в фоне';
	@override String get backgroundUpdateReqsExplanation => 'Фоновые обновления могут быть возможны не для всех приложений';
	@override String get backgroundUpdateLimitsExplanation => 'Успешность фоновой установки можно определить только после открытия Updatium';
	@override String get verifyLatestTag => 'Проверять метку «latest»';
	@override String get intermediateLinkRegex => 'Фильтр для «промежуточной» ссылки для посещения';
	@override String get filterByLinkText => 'Фильтровать ссылки по тексту ссылки';
	@override String get matchLinksOutsideATags => 'Сопоставлять ссылки вне тегов <a>';
	@override String get intermediateLinkNotFound => 'Промежуточная ссылка не найдена';
	@override String get intermediateLink => 'Промежуточная ссылка';
	@override String get exemptFromBackgroundUpdates => 'Исключить из фоновых обновлений (если включено)';
	@override String get bgUpdatesOnWiFiOnly => 'Отключить фоновые обновления, если нет подключения к Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Отключить фоновые обновления, если не идёт зарядка';
	@override String get autoSelectHighestVersionCode => 'Автовыбор APK с актуальной версией кода';
	@override String get versionExtractionRegEx => 'Извлечение версии\n(регулярное выражение)';
	@override String get trimVersionString => 'Обрезка строки версии\n(регулярное выражение)';
	@override String get matchGroupToUseForX => 'Группа соответствия для «{}»';
	@override String get matchGroupToUse => 'Выбрать группу соответствия';
	@override String get highlightTouchTargets => 'Выделять менее очевидные элементы управления касанием';
	@override String get pickExportDir => 'Выбрать каталог для экспорта';
	@override String get autoExportOnChanges => 'Автоэкспорт при изменениях';
	@override String get includeSettings => 'Включить настройки';
	@override String get filterVersionsByRegEx => 'Фильтровать версии по регулярному выражению';
	@override String get trySelectingSuggestedVersionCode => 'Пробовать выбрать предложенный код версии APK';
	@override String get dontSortReleasesList => 'Сохранить порядок выпусков от API';
	@override String get reverseSort => 'Обратная сортировка';
	@override String get takeFirstLink => 'Взять первую ссылку';
	@override String get skipSort => 'Пропустить сортировку';
	@override String get debugMenu => 'Меню отладки';
	@override String get bgTaskStarted => 'Фоновая задача начата — проверьте журналы';
	@override String get runBgCheckNow => 'Запустить проверку фонового обновления сейчас';
	@override String get versionExtractWholePage => 'Применить регулярное выражение версии ко всей странице';
	@override String get installing => 'Устанавливается';
	@override String get skipUpdateNotifications => 'Не оповещать об обновлениях';
	@override String get updatesAvailableNotifChannel => 'Доступны обновления';
	@override String get appsUpdatedNotifChannel => 'Приложения обновлены';
	@override String get appsPossiblyUpdatedNotifChannel => 'Попытки обновления приложений';
	@override String get errorCheckingUpdatesNotifChannel => 'Ошибка при проверке обновлений';
	@override String get appsRemovedNotifChannel => 'Приложение удалено';
	@override String get downloadingXNotifChannel => 'Загрузка {}';
	@override String get completeAppInstallationNotifChannel => 'Завершение установки приложения';
	@override String get checkingForUpdatesNotifChannel => 'Проверка обновлений';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Проверять обновления только у установленных или отслеживаемых приложений';
	@override String get supportFixedAPKURL => 'Поддержка фиксированных URL-адресов APK';
	@override String get selectX => 'Выбрать {}';
	@override String get parallelDownloads => 'Использовать параллельные загрузки';
	@override String get useShizuku => 'Использовать Shizuku или Sui для установки';
	@override String get shizukuBinderNotFound => 'Совместимая служба Shizuku не найдена, возможно, она не запущена';
	@override String get shizukuOld => 'Устаревшая версия Shizuku (<11), обновите';
	@override String get shizukuOldAndroidWithADB => 'Shizuku работает на Android < 8.1 с ADB, обновите Android или используйте Sui';
	@override String get shizukuPretendToBeGooglePlay => 'Указывать Google Play как источник установки (если используется Shizuku)';
	@override String get useSystemFont => 'Использовать системный шрифт';
	@override String get useVersionCodeAsOSVersion => 'Использовать код версии приложения как версию, обнаруженную ОС';
	@override String get requestHeader => 'Заголовок запроса';
	@override String get useLatestAssetDateAsReleaseDate => 'Использовать последнюю загрузку объекта в качестве даты выпуска';
	@override String get defaultPseudoVersioningMethod => 'Метод псевдоверсионирования по умолчанию';
	@override String get partialAPKHash => 'Частичный хеш APK';
	@override String get APKLinkHash => 'Хеш ссылки APK';
	@override String get directAPKLink => 'Прямая ссылка на APK';
	@override String get pseudoVersionInUse => 'Используется псевдо-версия';
	@override String get installedVersion => 'Установлен';
	@override String get installed => 'Установлен';
	@override String get notInstalledApps => 'Не установлено';
	@override String get latest => 'Последняя';
	@override String get invertRegEx => 'Инвертировать регулярное выражение';
	@override String get note => 'Примечание';
	@override String get selfHostedNote => 'Выпадающий список «{}» можно использовать для доступа к самостоятельно размещённым/настроенным экземплярам любого источника.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'Не удалось разобрать APK (несовместимая или неполная загрузка)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Делиться новыми приложениями с AppVerifier (если доступно)';
	@override String get appVerifierInstructionToast => 'Поделитесь с AppVerifier, а затем вернитесь сюда, когда будете готовы.';
	@override String get wiki => 'Помощь/Вики';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Разрешить небезопасные HTTP-запросы';
	@override String get stayOneVersionBehind => 'Оставаться на одну версию ниже последней';
	@override String get useFirstApkOfVersion => 'Автовыбор первого из нескольких APK';
	@override String get refreshBeforeDownload => 'Обновлять информацию о приложении перед загрузкой';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Имя';
	@override String get smartname => 'Имя (умное)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Метод сортировки';
	@override String get welcome => 'Добро пожаловать';
	@override String get batteryOptimizationNote => 'Обратите внимание, что фоновая загрузка может работать более надёжно, если отключить оптимизацию батареи ОС для Updatium.';
	@override String get fileDeletionError => 'Не удалось удалить файл (попробуйте удалить его вручную, а затем повторите попытку): «{}»';
	@override String get foregroundService => 'Приоритетная служба Updatium';
	@override String get foregroundServiceExplanation => 'Использовать приоритетную службу для проверки обновлений (надёжнее, энергозатратнее)';
	@override String get fgServiceNotice => 'Это уведомление необходимо для фоновой проверки обновлений (оно может быть скрыто в настройках ОС)';
	@override String get excludeSecrets => 'Исключить секреты';
	@override String get GHReqPrefix => 'Использовать «omeritzics/Updatium» для запросов на GitHub';
	@override String get includeZips => 'Включить ZIP-файлы';
	@override String get zippedApkFilterRegEx => 'Фильтр APK внутри ZIP';
	@override String get multipleSigners => 'Несколько подписей';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Удалить приложение?',
		other: 'Удалить приложения?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Слишком много запросов (ограничение скорости) — попробуйте снова через {count} минуту',
		few: 'Слишком много запросов (ограничение скорости) — попробуйте снова через {count} минуты',
		other: 'Слишком много запросов (ограничение скорости) — попробуйте снова через {count} минут',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'При проверке обновлений в фоновом режиме возникла ошибка {error}, повторная проверка будет через {count} минуту',
		few: 'При проверке обновлений в фоновом режиме возникла ошибка {error}, повторная проверка будет через {count} минуты',
		other: 'При проверке обновлений в фоновом режиме возникла ошибка {error}, повторная проверка будет через {count} минут',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'При проверке в фоновом режиме было обнаружено {count} обновления — пользователь будет уведомлен по необходимости',
		other: 'При проверке в фоновом режиме было обнаружено {count} обновлений — пользователь будет уведомлен по необходимости',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{count} приложение',
		few: '{count} приложения',
		other: '{count} приложений',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{count} URL-адрес',
		few: '{count} URL-адреса',
		other: '{count} URL-адресов',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{count} минута',
		few: '{count} минуты',
		other: '{count} минут',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{count} час',
		few: '{count} часа',
		other: '{count} часов',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{count} день',
		few: '{count} дня',
		other: '{count} дней',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Очищен {n} журнал (до = {before}, после = {after})',
		few: 'Очищены {n} журнала (до = {before}, после = {after})',
		other: 'Очищено {n} журналов (до = {before}, после = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'У {app} и ещё 1 приложения есть обновление',
		other: 'У {app} и ещё {count} приложений есть обновления',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{app} и ещё 1 приложение были обновлены',
		few: '{app} и ещё {count} приложения были обновлены',
		other: '{app} и ещё {count} приложений были обновлены',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Не удалось обновить {app} и ещё 1 приложение',
		few: 'Не удалось обновить {app} и ещё {count} приложения',
		other: 'Не удалось обновить {app} и ещё {count} приложений',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{app} и ещё 1 приложение могли быть обновлены',
		few: '{app} и ещё {count} приложения могли быть обновлены',
		other: '{app} и ещё {count} приложений могли быть обновлены',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: '{count} APK-файл',
		few: '{count} APK-файла',
		other: '{count} APK-файлов',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n,
		one: 'Хеш сертификата',
		other: 'Хеши сертификатов',
	);
	@override String get securityDisclaimerTitle => 'Отказ от ответственности по безопасности и правовым вопросам';
	@override String get license => 'Лицензия';
	@override String get licenseText => 'Это приложение распространяется под лицензией GPL v3.';
	@override String get disclaimer => 'Отказ от ответственности';
	@override String get disclaimerText => 'Это приложение не распространяет, не размещает и не проверяет какие-либо внешние приложения. Пользователь несет полную ответственность за безопасность и законность любого программного обеспечения, установленного через этот инструмент.\n\nhttps://github.com/omeritzics/Updatium - это единственное официальное место для загрузки Updatium - настоятельно не рекомендуется загружать его из других мест, поскольку загрузка из неофициальных источников небезопасна.';
	@override String get privacy => 'Конфиденциальность';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Принять и продолжить';
	@override String get decline => 'Отклонить';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Вам нравится Updatium?';
	@override String get githubStarPromptContent => 'Updatium - это добровольный проект с открытым исходным кодом, который я разрабатываю в свободное время. Если вы хотите поддержать проект, пожалуйста, рассмотрите возможность поставить ему звезду на GitHub, чтобы помочь нам достичь большего количества пользователей и участников. Вы больше не будете получать напоминания об этом. Заранее спасибо! :)';
	@override String get githubStarPromptStar => 'Поставить звезду';
	@override String get githubStarPromptDontShowAgain => 'Больше не показывать';
	@override String get sourceCode => 'Исходный код';
	@override String get developedBy => 'Разработано';
	@override String get appDescription => 'Настраиваемый каталог приложений Android, который позволяет обновлять ваши приложения напрямую из источников APK.';
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
}

/// The flat map containing all translations for locale <ru>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsRu {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Неверный URL-адрес приложения: {}',
			'noReleaseFound' => 'Не удалось найти подходящий выпуск',
			'noVersionFound' => 'Не удалось определить версию выпуска',
			'urlMatchesNoSource' => 'URL-адрес не соответствует известному источнику',
			'cantInstallOlderVersion' => 'Невозможно установить более старую версию приложения',
			'appIdMismatch' => 'ID загруженного пакета не совпадает с существующим ID приложения',
			'functionNotImplemented' => 'Этот класс не реализовал эту функцию',
			'placeholder' => 'Заполнитель',
			'someErrors' => 'Возникли некоторые ошибки',
			'unexpectedError' => 'Неожиданная ошибка',
			'ok' => 'OK',
			'and' => 'и',
			'githubPATLabel' => 'Персональный токен доступа GitHub',
			'includePrereleases' => 'Включать предварительные выпуски',
			'fallbackToOlderReleases' => 'Откатываться к предыдущей версии',
			'filterReleaseTitlesByRegEx' => 'Фильтровать заголовки выпусков\n(регулярное выражение)',
			'invalidRegEx' => 'Неверное регулярное выражение',
			'noDescription' => 'Нет описания',
			'cancel' => 'Отмена',
			'kContinue' => 'Продолжить',
			'requiredInBrackets' => '(обязательно)',
			'dropdownNoOptsError' => 'Ошибка: в выпадающем списке должна быть выбрана хотя бы одна настройка',
			'color' => 'Цвет',
			'standard' => 'Стандартный',
			'custom' => 'Индивидуальный',
			'primary' => 'Primary',
			'useMaterialYou' => 'Использовать цвета Material You',
			'githubStarredRepos' => 'Избранные репозитории GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Имя пользователя',
			'wrongArgNum' => 'Неправильное количество предоставленных аргументов',
			'xIsTrackOnly' => '{} только для отслеживания',
			'source' => 'Источник',
			'app' => 'Приложение',
			'appsFromSourceAreTrackOnly' => 'Приложения из этого источника настроены только для отслеживания',
			'youPickedTrackOnly' => 'Выбрана настройка «только для отслеживания»',
			'trackOnlyAppDescription' => 'Приложение будет отслеживаться на предмет обновлений, но Updatium не сможет загрузить или установить его',
			'cancelled' => 'Отменено',
			'appAlreadyAdded' => 'Приложение уже добавлено',
			'alreadyUpToDateQuestion' => 'Приложение уже обновлено?',
			'addApp' => 'Добавить',
			'appSourceURL' => 'URL-адрес источника приложения',
			'error' => 'Ошибка',
			'add' => 'Добавить',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Поиск (в некоторых источниках)',
			'search' => 'Поиск',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Дополнительные настройки для {}',
			'supportedSources' => 'Поддерживаемые источники',
			'trackOnlyInBrackets' => '(только отслеживание)',
			'searchableInBrackets' => '(поиск)',
			'appsString' => 'Приложения',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Нет приложений',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Нет приложений для фильтра',
			'byX' => 'От {}',
			'percentProgress' => 'Прогресс: {}%',
			'pleaseWait' => 'Пожалуйста, подождите',
			'updateAvailable' => 'Доступно обновление',
			'notInstalled' => 'Не установлено',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'псевдоверсия',
			'selectAll' => 'Выбрать всё',
			'deselectX' => 'Отменить выбор {}',
			'xWillBeRemovedButRemainInstalled' => '{} будет удалено из Updatium, но останется на устройстве',
			'removeSelectedAppsQuestion' => 'Удалить выбранные приложения?',
			'removeSelectedApps' => 'Удалить выбранные приложения',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Обновить {}',
			'installX' => 'Установить {}',
			'markXTrackOnlyAsUpdated' => 'Отметить {}\n(только для отслеживания)\nкак обновлённое',
			'changeX' => 'Изменить {}',
			'installUpdateApps' => 'Установить/обновить приложения',
			'installUpdateSelectedApps' => 'Установить/обновить выбранные приложения',
			'markXSelectedAppsAsUpdated' => 'Выбрано приложений: {}. Отметить как обновлённые?',
			'no' => 'Нет',
			'yes' => 'Да',
			'markSelectedAppsUpdated' => 'Отметить выбранные приложения как обновлённые',
			'pinToTop' => 'Закрепить сверху',
			'unpinFromTop' => 'Открепить',
			'resetInstallStatusForSelectedAppsQuestion' => 'Сбросить статус установки для выбранных приложений?',
			'installStatusOfXWillBeResetExplanation' => 'Статус установки для выбранных приложений будет сброшен.\n\nЭто может помочь, если версия приложения, отображаемая в Updatium, некорректная (из-за неудачных обновлений или других проблем).',
			'customLinkMessage' => 'Эти ссылки работают на устройствах с установленным Updatium',
			'shareAppConfigLinks' => 'Поделиться конфигурацией приложения в виде HTML-ссылки',
			'resetInstallStatus' => 'Сбросить статус установки',
			'more' => 'Ещё',
			'removeOutdatedFilter' => 'Удалить фильтр для устаревших приложений',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Показывать только устаревшие приложения',
			'filter' => 'Фильтр',
			'filterApps' => 'Фильтровать приложения',
			'filterDays' => 'Filter days',
			'appName' => 'Название приложения',
			'author' => 'Автор',
			'upToDateApps' => 'Приложения с обновлениями',
			'nonInstalledApps' => 'Неустановленные приложения',
			'importExport' => 'Данные',
			'settings' => 'Настройки',
			'exportedTo' => 'Экспортировано в {}',
			'updatiumExport' => 'Экспорт из Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Неверный ввод',
			'importedX' => 'Импортировано {}',
			'updatiumImport' => 'Импорт в Updatium',
			'importFromURLList' => 'Импорт из списка URL-адресов',
			'searchQuery' => 'Поисковый запрос',
			'appURLList' => 'Список URL-адресов приложений',
			'line' => 'Строка',
			'searchX' => 'Поиск {}',
			'noResults' => 'Ничего не найдено',
			'importX' => 'Импорт {}',
			'importedAppsIdDisclaimer' => 'Импортированные приложения могут неверно отображаться как неустановленные.\nДля исправления этой проблемы повторно установите их через Updatium.\nЭто не должно повлиять на данные приложения.\n\nПроблемы возникают только при импорте из URL-адреса и сторонних источников.',
			'importErrors' => 'Ошибка импорта',
			'importedXOfYApps' => 'Импортировано приложений: {} из {}',
			'followingURLsHadErrors' => 'При импорте следующие URL-адреса содержали ошибки:',
			'selectURL' => 'Выбрать URL-адрес',
			'selectURLs' => 'Выбрать URL-адреса',
			'pick' => 'Выбрать',
			'theme' => 'Тема',
			'dark' => 'Тёмная',
			'light' => 'Светлая',
			'followSystem' => 'Как в системе',
			'followSystemThemeExplanation' => 'Следование системной теме возможно только при использовании сторонних приложений',
			'useBlackTheme' => 'Использовать чёрную тему',
			'appSortBy' => 'Сортировка приложений',
			'authorName' => 'Автор/название',
			'nameAuthor' => 'Название/автор',
			'asAdded' => 'В порядке добавления',
			'appSortOrder' => 'Порядок',
			'ascending' => 'По возрастанию',
			'descending' => 'По убыванию',
			'bgUpdateCheckInterval' => 'Интервал проверки обновлений в фоновом режиме',
			'neverManualOnly' => 'Никогда — только вручную',
			'appearance' => 'Внешний вид',
			'pinUpdates' => 'Показывать обновления приложений сверху списка',
			'updates' => 'Обновления',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Настройки источников',
			'appSource' => 'Источник',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Нет журналов',
			'appLogs' => 'Журналы',
			'appLogsHint' => 'View application logs',
			'close' => 'Закрыть',
			'share' => 'Поделиться',
			'appNotFound' => 'Приложение не найдено',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'экспорт-updatium',
			'pickAnAPK' => 'Выберите APK-файл',
			'appHasMoreThanOnePackage' => '{} имеет более одного пакета:',
			'deviceSupportsXArch' => 'Ваше устройство поддерживает архитектуру процессора {}',
			'deviceSupportsFollowingArchs' => 'Ваше устройство поддерживает следующие архитектуры процессора:',
			'warning' => 'Предупреждение',
			'sourceIsXButPackageFromYPrompt' => 'Источник приложения — «{}», но пакет для установки получен из «{}». Продолжить?',
			'updatesAvailable' => 'Доступны обновления',
			'updatesAvailableNotifDescription' => 'Уведомляет о наличии обновлений для одного или нескольких приложений в Updatium',
			'noNewUpdates' => 'Нет обновлений',
			'xHasAnUpdate' => 'Для {} есть обновление',
			'appsUpdated' => 'Приложения обновлены',
			'appsNotUpdated' => 'Не удалось обновить приложения',
			'appsUpdatedNotifDescription' => 'Уведомляет об обновлении одного или нескольких приложений в фоновом режиме',
			'xWasUpdatedToY' => '{} обновлено до версии {}',
			'xWasNotUpdatedToY' => 'Не удалось обновить {} до версии {}',
			'errorCheckingUpdates' => 'Ошибка при проверке обновлений',
			'errorCheckingUpdatesNotifDescription' => 'Уведомление о завершении проверки обновлений в фоновом режиме с ошибкой',
			'appsRemoved' => 'Приложение удалено',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Уведомление об удалении одного или несколько приложений из-за ошибок при их загрузке',
			'xWasRemovedDueToErrorY' => '{} удалено из-за ошибки: {}',
			'completeAppInstallation' => 'Завершение установки приложения',
			'updatiumMustBeOpenToInstallApps' => 'Updatium должен быть открыт для установки приложений',
			'completeAppInstallationNotifDescription' => 'Уведомление о необходимости открыть Updatium для завершения установки приложения',
			'checkingForUpdates' => 'Проверка обновлений',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Временное уведомление, которое появляется при проверке обновлений',
			'pleaseAllowInstallPerm' => 'Пожалуйста, разрешите Updatium устанавливать приложения',
			'trackOnly' => 'Только отслеживать',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Ошибка {}',
			'versionCorrectionDisabled' => 'Коррекция версий отключена (плагин, кажется, не работает)',
			'unknown' => 'Неизвестно',
			'none' => 'Отсутствует',
			'all' => 'Все',
			'never' => 'Никогда',
			'latestVersion' => 'Последняя версия',
			'installedVersionX' => 'Установленная версия: {}',
			'lastUpdateCheckX' => 'Последняя проверка: {}',
			'remove' => 'Удалить',
			'quickLinks' => 'Быстрые ссылки',
			'yesMarkUpdated' => 'Да, отметить как обновлённое',
			'fdroid' => 'Официальные репозитории F-Droid',
			'appIdOrName' => 'ID или название приложения',
			'appId' => 'ID приложения',
			'appWithIdOrNameNotFound' => 'Приложение с таким ID или названием не было найдено',
			'reposHaveMultipleApps' => 'В хранилище несколько приложений',
			'fdroidThirdPartyRepo' => 'Сторонние репозитории F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Установить',
			'markInstalled' => 'Отметить установленным',
			'update' => 'Обновить',
			'updated' => 'Обновлено',
			'markUpdated' => 'Отметить обновлённым',
			'download' => 'Download',
			'additionalOptions' => 'Дополнительные настройки',
			'disableVersionDetection' => 'Отключить определение версии',
			'noVersionDetectionExplanation' => 'Эта настройка должна использоваться только для приложений, где определение версии не работает корректно',
			'downloadingX' => 'Загрузка {}',
			'downloadX' => 'Загрузить {}',
			'downloadedX' => 'Загружено {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Объект выпуска',
			'downloadNotifDescription' => 'Уведомляет пользователя о прогрессе загрузки приложения',
			'noAPKFound' => 'APK-файл не найден',
			'noVersionDetection' => 'Определение версий отключено',
			'categorize' => 'Категоризировать',
			'categories' => 'Категории',
			'category' => 'Категория',
			'noCategory' => 'Без категории',
			'noCategories' => 'Без категорий',
			'categoryDeleteQuestion' => 'Удалить категории?',
			'categoryDeleteWarning' => 'Все приложения в удалённых категориях будут помечены как «без категории»',
			'addCategory' => 'Добавить категорию',
			'label' => 'Метка',
			'language' => 'Язык',
			'copiedToClipboard' => 'Скопировано в буфер обмена',
			'storagePermissionDenied' => 'Отказано в доступе к хранилищу',
			'selectedCategorizeWarning' => 'Это заменит все текущие настройки категорий для выбранных приложений',
			'filterAPKsByRegEx' => 'Фильтровать APK-файлы\n(регулярное выражение)',
			'removeFromUpdatium' => 'Удалить из Updatium',
			'uninstallFromDevice' => 'Удалить с устройства',
			'onlyWorksWithNonVersionDetectApps' => 'Работает только для приложений с отключённым определением версии',
			'releaseDateAsVersion' => 'Использовать дату выпуска в качестве версии',
			'releaseTitleAsVersion' => 'Использовать название выпуска в качестве версии',
			'releaseDateAsVersionExplanation' => 'Эта настройка должна использоваться только для приложений, в которых определение версии не работает правильно, но имеется дата выпуска',
			'changes' => 'Изменения',
			'releaseDate' => 'Дата выпуска',
			'importFromURLsInFile' => 'Импорт из файла URL-адресов (например: OPML)',
			'versionDetectionExplanation' => 'Согласовать строку версии с версией, обнаруженной в ОС',
			'versionDetection' => 'Определение версии',
			'standardVersionDetection' => 'Стандартное',
			'groupByCategory' => 'Группировать по категориям',
			'listView' => 'Вид списка',
			'gridView' => 'Вид сетки',
			'autoApkFilterByArch' => 'Пытаться фильтровать APK по архитектуре процессора',
			'autoLinkFilterByArch' => 'Пытаться фильтровать ссылки по архитектуре процессора, если это возможно',
			'overrideSource' => 'Переопределить источник',
			'dontShowAgain' => 'Не показывать снова',
			'dontShowTrackOnlyWarnings' => 'Не показывать предупреждения о только отслеживаемых приложениях',
			'dontShowAPKOriginWarnings' => 'Не показывать предупреждения об отличающемся источнике APK-файлов',
			'moveNonInstalledAppsToBottom' => 'Показывать неустановленные приложения внизу списка',
			'gitlabPATLabel' => 'Персональный токен доступа GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'О приложении',
			'requiresCredentialsInSettings' => '{}: для этого требуются дополнительные учётные данные (в настройках)',
			'checkOnStart' => 'Проверять наличие обновлений при запуске',
			'safeMode' => 'Безопасный режим',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Добавление приложения отключено в безопасном режиме',
			'tryInferAppIdFromCode' => 'Попытаться определить ID приложения из исходного кода',
			'removeOnExternalUninstall' => 'Автоматически убирать из списка удалённые извне приложения',
			'pickHighestVersionCode' => 'Автовыбор актуальной версии кода APK',
			'checkUpdateOnDetailPage' => 'Проверять наличие обновлений при открытии страницы приложения',
			'disablePageTransitions' => 'Отключить анимацию перехода между страницами',
			'reversePageTransitions' => 'Реверс анимации перехода между страницами',
			'minStarCount' => 'Минимальное количество звёзд',
			'addInfoBelow' => 'Добавьте эту информацию ниже',
			'addInfoInSettings' => 'Добавьте эту информацию в «Настройки»',
			'githubSourceNote' => 'Используя ключ API, можно обойти ограничение запросов GitHub',
			'sortByLastLinkSegment' => 'Сортировать только по последнему сегменту ссылки',
			'filterReleaseNotesByRegEx' => 'Фильтровать примечания к выпуску\n(регулярное выражение)',
			'customLinkFilterRegex' => 'Пользовательский фильтр ссылок APK\n(регулярное выражение, по умолчанию: «.apk$»)',
			'appsPossiblyUpdated' => 'Попытки обновления приложений',
			'appsPossiblyUpdatedNotifDescription' => 'Уведомление о возможных обновлениях одного или нескольких приложений в фоновом режиме',
			'xWasPossiblyUpdatedToY' => '{} возможно был обновлён до {}',
			'enableBackgroundUpdates' => 'Включить обновления в фоне',
			'backgroundUpdateReqsExplanation' => 'Фоновые обновления могут быть возможны не для всех приложений',
			'backgroundUpdateLimitsExplanation' => 'Успешность фоновой установки можно определить только после открытия Updatium',
			'verifyLatestTag' => 'Проверять метку «latest»',
			'intermediateLinkRegex' => 'Фильтр для «промежуточной» ссылки для посещения',
			'filterByLinkText' => 'Фильтровать ссылки по тексту ссылки',
			'matchLinksOutsideATags' => 'Сопоставлять ссылки вне тегов <a>',
			'intermediateLinkNotFound' => 'Промежуточная ссылка не найдена',
			'intermediateLink' => 'Промежуточная ссылка',
			'exemptFromBackgroundUpdates' => 'Исключить из фоновых обновлений (если включено)',
			'bgUpdatesOnWiFiOnly' => 'Отключить фоновые обновления, если нет подключения к Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Отключить фоновые обновления, если не идёт зарядка',
			'autoSelectHighestVersionCode' => 'Автовыбор APK с актуальной версией кода',
			'versionExtractionRegEx' => 'Извлечение версии\n(регулярное выражение)',
			'trimVersionString' => 'Обрезка строки версии\n(регулярное выражение)',
			'matchGroupToUseForX' => 'Группа соответствия для «{}»',
			'matchGroupToUse' => 'Выбрать группу соответствия',
			'highlightTouchTargets' => 'Выделять менее очевидные элементы управления касанием',
			'pickExportDir' => 'Выбрать каталог для экспорта',
			'autoExportOnChanges' => 'Автоэкспорт при изменениях',
			'includeSettings' => 'Включить настройки',
			'filterVersionsByRegEx' => 'Фильтровать версии по регулярному выражению',
			'trySelectingSuggestedVersionCode' => 'Пробовать выбрать предложенный код версии APK',
			'dontSortReleasesList' => 'Сохранить порядок выпусков от API',
			'reverseSort' => 'Обратная сортировка',
			'takeFirstLink' => 'Взять первую ссылку',
			'skipSort' => 'Пропустить сортировку',
			'debugMenu' => 'Меню отладки',
			'bgTaskStarted' => 'Фоновая задача начата — проверьте журналы',
			'runBgCheckNow' => 'Запустить проверку фонового обновления сейчас',
			'versionExtractWholePage' => 'Применить регулярное выражение версии ко всей странице',
			'installing' => 'Устанавливается',
			'skipUpdateNotifications' => 'Не оповещать об обновлениях',
			'updatesAvailableNotifChannel' => 'Доступны обновления',
			'appsUpdatedNotifChannel' => 'Приложения обновлены',
			'appsPossiblyUpdatedNotifChannel' => 'Попытки обновления приложений',
			'errorCheckingUpdatesNotifChannel' => 'Ошибка при проверке обновлений',
			'appsRemovedNotifChannel' => 'Приложение удалено',
			'downloadingXNotifChannel' => 'Загрузка {}',
			'completeAppInstallationNotifChannel' => 'Завершение установки приложения',
			'checkingForUpdatesNotifChannel' => 'Проверка обновлений',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Проверять обновления только у установленных или отслеживаемых приложений',
			'supportFixedAPKURL' => 'Поддержка фиксированных URL-адресов APK',
			'selectX' => 'Выбрать {}',
			'parallelDownloads' => 'Использовать параллельные загрузки',
			'useShizuku' => 'Использовать Shizuku или Sui для установки',
			'shizukuBinderNotFound' => 'Совместимая служба Shizuku не найдена, возможно, она не запущена',
			'shizukuOld' => 'Устаревшая версия Shizuku (<11), обновите',
			'shizukuOldAndroidWithADB' => 'Shizuku работает на Android < 8.1 с ADB, обновите Android или используйте Sui',
			'shizukuPretendToBeGooglePlay' => 'Указывать Google Play как источник установки (если используется Shizuku)',
			'useSystemFont' => 'Использовать системный шрифт',
			'useVersionCodeAsOSVersion' => 'Использовать код версии приложения как версию, обнаруженную ОС',
			'requestHeader' => 'Заголовок запроса',
			'useLatestAssetDateAsReleaseDate' => 'Использовать последнюю загрузку объекта в качестве даты выпуска',
			'defaultPseudoVersioningMethod' => 'Метод псевдоверсионирования по умолчанию',
			'partialAPKHash' => 'Частичный хеш APK',
			'APKLinkHash' => 'Хеш ссылки APK',
			'directAPKLink' => 'Прямая ссылка на APK',
			'pseudoVersionInUse' => 'Используется псевдо-версия',
			'installedVersion' => 'Установлен',
			'installed' => 'Установлен',
			'notInstalledApps' => 'Не установлено',
			'latest' => 'Последняя',
			'invertRegEx' => 'Инвертировать регулярное выражение',
			'note' => 'Примечание',
			'selfHostedNote' => 'Выпадающий список «{}» можно использовать для доступа к самостоятельно размещённым/настроенным экземплярам любого источника.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'Не удалось разобрать APK (несовместимая или неполная загрузка)',
			'beforeNewInstallsShareToAppVerifier' => 'Делиться новыми приложениями с AppVerifier (если доступно)',
			'appVerifierInstructionToast' => 'Поделитесь с AppVerifier, а затем вернитесь сюда, когда будете готовы.',
			'wiki' => 'Помощь/Вики',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Разрешить небезопасные HTTP-запросы',
			'stayOneVersionBehind' => 'Оставаться на одну версию ниже последней',
			'useFirstApkOfVersion' => 'Автовыбор первого из нескольких APK',
			'refreshBeforeDownload' => 'Обновлять информацию о приложении перед загрузкой',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Имя',
			'smartname' => 'Имя (умное)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Метод сортировки',
			'welcome' => 'Добро пожаловать',
			'batteryOptimizationNote' => 'Обратите внимание, что фоновая загрузка может работать более надёжно, если отключить оптимизацию батареи ОС для Updatium.',
			'fileDeletionError' => 'Не удалось удалить файл (попробуйте удалить его вручную, а затем повторите попытку): «{}»',
			'foregroundService' => 'Приоритетная служба Updatium',
			'foregroundServiceExplanation' => 'Использовать приоритетную службу для проверки обновлений (надёжнее, энергозатратнее)',
			'fgServiceNotice' => 'Это уведомление необходимо для фоновой проверки обновлений (оно может быть скрыто в настройках ОС)',
			'excludeSecrets' => 'Исключить секреты',
			'GHReqPrefix' => 'Использовать «omeritzics/Updatium» для запросов на GitHub',
			'includeZips' => 'Включить ZIP-файлы',
			'zippedApkFilterRegEx' => 'Фильтр APK внутри ZIP',
			'multipleSigners' => 'Несколько подписей',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Удалить приложение?', other: 'Удалить приложения?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Слишком много запросов (ограничение скорости) — попробуйте снова через {count} минуту', few: 'Слишком много запросов (ограничение скорости) — попробуйте снова через {count} минуты', other: 'Слишком много запросов (ограничение скорости) — попробуйте снова через {count} минут', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'При проверке обновлений в фоновом режиме возникла ошибка {error}, повторная проверка будет через {count} минуту', few: 'При проверке обновлений в фоновом режиме возникла ошибка {error}, повторная проверка будет через {count} минуты', other: 'При проверке обновлений в фоновом режиме возникла ошибка {error}, повторная проверка будет через {count} минут', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'При проверке в фоновом режиме было обнаружено {count} обновления — пользователь будет уведомлен по необходимости', other: 'При проверке в фоновом режиме было обнаружено {count} обновлений — пользователь будет уведомлен по необходимости', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{count} приложение', few: '{count} приложения', other: '{count} приложений', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{count} URL-адрес', few: '{count} URL-адреса', other: '{count} URL-адресов', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{count} минута', few: '{count} минуты', other: '{count} минут', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{count} час', few: '{count} часа', other: '{count} часов', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{count} день', few: '{count} дня', other: '{count} дней', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Очищен {n} журнал (до = {before}, после = {after})', few: 'Очищены {n} журнала (до = {before}, после = {after})', other: 'Очищено {n} журналов (до = {before}, после = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'У {app} и ещё 1 приложения есть обновление', other: 'У {app} и ещё {count} приложений есть обновления', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{app} и ещё 1 приложение были обновлены', few: '{app} и ещё {count} приложения были обновлены', other: '{app} и ещё {count} приложений были обновлены', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Не удалось обновить {app} и ещё 1 приложение', few: 'Не удалось обновить {app} и ещё {count} приложения', other: 'Не удалось обновить {app} и ещё {count} приложений', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{app} и ещё 1 приложение могли быть обновлены', few: '{app} и ещё {count} приложения могли быть обновлены', other: '{app} и ещё {count} приложений могли быть обновлены', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: '{count} APK-файл', few: '{count} APK-файла', other: '{count} APK-файлов', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ru'))(n, one: 'Хеш сертификата', other: 'Хеши сертификатов', ), 
			'securityDisclaimerTitle' => 'Отказ от ответственности по безопасности и правовым вопросам',
			'license' => 'Лицензия',
			'licenseText' => 'Это приложение распространяется под лицензией GPL v3.',
			'disclaimer' => 'Отказ от ответственности',
			'disclaimerText' => 'Это приложение не распространяет, не размещает и не проверяет какие-либо внешние приложения. Пользователь несет полную ответственность за безопасность и законность любого программного обеспечения, установленного через этот инструмент.\n\nhttps://github.com/omeritzics/Updatium - это единственное официальное место для загрузки Updatium - настоятельно не рекомендуется загружать его из других мест, поскольку загрузка из неофициальных источников небезопасна.',
			'privacy' => 'Конфиденциальность',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Принять и продолжить',
			'decline' => 'Отклонить',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Вам нравится Updatium?',
			'githubStarPromptContent' => 'Updatium - это добровольный проект с открытым исходным кодом, который я разрабатываю в свободное время. Если вы хотите поддержать проект, пожалуйста, рассмотрите возможность поставить ему звезду на GitHub, чтобы помочь нам достичь большего количества пользователей и участников. Вы больше не будете получать напоминания об этом. Заранее спасибо! :)',
			'githubStarPromptStar' => 'Поставить звезду',
			'githubStarPromptDontShowAgain' => 'Больше не показывать',
			'sourceCode' => 'Исходный код',
			'developedBy' => 'Разработано',
			'appDescription' => 'Настраиваемый каталог приложений Android, который позволяет обновлять ваши приложения напрямую из источников APK.',
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
