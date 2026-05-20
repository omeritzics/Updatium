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
class TranslationsBg with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBg({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bg,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bg>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsBg _root = this; // ignore: unused_field

	@override 
	TranslationsBg $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsBg(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Невалиден URL за приложение {}';
	@override String get noReleaseFound => 'Не можа да бъде намерено подходящо издание';
	@override String get noVersionFound => 'Не може да се определи версията на изданието';
	@override String get urlMatchesNoSource => 'URL не съответства на известен източник';
	@override String get cantInstallOlderVersion => 'Не може да се инсталира по- стара версия на приложение';
	@override String get appIdMismatch => 'ID на изтегления пакет не съответства на съществуващ ID на приложение';
	@override String get functionNotImplemented => 'Този клас не е реализирал тази функция';
	@override String get placeholder => 'Резервирано място';
	@override String get someErrors => 'Възникнаха някои грешки';
	@override String get unexpectedError => 'Неочаквана грешка';
	@override String get ok => 'Добре';
	@override String get and => 'и';
	@override String get githubPATLabel => 'Личен токен за достъп до GitHub';
	@override String get includePrereleases => 'Включване на предварителни издания';
	@override String get fallbackToOlderReleases => 'Връщане към по- стари издания';
	@override String get filterReleaseTitlesByRegEx => 'Филтриране на заглавията на изданията с регулярен израз';
	@override String get invalidRegEx => 'Невалиден регулярен израз';
	@override String get noDescription => 'Няма описание';
	@override String get cancel => 'Отказ';
	@override String get kContinue => 'Продължаване';
	@override String get requiredInBrackets => '(задължително)';
	@override String get dropdownNoOptsError => 'ГРЕШКА: ПАДАЩОТО МЕНЮ ТРЯБВА ДА ИМА Поне ЕДНА ОПЦИЯ';
	@override String get color => 'Цвят';
	@override String get standard => 'Стандартен';
	@override String get custom => 'Персонализиран';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Използване на Material You цветове';
	@override String get githubStarredRepos => 'Репозитории със звезда в GitHub';
	@override String get gettingAppInfo => 'Получаване на информация за приложението';
	@override String get username => 'Потребителско име';
	@override String get wrongArgNum => 'Предоставен е грешен брой аргументи';
	@override String get xIsTrackOnly => '{} е само за проследяване';
	@override String get source => 'Източник';
	@override String get app => 'Приложение';
	@override String get appsFromSourceAreTrackOnly => 'Приложенията от този източник са \'само за проследяване\'.';
	@override String get youPickedTrackOnly => 'Вие сте избрали опцията \'само за проследяване\'.';
	@override String get trackOnlyAppDescription => 'Приложението ще се проследява за актуализации, но Updatium няма да може да го изтегли или инсталира.';
	@override String get cancelled => 'Отменено';
	@override String get appAlreadyAdded => 'Приложението вече е добавено';
	@override String get alreadyUpToDateQuestion => 'Приложението вече е актуализирано?';
	@override String get addApp => 'Добавяне на приложение';
	@override String get appSourceURL => 'URL на източника на приложението';
	@override String get error => 'Грешка';
	@override String get add => 'Добавяне';
	@override String get advanced => 'Разширено';
	@override String get searchSomeSourcesLabel => 'Търсене (само за някои източници)';
	@override String get search => 'Търсене';
	@override String get searching => 'Търсене';
	@override String get additionalOptsFor => 'Допълнителни опции за {}';
	@override String get supportedSources => 'Поддържани източници';
	@override String get trackOnlyInBrackets => '(само за проследяване)';
	@override String get searchableInBrackets => '(с възможност за търсене)';
	@override String get appsString => 'Приложения';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Добре дошли!';
	@override String get noAppsSubtext => 'Можете да добавите първото си приложение, като натиснете \'Добавяне на приложение\' по- долу.';
	@override String get noAppsForFilter => 'Няма приложения за филтъра';
	@override String get byX => 'По {}';
	@override String get percentProgress => 'Напредък: {}%';
	@override String get pleaseWait => 'Моля, изчакайте';
	@override String get updateAvailable => 'Налична актуализация';
	@override String get notInstalled => 'Неинсталирано';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'псевдо-версия';
	@override String get selectAll => 'Избиране на всички';
	@override String get deselectX => 'Отмяна на избора на {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} ще бъде премахнато от Updatium, но ще остане инсталирано на устройството.';
	@override String get removeSelectedAppsQuestion => 'Премахване на избраните приложения?';
	@override String get removeSelectedApps => 'Премахване на избраните приложения';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Актуализация на {}';
	@override String get installX => 'Инсталиране на {}';
	@override String get markXTrackOnlyAsUpdated => 'Маркиране на {}\n(само за проследяване)\nкато актуализирано';
	@override String get changeX => 'Промяна на {}';
	@override String get installUpdateApps => 'Инсталиране/актуализация на приложения';
	@override String get installUpdateSelectedApps => 'Инсталиране/актуализация на избраните приложения';
	@override String get markXSelectedAppsAsUpdated => 'Маркиране на {} избрани приложения като актуализирани?';
	@override String get no => 'Не';
	@override String get yes => 'Да';
	@override String get markSelectedAppsUpdated => 'Маркиране на избраните приложения като актуализирани';
	@override String get pinToTop => 'Закачване най- отгоре';
	@override String get unpinFromTop => 'Откачване най- отдолу';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Нулиране на статуса на инсталация за избраните приложения?';
	@override String get installStatusOfXWillBeResetExplanation => 'Статусът на инсталация на всички избрани приложения ще бъде нулиран.\n\nТова може да помогне, когато версията на приложението, показана в Updatium, е неправилна поради неуспешни актуализации или други проблеми.';
	@override String get customLinkMessage => 'Тези връзки работят на устройства с инсталиран Updatium';
	@override String get shareAppConfigLinks => 'Споделяне на конфигурацията на приложението като HTML връзка';
	@override String get resetInstallStatus => 'Нулиране на статуса на инсталация';
	@override String get more => 'Повече';
	@override String get removeOutdatedFilter => 'Премахване на филтър за остарели приложения';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Запазване';
	@override String get showOutdatedOnly => 'Показване само на остарелите приложения';
	@override String get filter => 'Филтър';
	@override String get filterApps => 'Филтриране на приложения';
	@override String get filterDays => 'Филтриране на дни';
	@override String get appName => 'Име на приложение';
	@override String get appAuthor => 'Автор';
	@override String get upToDateApps => 'Актуализирани приложения';
	@override String get nonInstalledApps => 'Неинсталирани приложения';
	@override String get importExport => 'Импорт/експорт';
	@override String get settings => 'Настройки';
	@override String get exportedTo => 'Експортирано в {}';
	@override String get updatiumExport => 'Експорт на Updatium';
	@override String get failedToExport => 'Неуспешен експорт';
	@override String get exportAlreadyInProgress => 'Експортът вече е в ход';
	@override String get exportDirNotAccessible => 'Директорията за експорт не е достъпна';
	@override String get exportDirUriEmpty => 'URI на директорията за експорт е празен';
	@override String get failedToCreateExportFile => 'Неуспешно създаване на файл за експорт';
	@override String get invalidInput => 'Невалиден вход';
	@override String get importedX => 'Импортирано {}';
	@override String get updatiumImport => 'Импорт на Updatium';
	@override String get importFromURLList => 'Импорт от списък с URL адреси';
	@override String get searchQuery => 'Заявка за търсене';
	@override String get appURLList => 'Списък с URL адреси на приложения';
	@override String get line => 'Ред';
	@override String get searchX => 'Търсене на {}';
	@override String get noResults => 'Не са намерени резултати';
	@override String get importX => 'Импорт на {}';
	@override String get importedAppsIdDisclaimer => 'Импортираните приложения може да се показват невярно като "неинсталирани".\nЗа да поправите това, преинсталирайте ги чрез Updatium.\nТова не трябва да засяга данните на приложението.\n\nЗасяга само методите за импорт от URL и трети страни.';
	@override String get importErrors => 'Грешки при импорт';
	@override String get importedXOfYApps => '{} от {} приложения са импортирани.';
	@override String get followingURLsHadErrors => 'Следните URL адреси имат грешки:';
	@override String get selectURL => 'Избиране на URL';
	@override String get selectURLs => 'Избиране на URL адреси';
	@override String get pick => 'Изберете';
	@override String get theme => 'Тема';
	@override String get dark => 'Тъмна';
	@override String get light => 'Светла';
	@override String get followSystem => 'Следване на системата';
	@override String get followSystemThemeExplanation => 'Следването на системната тема е възможно само чрез използване на приложения на трети страни';
	@override String get useBlackTheme => 'Използване на чисто черна тъмна тема';
	@override String get appSortBy => 'Сортиране на приложения по';
	@override String get authorName => 'Автор/име';
	@override String get nameAuthor => 'Име/автор';
	@override String get asAdded => 'Както е добавено';
	@override String get appSortOrder => 'Ред на сортиране на приложения';
	@override String get ascending => 'Възходящ';
	@override String get descending => 'Низходящ';
	@override String get bgUpdateCheckInterval => 'Интервал за проверка за актуализация във фонов режим';
	@override String get neverManualOnly => 'Никога - само ръчно';
	@override String get appearance => 'Външен вид';
	@override String get pinUpdates => 'Закачване на актуализациите най- отгоре в изгледа на приложенията';
	@override String get updates => 'Актуализации';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get OpenDNS => 'OpenDNS';
	@override String get sourceSpecific => 'Специфично за източника';
	@override String get appSource => 'Източник на приложение';
	@override String get appSourceHint => 'Отваряне на хранилището на източника на приложението';
	@override String get noLogs => 'Няма дневници';
	@override String get appLogs => 'Дневници на приложенията';
	@override String get appLogsHint => 'Преглед на дневниците на приложенията';
	@override String get close => 'Затваряне';
	@override String get share => 'Споделяне';
	@override String get appNotFound => 'Приложението не е намерено';
	@override String get networkError => 'Неуспешна мрежова връзка';
	@override String get invalidUrlFormat => 'Невалиден формат на URL';
	@override String get accessDenied => 'Отказан достъп';
	@override String get importFailed => 'Неуспешен импорт';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Изберете APK';
	@override String get appHasMoreThanOnePackage => '{} има повече от един пакет:';
	@override String get deviceSupportsXArch => 'Вашето устройство поддържа {} CPU архитектура.';
	@override String get deviceSupportsFollowingArchs => 'Вашето устройство поддържа следните CPU архитектури:';
	@override String get warning => 'Предупреждение';
	@override String get sourceIsXButPackageFromYPrompt => 'Източникът на приложението е \'{}\', но пакетът на изданието идва от \'{}\'. Продължаване?';
	@override String get updatesAvailable => 'Налични актуализации';
	@override String get updatesAvailableNotifDescription => 'Уведомява потребителя, че са налични актуализации за едно или повече приложения, проследявани от Updatium';
	@override String get noNewUpdates => 'Няма нови актуализации.';
	@override String get xHasAnUpdate => '{} има актуализация.';
	@override String get appsUpdated => 'Приложенията са актуализирани';
	@override String get appsNotUpdated => 'Неуспешно актуализиране на приложения';
	@override String get appsUpdatedNotifDescription => 'Уведомява потребителя, че актуализациите на едно или повече приложения са били приложени във фонов режим';
	@override String get xWasUpdatedToY => '{} беше актуализирано до {}.';
	@override String get xWasNotUpdatedToY => 'Неуспешно актуализиране на {} до {}.';
	@override String get errorCheckingUpdates => 'Грешка при проверка за актуализации';
	@override String get errorCheckingUpdatesNotifDescription => 'Известие, което се показва, когато проверката за актуализация във фонов режим се провали';
	@override String get appsRemoved => 'Приложенията са премахнати';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Уведомява потребителя, че едно или повече приложения са били премахнати поради грешки при зареждането им';
	@override String get xWasRemovedDueToErrorY => '{} беше премахнато поради тази грешка: {}';
	@override String get completeAppInstallation => 'Завършване на инсталирането на приложението';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium трябва да е отворен за инсталиране на приложения';
	@override String get completeAppInstallationNotifDescription => 'Иска от потребителя да се върне в Updatium, за да завърши инсталирането на приложение';
	@override String get checkingForUpdates => 'Проверка за актуализации';
	@override String get checkForUpdates => 'Проверка за актуализации';
	@override String get checkingForUpdatesNotifDescription => 'Временно известие, което се появява при проверка за актуализации';
	@override String get pleaseAllowInstallPerm => 'Моля, разрешете на Updatium да инсталира приложения';
	@override String get trackOnly => 'Само за проследяване';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Грешка {}';
	@override String get versionCorrectionDisabled => 'Корекцията на версията е деактивирана (плъгинът не работи)';
	@override String get unknown => 'Неизвестно';
	@override String get none => 'Няма';
	@override String get all => 'Всички';
	@override String get never => 'Никога';
	@override String get latestVersion => 'Последна';
	@override String get installedVersionX => 'Инсталирана: {}';
	@override String get lastUpdateCheckX => 'Последна проверка за актуализация: {}';
	@override String get remove => 'Премахване';
	@override String get quickLinks => 'Бързи връзки';
	@override String get yesMarkUpdated => 'Да, маркиране като актуализирано';
	@override String get fdroid => 'F-Droid официален';
	@override String get appIdOrName => 'ID или име на приложение';
	@override String get appId => 'ID на приложение';
	@override String get appWithIdOrNameNotFound => 'Не беше намерено приложение с този ID или име';
	@override String get reposHaveMultipleApps => 'Хранилищата може да съдържат множество приложения';
	@override String get fdroidThirdPartyRepo => 'Хранилище на трети страни за F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Инсталиране';
	@override String get markInstalled => 'Маркиране като инсталирано';
	@override String get update => 'Актуализация';
	@override String get updated => 'Актуализирано';
	@override String get markUpdated => 'Маркиране като актуализирано';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Допълнителни опции';
	@override String get disableVersionDetection => 'Деактивиране на откриването на версията';
	@override String get noVersionDetectionExplanation => 'Тази опция трябва да се използва само за приложения, при които откриването на версията не работи правилно.';
	@override String get downloadingX => 'Изтегляне на {}';
	@override String get downloadX => 'Изтегляне на {}';
	@override String get downloadedX => 'Изтеглено {}';
	@override String get editCategory => 'Редактиране на категория';
	@override String get releaseAsset => 'Актив на изданието';
	@override String get downloadNotifDescription => 'Уведомява потребителя за напредъка при изтегляне на приложение';
	@override String get noAPKFound => 'Не е намерен APK';
	@override String get noVersionDetection => 'Няма откриване на версия';
	@override String get categorize => 'Категоризиране';
	@override String get categories => 'Категории';
	@override String get category => 'Категория';
	@override String get noCategory => 'Няма категория';
	@override String get noCategories => 'Няма категории';
	@override String get categoryDeleteQuestion => 'Изтриване на категории?';
	@override String get categoryDeleteWarning => 'Всички приложения в изтритите категории ще бъдат зададени като некатегоризирани.';
	@override String get addCategory => 'Добавяне на категория';
	@override String get label => 'Етикет';
	@override String get language => 'Език';
	@override String get copiedToClipboard => 'Копирано в клипборда';
	@override String get storagePermissionDenied => 'Разрешението за съхранение е отказано';
	@override String get selectedCategorizeWarning => 'Това ще замени всякакви съществуващи настройки за категория за избраните приложения.';
	@override String get filterAPKsByRegEx => 'Филтриране на APK файлове с регулярен израз';
	@override String get removeFromUpdatium => 'Премахване от Updatium';
	@override String get uninstallFromDevice => 'Деинсталиране от устройството';
	@override String get onlyWorksWithNonVersionDetectApps => 'Работи само за приложения с деактивирано откриване на версия';
	@override String get releaseDateAsVersion => 'Използване на датата на изданието като низ на версията';
	@override String get releaseTitleAsVersion => 'Използване на заглавието на изданието като низ на версията';
	@override String get releaseDateAsVersionExplanation => 'Тази опция трябва да се използва само за приложения, при които откриването на версията не работи правилно, но е налична дата на изданието.';
	@override String get changes => 'Промени';
	@override String get releaseDate => 'Дата на изданието';
	@override String get importFromURLsInFile => 'Импорт от URL адреси във файл (като OPML)';
	@override String get versionDetectionExplanation => 'Съгласуване на низа на версията с версията, открита от ОС';
	@override String get versionDetection => 'Откриване на версия';
	@override String get standardVersionDetection => 'Стандартно откриване на версия';
	@override String get groupByCategory => 'Групиране по категория';
	@override String get listView => 'Изглед на списък';
	@override String get gridView => 'Изглед на мрежа';
	@override String get autoApkFilterByArch => 'Опит за филтриране на APK файлове по CPU архитектура, ако е възможно';
	@override String get autoLinkFilterByArch => 'Опит за филтриране на връзки по CPU архитектура, ако е възможно';
	@override String get overrideSource => 'Замяна на източника';
	@override String get dontShowAgain => 'Не показвай това отново';
	@override String get dontShowTrackOnlyWarnings => 'Не показвай предупреждения за \'само за проследяване\'';
	@override String get dontShowAPKOriginWarnings => 'Не показвай предупреждения за произхода на APK';
	@override String get moveNonInstalledAppsToBottom => 'Преместване на неинсталираните приложения най- отдолу в изгледа на приложенията';
	@override String get gitlabPATLabel => 'Личен токен за достъп до GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Относно';
	@override String get requiresCredentialsInSettings => '{} изисква допълнителни идентификационни данни (в Настройки)';
	@override String get checkOnStart => 'Проверка за актуализации при стартиране';
	@override String get safeMode => 'Безопасен режим';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Добавянето на приложение е деактивирано в Безопасен режим';
	@override String get tryInferAppIdFromCode => 'Опит за извод на ID на приложението от изходния код';
	@override String get removeOnExternalUninstall => 'Автоматично премахване на външно деинсталирани приложения';
	@override String get pickHighestVersionCode => 'Автоматично избиране на APK с най- висок код на версия';
	@override String get checkUpdateOnDetailPage => 'Проверка за актуализации при отваряне на страница с детайли за приложението';
	@override String get disablePageTransitions => 'Деактивиране на анимациите за преход между страници';
	@override String get reversePageTransitions => 'Обръщане на анимациите за преход между страници';
	@override String get minStarCount => 'Минимален брой звезди';
	@override String get addInfoBelow => 'Добавете тази информация по- долу.';
	@override String get addInfoInSettings => 'Добавете тази информация в Настройки.';
	@override String get githubSourceNote => 'Лимитът на заявки на GitHub може да се избегне чрез използване на API ключ.';
	@override String get sortByLastLinkSegment => 'Сортиране само по последния сегмент на връзката';
	@override String get filterReleaseNotesByRegEx => 'Филтриране на бележките към изданията с регулярен израз';
	@override String get customLinkFilterRegex => 'Персонализиран филтър за APK връзки с регулярен израз (по подразбиране \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Опит за актуализация на приложения';
	@override String get appsPossiblyUpdatedNotifDescription => 'Уведомява потребителя, че актуализациите на едно или повече приложения може да са били приложени във фонов режим';
	@override String get xWasPossiblyUpdatedToY => '{} може да е било актуализирано до {}.';
	@override String get enableBackgroundUpdates => 'Активиране на актуализации във фонов режим';
	@override String get backgroundUpdateReqsExplanation => 'Актуализациите във фонов режим може да не са възможни за всички приложения.';
	@override String get backgroundUpdateLimitsExplanation => 'Успехът на инсталация във фонов режим може да се определи само когато Updatium е отворен.';
	@override String get verifyLatestTag => 'Проверка на етикета \'latest\'';
	@override String get intermediateLinkRegex => 'Филтър за \'междинна\' връзка за посещение';
	@override String get filterByLinkText => 'Филтриране на връзки по текст на връзката';
	@override String get matchLinksOutsideATags => 'Съвпадение на връзки извън <a> тагове';
	@override String get intermediateLinkNotFound => 'Междинната връзка не е намерена';
	@override String get intermediateLink => 'Междинна връзка';
	@override String get exemptFromBackgroundUpdates => 'Освобождаване от актуализации във фонов режим (ако е активирано)';
	@override String get bgUpdatesOnWiFiOnly => 'Деактивиране на актуализации във фонов режим, когато не е на Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Деактивиране на актуализации във фонов режим, когато не се зарежда';
	@override String get autoSelectHighestVersionCode => 'Автоматично избиране на APK с най- висок versionCode';
	@override String get versionExtractionRegEx => 'Регулярен израз за извличане на низ на версията';
	@override String get trimVersionString => 'Изрязване на низа на версията с регулярен израз';
	@override String get matchGroupToUseForX => 'Група за съвпадение за използване за "{}"';
	@override String get matchGroupToUse => 'Група за съвпадение за използване за регулярен израз за извличане на низ на версията';
	@override String get highlightTouchTargets => 'Осветяване на по- малко очевидни цели за докосване';
	@override String get pickExportDir => 'Изберете директория за експорт';
	@override String get autoExportOnChanges => 'Автоматичен експорт при промени';
	@override String get includeSettings => 'Включване на настройки';
	@override String get filterVersionsByRegEx => 'Филтриране на версии с регулярен израз';
	@override String get trySelectingSuggestedVersionCode => 'Опит за избиране на предложен versionCode APK';
	@override String get dontSortReleasesList => 'Запазване на реда на изданията от API';
	@override String get reverseSort => 'Обръщане на сортирането';
	@override String get takeFirstLink => 'Вземане на първата връзка';
	@override String get skipSort => 'Пропускане на сортирането';
	@override String get debugMenu => 'Меню за отстраняване на грешки';
	@override String get bgTaskStarted => 'Фонова задача стартирана - проверете дневниците.';
	@override String get runBgCheckNow => 'Изпълнение на проверка за актуализация във фонов режим сега';
	@override String get versionExtractWholePage => 'Прилагане на регулярен израз за извличане на низ на версията към цялата страница';
	@override String get installing => 'Инсталиране';
	@override String get skipUpdateNotifications => 'Пропускане на известия за актуализации';
	@override String get updatesAvailableNotifChannel => 'Налични актуализации';
	@override String get appsUpdatedNotifChannel => 'Приложенията са актуализирани';
	@override String get appsPossiblyUpdatedNotifChannel => 'Опит за актуализация на приложения';
	@override String get errorCheckingUpdatesNotifChannel => 'Грешка при проверка за актуализации';
	@override String get appsRemovedNotifChannel => 'Приложенията са премахнати';
	@override String get downloadingXNotifChannel => 'Изтегляне на {}';
	@override String get completeAppInstallationNotifChannel => 'Завършване на инсталирането на приложението';
	@override String get checkingForUpdatesNotifChannel => 'Проверка за актуализации';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Проверка за актуализации само на инсталирани и приложения само за проследяване';
	@override String get supportFixedAPKURL => 'Поддръжка на фиксирани URL адреси за APK';
	@override String get selectX => 'Избиране на {}';
	@override String get parallelDownloads => 'Разрешаване на паралелни изтегляния';
	@override String get useShizuku => 'Използване на Shizuku или Sui за инсталиране';
	@override String get shizukuBinderNotFound => 'Услугата Shizuku не работи';
	@override String get shizukuOld => 'Стара версия на Shizuku (<11) - актуализирайте я';
	@override String get shizukuOldAndroidWithADB => 'Shizuku работи на Android < 8.1 с ADB - актуализирайте Android или използвайте Sui вместо това';
	@override String get shizukuPretendToBeGooglePlay => 'Задаване на Google Play като източник на инсталиране (ако се използва Shizuku)';
	@override String get useSystemFont => 'Използване на системен шрифт';
	@override String get useVersionCodeAsOSVersion => 'Използване на versionCode на приложението като версия, открита от ОС';
	@override String get requestHeader => 'Заглавка на заявката';
	@override String get useLatestAssetDateAsReleaseDate => 'Използване на последното качване на актив като дата на изданието';
	@override String get defaultPseudoVersioningMethod => 'Метод за псевдо-версиониране по подразбиране';
	@override String get partialAPKHash => 'Частичен хеш на APK';
	@override String get APKLinkHash => 'Хеш на връзката към APK';
	@override String get directAPKLink => 'Директна връзка към APK';
	@override String get pseudoVersionInUse => 'Използва се псевдо-версия';
	@override String get installedVersion => 'Инсталирана';
	@override String get installed => 'Инсталирано';
	@override String get notInstalledApps => 'Неинсталирани';
	@override String get latest => 'Последна';
	@override String get invertRegEx => 'Обръщане на регулярен израз';
	@override String get note => 'Бележка';
	@override String get selfHostedNote => 'Падащото меню "{}" може да се използва за достигане на само- хоствани/персонализирани инстанции на всеки източник.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK не може да бъде анализиран (несъвместим или частично изтегляне)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Споделяне на нови приложения с AppVerifier (ако е налично)';
	@override String get appVerifierInstructionToast => 'Споделете с AppVerifier, след което се върнете тук, когато сте готови.';
	@override String get wiki => 'Помощ/wiki';
	@override String get wikiHint => 'Отваряне на wiki документацията на Updatium';
	@override String get allowInsecure => 'Разрешаване на несигурни HTTP заявки';
	@override String get stayOneVersionBehind => 'Оставане една версия зад последната';
	@override String get useFirstApkOfVersion => 'Автоматично избиране на първия от множество APK файлове';
	@override String get refreshBeforeDownload => 'Опресняване на детайлите за приложението преди изтегляне';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Име';
	@override String get smartname => 'Име (умно)';
	@override String get smartPlusDate => 'Умно + Дата';
	@override String get sortMethod => 'Метод за сортиране';
	@override String get welcome => 'Добре дошли';
	@override String get batteryOptimizationNote => 'Имайте предвид, че изтеглянията във фонов режим може да работят по- надеждно, ако превключите на "foreground service" в настройките на Updatium и/или деактивирате оптимизацията на батерията за Updatium в настройките на вашата ОС.';
	@override String get fileDeletionError => 'Неуспешно изтриване на файл (опитайте да го изтриете ръчно, след което опитайте отново): "{}"';
	@override String get foregroundService => 'Foreground service на Updatium';
	@override String get foregroundServiceExplanation => 'Използване на foreground service за проверка за актуализации (по- надеждно, консумира повече енергия)';
	@override String get fgServiceNotice => 'Това известие е необходимо за проверка за актуализации във фонов режим (може да бъде скрито в настройките на ОС)';
	@override String get excludeSecrets => 'Изключване на тайни';
	@override String get GHReqPrefix => 'Инстанция \'omeritzics/Updatium\' за заявки към GitHub';
	@override String get includeZips => 'Включване на ZIP файлове';
	@override String get zippedApkFilterRegEx => 'Филтриране на APK файлове вътре в ZIP';
	@override String get multipleSigners => 'Множество подписващи лица';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Премахване на приложение?',
		other: 'Премахване на приложения?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Твърде много заявки (ограничени по скорост) - опитайте отново след {count} минута',
		other: 'Твърде много заявки (ограничени по скорост) - опитайте отново след {count} минути',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Проверката за актуализация във фонов режим срещна {error}, ще се планира повторна проверка след {count} минута',
		other: 'Проверката за актуализация във фонов режим срещна {error}, ще се планира повторна проверка след {count} минути',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Проверката за актуализация във фонов режим намери {count} актуализация - ще уведоми потребителя, ако е необходимо',
		other: 'Проверката за актуализация във фонов режим намери {count} актуализации - ще уведоми потребителя, ако е необходимо',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{count} Приложение',
		other: '{count} Приложения',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{count} URL',
		other: '{count} URLs',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{count} минута',
		other: '{count} минути',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{count} час',
		other: '{count} часа',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{count} ден',
		other: '{count} дни',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Изчистен {n} дневник (преди = {before}, след = {after})',
		other: 'Изчистени {n} дневника (преди = {before}, след = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{app} и още 1 приложение имат актуализации.',
		other: '{app} и още {count} приложения имат актуализации.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{app} и още 1 приложение беше актуализирано.',
		other: '{app} и още {count} приложения бяха актуализирани.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Неуспешно актуализиране на {app} и още 1 приложение.',
		other: 'Неуспешно актуализиране на {app} и още {count} приложения.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{app} и още 1 приложение може да е било актуализирано.',
		other: '{app} и още {count} приложения може да са били актуализирани.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: '{count} APK',
		other: '{count} APK файлове',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n,
		one: 'Хеш на сертификат',
		other: 'Хешове на сертификати',
	);
	@override String get securityDisclaimerTitle => 'Сигурност и Правен Уведомление';
	@override String get license => 'Лиценз';
	@override String get licenseText => 'Това приложение се разпространява под GPL v3 лиценз.';
	@override String get disclaimer => 'Отказ от отговорност';
	@override String get disclaimerText => 'Това приложение не разпространява, хоства или проверява никакви външни приложения. Потребителят носи пълна отговорност за сигурността и законността на всяко софтуер, инсталиран чрез този инструмент.\n\nhttps://github.com/omeritzics/Updatium е единственият официален източник за изтегляне на Updatium - силно се препоръчва да не се изтегля от други места, тъй като неофициалните източници са несигурни.';
	@override String get privacy => 'Приватност';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Приемам и продължавам';
	@override String get decline => 'Отказ';
	@override String get delete => 'Изтриване';
	@override String get deleteCategory => 'Изтриване на категория';
	@override String get githubStarPromptTitle => 'Харесвате Updatium?';
	@override String get githubStarPromptContent => 'Updatium е доброволен проект с отворен код, разработен в свободното ми време. Ако искате да подкрепите проекта, моля, обмислете възможността да дадете звезда на GitHub, за да ни помогнете да достигнем повече потребители и сътрудници. Няма да ви се напомня за това отново. Благодаря ви предварително! :)';
	@override String get githubStarPromptStar => 'Звезда';
	@override String get githubStarPromptDontShowAgain => 'Не показвай отново';
	@override String get sourceCode => 'Изходен код';
	@override String get developedBy => 'Разработено от';
	@override String get appDescription => 'Персонализируем каталог за приложения за Android, който ви позволява да актуализирате приложенията си директно от техните APK източници.';
	@override String get safeModeEnabled => 'Безопасният режим е активиран';
	@override String get safeModeDisabled => 'Безопасният режим е деактивиран';
	@override String get safeModeDisable => 'Деактивиране на Безопасен режим';
	@override String get safeModeDisableHint => 'Натиснете няколко пъти върху номера на версията в Настройки, за да деактивирате Безопасен режим';
	@override String get safeModeAdmin => 'Администрация на Безопасен режим';
	@override String get safeModeSetupDescription => 'Задайте парола за активиране на Безопасен режим. След активиране, Безопасният режим предотвратява добавянето на нови приложения и може да бъде деактивиран само с паролата.';
	@override String get safeModeToggleDescription => 'Въведете вашата парола, за да превключите Безопасен режим включен или изключен.';
	@override String get safeModeSetPassword => 'Задаване на парола';
	@override String get safeModeConfirmPassword => 'Потвърждаване на парола';
	@override String get safeModeEnterPassword => 'Въведете парола';
	@override String get safeModePasswordHint => 'Минимум 8 символа';
	@override String get safeModePasswordTooShort => 'Паролата трябва да бъде поне 8 символа';
	@override String get safeModePasswordMismatch => 'Паролите не съвпадат';
	@override String get safeModePasswordIncorrect => 'Неправилна парола';
	@override String get safeModePasswordError => 'Грешка при задаване на парола. Моля, опитайте отново.';
	@override String get safeModeEnable => 'Активиране на Безопасен режим';
	@override String get safeModeToggle => 'Деактивиране на Безопасен режим';
	@override String get safeModeTapsRemaining => '{count} докосвания остават за деактивиране на Безопасен режим';
	@override String get safeModeEnabledHint => 'Безопасният режим е активиран. Натиснете много пъти върху номера на версията в Настройки, за да го деактивирате.';
	@override String get preventUninstallation => 'Предотвратяване на деинсталиране';
	@override String get preventUninstallationDescription => 'Предотвратява деинсталирането на Updatium без първо да деактивирате Безопасен режим';
	@override String get deviceAdminRequired => 'Разрешение за администратор на устройството се изисква за предотвратяване на деинсталиране';
	@override String get turnOffSafeModeFirst => 'Моля, първо изключете Безопасен режим';
	@override String get gotIt => 'Разбрах';
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

/// The flat map containing all translations for locale <bg>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsBg {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Невалиден URL за приложение {}',
			'noReleaseFound' => 'Не можа да бъде намерено подходящо издание',
			'noVersionFound' => 'Не може да се определи версията на изданието',
			'urlMatchesNoSource' => 'URL не съответства на известен източник',
			'cantInstallOlderVersion' => 'Не може да се инсталира по- стара версия на приложение',
			'appIdMismatch' => 'ID на изтегления пакет не съответства на съществуващ ID на приложение',
			'functionNotImplemented' => 'Този клас не е реализирал тази функция',
			'placeholder' => 'Резервирано място',
			'someErrors' => 'Възникнаха някои грешки',
			'unexpectedError' => 'Неочаквана грешка',
			'ok' => 'Добре',
			'and' => 'и',
			'githubPATLabel' => 'Личен токен за достъп до GitHub',
			'includePrereleases' => 'Включване на предварителни издания',
			'fallbackToOlderReleases' => 'Връщане към по- стари издания',
			'filterReleaseTitlesByRegEx' => 'Филтриране на заглавията на изданията с регулярен израз',
			'invalidRegEx' => 'Невалиден регулярен израз',
			'noDescription' => 'Няма описание',
			'cancel' => 'Отказ',
			'kContinue' => 'Продължаване',
			'requiredInBrackets' => '(задължително)',
			'dropdownNoOptsError' => 'ГРЕШКА: ПАДАЩОТО МЕНЮ ТРЯБВА ДА ИМА Поне ЕДНА ОПЦИЯ',
			'color' => 'Цвят',
			'standard' => 'Стандартен',
			'custom' => 'Персонализиран',
			'primary' => 'Primary',
			'useMaterialYou' => 'Използване на Material You цветове',
			'githubStarredRepos' => 'Репозитории със звезда в GitHub',
			'gettingAppInfo' => 'Получаване на информация за приложението',
			'username' => 'Потребителско име',
			'wrongArgNum' => 'Предоставен е грешен брой аргументи',
			'xIsTrackOnly' => '{} е само за проследяване',
			'source' => 'Източник',
			'app' => 'Приложение',
			'appsFromSourceAreTrackOnly' => 'Приложенията от този източник са \'само за проследяване\'.',
			'youPickedTrackOnly' => 'Вие сте избрали опцията \'само за проследяване\'.',
			'trackOnlyAppDescription' => 'Приложението ще се проследява за актуализации, но Updatium няма да може да го изтегли или инсталира.',
			'cancelled' => 'Отменено',
			'appAlreadyAdded' => 'Приложението вече е добавено',
			'alreadyUpToDateQuestion' => 'Приложението вече е актуализирано?',
			'addApp' => 'Добавяне на приложение',
			'appSourceURL' => 'URL на източника на приложението',
			'error' => 'Грешка',
			'add' => 'Добавяне',
			'advanced' => 'Разширено',
			'searchSomeSourcesLabel' => 'Търсене (само за някои източници)',
			'search' => 'Търсене',
			'searching' => 'Търсене',
			'additionalOptsFor' => 'Допълнителни опции за {}',
			'supportedSources' => 'Поддържани източници',
			'trackOnlyInBrackets' => '(само за проследяване)',
			'searchableInBrackets' => '(с възможност за търсене)',
			'appsString' => 'Приложения',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Добре дошли!',
			'noAppsSubtext' => 'Можете да добавите първото си приложение, като натиснете \'Добавяне на приложение\' по- долу.',
			'noAppsForFilter' => 'Няма приложения за филтъра',
			'byX' => 'По {}',
			'percentProgress' => 'Напредък: {}%',
			'pleaseWait' => 'Моля, изчакайте',
			'updateAvailable' => 'Налична актуализация',
			'notInstalled' => 'Неинсталирано',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'псевдо-версия',
			'selectAll' => 'Избиране на всички',
			'deselectX' => 'Отмяна на избора на {}',
			'xWillBeRemovedButRemainInstalled' => '{} ще бъде премахнато от Updatium, но ще остане инсталирано на устройството.',
			'removeSelectedAppsQuestion' => 'Премахване на избраните приложения?',
			'removeSelectedApps' => 'Премахване на избраните приложения',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Актуализация на {}',
			'installX' => 'Инсталиране на {}',
			'markXTrackOnlyAsUpdated' => 'Маркиране на {}\n(само за проследяване)\nкато актуализирано',
			'changeX' => 'Промяна на {}',
			'installUpdateApps' => 'Инсталиране/актуализация на приложения',
			'installUpdateSelectedApps' => 'Инсталиране/актуализация на избраните приложения',
			'markXSelectedAppsAsUpdated' => 'Маркиране на {} избрани приложения като актуализирани?',
			'no' => 'Не',
			'yes' => 'Да',
			'markSelectedAppsUpdated' => 'Маркиране на избраните приложения като актуализирани',
			'pinToTop' => 'Закачване най- отгоре',
			'unpinFromTop' => 'Откачване най- отдолу',
			'resetInstallStatusForSelectedAppsQuestion' => 'Нулиране на статуса на инсталация за избраните приложения?',
			'installStatusOfXWillBeResetExplanation' => 'Статусът на инсталация на всички избрани приложения ще бъде нулиран.\n\nТова може да помогне, когато версията на приложението, показана в Updatium, е неправилна поради неуспешни актуализации или други проблеми.',
			'customLinkMessage' => 'Тези връзки работят на устройства с инсталиран Updatium',
			'shareAppConfigLinks' => 'Споделяне на конфигурацията на приложението като HTML връзка',
			'resetInstallStatus' => 'Нулиране на статуса на инсталация',
			'more' => 'Повече',
			'removeOutdatedFilter' => 'Премахване на филтър за остарели приложения',
			'removeFilter' => 'Remove filter',
			'save' => 'Запазване',
			'showOutdatedOnly' => 'Показване само на остарелите приложения',
			'filter' => 'Филтър',
			'filterApps' => 'Филтриране на приложения',
			'filterDays' => 'Филтриране на дни',
			'appName' => 'Име на приложение',
			'appAuthor' => 'Автор',
			'upToDateApps' => 'Актуализирани приложения',
			'nonInstalledApps' => 'Неинсталирани приложения',
			'importExport' => 'Импорт/експорт',
			'settings' => 'Настройки',
			'exportedTo' => 'Експортирано в {}',
			'updatiumExport' => 'Експорт на Updatium',
			'failedToExport' => 'Неуспешен експорт',
			'exportAlreadyInProgress' => 'Експортът вече е в ход',
			'exportDirNotAccessible' => 'Директорията за експорт не е достъпна',
			'exportDirUriEmpty' => 'URI на директорията за експорт е празен',
			'failedToCreateExportFile' => 'Неуспешно създаване на файл за експорт',
			'invalidInput' => 'Невалиден вход',
			'importedX' => 'Импортирано {}',
			'updatiumImport' => 'Импорт на Updatium',
			'importFromURLList' => 'Импорт от списък с URL адреси',
			'searchQuery' => 'Заявка за търсене',
			'appURLList' => 'Списък с URL адреси на приложения',
			'line' => 'Ред',
			'searchX' => 'Търсене на {}',
			'noResults' => 'Не са намерени резултати',
			'importX' => 'Импорт на {}',
			'importedAppsIdDisclaimer' => 'Импортираните приложения може да се показват невярно като "неинсталирани".\nЗа да поправите това, преинсталирайте ги чрез Updatium.\nТова не трябва да засяга данните на приложението.\n\nЗасяга само методите за импорт от URL и трети страни.',
			'importErrors' => 'Грешки при импорт',
			'importedXOfYApps' => '{} от {} приложения са импортирани.',
			'followingURLsHadErrors' => 'Следните URL адреси имат грешки:',
			'selectURL' => 'Избиране на URL',
			'selectURLs' => 'Избиране на URL адреси',
			'pick' => 'Изберете',
			'theme' => 'Тема',
			'dark' => 'Тъмна',
			'light' => 'Светла',
			'followSystem' => 'Следване на системата',
			'followSystemThemeExplanation' => 'Следването на системната тема е възможно само чрез използване на приложения на трети страни',
			'useBlackTheme' => 'Използване на чисто черна тъмна тема',
			'appSortBy' => 'Сортиране на приложения по',
			'authorName' => 'Автор/име',
			'nameAuthor' => 'Име/автор',
			'asAdded' => 'Както е добавено',
			'appSortOrder' => 'Ред на сортиране на приложения',
			'ascending' => 'Възходящ',
			'descending' => 'Низходящ',
			'bgUpdateCheckInterval' => 'Интервал за проверка за актуализация във фонов режим',
			'neverManualOnly' => 'Никога - само ръчно',
			'appearance' => 'Външен вид',
			'pinUpdates' => 'Закачване на актуализациите най- отгоре в изгледа на приложенията',
			'updates' => 'Актуализации',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'OpenDNS' => 'OpenDNS',
			'sourceSpecific' => 'Специфично за източника',
			'appSource' => 'Източник на приложение',
			'appSourceHint' => 'Отваряне на хранилището на източника на приложението',
			'noLogs' => 'Няма дневници',
			'appLogs' => 'Дневници на приложенията',
			'appLogsHint' => 'Преглед на дневниците на приложенията',
			'close' => 'Затваряне',
			'share' => 'Споделяне',
			'appNotFound' => 'Приложението не е намерено',
			'networkError' => 'Неуспешна мрежова връзка',
			'invalidUrlFormat' => 'Невалиден формат на URL',
			'accessDenied' => 'Отказан достъп',
			'importFailed' => 'Неуспешен импорт',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Изберете APK',
			'appHasMoreThanOnePackage' => '{} има повече от един пакет:',
			'deviceSupportsXArch' => 'Вашето устройство поддържа {} CPU архитектура.',
			'deviceSupportsFollowingArchs' => 'Вашето устройство поддържа следните CPU архитектури:',
			'warning' => 'Предупреждение',
			'sourceIsXButPackageFromYPrompt' => 'Източникът на приложението е \'{}\', но пакетът на изданието идва от \'{}\'. Продължаване?',
			'updatesAvailable' => 'Налични актуализации',
			'updatesAvailableNotifDescription' => 'Уведомява потребителя, че са налични актуализации за едно или повече приложения, проследявани от Updatium',
			'noNewUpdates' => 'Няма нови актуализации.',
			'xHasAnUpdate' => '{} има актуализация.',
			'appsUpdated' => 'Приложенията са актуализирани',
			'appsNotUpdated' => 'Неуспешно актуализиране на приложения',
			'appsUpdatedNotifDescription' => 'Уведомява потребителя, че актуализациите на едно или повече приложения са били приложени във фонов режим',
			'xWasUpdatedToY' => '{} беше актуализирано до {}.',
			'xWasNotUpdatedToY' => 'Неуспешно актуализиране на {} до {}.',
			'errorCheckingUpdates' => 'Грешка при проверка за актуализации',
			'errorCheckingUpdatesNotifDescription' => 'Известие, което се показва, когато проверката за актуализация във фонов режим се провали',
			'appsRemoved' => 'Приложенията са премахнати',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Уведомява потребителя, че едно или повече приложения са били премахнати поради грешки при зареждането им',
			'xWasRemovedDueToErrorY' => '{} беше премахнато поради тази грешка: {}',
			'completeAppInstallation' => 'Завършване на инсталирането на приложението',
			'updatiumMustBeOpenToInstallApps' => 'Updatium трябва да е отворен за инсталиране на приложения',
			'completeAppInstallationNotifDescription' => 'Иска от потребителя да се върне в Updatium, за да завърши инсталирането на приложение',
			'checkingForUpdates' => 'Проверка за актуализации',
			'checkForUpdates' => 'Проверка за актуализации',
			'checkingForUpdatesNotifDescription' => 'Временно известие, което се появява при проверка за актуализации',
			'pleaseAllowInstallPerm' => 'Моля, разрешете на Updatium да инсталира приложения',
			'trackOnly' => 'Само за проследяване',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Грешка {}',
			'versionCorrectionDisabled' => 'Корекцията на версията е деактивирана (плъгинът не работи)',
			'unknown' => 'Неизвестно',
			'none' => 'Няма',
			'all' => 'Всички',
			'never' => 'Никога',
			'latestVersion' => 'Последна',
			'installedVersionX' => 'Инсталирана: {}',
			'lastUpdateCheckX' => 'Последна проверка за актуализация: {}',
			'remove' => 'Премахване',
			'quickLinks' => 'Бързи връзки',
			'yesMarkUpdated' => 'Да, маркиране като актуализирано',
			'fdroid' => 'F-Droid официален',
			'appIdOrName' => 'ID или име на приложение',
			'appId' => 'ID на приложение',
			'appWithIdOrNameNotFound' => 'Не беше намерено приложение с този ID или име',
			'reposHaveMultipleApps' => 'Хранилищата може да съдържат множество приложения',
			'fdroidThirdPartyRepo' => 'Хранилище на трети страни за F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Инсталиране',
			'markInstalled' => 'Маркиране като инсталирано',
			'update' => 'Актуализация',
			'updated' => 'Актуализирано',
			'markUpdated' => 'Маркиране като актуализирано',
			'download' => 'Download',
			'additionalOptions' => 'Допълнителни опции',
			'disableVersionDetection' => 'Деактивиране на откриването на версията',
			'noVersionDetectionExplanation' => 'Тази опция трябва да се използва само за приложения, при които откриването на версията не работи правилно.',
			'downloadingX' => 'Изтегляне на {}',
			'downloadX' => 'Изтегляне на {}',
			'downloadedX' => 'Изтеглено {}',
			'editCategory' => 'Редактиране на категория',
			'releaseAsset' => 'Актив на изданието',
			'downloadNotifDescription' => 'Уведомява потребителя за напредъка при изтегляне на приложение',
			'noAPKFound' => 'Не е намерен APK',
			'noVersionDetection' => 'Няма откриване на версия',
			'categorize' => 'Категоризиране',
			'categories' => 'Категории',
			'category' => 'Категория',
			'noCategory' => 'Няма категория',
			'noCategories' => 'Няма категории',
			'categoryDeleteQuestion' => 'Изтриване на категории?',
			'categoryDeleteWarning' => 'Всички приложения в изтритите категории ще бъдат зададени като некатегоризирани.',
			'addCategory' => 'Добавяне на категория',
			'label' => 'Етикет',
			'language' => 'Език',
			'copiedToClipboard' => 'Копирано в клипборда',
			'storagePermissionDenied' => 'Разрешението за съхранение е отказано',
			'selectedCategorizeWarning' => 'Това ще замени всякакви съществуващи настройки за категория за избраните приложения.',
			'filterAPKsByRegEx' => 'Филтриране на APK файлове с регулярен израз',
			'removeFromUpdatium' => 'Премахване от Updatium',
			'uninstallFromDevice' => 'Деинсталиране от устройството',
			'onlyWorksWithNonVersionDetectApps' => 'Работи само за приложения с деактивирано откриване на версия',
			'releaseDateAsVersion' => 'Използване на датата на изданието като низ на версията',
			'releaseTitleAsVersion' => 'Използване на заглавието на изданието като низ на версията',
			'releaseDateAsVersionExplanation' => 'Тази опция трябва да се използва само за приложения, при които откриването на версията не работи правилно, но е налична дата на изданието.',
			'changes' => 'Промени',
			'releaseDate' => 'Дата на изданието',
			'importFromURLsInFile' => 'Импорт от URL адреси във файл (като OPML)',
			'versionDetectionExplanation' => 'Съгласуване на низа на версията с версията, открита от ОС',
			'versionDetection' => 'Откриване на версия',
			'standardVersionDetection' => 'Стандартно откриване на версия',
			'groupByCategory' => 'Групиране по категория',
			'listView' => 'Изглед на списък',
			'gridView' => 'Изглед на мрежа',
			'autoApkFilterByArch' => 'Опит за филтриране на APK файлове по CPU архитектура, ако е възможно',
			'autoLinkFilterByArch' => 'Опит за филтриране на връзки по CPU архитектура, ако е възможно',
			'overrideSource' => 'Замяна на източника',
			'dontShowAgain' => 'Не показвай това отново',
			'dontShowTrackOnlyWarnings' => 'Не показвай предупреждения за \'само за проследяване\'',
			'dontShowAPKOriginWarnings' => 'Не показвай предупреждения за произхода на APK',
			'moveNonInstalledAppsToBottom' => 'Преместване на неинсталираните приложения най- отдолу в изгледа на приложенията',
			'gitlabPATLabel' => 'Личен токен за достъп до GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Относно',
			'requiresCredentialsInSettings' => '{} изисква допълнителни идентификационни данни (в Настройки)',
			'checkOnStart' => 'Проверка за актуализации при стартиране',
			'safeMode' => 'Безопасен режим',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Добавянето на приложение е деактивирано в Безопасен режим',
			'tryInferAppIdFromCode' => 'Опит за извод на ID на приложението от изходния код',
			'removeOnExternalUninstall' => 'Автоматично премахване на външно деинсталирани приложения',
			'pickHighestVersionCode' => 'Автоматично избиране на APK с най- висок код на версия',
			'checkUpdateOnDetailPage' => 'Проверка за актуализации при отваряне на страница с детайли за приложението',
			'disablePageTransitions' => 'Деактивиране на анимациите за преход между страници',
			'reversePageTransitions' => 'Обръщане на анимациите за преход между страници',
			'minStarCount' => 'Минимален брой звезди',
			'addInfoBelow' => 'Добавете тази информация по- долу.',
			'addInfoInSettings' => 'Добавете тази информация в Настройки.',
			'githubSourceNote' => 'Лимитът на заявки на GitHub може да се избегне чрез използване на API ключ.',
			'sortByLastLinkSegment' => 'Сортиране само по последния сегмент на връзката',
			'filterReleaseNotesByRegEx' => 'Филтриране на бележките към изданията с регулярен израз',
			'customLinkFilterRegex' => 'Персонализиран филтър за APK връзки с регулярен израз (по подразбиране \'.apk$\')',
			'appsPossiblyUpdated' => 'Опит за актуализация на приложения',
			'appsPossiblyUpdatedNotifDescription' => 'Уведомява потребителя, че актуализациите на едно или повече приложения може да са били приложени във фонов режим',
			'xWasPossiblyUpdatedToY' => '{} може да е било актуализирано до {}.',
			'enableBackgroundUpdates' => 'Активиране на актуализации във фонов режим',
			'backgroundUpdateReqsExplanation' => 'Актуализациите във фонов режим може да не са възможни за всички приложения.',
			'backgroundUpdateLimitsExplanation' => 'Успехът на инсталация във фонов режим може да се определи само когато Updatium е отворен.',
			'verifyLatestTag' => 'Проверка на етикета \'latest\'',
			'intermediateLinkRegex' => 'Филтър за \'междинна\' връзка за посещение',
			'filterByLinkText' => 'Филтриране на връзки по текст на връзката',
			'matchLinksOutsideATags' => 'Съвпадение на връзки извън <a> тагове',
			'intermediateLinkNotFound' => 'Междинната връзка не е намерена',
			'intermediateLink' => 'Междинна връзка',
			'exemptFromBackgroundUpdates' => 'Освобождаване от актуализации във фонов режим (ако е активирано)',
			'bgUpdatesOnWiFiOnly' => 'Деактивиране на актуализации във фонов режим, когато не е на Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Деактивиране на актуализации във фонов режим, когато не се зарежда',
			'autoSelectHighestVersionCode' => 'Автоматично избиране на APK с най- висок versionCode',
			'versionExtractionRegEx' => 'Регулярен израз за извличане на низ на версията',
			'trimVersionString' => 'Изрязване на низа на версията с регулярен израз',
			'matchGroupToUseForX' => 'Група за съвпадение за използване за "{}"',
			'matchGroupToUse' => 'Група за съвпадение за използване за регулярен израз за извличане на низ на версията',
			'highlightTouchTargets' => 'Осветяване на по- малко очевидни цели за докосване',
			'pickExportDir' => 'Изберете директория за експорт',
			'autoExportOnChanges' => 'Автоматичен експорт при промени',
			'includeSettings' => 'Включване на настройки',
			'filterVersionsByRegEx' => 'Филтриране на версии с регулярен израз',
			'trySelectingSuggestedVersionCode' => 'Опит за избиране на предложен versionCode APK',
			'dontSortReleasesList' => 'Запазване на реда на изданията от API',
			'reverseSort' => 'Обръщане на сортирането',
			'takeFirstLink' => 'Вземане на първата връзка',
			'skipSort' => 'Пропускане на сортирането',
			'debugMenu' => 'Меню за отстраняване на грешки',
			'bgTaskStarted' => 'Фонова задача стартирана - проверете дневниците.',
			'runBgCheckNow' => 'Изпълнение на проверка за актуализация във фонов режим сега',
			'versionExtractWholePage' => 'Прилагане на регулярен израз за извличане на низ на версията към цялата страница',
			'installing' => 'Инсталиране',
			'skipUpdateNotifications' => 'Пропускане на известия за актуализации',
			'updatesAvailableNotifChannel' => 'Налични актуализации',
			'appsUpdatedNotifChannel' => 'Приложенията са актуализирани',
			'appsPossiblyUpdatedNotifChannel' => 'Опит за актуализация на приложения',
			'errorCheckingUpdatesNotifChannel' => 'Грешка при проверка за актуализации',
			'appsRemovedNotifChannel' => 'Приложенията са премахнати',
			'downloadingXNotifChannel' => 'Изтегляне на {}',
			'completeAppInstallationNotifChannel' => 'Завършване на инсталирането на приложението',
			'checkingForUpdatesNotifChannel' => 'Проверка за актуализации',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Проверка за актуализации само на инсталирани и приложения само за проследяване',
			'supportFixedAPKURL' => 'Поддръжка на фиксирани URL адреси за APK',
			'selectX' => 'Избиране на {}',
			'parallelDownloads' => 'Разрешаване на паралелни изтегляния',
			'useShizuku' => 'Използване на Shizuku или Sui за инсталиране',
			'shizukuBinderNotFound' => 'Услугата Shizuku не работи',
			'shizukuOld' => 'Стара версия на Shizuku (<11) - актуализирайте я',
			'shizukuOldAndroidWithADB' => 'Shizuku работи на Android < 8.1 с ADB - актуализирайте Android или използвайте Sui вместо това',
			'shizukuPretendToBeGooglePlay' => 'Задаване на Google Play като източник на инсталиране (ако се използва Shizuku)',
			'useSystemFont' => 'Използване на системен шрифт',
			'useVersionCodeAsOSVersion' => 'Използване на versionCode на приложението като версия, открита от ОС',
			'requestHeader' => 'Заглавка на заявката',
			'useLatestAssetDateAsReleaseDate' => 'Използване на последното качване на актив като дата на изданието',
			'defaultPseudoVersioningMethod' => 'Метод за псевдо-версиониране по подразбиране',
			'partialAPKHash' => 'Частичен хеш на APK',
			'APKLinkHash' => 'Хеш на връзката към APK',
			'directAPKLink' => 'Директна връзка към APK',
			'pseudoVersionInUse' => 'Използва се псевдо-версия',
			'installedVersion' => 'Инсталирана',
			'installed' => 'Инсталирано',
			'notInstalledApps' => 'Неинсталирани',
			'latest' => 'Последна',
			'invertRegEx' => 'Обръщане на регулярен израз',
			'note' => 'Бележка',
			'selfHostedNote' => 'Падащото меню "{}" може да се използва за достигане на само- хоствани/персонализирани инстанции на всеки източник.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK не може да бъде анализиран (несъвместим или частично изтегляне)',
			'beforeNewInstallsShareToAppVerifier' => 'Споделяне на нови приложения с AppVerifier (ако е налично)',
			'appVerifierInstructionToast' => 'Споделете с AppVerifier, след което се върнете тук, когато сте готови.',
			'wiki' => 'Помощ/wiki',
			'wikiHint' => 'Отваряне на wiki документацията на Updatium',
			'allowInsecure' => 'Разрешаване на несигурни HTTP заявки',
			'stayOneVersionBehind' => 'Оставане една версия зад последната',
			'useFirstApkOfVersion' => 'Автоматично избиране на първия от множество APK файлове',
			'refreshBeforeDownload' => 'Опресняване на детайлите за приложението преди изтегляне',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Име',
			'smartname' => 'Име (умно)',
			'smartPlusDate' => 'Умно + Дата',
			'sortMethod' => 'Метод за сортиране',
			'welcome' => 'Добре дошли',
			'batteryOptimizationNote' => 'Имайте предвид, че изтеглянията във фонов режим може да работят по- надеждно, ако превключите на "foreground service" в настройките на Updatium и/или деактивирате оптимизацията на батерията за Updatium в настройките на вашата ОС.',
			'fileDeletionError' => 'Неуспешно изтриване на файл (опитайте да го изтриете ръчно, след което опитайте отново): "{}"',
			'foregroundService' => 'Foreground service на Updatium',
			'foregroundServiceExplanation' => 'Използване на foreground service за проверка за актуализации (по- надеждно, консумира повече енергия)',
			'fgServiceNotice' => 'Това известие е необходимо за проверка за актуализации във фонов режим (може да бъде скрито в настройките на ОС)',
			'excludeSecrets' => 'Изключване на тайни',
			'GHReqPrefix' => 'Инстанция \'omeritzics/Updatium\' за заявки към GitHub',
			'includeZips' => 'Включване на ZIP файлове',
			'zippedApkFilterRegEx' => 'Филтриране на APK файлове вътре в ZIP',
			'multipleSigners' => 'Множество подписващи лица',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Премахване на приложение?', other: 'Премахване на приложения?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Твърде много заявки (ограничени по скорост) - опитайте отново след {count} минута', other: 'Твърде много заявки (ограничени по скорост) - опитайте отново след {count} минути', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Проверката за актуализация във фонов режим срещна {error}, ще се планира повторна проверка след {count} минута', other: 'Проверката за актуализация във фонов режим срещна {error}, ще се планира повторна проверка след {count} минути', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Проверката за актуализация във фонов режим намери {count} актуализация - ще уведоми потребителя, ако е необходимо', other: 'Проверката за актуализация във фонов режим намери {count} актуализации - ще уведоми потребителя, ако е необходимо', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{count} Приложение', other: '{count} Приложения', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{count} минута', other: '{count} минути', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{count} час', other: '{count} часа', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{count} ден', other: '{count} дни', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Изчистен {n} дневник (преди = {before}, след = {after})', other: 'Изчистени {n} дневника (преди = {before}, след = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{app} и още 1 приложение имат актуализации.', other: '{app} и още {count} приложения имат актуализации.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{app} и още 1 приложение беше актуализирано.', other: '{app} и още {count} приложения бяха актуализирани.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Неуспешно актуализиране на {app} и още 1 приложение.', other: 'Неуспешно актуализиране на {app} и още {count} приложения.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{app} и още 1 приложение може да е било актуализирано.', other: '{app} и още {count} приложения може да са били актуализирани.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: '{count} APK', other: '{count} APK файлове', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bg'))(n, one: 'Хеш на сертификат', other: 'Хешове на сертификати', ), 
			'securityDisclaimerTitle' => 'Сигурност и Правен Уведомление',
			'license' => 'Лиценз',
			'licenseText' => 'Това приложение се разпространява под GPL v3 лиценз.',
			'disclaimer' => 'Отказ от отговорност',
			'disclaimerText' => 'Това приложение не разпространява, хоства или проверява никакви външни приложения. Потребителят носи пълна отговорност за сигурността и законността на всяко софтуер, инсталиран чрез този инструмент.\n\nhttps://github.com/omeritzics/Updatium е единственият официален източник за изтегляне на Updatium - силно се препоръчва да не се изтегля от други места, тъй като неофициалните източници са несигурни.',
			'privacy' => 'Приватност',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Приемам и продължавам',
			'decline' => 'Отказ',
			'delete' => 'Изтриване',
			'deleteCategory' => 'Изтриване на категория',
			'githubStarPromptTitle' => 'Харесвате Updatium?',
			'githubStarPromptContent' => 'Updatium е доброволен проект с отворен код, разработен в свободното ми време. Ако искате да подкрепите проекта, моля, обмислете възможността да дадете звезда на GitHub, за да ни помогнете да достигнем повече потребители и сътрудници. Няма да ви се напомня за това отново. Благодаря ви предварително! :)',
			'githubStarPromptStar' => 'Звезда',
			'githubStarPromptDontShowAgain' => 'Не показвай отново',
			'sourceCode' => 'Изходен код',
			'developedBy' => 'Разработено от',
			'appDescription' => 'Персонализируем каталог за приложения за Android, който ви позволява да актуализирате приложенията си директно от техните APK източници.',
			'safeModeEnabled' => 'Безопасният режим е активиран',
			'safeModeDisabled' => 'Безопасният режим е деактивиран',
			'safeModeDisable' => 'Деактивиране на Безопасен режим',
			'safeModeDisableHint' => 'Натиснете няколко пъти върху номера на версията в Настройки, за да деактивирате Безопасен режим',
			'safeModeAdmin' => 'Администрация на Безопасен режим',
			'safeModeSetupDescription' => 'Задайте парола за активиране на Безопасен режим. След активиране, Безопасният режим предотвратява добавянето на нови приложения и може да бъде деактивиран само с паролата.',
			'safeModeToggleDescription' => 'Въведете вашата парола, за да превключите Безопасен режим включен или изключен.',
			'safeModeSetPassword' => 'Задаване на парола',
			'safeModeConfirmPassword' => 'Потвърждаване на парола',
			'safeModeEnterPassword' => 'Въведете парола',
			'safeModePasswordHint' => 'Минимум 8 символа',
			'safeModePasswordTooShort' => 'Паролата трябва да бъде поне 8 символа',
			'safeModePasswordMismatch' => 'Паролите не съвпадат',
			'safeModePasswordIncorrect' => 'Неправилна парола',
			'safeModePasswordError' => 'Грешка при задаване на парола. Моля, опитайте отново.',
			'safeModeEnable' => 'Активиране на Безопасен режим',
			'safeModeToggle' => 'Деактивиране на Безопасен режим',
			'safeModeTapsRemaining' => '{count} докосвания остават за деактивиране на Безопасен режим',
			'safeModeEnabledHint' => 'Безопасният режим е активиран. Натиснете много пъти върху номера на версията в Настройки, за да го деактивирате.',
			'preventUninstallation' => 'Предотвратяване на деинсталиране',
			'preventUninstallationDescription' => 'Предотвратява деинсталирането на Updatium без първо да деактивирате Безопасен режим',
			'deviceAdminRequired' => 'Разрешение за администратор на устройството се изисква за предотвратяване на деинсталиране',
			'turnOffSafeModeFirst' => 'Моля, първо изключете Безопасен режим',
			'gotIt' => 'Разбрах',
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
