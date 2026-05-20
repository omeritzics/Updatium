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
class TranslationsUk with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUk({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.uk,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <uk>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsUk _root = this; // ignore: unused_field

	@override 
	TranslationsUk $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUk(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Неправильна URL-адреса для джерела застосунку {}';
	@override String get noReleaseFound => 'Не вдалося знайти відповідне видання';
	@override String get noVersionFound => 'Не вдалося визначити версію видання';
	@override String get urlMatchesNoSource => 'URL не відповідає відомому джерелу';
	@override String get cantInstallOlderVersion => 'Не можна встановити старішу версію застосунку';
	@override String get appIdMismatch => 'Ідентифікатор пакета, завантажений, не відповідає ідентифікатору існуючого застосунку';
	@override String get functionNotImplemented => 'Цей клас не реалізував цю функцію';
	@override String get placeholder => 'Заповнювач';
	@override String get someErrors => 'Виникла деяка помилка';
	@override String get unexpectedError => 'Неочікувана помилка';
	@override String get ok => 'Добре';
	@override String get and => 'та';
	@override String get githubPATLabel => 'Персональний ключ доступу GitHub';
	@override String get includePrereleases => 'Включити попередні видання';
	@override String get fallbackToOlderReleases => 'Повернутися до старіших видань';
	@override String get filterReleaseTitlesByRegEx => 'Фільтрувати заголовки видань за допомогою регулярного виразу';
	@override String get invalidRegEx => 'Неприпустимий регулярний вираз';
	@override String get noDescription => 'Немає опису';
	@override String get cancel => 'Скасувати';
	@override String get kContinue => 'Продовжити';
	@override String get requiredInBrackets => '(Обов\'язково)';
	@override String get dropdownNoOptsError => 'ПОМИЛКА: В ВИПАДАЮЧОМУ СПИСКУ МАЄ БУТИ ХОЧА Б ОДИН ЕЛЕМЕНТ';
	@override String get color => 'Колір';
	@override String get standard => 'Стандартний';
	@override String get custom => 'Нестандартний';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Використовуйте кольори Material You';
	@override String get githubStarredRepos => 'Відзначені репозиторії GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Ім\'я користувача';
	@override String get wrongArgNum => 'Надано неправильну кількість аргументів';
	@override String get xIsTrackOnly => '{} - тільки відстежування';
	@override String get source => 'Джерело';
	@override String get app => 'застосунок';
	@override String get appsFromSourceAreTrackOnly => 'Застосунки з цього джерела є лише для відстежування.';
	@override String get youPickedTrackOnly => 'Ви вибрали опцію лише для відстежування.';
	@override String get trackOnlyAppDescription => 'Застосунок буде відстежуватися для оновлень, але Updatium не зможе його завантажити або встановити.';
	@override String get cancelled => 'Скасовано';
	@override String get appAlreadyAdded => 'Застосунок вже додано';
	@override String get alreadyUpToDateQuestion => 'Застосунок вже оновлено?';
	@override String get addApp => 'Додати';
	@override String get appSourceURL => 'URL-адреса джерела застосунку';
	@override String get error => 'Помилка';
	@override String get add => 'Додати';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Пошук (Лише деякі джерела)';
	@override String get search => 'Пошук';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Додаткові опції для {}';
	@override String get supportedSources => 'Підтримувані джерела';
	@override String get trackOnlyInBrackets => '(Тільки для відстеження)';
	@override String get searchableInBrackets => '(Можливий пошук)';
	@override String get appsString => 'Застосунки';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Застосунків немає';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'Застосунків для фільтрації немає';
	@override String get byX => 'Від {}';
	@override String get percentProgress => 'Прогрес: {}%';
	@override String get pleaseWait => 'Будь ласка, зачекайте';
	@override String get updateAvailable => 'Доступно оновлення';
	@override String get notInstalled => 'Не встановлено';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'псевдо-версія';
	@override String get selectAll => 'Вибрати все';
	@override String get deselectX => 'Скасувати вибір {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} буде видалено з Updatium, але залишиться встановленим на пристрої.';
	@override String get removeSelectedAppsQuestion => 'Видалити вибрані застосунки?';
	@override String get removeSelectedApps => 'Видалити вибрані застосунки';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Оновити {}';
	@override String get installX => 'Встановити {}';
	@override String get markXTrackOnlyAsUpdated => 'Позначити {}\n(Тільки відстежування)\nяк оновлено';
	@override String get changeX => 'Змінити {}';
	@override String get installUpdateApps => 'Встановити/Оновити застосунки';
	@override String get installUpdateSelectedApps => 'Встановити/Оновити вибрані застосунки';
	@override String get markXSelectedAppsAsUpdated => 'Позначити {} вибрані застосунки як оновлені?';
	@override String get no => 'Ні';
	@override String get yes => 'Так';
	@override String get markSelectedAppsUpdated => 'Позначити вибрані застосунки як оновлені';
	@override String get pinToTop => 'Закріпити угорі';
	@override String get unpinFromTop => 'Відкріпити зверху';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Скинути статус встановлення для вибраних застосунків?';
	@override String get installStatusOfXWillBeResetExplanation => 'Статус встановлення будь-яких вибраних застосунків буде скинутий.\n\nЦе може допомогти, коли версія застосунку, відображена в Updatium, є неправильною через невдалі оновлення або інші проблеми.';
	@override String get customLinkMessage => 'Ці посилання працюють на пристроях з встановленим Updatium';
	@override String get shareAppConfigLinks => 'Поділитися посиланнями на конфігурацію Застосунку як HTML';
	@override String get resetInstallStatus => 'Скинути статус встановлення';
	@override String get more => 'Більше';
	@override String get removeOutdatedFilter => 'Видалити фільтр застарілих застосунків';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Показати лише застарілі застосунки';
	@override String get filter => 'Фільтр';
	@override String get filterApps => 'Фільтрувати застосунки';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Назва застосунку';
	@override String get author => 'Автор';
	@override String get upToDateApps => 'Актуальні застосунки';
	@override String get nonInstalledApps => 'Невстановлені застосунки';
	@override String get importExport => 'Імпорт/Експорт';
	@override String get settings => 'Налаштування';
	@override String get exportedTo => 'Експортовано в {}';
	@override String get updatiumExport => 'Експорт з Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Недійсний ввід';
	@override String get importedX => 'Імпортовано {}';
	@override String get updatiumImport => 'Імпорт в Updatium';
	@override String get importFromURLList => 'Імпорт зі списку URL-адрес';
	@override String get searchQuery => 'Пошуковий запит';
	@override String get appURLList => 'Список URL-адрес застосунків';
	@override String get line => 'Лінія';
	@override String get searchX => 'Пошук {}';
	@override String get noResults => 'Результати відсутні';
	@override String get importX => 'Імпорт {}';
	@override String get importedAppsIdDisclaimer => 'Імпортовані застосунки можуть неправильно відображатися як "Не встановлені".\nДля виправлення цього перевстановіть їх через Updatium.\nЦе не повинно вплинути на дані застосунків.\n\nПов\'язано лише з URL-адресами та імпортом від третіх сторін.';
	@override String get importErrors => 'Помилки імпорту';
	@override String get importedXOfYApps => 'Імпортовано {} з {} застосунків.';
	@override String get followingURLsHadErrors => 'Помилки в наступних URL-адресах:';
	@override String get selectURL => 'Вибрати URL';
	@override String get selectURLs => 'Вибрати URL-адреси';
	@override String get pick => 'Вибрати';
	@override String get theme => 'Тема';
	@override String get dark => 'Темна';
	@override String get light => 'Світла';
	@override String get followSystem => 'Дотримуватися системи';
	@override String get followSystemThemeExplanation => 'Зміна теми системи можлива лише за допомогою сторонніх додатків';
	@override String get useBlackTheme => 'Використовувати чорну тему (Amoled)';
	@override String get appSortBy => 'Сортувати застосунки за';
	@override String get authorName => 'Автор/Назва';
	@override String get nameAuthor => 'Назва/Автор';
	@override String get asAdded => 'За додаванням';
	@override String get appSortOrder => 'Порядок сортування застосунків';
	@override String get ascending => 'За зростанням';
	@override String get descending => 'За спаданням';
	@override String get bgUpdateCheckInterval => 'Інтервал перевірки оновлень у фоновому режимі';
	@override String get neverManualOnly => 'Ніколи - Тільки вручну';
	@override String get appearance => 'Вигляд';
	@override String get pinUpdates => 'Закріпити оновлення у верхній частині вигляду застосунків';
	@override String get updates => 'Оновлення';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Певне джерело';
	@override String get appSource => 'Джерело застосунку';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Немає логів';
	@override String get appLogs => 'Лог застосунку';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Закрити';
	@override String get share => 'Поділитися';
	@override String get appNotFound => 'Застосунок не знайдено';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'експорт з Updatium';
	@override String get pickAnAPK => 'Вибрати APK';
	@override String get appHasMoreThanOnePackage => '{} має більше одного пакету:';
	@override String get deviceSupportsXArch => 'Ваш пристрій підтримує архітектуру процесора {}.';
	@override String get deviceSupportsFollowingArchs => 'Ваш пристрій підтримує наступні архітектури процесора:';
	@override String get warning => 'Попередження';
	@override String get sourceIsXButPackageFromYPrompt => 'Джерело застосунку - \'{}\' але пакет випуску походить з \'{}\'. Продовжити?';
	@override String get updatesAvailable => 'Доступні оновлення';
	@override String get updatesAvailableNotifDescription => 'Повідомляє користувача, що доступні оновлення для одного чи декількох застосунків, які відстежує Updatium';
	@override String get noNewUpdates => 'Немає нових оновлень.';
	@override String get xHasAnUpdate => '{} має оновлення.';
	@override String get appsUpdated => 'Застосунки оновлено';
	@override String get appsNotUpdated => 'Не вдалося оновити програми';
	@override String get appsUpdatedNotifDescription => 'Повідомляє користувача, що оновлення одного чи декількох застосунків було застосовано в фоновому режимі';
	@override String get xWasUpdatedToY => '{} було оновлено до {}.';
	@override String get xWasNotUpdatedToY => 'Не вдалося оновити {} на {}.';
	@override String get errorCheckingUpdates => 'Помилка перевірки оновлень';
	@override String get errorCheckingUpdatesNotifDescription => 'Повідомлення, яке з\'являється, коли перевірка оновлень в фоновому режимі завершується невдачею';
	@override String get appsRemoved => 'Застосунки видалено';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Повідомляє користувача, що один чи декілька застосунків були видалені через помилки при завантаженні';
	@override String get xWasRemovedDueToErrorY => '{} було видалено через цю помилку: {}';
	@override String get completeAppInstallation => 'Завершення установки застосунку';
	@override String get updatiumMustBeOpenToInstallApps => 'Для встановлення застосунків Updatium має бути відкритий';
	@override String get completeAppInstallationNotifDescription => 'Прохання користувача повернутися до Updatium для завершення установки застосунку';
	@override String get checkingForUpdates => 'Перевірка оновлень';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Тимчасове повідомлення, яке з\'являється при перевірці оновлень';
	@override String get pleaseAllowInstallPerm => 'Будь ласка, дозвольте Updatium встановлювати застосунки';
	@override String get trackOnly => 'Тільки відстеження';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Помилка {} HTTP-коду';
	@override String get versionCorrectionDisabled => 'Виправлення версії вимкнено (здається, плагін не працює)';
	@override String get unknown => 'Невідомо';
	@override String get none => 'Нічого';
	@override String get all => 'Усе.';
	@override String get never => 'Ніколи';
	@override String get latestVersion => 'Остання версія';
	@override String get installedVersionX => 'Встановлено: {}';
	@override String get lastUpdateCheckX => 'Остання перевірка оновлень: {}';
	@override String get remove => 'Видалити';
	@override String get quickLinks => 'Швидкі посилання';
	@override String get yesMarkUpdated => 'Так, позначити як оновлене';
	@override String get fdroid => 'F-Droid Офіційний';
	@override String get appIdOrName => 'Ідентифікатор або назва застосунку';
	@override String get appId => 'Ідентифікатор застосунку';
	@override String get appWithIdOrNameNotFound => 'Застосунок з таким ідентифікатором або назвою не знайдено';
	@override String get reposHaveMultipleApps => 'Сховища можуть містити кілька застосунків';
	@override String get fdroidThirdPartyRepo => 'F-Droid Стороннє сховище';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Встановити';
	@override String get markInstalled => 'Позначити як встановлене';
	@override String get update => 'Оновити';
	@override String get updated => 'Оновлено';
	@override String get markUpdated => 'Позначити як оновлене';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Додаткові опції';
	@override String get disableVersionDetection => 'Вимкнути визначення версії';
	@override String get noVersionDetectionExplanation => 'Цю опцію слід використовувати лише для застосунків, де визначення версії працює неправильно.';
	@override String get downloadingX => 'Завантаження {}';
	@override String get downloadX => 'Завантажити {}';
	@override String get downloadedX => 'Завантажено {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Звільнити актив';
	@override String get downloadNotifDescription => 'Повідомляє користувача про прогрес завантаження застосунку';
	@override String get noAPKFound => 'APK не знайдено';
	@override String get noVersionDetection => 'Визначення версії відключено';
	@override String get categorize => 'Категоризувати';
	@override String get categories => 'Категорії';
	@override String get category => 'Категорія';
	@override String get noCategory => 'Без категорії';
	@override String get noCategories => 'Немає категорій';
	@override String get categoryDeleteQuestion => 'Видалити категорії?';
	@override String get categoryDeleteWarning => 'Усі застосунки у видалених категоріях будуть переведені у некатегоризовані.';
	@override String get addCategory => 'Додати категорію';
	@override String get label => 'Мітка';
	@override String get language => 'Мова';
	@override String get copiedToClipboard => 'Скопійовано в буфер обміну';
	@override String get storagePermissionDenied => 'Відмовлено у дозволі на доступ до сховища';
	@override String get selectedCategorizeWarning => 'Це замінить будь-які існуючі налаштування категорій для вибраних застосунків.';
	@override String get filterAPKsByRegEx => 'Фільтрувати APK за регулярним виразом';
	@override String get removeFromUpdatium => 'Видалити з Updatium';
	@override String get uninstallFromDevice => 'Видалити з пристрою';
	@override String get onlyWorksWithNonVersionDetectApps => 'Працює лише з застосунками з вимкненим визначенням версії.';
	@override String get releaseDateAsVersion => 'Використовувати дату випуску як рядок версії';
	@override String get releaseTitleAsVersion => 'Використовувати назву випуску як рядок версії';
	@override String get releaseDateAsVersionExplanation => 'Цю опцію слід використовувати лише для застосунків, де визначення версії працює неправильно, але є дата випуску.';
	@override String get changes => 'Зміни';
	@override String get releaseDate => 'Дата випуску';
	@override String get importFromURLsInFile => 'Імпорт з URL-адрес у файлі (наприклад, OPML)';
	@override String get versionDetectionExplanation => 'Порівняти рядок версії з версією, визначеною операційною системою';
	@override String get versionDetection => 'Визначення версії';
	@override String get standardVersionDetection => 'Стандартне визначення версії';
	@override String get groupByCategory => 'Групувати за категоріями';
	@override String get listView => 'Вигляд списку';
	@override String get gridView => 'Вигляд сітки';
	@override String get autoApkFilterByArch => 'Спробувати фільтрувати APK за архітектурою ЦП, якщо можливо';
	@override String get autoLinkFilterByArch => 'Спробуйте відфільтрувати посилання за архітектурою процесора, якщо це можливо';
	@override String get overrideSource => 'Перевизначити джерело';
	@override String get dontShowAgain => 'Не показувати це знову';
	@override String get dontShowTrackOnlyWarnings => 'Не показувати попередження про \'Тільки відстеження\'';
	@override String get dontShowAPKOriginWarnings => 'Не показувати попередження про походження APK';
	@override String get moveNonInstalledAppsToBottom => 'Перемістити невстановлені застосунки вниз у перегляді застосунців';
	@override String get gitlabPATLabel => 'Особистий токен GitLab (Увімкнення пошуку та краще виявлення APK)';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Про застосунок';
	@override String get requiresCredentialsInSettings => '{} потребує додаткових облікових даних (у налаштуваннях)';
	@override String get checkOnStart => 'Перевірити наявність оновлень при запуску';
	@override String get safeMode => 'Безпечний режим';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Додавання додатка вимкнено в безпечному режимі';
	@override String get tryInferAppIdFromCode => 'Спробувати вивести ідентифікатор застосунку з вихідного коду';
	@override String get removeOnExternalUninstall => 'Автоматично видаляти застосунки, які було видалено зовнішнім чином';
	@override String get pickHighestVersionCode => 'Автоматично вибрати APK з найвищим кодом версії';
	@override String get checkUpdateOnDetailPage => 'Перевіряти наявність оновлень при відкритті сторінки деталей застосунку';
	@override String get disablePageTransitions => 'Вимкнути анімації переходів між сторінками';
	@override String get reversePageTransitions => 'Зворотні анімації переходів між сторінками';
	@override String get minStarCount => 'Мінімальна кількість зірок';
	@override String get addInfoBelow => 'Додати цю інформацію нижче.';
	@override String get addInfoInSettings => 'Додати цю інформацію у налаштуваннях.';
	@override String get githubSourceNote => 'Лімітування швидкості GitHub можна уникнути, використовуючи ключ API.';
	@override String get sortByLastLinkSegment => 'Сортувати лише за останнім сегментом посилання';
	@override String get filterReleaseNotesByRegEx => 'Фільтрувати примітки до релізу за регулярним виразом';
	@override String get customLinkFilterRegex => 'Фільтр кастомного посилання на APK за регулярним виразом (за замовчуванням \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Спроб оновлення застосунків';
	@override String get appsPossiblyUpdatedNotifDescription => 'Повідомляє користувача, що оновлення одного або декількох застосунків можливо були застосовані в фоновому режимі';
	@override String get xWasPossiblyUpdatedToY => '{} можливо було оновлено до {}.';
	@override String get enableBackgroundUpdates => 'Увімкнути оновлення в фоновому режимі';
	@override String get backgroundUpdateReqsExplanation => 'Оновлення в фоновому режимі може бути неможливим для всіх застосунків.';
	@override String get backgroundUpdateLimitsExplanation => 'Успіх фонової установки може бути визначений лише після відкриття Updatium.';
	@override String get verifyLatestTag => 'Перевірити тег \'latest\'';
	@override String get intermediateLinkRegex => 'Фільтр для \'Проміжного\' Посилання для Відвідування';
	@override String get filterByLinkText => 'Фільтрувати посилання за текстом посилання';
	@override String get matchLinksOutsideATags => 'Зіставлення посилань поза тегами <a>';
	@override String get intermediateLinkNotFound => 'Проміжне посилання не знайдено';
	@override String get intermediateLink => 'Проміжне посилання';
	@override String get exemptFromBackgroundUpdates => 'Виключено з фонових оновлень (якщо ввімкнено)';
	@override String get bgUpdatesOnWiFiOnly => 'Вимкнути фонові оновлення поза Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Вимкнути фонові оновлення, коли не заряджається';
	@override String get autoSelectHighestVersionCode => 'Автоматичний вибір APK з найвищим кодом версії';
	@override String get versionExtractionRegEx => 'Регулярний вираз для вилучення рядка версії';
	@override String get trimVersionString => 'Обрізати рядок версії за допомогою RegEx';
	@override String get matchGroupToUseForX => 'Група збігів для "{}"';
	@override String get matchGroupToUse => 'Група співпадінь для використання в регулярному виразі вилучення версії';
	@override String get highlightTouchTargets => 'Підсвічувати менш очевидні області дотику';
	@override String get pickExportDir => 'Вибрати каталог експорту';
	@override String get autoExportOnChanges => 'Автоматичний експорт при змінах';
	@override String get includeSettings => 'Включити налаштування';
	@override String get filterVersionsByRegEx => 'Фільтрувати версії за регулярним виразом';
	@override String get trySelectingSuggestedVersionCode => 'Спробуйте вибрати запропонований код версії APK';
	@override String get dontSortReleasesList => 'Зберігати порядок випуску з API';
	@override String get reverseSort => 'Зворотне сортування';
	@override String get takeFirstLink => 'Вибрати перше посилання';
	@override String get skipSort => 'Пропустити сортування';
	@override String get debugMenu => 'Меню налагодження';
	@override String get bgTaskStarted => 'Запущено фонове завдання - перевірте журнали.';
	@override String get runBgCheckNow => 'Запустити перевірку оновлень в фоновому режимі зараз';
	@override String get versionExtractWholePage => 'Застосувати регулярний вираз вилучення версії до всієї сторінки';
	@override String get installing => 'Встановлення';
	@override String get skipUpdateNotifications => 'Пропустити сповіщення про оновлення';
	@override String get updatesAvailableNotifChannel => 'Доступні оновлення';
	@override String get appsUpdatedNotifChannel => 'Застосунки оновлені';
	@override String get appsPossiblyUpdatedNotifChannel => 'Спроба оновлення застосунків';
	@override String get errorCheckingUpdatesNotifChannel => 'Помилка перевірки оновлень';
	@override String get appsRemovedNotifChannel => 'Застосунки видалені';
	@override String get downloadingXNotifChannel => 'Завантаження {}';
	@override String get completeAppInstallationNotifChannel => 'Завершення встановлення застосунку';
	@override String get checkingForUpdatesNotifChannel => 'Перевірка оновлень';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Перевіряти лише встановлені та застосунки, які відстежуються для оновлень';
	@override String get supportFixedAPKURL => 'Підтримка фіксованих посилань на APK';
	@override String get selectX => 'Вибрати {}';
	@override String get parallelDownloads => 'Дозволити паралельні завантаження';
	@override String get useShizuku => 'Використовуйте Shizuku або Sui для встановлення';
	@override String get shizukuBinderNotFound => 'Сумісний сервіс Shizuku не було знайдено';
	@override String get shizukuOld => 'Стара версія Shizuku (<11) - оновіть її';
	@override String get shizukuOldAndroidWithADB => 'Shizuku працює на Android < 8.1 з ADB - оновіть Android або використовуйте Sui замість нього';
	@override String get shizukuPretendToBeGooglePlay => 'Виберіть Google Play як джерело встановлення (якщо використовується Shizuku)';
	@override String get useSystemFont => 'Використовувати системний шрифт';
	@override String get useVersionCodeAsOSVersion => 'Використовувати код версії застосунку як версію, визначену операційною системою';
	@override String get requestHeader => 'Заголовок запиту';
	@override String get useLatestAssetDateAsReleaseDate => 'Використовувати останню дату завантаження ресурсу як дату випуску';
	@override String get defaultPseudoVersioningMethod => 'Метод за замовчуванням псевдо-версіонування';
	@override String get partialAPKHash => 'Хеш часткового APK';
	@override String get APKLinkHash => 'Хеш посилання на APK';
	@override String get directAPKLink => 'Пряме посилання на APK';
	@override String get pseudoVersionInUse => 'Використовується псевдо-версія';
	@override String get installedVersion => 'Встановлено';
	@override String get installed => 'Встановлено';
	@override String get notInstalledApps => 'Не встановлено';
	@override String get latest => 'Остання';
	@override String get invertRegEx => 'Інвертувати регулярний вираз';
	@override String get note => 'Примітка';
	@override String get selfHostedNote => 'Випадаючий список "{}" може використовуватися для доступу до власних/призначених для самостійного використання екземплярів будь-якого джерела.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK не вдалося розпарсити (несумісний або часткове завантаження)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Діліться новими додатками з AppVerifier (якщо доступно)';
	@override String get appVerifierInstructionToast => 'Надішліть на AppVerifier, а потім поверніться сюди, коли будете готові.';
	@override String get wiki => 'Довідка/Вікі';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Дозволити незахищені HTTP-запити';
	@override String get stayOneVersionBehind => 'Залишайтеся на одну версію актуальнішою';
	@override String get useFirstApkOfVersion => 'Автоматичний вибір першого з декількох APK';
	@override String get refreshBeforeDownload => 'Оновіть інформацію про програму перед завантаженням';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Ім\'я';
	@override String get smartname => 'Ім\'я (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Метод сортування';
	@override String get welcome => 'Ласкаво просимо.';
	@override String get batteryOptimizationNote => 'Зауважте, що фонові завантаження можуть працювати надійніше, якщо ви вимкнете оптимізацію батареї ОС для Updatium.';
	@override String get fileDeletionError => 'Не вдалося видалити файл (спробуйте видалити його вручну, а потім спробуйте ще раз): "{}"';
	@override String get foregroundService => 'Обслуговування переднього плану Updatium';
	@override String get foregroundServiceExplanation => 'Використовуйте службу переднього плану для перевірки оновлень (надійніша, споживає більше енергії)';
	@override String get fgServiceNotice => 'Це сповіщення необхідне для фонової перевірки оновлень (його можна приховати в налаштуваннях ОС)';
	@override String get excludeSecrets => 'Виключити секрети';
	@override String get GHReqPrefix => 'екземпляр \'omeritzics/Updatium\' для запитів на GitHub';
	@override String get includeZips => 'Додайте ZIP-файли';
	@override String get zippedApkFilterRegEx => 'Фільтруйте APK-файли всередині ZIP';
	@override String get multipleSigners => 'Кілька підписників';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Видалити застосунок?',
		other: 'Видалити застосунки?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Забагато запитів (обмеження швидкості) - повторіть спробу через {count} хвилину',
		other: 'Забагато запитів (обмеження швидкості) - повторіть спробу через {count} хвилин',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Помилка перевірки оновлень у фоновому режимі - спробую знову через {error} хвилину',
		other: 'Помилка перевірки оновлень у фоновому режимі - спробую знову через {error} хвилин',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Фонова перевірка оновлень знайшла {count} оновлення - сповістити користувача, якщо це необхідно',
		other: 'Фонова перевірка оновлень знайшла {count} оновлень - сповістити користувача, якщо це необхідно',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{count} застосунок',
		other: '{count} застосунки',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{count} URL-адреса',
		other: '{count} URL-адреси',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{count} хвилина',
		other: '{count} хвилин',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{count} година',
		other: '{count} годин',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{count} день',
		other: '{count} днів',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Очищено {n} журнал (до = {before}, після = {after})',
		other: 'Очищено {n} журналів (до = {before}, після = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{app} та ще 1 застосунок мають оновлення.',
		other: '{app} та ще {count} застосунки мають оновлення.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{app} та ще 1 застосунок було оновлено.',
		other: '{app} та ще {count} застосунків було оновлено.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Не вдалося оновити {app} та ще 1 програму.',
		other: 'Не вдалося оновити {app} і {count} та інші програми.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{app} та ще 1 застосунок можливо було оновлено.',
		other: '{app} та ще {count} застосунків можливо було оновлено.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: '{count} APK',
		other: '{count} APK-файли',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n,
		one: 'Сертифікат Hash',
		other: 'Сертифікат Hashes',
	);
	@override String get securityDisclaimerTitle => 'Відмова від відповідальності щодо безпеки та правових питань';
	@override String get license => 'Ліцензія';
	@override String get licenseText => 'Цей додаток розповсюджується під ліцензією GPL v3.';
	@override String get disclaimer => 'Відмова від відповідальності';
	@override String get disclaimerText => 'Цей додаток не розповсюджує, не розміщує та не перевіряє жодні зовнішні додатки. Користувач несе повну відповідальність за безпеку та законність будь-якого програмного забезпечення, встановленого через цей інструмент.\n\nhttps://github.com/omeritzics/Updatium - це єдине офіційне місце для завантаження Updatium - наполегливо не рекомендується завантажувати його з інших місць, оскільки завантаження з неофіційних джерел небезпечне.';
	@override String get privacy => 'Конфіденційність';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Прийняти та продовжити';
	@override String get decline => 'Відхилити';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Вам подобається Updatium?';
	@override String get githubStarPromptContent => 'Updatium - це добровільний проєкт з відкритим вихідним кодом, який я розробляю у свій вільний час. Якщо ви хочете підтримати проєкт, будь ласка, розгляньте можливість поставити йому зірку на GitHub, щоб допомогти нам досягти більше користувачів та учасників. Ви більше не отримуватимете нагадувань про це. Заздалегідь дякуємо! :)';
	@override String get githubStarPromptStar => 'Поставити зірку';
	@override String get githubStarPromptDontShowAgain => 'Більше не показувати';
	@override String get sourceCode => 'Вихідний код';
	@override String get developedBy => 'Розроблено';
	@override String get appDescription => 'Налаштований каталог додатків Android, який дозволяє оновлювати ваші додатки напряму з їхніх джерел APK.';
	@override String get safeModeEnabled => 'Безпечний режим увімкнено';
	@override String get safeModeDisabled => 'Безпечний режим вимкнено';
	@override String get safeModeDisable => 'Вимкнути безпечний режим';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Адміністрування безпечного режиму';
	@override String get safeModeSetupDescription => 'Встановіть пароль для увімкнення безпечного режиму. Після увімкнення безпечного режиму додавання нових додатків буде заблоковано, і його можна буде вимкнути лише за допомогою пароля.';
	@override String get safeModeToggleDescription => 'Введіть свій пароль, щоб увімкнути або вимкнути безпечний режим.';
	@override String get safeModeSetPassword => 'Встановити пароль';
	@override String get safeModeConfirmPassword => 'Підтвердити пароль';
	@override String get safeModeEnterPassword => 'Ввести пароль';
	@override String get safeModePasswordHint => 'Мінімум 8 символів';
	@override String get safeModePasswordTooShort => 'Пароль повинен містити мінімум 8 символів';
	@override String get safeModePasswordMismatch => 'Паролі не збігаються';
	@override String get safeModePasswordIncorrect => 'Невірний пароль';
	@override String get safeModePasswordError => 'Помилка встановлення пароля. Будь ласка, спробуйте знову.';
	@override String get safeModeEnable => 'Увімкнути безпечний режим';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} натискань залишилося для вимкнення безпечного режиму';
	@override String get safeModeEnabledHint => 'Безпечний режим увімкнено. Натисніть на номер версії в Налаштуваннях багаторазово, щоб вимкнути.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Зрозуміло';
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

/// The flat map containing all translations for locale <uk>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUk {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Неправильна URL-адреса для джерела застосунку {}',
			'noReleaseFound' => 'Не вдалося знайти відповідне видання',
			'noVersionFound' => 'Не вдалося визначити версію видання',
			'urlMatchesNoSource' => 'URL не відповідає відомому джерелу',
			'cantInstallOlderVersion' => 'Не можна встановити старішу версію застосунку',
			'appIdMismatch' => 'Ідентифікатор пакета, завантажений, не відповідає ідентифікатору існуючого застосунку',
			'functionNotImplemented' => 'Цей клас не реалізував цю функцію',
			'placeholder' => 'Заповнювач',
			'someErrors' => 'Виникла деяка помилка',
			'unexpectedError' => 'Неочікувана помилка',
			'ok' => 'Добре',
			'and' => 'та',
			'githubPATLabel' => 'Персональний ключ доступу GitHub',
			'includePrereleases' => 'Включити попередні видання',
			'fallbackToOlderReleases' => 'Повернутися до старіших видань',
			'filterReleaseTitlesByRegEx' => 'Фільтрувати заголовки видань за допомогою регулярного виразу',
			'invalidRegEx' => 'Неприпустимий регулярний вираз',
			'noDescription' => 'Немає опису',
			'cancel' => 'Скасувати',
			'kContinue' => 'Продовжити',
			'requiredInBrackets' => '(Обов\'язково)',
			'dropdownNoOptsError' => 'ПОМИЛКА: В ВИПАДАЮЧОМУ СПИСКУ МАЄ БУТИ ХОЧА Б ОДИН ЕЛЕМЕНТ',
			'color' => 'Колір',
			'standard' => 'Стандартний',
			'custom' => 'Нестандартний',
			'primary' => 'Primary',
			'useMaterialYou' => 'Використовуйте кольори Material You',
			'githubStarredRepos' => 'Відзначені репозиторії GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Ім\'я користувача',
			'wrongArgNum' => 'Надано неправильну кількість аргументів',
			'xIsTrackOnly' => '{} - тільки відстежування',
			'source' => 'Джерело',
			'app' => 'застосунок',
			'appsFromSourceAreTrackOnly' => 'Застосунки з цього джерела є лише для відстежування.',
			'youPickedTrackOnly' => 'Ви вибрали опцію лише для відстежування.',
			'trackOnlyAppDescription' => 'Застосунок буде відстежуватися для оновлень, але Updatium не зможе його завантажити або встановити.',
			'cancelled' => 'Скасовано',
			'appAlreadyAdded' => 'Застосунок вже додано',
			'alreadyUpToDateQuestion' => 'Застосунок вже оновлено?',
			'addApp' => 'Додати',
			'appSourceURL' => 'URL-адреса джерела застосунку',
			'error' => 'Помилка',
			'add' => 'Додати',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Пошук (Лише деякі джерела)',
			'search' => 'Пошук',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Додаткові опції для {}',
			'supportedSources' => 'Підтримувані джерела',
			'trackOnlyInBrackets' => '(Тільки для відстеження)',
			'searchableInBrackets' => '(Можливий пошук)',
			'appsString' => 'Застосунки',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Застосунків немає',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'Застосунків для фільтрації немає',
			'byX' => 'Від {}',
			'percentProgress' => 'Прогрес: {}%',
			'pleaseWait' => 'Будь ласка, зачекайте',
			'updateAvailable' => 'Доступно оновлення',
			'notInstalled' => 'Не встановлено',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'псевдо-версія',
			'selectAll' => 'Вибрати все',
			'deselectX' => 'Скасувати вибір {}',
			'xWillBeRemovedButRemainInstalled' => '{} буде видалено з Updatium, але залишиться встановленим на пристрої.',
			'removeSelectedAppsQuestion' => 'Видалити вибрані застосунки?',
			'removeSelectedApps' => 'Видалити вибрані застосунки',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Оновити {}',
			'installX' => 'Встановити {}',
			'markXTrackOnlyAsUpdated' => 'Позначити {}\n(Тільки відстежування)\nяк оновлено',
			'changeX' => 'Змінити {}',
			'installUpdateApps' => 'Встановити/Оновити застосунки',
			'installUpdateSelectedApps' => 'Встановити/Оновити вибрані застосунки',
			'markXSelectedAppsAsUpdated' => 'Позначити {} вибрані застосунки як оновлені?',
			'no' => 'Ні',
			'yes' => 'Так',
			'markSelectedAppsUpdated' => 'Позначити вибрані застосунки як оновлені',
			'pinToTop' => 'Закріпити угорі',
			'unpinFromTop' => 'Відкріпити зверху',
			'resetInstallStatusForSelectedAppsQuestion' => 'Скинути статус встановлення для вибраних застосунків?',
			'installStatusOfXWillBeResetExplanation' => 'Статус встановлення будь-яких вибраних застосунків буде скинутий.\n\nЦе може допомогти, коли версія застосунку, відображена в Updatium, є неправильною через невдалі оновлення або інші проблеми.',
			'customLinkMessage' => 'Ці посилання працюють на пристроях з встановленим Updatium',
			'shareAppConfigLinks' => 'Поділитися посиланнями на конфігурацію Застосунку як HTML',
			'resetInstallStatus' => 'Скинути статус встановлення',
			'more' => 'Більше',
			'removeOutdatedFilter' => 'Видалити фільтр застарілих застосунків',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Показати лише застарілі застосунки',
			'filter' => 'Фільтр',
			'filterApps' => 'Фільтрувати застосунки',
			'filterDays' => 'Filter days',
			'appName' => 'Назва застосунку',
			'author' => 'Автор',
			'upToDateApps' => 'Актуальні застосунки',
			'nonInstalledApps' => 'Невстановлені застосунки',
			'importExport' => 'Імпорт/Експорт',
			'settings' => 'Налаштування',
			'exportedTo' => 'Експортовано в {}',
			'updatiumExport' => 'Експорт з Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Недійсний ввід',
			'importedX' => 'Імпортовано {}',
			'updatiumImport' => 'Імпорт в Updatium',
			'importFromURLList' => 'Імпорт зі списку URL-адрес',
			'searchQuery' => 'Пошуковий запит',
			'appURLList' => 'Список URL-адрес застосунків',
			'line' => 'Лінія',
			'searchX' => 'Пошук {}',
			'noResults' => 'Результати відсутні',
			'importX' => 'Імпорт {}',
			'importedAppsIdDisclaimer' => 'Імпортовані застосунки можуть неправильно відображатися як "Не встановлені".\nДля виправлення цього перевстановіть їх через Updatium.\nЦе не повинно вплинути на дані застосунків.\n\nПов\'язано лише з URL-адресами та імпортом від третіх сторін.',
			'importErrors' => 'Помилки імпорту',
			'importedXOfYApps' => 'Імпортовано {} з {} застосунків.',
			'followingURLsHadErrors' => 'Помилки в наступних URL-адресах:',
			'selectURL' => 'Вибрати URL',
			'selectURLs' => 'Вибрати URL-адреси',
			'pick' => 'Вибрати',
			'theme' => 'Тема',
			'dark' => 'Темна',
			'light' => 'Світла',
			'followSystem' => 'Дотримуватися системи',
			'followSystemThemeExplanation' => 'Зміна теми системи можлива лише за допомогою сторонніх додатків',
			'useBlackTheme' => 'Використовувати чорну тему (Amoled)',
			'appSortBy' => 'Сортувати застосунки за',
			'authorName' => 'Автор/Назва',
			'nameAuthor' => 'Назва/Автор',
			'asAdded' => 'За додаванням',
			'appSortOrder' => 'Порядок сортування застосунків',
			'ascending' => 'За зростанням',
			'descending' => 'За спаданням',
			'bgUpdateCheckInterval' => 'Інтервал перевірки оновлень у фоновому режимі',
			'neverManualOnly' => 'Ніколи - Тільки вручну',
			'appearance' => 'Вигляд',
			'pinUpdates' => 'Закріпити оновлення у верхній частині вигляду застосунків',
			'updates' => 'Оновлення',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Певне джерело',
			'appSource' => 'Джерело застосунку',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Немає логів',
			'appLogs' => 'Лог застосунку',
			'appLogsHint' => 'View application logs',
			'close' => 'Закрити',
			'share' => 'Поділитися',
			'appNotFound' => 'Застосунок не знайдено',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'експорт з Updatium',
			'pickAnAPK' => 'Вибрати APK',
			'appHasMoreThanOnePackage' => '{} має більше одного пакету:',
			'deviceSupportsXArch' => 'Ваш пристрій підтримує архітектуру процесора {}.',
			'deviceSupportsFollowingArchs' => 'Ваш пристрій підтримує наступні архітектури процесора:',
			'warning' => 'Попередження',
			'sourceIsXButPackageFromYPrompt' => 'Джерело застосунку - \'{}\' але пакет випуску походить з \'{}\'. Продовжити?',
			'updatesAvailable' => 'Доступні оновлення',
			'updatesAvailableNotifDescription' => 'Повідомляє користувача, що доступні оновлення для одного чи декількох застосунків, які відстежує Updatium',
			'noNewUpdates' => 'Немає нових оновлень.',
			'xHasAnUpdate' => '{} має оновлення.',
			'appsUpdated' => 'Застосунки оновлено',
			'appsNotUpdated' => 'Не вдалося оновити програми',
			'appsUpdatedNotifDescription' => 'Повідомляє користувача, що оновлення одного чи декількох застосунків було застосовано в фоновому режимі',
			'xWasUpdatedToY' => '{} було оновлено до {}.',
			'xWasNotUpdatedToY' => 'Не вдалося оновити {} на {}.',
			'errorCheckingUpdates' => 'Помилка перевірки оновлень',
			'errorCheckingUpdatesNotifDescription' => 'Повідомлення, яке з\'являється, коли перевірка оновлень в фоновому режимі завершується невдачею',
			'appsRemoved' => 'Застосунки видалено',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Повідомляє користувача, що один чи декілька застосунків були видалені через помилки при завантаженні',
			'xWasRemovedDueToErrorY' => '{} було видалено через цю помилку: {}',
			'completeAppInstallation' => 'Завершення установки застосунку',
			'updatiumMustBeOpenToInstallApps' => 'Для встановлення застосунків Updatium має бути відкритий',
			'completeAppInstallationNotifDescription' => 'Прохання користувача повернутися до Updatium для завершення установки застосунку',
			'checkingForUpdates' => 'Перевірка оновлень',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Тимчасове повідомлення, яке з\'являється при перевірці оновлень',
			'pleaseAllowInstallPerm' => 'Будь ласка, дозвольте Updatium встановлювати застосунки',
			'trackOnly' => 'Тільки відстеження',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Помилка {} HTTP-коду',
			'versionCorrectionDisabled' => 'Виправлення версії вимкнено (здається, плагін не працює)',
			'unknown' => 'Невідомо',
			'none' => 'Нічого',
			'all' => 'Усе.',
			'never' => 'Ніколи',
			'latestVersion' => 'Остання версія',
			'installedVersionX' => 'Встановлено: {}',
			'lastUpdateCheckX' => 'Остання перевірка оновлень: {}',
			'remove' => 'Видалити',
			'quickLinks' => 'Швидкі посилання',
			'yesMarkUpdated' => 'Так, позначити як оновлене',
			'fdroid' => 'F-Droid Офіційний',
			'appIdOrName' => 'Ідентифікатор або назва застосунку',
			'appId' => 'Ідентифікатор застосунку',
			'appWithIdOrNameNotFound' => 'Застосунок з таким ідентифікатором або назвою не знайдено',
			'reposHaveMultipleApps' => 'Сховища можуть містити кілька застосунків',
			'fdroidThirdPartyRepo' => 'F-Droid Стороннє сховище',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Встановити',
			'markInstalled' => 'Позначити як встановлене',
			'update' => 'Оновити',
			'updated' => 'Оновлено',
			'markUpdated' => 'Позначити як оновлене',
			'download' => 'Download',
			'additionalOptions' => 'Додаткові опції',
			'disableVersionDetection' => 'Вимкнути визначення версії',
			'noVersionDetectionExplanation' => 'Цю опцію слід використовувати лише для застосунків, де визначення версії працює неправильно.',
			'downloadingX' => 'Завантаження {}',
			'downloadX' => 'Завантажити {}',
			'downloadedX' => 'Завантажено {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Звільнити актив',
			'downloadNotifDescription' => 'Повідомляє користувача про прогрес завантаження застосунку',
			'noAPKFound' => 'APK не знайдено',
			'noVersionDetection' => 'Визначення версії відключено',
			'categorize' => 'Категоризувати',
			'categories' => 'Категорії',
			'category' => 'Категорія',
			'noCategory' => 'Без категорії',
			'noCategories' => 'Немає категорій',
			'categoryDeleteQuestion' => 'Видалити категорії?',
			'categoryDeleteWarning' => 'Усі застосунки у видалених категоріях будуть переведені у некатегоризовані.',
			'addCategory' => 'Додати категорію',
			'label' => 'Мітка',
			'language' => 'Мова',
			'copiedToClipboard' => 'Скопійовано в буфер обміну',
			'storagePermissionDenied' => 'Відмовлено у дозволі на доступ до сховища',
			'selectedCategorizeWarning' => 'Це замінить будь-які існуючі налаштування категорій для вибраних застосунків.',
			'filterAPKsByRegEx' => 'Фільтрувати APK за регулярним виразом',
			'removeFromUpdatium' => 'Видалити з Updatium',
			'uninstallFromDevice' => 'Видалити з пристрою',
			'onlyWorksWithNonVersionDetectApps' => 'Працює лише з застосунками з вимкненим визначенням версії.',
			'releaseDateAsVersion' => 'Використовувати дату випуску як рядок версії',
			'releaseTitleAsVersion' => 'Використовувати назву випуску як рядок версії',
			'releaseDateAsVersionExplanation' => 'Цю опцію слід використовувати лише для застосунків, де визначення версії працює неправильно, але є дата випуску.',
			'changes' => 'Зміни',
			'releaseDate' => 'Дата випуску',
			'importFromURLsInFile' => 'Імпорт з URL-адрес у файлі (наприклад, OPML)',
			'versionDetectionExplanation' => 'Порівняти рядок версії з версією, визначеною операційною системою',
			'versionDetection' => 'Визначення версії',
			'standardVersionDetection' => 'Стандартне визначення версії',
			'groupByCategory' => 'Групувати за категоріями',
			'listView' => 'Вигляд списку',
			'gridView' => 'Вигляд сітки',
			'autoApkFilterByArch' => 'Спробувати фільтрувати APK за архітектурою ЦП, якщо можливо',
			'autoLinkFilterByArch' => 'Спробуйте відфільтрувати посилання за архітектурою процесора, якщо це можливо',
			'overrideSource' => 'Перевизначити джерело',
			'dontShowAgain' => 'Не показувати це знову',
			'dontShowTrackOnlyWarnings' => 'Не показувати попередження про \'Тільки відстеження\'',
			'dontShowAPKOriginWarnings' => 'Не показувати попередження про походження APK',
			'moveNonInstalledAppsToBottom' => 'Перемістити невстановлені застосунки вниз у перегляді застосунців',
			'gitlabPATLabel' => 'Особистий токен GitLab (Увімкнення пошуку та краще виявлення APK)',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Про застосунок',
			'requiresCredentialsInSettings' => '{} потребує додаткових облікових даних (у налаштуваннях)',
			'checkOnStart' => 'Перевірити наявність оновлень при запуску',
			'safeMode' => 'Безпечний режим',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Додавання додатка вимкнено в безпечному режимі',
			'tryInferAppIdFromCode' => 'Спробувати вивести ідентифікатор застосунку з вихідного коду',
			'removeOnExternalUninstall' => 'Автоматично видаляти застосунки, які було видалено зовнішнім чином',
			'pickHighestVersionCode' => 'Автоматично вибрати APK з найвищим кодом версії',
			'checkUpdateOnDetailPage' => 'Перевіряти наявність оновлень при відкритті сторінки деталей застосунку',
			'disablePageTransitions' => 'Вимкнути анімації переходів між сторінками',
			'reversePageTransitions' => 'Зворотні анімації переходів між сторінками',
			'minStarCount' => 'Мінімальна кількість зірок',
			'addInfoBelow' => 'Додати цю інформацію нижче.',
			'addInfoInSettings' => 'Додати цю інформацію у налаштуваннях.',
			'githubSourceNote' => 'Лімітування швидкості GitHub можна уникнути, використовуючи ключ API.',
			'sortByLastLinkSegment' => 'Сортувати лише за останнім сегментом посилання',
			'filterReleaseNotesByRegEx' => 'Фільтрувати примітки до релізу за регулярним виразом',
			'customLinkFilterRegex' => 'Фільтр кастомного посилання на APK за регулярним виразом (за замовчуванням \'.apk$\')',
			'appsPossiblyUpdated' => 'Спроб оновлення застосунків',
			'appsPossiblyUpdatedNotifDescription' => 'Повідомляє користувача, що оновлення одного або декількох застосунків можливо були застосовані в фоновому режимі',
			'xWasPossiblyUpdatedToY' => '{} можливо було оновлено до {}.',
			'enableBackgroundUpdates' => 'Увімкнути оновлення в фоновому режимі',
			'backgroundUpdateReqsExplanation' => 'Оновлення в фоновому режимі може бути неможливим для всіх застосунків.',
			'backgroundUpdateLimitsExplanation' => 'Успіх фонової установки може бути визначений лише після відкриття Updatium.',
			'verifyLatestTag' => 'Перевірити тег \'latest\'',
			'intermediateLinkRegex' => 'Фільтр для \'Проміжного\' Посилання для Відвідування',
			'filterByLinkText' => 'Фільтрувати посилання за текстом посилання',
			'matchLinksOutsideATags' => 'Зіставлення посилань поза тегами <a>',
			'intermediateLinkNotFound' => 'Проміжне посилання не знайдено',
			'intermediateLink' => 'Проміжне посилання',
			'exemptFromBackgroundUpdates' => 'Виключено з фонових оновлень (якщо ввімкнено)',
			'bgUpdatesOnWiFiOnly' => 'Вимкнути фонові оновлення поза Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Вимкнути фонові оновлення, коли не заряджається',
			'autoSelectHighestVersionCode' => 'Автоматичний вибір APK з найвищим кодом версії',
			'versionExtractionRegEx' => 'Регулярний вираз для вилучення рядка версії',
			'trimVersionString' => 'Обрізати рядок версії за допомогою RegEx',
			'matchGroupToUseForX' => 'Група збігів для "{}"',
			'matchGroupToUse' => 'Група співпадінь для використання в регулярному виразі вилучення версії',
			'highlightTouchTargets' => 'Підсвічувати менш очевидні області дотику',
			'pickExportDir' => 'Вибрати каталог експорту',
			'autoExportOnChanges' => 'Автоматичний експорт при змінах',
			'includeSettings' => 'Включити налаштування',
			'filterVersionsByRegEx' => 'Фільтрувати версії за регулярним виразом',
			'trySelectingSuggestedVersionCode' => 'Спробуйте вибрати запропонований код версії APK',
			'dontSortReleasesList' => 'Зберігати порядок випуску з API',
			'reverseSort' => 'Зворотне сортування',
			'takeFirstLink' => 'Вибрати перше посилання',
			'skipSort' => 'Пропустити сортування',
			'debugMenu' => 'Меню налагодження',
			'bgTaskStarted' => 'Запущено фонове завдання - перевірте журнали.',
			'runBgCheckNow' => 'Запустити перевірку оновлень в фоновому режимі зараз',
			'versionExtractWholePage' => 'Застосувати регулярний вираз вилучення версії до всієї сторінки',
			'installing' => 'Встановлення',
			'skipUpdateNotifications' => 'Пропустити сповіщення про оновлення',
			'updatesAvailableNotifChannel' => 'Доступні оновлення',
			'appsUpdatedNotifChannel' => 'Застосунки оновлені',
			'appsPossiblyUpdatedNotifChannel' => 'Спроба оновлення застосунків',
			'errorCheckingUpdatesNotifChannel' => 'Помилка перевірки оновлень',
			'appsRemovedNotifChannel' => 'Застосунки видалені',
			'downloadingXNotifChannel' => 'Завантаження {}',
			'completeAppInstallationNotifChannel' => 'Завершення встановлення застосунку',
			'checkingForUpdatesNotifChannel' => 'Перевірка оновлень',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Перевіряти лише встановлені та застосунки, які відстежуються для оновлень',
			'supportFixedAPKURL' => 'Підтримка фіксованих посилань на APK',
			'selectX' => 'Вибрати {}',
			'parallelDownloads' => 'Дозволити паралельні завантаження',
			'useShizuku' => 'Використовуйте Shizuku або Sui для встановлення',
			'shizukuBinderNotFound' => 'Сумісний сервіс Shizuku не було знайдено',
			'shizukuOld' => 'Стара версія Shizuku (<11) - оновіть її',
			'shizukuOldAndroidWithADB' => 'Shizuku працює на Android < 8.1 з ADB - оновіть Android або використовуйте Sui замість нього',
			'shizukuPretendToBeGooglePlay' => 'Виберіть Google Play як джерело встановлення (якщо використовується Shizuku)',
			'useSystemFont' => 'Використовувати системний шрифт',
			'useVersionCodeAsOSVersion' => 'Використовувати код версії застосунку як версію, визначену операційною системою',
			'requestHeader' => 'Заголовок запиту',
			'useLatestAssetDateAsReleaseDate' => 'Використовувати останню дату завантаження ресурсу як дату випуску',
			'defaultPseudoVersioningMethod' => 'Метод за замовчуванням псевдо-версіонування',
			'partialAPKHash' => 'Хеш часткового APK',
			'APKLinkHash' => 'Хеш посилання на APK',
			'directAPKLink' => 'Пряме посилання на APK',
			'pseudoVersionInUse' => 'Використовується псевдо-версія',
			'installedVersion' => 'Встановлено',
			'installed' => 'Встановлено',
			'notInstalledApps' => 'Не встановлено',
			'latest' => 'Остання',
			'invertRegEx' => 'Інвертувати регулярний вираз',
			'note' => 'Примітка',
			'selfHostedNote' => 'Випадаючий список "{}" може використовуватися для доступу до власних/призначених для самостійного використання екземплярів будь-якого джерела.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK не вдалося розпарсити (несумісний або часткове завантаження)',
			'beforeNewInstallsShareToAppVerifier' => 'Діліться новими додатками з AppVerifier (якщо доступно)',
			'appVerifierInstructionToast' => 'Надішліть на AppVerifier, а потім поверніться сюди, коли будете готові.',
			'wiki' => 'Довідка/Вікі',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Дозволити незахищені HTTP-запити',
			'stayOneVersionBehind' => 'Залишайтеся на одну версію актуальнішою',
			'useFirstApkOfVersion' => 'Автоматичний вибір першого з декількох APK',
			'refreshBeforeDownload' => 'Оновіть інформацію про програму перед завантаженням',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Ім\'я',
			'smartname' => 'Ім\'я (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Метод сортування',
			'welcome' => 'Ласкаво просимо.',
			'batteryOptimizationNote' => 'Зауважте, що фонові завантаження можуть працювати надійніше, якщо ви вимкнете оптимізацію батареї ОС для Updatium.',
			'fileDeletionError' => 'Не вдалося видалити файл (спробуйте видалити його вручну, а потім спробуйте ще раз): "{}"',
			'foregroundService' => 'Обслуговування переднього плану Updatium',
			'foregroundServiceExplanation' => 'Використовуйте службу переднього плану для перевірки оновлень (надійніша, споживає більше енергії)',
			'fgServiceNotice' => 'Це сповіщення необхідне для фонової перевірки оновлень (його можна приховати в налаштуваннях ОС)',
			'excludeSecrets' => 'Виключити секрети',
			'GHReqPrefix' => 'екземпляр \'omeritzics/Updatium\' для запитів на GitHub',
			'includeZips' => 'Додайте ZIP-файли',
			'zippedApkFilterRegEx' => 'Фільтруйте APK-файли всередині ZIP',
			'multipleSigners' => 'Кілька підписників',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Видалити застосунок?', other: 'Видалити застосунки?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Забагато запитів (обмеження швидкості) - повторіть спробу через {count} хвилину', other: 'Забагато запитів (обмеження швидкості) - повторіть спробу через {count} хвилин', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Помилка перевірки оновлень у фоновому режимі - спробую знову через {error} хвилину', other: 'Помилка перевірки оновлень у фоновому режимі - спробую знову через {error} хвилин', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Фонова перевірка оновлень знайшла {count} оновлення - сповістити користувача, якщо це необхідно', other: 'Фонова перевірка оновлень знайшла {count} оновлень - сповістити користувача, якщо це необхідно', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{count} застосунок', other: '{count} застосунки', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{count} URL-адреса', other: '{count} URL-адреси', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{count} хвилина', other: '{count} хвилин', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{count} година', other: '{count} годин', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{count} день', other: '{count} днів', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Очищено {n} журнал (до = {before}, після = {after})', other: 'Очищено {n} журналів (до = {before}, після = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{app} та ще 1 застосунок мають оновлення.', other: '{app} та ще {count} застосунки мають оновлення.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{app} та ще 1 застосунок було оновлено.', other: '{app} та ще {count} застосунків було оновлено.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Не вдалося оновити {app} та ще 1 програму.', other: 'Не вдалося оновити {app} і {count} та інші програми.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{app} та ще 1 застосунок можливо було оновлено.', other: '{app} та ще {count} застосунків можливо було оновлено.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: '{count} APK', other: '{count} APK-файли', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('uk'))(n, one: 'Сертифікат Hash', other: 'Сертифікат Hashes', ), 
			'securityDisclaimerTitle' => 'Відмова від відповідальності щодо безпеки та правових питань',
			'license' => 'Ліцензія',
			'licenseText' => 'Цей додаток розповсюджується під ліцензією GPL v3.',
			'disclaimer' => 'Відмова від відповідальності',
			'disclaimerText' => 'Цей додаток не розповсюджує, не розміщує та не перевіряє жодні зовнішні додатки. Користувач несе повну відповідальність за безпеку та законність будь-якого програмного забезпечення, встановленого через цей інструмент.\n\nhttps://github.com/omeritzics/Updatium - це єдине офіційне місце для завантаження Updatium - наполегливо не рекомендується завантажувати його з інших місць, оскільки завантаження з неофіційних джерел небезпечне.',
			'privacy' => 'Конфіденційність',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Прийняти та продовжити',
			'decline' => 'Відхилити',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Вам подобається Updatium?',
			'githubStarPromptContent' => 'Updatium - це добровільний проєкт з відкритим вихідним кодом, який я розробляю у свій вільний час. Якщо ви хочете підтримати проєкт, будь ласка, розгляньте можливість поставити йому зірку на GitHub, щоб допомогти нам досягти більше користувачів та учасників. Ви більше не отримуватимете нагадувань про це. Заздалегідь дякуємо! :)',
			'githubStarPromptStar' => 'Поставити зірку',
			'githubStarPromptDontShowAgain' => 'Більше не показувати',
			'sourceCode' => 'Вихідний код',
			'developedBy' => 'Розроблено',
			'appDescription' => 'Налаштований каталог додатків Android, який дозволяє оновлювати ваші додатки напряму з їхніх джерел APK.',
			'safeModeEnabled' => 'Безпечний режим увімкнено',
			'safeModeDisabled' => 'Безпечний режим вимкнено',
			'safeModeDisable' => 'Вимкнути безпечний режим',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Адміністрування безпечного режиму',
			'safeModeSetupDescription' => 'Встановіть пароль для увімкнення безпечного режиму. Після увімкнення безпечного режиму додавання нових додатків буде заблоковано, і його можна буде вимкнути лише за допомогою пароля.',
			'safeModeToggleDescription' => 'Введіть свій пароль, щоб увімкнути або вимкнути безпечний режим.',
			'safeModeSetPassword' => 'Встановити пароль',
			'safeModeConfirmPassword' => 'Підтвердити пароль',
			'safeModeEnterPassword' => 'Ввести пароль',
			'safeModePasswordHint' => 'Мінімум 8 символів',
			'safeModePasswordTooShort' => 'Пароль повинен містити мінімум 8 символів',
			'safeModePasswordMismatch' => 'Паролі не збігаються',
			'safeModePasswordIncorrect' => 'Невірний пароль',
			'safeModePasswordError' => 'Помилка встановлення пароля. Будь ласка, спробуйте знову.',
			'safeModeEnable' => 'Увімкнути безпечний режим',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} натискань залишилося для вимкнення безпечного режиму',
			'safeModeEnabledHint' => 'Безпечний режим увімкнено. Натисніть на номер версії в Налаштуваннях багаторазово, щоб вимкнути.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Зрозуміло',
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
