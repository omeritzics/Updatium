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
class TranslationsHi with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHi({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hi,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hi>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHi _root = this; // ignore: unused_field

	@override 
	TranslationsHi $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHi(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'एक मान्य {} ऐप URL नहीं है';
	@override String get noReleaseFound => 'कोई उपयुक्त रिलीज़ नहीं मिली';
	@override String get noVersionFound => 'रिलीज़ वर्शन निर्धारित नहीं किया जा सका';
	@override String get urlMatchesNoSource => 'URL किसी ज्ञात स्रोत से मेल नहीं खाता';
	@override String get cantInstallOlderVersion => 'ऐप का पुराना वर्शन इंस्टॉल नहीं किया जा सकता';
	@override String get appIdMismatch => 'डाउनलोड किया गया पैकेज ID मौजूदा ऐप ID से मेल नहीं खाता';
	@override String get functionNotImplemented => 'इस क्लास ने इस फ़ंक्शन को लागू नहीं किया है';
	@override String get placeholder => 'प्लेसहोल्डर';
	@override String get someErrors => 'कुछ त्रुटियाँ हुईं';
	@override String get unexpectedError => 'अप्रत्याशित त्रुटि';
	@override String get ok => 'ठीक है';
	@override String get and => 'और';
	@override String get githubPATLabel => 'GitHub पर्सनल एक्सेस टोकन';
	@override String get includePrereleases => 'प्री-रिलीज़ शामिल करें';
	@override String get fallbackToOlderReleases => 'पुरानी रिलीज़ पर वापस जाएँ';
	@override String get filterReleaseTitlesByRegEx => 'नियमित अभिव्यक्ति (RegEx) द्वारा रिलीज़ शीर्षक फ़िल्टर करें';
	@override String get invalidRegEx => 'अमान्य नियमित अभिव्यक्ति';
	@override String get noDescription => 'कोई विवरण नहीं';
	@override String get cancel => 'रद्द करें';
	@override String get kContinue => 'जारी रखें';
	@override String get requiredInBrackets => '(आवश्यक)';
	@override String get dropdownNoOptsError => 'त्रुटि: ड्रॉपडाउन में कम से कम एक विकल्प होना चाहिए';
	@override String get color => 'रंग';
	@override String get standard => 'मानक';
	@override String get custom => 'कस्टम';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You रंगों का उपयोग करें';
	@override String get githubStarredRepos => 'GitHub तारांकित (starred) रिपॉजिटरी';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'यूज़रनेम';
	@override String get wrongArgNum => 'गलत संख्या में तर्क (arguments) दिए गए';
	@override String get xIsTrackOnly => '{} केवल ट्रैक-ओनली है';
	@override String get source => 'स्रोत';
	@override String get app => 'ऐप';
	@override String get appsFromSourceAreTrackOnly => 'इस स्रोत के ऐप्स \'केवल-ट्रैक\' (track-only) हैं।';
	@override String get youPickedTrackOnly => 'आपने \'केवल-ट्रैक\' विकल्प चुना है।';
	@override String get trackOnlyAppDescription => 'ऐप को अपडेट के लिए ट्रैक किया जाएगा, लेकिन Updatium इसे डाउनलोड या इंस्टॉल नहीं कर पाएगा।';
	@override String get cancelled => 'रद्द कर दिया गया';
	@override String get appAlreadyAdded => 'ऐप पहले ही जोड़ा जा चुका है';
	@override String get alreadyUpToDateQuestion => 'ऐप पहले से ही अपडेट है?';
	@override String get addApp => 'ऐप जोड़ें';
	@override String get appSourceURL => 'ऐप स्रोत URL';
	@override String get error => 'त्रुटि';
	@override String get add => 'जोड़ें';
	@override String get advanced => 'उन्नत';
	@override String get searchSomeSourcesLabel => 'खोजें (केवल कुछ स्रोत)';
	@override String get search => 'खोजें';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{} के लिए अतिरिक्त विकल्प';
	@override String get supportedSources => 'समर्थित स्रोत';
	@override String get trackOnlyInBrackets => '(केवल-ट्रैक)';
	@override String get searchableInBrackets => '(खोजने योग्य)';
	@override String get appsString => 'ऐप्स';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'स्वागत है!';
	@override String get noAppsSubtext => 'आप नीचे \'ऐप जोड़ें\' पर टैप करके अपना पहला ऐप जोड़ सकते हैं।';
	@override String get noAppsForFilter => 'फ़िल्टर के लिए कोई ऐप नहीं';
	@override String get byX => '{} द्वारा';
	@override String get percentProgress => 'प्रगति: {}%';
	@override String get pleaseWait => 'कृपया प्रतीक्षा करें';
	@override String get updateAvailable => 'अपडेट उपलब्ध है';
	@override String get notInstalled => 'इंस्टॉल नहीं है';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'छद्म-वर्शन (pseudo-version)';
	@override String get selectAll => 'सभी चुनें';
	@override String get deselectX => '{} को अचयनित करें';
	@override String get xWillBeRemovedButRemainInstalled => '{} को Updatium से हटा दिया जाएगा लेकिन डिवाइस पर इंस्टॉल रहेगा।';
	@override String get removeSelectedAppsQuestion => 'चुने गए ऐप्स हटाएँ?';
	@override String get removeSelectedApps => 'चुने गए ऐप्स हटाएँ';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} अपडेट करें';
	@override String get installX => '{} इंस्टॉल करें';
	@override String get markXTrackOnlyAsUpdated => '{}\n(केवल-ट्रैक)\nको अपडेटेड के रूप में चिह्नित करें';
	@override String get changeX => '{} बदलें';
	@override String get installUpdateApps => 'ऐप्स इंस्टॉल/अपडेट करें';
	@override String get installUpdateSelectedApps => 'चुने गए ऐप्स इंस्टॉल/अपडेट करें';
	@override String get markXSelectedAppsAsUpdated => 'क्या {} चयनित ऐप्स को अपडेटेड के रूप में चिह्नित करें?';
	@override String get no => 'नहीं';
	@override String get yes => 'हाँ';
	@override String get markSelectedAppsUpdated => 'चयनित ऐप्स को अपडेटेड के रूप में चिह्नित करें';
	@override String get pinToTop => 'ऊपर पिन करें';
	@override String get unpinFromTop => 'ऊपर से अनपिन करें';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'चयनित ऐप्स के लिए इंस्टॉल स्थिति रीसेट करें?';
	@override String get installStatusOfXWillBeResetExplanation => 'चयनित ऐप्स की इंस्टॉल स्थिति रीसेट कर दी जाएगी।\n\nयह तब मदद कर सकता है जब विफल अपडेट या अन्य समस्याओं के कारण Updatium में दिखाया गया ऐप वर्शन गलत हो।';
	@override String get customLinkMessage => 'ये लिंक उन डिवाइस पर काम करते हैं जिनमें Updatium इंस्टॉल है';
	@override String get shareAppConfigLinks => 'HTML लिंक के रूप में ऐप कॉन्फ़िगरेशन साझा करें';
	@override String get resetInstallStatus => 'इंस्टॉल स्थिति रीसेट करें';
	@override String get more => 'अधिक';
	@override String get removeOutdatedFilter => 'पुराने ऐप फ़िल्टर को हटाएँ';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'केवल पुराने ऐप दिखाएं';
	@override String get filter => 'फ़िल्टर';
	@override String get filterApps => 'ऐप्स फ़िल्टर करें';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'ऐप का नाम';
	@override String get author => 'लेखक';
	@override String get upToDateApps => 'अप-टू-डेट ऐप्स';
	@override String get nonInstalledApps => 'गैर-इंस्टॉल किए गए ऐप्स';
	@override String get importExport => 'आयात/निर्यात';
	@override String get settings => 'सेटिंग्स';
	@override String get exportedTo => '{} पर निर्यात किया गया';
	@override String get updatiumExport => 'Updatium निर्यात';
	@override String get failedToExport => 'निर्यात करने में विफल';
	@override String get exportAlreadyInProgress => 'निर्यात पहले से ही प्रगति पर है';
	@override String get exportDirNotAccessible => 'निर्यात निर्देशिका (directory) सुलभ नहीं है';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'निर्यात फ़ाइल बनाने में विफल';
	@override String get invalidInput => 'अमान्य इनपुट';
	@override String get importedX => '{} आयात किया गया';
	@override String get updatiumImport => 'Updatium आयात';
	@override String get importFromURLList => 'URL सूची से आयात करें';
	@override String get searchQuery => 'खोज क्वेरी';
	@override String get appURLList => 'ऐप URL सूची';
	@override String get line => 'लाइन';
	@override String get searchX => '{} खोजें';
	@override String get noResults => 'कोई परिणाम नहीं मिला';
	@override String get importX => '{} आयात करें';
	@override String get importedAppsIdDisclaimer => 'आयात किए गए ऐप गलत तरीके से "इंस्टॉल नहीं है" के रूप में दिखाई दे सकते हैं।\nइसे ठीक करने के लिए, उन्हें Updatium के माध्यम से फिर से इंस्टॉल करें।\nइससे ऐप डेटा प्रभावित नहीं होना चाहिए।\n\nकेवल URL और तृतीय-पक्ष आयात विधियों को प्रभावित करता है।';
	@override String get importErrors => 'आयात त्रुटियाँ';
	@override String get importedXOfYApps => '{} में से {} ऐप आयात किए गए।';
	@override String get followingURLsHadErrors => 'निम्नलिखित URL में त्रुटियाँ थीं:';
	@override String get selectURL => 'URL चुनें';
	@override String get selectURLs => 'URL चुनें';
	@override String get pick => 'चुनें';
	@override String get theme => 'थीम';
	@override String get dark => 'डार्क';
	@override String get light => 'लाइट';
	@override String get followSystem => 'सिस्टम का पालन करें';
	@override String get followSystemThemeExplanation => 'सिस्टम थीम का पालन केवल तृतीय-पक्ष एप्लिकेशन का उपयोग करके ही संभव है';
	@override String get useBlackTheme => 'शुद्ध काले (Pure Black) डार्क थीम का उपयोग करें';
	@override String get appSortBy => 'ऐप को इसके अनुसार क्रमबद्ध करें';
	@override String get authorName => 'लेखक/नाम';
	@override String get nameAuthor => 'नाम/लेखक';
	@override String get asAdded => 'जोड़ने के क्रम में';
	@override String get appSortOrder => 'ऐप सॉर्ट क्रम';
	@override String get ascending => 'आरोही (Ascending)';
	@override String get descending => 'अवरोही (Descending)';
	@override String get bgUpdateCheckInterval => 'पृष्ठभूमि (Background) अपडेट जाँच अंतराल';
	@override String get neverManualOnly => 'कभी नहीं - केवल मैन्युअल';
	@override String get appearance => 'दिखावट';
	@override String get pinUpdates => 'अपडेट को ऐप दृश्य के शीर्ष पर पिन करें';
	@override String get updates => 'अपडेट';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'स्रोत-विशिष्ट';
	@override String get appSource => 'ऐप स्रोत';
	@override String get appSourceHint => 'ऐप स्रोत रिपॉजिटरी खोलें';
	@override String get noLogs => 'कोई लॉग नहीं';
	@override String get appLogs => 'ऐप लॉग';
	@override String get appLogsHint => 'एप्लिकेशन लॉग देखें';
	@override String get close => 'बंद करें';
	@override String get share => 'साझा करें';
	@override String get appNotFound => 'ऐप नहीं मिला';
	@override String get networkError => 'नेटवर्क कनेक्शन विफल रहा';
	@override String get invalidUrlFormat => 'अमान्य URL प्रारूप';
	@override String get accessDenied => 'पहुँच अस्वीकृत';
	@override String get importFailed => 'आयात विफल रहा';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'एक APK चुनें';
	@override String get appHasMoreThanOnePackage => '{} में एक से अधिक पैकेज हैं:';
	@override String get deviceSupportsXArch => 'आपका डिवाइस {} CPU आर्किटेक्चर का समर्थन करता है।';
	@override String get deviceSupportsFollowingArchs => 'आपका डिवाइस निम्नलिखित CPU आर्किटेक्चर का समर्थन करता है:';
	@override String get warning => 'चेतावनी';
	@override String get sourceIsXButPackageFromYPrompt => 'ऐप का स्रोत \'{}\' है लेकिन रिलीज़ पैकेज \'{}\' से आता है। जारी रखें?';
	@override String get updatesAvailable => 'अपडेट उपलब्ध हैं';
	@override String get updatesAvailableNotifDescription => 'उपयोगकर्ता को सूचित करता है कि Updatium द्वारा ट्रैक किए गए एक या अधिक ऐप्स के लिए अपडेट उपलब्ध हैं';
	@override String get noNewUpdates => 'कोई नया अपडेट नहीं।';
	@override String get xHasAnUpdate => '{} के लिए एक अपडेट है।';
	@override String get appsUpdated => 'ऐप्स अपडेट हो गए';
	@override String get appsNotUpdated => 'एप्लिकेशन अपडेट करने में विफल';
	@override String get appsUpdatedNotifDescription => 'उपयोगकर्ता को सूचित करता है कि एक या अधिक ऐप्स के अपडेट पृष्ठभूमि में लागू किए गए थे';
	@override String get xWasUpdatedToY => '{} को {} पर अपडेट किया गया था।';
	@override String get xWasNotUpdatedToY => '{} को {} पर अपडेट करने में विफल।';
	@override String get errorCheckingUpdates => 'अपडेट की जाँच करने में त्रुटि';
	@override String get errorCheckingUpdatesNotifDescription => 'एक अधिसूचना जो पृष्ठभूमि अपडेट जाँच विफल होने पर दिखाई देती है';
	@override String get appsRemoved => 'ऐप्स हटा दिए गए';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'उपयोगकर्ता को सूचित करता है कि लोड करते समय त्रुटियों के कारण एक या अधिक ऐप्स हटा दिए गए थे';
	@override String get xWasRemovedDueToErrorY => '{} को इस त्रुटि के कारण हटा दिया गया था: {}';
	@override String get completeAppInstallation => 'ऐप इंस्टॉलेशन पूरा करें';
	@override String get updatiumMustBeOpenToInstallApps => 'ऐप्स इंस्टॉल करने के लिए Updatium खुला होना चाहिए';
	@override String get completeAppInstallationNotifDescription => 'उपयोगकर्ता से ऐप इंस्टॉल करना समाप्त करने के लिए Updatium पर लौटने के लिए कहता है';
	@override String get checkingForUpdates => 'अपडेट की जाँच हो रही है';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'अपडेट की जाँच करते समय दिखाई देने वाली अस्थायी अधिसूचना';
	@override String get pleaseAllowInstallPerm => 'कृपया Updatium को ऐप इंस्टॉल करने की अनुमति दें';
	@override String get trackOnly => 'केवल-ट्रैक';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'त्रुटि {}';
	@override String get versionCorrectionDisabled => 'वर्शन सुधार अक्षम है (प्लगइन काम नहीं कर रहा है)';
	@override String get unknown => 'अज्ञात';
	@override String get none => 'कोई नहीं';
	@override String get all => 'सभी';
	@override String get never => 'कभी नहीं';
	@override String get latestVersion => 'नवीनतम';
	@override String get installedVersionX => 'इंस्टॉल किया गया: {}';
	@override String get lastUpdateCheckX => 'पिछली अपडेट जाँच: {}';
	@override String get remove => 'हटाएँ';
	@override String get quickLinks => 'त्वरित लिंक';
	@override String get yesMarkUpdated => 'हाँ, अपडेटेड के रूप में चिह्नित करें';
	@override String get fdroid => 'F-Droid आधिकारिक';
	@override String get appIdOrName => 'ऐप ID या नाम';
	@override String get appId => 'ऐप ID';
	@override String get appWithIdOrNameNotFound => 'उस ID या नाम के साथ कोई ऐप नहीं मिला';
	@override String get reposHaveMultipleApps => 'रिपॉजिटरी में कई ऐप हो सकते हैं';
	@override String get fdroidThirdPartyRepo => 'F-Droid तृतीय-पक्ष रिपॉजिटरी';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'इंस्टॉल करें';
	@override String get markInstalled => 'इंस्टॉल के रूप में चिह्नित करें';
	@override String get update => 'अपडेट करें';
	@override String get updated => 'अपडेट किया गया';
	@override String get markUpdated => 'अपडेट के रूप में चिह्नित करें';
	@override String get download => 'Download';
	@override String get additionalOptions => 'अतिरिक्त विकल्प';
	@override String get disableVersionDetection => 'वर्शन डिटेक्शन अक्षम करें';
	@override String get noVersionDetectionExplanation => 'इस विकल्प का उपयोग केवल उन ऐप्स के लिए किया जाना चाहिए जहाँ वर्शन डिटेक्शन सही ढंग से काम नहीं करता है।';
	@override String get downloadingX => '{} डाउनलोड हो रहा है';
	@override String get downloadX => '{} डाउनलोड करें';
	@override String get downloadedX => '{} डाउनलोड किया गया';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'रिलीज़ एसेट';
	@override String get downloadNotifDescription => 'ऐप डाउनलोड करने की प्रगति के बारे में उपयोगकर्ता को सूचित करता है';
	@override String get noAPKFound => 'कोई APK नहीं मिला';
	@override String get noVersionDetection => 'कोई वर्शन डिटेक्शन नहीं';
	@override String get categorize => 'श्रेणीबद्ध करें';
	@override String get categories => 'श्रेणियाँ';
	@override String get category => 'श्रेणी';
	@override String get noCategory => 'कोई श्रेणी नहीं';
	@override String get noCategories => 'कोई श्रेणी नहीं है';
	@override String get categoryDeleteQuestion => 'श्रेणियाँ हटाएँ?';
	@override String get categoryDeleteWarning => 'हटाए गए श्रेणियों के सभी ऐप्स को बिना श्रेणी के (uncategorized) सेट कर दिया जाएगा।';
	@override String get addCategory => 'श्रेणी जोड़ें';
	@override String get label => 'लेबल';
	@override String get language => 'भाषा';
	@override String get copiedToClipboard => 'क्लिपबोर्ड पर कॉपी किया गया';
	@override String get storagePermissionDenied => 'स्टोरेज अनुमति अस्वीकृत';
	@override String get selectedCategorizeWarning => 'यह चयनित ऐप्स के लिए किसी भी मौजूदा श्रेणी सेटिंग्स को बदल देगा।';
	@override String get filterAPKsByRegEx => 'नियमित अभिव्यक्ति (RegEx) द्वारा APK फ़िल्टर करें';
	@override String get removeFromUpdatium => 'Updatium से हटाएँ';
	@override String get uninstallFromDevice => 'डिवाइस से अनइंस्टॉल करें';
	@override String get onlyWorksWithNonVersionDetectApps => 'केवल उन ऐप्स के लिए काम करता है जिनका वर्शन डिटेक्शन अक्षम है।';
	@override String get releaseDateAsVersion => 'रिलीज़ की तारीख को वर्शन स्ट्रिंग के रूप में उपयोग करें';
	@override String get releaseTitleAsVersion => 'रिलीज़ शीर्षक को वर्शन स्ट्रिंग के रूप में उपयोग करें';
	@override String get releaseDateAsVersionExplanation => 'इस विकल्प का उपयोग केवल उन ऐप्स के लिए किया जाना चाहिए जहाँ वर्शन डिटेक्शन सही ढंग से काम नहीं करता है, लेकिन रिलीज़ की तारीख उपलब्ध है।';
	@override String get changes => 'बदलाव';
	@override String get releaseDate => 'रिलीज़ की तारीख';
	@override String get importFromURLsInFile => 'फ़ाइल में URL से आयात करें (जैसे OPML)';
	@override String get versionDetectionExplanation => 'OS से पहचाने गए वर्शन के साथ वर्शन स्ट्रिंग का मिलान करें';
	@override String get versionDetection => 'वर्शन डिटेक्शन';
	@override String get standardVersionDetection => 'मानक वर्शन डिटेक्शन';
	@override String get groupByCategory => 'श्रेणी के अनुसार समूह बनाएँ';
	@override String get listView => 'सूची दृश्य';
	@override String get gridView => 'ग्रिड दृश्य';
	@override String get autoApkFilterByArch => 'यदि संभव हो तो CPU आर्किटेक्चर द्वारा APK को फ़िल्टर करने का प्रयास करें';
	@override String get autoLinkFilterByArch => 'यदि संभव हो तो CPU आर्किटेक्चर द्वारा लिंक को फ़िल्टर करने का प्रयास करें';
	@override String get overrideSource => 'स्रोत ओवरराइड करें';
	@override String get dontShowAgain => 'इसे दोबारा न दिखाएं';
	@override String get dontShowTrackOnlyWarnings => '\'केवल-ट्रैक\' चेतावनियाँ न दिखाएं';
	@override String get dontShowAPKOriginWarnings => 'APK मूल (origin) चेतावनियाँ न दिखाएं';
	@override String get moveNonInstalledAppsToBottom => 'बिना इंस्टॉल किए गए ऐप्स को ऐप दृश्य के नीचे ले जाएँ';
	@override String get gitlabPATLabel => 'GitLab व्यक्तिगत एक्सेस टोकन';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'के बारे में';
	@override String get requiresCredentialsInSettings => '{} को अतिरिक्त क्रेडेंशियल की आवश्यकता है (सेटिंग्स में)';
	@override String get checkOnStart => 'स्टार्टअप पर अपडेट के लिए जाँच करें';
	@override String get safeMode => 'सेफ मोड';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'सेफ मोड में \'ऐप जोड़ें\' अक्षम है';
	@override String get tryInferAppIdFromCode => 'सोर्स कोड से ऐप ID का अनुमान लगाने का प्रयास करें';
	@override String get removeOnExternalUninstall => 'बाहरी रूप से अनइंस्टॉल किए गए ऐप्स को स्वचालित रूप से हटाएँ';
	@override String get pickHighestVersionCode => 'उच्चतम वर्शन कोड वाला APK स्वतः चुनें';
	@override String get checkUpdateOnDetailPage => 'ऐप विवरण पेज खोलने पर अपडेट के लिए जाँच करें';
	@override String get disablePageTransitions => 'पेज ट्रांज़िशन एनिमेशन अक्षम करें';
	@override String get reversePageTransitions => 'पेज ट्रांज़िशन एनिमेशन उलटें';
	@override String get minStarCount => 'न्यूनतम स्टार गणना';
	@override String get addInfoBelow => 'यह जानकारी नीचे जोड़ें।';
	@override String get addInfoInSettings => 'यह जानकारी सेटिंग्स में जोड़ें।';
	@override String get githubSourceNote => 'API कुंजी का उपयोग करके GitHub रेट लिमिटिंग से बचा जा सकता है।';
	@override String get sortByLastLinkSegment => 'केवल लिंक के अंतिम खंड (segment) के अनुसार क्रमबद्ध करें';
	@override String get filterReleaseNotesByRegEx => 'RegEx द्वारा रिलीज़ नोट्स फ़िल्टर करें';
	@override String get customLinkFilterRegex => 'RegEx द्वारा कस्टम APK लिंक फ़िल्टर (डिफ़ॉल्ट \'.apk$\')';
	@override String get appsPossiblyUpdated => 'ऐप अपडेट का प्रयास किया गया';
	@override String get appsPossiblyUpdatedNotifDescription => 'उपयोगकर्ता को सूचित करता है कि एक या अधिक ऐप्स के अपडेट संभावित रूप से पृष्ठभूमि में लागू किए गए थे';
	@override String get xWasPossiblyUpdatedToY => '{} को संभवतः {} पर अपडेट किया गया होगा।';
	@override String get enableBackgroundUpdates => 'पृष्ठभूमि अपडेट सक्षम करें';
	@override String get backgroundUpdateReqsExplanation => 'सभी ऐप्स के लिए पृष्ठभूमि अपडेट संभव नहीं हो सकते हैं।';
	@override String get backgroundUpdateLimitsExplanation => 'पृष्ठभूमि इंस्टाल की सफलता केवल तभी निर्धारित की जा सकती है जब Updatium खोला जाता है।';
	@override String get verifyLatestTag => '\'नवीनतम\' (latest) टैग सत्यापित करें';
	@override String get intermediateLinkRegex => 'विजिट करने के लिए एक \'मध्यवर्ती\' (intermediate) लिंक के लिए फ़िल्टर करें';
	@override String get filterByLinkText => 'लिंक टेक्स्ट द्वारा लिंक फ़िल्टर करें';
	@override String get matchLinksOutsideATags => '<a> टैग के बाहर के लिंक का मिलान करें';
	@override String get intermediateLinkNotFound => 'मध्यवर्ती लिंक नहीं मिला';
	@override String get intermediateLink => 'मध्यवर्ती लिंक';
	@override String get exemptFromBackgroundUpdates => 'पृष्ठभूमि अपडेट से मुक्त (यदि सक्षम है)';
	@override String get bgUpdatesOnWiFiOnly => 'वाई-फाई पर न होने पर पृष्ठभूमि अपडेट अक्षम करें';
	@override String get bgUpdatesWhileChargingOnly => 'चार्ज न होने पर पृष्ठभूमि अपडेट अक्षम करें';
	@override String get autoSelectHighestVersionCode => 'उच्चतम वर्शनकोड APK स्वतः चुनें';
	@override String get versionExtractionRegEx => 'वर्शन स्ट्रिंग निष्कर्षण RegEx';
	@override String get trimVersionString => 'RegEx के साथ वर्शन स्ट्रिंग को ट्रिम करें';
	@override String get matchGroupToUseForX => '"{}" के लिए उपयोग करने के लिए मैच ग्रुप';
	@override String get matchGroupToUse => 'वर्शन स्ट्रिंग निष्कर्षण RegEx के लिए उपयोग करने वाला मैच ग्रुप';
	@override String get highlightTouchTargets => 'कम स्पष्ट टच लक्ष्यों को हाइलाइट करें';
	@override String get pickExportDir => 'निर्यात निर्देशिका चुनें';
	@override String get autoExportOnChanges => 'बदलावों पर स्वचालित रूप से निर्यात करें';
	@override String get includeSettings => 'सेटिंग्स शामिल करें';
	@override String get filterVersionsByRegEx => 'नियमित अभिव्यक्ति द्वारा वर्शन फ़िल्टर करें';
	@override String get trySelectingSuggestedVersionCode => 'सुझाए गए वर्शनकोड APK को चुनने का प्रयास करें';
	@override String get dontSortReleasesList => 'API से प्राप्त रिलीज़ क्रम को बनाए रखें';
	@override String get reverseSort => 'विपरीत क्रम में सॉर्ट करें';
	@override String get takeFirstLink => 'पहला लिंक लें';
	@override String get skipSort => 'सॉर्टिंग छोड़ें';
	@override String get debugMenu => 'डिबग मेनू';
	@override String get bgTaskStarted => 'पृष्ठभूमि कार्य शुरू हुआ - लॉग जाँचें।';
	@override String get runBgCheckNow => 'अभी पृष्ठभूमि अपडेट जाँच चलाएँ';
	@override String get versionExtractWholePage => 'पूरे पेज पर वर्शन स्ट्रिंग निष्कर्षण Regex लागू करें';
	@override String get installing => 'इंस्टॉल हो रहा है';
	@override String get skipUpdateNotifications => 'अपडेट सूचनाएं छोड़ें';
	@override String get updatesAvailableNotifChannel => 'अपडेट उपलब्ध हैं';
	@override String get appsUpdatedNotifChannel => 'ऐप्स अपडेट हो गए';
	@override String get appsPossiblyUpdatedNotifChannel => 'ऐप अपडेट का प्रयास किया गया';
	@override String get errorCheckingUpdatesNotifChannel => 'अपडेट की जाँच करने में त्रुटि';
	@override String get appsRemovedNotifChannel => 'ऐप्स हटा दिए गए';
	@override String get downloadingXNotifChannel => '{} डाउनलोड हो रहा है';
	@override String get completeAppInstallationNotifChannel => 'ऐप इंस्टॉलेशन पूरा करें';
	@override String get checkingForUpdatesNotifChannel => 'अपडेट की जाँच हो रही है';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'केवल इंस्टॉल किए गए और ट्रैक-ओनली ऐप्स के अपडेट की जाँच करें';
	@override String get supportFixedAPKURL => 'निश्चित (Fixed) APK URL का समर्थन करें';
	@override String get selectX => '{} चुनें';
	@override String get parallelDownloads => 'समानांतर डाउनलोड की अनुमति दें';
	@override String get useShizuku => 'इंस्टॉल करने के लिए Shizuku या Sui का उपयोग करें';
	@override String get shizukuBinderNotFound => 'Shizuku सेवा नहीं चल रही है';
	@override String get shizukuOld => 'पुराना Shizuku वर्शन (<11) - इसे अपडेट करें';
	@override String get shizukuOldAndroidWithADB => 'ADB के साथ Android < 8.1 पर Shizuku चल रहा है - Android अपडेट करें या इसके बजाय Sui का उपयोग करें';
	@override String get shizukuPretendToBeGooglePlay => 'Google Play को इंस्टॉलेशन स्रोत के रूप में सेट करें (यदि Shizuku का उपयोग किया जाता है)';
	@override String get useSystemFont => 'सिस्टम फ़ॉन्ट का उपयोग करें';
	@override String get useVersionCodeAsOSVersion => 'ऐप के वर्शनकोड को OS-पहचाने गए वर्शन के रूप में उपयोग करें';
	@override String get requestHeader => 'अनुरोध हेडर (Request header)';
	@override String get useLatestAssetDateAsReleaseDate => 'नवीनतम एसेट अपलोड को रिलीज़ की तारीख के रूप में उपयोग करें';
	@override String get defaultPseudoVersioningMethod => 'डिफ़ॉल्ट छद्म-वर्शनिंग विधि';
	@override String get partialAPKHash => 'आंशिक APK हैश';
	@override String get APKLinkHash => 'APK लिंक हैश';
	@override String get directAPKLink => 'सीधा APK लिंक';
	@override String get pseudoVersionInUse => 'एक छद्म-वर्शन उपयोग में है';
	@override String get installedVersion => 'इंस्टॉल किया गया';
	@override String get installed => 'इंस्टॉल किया गया';
	@override String get notInstalledApps => 'इंस्टॉल नहीं है';
	@override String get latest => 'नवीनतम';
	@override String get invertRegEx => 'नियमित अभिव्यक्ति को उल्टा (Invert) करें';
	@override String get note => 'नोट';
	@override String get selfHostedNote => '"{}" ड्रॉपडाउन का उपयोग किसी भी स्रोत के स्व-होस्ट किए गए/कस्टम इंस्टेंस तक पहुँचने के लिए किया जा सकता है।';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK को पार्स नहीं किया जा सका (असंगत या अधूरा डाउनलोड)';
	@override String get beforeNewInstallsShareToAppVerifier => 'नए ऐप्स को AppVerifier के साथ साझा करें (यदि उपलब्ध हो)';
	@override String get appVerifierInstructionToast => 'AppVerifier पर साझा करें, फिर तैयार होने पर यहाँ वापस आएँ।';
	@override String get wiki => 'सहायता/विकी';
	@override String get wikiHint => 'Updatium विकी दस्तावेज़ खोलें';
	@override String get allowInsecure => 'असुरक्षित HTTP अनुरोधों की अनुमति दें';
	@override String get stayOneVersionBehind => 'नवीनतम से एक वर्शन पीछे रहें';
	@override String get useFirstApkOfVersion => 'एक ही वर्शन के कई APK होने पर पहले वाले को स्वतः चुनें';
	@override String get refreshBeforeDownload => 'डाउनलोड करने से पहले ऐप विवरण रीफ़्रेश करें';
	@override String get tencentAppStore => 'Tencent ऐप स्टोर';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo ऐप स्टोर (CN)';
	@override String get name => 'नाम';
	@override String get smartname => 'नाम (स्मार्ट)';
	@override String get smartPlusDate => 'स्मार्ट + तारीख';
	@override String get sortMethod => 'सॉर्ट विधि';
	@override String get welcome => 'स्वागत है';
	@override String get batteryOptimizationNote => 'ध्यान दें कि यदि आप Updatium सेटिंग्स में "फ़ोरग्राउंड सेवा" (foreground service) पर स्विच करते हैं और/या अपनी OS सेटिंग्स में Updatium के लिए बैटरी अनुकूलन अक्षम करते हैं, तो पृष्ठभूमि डाउनलोड अधिक विश्वसनीय रूप से काम कर सकते हैं।';
	@override String get fileDeletionError => 'फ़ाइल हटाने में विफल (इसे मैन्युअल रूप से हटाने का प्रयास करें फिर पुनः प्रयास करें): "{}"';
	@override String get foregroundService => 'Updatium फ़ोरग्राउंड सेवा';
	@override String get foregroundServiceExplanation => 'अपडेट जाँच के लिए फ़ोरग्राउंड सेवा का उपयोग करें (अधिक विश्वसनीय, अधिक बिजली की खपत करता है)';
	@override String get fgServiceNotice => 'पृष्ठभूमि अपडेट जाँच के लिए यह अधिसूचना आवश्यक है (इसे OS सेटिंग्स में छिपाया जा सकता है)';
	@override String get excludeSecrets => 'गोपनीय जानकारी (secrets) बाहर रखें';
	@override String get GHReqPrefix => 'GitHub अनुरोधों के लिए \'omeritzics/Updatium\' इंस्टेंस';
	@override String get includeZips => 'ZIP फ़ाइलें शामिल करें';
	@override String get zippedApkFilterRegEx => 'ZIP के अंदर APK फ़िल्टर करें';
	@override String get multipleSigners => 'एकाधिक हस्ताक्षरकर्ता (Multiple Signers)';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: 'ऐप हटाएँ?',
		other: 'ऐप्स हटाएँ?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: 'बहुत अधिक अनुरोध (रेट लिमिटेड) - {count} मिनट में पुनः प्रयास करें',
		other: 'बहुत अधिक अनुरोध (रेट लिमिटेड) - {count} मिनट में पुनः प्रयास करें',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: 'पृष्ठभूमि अपडेट जाँच में एक {error} त्रुटि आई, {count} मिनट में पुनः प्रयास निर्धारित किया जाएगा',
		other: 'पृष्ठभूमि अपडेट जाँच में एक {error} त्रुटि आई, {count} मिनट में पुनः प्रयास निर्धारित किया जाएगा',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: 'पृष्ठभूमि अपडेट जाँच में {count} अपडेट मिला - यदि आवश्यक हो तो उपयोगकर्ता को सूचित किया जाएगा',
		other: 'पृष्ठभूमि अपडेट जाँच में {count} अपडेट मिले - यदि आवश्यक हो तो उपयोगकर्ता को सूचित किया जाएगा',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{count} ऐप',
		other: '{count} ऐप्स',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{count} URL',
		other: '{count} URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{count} मिनट',
		other: '{count} मिनट',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{count} घंटा',
		other: '{count} घंटे',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{count} दिन',
		other: '{count} दिन',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{n} लॉग साफ़ किया गया (पहले = {before}, बाद में = {after})',
		other: '{n} लॉग साफ़ किए गए (पहले = {before}, बाद में = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{app} और 1 अन्य ऐप के लिए अपडेट हैं।',
		other: '{app} और {count} अन्य ऐप्स के लिए अपडेट हैं।',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{app} और 1 अन्य ऐप अपडेट किया गया था।',
		other: '{app} और {count} अन्य ऐप्स अपडेट किए गए थे।',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{app} और 1 अन्य ऐप को अपडेट करने में विफल।',
		other: '{app} और {count} अन्य ऐप्स को अपडेट करने में विफल।',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{app} और 1 अन्य ऐप संभवतः अपडेट हो गया होगा।',
		other: '{app} और {count} अन्य ऐप्स संभवतः अपडेट हो गए होंगे।',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n,
		one: 'प्रमाणपत्र हैश',
		other: 'प्रमाणपत्र हैश',
	);
	@override String get securityDisclaimerTitle => 'सुरक्षा और कानूनी अस्वीकरण';
	@override String get license => 'लाइसेंस';
	@override String get licenseText => 'यह एप्लिकेशन GPL v3 लाइसेंस के तहत वितरित किया गया है।';
	@override String get disclaimer => 'अस्वीकरण';
	@override String get disclaimerText => 'यह एप्लिकेशन किसी भी बाहरी एप्लिकेशन को वितरित, होस्ट या सत्यापित नहीं करता है। इस टूल के माध्यम से इंस्टॉल किए गए किसी भी सॉफ़्टवेयर की सुरक्षा और वैधता के लिए उपयोगकर्ता पूरी तरह से जिम्मेदार है।\n\nUpdatium डाउनलोड करने के लिए https://github.com/omeritzics/Updatium ही एकमात्र आधिकारिक स्थान है - इसे कहीं और से डाउनलोड करना हतोत्साहित किया जाता है क्योंकि अनौपचारिक स्रोत असुरक्षित होते हैं।';
	@override String get privacy => 'गोपनीयता';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'स्वीकार करें और जारी रखें';
	@override String get decline => 'अस्वीकार करें';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Updatium पसंद आ रहा है?';
	@override String get githubStarPromptContent => 'Updatium एक स्वैच्छिक, ओपन-सोर्स सामुदायिक प्रोजेक्ट है जिसे मेरे खाली समय में विकसित किया गया है। यदि आप प्रोजेक्ट का समर्थन करना चाहते हैं, तो कृपया अधिक उपयोगकर्ताओं और योगदानकर्ताओं तक पहुँचने में हमारी सहायता के लिए इसे GitHub पर स्टार देने पर विचार करें। इसके बारे में आपको दोबारा नहीं टोका जाएगा। अग्रिम धन्यवाद! :)';
	@override String get githubStarPromptStar => 'स्टार दें';
	@override String get githubStarPromptDontShowAgain => 'दोबारा न दिखाएं';
	@override String get sourceCode => 'सोर्स कोड';
	@override String get developedBy => 'द्वारा विकसित';
	@override String get appDescription => 'एक अनुकूलन योग्य Android ऐप कैटलॉग जो आपको सीधे उनके APK स्रोतों से अपने ऐप्स को अपडेट करने की अनुमति देता है।';
	@override String get safeModeEnabled => 'सेफ मोड सक्षम है';
	@override String get safeModeDisabled => 'सेफ मोड अक्षम है';
	@override String get safeModeDisable => 'सेफ मोड अक्षम करें';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'सेफ मोड प्रशासन';
	@override String get safeModeSetupDescription => 'सेफ मोड सक्षम करने के लिए एक पासवर्ड सेट करें। एक बार सक्षम होने के बाद, सेफ मोड नए ऐप्स जोड़ने से रोकता है और इसे केवल पासवर्ड से ही अक्षम किया जा सकता है।';
	@override String get safeModeToggleDescription => 'सेफ मोड को चालू या बंद करने के लिए अपना पासवर्ड दर्ज करें।';
	@override String get safeModeSetPassword => 'पासवर्ड सेट करें';
	@override String get safeModeConfirmPassword => 'पासवर्ड की पुष्टि करें';
	@override String get safeModeEnterPassword => 'पासवर्ड दर्ज करें';
	@override String get safeModePasswordHint => 'न्यूनतम 8 वर्ण';
	@override String get safeModePasswordTooShort => 'पासवर्ड कम से कम 8 वर्णों का होना चाहिए';
	@override String get safeModePasswordMismatch => 'पासवर्ड मेल नहीं खाते';
	@override String get safeModePasswordIncorrect => 'गलत पासवर्ड';
	@override String get safeModePasswordError => 'पासवर्ड सेट करने में त्रुटि। कृपया पुनः प्रयास करें।';
	@override String get safeModeEnable => 'सेफ मोड सक्षम करें';
	@override String get safeModeToggle => 'सेफ मोड अक्षम करें';
	@override String get safeModeTapsRemaining => 'सेफ मोड अक्षम करने के लिए {count} टैप शेष हैं';
	@override String get safeModeEnabledHint => 'सेफ मोड सक्षम है। अक्षम करने के लिए सेटिंग्स में वर्शन नंबर पर कई बार टैप करें।';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'समझ गया';
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

/// The flat map containing all translations for locale <hi>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHi {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'एक मान्य {} ऐप URL नहीं है',
			'noReleaseFound' => 'कोई उपयुक्त रिलीज़ नहीं मिली',
			'noVersionFound' => 'रिलीज़ वर्शन निर्धारित नहीं किया जा सका',
			'urlMatchesNoSource' => 'URL किसी ज्ञात स्रोत से मेल नहीं खाता',
			'cantInstallOlderVersion' => 'ऐप का पुराना वर्शन इंस्टॉल नहीं किया जा सकता',
			'appIdMismatch' => 'डाउनलोड किया गया पैकेज ID मौजूदा ऐप ID से मेल नहीं खाता',
			'functionNotImplemented' => 'इस क्लास ने इस फ़ंक्शन को लागू नहीं किया है',
			'placeholder' => 'प्लेसहोल्डर',
			'someErrors' => 'कुछ त्रुटियाँ हुईं',
			'unexpectedError' => 'अप्रत्याशित त्रुटि',
			'ok' => 'ठीक है',
			'and' => 'और',
			'githubPATLabel' => 'GitHub पर्सनल एक्सेस टोकन',
			'includePrereleases' => 'प्री-रिलीज़ शामिल करें',
			'fallbackToOlderReleases' => 'पुरानी रिलीज़ पर वापस जाएँ',
			'filterReleaseTitlesByRegEx' => 'नियमित अभिव्यक्ति (RegEx) द्वारा रिलीज़ शीर्षक फ़िल्टर करें',
			'invalidRegEx' => 'अमान्य नियमित अभिव्यक्ति',
			'noDescription' => 'कोई विवरण नहीं',
			'cancel' => 'रद्द करें',
			'kContinue' => 'जारी रखें',
			'requiredInBrackets' => '(आवश्यक)',
			'dropdownNoOptsError' => 'त्रुटि: ड्रॉपडाउन में कम से कम एक विकल्प होना चाहिए',
			'color' => 'रंग',
			'standard' => 'मानक',
			'custom' => 'कस्टम',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You रंगों का उपयोग करें',
			'githubStarredRepos' => 'GitHub तारांकित (starred) रिपॉजिटरी',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'यूज़रनेम',
			'wrongArgNum' => 'गलत संख्या में तर्क (arguments) दिए गए',
			'xIsTrackOnly' => '{} केवल ट्रैक-ओनली है',
			'source' => 'स्रोत',
			'app' => 'ऐप',
			'appsFromSourceAreTrackOnly' => 'इस स्रोत के ऐप्स \'केवल-ट्रैक\' (track-only) हैं।',
			'youPickedTrackOnly' => 'आपने \'केवल-ट्रैक\' विकल्प चुना है।',
			'trackOnlyAppDescription' => 'ऐप को अपडेट के लिए ट्रैक किया जाएगा, लेकिन Updatium इसे डाउनलोड या इंस्टॉल नहीं कर पाएगा।',
			'cancelled' => 'रद्द कर दिया गया',
			'appAlreadyAdded' => 'ऐप पहले ही जोड़ा जा चुका है',
			'alreadyUpToDateQuestion' => 'ऐप पहले से ही अपडेट है?',
			'addApp' => 'ऐप जोड़ें',
			'appSourceURL' => 'ऐप स्रोत URL',
			'error' => 'त्रुटि',
			'add' => 'जोड़ें',
			'advanced' => 'उन्नत',
			'searchSomeSourcesLabel' => 'खोजें (केवल कुछ स्रोत)',
			'search' => 'खोजें',
			'searching' => 'Searching',
			'additionalOptsFor' => '{} के लिए अतिरिक्त विकल्प',
			'supportedSources' => 'समर्थित स्रोत',
			'trackOnlyInBrackets' => '(केवल-ट्रैक)',
			'searchableInBrackets' => '(खोजने योग्य)',
			'appsString' => 'ऐप्स',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'स्वागत है!',
			'noAppsSubtext' => 'आप नीचे \'ऐप जोड़ें\' पर टैप करके अपना पहला ऐप जोड़ सकते हैं।',
			'noAppsForFilter' => 'फ़िल्टर के लिए कोई ऐप नहीं',
			'byX' => '{} द्वारा',
			'percentProgress' => 'प्रगति: {}%',
			'pleaseWait' => 'कृपया प्रतीक्षा करें',
			'updateAvailable' => 'अपडेट उपलब्ध है',
			'notInstalled' => 'इंस्टॉल नहीं है',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'छद्म-वर्शन (pseudo-version)',
			'selectAll' => 'सभी चुनें',
			'deselectX' => '{} को अचयनित करें',
			'xWillBeRemovedButRemainInstalled' => '{} को Updatium से हटा दिया जाएगा लेकिन डिवाइस पर इंस्टॉल रहेगा।',
			'removeSelectedAppsQuestion' => 'चुने गए ऐप्स हटाएँ?',
			'removeSelectedApps' => 'चुने गए ऐप्स हटाएँ',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} अपडेट करें',
			'installX' => '{} इंस्टॉल करें',
			'markXTrackOnlyAsUpdated' => '{}\n(केवल-ट्रैक)\nको अपडेटेड के रूप में चिह्नित करें',
			'changeX' => '{} बदलें',
			'installUpdateApps' => 'ऐप्स इंस्टॉल/अपडेट करें',
			'installUpdateSelectedApps' => 'चुने गए ऐप्स इंस्टॉल/अपडेट करें',
			'markXSelectedAppsAsUpdated' => 'क्या {} चयनित ऐप्स को अपडेटेड के रूप में चिह्नित करें?',
			'no' => 'नहीं',
			'yes' => 'हाँ',
			'markSelectedAppsUpdated' => 'चयनित ऐप्स को अपडेटेड के रूप में चिह्नित करें',
			'pinToTop' => 'ऊपर पिन करें',
			'unpinFromTop' => 'ऊपर से अनपिन करें',
			'resetInstallStatusForSelectedAppsQuestion' => 'चयनित ऐप्स के लिए इंस्टॉल स्थिति रीसेट करें?',
			'installStatusOfXWillBeResetExplanation' => 'चयनित ऐप्स की इंस्टॉल स्थिति रीसेट कर दी जाएगी।\n\nयह तब मदद कर सकता है जब विफल अपडेट या अन्य समस्याओं के कारण Updatium में दिखाया गया ऐप वर्शन गलत हो।',
			'customLinkMessage' => 'ये लिंक उन डिवाइस पर काम करते हैं जिनमें Updatium इंस्टॉल है',
			'shareAppConfigLinks' => 'HTML लिंक के रूप में ऐप कॉन्फ़िगरेशन साझा करें',
			'resetInstallStatus' => 'इंस्टॉल स्थिति रीसेट करें',
			'more' => 'अधिक',
			'removeOutdatedFilter' => 'पुराने ऐप फ़िल्टर को हटाएँ',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'केवल पुराने ऐप दिखाएं',
			'filter' => 'फ़िल्टर',
			'filterApps' => 'ऐप्स फ़िल्टर करें',
			'filterDays' => 'Filter days',
			'appName' => 'ऐप का नाम',
			'author' => 'लेखक',
			'upToDateApps' => 'अप-टू-डेट ऐप्स',
			'nonInstalledApps' => 'गैर-इंस्टॉल किए गए ऐप्स',
			'importExport' => 'आयात/निर्यात',
			'settings' => 'सेटिंग्स',
			'exportedTo' => '{} पर निर्यात किया गया',
			'updatiumExport' => 'Updatium निर्यात',
			'failedToExport' => 'निर्यात करने में विफल',
			'exportAlreadyInProgress' => 'निर्यात पहले से ही प्रगति पर है',
			'exportDirNotAccessible' => 'निर्यात निर्देशिका (directory) सुलभ नहीं है',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'निर्यात फ़ाइल बनाने में विफल',
			'invalidInput' => 'अमान्य इनपुट',
			'importedX' => '{} आयात किया गया',
			'updatiumImport' => 'Updatium आयात',
			'importFromURLList' => 'URL सूची से आयात करें',
			'searchQuery' => 'खोज क्वेरी',
			'appURLList' => 'ऐप URL सूची',
			'line' => 'लाइन',
			'searchX' => '{} खोजें',
			'noResults' => 'कोई परिणाम नहीं मिला',
			'importX' => '{} आयात करें',
			'importedAppsIdDisclaimer' => 'आयात किए गए ऐप गलत तरीके से "इंस्टॉल नहीं है" के रूप में दिखाई दे सकते हैं।\nइसे ठीक करने के लिए, उन्हें Updatium के माध्यम से फिर से इंस्टॉल करें।\nइससे ऐप डेटा प्रभावित नहीं होना चाहिए।\n\nकेवल URL और तृतीय-पक्ष आयात विधियों को प्रभावित करता है।',
			'importErrors' => 'आयात त्रुटियाँ',
			'importedXOfYApps' => '{} में से {} ऐप आयात किए गए।',
			'followingURLsHadErrors' => 'निम्नलिखित URL में त्रुटियाँ थीं:',
			'selectURL' => 'URL चुनें',
			'selectURLs' => 'URL चुनें',
			'pick' => 'चुनें',
			'theme' => 'थीम',
			'dark' => 'डार्क',
			'light' => 'लाइट',
			'followSystem' => 'सिस्टम का पालन करें',
			'followSystemThemeExplanation' => 'सिस्टम थीम का पालन केवल तृतीय-पक्ष एप्लिकेशन का उपयोग करके ही संभव है',
			'useBlackTheme' => 'शुद्ध काले (Pure Black) डार्क थीम का उपयोग करें',
			'appSortBy' => 'ऐप को इसके अनुसार क्रमबद्ध करें',
			'authorName' => 'लेखक/नाम',
			'nameAuthor' => 'नाम/लेखक',
			'asAdded' => 'जोड़ने के क्रम में',
			'appSortOrder' => 'ऐप सॉर्ट क्रम',
			'ascending' => 'आरोही (Ascending)',
			'descending' => 'अवरोही (Descending)',
			'bgUpdateCheckInterval' => 'पृष्ठभूमि (Background) अपडेट जाँच अंतराल',
			'neverManualOnly' => 'कभी नहीं - केवल मैन्युअल',
			'appearance' => 'दिखावट',
			'pinUpdates' => 'अपडेट को ऐप दृश्य के शीर्ष पर पिन करें',
			'updates' => 'अपडेट',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'स्रोत-विशिष्ट',
			'appSource' => 'ऐप स्रोत',
			'appSourceHint' => 'ऐप स्रोत रिपॉजिटरी खोलें',
			'noLogs' => 'कोई लॉग नहीं',
			'appLogs' => 'ऐप लॉग',
			'appLogsHint' => 'एप्लिकेशन लॉग देखें',
			'close' => 'बंद करें',
			'share' => 'साझा करें',
			'appNotFound' => 'ऐप नहीं मिला',
			'networkError' => 'नेटवर्क कनेक्शन विफल रहा',
			'invalidUrlFormat' => 'अमान्य URL प्रारूप',
			'accessDenied' => 'पहुँच अस्वीकृत',
			'importFailed' => 'आयात विफल रहा',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'एक APK चुनें',
			'appHasMoreThanOnePackage' => '{} में एक से अधिक पैकेज हैं:',
			'deviceSupportsXArch' => 'आपका डिवाइस {} CPU आर्किटेक्चर का समर्थन करता है।',
			'deviceSupportsFollowingArchs' => 'आपका डिवाइस निम्नलिखित CPU आर्किटेक्चर का समर्थन करता है:',
			'warning' => 'चेतावनी',
			'sourceIsXButPackageFromYPrompt' => 'ऐप का स्रोत \'{}\' है लेकिन रिलीज़ पैकेज \'{}\' से आता है। जारी रखें?',
			'updatesAvailable' => 'अपडेट उपलब्ध हैं',
			'updatesAvailableNotifDescription' => 'उपयोगकर्ता को सूचित करता है कि Updatium द्वारा ट्रैक किए गए एक या अधिक ऐप्स के लिए अपडेट उपलब्ध हैं',
			'noNewUpdates' => 'कोई नया अपडेट नहीं।',
			'xHasAnUpdate' => '{} के लिए एक अपडेट है।',
			'appsUpdated' => 'ऐप्स अपडेट हो गए',
			'appsNotUpdated' => 'एप्लिकेशन अपडेट करने में विफल',
			'appsUpdatedNotifDescription' => 'उपयोगकर्ता को सूचित करता है कि एक या अधिक ऐप्स के अपडेट पृष्ठभूमि में लागू किए गए थे',
			'xWasUpdatedToY' => '{} को {} पर अपडेट किया गया था।',
			'xWasNotUpdatedToY' => '{} को {} पर अपडेट करने में विफल।',
			'errorCheckingUpdates' => 'अपडेट की जाँच करने में त्रुटि',
			'errorCheckingUpdatesNotifDescription' => 'एक अधिसूचना जो पृष्ठभूमि अपडेट जाँच विफल होने पर दिखाई देती है',
			'appsRemoved' => 'ऐप्स हटा दिए गए',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'उपयोगकर्ता को सूचित करता है कि लोड करते समय त्रुटियों के कारण एक या अधिक ऐप्स हटा दिए गए थे',
			'xWasRemovedDueToErrorY' => '{} को इस त्रुटि के कारण हटा दिया गया था: {}',
			'completeAppInstallation' => 'ऐप इंस्टॉलेशन पूरा करें',
			'updatiumMustBeOpenToInstallApps' => 'ऐप्स इंस्टॉल करने के लिए Updatium खुला होना चाहिए',
			'completeAppInstallationNotifDescription' => 'उपयोगकर्ता से ऐप इंस्टॉल करना समाप्त करने के लिए Updatium पर लौटने के लिए कहता है',
			'checkingForUpdates' => 'अपडेट की जाँच हो रही है',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'अपडेट की जाँच करते समय दिखाई देने वाली अस्थायी अधिसूचना',
			'pleaseAllowInstallPerm' => 'कृपया Updatium को ऐप इंस्टॉल करने की अनुमति दें',
			'trackOnly' => 'केवल-ट्रैक',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'त्रुटि {}',
			'versionCorrectionDisabled' => 'वर्शन सुधार अक्षम है (प्लगइन काम नहीं कर रहा है)',
			'unknown' => 'अज्ञात',
			'none' => 'कोई नहीं',
			'all' => 'सभी',
			'never' => 'कभी नहीं',
			'latestVersion' => 'नवीनतम',
			'installedVersionX' => 'इंस्टॉल किया गया: {}',
			'lastUpdateCheckX' => 'पिछली अपडेट जाँच: {}',
			'remove' => 'हटाएँ',
			'quickLinks' => 'त्वरित लिंक',
			'yesMarkUpdated' => 'हाँ, अपडेटेड के रूप में चिह्नित करें',
			'fdroid' => 'F-Droid आधिकारिक',
			'appIdOrName' => 'ऐप ID या नाम',
			'appId' => 'ऐप ID',
			'appWithIdOrNameNotFound' => 'उस ID या नाम के साथ कोई ऐप नहीं मिला',
			'reposHaveMultipleApps' => 'रिपॉजिटरी में कई ऐप हो सकते हैं',
			'fdroidThirdPartyRepo' => 'F-Droid तृतीय-पक्ष रिपॉजिटरी',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'इंस्टॉल करें',
			'markInstalled' => 'इंस्टॉल के रूप में चिह्नित करें',
			'update' => 'अपडेट करें',
			'updated' => 'अपडेट किया गया',
			'markUpdated' => 'अपडेट के रूप में चिह्नित करें',
			'download' => 'Download',
			'additionalOptions' => 'अतिरिक्त विकल्प',
			'disableVersionDetection' => 'वर्शन डिटेक्शन अक्षम करें',
			'noVersionDetectionExplanation' => 'इस विकल्प का उपयोग केवल उन ऐप्स के लिए किया जाना चाहिए जहाँ वर्शन डिटेक्शन सही ढंग से काम नहीं करता है।',
			'downloadingX' => '{} डाउनलोड हो रहा है',
			'downloadX' => '{} डाउनलोड करें',
			'downloadedX' => '{} डाउनलोड किया गया',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'रिलीज़ एसेट',
			'downloadNotifDescription' => 'ऐप डाउनलोड करने की प्रगति के बारे में उपयोगकर्ता को सूचित करता है',
			'noAPKFound' => 'कोई APK नहीं मिला',
			'noVersionDetection' => 'कोई वर्शन डिटेक्शन नहीं',
			'categorize' => 'श्रेणीबद्ध करें',
			'categories' => 'श्रेणियाँ',
			'category' => 'श्रेणी',
			'noCategory' => 'कोई श्रेणी नहीं',
			'noCategories' => 'कोई श्रेणी नहीं है',
			'categoryDeleteQuestion' => 'श्रेणियाँ हटाएँ?',
			'categoryDeleteWarning' => 'हटाए गए श्रेणियों के सभी ऐप्स को बिना श्रेणी के (uncategorized) सेट कर दिया जाएगा।',
			'addCategory' => 'श्रेणी जोड़ें',
			'label' => 'लेबल',
			'language' => 'भाषा',
			'copiedToClipboard' => 'क्लिपबोर्ड पर कॉपी किया गया',
			'storagePermissionDenied' => 'स्टोरेज अनुमति अस्वीकृत',
			'selectedCategorizeWarning' => 'यह चयनित ऐप्स के लिए किसी भी मौजूदा श्रेणी सेटिंग्स को बदल देगा।',
			'filterAPKsByRegEx' => 'नियमित अभिव्यक्ति (RegEx) द्वारा APK फ़िल्टर करें',
			'removeFromUpdatium' => 'Updatium से हटाएँ',
			'uninstallFromDevice' => 'डिवाइस से अनइंस्टॉल करें',
			'onlyWorksWithNonVersionDetectApps' => 'केवल उन ऐप्स के लिए काम करता है जिनका वर्शन डिटेक्शन अक्षम है।',
			'releaseDateAsVersion' => 'रिलीज़ की तारीख को वर्शन स्ट्रिंग के रूप में उपयोग करें',
			'releaseTitleAsVersion' => 'रिलीज़ शीर्षक को वर्शन स्ट्रिंग के रूप में उपयोग करें',
			'releaseDateAsVersionExplanation' => 'इस विकल्प का उपयोग केवल उन ऐप्स के लिए किया जाना चाहिए जहाँ वर्शन डिटेक्शन सही ढंग से काम नहीं करता है, लेकिन रिलीज़ की तारीख उपलब्ध है।',
			'changes' => 'बदलाव',
			'releaseDate' => 'रिलीज़ की तारीख',
			'importFromURLsInFile' => 'फ़ाइल में URL से आयात करें (जैसे OPML)',
			'versionDetectionExplanation' => 'OS से पहचाने गए वर्शन के साथ वर्शन स्ट्रिंग का मिलान करें',
			'versionDetection' => 'वर्शन डिटेक्शन',
			'standardVersionDetection' => 'मानक वर्शन डिटेक्शन',
			'groupByCategory' => 'श्रेणी के अनुसार समूह बनाएँ',
			'listView' => 'सूची दृश्य',
			'gridView' => 'ग्रिड दृश्य',
			'autoApkFilterByArch' => 'यदि संभव हो तो CPU आर्किटेक्चर द्वारा APK को फ़िल्टर करने का प्रयास करें',
			'autoLinkFilterByArch' => 'यदि संभव हो तो CPU आर्किटेक्चर द्वारा लिंक को फ़िल्टर करने का प्रयास करें',
			'overrideSource' => 'स्रोत ओवरराइड करें',
			'dontShowAgain' => 'इसे दोबारा न दिखाएं',
			'dontShowTrackOnlyWarnings' => '\'केवल-ट्रैक\' चेतावनियाँ न दिखाएं',
			'dontShowAPKOriginWarnings' => 'APK मूल (origin) चेतावनियाँ न दिखाएं',
			'moveNonInstalledAppsToBottom' => 'बिना इंस्टॉल किए गए ऐप्स को ऐप दृश्य के नीचे ले जाएँ',
			'gitlabPATLabel' => 'GitLab व्यक्तिगत एक्सेस टोकन',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'के बारे में',
			'requiresCredentialsInSettings' => '{} को अतिरिक्त क्रेडेंशियल की आवश्यकता है (सेटिंग्स में)',
			'checkOnStart' => 'स्टार्टअप पर अपडेट के लिए जाँच करें',
			'safeMode' => 'सेफ मोड',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'सेफ मोड में \'ऐप जोड़ें\' अक्षम है',
			'tryInferAppIdFromCode' => 'सोर्स कोड से ऐप ID का अनुमान लगाने का प्रयास करें',
			'removeOnExternalUninstall' => 'बाहरी रूप से अनइंस्टॉल किए गए ऐप्स को स्वचालित रूप से हटाएँ',
			'pickHighestVersionCode' => 'उच्चतम वर्शन कोड वाला APK स्वतः चुनें',
			'checkUpdateOnDetailPage' => 'ऐप विवरण पेज खोलने पर अपडेट के लिए जाँच करें',
			'disablePageTransitions' => 'पेज ट्रांज़िशन एनिमेशन अक्षम करें',
			'reversePageTransitions' => 'पेज ट्रांज़िशन एनिमेशन उलटें',
			'minStarCount' => 'न्यूनतम स्टार गणना',
			'addInfoBelow' => 'यह जानकारी नीचे जोड़ें।',
			'addInfoInSettings' => 'यह जानकारी सेटिंग्स में जोड़ें।',
			'githubSourceNote' => 'API कुंजी का उपयोग करके GitHub रेट लिमिटिंग से बचा जा सकता है।',
			'sortByLastLinkSegment' => 'केवल लिंक के अंतिम खंड (segment) के अनुसार क्रमबद्ध करें',
			'filterReleaseNotesByRegEx' => 'RegEx द्वारा रिलीज़ नोट्स फ़िल्टर करें',
			'customLinkFilterRegex' => 'RegEx द्वारा कस्टम APK लिंक फ़िल्टर (डिफ़ॉल्ट \'.apk$\')',
			'appsPossiblyUpdated' => 'ऐप अपडेट का प्रयास किया गया',
			'appsPossiblyUpdatedNotifDescription' => 'उपयोगकर्ता को सूचित करता है कि एक या अधिक ऐप्स के अपडेट संभावित रूप से पृष्ठभूमि में लागू किए गए थे',
			'xWasPossiblyUpdatedToY' => '{} को संभवतः {} पर अपडेट किया गया होगा।',
			'enableBackgroundUpdates' => 'पृष्ठभूमि अपडेट सक्षम करें',
			'backgroundUpdateReqsExplanation' => 'सभी ऐप्स के लिए पृष्ठभूमि अपडेट संभव नहीं हो सकते हैं।',
			'backgroundUpdateLimitsExplanation' => 'पृष्ठभूमि इंस्टाल की सफलता केवल तभी निर्धारित की जा सकती है जब Updatium खोला जाता है।',
			'verifyLatestTag' => '\'नवीनतम\' (latest) टैग सत्यापित करें',
			'intermediateLinkRegex' => 'विजिट करने के लिए एक \'मध्यवर्ती\' (intermediate) लिंक के लिए फ़िल्टर करें',
			'filterByLinkText' => 'लिंक टेक्स्ट द्वारा लिंक फ़िल्टर करें',
			'matchLinksOutsideATags' => '<a> टैग के बाहर के लिंक का मिलान करें',
			'intermediateLinkNotFound' => 'मध्यवर्ती लिंक नहीं मिला',
			'intermediateLink' => 'मध्यवर्ती लिंक',
			'exemptFromBackgroundUpdates' => 'पृष्ठभूमि अपडेट से मुक्त (यदि सक्षम है)',
			'bgUpdatesOnWiFiOnly' => 'वाई-फाई पर न होने पर पृष्ठभूमि अपडेट अक्षम करें',
			'bgUpdatesWhileChargingOnly' => 'चार्ज न होने पर पृष्ठभूमि अपडेट अक्षम करें',
			'autoSelectHighestVersionCode' => 'उच्चतम वर्शनकोड APK स्वतः चुनें',
			'versionExtractionRegEx' => 'वर्शन स्ट्रिंग निष्कर्षण RegEx',
			'trimVersionString' => 'RegEx के साथ वर्शन स्ट्रिंग को ट्रिम करें',
			'matchGroupToUseForX' => '"{}" के लिए उपयोग करने के लिए मैच ग्रुप',
			'matchGroupToUse' => 'वर्शन स्ट्रिंग निष्कर्षण RegEx के लिए उपयोग करने वाला मैच ग्रुप',
			'highlightTouchTargets' => 'कम स्पष्ट टच लक्ष्यों को हाइलाइट करें',
			'pickExportDir' => 'निर्यात निर्देशिका चुनें',
			'autoExportOnChanges' => 'बदलावों पर स्वचालित रूप से निर्यात करें',
			'includeSettings' => 'सेटिंग्स शामिल करें',
			'filterVersionsByRegEx' => 'नियमित अभिव्यक्ति द्वारा वर्शन फ़िल्टर करें',
			'trySelectingSuggestedVersionCode' => 'सुझाए गए वर्शनकोड APK को चुनने का प्रयास करें',
			'dontSortReleasesList' => 'API से प्राप्त रिलीज़ क्रम को बनाए रखें',
			'reverseSort' => 'विपरीत क्रम में सॉर्ट करें',
			'takeFirstLink' => 'पहला लिंक लें',
			'skipSort' => 'सॉर्टिंग छोड़ें',
			'debugMenu' => 'डिबग मेनू',
			'bgTaskStarted' => 'पृष्ठभूमि कार्य शुरू हुआ - लॉग जाँचें।',
			'runBgCheckNow' => 'अभी पृष्ठभूमि अपडेट जाँच चलाएँ',
			'versionExtractWholePage' => 'पूरे पेज पर वर्शन स्ट्रिंग निष्कर्षण Regex लागू करें',
			'installing' => 'इंस्टॉल हो रहा है',
			'skipUpdateNotifications' => 'अपडेट सूचनाएं छोड़ें',
			'updatesAvailableNotifChannel' => 'अपडेट उपलब्ध हैं',
			'appsUpdatedNotifChannel' => 'ऐप्स अपडेट हो गए',
			'appsPossiblyUpdatedNotifChannel' => 'ऐप अपडेट का प्रयास किया गया',
			'errorCheckingUpdatesNotifChannel' => 'अपडेट की जाँच करने में त्रुटि',
			'appsRemovedNotifChannel' => 'ऐप्स हटा दिए गए',
			'downloadingXNotifChannel' => '{} डाउनलोड हो रहा है',
			'completeAppInstallationNotifChannel' => 'ऐप इंस्टॉलेशन पूरा करें',
			'checkingForUpdatesNotifChannel' => 'अपडेट की जाँच हो रही है',
			'onlyCheckInstalledOrTrackOnlyApps' => 'केवल इंस्टॉल किए गए और ट्रैक-ओनली ऐप्स के अपडेट की जाँच करें',
			'supportFixedAPKURL' => 'निश्चित (Fixed) APK URL का समर्थन करें',
			'selectX' => '{} चुनें',
			'parallelDownloads' => 'समानांतर डाउनलोड की अनुमति दें',
			'useShizuku' => 'इंस्टॉल करने के लिए Shizuku या Sui का उपयोग करें',
			'shizukuBinderNotFound' => 'Shizuku सेवा नहीं चल रही है',
			'shizukuOld' => 'पुराना Shizuku वर्शन (<11) - इसे अपडेट करें',
			'shizukuOldAndroidWithADB' => 'ADB के साथ Android < 8.1 पर Shizuku चल रहा है - Android अपडेट करें या इसके बजाय Sui का उपयोग करें',
			'shizukuPretendToBeGooglePlay' => 'Google Play को इंस्टॉलेशन स्रोत के रूप में सेट करें (यदि Shizuku का उपयोग किया जाता है)',
			'useSystemFont' => 'सिस्टम फ़ॉन्ट का उपयोग करें',
			'useVersionCodeAsOSVersion' => 'ऐप के वर्शनकोड को OS-पहचाने गए वर्शन के रूप में उपयोग करें',
			'requestHeader' => 'अनुरोध हेडर (Request header)',
			'useLatestAssetDateAsReleaseDate' => 'नवीनतम एसेट अपलोड को रिलीज़ की तारीख के रूप में उपयोग करें',
			'defaultPseudoVersioningMethod' => 'डिफ़ॉल्ट छद्म-वर्शनिंग विधि',
			'partialAPKHash' => 'आंशिक APK हैश',
			'APKLinkHash' => 'APK लिंक हैश',
			'directAPKLink' => 'सीधा APK लिंक',
			'pseudoVersionInUse' => 'एक छद्म-वर्शन उपयोग में है',
			'installedVersion' => 'इंस्टॉल किया गया',
			'installed' => 'इंस्टॉल किया गया',
			'notInstalledApps' => 'इंस्टॉल नहीं है',
			'latest' => 'नवीनतम',
			'invertRegEx' => 'नियमित अभिव्यक्ति को उल्टा (Invert) करें',
			'note' => 'नोट',
			'selfHostedNote' => '"{}" ड्रॉपडाउन का उपयोग किसी भी स्रोत के स्व-होस्ट किए गए/कस्टम इंस्टेंस तक पहुँचने के लिए किया जा सकता है।',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK को पार्स नहीं किया जा सका (असंगत या अधूरा डाउनलोड)',
			'beforeNewInstallsShareToAppVerifier' => 'नए ऐप्स को AppVerifier के साथ साझा करें (यदि उपलब्ध हो)',
			'appVerifierInstructionToast' => 'AppVerifier पर साझा करें, फिर तैयार होने पर यहाँ वापस आएँ।',
			'wiki' => 'सहायता/विकी',
			'wikiHint' => 'Updatium विकी दस्तावेज़ खोलें',
			'allowInsecure' => 'असुरक्षित HTTP अनुरोधों की अनुमति दें',
			'stayOneVersionBehind' => 'नवीनतम से एक वर्शन पीछे रहें',
			'useFirstApkOfVersion' => 'एक ही वर्शन के कई APK होने पर पहले वाले को स्वतः चुनें',
			'refreshBeforeDownload' => 'डाउनलोड करने से पहले ऐप विवरण रीफ़्रेश करें',
			'tencentAppStore' => 'Tencent ऐप स्टोर',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo ऐप स्टोर (CN)',
			'name' => 'नाम',
			'smartname' => 'नाम (स्मार्ट)',
			'smartPlusDate' => 'स्मार्ट + तारीख',
			'sortMethod' => 'सॉर्ट विधि',
			'welcome' => 'स्वागत है',
			'batteryOptimizationNote' => 'ध्यान दें कि यदि आप Updatium सेटिंग्स में "फ़ोरग्राउंड सेवा" (foreground service) पर स्विच करते हैं और/या अपनी OS सेटिंग्स में Updatium के लिए बैटरी अनुकूलन अक्षम करते हैं, तो पृष्ठभूमि डाउनलोड अधिक विश्वसनीय रूप से काम कर सकते हैं।',
			'fileDeletionError' => 'फ़ाइल हटाने में विफल (इसे मैन्युअल रूप से हटाने का प्रयास करें फिर पुनः प्रयास करें): "{}"',
			'foregroundService' => 'Updatium फ़ोरग्राउंड सेवा',
			'foregroundServiceExplanation' => 'अपडेट जाँच के लिए फ़ोरग्राउंड सेवा का उपयोग करें (अधिक विश्वसनीय, अधिक बिजली की खपत करता है)',
			'fgServiceNotice' => 'पृष्ठभूमि अपडेट जाँच के लिए यह अधिसूचना आवश्यक है (इसे OS सेटिंग्स में छिपाया जा सकता है)',
			'excludeSecrets' => 'गोपनीय जानकारी (secrets) बाहर रखें',
			'GHReqPrefix' => 'GitHub अनुरोधों के लिए \'omeritzics/Updatium\' इंस्टेंस',
			'includeZips' => 'ZIP फ़ाइलें शामिल करें',
			'zippedApkFilterRegEx' => 'ZIP के अंदर APK फ़िल्टर करें',
			'multipleSigners' => 'एकाधिक हस्ताक्षरकर्ता (Multiple Signers)',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: 'ऐप हटाएँ?', other: 'ऐप्स हटाएँ?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: 'बहुत अधिक अनुरोध (रेट लिमिटेड) - {count} मिनट में पुनः प्रयास करें', other: 'बहुत अधिक अनुरोध (रेट लिमिटेड) - {count} मिनट में पुनः प्रयास करें', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: 'पृष्ठभूमि अपडेट जाँच में एक {error} त्रुटि आई, {count} मिनट में पुनः प्रयास निर्धारित किया जाएगा', other: 'पृष्ठभूमि अपडेट जाँच में एक {error} त्रुटि आई, {count} मिनट में पुनः प्रयास निर्धारित किया जाएगा', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: 'पृष्ठभूमि अपडेट जाँच में {count} अपडेट मिला - यदि आवश्यक हो तो उपयोगकर्ता को सूचित किया जाएगा', other: 'पृष्ठभूमि अपडेट जाँच में {count} अपडेट मिले - यदि आवश्यक हो तो उपयोगकर्ता को सूचित किया जाएगा', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{count} ऐप', other: '{count} ऐप्स', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{count} URL', other: '{count} URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{count} मिनट', other: '{count} मिनट', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{count} घंटा', other: '{count} घंटे', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{count} दिन', other: '{count} दिन', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{n} लॉग साफ़ किया गया (पहले = {before}, बाद में = {after})', other: '{n} लॉग साफ़ किए गए (पहले = {before}, बाद में = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{app} और 1 अन्य ऐप के लिए अपडेट हैं।', other: '{app} और {count} अन्य ऐप्स के लिए अपडेट हैं।', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{app} और 1 अन्य ऐप अपडेट किया गया था।', other: '{app} और {count} अन्य ऐप्स अपडेट किए गए थे।', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{app} और 1 अन्य ऐप को अपडेट करने में विफल।', other: '{app} और {count} अन्य ऐप्स को अपडेट करने में विफल।', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{app} और 1 अन्य ऐप संभवतः अपडेट हो गया होगा।', other: '{app} और {count} अन्य ऐप्स संभवतः अपडेट हो गए होंगे।', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hi'))(n, one: 'प्रमाणपत्र हैश', other: 'प्रमाणपत्र हैश', ), 
			'securityDisclaimerTitle' => 'सुरक्षा और कानूनी अस्वीकरण',
			'license' => 'लाइसेंस',
			'licenseText' => 'यह एप्लिकेशन GPL v3 लाइसेंस के तहत वितरित किया गया है।',
			'disclaimer' => 'अस्वीकरण',
			'disclaimerText' => 'यह एप्लिकेशन किसी भी बाहरी एप्लिकेशन को वितरित, होस्ट या सत्यापित नहीं करता है। इस टूल के माध्यम से इंस्टॉल किए गए किसी भी सॉफ़्टवेयर की सुरक्षा और वैधता के लिए उपयोगकर्ता पूरी तरह से जिम्मेदार है।\n\nUpdatium डाउनलोड करने के लिए https://github.com/omeritzics/Updatium ही एकमात्र आधिकारिक स्थान है - इसे कहीं और से डाउनलोड करना हतोत्साहित किया जाता है क्योंकि अनौपचारिक स्रोत असुरक्षित होते हैं।',
			'privacy' => 'गोपनीयता',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'स्वीकार करें और जारी रखें',
			'decline' => 'अस्वीकार करें',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Updatium पसंद आ रहा है?',
			'githubStarPromptContent' => 'Updatium एक स्वैच्छिक, ओपन-सोर्स सामुदायिक प्रोजेक्ट है जिसे मेरे खाली समय में विकसित किया गया है। यदि आप प्रोजेक्ट का समर्थन करना चाहते हैं, तो कृपया अधिक उपयोगकर्ताओं और योगदानकर्ताओं तक पहुँचने में हमारी सहायता के लिए इसे GitHub पर स्टार देने पर विचार करें। इसके बारे में आपको दोबारा नहीं टोका जाएगा। अग्रिम धन्यवाद! :)',
			'githubStarPromptStar' => 'स्टार दें',
			'githubStarPromptDontShowAgain' => 'दोबारा न दिखाएं',
			'sourceCode' => 'सोर्स कोड',
			'developedBy' => 'द्वारा विकसित',
			'appDescription' => 'एक अनुकूलन योग्य Android ऐप कैटलॉग जो आपको सीधे उनके APK स्रोतों से अपने ऐप्स को अपडेट करने की अनुमति देता है।',
			'safeModeEnabled' => 'सेफ मोड सक्षम है',
			'safeModeDisabled' => 'सेफ मोड अक्षम है',
			'safeModeDisable' => 'सेफ मोड अक्षम करें',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'सेफ मोड प्रशासन',
			'safeModeSetupDescription' => 'सेफ मोड सक्षम करने के लिए एक पासवर्ड सेट करें। एक बार सक्षम होने के बाद, सेफ मोड नए ऐप्स जोड़ने से रोकता है और इसे केवल पासवर्ड से ही अक्षम किया जा सकता है।',
			'safeModeToggleDescription' => 'सेफ मोड को चालू या बंद करने के लिए अपना पासवर्ड दर्ज करें।',
			'safeModeSetPassword' => 'पासवर्ड सेट करें',
			'safeModeConfirmPassword' => 'पासवर्ड की पुष्टि करें',
			'safeModeEnterPassword' => 'पासवर्ड दर्ज करें',
			'safeModePasswordHint' => 'न्यूनतम 8 वर्ण',
			'safeModePasswordTooShort' => 'पासवर्ड कम से कम 8 वर्णों का होना चाहिए',
			'safeModePasswordMismatch' => 'पासवर्ड मेल नहीं खाते',
			'safeModePasswordIncorrect' => 'गलत पासवर्ड',
			'safeModePasswordError' => 'पासवर्ड सेट करने में त्रुटि। कृपया पुनः प्रयास करें।',
			'safeModeEnable' => 'सेफ मोड सक्षम करें',
			'safeModeToggle' => 'सेफ मोड अक्षम करें',
			'safeModeTapsRemaining' => 'सेफ मोड अक्षम करने के लिए {count} टैप शेष हैं',
			'safeModeEnabledHint' => 'सेफ मोड सक्षम है। अक्षम करने के लिए सेटिंग्स में वर्शन नंबर पर कई बार टैप करें।',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'समझ गया',
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
