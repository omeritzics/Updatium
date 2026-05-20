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
class TranslationsUg with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsUg({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ug,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ug>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsUg _root = this; // ignore: unused_field

	@override 
	TranslationsUg $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsUg(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'ئەپ URL ئادرېسى ئىناۋەتسىز: {}';
	@override String get noReleaseFound => 'مۇۋاپىق نەشرى تېپىلمىدى';
	@override String get noVersionFound => 'نەشرىنى بېكىتكىلى بولمىدى';
	@override String get urlMatchesNoSource => 'URL ئادرېسى مەلۇم مەنبەگە ماس كەلمىدى';
	@override String get cantInstallOlderVersion => 'ئەپنىڭ كونا نەشرىنى قاچىلىغىلى بولمايدۇ';
	@override String get appIdMismatch => 'چۈشۈرۈلگەن بوغچا ID سى مەۋجۇت ئەپ ID سىگە ماس كەلمىدى';
	@override String get functionNotImplemented => 'بۇ تۈردە بۇ ئىقتىدار تېخى يولغا قويۇلمىغان';
	@override String get placeholder => 'ئورۇن بەلگۈچى';
	@override String get someErrors => 'بىر قىسىم خاتالىقلار كۆرۈلدى';
	@override String get unexpectedError => 'توساتتىن خاتالىق كۆرۈلدى';
	@override String get ok => 'جەزملەش';
	@override String get and => 'ۋە';
	@override String get githubPATLabel => 'GitHub شەخسىي زىيارەت كىنىشكىسى';
	@override String get includePrereleases => 'سىناق نەشرلىرىنى ئۆز ئىچىگە ئالسۇن';
	@override String get fallbackToOlderReleases => 'كونا نەشرىنى زاپاس ئىشلەتسۇن';
	@override String get filterReleaseTitlesByRegEx => 'نەشر ئىسمىنى دائىملىق ئىپادە (RegEx) ئارقىلىق سۈزۈش';
	@override String get invalidRegEx => 'ئىناۋەتسىز دائىملىق ئىپادە';
	@override String get noDescription => 'چۈشەندۈرۈشى يوق';
	@override String get cancel => 'ۋاز كەچ';
	@override String get kContinue => 'داۋاملاشتۇر';
	@override String get requiredInBrackets => '(زۆرۈر)';
	@override String get dropdownNoOptsError => 'خاتالىق: تىزىملىكتە ئاز دېگەندە بىر تاللاش بولۇشى كېرەك';
	@override String get color => 'رەڭ';
	@override String get standard => 'ئۆلچەملىك';
	@override String get custom => 'ئىختىيارى';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You رەڭلىرىنى ئىشلىتىش';
	@override String get githubStarredRepos => 'GitHub يۇلتۇز قويۇلغان ئامبارلار';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'ئىشلەتكۈچى ئىسمى';
	@override String get wrongArgNum => 'پارامېتىر سانى خاتا';
	@override String get xIsTrackOnly => '{} پەقەت ئىز قوغلىنىدۇ';
	@override String get source => 'مەنبە';
	@override String get app => 'ئەپ';
	@override String get appsFromSourceAreTrackOnly => 'بۇ مەنبەدىكى ئەپلەر پەقەت ئىز قوغلىنىدۇ.';
	@override String get youPickedTrackOnly => 'سىز پەقەت ئىز قوغلاش تاللانمىسىنى تاللىدىڭىز.';
	@override String get trackOnlyAppDescription => 'ئەپنىڭ يېڭىلىنىشى ئىز قوغلىنىدۇ، ئەمما Updatium ئۇنى چۈشۈرەلمەيدۇ ياكى قاچىلىيالمايدۇ.';
	@override String get cancelled => 'بىكار قىلىندى';
	@override String get appAlreadyAdded => 'ئەپ ئاللىقاچان قوشۇلغان';
	@override String get alreadyUpToDateQuestion => 'ئەپ ئاللىقاچان ئەڭ يېڭى نەشرىدە؟';
	@override String get addApp => 'ئەپ قوشۇش';
	@override String get appSourceURL => 'ئەپ مەنبە URL ئادرېسى';
	@override String get error => 'خاتالىق';
	@override String get add => 'قوشۇش';
	@override String get advanced => 'ئىلغار';
	@override String get searchSomeSourcesLabel => 'ئىزدەش (بەزى مەنبەلەردىلا)';
	@override String get search => 'ئىزدەش';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{} ئۈچۈن قوشۇمچە تاللانمىلار';
	@override String get supportedSources => 'قوللايدىغان مەنبەلەر';
	@override String get trackOnlyInBrackets => '(پەقەت ئىز قوغلاش)';
	@override String get searchableInBrackets => '(ئىزدەشكە بولىدۇ)';
	@override String get appsString => 'ئەپلەر';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'خۇش كەپسىز!';
	@override String get noAppsSubtext => 'تۆۋەندىكى «ئەپ قوشۇش» نى بېسىش ئارقىلىق تۇنجى ئەپنى قوشالايسىز.';
	@override String get noAppsForFilter => 'سۈزگۈچكە ماس كېلىدىغان ئەپ يوق';
	@override String get byX => 'تۈزگۈچى: {}';
	@override String get percentProgress => 'سۈرئىتى: {}%';
	@override String get pleaseWait => 'سەۋر قىلىڭ';
	@override String get updateAvailable => 'يېڭى نەشرى مەۋجۇت';
	@override String get notInstalled => 'قاچىلانمىغان';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'ساختا نەشرى';
	@override String get selectAll => 'ھەممىنى تاللاش';
	@override String get deselectX => '{} نى تاللىماسلىق';
	@override String get xWillBeRemovedButRemainInstalled => '{} ئەپ Updatium دىن چىقىرىۋېتىلىدۇ، ئەمما ئۈسكۈنىدە قاچىلانغان ھالەتتە قالىدۇ.';
	@override String get removeSelectedAppsQuestion => 'تاللانغان ئەپلەرنى چىقىرىۋېتەمسىز؟';
	@override String get removeSelectedApps => 'تاللانغان ئەپلەرنى چىقىرىۋېتىش';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} نى يېڭىلاش';
	@override String get installX => '{} نى قاچىلاش';
	@override String get markXTrackOnlyAsUpdated => '{} نى\n(پەقەت ئىز قوغلىنىدىغان)\nيېڭىلاندى دەپ بەلگە قويۇش';
	@override String get changeX => '{} نى ئۆزگەرتىش';
	@override String get installUpdateApps => 'ئەپلەرنى قاچىلاش/يېڭىلاش';
	@override String get installUpdateSelectedApps => 'تاللانغان ئەپلەرنى قاچىلاش/يېڭىلاش';
	@override String get markXSelectedAppsAsUpdated => 'تاللانغان {} ئەپنى يېڭىلاندى دەپ بەلگە قويامسىز؟';
	@override String get no => 'ياق';
	@override String get yes => 'ھەئە';
	@override String get markSelectedAppsUpdated => 'تاللانغان ئەپلەرنى يېڭىلاندى دەپ بەلگە قويۇش';
	@override String get pinToTop => 'چوققىغا چاپلاش';
	@override String get unpinFromTop => 'چوققىدىن ئېلىۋېتىش';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'تاللانغان ئەپلەرنىڭ قاچىلىنىش ھالىتىنى ئەسلىگە كەلتۈرەمسىز؟';
	@override String get installStatusOfXWillBeResetExplanation => 'تاللانغان ئەپلەرنىڭ قاچىلىنىش ھالىتى ئەسلىگە كەلتۈرۈلىدۇ.\n\nبۇ ئۇسۇل ئەپ نەشرى خاتا كۆرۈنگەندە پايدىلىق.';
	@override String get customLinkMessage => 'بۇ ئۇلانمىلار Updatium قاچىلانغان ئۈسكۈنىلەردە ئىشلەيدۇ';
	@override String get shareAppConfigLinks => 'ئەپ سەپلىمىسىنى HTML ئۇلانمىسى قىلىپ ھەمبەھىرلەش';
	@override String get resetInstallStatus => 'قاچىلىنىش ھالىتىنى ئەسلىگە كەلتۈرۈش';
	@override String get more => 'تېخىمۇ كۆپ';
	@override String get removeOutdatedFilter => 'كونىرىغان ئەپ سۈزگۈچىنى ئۆچۈرۈش';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'پەقەت يېڭىلانمىغان ئەپلەرنى كۆرسىتىش';
	@override String get filter => 'سۈزگۈچ';
	@override String get filterApps => 'ئەپلەرنى سۈزۈش';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'ئەپ ئىسمى';
	@override String get author => 'تۈزگۈچى';
	@override String get upToDateApps => 'ئەڭ يېڭى ئەپلەر';
	@override String get nonInstalledApps => 'قاچىلانمىغان ئەپلەر';
	@override String get importExport => 'ئەكىرىش/ئەۋەتىش';
	@override String get settings => 'تەڭشەكلەر';
	@override String get exportedTo => 'ئەۋەتىلگەن ئورۇن: {}';
	@override String get updatiumExport => 'Updatium ئېكسپورتى';
	@override String get failedToExport => 'ئەۋەتىش مەغلۇپ بولدى';
	@override String get exportAlreadyInProgress => 'ئەۋەتىش ئېلىپ بېرىلىۋاتىدۇ';
	@override String get exportDirNotAccessible => 'ئەۋەتىش مۇندەرىجىسىنى زىيارەت قىلغىلى بولمىدى';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'ئەۋەتىش ھۆججىتىنى قۇرغىلى بولمىدى';
	@override String get invalidInput => 'كىرگۈزۈش ئىناۋەتسىز';
	@override String get importedX => 'ئەكىرىلدى: {}';
	@override String get updatiumImport => 'Updatium ئىمپورتى';
	@override String get importFromURLList => 'URL تىزىملىكىدىن ئەكىرىش';
	@override String get searchQuery => 'ئىزدەش مەزمۇنى';
	@override String get appURLList => 'ئەپ URL تىزىملىكى';
	@override String get line => 'قۇر';
	@override String get searchX => '{} نى ئىزدەش';
	@override String get noResults => 'نەتىجە تېپىلمىدى';
	@override String get importX => '{} نى ئەكىرىش';
	@override String get importedAppsIdDisclaimer => 'ئەكىرىلگەن ئەپلەر «قاچىلانمىغان» دەپ خاتا كۆرۈنۈشى مۇمكىن.\nئۇنى تۈزىتىش ئۈچۈن Updatium ئارقىلىق قايتا قاچىلاڭ.';
	@override String get importErrors => 'ئەكىرىش خاتالىقلىرى';
	@override String get importedXOfYApps => '{} / {} ئەپ ئەكىرىلدى.';
	@override String get followingURLsHadErrors => 'تۆۋەندىكى URL ئادرېسلىرىدا خاتالىق كۆرۈلدى:';
	@override String get selectURL => 'URL تاللاش';
	@override String get selectURLs => 'URL لارنى تاللاش';
	@override String get pick => 'تاللاش';
	@override String get theme => 'ئۇسلۇب';
	@override String get dark => 'قاراڭغۇ';
	@override String get light => 'يورۇق';
	@override String get followSystem => 'سىستېمىغا ئەگىشىش';
	@override String get followSystemThemeExplanation => 'سىستېما ئۇسلۇبىغا ئەگىشىش پەقەت ئۈچىنچى تەرەپ قوللىنىشچان پروگراممىلىرى ئارقىلىقلا مۇمكىن';
	@override String get useBlackTheme => 'ساپ قارا ئۇسلۇبنى ئىشلىتىش';
	@override String get appSortBy => 'تەرتىپلەش ئۆلچىمى';
	@override String get authorName => 'تۈزگۈچى/ئىسمى';
	@override String get nameAuthor => 'ئىسمى/تۈزگۈچى';
	@override String get asAdded => 'قوشۇلغان ۋاقتى';
	@override String get appSortOrder => 'تەرتىپى';
	@override String get ascending => 'ئۆرلەش تەرتىپى';
	@override String get descending => 'تۆۋەنلەش تەرتىپى';
	@override String get bgUpdateCheckInterval => 'ئارقا كۆرۈنۈشتە يېڭىلاش تەكشۈرۈش ئارىلىقى';
	@override String get neverManualOnly => 'ھەرگىز - پەقەت قولدا';
	@override String get appearance => 'كۆرۈنۈش';
	@override String get pinUpdates => 'يېڭىلانمىلارنى چوققىغا چاپلاش';
	@override String get updates => 'يېڭىلانمىلار';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'مەنبەگە خاس';
	@override String get appSource => 'ئەپ مەنبەسى';
	@override String get appSourceHint => 'ئەپ مەنبە ئامبىرىنى ئېچىش';
	@override String get noLogs => 'خاتىرىلەر يوق';
	@override String get appLogs => 'ئەپ خاتىرىلىرى';
	@override String get appLogsHint => 'ئەپ خاتىرىلىرىنى كۆرۈش';
	@override String get close => 'ياپ';
	@override String get share => 'ھەمبەھىرلەش';
	@override String get appNotFound => 'ئەپ تېپىلمىدى';
	@override String get networkError => 'تور ئۇلىنىشى مەغلۇپ بولدى';
	@override String get invalidUrlFormat => 'URL فورماتى ئىناۋەتسىز';
	@override String get accessDenied => 'زىيارەت رەت قىلىندى';
	@override String get importFailed => 'ئەكىرىش مەغلۇپ بولدى';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'بىر APK تاللاڭ';
	@override String get appHasMoreThanOnePackage => '{} نىڭ بىر قانچە بوغچىسى بار:';
	@override String get deviceSupportsXArch => 'ئۈسكۈنىڭىز {} قۇرۇلمىسىنى قوللايدۇ.';
	@override String get deviceSupportsFollowingArchs => 'ئۈسكۈنىڭىز تۆۋەندىكى قۇرۇلمىلارنى قوللايدۇ:';
	@override String get warning => 'ئاگاھلاندۇرۇش';
	@override String get sourceIsXButPackageFromYPrompt => 'ئەپ مەنبەسى \'{}\' لىكىن بوغچا \'{}\' دىن كەلگەن. داۋاملاشتۇرامسىز؟';
	@override String get updatesAvailable => 'يېڭىلانمىلار مەۋجۇت';
	@override String get updatesAvailableNotifDescription => 'ئىشلەتكۈچىگە ئىز قوغلىنىۋاتقان ئەپلەرنىڭ يېڭىلانغانلىقىنى ئۇقتۇرىدۇ';
	@override String get noNewUpdates => 'يېڭى يېڭىلانما يوق.';
	@override String get xHasAnUpdate => '{} نىڭ يېڭى نەشرى بار.';
	@override String get appsUpdated => 'ئەپلەر يېڭىلاندى';
	@override String get appsNotUpdated => 'ئەپلەرنى يېڭىلاش مەغلۇپ بولدى';
	@override String get appsUpdatedNotifDescription => 'ئارقا كۆرۈنۈشتە يېڭىلانغان ئەپلەرنى ئۇقتۇرىدۇ';
	@override String get xWasUpdatedToY => '{} ئەپ {} نەشرىگە يېڭىلاندى.';
	@override String get xWasNotUpdatedToY => '{} نى {} نەشرىگە يېڭىلاش مەغلۇپ بولدى.';
	@override String get errorCheckingUpdates => 'يېڭىلاش تەكشۈرۈشتە خاتالىق كۆرۈلدى';
	@override String get errorCheckingUpdatesNotifDescription => 'ئارقا كۆرۈنۈشتە يېڭىلاش تەكشۈرۈش مەغلۇپ بولغاندا كۆرۈنىدۇ';
	@override String get appsRemoved => 'ئەپلەر چىقىرىۋېتىلدى';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'خاتالىق تۈپەيلى چىقىرىۋېتىلگەن ئەپلەرنى ئۇقتۇرىدۇ';
	@override String get xWasRemovedDueToErrorY => '{} تۆۋەندىكى خاتالىق سەۋەبىدىن چىقىرىۋېتىلدى: {}';
	@override String get completeAppInstallation => 'ئەپ قاچىلاشنى تاماملاڭ';
	@override String get updatiumMustBeOpenToInstallApps => 'ئەپ قاچىلاش ئۈچۈن Updatium چوقۇم ئوچۇق بولۇشى كېرەك';
	@override String get completeAppInstallationNotifDescription => 'قاچىلاشنى تاماملاش ئۈچۈن ئىشلەتكۈچىنى Updatium غا قايتىشقا ئەسكەرتىدۇ';
	@override String get checkingForUpdates => 'يېڭىلانما تەكشۈرۈۋاتىدۇ';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'يېڭىلانما تەكشۈرۈۋاتقاندا كۆرۈنىدىغان ۋاقىتلىق ئۇقتۇرۇش';
	@override String get pleaseAllowInstallPerm => 'Updatium نىڭ ئەپ قاچىلىشىغا رۇخسەت قىلىڭ';
	@override String get trackOnly => 'پەقەت ئىز قوغلاش';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'خاتالىق: {}';
	@override String get versionCorrectionDisabled => 'نەشرىنى تۈزىتىش چەكلەنگەن';
	@override String get unknown => 'نامەلۇم';
	@override String get none => 'يوق';
	@override String get all => 'ھەممىسى';
	@override String get never => 'ھەرگىز';
	@override String get latestVersion => 'ئەڭ يېڭى';
	@override String get installedVersionX => 'قاچىلانغىنى: {}';
	@override String get lastUpdateCheckX => 'ئاخىرقى تەكشۈرۈش: {}';
	@override String get remove => 'ئۆچۈرۈش';
	@override String get quickLinks => 'تېز ئۇلانمىلار';
	@override String get yesMarkUpdated => 'ھەئە، يېڭىلاندى دەپ بەلگە قويۇش';
	@override String get fdroid => 'F-Droid رەسمىي';
	@override String get appIdOrName => 'ئەپ ID سى ياكى ئىسمى';
	@override String get appId => 'ئەپ ID سى';
	@override String get appWithIdOrNameNotFound => 'بۇ ID ياكى ئىسىمدىكى ئەپ تېپىلمىدى';
	@override String get reposHaveMultipleApps => 'ئامبارلاردا بىر قانچە ئەپ بولۇشى مۇمكىن';
	@override String get fdroidThirdPartyRepo => 'F-Droid ئۈچۈنچى تەرەپ ئامبىرى';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'قاچىلاش';
	@override String get markInstalled => 'قاچىلاندى دەپ بەلگە قويۇش';
	@override String get update => 'يېڭىلاش';
	@override String get updated => 'يېڭىلاندى';
	@override String get markUpdated => 'يېڭىلاندى دەپ بەلگە قويۇش';
	@override String get download => 'Download';
	@override String get additionalOptions => 'قوشۇمچە تاللانمىلار';
	@override String get disableVersionDetection => 'نەشرىنى بايقاشنى چەكلەش';
	@override String get noVersionDetectionExplanation => 'بۇ تاللانما پەقەت نەشرىنى بايقاش نورمال ئىشلىمىگەن ئەپلەر ئۈچۈنلا ئىشلىتىلىشى كېرەك.';
	@override String get downloadingX => 'چۈشۈرۈۋاتىدۇ: {}';
	@override String get downloadX => 'چۈشۈرۈش: {}';
	@override String get downloadedX => 'چۈشۈرۈلدى: {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'نەشرى مۈلكى';
	@override String get downloadNotifDescription => 'ئەپ چۈشۈرۈش سۈرئىتىنى ئىشلەتكۈچىگە ئۇقتۇرىدۇ';
	@override String get noAPKFound => 'APK تېپىلمىدى';
	@override String get noVersionDetection => 'نەشرى بايقالمىدى';
	@override String get categorize => 'تۈرگە ئايرىش';
	@override String get categories => 'تۈرلەر';
	@override String get category => 'تۈر';
	@override String get noCategory => 'تۈرى يوق';
	@override String get noCategories => 'تۈرلەر يوق';
	@override String get categoryDeleteQuestion => 'تۈرلەرنى ئۆچۈرەمسىز؟';
	@override String get categoryDeleteWarning => 'ئۆچۈرۈلگەن تۈرلەردىكى بارلىق ئەپلەر تۈرگە ئايرىلمىغان ھالەتكە تەڭشىلىدۇ.';
	@override String get addCategory => 'تۈر قوشۇش';
	@override String get label => 'بەلگە';
	@override String get language => 'تىل';
	@override String get copiedToClipboard => 'چاپلاش تاختىسىغا كۆچۈرۈلدى';
	@override String get storagePermissionDenied => 'ساقلاش بوشلۇقى رۇخسىتى رەت قىلىندى';
	@override String get selectedCategorizeWarning => 'بۇ تاللانغان ئەپلەرنىڭ بارلىق مەۋجۇت تۈر تەڭشەكلىرىنى ئالماشتۇرىدۇ.';
	@override String get filterAPKsByRegEx => 'APK لارنى دائىملىق ئىپادە ئارقىلىق سۈزۈش';
	@override String get removeFromUpdatium => 'Updatium دىن چىقىرىۋېتىش';
	@override String get uninstallFromDevice => 'ئۈسكۈنىدىن ئۆچۈرۈۋېتىش';
	@override String get onlyWorksWithNonVersionDetectApps => 'پەقەت نەشرىنى بايقاش چەكلەنگەن ئەپلەر ئۈچۈنلا ئىشلەيدۇ.';
	@override String get releaseDateAsVersion => 'ئېلان قىلىنغان ۋاقىتنى نەشرى قىلىپ ئىشلىتىش';
	@override String get releaseTitleAsVersion => 'ئېلان قىلىنغان ئىسىمنى نەشرى قىلىپ ئىشلىتىش';
	@override String get releaseDateAsVersionExplanation => 'نەشرىنى بايقاش خاتا بولغاندا، ئېلان قىلىنغان ۋاقىت بار بولسا مۇشۇنى ئىشلىتىڭ.';
	@override String get changes => 'ئۆزگىرىشلەر';
	@override String get releaseDate => 'ئېلان قىلىنغان ۋاقتى';
	@override String get importFromURLsInFile => 'ھۆججەتتىكى URL لارنى ئەكىرىش (مەسىلەن OPML)';
	@override String get versionDetectionExplanation => 'نەشرىنى سىستېما تەرىپىدىن بايقالغان نەشرىگە ماسلاشتۇرۇش';
	@override String get versionDetection => 'نەشرىنى بايقاش';
	@override String get standardVersionDetection => 'ئۆلچەملىك نەشرى بايقاش';
	@override String get groupByCategory => 'تۈر بويىچە گۇرۇپپىلاش';
	@override String get listView => 'تىزىملىك كۆرۈنۈشى';
	@override String get gridView => 'سېتکا كۆرۈنۈشى';
	@override String get autoApkFilterByArch => 'مۇمكىن بولسا APK لارنى CPU قۇرۇلمىسى بويىچە سۈزۈش';
	@override String get autoLinkFilterByArch => 'مۇمكىن بولسا ئۇلانمىلارنى CPU قۇرۇلمىسى بويىچە سۈزۈش';
	@override String get overrideSource => 'مەنبەنى قاپلاش';
	@override String get dontShowAgain => 'بۇنى قايتا كۆرسەتمە';
	@override String get dontShowTrackOnlyWarnings => '«پەقەت ئىز قوغلاش» ئاگاھلاندۇرۇشلىرىنى كۆرسەتمە';
	@override String get dontShowAPKOriginWarnings => 'APK كېلىش مەنبە ئاگاھلاندۇرۇشلىرىنى كۆرسەتمە';
	@override String get moveNonInstalledAppsToBottom => 'قاچىلانمىغان ئەپلەرنى تىزىملىكنىڭ ئاستىغا يۆتكەش';
	@override String get gitlabPATLabel => 'GitLab شەخسىي زىيارەت كىنىشكىسى';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'ھەققىدە';
	@override String get requiresCredentialsInSettings => '{} قوشۇمچە كىنىشكە تەلەپ قىلىدۇ (تەڭشەكتە)';
	@override String get checkOnStart => 'قوزغالغاندا يېڭىلانما تەكشۈرۈش';
	@override String get safeMode => 'بىخەتەر ھالەت';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'بىخەتەر ھالەتتە ئەپ قوشۇش چەكلەنگەن';
	@override String get tryInferAppIdFromCode => 'مەنبە كودىدىن ئەپ ID سىنى پەرەز قىلىش';
	@override String get removeOnExternalUninstall => 'ئەپ سىستېمىدىن ئۆچۈرۈلگەندە ئاپتوماتىك چىقىرىۋېتىش';
	@override String get pickHighestVersionCode => 'نەشرى ئەڭ يۇقىرى APK نى ئاپتوماتىك تاللاش';
	@override String get checkUpdateOnDetailPage => 'تەپسىلات بېتىنى ئاچقاندا يېڭىلانما تەكشۈرۈش';
	@override String get disablePageTransitions => 'بەت ئالمىشىش كارتونىنى چەكلەش';
	@override String get reversePageTransitions => 'بەت ئالمىشىش كارتونىنى ئەكسىچە قىلىش';
	@override String get minStarCount => 'ئەڭ تۆۋەن يۇلتۇز سانى';
	@override String get addInfoBelow => 'بۇ ئۇچۇرنى تۆۋەنگە قوشۇڭ.';
	@override String get addInfoInSettings => 'بۇ ئۇچۇرنى تەڭشەككە قوشۇڭ.';
	@override String get githubSourceNote => 'API ئاچقۇچى ئىشلىتىش ئارقىلىق GitHub سۈرئەت چەكلىمىسىدىن ساقلانغىلى بولىدۇ.';
	@override String get sortByLastLinkSegment => 'ئۇلانمىنىڭ ئاخىرقى قىسمى بويىچە تەرتىپلەش';
	@override String get filterReleaseNotesByRegEx => 'نەشر ئىزاھاتىنى دائىملىق ئىپادە ئارقىلىق سۈزۈش';
	@override String get customLinkFilterRegex => 'ئىختىيارى APK ئۇلانما سۈزگۈچى (سۈكۈتتىكى \'.apk$\')';
	@override String get appsPossiblyUpdated => 'ئەپنى يېڭىلاش سىناپ كۆرۈلدى';
	@override String get appsPossiblyUpdatedNotifDescription => 'ئارقا كۆرۈنۈشتە بىر قىسىم ئەپلەرنىڭ يېڭىلانغان بولۇشى مۇمكىنلىكىنى ئۇقتۇرىدۇ';
	@override String get xWasPossiblyUpdatedToY => '{} ئەپ {} نەشرىگە يېڭىلانغان بولۇشى مۇمكىن.';
	@override String get enableBackgroundUpdates => 'ئارقا كۆرۈنۈش يېڭىلاشنى قوزغىتىش';
	@override String get backgroundUpdateReqsExplanation => 'ئارقا كۆرۈنۈش يېڭىلاش بارلىق ئەپلەردە ئىشلىمەسلىكى مۇمكىن.';
	@override String get backgroundUpdateLimitsExplanation => 'ئارقا كۆرۈنۈشتە قاچىلانغانلىقىنى پەقەت Updatium نى ئاچقاندىلا بىلگىلى بولىدۇ.';
	@override String get verifyLatestTag => '«ئەڭ يېڭى» بەلگىسىنى دەلىللەش';
	@override String get intermediateLinkRegex => 'ئارىلىق ئۇلانمىسىنى سۈزۈش';
	@override String get filterByLinkText => 'ئۇلانما تېكىستى بويىچە سۈزۈش';
	@override String get matchLinksOutsideATags => '<a> بەلگىسىنىڭ سىرتىدىكى ئۇلانمىلارنى تاللاش';
	@override String get intermediateLinkNotFound => 'ئارىلىق ئۇلانمىسى تېپىلمىدى';
	@override String get intermediateLink => 'ئارىلىق ئۇلانمىسى';
	@override String get exemptFromBackgroundUpdates => 'ئارقا كۆرۈنۈش يېڭىلاشتىن مۇستەسنا قىلىش';
	@override String get bgUpdatesOnWiFiOnly => 'Wi-Fi بولمىغاندا ئارقا كۆرۈنۈش يېڭىلاشنى چەكلەش';
	@override String get bgUpdatesWhileChargingOnly => 'توك قاچىلىمىغاندا ئارقا كۆرۈنۈش يېڭىلاشنى چەكلەش';
	@override String get autoSelectHighestVersionCode => 'نەشرى ئەڭ يۇقىرى APK نى ئاپتوماتىك تاللاش';
	@override String get versionExtractionRegEx => 'نەشرىنى ئاجرىتىپ ئېلىش دائىملىق ئىپادىسى';
	@override String get trimVersionString => 'دائىملىق ئىپادە ئارقىلىق نەشرىنى قىسقارتىش';
	@override String get matchGroupToUseForX => '"{}" ئۈچۈن ماس كېلىدىغان گۇرۇپپا';
	@override String get matchGroupToUse => 'نەشرىنى ئاجرىتىپ ئېلىش ئۈچۈن ئىشلىتىلىدىغان گۇرۇپپا';
	@override String get highlightTouchTargets => 'ئېنىق بولمىغان چەكمە نىشانلىرىنى گەۋدىلەندۈرۈش';
	@override String get pickExportDir => 'ئەۋەتىش مۇندەرىجىسىنى تاللاش';
	@override String get autoExportOnChanges => 'ئۆزگىرىش بولغاندا ئاپتوماتىك ئەۋەتىش';
	@override String get includeSettings => 'تەڭشەكلەرنى ئۆز ئىچىگە ئالسۇن';
	@override String get filterVersionsByRegEx => 'نەشرلەرنى دائىملىق ئىپادە ئارقىلىق سۈزۈش';
	@override String get trySelectingSuggestedVersionCode => 'تەۋسىيە قىلىنغان APK نەشرىنى تاللاشنى سىناپ كۆرۈش';
	@override String get dontSortReleasesList => 'API دىن كەلگەن ئەسلى تەرتىپنى ساقلاش';
	@override String get reverseSort => 'تەرتىپنى ئەكسىچە قىلىش';
	@override String get takeFirstLink => 'بىرىنچى ئۇلانمىنى ئېلىش';
	@override String get skipSort => 'تەرتىپلەشنى ئۆتكۈزۈۋېتىش';
	@override String get debugMenu => 'سازلاش (Debug) تىزىملىكى';
	@override String get bgTaskStarted => 'ئارقا كۆرۈنۈش ۋەزىپىسى باشلاندى - خاتىرىلەرنى تەكشۈرۈڭ.';
	@override String get runBgCheckNow => 'ئارقا كۆرۈنۈش يېڭىلاشنى ھازىر تەكشۈرۈش';
	@override String get versionExtractWholePage => 'نەشرىنى ئاجرىتىش دائىملىق ئىپادىسىنى پۈتۈن بەتكە ئىشلىتىش';
	@override String get installing => 'قاچىلاۋاتىدۇ';
	@override String get skipUpdateNotifications => 'يېڭىلاش ئۇقتۇرۇشلىرىنى ئۆتكۈزۈۋېتىش';
	@override String get updatesAvailableNotifChannel => 'يېڭىلانمىلار مەۋجۇت';
	@override String get appsUpdatedNotifChannel => 'ئەپلەر يېڭىلاندى';
	@override String get appsPossiblyUpdatedNotifChannel => 'ئەپ يېڭىلاش سىناپ كۆرۈلدى';
	@override String get errorCheckingUpdatesNotifChannel => 'يېڭىلاش تەكشۈرۈش خاتالىقى';
	@override String get appsRemovedNotifChannel => 'ئەپلەر چىقىرىۋېتىلدى';
	@override String get downloadingXNotifChannel => 'چۈشۈرۈۋاتىدۇ: {}';
	@override String get completeAppInstallationNotifChannel => 'ئەپ قاچىلاشنى تاماملاش';
	@override String get checkingForUpdatesNotifChannel => 'يېڭىلانما تەكشۈرۈۋاتىدۇ';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'پەقەت قاچىلانغان ۋە ئىز قوغلىنىدىغان ئەپلەرنىلا تەكشۈرۈش';
	@override String get supportFixedAPKURL => 'مۇقىم APK URL ئادرېسلىرىنى قوللاش';
	@override String get selectX => '{} نى تاللاش';
	@override String get parallelDownloads => 'بىرلا ۋاقىتتا چۈشۈرۈشكە رۇخسەت قىلىش';
	@override String get useShizuku => 'قاچىلاش ئۈچۈن Shizuku ياكى Sui ئىشلىتىش';
	@override String get shizukuBinderNotFound => 'Shizuku مۇلازىمىتى ئىشلىمەيۋاتىدۇ';
	@override String get shizukuOld => 'Shizuku نەشرى كونا (<11) - يېڭىلاڭ';
	@override String get shizukuOldAndroidWithADB => 'Android نەشرى كونا، Shizuku ئىشلەتكىلى بولمايدۇ';
	@override String get shizukuPretendToBeGooglePlay => 'Google Play نى قاچىلاش مەنبەسى قىلىپ كۆرسىتىش';
	@override String get useSystemFont => 'سىستېما خەت نۇسخىسىنى ئىشلىتىش';
	@override String get useVersionCodeAsOSVersion => 'ئەپنىڭ versionCode نى سىستېما بايقالغان نەشرى قىلىپ ئىشلىتىش';
	@override String get requestHeader => 'تەلەپ بېشى (Request header)';
	@override String get useLatestAssetDateAsReleaseDate => 'ئەڭ ئاخىرقى مۈلۈك يۈكلەنگەن ۋاقىتنى ئېلان قىلىنغان ۋاقىت قىلىش';
	@override String get defaultPseudoVersioningMethod => 'سۈكۈتتىكى ساختا نەشر قىلىش ئۇسۇلى';
	@override String get partialAPKHash => 'قىسمەن APK خاش قىممىتى';
	@override String get APKLinkHash => 'APK ئۇلانما خاش قىممىتى';
	@override String get directAPKLink => 'بىۋاسىتە APK ئۇلانمىسى';
	@override String get pseudoVersionInUse => 'ساختا نەشر ئىشلىتىلىۋاتىدۇ';
	@override String get installedVersion => 'قاچىلاندى';
	@override String get installed => 'قاچىلاندى';
	@override String get notInstalledApps => 'قاچىلانمىغان';
	@override String get latest => 'ئەڭ يېڭى';
	@override String get invertRegEx => 'دائىملىق ئىپادىنى ئەكسىچە قىلىش';
	@override String get note => 'ئەسكەرتىش';
	@override String get selfHostedNote => '"{}" تىزىملىكى ئارقىلىق شەخسىي مۇلازىمېتىردىكى مەنبەلەرنى زىيارەت قىلغىلى بولىدۇ.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK نى ئانالىز قىلغىلى بولمىدى (ماس كەلمەيدۇ ياكى تولۇق چۈشمىگەن)';
	@override String get beforeNewInstallsShareToAppVerifier => 'يېڭى ئەپلەرنى قاچىلاشتىن بۇرۇن AppVerifier غا يوللاش';
	@override String get appVerifierInstructionToast => 'AppVerifier غا يوللاڭ، تەييار بولغاندا بۇ يەرگە قايتىڭ.';
	@override String get wiki => 'ياردەم/ۋىكى';
	@override String get wikiHint => 'Updatium ۋىكى قوللانمىسىنى ئېچىش';
	@override String get allowInsecure => 'بىخەتەر بولمىغان HTTP تەلەپلىرىگە رۇخسەت قىلىش';
	@override String get stayOneVersionBehind => 'ئەڭ يېڭى نەشرىدىن بىر نەشرى كەينىدە تۇرۇش';
	@override String get useFirstApkOfVersion => 'بىر نەشرىدە كۆپ APK بولسا بىرىنچىسىنى تاللاش';
	@override String get refreshBeforeDownload => 'چۈشۈرۈشتىن بۇرۇن ئەپ تەپسىلاتىنى يېڭىلاش';
	@override String get tencentAppStore => 'Tencent ئەپ بازىرى';
	@override String get coolApk => 'CoolApk (كۇئەن)';
	@override String get vivoAppStore => 'vivo ئەپ بازىرى (جۇڭگو)';
	@override String get name => 'ئىسمى';
	@override String get smartname => 'ئىسمى (ئەقلىي)';
	@override String get smartPlusDate => 'ئەقلىي + ۋاقىت';
	@override String get sortMethod => 'تەرتىپلەش ئۇسۇلى';
	@override String get welcome => 'خۇش كەپسىز';
	@override String get batteryOptimizationNote => 'ئارقا كۆرۈنۈشتە چۈشۈرۈشنىڭ تۇراقلىق بولۇشى ئۈچۈن، باتارېيەنى ئەلالاشتۇرۇشنى چەكلەپ قويۇڭ.';
	@override String get fileDeletionError => 'ھۆججەتنى ئۆچۈرۈش مەغلۇپ بولدى: "{}"';
	@override String get foregroundService => 'Updatium ئالدى كۆرۈنۈش مۇلازىمىتى';
	@override String get foregroundServiceExplanation => 'تەكشۈرۈش ئۈچۈن ئالدى كۆرۈنۈش مۇلازىمىتىنى ئىشلىتىش (تېخىمۇ تۇراقلىق، ئەمما توك سەرپىياتى كۆپ)';
	@override String get fgServiceNotice => 'بۇ ئۇقتۇرۇش ئارقا كۆرۈنۈش تەكشۈرۈشى ئۈچۈن زۆرۈر';
	@override String get excludeSecrets => 'مەخپىي ئۇچۇرلارنى چىقىرىۋېتىش';
	@override String get GHReqPrefix => 'GitHub تەلەپلىرى ئۈچۈن \'omeritzics/Updatium\' ئىشلىتىش';
	@override String get includeZips => 'ZIP ھۆججەتلىرىنى ئۆز ئىچىگە ئالسۇن';
	@override String get zippedApkFilterRegEx => 'ZIP ئىچىدىكى APK لارنى سۈزۈش';
	@override String get multipleSigners => 'كۆپ ئىمزا قويغۇچىلار';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: 'ئەپنى چىقىرىۋېتەمسىز؟',
		other: 'ئەپلەرنى چىقىرىۋېتەمسىز؟',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: 'تەلەپ بەك كۆپ - {count} مىنۇتتىن كېيىن قايتا سىناڭ',
		other: 'تەلەپ بەك كۆپ - {count} مىنۇتتىن كېيىن قايتا سىناڭ',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: 'خاتالىق كۆرۈلدى، {error} مىنۇتتىن كېيىن قايتا سىنايدۇ',
		other: 'خاتالىق كۆرۈلدى، {error} مىنۇتتىن كېيىن قايتا سىنايدۇ',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: 'ئارقا كۆرۈنۈشتە {count} يېڭىلانما تېپىلدى',
		other: 'ئارقا كۆرۈنۈشتە {count} يېڭىلانما تېپىلدى',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{count} ئەپ',
		other: '{count} ئەپ',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{count} URL',
		other: '{count} URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{count} مىنۇت',
		other: '{count} مىنۇت',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{count} سائەت',
		other: '{count} سائەت',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{count} كۈن',
		other: '{count} كۈن',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{n} خاتىرە تازىلاندى',
		other: '{n} خاتىرە تازىلاندى',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{app} ۋە يەنە 1 ئەپنىڭ يېڭىلانمىسى بار.',
		other: '{app} ۋە يەنە {count} ئەپنىڭ يېڭىلانمىسى بار.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{app} ۋە يەنە 1 ئەپ يېڭىلاندى.',
		other: '{app} ۋە يەنە {count} ئەپ يېڭىلاندى.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{app} ۋە يەنە 1 ئەپنى يېڭىلاش مەغلۇپ بولدى.',
		other: '{app} ۋە يەنە {count} ئەپنى يېڭىلاش مەغلۇپ بولدى.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{app} ۋە يەنە 1 ئەپ يېڭىلانغان بولۇشى مۇمكىن.',
		other: '{app} ۋە يەنە {count} ئەپ يېڭىلانغان بولۇشى مۇمكىن.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n,
		one: 'گۇۋاھنامە خاشى',
		other: 'گۇۋاھنامە خاشلىرى',
	);
	@override String get securityDisclaimerTitle => 'بىخەتەرلىك ۋە قانۇنىي بايانات';
	@override String get license => 'ئىجازەتنامە';
	@override String get licenseText => 'بۇ ئەپ GPL v3 ئىجازەتنامىسى ئاستىدا تارقىتىلدى.';
	@override String get disclaimer => 'بايانات';
	@override String get disclaimerText => 'بۇ ئەپ ئۈچىنچى تەرەپ ئەپلىرىنى تارقاتمايدۇ ياكى دەلىللىمەيدۇ. بارلىق مەسئۇلىيەت ئىشلەتكۈچىدە.';
	@override String get privacy => 'مەخپىيەتلىك';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'قوشۇلۇش ۋە داۋاملاشتۇرۇش';
	@override String get decline => 'رەت قىلىش';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Updatium سىزگە يارىدىمۇ؟';
	@override String get githubStarPromptContent => 'ئەگەر بۇ تۈرنى قوللىماقچى بولسىڭىز، GitHub دا يۇلتۇز بېرىشنى ئويلىشىپ كۆرۈڭ.';
	@override String get githubStarPromptStar => 'يۇلتۇز بېرىش';
	@override String get githubStarPromptDontShowAgain => 'قايتا كۆرسەتمە';
	@override String get sourceCode => 'مەنبە كودى';
	@override String get developedBy => 'تۈزگۈچى';
	@override String get appDescription => 'ئەپلىرىڭىزنى بىۋاسىتە مەنبەسىدىن يېڭىلايدىغان قورال.';
	@override String get safeModeEnabled => 'بىخەتەر ھالەت قوزغىتىلدى';
	@override String get safeModeDisabled => 'بىخەتەر ھالەت چەكلەندى';
	@override String get safeModeDisable => 'بىخەتەر ھالەتنى چەكلەش';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'بىخەتەر ھالەت باشقۇرۇش';
	@override String get safeModeSetupDescription => 'بىخەتەر ھالەتنى قوزغىتىش ئۈچۈن پارول بەلگىلەڭ.';
	@override String get safeModeToggleDescription => 'بىخەتەر ھالەتنى ئۆزگەرتىش ئۈچۈن پارول كىرگۈزۈڭ.';
	@override String get safeModeSetPassword => 'پارول بەلگىلەش';
	@override String get safeModeConfirmPassword => 'پارولنى جەزملەش';
	@override String get safeModeEnterPassword => 'پارول كىرگۈزۈڭ';
	@override String get safeModePasswordHint => 'ئەڭ ئاز بولغاندا 8 خانە';
	@override String get safeModePasswordTooShort => 'پارول ئاز دېگەندە 8 خانە بولۇشى كېرەك';
	@override String get safeModePasswordMismatch => 'پاروللار ماس كەلمىدى';
	@override String get safeModePasswordIncorrect => 'پارول خاتا';
	@override String get safeModePasswordError => 'پارول بەلگىلەشتە خاتالىق كۆرۈلدى.';
	@override String get safeModeEnable => 'بىخەتەر ھالەتنى قوزغىتىش';
	@override String get safeModeToggle => 'بىخەتەر ھالەتنى چەكلەش';
	@override String get safeModeTapsRemaining => 'بىخەتەر ھالەتنى چەكلەش ئۈچۈن يەنە {count} قېتىم بېسىڭ';
	@override String get safeModeEnabledHint => 'بىخەتەر ھالەت قوزغىتىلدى. تەڭشەكتىكى نەشر نومۇرىنى كۆپ قېتىم بېسىپ چەكلەڭ.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'چۈشەندىم';
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

/// The flat map containing all translations for locale <ug>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsUg {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'ئەپ URL ئادرېسى ئىناۋەتسىز: {}',
			'noReleaseFound' => 'مۇۋاپىق نەشرى تېپىلمىدى',
			'noVersionFound' => 'نەشرىنى بېكىتكىلى بولمىدى',
			'urlMatchesNoSource' => 'URL ئادرېسى مەلۇم مەنبەگە ماس كەلمىدى',
			'cantInstallOlderVersion' => 'ئەپنىڭ كونا نەشرىنى قاچىلىغىلى بولمايدۇ',
			'appIdMismatch' => 'چۈشۈرۈلگەن بوغچا ID سى مەۋجۇت ئەپ ID سىگە ماس كەلمىدى',
			'functionNotImplemented' => 'بۇ تۈردە بۇ ئىقتىدار تېخى يولغا قويۇلمىغان',
			'placeholder' => 'ئورۇن بەلگۈچى',
			'someErrors' => 'بىر قىسىم خاتالىقلار كۆرۈلدى',
			'unexpectedError' => 'توساتتىن خاتالىق كۆرۈلدى',
			'ok' => 'جەزملەش',
			'and' => 'ۋە',
			'githubPATLabel' => 'GitHub شەخسىي زىيارەت كىنىشكىسى',
			'includePrereleases' => 'سىناق نەشرلىرىنى ئۆز ئىچىگە ئالسۇن',
			'fallbackToOlderReleases' => 'كونا نەشرىنى زاپاس ئىشلەتسۇن',
			'filterReleaseTitlesByRegEx' => 'نەشر ئىسمىنى دائىملىق ئىپادە (RegEx) ئارقىلىق سۈزۈش',
			'invalidRegEx' => 'ئىناۋەتسىز دائىملىق ئىپادە',
			'noDescription' => 'چۈشەندۈرۈشى يوق',
			'cancel' => 'ۋاز كەچ',
			'kContinue' => 'داۋاملاشتۇر',
			'requiredInBrackets' => '(زۆرۈر)',
			'dropdownNoOptsError' => 'خاتالىق: تىزىملىكتە ئاز دېگەندە بىر تاللاش بولۇشى كېرەك',
			'color' => 'رەڭ',
			'standard' => 'ئۆلچەملىك',
			'custom' => 'ئىختىيارى',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You رەڭلىرىنى ئىشلىتىش',
			'githubStarredRepos' => 'GitHub يۇلتۇز قويۇلغان ئامبارلار',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'ئىشلەتكۈچى ئىسمى',
			'wrongArgNum' => 'پارامېتىر سانى خاتا',
			'xIsTrackOnly' => '{} پەقەت ئىز قوغلىنىدۇ',
			'source' => 'مەنبە',
			'app' => 'ئەپ',
			'appsFromSourceAreTrackOnly' => 'بۇ مەنبەدىكى ئەپلەر پەقەت ئىز قوغلىنىدۇ.',
			'youPickedTrackOnly' => 'سىز پەقەت ئىز قوغلاش تاللانمىسىنى تاللىدىڭىز.',
			'trackOnlyAppDescription' => 'ئەپنىڭ يېڭىلىنىشى ئىز قوغلىنىدۇ، ئەمما Updatium ئۇنى چۈشۈرەلمەيدۇ ياكى قاچىلىيالمايدۇ.',
			'cancelled' => 'بىكار قىلىندى',
			'appAlreadyAdded' => 'ئەپ ئاللىقاچان قوشۇلغان',
			'alreadyUpToDateQuestion' => 'ئەپ ئاللىقاچان ئەڭ يېڭى نەشرىدە؟',
			'addApp' => 'ئەپ قوشۇش',
			'appSourceURL' => 'ئەپ مەنبە URL ئادرېسى',
			'error' => 'خاتالىق',
			'add' => 'قوشۇش',
			'advanced' => 'ئىلغار',
			'searchSomeSourcesLabel' => 'ئىزدەش (بەزى مەنبەلەردىلا)',
			'search' => 'ئىزدەش',
			'searching' => 'Searching',
			'additionalOptsFor' => '{} ئۈچۈن قوشۇمچە تاللانمىلار',
			'supportedSources' => 'قوللايدىغان مەنبەلەر',
			'trackOnlyInBrackets' => '(پەقەت ئىز قوغلاش)',
			'searchableInBrackets' => '(ئىزدەشكە بولىدۇ)',
			'appsString' => 'ئەپلەر',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'خۇش كەپسىز!',
			'noAppsSubtext' => 'تۆۋەندىكى «ئەپ قوشۇش» نى بېسىش ئارقىلىق تۇنجى ئەپنى قوشالايسىز.',
			'noAppsForFilter' => 'سۈزگۈچكە ماس كېلىدىغان ئەپ يوق',
			'byX' => 'تۈزگۈچى: {}',
			'percentProgress' => 'سۈرئىتى: {}%',
			'pleaseWait' => 'سەۋر قىلىڭ',
			'updateAvailable' => 'يېڭى نەشرى مەۋجۇت',
			'notInstalled' => 'قاچىلانمىغان',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'ساختا نەشرى',
			'selectAll' => 'ھەممىنى تاللاش',
			'deselectX' => '{} نى تاللىماسلىق',
			'xWillBeRemovedButRemainInstalled' => '{} ئەپ Updatium دىن چىقىرىۋېتىلىدۇ، ئەمما ئۈسكۈنىدە قاچىلانغان ھالەتتە قالىدۇ.',
			'removeSelectedAppsQuestion' => 'تاللانغان ئەپلەرنى چىقىرىۋېتەمسىز؟',
			'removeSelectedApps' => 'تاللانغان ئەپلەرنى چىقىرىۋېتىش',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} نى يېڭىلاش',
			'installX' => '{} نى قاچىلاش',
			'markXTrackOnlyAsUpdated' => '{} نى\n(پەقەت ئىز قوغلىنىدىغان)\nيېڭىلاندى دەپ بەلگە قويۇش',
			'changeX' => '{} نى ئۆزگەرتىش',
			'installUpdateApps' => 'ئەپلەرنى قاچىلاش/يېڭىلاش',
			'installUpdateSelectedApps' => 'تاللانغان ئەپلەرنى قاچىلاش/يېڭىلاش',
			'markXSelectedAppsAsUpdated' => 'تاللانغان {} ئەپنى يېڭىلاندى دەپ بەلگە قويامسىز؟',
			'no' => 'ياق',
			'yes' => 'ھەئە',
			'markSelectedAppsUpdated' => 'تاللانغان ئەپلەرنى يېڭىلاندى دەپ بەلگە قويۇش',
			'pinToTop' => 'چوققىغا چاپلاش',
			'unpinFromTop' => 'چوققىدىن ئېلىۋېتىش',
			'resetInstallStatusForSelectedAppsQuestion' => 'تاللانغان ئەپلەرنىڭ قاچىلىنىش ھالىتىنى ئەسلىگە كەلتۈرەمسىز؟',
			'installStatusOfXWillBeResetExplanation' => 'تاللانغان ئەپلەرنىڭ قاچىلىنىش ھالىتى ئەسلىگە كەلتۈرۈلىدۇ.\n\nبۇ ئۇسۇل ئەپ نەشرى خاتا كۆرۈنگەندە پايدىلىق.',
			'customLinkMessage' => 'بۇ ئۇلانمىلار Updatium قاچىلانغان ئۈسكۈنىلەردە ئىشلەيدۇ',
			'shareAppConfigLinks' => 'ئەپ سەپلىمىسىنى HTML ئۇلانمىسى قىلىپ ھەمبەھىرلەش',
			'resetInstallStatus' => 'قاچىلىنىش ھالىتىنى ئەسلىگە كەلتۈرۈش',
			'more' => 'تېخىمۇ كۆپ',
			'removeOutdatedFilter' => 'كونىرىغان ئەپ سۈزگۈچىنى ئۆچۈرۈش',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'پەقەت يېڭىلانمىغان ئەپلەرنى كۆرسىتىش',
			'filter' => 'سۈزگۈچ',
			'filterApps' => 'ئەپلەرنى سۈزۈش',
			'filterDays' => 'Filter days',
			'appName' => 'ئەپ ئىسمى',
			'author' => 'تۈزگۈچى',
			'upToDateApps' => 'ئەڭ يېڭى ئەپلەر',
			'nonInstalledApps' => 'قاچىلانمىغان ئەپلەر',
			'importExport' => 'ئەكىرىش/ئەۋەتىش',
			'settings' => 'تەڭشەكلەر',
			'exportedTo' => 'ئەۋەتىلگەن ئورۇن: {}',
			'updatiumExport' => 'Updatium ئېكسپورتى',
			'failedToExport' => 'ئەۋەتىش مەغلۇپ بولدى',
			'exportAlreadyInProgress' => 'ئەۋەتىش ئېلىپ بېرىلىۋاتىدۇ',
			'exportDirNotAccessible' => 'ئەۋەتىش مۇندەرىجىسىنى زىيارەت قىلغىلى بولمىدى',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'ئەۋەتىش ھۆججىتىنى قۇرغىلى بولمىدى',
			'invalidInput' => 'كىرگۈزۈش ئىناۋەتسىز',
			'importedX' => 'ئەكىرىلدى: {}',
			'updatiumImport' => 'Updatium ئىمپورتى',
			'importFromURLList' => 'URL تىزىملىكىدىن ئەكىرىش',
			'searchQuery' => 'ئىزدەش مەزمۇنى',
			'appURLList' => 'ئەپ URL تىزىملىكى',
			'line' => 'قۇر',
			'searchX' => '{} نى ئىزدەش',
			'noResults' => 'نەتىجە تېپىلمىدى',
			'importX' => '{} نى ئەكىرىش',
			'importedAppsIdDisclaimer' => 'ئەكىرىلگەن ئەپلەر «قاچىلانمىغان» دەپ خاتا كۆرۈنۈشى مۇمكىن.\nئۇنى تۈزىتىش ئۈچۈن Updatium ئارقىلىق قايتا قاچىلاڭ.',
			'importErrors' => 'ئەكىرىش خاتالىقلىرى',
			'importedXOfYApps' => '{} / {} ئەپ ئەكىرىلدى.',
			'followingURLsHadErrors' => 'تۆۋەندىكى URL ئادرېسلىرىدا خاتالىق كۆرۈلدى:',
			'selectURL' => 'URL تاللاش',
			'selectURLs' => 'URL لارنى تاللاش',
			'pick' => 'تاللاش',
			'theme' => 'ئۇسلۇب',
			'dark' => 'قاراڭغۇ',
			'light' => 'يورۇق',
			'followSystem' => 'سىستېمىغا ئەگىشىش',
			'followSystemThemeExplanation' => 'سىستېما ئۇسلۇبىغا ئەگىشىش پەقەت ئۈچىنچى تەرەپ قوللىنىشچان پروگراممىلىرى ئارقىلىقلا مۇمكىن',
			'useBlackTheme' => 'ساپ قارا ئۇسلۇبنى ئىشلىتىش',
			'appSortBy' => 'تەرتىپلەش ئۆلچىمى',
			'authorName' => 'تۈزگۈچى/ئىسمى',
			'nameAuthor' => 'ئىسمى/تۈزگۈچى',
			'asAdded' => 'قوشۇلغان ۋاقتى',
			'appSortOrder' => 'تەرتىپى',
			'ascending' => 'ئۆرلەش تەرتىپى',
			'descending' => 'تۆۋەنلەش تەرتىپى',
			'bgUpdateCheckInterval' => 'ئارقا كۆرۈنۈشتە يېڭىلاش تەكشۈرۈش ئارىلىقى',
			'neverManualOnly' => 'ھەرگىز - پەقەت قولدا',
			'appearance' => 'كۆرۈنۈش',
			'pinUpdates' => 'يېڭىلانمىلارنى چوققىغا چاپلاش',
			'updates' => 'يېڭىلانمىلار',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'مەنبەگە خاس',
			'appSource' => 'ئەپ مەنبەسى',
			'appSourceHint' => 'ئەپ مەنبە ئامبىرىنى ئېچىش',
			'noLogs' => 'خاتىرىلەر يوق',
			'appLogs' => 'ئەپ خاتىرىلىرى',
			'appLogsHint' => 'ئەپ خاتىرىلىرىنى كۆرۈش',
			'close' => 'ياپ',
			'share' => 'ھەمبەھىرلەش',
			'appNotFound' => 'ئەپ تېپىلمىدى',
			'networkError' => 'تور ئۇلىنىشى مەغلۇپ بولدى',
			'invalidUrlFormat' => 'URL فورماتى ئىناۋەتسىز',
			'accessDenied' => 'زىيارەت رەت قىلىندى',
			'importFailed' => 'ئەكىرىش مەغلۇپ بولدى',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'بىر APK تاللاڭ',
			'appHasMoreThanOnePackage' => '{} نىڭ بىر قانچە بوغچىسى بار:',
			'deviceSupportsXArch' => 'ئۈسكۈنىڭىز {} قۇرۇلمىسىنى قوللايدۇ.',
			'deviceSupportsFollowingArchs' => 'ئۈسكۈنىڭىز تۆۋەندىكى قۇرۇلمىلارنى قوللايدۇ:',
			'warning' => 'ئاگاھلاندۇرۇش',
			'sourceIsXButPackageFromYPrompt' => 'ئەپ مەنبەسى \'{}\' لىكىن بوغچا \'{}\' دىن كەلگەن. داۋاملاشتۇرامسىز؟',
			'updatesAvailable' => 'يېڭىلانمىلار مەۋجۇت',
			'updatesAvailableNotifDescription' => 'ئىشلەتكۈچىگە ئىز قوغلىنىۋاتقان ئەپلەرنىڭ يېڭىلانغانلىقىنى ئۇقتۇرىدۇ',
			'noNewUpdates' => 'يېڭى يېڭىلانما يوق.',
			'xHasAnUpdate' => '{} نىڭ يېڭى نەشرى بار.',
			'appsUpdated' => 'ئەپلەر يېڭىلاندى',
			'appsNotUpdated' => 'ئەپلەرنى يېڭىلاش مەغلۇپ بولدى',
			'appsUpdatedNotifDescription' => 'ئارقا كۆرۈنۈشتە يېڭىلانغان ئەپلەرنى ئۇقتۇرىدۇ',
			'xWasUpdatedToY' => '{} ئەپ {} نەشرىگە يېڭىلاندى.',
			'xWasNotUpdatedToY' => '{} نى {} نەشرىگە يېڭىلاش مەغلۇپ بولدى.',
			'errorCheckingUpdates' => 'يېڭىلاش تەكشۈرۈشتە خاتالىق كۆرۈلدى',
			'errorCheckingUpdatesNotifDescription' => 'ئارقا كۆرۈنۈشتە يېڭىلاش تەكشۈرۈش مەغلۇپ بولغاندا كۆرۈنىدۇ',
			'appsRemoved' => 'ئەپلەر چىقىرىۋېتىلدى',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'خاتالىق تۈپەيلى چىقىرىۋېتىلگەن ئەپلەرنى ئۇقتۇرىدۇ',
			'xWasRemovedDueToErrorY' => '{} تۆۋەندىكى خاتالىق سەۋەبىدىن چىقىرىۋېتىلدى: {}',
			'completeAppInstallation' => 'ئەپ قاچىلاشنى تاماملاڭ',
			'updatiumMustBeOpenToInstallApps' => 'ئەپ قاچىلاش ئۈچۈن Updatium چوقۇم ئوچۇق بولۇشى كېرەك',
			'completeAppInstallationNotifDescription' => 'قاچىلاشنى تاماملاش ئۈچۈن ئىشلەتكۈچىنى Updatium غا قايتىشقا ئەسكەرتىدۇ',
			'checkingForUpdates' => 'يېڭىلانما تەكشۈرۈۋاتىدۇ',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'يېڭىلانما تەكشۈرۈۋاتقاندا كۆرۈنىدىغان ۋاقىتلىق ئۇقتۇرۇش',
			'pleaseAllowInstallPerm' => 'Updatium نىڭ ئەپ قاچىلىشىغا رۇخسەت قىلىڭ',
			'trackOnly' => 'پەقەت ئىز قوغلاش',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'خاتالىق: {}',
			'versionCorrectionDisabled' => 'نەشرىنى تۈزىتىش چەكلەنگەن',
			'unknown' => 'نامەلۇم',
			'none' => 'يوق',
			'all' => 'ھەممىسى',
			'never' => 'ھەرگىز',
			'latestVersion' => 'ئەڭ يېڭى',
			'installedVersionX' => 'قاچىلانغىنى: {}',
			'lastUpdateCheckX' => 'ئاخىرقى تەكشۈرۈش: {}',
			'remove' => 'ئۆچۈرۈش',
			'quickLinks' => 'تېز ئۇلانمىلار',
			'yesMarkUpdated' => 'ھەئە، يېڭىلاندى دەپ بەلگە قويۇش',
			'fdroid' => 'F-Droid رەسمىي',
			'appIdOrName' => 'ئەپ ID سى ياكى ئىسمى',
			'appId' => 'ئەپ ID سى',
			'appWithIdOrNameNotFound' => 'بۇ ID ياكى ئىسىمدىكى ئەپ تېپىلمىدى',
			'reposHaveMultipleApps' => 'ئامبارلاردا بىر قانچە ئەپ بولۇشى مۇمكىن',
			'fdroidThirdPartyRepo' => 'F-Droid ئۈچۈنچى تەرەپ ئامبىرى',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'قاچىلاش',
			'markInstalled' => 'قاچىلاندى دەپ بەلگە قويۇش',
			'update' => 'يېڭىلاش',
			'updated' => 'يېڭىلاندى',
			'markUpdated' => 'يېڭىلاندى دەپ بەلگە قويۇش',
			'download' => 'Download',
			'additionalOptions' => 'قوشۇمچە تاللانمىلار',
			'disableVersionDetection' => 'نەشرىنى بايقاشنى چەكلەش',
			'noVersionDetectionExplanation' => 'بۇ تاللانما پەقەت نەشرىنى بايقاش نورمال ئىشلىمىگەن ئەپلەر ئۈچۈنلا ئىشلىتىلىشى كېرەك.',
			'downloadingX' => 'چۈشۈرۈۋاتىدۇ: {}',
			'downloadX' => 'چۈشۈرۈش: {}',
			'downloadedX' => 'چۈشۈرۈلدى: {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'نەشرى مۈلكى',
			'downloadNotifDescription' => 'ئەپ چۈشۈرۈش سۈرئىتىنى ئىشلەتكۈچىگە ئۇقتۇرىدۇ',
			'noAPKFound' => 'APK تېپىلمىدى',
			'noVersionDetection' => 'نەشرى بايقالمىدى',
			'categorize' => 'تۈرگە ئايرىش',
			'categories' => 'تۈرلەر',
			'category' => 'تۈر',
			'noCategory' => 'تۈرى يوق',
			'noCategories' => 'تۈرلەر يوق',
			'categoryDeleteQuestion' => 'تۈرلەرنى ئۆچۈرەمسىز؟',
			'categoryDeleteWarning' => 'ئۆچۈرۈلگەن تۈرلەردىكى بارلىق ئەپلەر تۈرگە ئايرىلمىغان ھالەتكە تەڭشىلىدۇ.',
			'addCategory' => 'تۈر قوشۇش',
			'label' => 'بەلگە',
			'language' => 'تىل',
			'copiedToClipboard' => 'چاپلاش تاختىسىغا كۆچۈرۈلدى',
			'storagePermissionDenied' => 'ساقلاش بوشلۇقى رۇخسىتى رەت قىلىندى',
			'selectedCategorizeWarning' => 'بۇ تاللانغان ئەپلەرنىڭ بارلىق مەۋجۇت تۈر تەڭشەكلىرىنى ئالماشتۇرىدۇ.',
			'filterAPKsByRegEx' => 'APK لارنى دائىملىق ئىپادە ئارقىلىق سۈزۈش',
			'removeFromUpdatium' => 'Updatium دىن چىقىرىۋېتىش',
			'uninstallFromDevice' => 'ئۈسكۈنىدىن ئۆچۈرۈۋېتىش',
			'onlyWorksWithNonVersionDetectApps' => 'پەقەت نەشرىنى بايقاش چەكلەنگەن ئەپلەر ئۈچۈنلا ئىشلەيدۇ.',
			'releaseDateAsVersion' => 'ئېلان قىلىنغان ۋاقىتنى نەشرى قىلىپ ئىشلىتىش',
			'releaseTitleAsVersion' => 'ئېلان قىلىنغان ئىسىمنى نەشرى قىلىپ ئىشلىتىش',
			'releaseDateAsVersionExplanation' => 'نەشرىنى بايقاش خاتا بولغاندا، ئېلان قىلىنغان ۋاقىت بار بولسا مۇشۇنى ئىشلىتىڭ.',
			'changes' => 'ئۆزگىرىشلەر',
			'releaseDate' => 'ئېلان قىلىنغان ۋاقتى',
			'importFromURLsInFile' => 'ھۆججەتتىكى URL لارنى ئەكىرىش (مەسىلەن OPML)',
			'versionDetectionExplanation' => 'نەشرىنى سىستېما تەرىپىدىن بايقالغان نەشرىگە ماسلاشتۇرۇش',
			'versionDetection' => 'نەشرىنى بايقاش',
			'standardVersionDetection' => 'ئۆلچەملىك نەشرى بايقاش',
			'groupByCategory' => 'تۈر بويىچە گۇرۇپپىلاش',
			'listView' => 'تىزىملىك كۆرۈنۈشى',
			'gridView' => 'سېتکا كۆرۈنۈشى',
			'autoApkFilterByArch' => 'مۇمكىن بولسا APK لارنى CPU قۇرۇلمىسى بويىچە سۈزۈش',
			'autoLinkFilterByArch' => 'مۇمكىن بولسا ئۇلانمىلارنى CPU قۇرۇلمىسى بويىچە سۈزۈش',
			'overrideSource' => 'مەنبەنى قاپلاش',
			'dontShowAgain' => 'بۇنى قايتا كۆرسەتمە',
			'dontShowTrackOnlyWarnings' => '«پەقەت ئىز قوغلاش» ئاگاھلاندۇرۇشلىرىنى كۆرسەتمە',
			'dontShowAPKOriginWarnings' => 'APK كېلىش مەنبە ئاگاھلاندۇرۇشلىرىنى كۆرسەتمە',
			'moveNonInstalledAppsToBottom' => 'قاچىلانمىغان ئەپلەرنى تىزىملىكنىڭ ئاستىغا يۆتكەش',
			'gitlabPATLabel' => 'GitLab شەخسىي زىيارەت كىنىشكىسى',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'ھەققىدە',
			'requiresCredentialsInSettings' => '{} قوشۇمچە كىنىشكە تەلەپ قىلىدۇ (تەڭشەكتە)',
			'checkOnStart' => 'قوزغالغاندا يېڭىلانما تەكشۈرۈش',
			'safeMode' => 'بىخەتەر ھالەت',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'بىخەتەر ھالەتتە ئەپ قوشۇش چەكلەنگەن',
			'tryInferAppIdFromCode' => 'مەنبە كودىدىن ئەپ ID سىنى پەرەز قىلىش',
			'removeOnExternalUninstall' => 'ئەپ سىستېمىدىن ئۆچۈرۈلگەندە ئاپتوماتىك چىقىرىۋېتىش',
			'pickHighestVersionCode' => 'نەشرى ئەڭ يۇقىرى APK نى ئاپتوماتىك تاللاش',
			'checkUpdateOnDetailPage' => 'تەپسىلات بېتىنى ئاچقاندا يېڭىلانما تەكشۈرۈش',
			'disablePageTransitions' => 'بەت ئالمىشىش كارتونىنى چەكلەش',
			'reversePageTransitions' => 'بەت ئالمىشىش كارتونىنى ئەكسىچە قىلىش',
			'minStarCount' => 'ئەڭ تۆۋەن يۇلتۇز سانى',
			'addInfoBelow' => 'بۇ ئۇچۇرنى تۆۋەنگە قوشۇڭ.',
			'addInfoInSettings' => 'بۇ ئۇچۇرنى تەڭشەككە قوشۇڭ.',
			'githubSourceNote' => 'API ئاچقۇچى ئىشلىتىش ئارقىلىق GitHub سۈرئەت چەكلىمىسىدىن ساقلانغىلى بولىدۇ.',
			'sortByLastLinkSegment' => 'ئۇلانمىنىڭ ئاخىرقى قىسمى بويىچە تەرتىپلەش',
			'filterReleaseNotesByRegEx' => 'نەشر ئىزاھاتىنى دائىملىق ئىپادە ئارقىلىق سۈزۈش',
			'customLinkFilterRegex' => 'ئىختىيارى APK ئۇلانما سۈزگۈچى (سۈكۈتتىكى \'.apk$\')',
			'appsPossiblyUpdated' => 'ئەپنى يېڭىلاش سىناپ كۆرۈلدى',
			'appsPossiblyUpdatedNotifDescription' => 'ئارقا كۆرۈنۈشتە بىر قىسىم ئەپلەرنىڭ يېڭىلانغان بولۇشى مۇمكىنلىكىنى ئۇقتۇرىدۇ',
			'xWasPossiblyUpdatedToY' => '{} ئەپ {} نەشرىگە يېڭىلانغان بولۇشى مۇمكىن.',
			'enableBackgroundUpdates' => 'ئارقا كۆرۈنۈش يېڭىلاشنى قوزغىتىش',
			'backgroundUpdateReqsExplanation' => 'ئارقا كۆرۈنۈش يېڭىلاش بارلىق ئەپلەردە ئىشلىمەسلىكى مۇمكىن.',
			'backgroundUpdateLimitsExplanation' => 'ئارقا كۆرۈنۈشتە قاچىلانغانلىقىنى پەقەت Updatium نى ئاچقاندىلا بىلگىلى بولىدۇ.',
			'verifyLatestTag' => '«ئەڭ يېڭى» بەلگىسىنى دەلىللەش',
			'intermediateLinkRegex' => 'ئارىلىق ئۇلانمىسىنى سۈزۈش',
			'filterByLinkText' => 'ئۇلانما تېكىستى بويىچە سۈزۈش',
			'matchLinksOutsideATags' => '<a> بەلگىسىنىڭ سىرتىدىكى ئۇلانمىلارنى تاللاش',
			'intermediateLinkNotFound' => 'ئارىلىق ئۇلانمىسى تېپىلمىدى',
			'intermediateLink' => 'ئارىلىق ئۇلانمىسى',
			'exemptFromBackgroundUpdates' => 'ئارقا كۆرۈنۈش يېڭىلاشتىن مۇستەسنا قىلىش',
			'bgUpdatesOnWiFiOnly' => 'Wi-Fi بولمىغاندا ئارقا كۆرۈنۈش يېڭىلاشنى چەكلەش',
			'bgUpdatesWhileChargingOnly' => 'توك قاچىلىمىغاندا ئارقا كۆرۈنۈش يېڭىلاشنى چەكلەش',
			'autoSelectHighestVersionCode' => 'نەشرى ئەڭ يۇقىرى APK نى ئاپتوماتىك تاللاش',
			'versionExtractionRegEx' => 'نەشرىنى ئاجرىتىپ ئېلىش دائىملىق ئىپادىسى',
			'trimVersionString' => 'دائىملىق ئىپادە ئارقىلىق نەشرىنى قىسقارتىش',
			'matchGroupToUseForX' => '"{}" ئۈچۈن ماس كېلىدىغان گۇرۇپپا',
			'matchGroupToUse' => 'نەشرىنى ئاجرىتىپ ئېلىش ئۈچۈن ئىشلىتىلىدىغان گۇرۇپپا',
			'highlightTouchTargets' => 'ئېنىق بولمىغان چەكمە نىشانلىرىنى گەۋدىلەندۈرۈش',
			'pickExportDir' => 'ئەۋەتىش مۇندەرىجىسىنى تاللاش',
			'autoExportOnChanges' => 'ئۆزگىرىش بولغاندا ئاپتوماتىك ئەۋەتىش',
			'includeSettings' => 'تەڭشەكلەرنى ئۆز ئىچىگە ئالسۇن',
			'filterVersionsByRegEx' => 'نەشرلەرنى دائىملىق ئىپادە ئارقىلىق سۈزۈش',
			'trySelectingSuggestedVersionCode' => 'تەۋسىيە قىلىنغان APK نەشرىنى تاللاشنى سىناپ كۆرۈش',
			'dontSortReleasesList' => 'API دىن كەلگەن ئەسلى تەرتىپنى ساقلاش',
			'reverseSort' => 'تەرتىپنى ئەكسىچە قىلىش',
			'takeFirstLink' => 'بىرىنچى ئۇلانمىنى ئېلىش',
			'skipSort' => 'تەرتىپلەشنى ئۆتكۈزۈۋېتىش',
			'debugMenu' => 'سازلاش (Debug) تىزىملىكى',
			'bgTaskStarted' => 'ئارقا كۆرۈنۈش ۋەزىپىسى باشلاندى - خاتىرىلەرنى تەكشۈرۈڭ.',
			'runBgCheckNow' => 'ئارقا كۆرۈنۈش يېڭىلاشنى ھازىر تەكشۈرۈش',
			'versionExtractWholePage' => 'نەشرىنى ئاجرىتىش دائىملىق ئىپادىسىنى پۈتۈن بەتكە ئىشلىتىش',
			'installing' => 'قاچىلاۋاتىدۇ',
			'skipUpdateNotifications' => 'يېڭىلاش ئۇقتۇرۇشلىرىنى ئۆتكۈزۈۋېتىش',
			'updatesAvailableNotifChannel' => 'يېڭىلانمىلار مەۋجۇت',
			'appsUpdatedNotifChannel' => 'ئەپلەر يېڭىلاندى',
			'appsPossiblyUpdatedNotifChannel' => 'ئەپ يېڭىلاش سىناپ كۆرۈلدى',
			'errorCheckingUpdatesNotifChannel' => 'يېڭىلاش تەكشۈرۈش خاتالىقى',
			'appsRemovedNotifChannel' => 'ئەپلەر چىقىرىۋېتىلدى',
			'downloadingXNotifChannel' => 'چۈشۈرۈۋاتىدۇ: {}',
			'completeAppInstallationNotifChannel' => 'ئەپ قاچىلاشنى تاماملاش',
			'checkingForUpdatesNotifChannel' => 'يېڭىلانما تەكشۈرۈۋاتىدۇ',
			'onlyCheckInstalledOrTrackOnlyApps' => 'پەقەت قاچىلانغان ۋە ئىز قوغلىنىدىغان ئەپلەرنىلا تەكشۈرۈش',
			'supportFixedAPKURL' => 'مۇقىم APK URL ئادرېسلىرىنى قوللاش',
			'selectX' => '{} نى تاللاش',
			'parallelDownloads' => 'بىرلا ۋاقىتتا چۈشۈرۈشكە رۇخسەت قىلىش',
			'useShizuku' => 'قاچىلاش ئۈچۈن Shizuku ياكى Sui ئىشلىتىش',
			'shizukuBinderNotFound' => 'Shizuku مۇلازىمىتى ئىشلىمەيۋاتىدۇ',
			'shizukuOld' => 'Shizuku نەشرى كونا (<11) - يېڭىلاڭ',
			'shizukuOldAndroidWithADB' => 'Android نەشرى كونا، Shizuku ئىشلەتكىلى بولمايدۇ',
			'shizukuPretendToBeGooglePlay' => 'Google Play نى قاچىلاش مەنبەسى قىلىپ كۆرسىتىش',
			'useSystemFont' => 'سىستېما خەت نۇسخىسىنى ئىشلىتىش',
			'useVersionCodeAsOSVersion' => 'ئەپنىڭ versionCode نى سىستېما بايقالغان نەشرى قىلىپ ئىشلىتىش',
			'requestHeader' => 'تەلەپ بېشى (Request header)',
			'useLatestAssetDateAsReleaseDate' => 'ئەڭ ئاخىرقى مۈلۈك يۈكلەنگەن ۋاقىتنى ئېلان قىلىنغان ۋاقىت قىلىش',
			'defaultPseudoVersioningMethod' => 'سۈكۈتتىكى ساختا نەشر قىلىش ئۇسۇلى',
			'partialAPKHash' => 'قىسمەن APK خاش قىممىتى',
			'APKLinkHash' => 'APK ئۇلانما خاش قىممىتى',
			'directAPKLink' => 'بىۋاسىتە APK ئۇلانمىسى',
			'pseudoVersionInUse' => 'ساختا نەشر ئىشلىتىلىۋاتىدۇ',
			'installedVersion' => 'قاچىلاندى',
			'installed' => 'قاچىلاندى',
			'notInstalledApps' => 'قاچىلانمىغان',
			'latest' => 'ئەڭ يېڭى',
			'invertRegEx' => 'دائىملىق ئىپادىنى ئەكسىچە قىلىش',
			'note' => 'ئەسكەرتىش',
			'selfHostedNote' => '"{}" تىزىملىكى ئارقىلىق شەخسىي مۇلازىمېتىردىكى مەنبەلەرنى زىيارەت قىلغىلى بولىدۇ.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK نى ئانالىز قىلغىلى بولمىدى (ماس كەلمەيدۇ ياكى تولۇق چۈشمىگەن)',
			'beforeNewInstallsShareToAppVerifier' => 'يېڭى ئەپلەرنى قاچىلاشتىن بۇرۇن AppVerifier غا يوللاش',
			'appVerifierInstructionToast' => 'AppVerifier غا يوللاڭ، تەييار بولغاندا بۇ يەرگە قايتىڭ.',
			'wiki' => 'ياردەم/ۋىكى',
			'wikiHint' => 'Updatium ۋىكى قوللانمىسىنى ئېچىش',
			'allowInsecure' => 'بىخەتەر بولمىغان HTTP تەلەپلىرىگە رۇخسەت قىلىش',
			'stayOneVersionBehind' => 'ئەڭ يېڭى نەشرىدىن بىر نەشرى كەينىدە تۇرۇش',
			'useFirstApkOfVersion' => 'بىر نەشرىدە كۆپ APK بولسا بىرىنچىسىنى تاللاش',
			'refreshBeforeDownload' => 'چۈشۈرۈشتىن بۇرۇن ئەپ تەپسىلاتىنى يېڭىلاش',
			'tencentAppStore' => 'Tencent ئەپ بازىرى',
			'coolApk' => 'CoolApk (كۇئەن)',
			'vivoAppStore' => 'vivo ئەپ بازىرى (جۇڭگو)',
			'name' => 'ئىسمى',
			'smartname' => 'ئىسمى (ئەقلىي)',
			'smartPlusDate' => 'ئەقلىي + ۋاقىت',
			'sortMethod' => 'تەرتىپلەش ئۇسۇلى',
			'welcome' => 'خۇش كەپسىز',
			'batteryOptimizationNote' => 'ئارقا كۆرۈنۈشتە چۈشۈرۈشنىڭ تۇراقلىق بولۇشى ئۈچۈن، باتارېيەنى ئەلالاشتۇرۇشنى چەكلەپ قويۇڭ.',
			'fileDeletionError' => 'ھۆججەتنى ئۆچۈرۈش مەغلۇپ بولدى: "{}"',
			'foregroundService' => 'Updatium ئالدى كۆرۈنۈش مۇلازىمىتى',
			'foregroundServiceExplanation' => 'تەكشۈرۈش ئۈچۈن ئالدى كۆرۈنۈش مۇلازىمىتىنى ئىشلىتىش (تېخىمۇ تۇراقلىق، ئەمما توك سەرپىياتى كۆپ)',
			'fgServiceNotice' => 'بۇ ئۇقتۇرۇش ئارقا كۆرۈنۈش تەكشۈرۈشى ئۈچۈن زۆرۈر',
			'excludeSecrets' => 'مەخپىي ئۇچۇرلارنى چىقىرىۋېتىش',
			'GHReqPrefix' => 'GitHub تەلەپلىرى ئۈچۈن \'omeritzics/Updatium\' ئىشلىتىش',
			'includeZips' => 'ZIP ھۆججەتلىرىنى ئۆز ئىچىگە ئالسۇن',
			'zippedApkFilterRegEx' => 'ZIP ئىچىدىكى APK لارنى سۈزۈش',
			'multipleSigners' => 'كۆپ ئىمزا قويغۇچىلار',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: 'ئەپنى چىقىرىۋېتەمسىز؟', other: 'ئەپلەرنى چىقىرىۋېتەمسىز؟', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: 'تەلەپ بەك كۆپ - {count} مىنۇتتىن كېيىن قايتا سىناڭ', other: 'تەلەپ بەك كۆپ - {count} مىنۇتتىن كېيىن قايتا سىناڭ', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: 'خاتالىق كۆرۈلدى، {error} مىنۇتتىن كېيىن قايتا سىنايدۇ', other: 'خاتالىق كۆرۈلدى، {error} مىنۇتتىن كېيىن قايتا سىنايدۇ', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: 'ئارقا كۆرۈنۈشتە {count} يېڭىلانما تېپىلدى', other: 'ئارقا كۆرۈنۈشتە {count} يېڭىلانما تېپىلدى', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{count} ئەپ', other: '{count} ئەپ', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{count} URL', other: '{count} URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{count} مىنۇت', other: '{count} مىنۇت', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{count} سائەت', other: '{count} سائەت', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{count} كۈن', other: '{count} كۈن', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{n} خاتىرە تازىلاندى', other: '{n} خاتىرە تازىلاندى', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{app} ۋە يەنە 1 ئەپنىڭ يېڭىلانمىسى بار.', other: '{app} ۋە يەنە {count} ئەپنىڭ يېڭىلانمىسى بار.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{app} ۋە يەنە 1 ئەپ يېڭىلاندى.', other: '{app} ۋە يەنە {count} ئەپ يېڭىلاندى.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{app} ۋە يەنە 1 ئەپنى يېڭىلاش مەغلۇپ بولدى.', other: '{app} ۋە يەنە {count} ئەپنى يېڭىلاش مەغلۇپ بولدى.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{app} ۋە يەنە 1 ئەپ يېڭىلانغان بولۇشى مۇمكىن.', other: '{app} ۋە يەنە {count} ئەپ يېڭىلانغان بولۇشى مۇمكىن.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ug'))(n, one: 'گۇۋاھنامە خاشى', other: 'گۇۋاھنامە خاشلىرى', ), 
			'securityDisclaimerTitle' => 'بىخەتەرلىك ۋە قانۇنىي بايانات',
			'license' => 'ئىجازەتنامە',
			'licenseText' => 'بۇ ئەپ GPL v3 ئىجازەتنامىسى ئاستىدا تارقىتىلدى.',
			'disclaimer' => 'بايانات',
			'disclaimerText' => 'بۇ ئەپ ئۈچىنچى تەرەپ ئەپلىرىنى تارقاتمايدۇ ياكى دەلىللىمەيدۇ. بارلىق مەسئۇلىيەت ئىشلەتكۈچىدە.',
			'privacy' => 'مەخپىيەتلىك',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'قوشۇلۇش ۋە داۋاملاشتۇرۇش',
			'decline' => 'رەت قىلىش',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Updatium سىزگە يارىدىمۇ؟',
			'githubStarPromptContent' => 'ئەگەر بۇ تۈرنى قوللىماقچى بولسىڭىز، GitHub دا يۇلتۇز بېرىشنى ئويلىشىپ كۆرۈڭ.',
			'githubStarPromptStar' => 'يۇلتۇز بېرىش',
			'githubStarPromptDontShowAgain' => 'قايتا كۆرسەتمە',
			'sourceCode' => 'مەنبە كودى',
			'developedBy' => 'تۈزگۈچى',
			'appDescription' => 'ئەپلىرىڭىزنى بىۋاسىتە مەنبەسىدىن يېڭىلايدىغان قورال.',
			'safeModeEnabled' => 'بىخەتەر ھالەت قوزغىتىلدى',
			'safeModeDisabled' => 'بىخەتەر ھالەت چەكلەندى',
			'safeModeDisable' => 'بىخەتەر ھالەتنى چەكلەش',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'بىخەتەر ھالەت باشقۇرۇش',
			'safeModeSetupDescription' => 'بىخەتەر ھالەتنى قوزغىتىش ئۈچۈن پارول بەلگىلەڭ.',
			'safeModeToggleDescription' => 'بىخەتەر ھالەتنى ئۆزگەرتىش ئۈچۈن پارول كىرگۈزۈڭ.',
			'safeModeSetPassword' => 'پارول بەلگىلەش',
			'safeModeConfirmPassword' => 'پارولنى جەزملەش',
			'safeModeEnterPassword' => 'پارول كىرگۈزۈڭ',
			'safeModePasswordHint' => 'ئەڭ ئاز بولغاندا 8 خانە',
			'safeModePasswordTooShort' => 'پارول ئاز دېگەندە 8 خانە بولۇشى كېرەك',
			'safeModePasswordMismatch' => 'پاروللار ماس كەلمىدى',
			'safeModePasswordIncorrect' => 'پارول خاتا',
			'safeModePasswordError' => 'پارول بەلگىلەشتە خاتالىق كۆرۈلدى.',
			'safeModeEnable' => 'بىخەتەر ھالەتنى قوزغىتىش',
			'safeModeToggle' => 'بىخەتەر ھالەتنى چەكلەش',
			'safeModeTapsRemaining' => 'بىخەتەر ھالەتنى چەكلەش ئۈچۈن يەنە {count} قېتىم بېسىڭ',
			'safeModeEnabledHint' => 'بىخەتەر ھالەت قوزغىتىلدى. تەڭشەكتىكى نەشر نومۇرىنى كۆپ قېتىم بېسىپ چەكلەڭ.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'چۈشەندىم',
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
