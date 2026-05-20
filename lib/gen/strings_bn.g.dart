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
class TranslationsBn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsBn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.bn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <bn>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsBn _root = this; // ignore: unused_field

	@override 
	TranslationsBn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsBn(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'একটি সঠিক {} অ্যাপ URL নয়';
	@override String get noReleaseFound => 'উপযুক্ত কোনো রিলিজ পাওয়া যায়নি';
	@override String get noVersionFound => 'রিলিজ ভার্সন নির্ধারণ করা সম্ভব হয়নি';
	@override String get urlMatchesNoSource => 'URL-টি কোনো পরিচিত সোর্সের সাথে মিলছে না';
	@override String get cantInstallOlderVersion => 'অ্যাপের পুরনো ভার্সন ইনস্টল করা সম্ভব নয়';
	@override String get appIdMismatch => 'ডাউনলোড করা প্যাকেজ ID বিদ্যমান অ্যাপ ID-র সাথে মিলছে না';
	@override String get functionNotImplemented => 'এই ক্লাসটি এই ফাংশনটি কার্যকর করেনি';
	@override String get placeholder => 'প্লেসহোল্ডার';
	@override String get someErrors => 'কিছু ত্রুটি ঘটেছে';
	@override String get unexpectedError => 'অপ্রত্যাশিত ত্রুটি';
	@override String get ok => 'ঠিক আছে';
	@override String get and => 'এবং';
	@override String get githubPATLabel => 'GitHub পার্সোনাল অ্যাক্সেস টোকেন';
	@override String get includePrereleases => 'প্রি-রিলিজগুলো অন্তর্ভুক্ত করুন';
	@override String get fallbackToOlderReleases => 'পুরনো রিলিজে ফিরে যান';
	@override String get filterReleaseTitlesByRegEx => 'রেগুলার এক্সপ্রেশন দিয়ে রিলিজ টাইটেল ফিল্টার করুন';
	@override String get invalidRegEx => 'অকার্যকর রেগুলার এক্সপ্রেশন';
	@override String get noDescription => 'কোনো বিবরণ নেই';
	@override String get cancel => 'বাতিল';
	@override String get kContinue => 'চালিয়ে যান';
	@override String get requiredInBrackets => '(আবশ্যক)';
	@override String get dropdownNoOptsError => 'ত্রুটি: ড্রপডাউনে অন্তত একটি অপশন থাকতে হবে';
	@override String get color => 'রঙ';
	@override String get standard => 'স্ট্যান্ডার্ড';
	@override String get custom => 'কাস্টম';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You রঙের ব্যবহার করুন';
	@override String get githubStarredRepos => 'GitHub স্টার দেওয়া রিপোজিটরি';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'ইউজারনেম';
	@override String get wrongArgNum => 'ভুল সংখ্যক আর্গুমেন্ট প্রদান করা হয়েছে';
	@override String get xIsTrackOnly => '{} শুধুমাত্র ট্র্যাক করার জন্য';
	@override String get source => 'সোর্স';
	@override String get app => 'অ্যাপ';
	@override String get appsFromSourceAreTrackOnly => 'এই সোর্সের অ্যাপগুলো শুধুমাত্র \'ট্র্যাক\' করা যাবে।';
	@override String get youPickedTrackOnly => 'আপনি \'ট্র্যাক-অনলি\' অপশনটি বেছে নিয়েছেন।';
	@override String get trackOnlyAppDescription => 'অ্যাপটি আপডেটের জন্য ট্র্যাক করা হবে, কিন্তু Updatium এটি ডাউনলোড বা ইনস্টল করতে পারবে না।';
	@override String get cancelled => 'বাতিল করা হয়েছে';
	@override String get appAlreadyAdded => 'অ্যাপটি আগেই যোগ করা হয়েছে';
	@override String get alreadyUpToDateQuestion => 'অ্যাপটি কি ইতিমধ্যে আপ-টু-ডেট?';
	@override String get addApp => 'অ্যাপ যোগ করুন';
	@override String get appSourceURL => 'অ্যাপ সোর্স URL';
	@override String get error => 'ত্রুটি';
	@override String get add => 'যোগ করুন';
	@override String get advanced => 'উন্নত (Advanced)';
	@override String get searchSomeSourcesLabel => 'অনুসন্ধান (শুধুমাত্র কিছু সোর্সের জন্য)';
	@override String get search => 'অনুসন্ধান';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{} এর জন্য অতিরিক্ত অপশন';
	@override String get supportedSources => 'সমর্থিত সোর্সসমূহ';
	@override String get trackOnlyInBrackets => '(শুধুমাত্র ট্র্যাক)';
	@override String get searchableInBrackets => '(অনুসন্ধানযোগ্য)';
	@override String get appsString => 'অ্যাপসমূহ';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'স্বাগতম!';
	@override String get noAppsSubtext => 'নিচের \'অ্যাপ যোগ করুন\' বাটনে ট্যাপ করে আপনার প্রথম অ্যাপটি যোগ করতে পারেন।';
	@override String get noAppsForFilter => 'ফিল্টার অনুযায়ী কোনো অ্যাপ নেই';
	@override String get byX => '{} দ্বারা';
	@override String get percentProgress => 'অগ্রগতি: {}%';
	@override String get pleaseWait => 'অনুগ্রহ করে অপেক্ষা করুন';
	@override String get updateAvailable => 'আপডেট উপলব্ধ';
	@override String get notInstalled => 'ইনস্টল করা নেই';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'ছদ্ম-ভার্সন';
	@override String get selectAll => 'সব নির্বাচন করুন';
	@override String get deselectX => '{} নির্বাচন বাতিল করুন';
	@override String get xWillBeRemovedButRemainInstalled => '{} Updatium থেকে সরানো হবে কিন্তু ডিভাইসে ইনস্টল করা থাকবে।';
	@override String get removeSelectedAppsQuestion => 'নির্বাচিত অ্যাপগুলো কি সরিয়ে ফেলবেন?';
	@override String get removeSelectedApps => 'নির্বাচিত অ্যাপ সরান';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} আপডেট করুন';
	@override String get installX => '{} ইনস্টল করুন';
	@override String get markXTrackOnlyAsUpdated => '{}\n(ট্র্যাক-অনলি)\nআপডেটেড হিসেবে চিহ্নিত করুন';
	@override String get changeX => '{} পরিবর্তন করুন';
	@override String get installUpdateApps => 'অ্যাপ ইনস্টল/আপডেট করুন';
	@override String get installUpdateSelectedApps => 'নির্বাচিত অ্যাপ ইনস্টল/আপডেট করুন';
	@override String get markXSelectedAppsAsUpdated => '{}টি নির্বাচিত অ্যাপ কি আপডেটেড হিসেবে চিহ্নিত করবেন?';
	@override String get no => 'না';
	@override String get yes => 'হ্যাঁ';
	@override String get markSelectedAppsUpdated => 'নির্বাচিত অ্যাপগুলো আপডেটেড হিসেবে চিহ্নিত করুন';
	@override String get pinToTop => 'উপরে পিন করুন';
	@override String get unpinFromTop => 'পিন সরান';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'নির্বাচিত অ্যাপগুলোর ইনস্টল স্ট্যাটাস রিসেট করবেন?';
	@override String get installStatusOfXWillBeResetExplanation => 'নির্বাচিত অ্যাপগুলোর ইনস্টল স্ট্যাটাস রিসেট করা হবে।\n\nব্যর্থ আপডেট বা অন্য সমস্যার কারণে Updatium-এ ভুল ভার্সন দেখালে এটি সাহায্য করতে পারে।';
	@override String get customLinkMessage => 'এই লিঙ্কগুলো শুধুমাত্র Updatium ইনস্টল করা ডিভাইসে কাজ করে';
	@override String get shareAppConfigLinks => 'অ্যাপ কনফিগারেশন HTML লিঙ্ক হিসেবে শেয়ার করুন';
	@override String get resetInstallStatus => 'ইনস্টল স্ট্যাটাস রিসেট করুন';
	@override String get more => 'আরও';
	@override String get removeOutdatedFilter => 'পুরনো অ্যাপ ফিল্টার সরান';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'শুধুমাত্র পুরনো অ্যাপ দেখান';
	@override String get filter => 'ফিল্টার';
	@override String get filterApps => 'অ্যাপ ফিল্টার করুন';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'অ্যাপের নাম';
	@override String get author => 'লেখক';
	@override String get upToDateApps => 'আপ-টু-ডেট অ্যাপসমূহ';
	@override String get nonInstalledApps => 'ইনস্টল না করা অ্যাপসমূহ';
	@override String get importExport => 'ইমপোর্ট/এক্সপোর্ট';
	@override String get settings => 'সেটিংস';
	@override String get exportedTo => '{} এ এক্সপোর্ট করা হয়েছে';
	@override String get updatiumExport => 'Updatium এক্সপোর্ট';
	@override String get failedToExport => 'এক্সপোর্ট করতে ব্যর্থ';
	@override String get exportAlreadyInProgress => 'এক্সপোর্ট ইতিমধ্যে চলছে';
	@override String get exportDirNotAccessible => 'এক্সপোর্ট ডিরেক্টরি অ্যাক্সেসযোগ্য নয়';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'এক্সপোর্ট ফাইল তৈরি করতে ব্যর্থ';
	@override String get invalidInput => 'ভুল ইনপুট';
	@override String get importedX => '{} ইমপোর্ট করা হয়েছে';
	@override String get updatiumImport => 'Updatium ইমপোর্ট';
	@override String get importFromURLList => 'URL তালিকা থেকে ইমপোর্ট করুন';
	@override String get searchQuery => 'সার্চ কোয়েরি';
	@override String get appURLList => 'অ্যাপ URL তালিকা';
	@override String get line => 'লাইন';
	@override String get searchX => '{} অনুসন্ধান করুন';
	@override String get noResults => 'কোনো ফলাফল পাওয়া যায়নি';
	@override String get importX => '{} ইমপোর্ট করুন';
	@override String get importedAppsIdDisclaimer => 'ইমপোর্ট করা অ্যাপগুলো ভুলভাবে "ইনস্টল করা নেই" দেখাতে পারে।\nএটি ঠিক করতে Updatium-এর মাধ্যমে সেগুলো পুনরায় ইনস্টল করুন।\nএতে অ্যাপের ডেটার কোনো ক্ষতি হবে না।';
	@override String get importErrors => 'ইমপোর্ট ত্রুটি';
	@override String get importedXOfYApps => '{} এর মধ্যে {} টি অ্যাপ ইমপোর্ট করা হয়েছে।';
	@override String get followingURLsHadErrors => 'নিচের URL গুলোতে ত্রুটি ছিল:';
	@override String get selectURL => 'URL নির্বাচন করুন';
	@override String get selectURLs => 'URL গুলো নির্বাচন করুন';
	@override String get pick => 'পছন্দ করুন';
	@override String get theme => 'থিম';
	@override String get dark => 'ডার্ক';
	@override String get light => 'লাইট';
	@override String get followSystem => 'সিস্টেম অনুযায়ী';
	@override String get followSystemThemeExplanation => 'সিস্টেম থিম অনুসরণ করা শুধুমাত্র থার্ড-পার্টি অ্যাপ ব্যবহার করে সম্ভব';
	@override String get useBlackTheme => 'গাঢ় কালো থিম ব্যবহার করুন';
	@override String get appSortBy => 'অ্যাপ সাজানোর ধরণ';
	@override String get authorName => 'লেখক/নাম';
	@override String get nameAuthor => 'নাম/লেখক';
	@override String get asAdded => 'যোগ করার ক্রম অনুযায়ী';
	@override String get appSortOrder => 'সাজানোর ক্রম';
	@override String get ascending => 'আরোহী (Ascending)';
	@override String get descending => 'অবরোহী (Descending)';
	@override String get bgUpdateCheckInterval => 'ব্যাকগ্রাউন্ডে আপডেট চেক করার বিরতি';
	@override String get neverManualOnly => 'কখনও না - শুধুমাত্র ম্যানুয়ালি';
	@override String get appearance => 'চেহারা (Appearance)';
	@override String get pinUpdates => 'আপডেটগুলো অ্যাপ ভিউয়ের উপরে পিন করুন';
	@override String get updates => 'আপডেটসমূহ';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'সোর্স-নির্দিষ্ট';
	@override String get appSource => 'অ্যাপ সোর্স';
	@override String get appSourceHint => 'অ্যাপ সোর্স রিপোজিটরি খুলুন';
	@override String get noLogs => 'কোনো লগ নেই';
	@override String get appLogs => 'অ্যাপ লগ';
	@override String get appLogsHint => 'অ্যাপ্লিকেশন লগ দেখুন';
	@override String get close => 'বন্ধ করুন';
	@override String get share => 'শেয়ার করুন';
	@override String get appNotFound => 'অ্যাপ পাওয়া যায়নি';
	@override String get networkError => 'নেটওয়ার্ক সংযোগ ব্যর্থ হয়েছে';
	@override String get invalidUrlFormat => 'URL-এর ফরম্যাট সঠিক নয়';
	@override String get accessDenied => 'অ্যাক্সেস অস্বীকার করা হয়েছে';
	@override String get importFailed => 'ইমপোর্ট ব্যর্থ হয়েছে';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'একটি APK বেছে নিন';
	@override String get appHasMoreThanOnePackage => '{} এ একাধিক প্যাকেজ রয়েছে:';
	@override String get deviceSupportsXArch => 'আপনার ডিভাইস {} CPU আর্কিটেকচার সমর্থন করে।';
	@override String get deviceSupportsFollowingArchs => 'আপনার ডিভাইস নিচের CPU আর্কিটেকচারগুলো সমর্থন করে:';
	@override String get warning => 'সতর্কতা';
	@override String get sourceIsXButPackageFromYPrompt => 'অ্যাপ সোর্স হলো \'{}\' কিন্তু রিলিজ প্যাকেজ আসছে \'{}\' থেকে। চালিয়ে যাবেন?';
	@override String get updatesAvailable => 'আপডেট উপলব্ধ';
	@override String get updatesAvailableNotifDescription => 'এক বা একাধিক অ্যাপের আপডেট থাকলে ব্যবহারকারীকে অবহিত করে';
	@override String get noNewUpdates => 'নতুন কোনো আপডেট নেই।';
	@override String get xHasAnUpdate => '{} এর একটি আপডেট আছে।';
	@override String get appsUpdated => 'অ্যাপ আপডেট করা হয়েছে';
	@override String get appsNotUpdated => 'অ্যাপ্লিকেশন আপডেট করতে ব্যর্থ';
	@override String get appsUpdatedNotifDescription => 'ব্যাকগ্রাউন্ডে এক বা একাধিক অ্যাপ আপডেট করা হলে ব্যবহারকারীকে জানায়';
	@override String get xWasUpdatedToY => '{} কে {} ভার্সনে আপডেট করা হয়েছে।';
	@override String get xWasNotUpdatedToY => '{} কে {} ভার্সনে আপডেট করতে ব্যর্থ।';
	@override String get errorCheckingUpdates => 'আপডেট চেক করতে ত্রুটি';
	@override String get errorCheckingUpdatesNotifDescription => 'ব্যাকগ্রাউন্ড আপডেট চেক ব্যর্থ হলে একটি বিজ্ঞপ্তি দেখায়';
	@override String get appsRemoved => 'অ্যাপ সরানো হয়েছে';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'লোড করার সময় ত্রুটির কারণে অ্যাপ সরানো হলে ব্যবহারকারীকে জানায়';
	@override String get xWasRemovedDueToErrorY => '{} সরানো হয়েছে এই ত্রুটির কারণে: {}';
	@override String get completeAppInstallation => 'অ্যাপ ইনস্টলেশন সম্পন্ন করুন';
	@override String get updatiumMustBeOpenToInstallApps => 'অ্যাপ ইনস্টল করতে Updatium খোলা থাকতে হবে';
	@override String get completeAppInstallationNotifDescription => 'অ্যাপ ইনস্টল শেষ করতে ব্যবহারকারীকে Updatium-এ ফিরে আসতে বলে';
	@override String get checkingForUpdates => 'আপডেট চেক করা হচ্ছে';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'আপডেট চেক করার সময় সাময়িক বিজ্ঞপ্তি';
	@override String get pleaseAllowInstallPerm => 'Updatium-কে অ্যাপ ইনস্টল করার অনুমতি দিন';
	@override String get trackOnly => 'শুধুমাত্র ট্র্যাক';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'ত্রুটি {}';
	@override String get versionCorrectionDisabled => 'ভার্সন সংশোধন নিষ্ক্রিয় (প্লাগইন কাজ করছে না বলে মনে হচ্ছে)';
	@override String get unknown => 'অজানা';
	@override String get none => 'কিছুই না';
	@override String get all => 'সব';
	@override String get never => 'কখনও না';
	@override String get latestVersion => 'লেটেস্ট';
	@override String get installedVersionX => 'ইনস্টল করা: {}';
	@override String get lastUpdateCheckX => 'শেষ আপডেট চেক: {}';
	@override String get remove => 'সরান';
	@override String get quickLinks => 'কুইক লিঙ্ক';
	@override String get yesMarkUpdated => 'হ্যাঁ, আপডেটেড হিসেবে চিহ্নিত করুন';
	@override String get fdroid => 'F-Droid অফিশিয়াল';
	@override String get appIdOrName => 'অ্যাপ ID বা নাম';
	@override String get appId => 'অ্যাপ ID';
	@override String get appWithIdOrNameNotFound => 'ওই ID বা নামে কোনো অ্যাপ পাওয়া যায়নি';
	@override String get reposHaveMultipleApps => 'রিপোজিটরিতে একাধিক অ্যাপ থাকতে পারে';
	@override String get fdroidThirdPartyRepo => 'F-Droid থার্ড-পার্টি রিপো';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'ইনস্টল';
	@override String get markInstalled => 'ইনস্টল করা হয়েছে হিসেবে চিহ্নিত করুন';
	@override String get update => 'আপডেট';
	@override String get updated => 'আপডেটেড';
	@override String get markUpdated => 'আপডেটেড হিসেবে চিহ্নিত করুন';
	@override String get download => 'Download';
	@override String get additionalOptions => 'অতিরিক্ত অপশন';
	@override String get disableVersionDetection => 'ভার্সন ডিটেকশন নিষ্ক্রিয় করুন';
	@override String get noVersionDetectionExplanation => 'এই অপশনটি শুধুমাত্র সেই অ্যাপগুলোর জন্য ব্যবহার করা উচিত যেগুলোর ভার্সন ডিটেকশন সঠিকভাবে কাজ করে না।';
	@override String get downloadingX => '{} ডাউনলোড হচ্ছে';
	@override String get downloadX => '{} ডাউনলোড করুন';
	@override String get downloadedX => '{} ডাউনলোড সম্পন্ন';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'রিলিজ অ্যাসেট';
	@override String get downloadNotifDescription => 'অ্যাপ ডাউনলোডের অগ্রগতি ব্যবহারকারীকে জানায়';
	@override String get noAPKFound => 'কোনো APK পাওয়া যায়নি';
	@override String get noVersionDetection => 'ভার্সন ডিটেকশন নেই';
	@override String get categorize => 'শ্রেণীবদ্ধ করুন';
	@override String get categories => 'বিভাগসমূহ';
	@override String get category => 'বিভাগ';
	@override String get noCategory => 'কোনো বিভাগ নেই';
	@override String get noCategories => 'কোনো বিভাগ নেই';
	@override String get categoryDeleteQuestion => 'বিভাগগুলো কি মুছে ফেলবেন?';
	@override String get categoryDeleteWarning => 'মুছে ফেলা বিভাগের সব অ্যাপ \'অশ্রেণীবদ্ধ\' হিসেবে সেট করা হবে।';
	@override String get addCategory => 'বিভাগ যোগ করুন';
	@override String get label => 'লেবেল';
	@override String get language => 'ভাষা';
	@override String get copiedToClipboard => 'ক্লিপবোর্ডে কপি করা হয়েছে';
	@override String get storagePermissionDenied => 'স্টোরেজ পারমিশন প্রত্যাখ্যান করা হয়েছে';
	@override String get selectedCategorizeWarning => 'এটি নির্বাচিত অ্যাপগুলোর বিদ্যমান বিভাগ সেটিংস প্রতিস্থাপন করবে।';
	@override String get filterAPKsByRegEx => 'রেগুলার এক্সপ্রেশন দিয়ে APK ফিল্টার করুন';
	@override String get removeFromUpdatium => 'Updatium থেকে সরান';
	@override String get uninstallFromDevice => 'ডিভাইস থেকে আনইনস্টল করুন';
	@override String get onlyWorksWithNonVersionDetectApps => 'শুধুমাত্র ভার্সন ডিটেকশন নিষ্ক্রিয় থাকা অ্যাপের জন্য কাজ করে।';
	@override String get releaseDateAsVersion => 'রিলিজের তারিখকে ভার্সন হিসেবে ব্যবহার করুন';
	@override String get releaseTitleAsVersion => 'রিলিজের টাইটেলকে ভার্সন হিসেবে ব্যবহার করুন';
	@override String get releaseDateAsVersionExplanation => 'এই অপশনটি শুধুমাত্র তখনই ব্যবহার করা উচিত যখন ভার্সন ডিটেকশন কাজ করে না কিন্তু রিলিজ ডেট পাওয়া যায়।';
	@override String get changes => 'পরিবর্তনসমূহ';
	@override String get releaseDate => 'রিলিজের তারিখ';
	@override String get importFromURLsInFile => 'ফাইলে থাকা URL থেকে ইমপোর্ট করুন (যেমন OPML)';
	@override String get versionDetectionExplanation => 'অপারেটিং সিস্টেম থেকে ডিটেক্ট করা ভার্সনের সাথে মেলানো';
	@override String get versionDetection => 'ভার্সন ডিটেকশন';
	@override String get standardVersionDetection => 'স্ট্যান্ডার্ড ভার্সন ডিটেকশন';
	@override String get groupByCategory => 'বিভাগ অনুযায়ী সাজান';
	@override String get listView => 'তালিকা ভিউ';
	@override String get gridView => 'গ্রিড ভিউ';
	@override String get autoApkFilterByArch => 'সম্ভব হলে CPU আর্কিটেকচার অনুযায়ী APK ফিল্টার করার চেষ্টা করুন';
	@override String get autoLinkFilterByArch => 'সম্ভব হলে CPU আর্কিটেকচার অনুযায়ী লিঙ্ক ফিল্টার করার চেষ্টা করুন';
	@override String get overrideSource => 'সোর্স ওভাররাইড করুন';
	@override String get dontShowAgain => 'এটি আর দেখাবেন না';
	@override String get dontShowTrackOnlyWarnings => '\'শুধুমাত্র-ট্র্যাক\' সতর্কতা দেখাবেন না';
	@override String get dontShowAPKOriginWarnings => 'APK সোর্স সংক্রান্ত সতর্কতা দেখাবেন না';
	@override String get moveNonInstalledAppsToBottom => 'ইনস্টল না করা অ্যাপগুলোকে তালিকার নিচে পাঠান';
	@override String get gitlabPATLabel => 'GitLab পার্সোনাল অ্যাক্সেস টোকেন';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'সম্পর্কে';
	@override String get requiresCredentialsInSettings => '{} এর জন্য অতিরিক্ত তথ্য প্রয়োজন (সেটিংসে দেখুন)';
	@override String get checkOnStart => 'অ্যাপ চালুর সময় আপডেট চেক করুন';
	@override String get safeMode => 'সেফ মোড';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'সেফ মোডে অ্যাপ যোগ করা নিষ্ক্রিয়';
	@override String get tryInferAppIdFromCode => 'সোর্স কোড থেকে অ্যাপ ID অনুমান করার চেষ্টা করুন';
	@override String get removeOnExternalUninstall => 'বাইরে থেকে আনইনস্টল করা অ্যাপ স্বয়ংক্রিয়ভাবে সরান';
	@override String get pickHighestVersionCode => 'সবচেয়ে বেশি ভার্সন কোডের APK স্বয়ংক্রিয়ভাবে বেছে নিন';
	@override String get checkUpdateOnDetailPage => 'অ্যাপ ডিটেইল পেজ খোলার সময় আপডেট চেক করুন';
	@override String get disablePageTransitions => 'পেজ ট্রানজিশন অ্যানিমেশন বন্ধ করুন';
	@override String get reversePageTransitions => 'পেজ ট্রানজিশন অ্যানিমেশন উল্টো করুন';
	@override String get minStarCount => 'নূন্যতম স্টার সংখ্যা';
	@override String get addInfoBelow => 'নিচে এই তথ্যটি যোগ করুন।';
	@override String get addInfoInSettings => 'সেটিংসে এই তথ্যটি যোগ করুন।';
	@override String get githubSourceNote => 'API কি ব্যবহার করে GitHub-এর রেট লিমিটিং এড়ানো সম্ভব।';
	@override String get sortByLastLinkSegment => 'লিঙ্কের শুধুমাত্র শেষ অংশ অনুযায়ী সাজান';
	@override String get filterReleaseNotesByRegEx => 'রেগুলার এক্সপ্রেশন দিয়ে রিলিজ নোট ফিল্টার করুন';
	@override String get customLinkFilterRegex => 'কাস্টম APK লিঙ্ক ফিল্টার রেগুলার এক্সপ্রেশন (ডিফল্ট \'.apk$\')';
	@override String get appsPossiblyUpdated => 'অ্যাপ আপডেট করার চেষ্টা করা হয়েছে';
	@override String get appsPossiblyUpdatedNotifDescription => 'ব্যাকগ্রাউন্ডে এক বা একাধিক অ্যাপ সম্ভবত আপডেট করা হয়েছে তা ব্যবহারকারীকে জানায়';
	@override String get xWasPossiblyUpdatedToY => '{} সম্ভবত {} ভার্সনে আপডেট হয়েছে।';
	@override String get enableBackgroundUpdates => 'ব্যাকগ্রাউন্ড আপডেট সক্রিয় করুন';
	@override String get backgroundUpdateReqsExplanation => 'সব অ্যাপের জন্য ব্যাকগ্রাউন্ড আপডেট সম্ভব নাও হতে পারে।';
	@override String get backgroundUpdateLimitsExplanation => 'ব্যাকগ্রাউন্ড ইনস্টলেশন সফল হয়েছে কি না তা Updatium খুললেই বোঝা যাবে।';
	@override String get verifyLatestTag => '\'Latest\' ট্যাগ যাচাই করুন';
	@override String get intermediateLinkRegex => 'পরিদর্শনের জন্য একটি \'ইন্টারমিডিয়েট\' লিঙ্ক ফিল্টার করুন';
	@override String get filterByLinkText => 'লিঙ্ক টেক্সট দিয়ে লিঙ্ক ফিল্টার করুন';
	@override String get matchLinksOutsideATags => '<a> ট্যাগের বাইরের লিঙ্কগুলো মেলান';
	@override String get intermediateLinkNotFound => 'ইন্টারমিডিয়েট লিঙ্ক পাওয়া যায়নি';
	@override String get intermediateLink => 'ইন্টারমিডিয়েট লিঙ্ক';
	@override String get exemptFromBackgroundUpdates => 'ব্যাকগ্রাউন্ড আপডেট থেকে অব্যাহতি দিন (সক্রিয় থাকলে)';
	@override String get bgUpdatesOnWiFiOnly => 'ওয়াই-ফাই না থাকলে ব্যাকগ্রাউন্ড আপডেট বন্ধ রাখুন';
	@override String get bgUpdatesWhileChargingOnly => 'চার্জ না হলে ব্যাকগ্রাউন্ড আপডেট বন্ধ রাখুন';
	@override String get autoSelectHighestVersionCode => 'স্বয়ংক্রিয়ভাবে সর্বোচ্চ ভার্সন কোডের APK বেছে নিন';
	@override String get versionExtractionRegEx => 'ভার্সন স্ট্রিং এক্সট্রাকশন RegEx';
	@override String get trimVersionString => 'RegEx দিয়ে ভার্সন স্ট্রিং ট্রিম করুন';
	@override String get matchGroupToUseForX => '"{}" এর জন্য ম্যাচ গ্রুপ ব্যবহার করুন';
	@override String get matchGroupToUse => 'ভার্সন স্ট্রিং এক্সট্রাকশনের জন্য ম্যাচ গ্রুপ';
	@override String get highlightTouchTargets => 'অস্পষ্ট টাচ টার্গেটগুলো হাইলাইট করুন';
	@override String get pickExportDir => 'এক্সপোর্ট ডিরেক্টরি বেছে নিন';
	@override String get autoExportOnChanges => 'পরিবর্তন হলে স্বয়ংক্রিয়ভাবে এক্সপোর্ট করুন';
	@override String get includeSettings => 'সেটিংস অন্তর্ভুক্ত করুন';
	@override String get filterVersionsByRegEx => 'রেগুলার এক্সপ্রেশন দিয়ে ভার্সন ফিল্টার করুন';
	@override String get trySelectingSuggestedVersionCode => 'প্রস্তাবিত ভার্সন কোড APK বেছে নেওয়ার চেষ্টা করুন';
	@override String get dontSortReleasesList => 'API থেকে পাওয়া রিলিজ ক্রম বজায় রাখুন';
	@override String get reverseSort => 'বিপরীত ক্রমে সাজানো';
	@override String get takeFirstLink => 'প্রথম লিঙ্কটি নিন';
	@override String get skipSort => 'সাজানো বাদ দিন';
	@override String get debugMenu => 'ডিবাগ মেনু';
	@override String get bgTaskStarted => 'ব্যাকগ্রাউন্ড টাস্ক শুরু হয়েছে - লগ চেক করুন।';
	@override String get runBgCheckNow => 'এখনই ব্যাকগ্রাউন্ড আপডেট চেক করুন';
	@override String get versionExtractWholePage => 'পুরো পৃষ্ঠায় ভার্সন স্ট্রিং এক্সট্রাকশন Regex প্রয়োগ করুন';
	@override String get installing => 'ইনস্টল হচ্ছে';
	@override String get skipUpdateNotifications => 'আপডেট বিজ্ঞপ্তি বাদ দিন';
	@override String get updatesAvailableNotifChannel => 'আপডেট উপলব্ধ';
	@override String get appsUpdatedNotifChannel => 'অ্যাপ আপডেট হয়েছে';
	@override String get appsPossiblyUpdatedNotifChannel => 'অ্যাপ আপডেট করার চেষ্টা হয়েছে';
	@override String get errorCheckingUpdatesNotifChannel => 'আপডেট চেক করার ত্রুটি';
	@override String get appsRemovedNotifChannel => 'অ্যাপ সরানো হয়েছে';
	@override String get downloadingXNotifChannel => '{} ডাউনলোড হচ্ছে';
	@override String get completeAppInstallationNotifChannel => 'অ্যাপ ইনস্টলেশন সম্পন্ন করুন';
	@override String get checkingForUpdatesNotifChannel => 'আপডেট চেক করা হচ্ছে';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'শুধুমাত্র ইনস্টল করা এবং ট্র্যাক-অনলি অ্যাপের আপডেট চেক করুন';
	@override String get supportFixedAPKURL => 'ফিক্সড APK URL সমর্থন করুন';
	@override String get selectX => '{} নির্বাচন করুন';
	@override String get parallelDownloads => 'একসাথে একাধিক ডাউনলোড করার অনুমতি দিন';
	@override String get useShizuku => 'ইনস্টল করতে Shizuku বা Sui ব্যবহার করুন';
	@override String get shizukuBinderNotFound => 'Shizuku সার্ভিস চলছে না';
	@override String get shizukuOld => 'পুরানো Shizuku ভার্সন (<11) - আপডেট করুন';
	@override String get shizukuOldAndroidWithADB => 'ADB সহ Android < 8.1 এ Shizuku চলছে - Android আপডেট করুন অথবা Sui ব্যবহার করুন';
	@override String get shizukuPretendToBeGooglePlay => 'ইনস্টলেশন সোর্স হিসেবে Google Play সেট করুন (যদি Shizuku ব্যবহার করা হয়)';
	@override String get useSystemFont => 'সিস্টেম ফন্ট ব্যবহার করুন';
	@override String get useVersionCodeAsOSVersion => 'অ্যাপের ভার্সন কোডকে OS-ডিটেক্টেড ভার্সন হিসেবে ব্যবহার করুন';
	@override String get requestHeader => 'রিকোয়েস্ট হেডার';
	@override String get useLatestAssetDateAsReleaseDate => 'লেটেস্ট অ্যাসেট আপলোডের সময়কে রিলিজ ডেট হিসেবে ব্যবহার করুন';
	@override String get defaultPseudoVersioningMethod => 'ডিফল্ট ছদ্ম-ভার্সনিং পদ্ধতি';
	@override String get partialAPKHash => 'আংশিক APK হ্যাশ';
	@override String get APKLinkHash => 'APK লিঙ্ক হ্যাশ';
	@override String get directAPKLink => 'সরাসরি APK লিঙ্ক';
	@override String get pseudoVersionInUse => 'একটি ছদ্ম-ভার্সন ব্যবহার করা হচ্ছে';
	@override String get installedVersion => 'ইনস্টল করা হয়েছে';
	@override String get installed => 'ইনস্টল করা হয়েছে';
	@override String get notInstalledApps => 'ইনস্টল করা নেই';
	@override String get latest => 'লেটেস্ট';
	@override String get invertRegEx => 'রেগুলার এক্সপ্রেশন উল্টে দিন';
	@override String get note => 'দ্রষ্টব্য';
	@override String get selfHostedNote => '"{}" ড্রপডাউনটি যে কোনো সোর্সের সেলফ-হোস্টেড বা কাস্টম ইনস্ট্যান্স ব্যবহারের জন্য ব্যবহার করা যেতে পারে।';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK টি পার্স করা যায়নি (অসংগতিপূর্ণ বা আংশিক ডাউনলোড)';
	@override String get beforeNewInstallsShareToAppVerifier => 'নতুন অ্যাপ ইনস্টলের আগে AppVerifier এর সাথে শেয়ার করুন (যদি থাকে)';
	@override String get appVerifierInstructionToast => 'AppVerifier-এ শেয়ার করুন, তারপর প্রস্তুত হলে এখানে ফিরে আসুন।';
	@override String get wiki => 'সহায়তা/উইকি';
	@override String get wikiHint => 'Updatium উইকি ডকুমেন্টেশন খুলুন';
	@override String get allowInsecure => 'অনিরাপদ HTTP রিকোয়েস্টের অনুমতি দিন';
	@override String get stayOneVersionBehind => 'লেটেস্ট ভার্সন থেকে এক ভার্সন পিছিয়ে থাকুন';
	@override String get useFirstApkOfVersion => 'একাধিক APK থাকলে প্রথমটি স্বয়ংক্রিয়ভাবে বেছে নিন';
	@override String get refreshBeforeDownload => 'ডাউনলোডের আগে অ্যাপের তথ্য রিফ্রেশ করুন';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'নাম';
	@override String get smartname => 'নাম (স্মার্ট)';
	@override String get smartPlusDate => 'স্মার্ট + তারিখ';
	@override String get sortMethod => 'সাজানোর পদ্ধতি';
	@override String get welcome => 'স্বাগতম';
	@override String get batteryOptimizationNote => 'Updatium এর জন্য ব্যাটারি অপ্টিমাইজেশন বন্ধ করলে ব্যাকগ্রাউন্ড ডাউনলোড আরও ভালোভাবে কাজ করতে পারে।';
	@override String get fileDeletionError => 'ফাইল মুছতে ব্যর্থ (ম্যানুয়ালি মুছে পুনরায় চেষ্টা করুন): "{}"';
	@override String get foregroundService => 'Updatium ফোরগ্রাউন্ড সার্ভিস';
	@override String get foregroundServiceExplanation => 'আপডেট চেকিংয়ের জন্য ফোরগ্রাউন্ড সার্ভিস ব্যবহার করুন (অধিক নির্ভরযোগ্য, বেশি চার্জ খরচ হয়)';
	@override String get fgServiceNotice => 'ব্যাকগ্রাউন্ড আপডেট চেকিংয়ের জন্য এই বিজ্ঞপ্তির প্রয়োজন (সিস্টেম সেটিংসে এটি লুকানো যেতে পারে)';
	@override String get excludeSecrets => 'গোপন তথ্য (secrets) বাদ দিন';
	@override String get GHReqPrefix => 'GitHub রিকোয়েস্টের জন্য \'omeritzics/Updatium\' ইনস্ট্যান্স';
	@override String get includeZips => 'ZIP ফাইল অন্তর্ভুক্ত করুন';
	@override String get zippedApkFilterRegEx => 'ZIP-এর ভেতরে থাকা APK ফিল্টার করুন';
	@override String get multipleSigners => 'একাধিক সাইনার (Signers)';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: 'অ্যাপটি কি সরিয়ে ফেলবেন?',
		other: 'অ্যাপগুলো কি সরিয়ে ফেলবেন?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: 'অত্যধিক রিকোয়েস্ট (রেট লিমিটেড) - {count} মিনিট পর আবার চেষ্টা করুন',
		other: 'অত্যধিক রিকোয়েস্ট (রেট লিমিটেড) - {count} মিনিট পর আবার চেষ্টা করুন',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: 'ব্যাকগ্রাউন্ড আপডেট চেক করার সময় {error} ঘটেছে, {count} মিনিট পর পুনরায় চেষ্টা করা হবে',
		other: 'ব্যাকগ্রাউন্ড আপডেট চেক করার সময় {error} ঘটেছে, {count} মিনিট পর পুনরায় চেষ্টা করা হবে',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: 'ব্যাকগ্রাউন্ড চেক ১টি আপডেট পেয়েছে - প্রয়োজনে ব্যবহারকারীকে জানানো হবে',
		other: 'ব্যাকগ্রাউন্ড চেক {count}টি আপডেট পেয়েছে - প্রয়োজনে ব্যবহারকারীকে জানানো হবে',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{count}টি অ্যাপ',
		other: '{count}টি অ্যাপ',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{count}টি URL',
		other: '{count}টি URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{count} মিনিট',
		other: '{count} মিনিট',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{count} ঘণ্টা',
		other: '{count} ঘণ্টা',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{count} দিন',
		other: '{count} দিন',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{n} টি লগ মুছে ফেলা হয়েছে (আগে = {before}, পরে = {after})',
		other: '{n} টি লগ মুছে ফেলা হয়েছে (আগে = {before}, পরে = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{app} এবং আরও ১টি অ্যাপের আপডেট আছে।',
		other: '{app} এবং আরও {count}টি অ্যাপের আপডেট আছে।',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{app} এবং আরও ১টি অ্যাপ আপডেট করা হয়েছে।',
		other: '{app} এবং আরও {count}টি অ্যাপ আপডেট করা হয়েছে।',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{app} এবং আরও ১টি অ্যাপ আপডেট করতে ব্যর্থ।',
		other: '{app} এবং আরও {count}টি অ্যাপ আপডেট করতে ব্যর্থ।',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{app} এবং আরও ১টি অ্যাপ সম্ভবত আপডেট করা হয়েছে।',
		other: '{app} এবং আরও {count}টি অ্যাপ সম্ভবত আপডেট করা হয়েছে।',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: '{count}টি APK',
		other: '{count}টি APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n,
		one: 'সার্টিফিকেট হ্যাশ',
		other: 'সার্টিফিকেট হ্যাশসমূহ',
	);
	@override String get securityDisclaimerTitle => 'নিরাপত্তা ও আইনি ঘোষণা';
	@override String get license => 'লাইসেন্স';
	@override String get licenseText => 'এই অ্যাপ্লিকেশনটি GPL v3 লাইসেন্সের অধীনে বিতরিত।';
	@override String get disclaimer => 'দাবিত্যাগ (Disclaimer)';
	@override String get disclaimerText => 'এই অ্যাপ্লিকেশনটি কোনো এক্সটার্নাল অ্যাপ বিতরণ, হোস্ট বা যাচাই করে না। এই টুলের মাধ্যমে ইনস্টল করা যেকোনো সফটওয়্যারের নিরাপত্তা ও বৈধতার দায়ভার সম্পূর্ণ ব্যবহারকারীর।\n\nUpdatium ডাউনলোডের একমাত্র অফিসিয়াল জায়গা হলো https://github.com/omeritzics/Updatium।';
	@override String get privacy => 'গোপনীয়তা';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'সম্মত এবং চালিয়ে যান';
	@override String get decline => 'প্রত্যাখ্যান';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Updatium ভালো লাগছে?';
	@override String get githubStarPromptContent => 'Updatium একটি স্বেচ্ছাসেবী ওপেন-সোর্স প্রজেক্ট। আপনি যদি প্রজেক্টটিকে সমর্থন করতে চান, তবে GitHub-এ একটি স্টার দেওয়ার কথা বিবেচনা করুন। ধন্যবাদ! :)';
	@override String get githubStarPromptStar => 'স্টার দিন';
	@override String get githubStarPromptDontShowAgain => 'আর দেখাবেন না';
	@override String get sourceCode => 'সোর্স কোড';
	@override String get developedBy => 'তৈরি করেছেন';
	@override String get appDescription => 'একটি কাস্টমাইজযোগ্য অ্যান্ড্রয়েড অ্যাপ ক্যাটালগ যা আপনাকে সরাসরি সোর্স থেকে অ্যাপ আপডেট করতে দেয়।';
	@override String get safeModeEnabled => 'সেফ মোড সক্রিয়';
	@override String get safeModeDisabled => 'সেফ মোড নিষ্ক্রিয়';
	@override String get safeModeDisable => 'সেফ মোড বন্ধ করুন';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'সেফ মোড প্রশাসন';
	@override String get safeModeSetupDescription => 'সেফ মোড চালু করতে একটি পাসওয়ার্ড সেট করুন। এটি নতুন অ্যাপ যোগ করা প্রতিরোধ করে।';
	@override String get safeModeToggleDescription => 'সেফ মোড চালু বা বন্ধ করতে আপনার পাসওয়ার্ড দিন।';
	@override String get safeModeSetPassword => 'পাসওয়ার্ড সেট করুন';
	@override String get safeModeConfirmPassword => 'পাসওয়ার্ড নিশ্চিত করুন';
	@override String get safeModeEnterPassword => 'পাসওয়ার্ড দিন';
	@override String get safeModePasswordHint => 'নূন্যতম ৮ অক্ষর';
	@override String get safeModePasswordTooShort => 'পাসওয়ার্ড অন্তত ৮ অক্ষরের হতে হবে';
	@override String get safeModePasswordMismatch => 'পাসওয়ার্ড মেলেনি';
	@override String get safeModePasswordIncorrect => 'ভুল পাসওয়ার্ড';
	@override String get safeModePasswordError => 'পাসওয়ার্ড সেট করতে ত্রুটি। আবার চেষ্টা করুন।';
	@override String get safeModeEnable => 'সেফ মোড সক্রিয় করুন';
	@override String get safeModeToggle => 'সেফ মোড বন্ধ করুন';
	@override String get safeModeTapsRemaining => 'সেফ মোড বন্ধ করতে আরও {count} বার ট্যাপ করুন';
	@override String get safeModeEnabledHint => 'সেফ মোড সক্রিয়। বন্ধ করতে সেটিংসের ভার্সন নম্বরের ওপর বারবার ট্যাপ করুন।';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'বুঝেছি';
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

/// The flat map containing all translations for locale <bn>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsBn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'একটি সঠিক {} অ্যাপ URL নয়',
			'noReleaseFound' => 'উপযুক্ত কোনো রিলিজ পাওয়া যায়নি',
			'noVersionFound' => 'রিলিজ ভার্সন নির্ধারণ করা সম্ভব হয়নি',
			'urlMatchesNoSource' => 'URL-টি কোনো পরিচিত সোর্সের সাথে মিলছে না',
			'cantInstallOlderVersion' => 'অ্যাপের পুরনো ভার্সন ইনস্টল করা সম্ভব নয়',
			'appIdMismatch' => 'ডাউনলোড করা প্যাকেজ ID বিদ্যমান অ্যাপ ID-র সাথে মিলছে না',
			'functionNotImplemented' => 'এই ক্লাসটি এই ফাংশনটি কার্যকর করেনি',
			'placeholder' => 'প্লেসহোল্ডার',
			'someErrors' => 'কিছু ত্রুটি ঘটেছে',
			'unexpectedError' => 'অপ্রত্যাশিত ত্রুটি',
			'ok' => 'ঠিক আছে',
			'and' => 'এবং',
			'githubPATLabel' => 'GitHub পার্সোনাল অ্যাক্সেস টোকেন',
			'includePrereleases' => 'প্রি-রিলিজগুলো অন্তর্ভুক্ত করুন',
			'fallbackToOlderReleases' => 'পুরনো রিলিজে ফিরে যান',
			'filterReleaseTitlesByRegEx' => 'রেগুলার এক্সপ্রেশন দিয়ে রিলিজ টাইটেল ফিল্টার করুন',
			'invalidRegEx' => 'অকার্যকর রেগুলার এক্সপ্রেশন',
			'noDescription' => 'কোনো বিবরণ নেই',
			'cancel' => 'বাতিল',
			'kContinue' => 'চালিয়ে যান',
			'requiredInBrackets' => '(আবশ্যক)',
			'dropdownNoOptsError' => 'ত্রুটি: ড্রপডাউনে অন্তত একটি অপশন থাকতে হবে',
			'color' => 'রঙ',
			'standard' => 'স্ট্যান্ডার্ড',
			'custom' => 'কাস্টম',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You রঙের ব্যবহার করুন',
			'githubStarredRepos' => 'GitHub স্টার দেওয়া রিপোজিটরি',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'ইউজারনেম',
			'wrongArgNum' => 'ভুল সংখ্যক আর্গুমেন্ট প্রদান করা হয়েছে',
			'xIsTrackOnly' => '{} শুধুমাত্র ট্র্যাক করার জন্য',
			'source' => 'সোর্স',
			'app' => 'অ্যাপ',
			'appsFromSourceAreTrackOnly' => 'এই সোর্সের অ্যাপগুলো শুধুমাত্র \'ট্র্যাক\' করা যাবে।',
			'youPickedTrackOnly' => 'আপনি \'ট্র্যাক-অনলি\' অপশনটি বেছে নিয়েছেন।',
			'trackOnlyAppDescription' => 'অ্যাপটি আপডেটের জন্য ট্র্যাক করা হবে, কিন্তু Updatium এটি ডাউনলোড বা ইনস্টল করতে পারবে না।',
			'cancelled' => 'বাতিল করা হয়েছে',
			'appAlreadyAdded' => 'অ্যাপটি আগেই যোগ করা হয়েছে',
			'alreadyUpToDateQuestion' => 'অ্যাপটি কি ইতিমধ্যে আপ-টু-ডেট?',
			'addApp' => 'অ্যাপ যোগ করুন',
			'appSourceURL' => 'অ্যাপ সোর্স URL',
			'error' => 'ত্রুটি',
			'add' => 'যোগ করুন',
			'advanced' => 'উন্নত (Advanced)',
			'searchSomeSourcesLabel' => 'অনুসন্ধান (শুধুমাত্র কিছু সোর্সের জন্য)',
			'search' => 'অনুসন্ধান',
			'searching' => 'Searching',
			'additionalOptsFor' => '{} এর জন্য অতিরিক্ত অপশন',
			'supportedSources' => 'সমর্থিত সোর্সসমূহ',
			'trackOnlyInBrackets' => '(শুধুমাত্র ট্র্যাক)',
			'searchableInBrackets' => '(অনুসন্ধানযোগ্য)',
			'appsString' => 'অ্যাপসমূহ',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'স্বাগতম!',
			'noAppsSubtext' => 'নিচের \'অ্যাপ যোগ করুন\' বাটনে ট্যাপ করে আপনার প্রথম অ্যাপটি যোগ করতে পারেন।',
			'noAppsForFilter' => 'ফিল্টার অনুযায়ী কোনো অ্যাপ নেই',
			'byX' => '{} দ্বারা',
			'percentProgress' => 'অগ্রগতি: {}%',
			'pleaseWait' => 'অনুগ্রহ করে অপেক্ষা করুন',
			'updateAvailable' => 'আপডেট উপলব্ধ',
			'notInstalled' => 'ইনস্টল করা নেই',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'ছদ্ম-ভার্সন',
			'selectAll' => 'সব নির্বাচন করুন',
			'deselectX' => '{} নির্বাচন বাতিল করুন',
			'xWillBeRemovedButRemainInstalled' => '{} Updatium থেকে সরানো হবে কিন্তু ডিভাইসে ইনস্টল করা থাকবে।',
			'removeSelectedAppsQuestion' => 'নির্বাচিত অ্যাপগুলো কি সরিয়ে ফেলবেন?',
			'removeSelectedApps' => 'নির্বাচিত অ্যাপ সরান',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} আপডেট করুন',
			'installX' => '{} ইনস্টল করুন',
			'markXTrackOnlyAsUpdated' => '{}\n(ট্র্যাক-অনলি)\nআপডেটেড হিসেবে চিহ্নিত করুন',
			'changeX' => '{} পরিবর্তন করুন',
			'installUpdateApps' => 'অ্যাপ ইনস্টল/আপডেট করুন',
			'installUpdateSelectedApps' => 'নির্বাচিত অ্যাপ ইনস্টল/আপডেট করুন',
			'markXSelectedAppsAsUpdated' => '{}টি নির্বাচিত অ্যাপ কি আপডেটেড হিসেবে চিহ্নিত করবেন?',
			'no' => 'না',
			'yes' => 'হ্যাঁ',
			'markSelectedAppsUpdated' => 'নির্বাচিত অ্যাপগুলো আপডেটেড হিসেবে চিহ্নিত করুন',
			'pinToTop' => 'উপরে পিন করুন',
			'unpinFromTop' => 'পিন সরান',
			'resetInstallStatusForSelectedAppsQuestion' => 'নির্বাচিত অ্যাপগুলোর ইনস্টল স্ট্যাটাস রিসেট করবেন?',
			'installStatusOfXWillBeResetExplanation' => 'নির্বাচিত অ্যাপগুলোর ইনস্টল স্ট্যাটাস রিসেট করা হবে।\n\nব্যর্থ আপডেট বা অন্য সমস্যার কারণে Updatium-এ ভুল ভার্সন দেখালে এটি সাহায্য করতে পারে।',
			'customLinkMessage' => 'এই লিঙ্কগুলো শুধুমাত্র Updatium ইনস্টল করা ডিভাইসে কাজ করে',
			'shareAppConfigLinks' => 'অ্যাপ কনফিগারেশন HTML লিঙ্ক হিসেবে শেয়ার করুন',
			'resetInstallStatus' => 'ইনস্টল স্ট্যাটাস রিসেট করুন',
			'more' => 'আরও',
			'removeOutdatedFilter' => 'পুরনো অ্যাপ ফিল্টার সরান',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'শুধুমাত্র পুরনো অ্যাপ দেখান',
			'filter' => 'ফিল্টার',
			'filterApps' => 'অ্যাপ ফিল্টার করুন',
			'filterDays' => 'Filter days',
			'appName' => 'অ্যাপের নাম',
			'author' => 'লেখক',
			'upToDateApps' => 'আপ-টু-ডেট অ্যাপসমূহ',
			'nonInstalledApps' => 'ইনস্টল না করা অ্যাপসমূহ',
			'importExport' => 'ইমপোর্ট/এক্সপোর্ট',
			'settings' => 'সেটিংস',
			'exportedTo' => '{} এ এক্সপোর্ট করা হয়েছে',
			'updatiumExport' => 'Updatium এক্সপোর্ট',
			'failedToExport' => 'এক্সপোর্ট করতে ব্যর্থ',
			'exportAlreadyInProgress' => 'এক্সপোর্ট ইতিমধ্যে চলছে',
			'exportDirNotAccessible' => 'এক্সপোর্ট ডিরেক্টরি অ্যাক্সেসযোগ্য নয়',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'এক্সপোর্ট ফাইল তৈরি করতে ব্যর্থ',
			'invalidInput' => 'ভুল ইনপুট',
			'importedX' => '{} ইমপোর্ট করা হয়েছে',
			'updatiumImport' => 'Updatium ইমপোর্ট',
			'importFromURLList' => 'URL তালিকা থেকে ইমপোর্ট করুন',
			'searchQuery' => 'সার্চ কোয়েরি',
			'appURLList' => 'অ্যাপ URL তালিকা',
			'line' => 'লাইন',
			'searchX' => '{} অনুসন্ধান করুন',
			'noResults' => 'কোনো ফলাফল পাওয়া যায়নি',
			'importX' => '{} ইমপোর্ট করুন',
			'importedAppsIdDisclaimer' => 'ইমপোর্ট করা অ্যাপগুলো ভুলভাবে "ইনস্টল করা নেই" দেখাতে পারে।\nএটি ঠিক করতে Updatium-এর মাধ্যমে সেগুলো পুনরায় ইনস্টল করুন।\nএতে অ্যাপের ডেটার কোনো ক্ষতি হবে না।',
			'importErrors' => 'ইমপোর্ট ত্রুটি',
			'importedXOfYApps' => '{} এর মধ্যে {} টি অ্যাপ ইমপোর্ট করা হয়েছে।',
			'followingURLsHadErrors' => 'নিচের URL গুলোতে ত্রুটি ছিল:',
			'selectURL' => 'URL নির্বাচন করুন',
			'selectURLs' => 'URL গুলো নির্বাচন করুন',
			'pick' => 'পছন্দ করুন',
			'theme' => 'থিম',
			'dark' => 'ডার্ক',
			'light' => 'লাইট',
			'followSystem' => 'সিস্টেম অনুযায়ী',
			'followSystemThemeExplanation' => 'সিস্টেম থিম অনুসরণ করা শুধুমাত্র থার্ড-পার্টি অ্যাপ ব্যবহার করে সম্ভব',
			'useBlackTheme' => 'গাঢ় কালো থিম ব্যবহার করুন',
			'appSortBy' => 'অ্যাপ সাজানোর ধরণ',
			'authorName' => 'লেখক/নাম',
			'nameAuthor' => 'নাম/লেখক',
			'asAdded' => 'যোগ করার ক্রম অনুযায়ী',
			'appSortOrder' => 'সাজানোর ক্রম',
			'ascending' => 'আরোহী (Ascending)',
			'descending' => 'অবরোহী (Descending)',
			'bgUpdateCheckInterval' => 'ব্যাকগ্রাউন্ডে আপডেট চেক করার বিরতি',
			'neverManualOnly' => 'কখনও না - শুধুমাত্র ম্যানুয়ালি',
			'appearance' => 'চেহারা (Appearance)',
			'pinUpdates' => 'আপডেটগুলো অ্যাপ ভিউয়ের উপরে পিন করুন',
			'updates' => 'আপডেটসমূহ',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'সোর্স-নির্দিষ্ট',
			'appSource' => 'অ্যাপ সোর্স',
			'appSourceHint' => 'অ্যাপ সোর্স রিপোজিটরি খুলুন',
			'noLogs' => 'কোনো লগ নেই',
			'appLogs' => 'অ্যাপ লগ',
			'appLogsHint' => 'অ্যাপ্লিকেশন লগ দেখুন',
			'close' => 'বন্ধ করুন',
			'share' => 'শেয়ার করুন',
			'appNotFound' => 'অ্যাপ পাওয়া যায়নি',
			'networkError' => 'নেটওয়ার্ক সংযোগ ব্যর্থ হয়েছে',
			'invalidUrlFormat' => 'URL-এর ফরম্যাট সঠিক নয়',
			'accessDenied' => 'অ্যাক্সেস অস্বীকার করা হয়েছে',
			'importFailed' => 'ইমপোর্ট ব্যর্থ হয়েছে',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'একটি APK বেছে নিন',
			'appHasMoreThanOnePackage' => '{} এ একাধিক প্যাকেজ রয়েছে:',
			'deviceSupportsXArch' => 'আপনার ডিভাইস {} CPU আর্কিটেকচার সমর্থন করে।',
			'deviceSupportsFollowingArchs' => 'আপনার ডিভাইস নিচের CPU আর্কিটেকচারগুলো সমর্থন করে:',
			'warning' => 'সতর্কতা',
			'sourceIsXButPackageFromYPrompt' => 'অ্যাপ সোর্স হলো \'{}\' কিন্তু রিলিজ প্যাকেজ আসছে \'{}\' থেকে। চালিয়ে যাবেন?',
			'updatesAvailable' => 'আপডেট উপলব্ধ',
			'updatesAvailableNotifDescription' => 'এক বা একাধিক অ্যাপের আপডেট থাকলে ব্যবহারকারীকে অবহিত করে',
			'noNewUpdates' => 'নতুন কোনো আপডেট নেই।',
			'xHasAnUpdate' => '{} এর একটি আপডেট আছে।',
			'appsUpdated' => 'অ্যাপ আপডেট করা হয়েছে',
			'appsNotUpdated' => 'অ্যাপ্লিকেশন আপডেট করতে ব্যর্থ',
			'appsUpdatedNotifDescription' => 'ব্যাকগ্রাউন্ডে এক বা একাধিক অ্যাপ আপডেট করা হলে ব্যবহারকারীকে জানায়',
			'xWasUpdatedToY' => '{} কে {} ভার্সনে আপডেট করা হয়েছে।',
			'xWasNotUpdatedToY' => '{} কে {} ভার্সনে আপডেট করতে ব্যর্থ।',
			'errorCheckingUpdates' => 'আপডেট চেক করতে ত্রুটি',
			'errorCheckingUpdatesNotifDescription' => 'ব্যাকগ্রাউন্ড আপডেট চেক ব্যর্থ হলে একটি বিজ্ঞপ্তি দেখায়',
			'appsRemoved' => 'অ্যাপ সরানো হয়েছে',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'লোড করার সময় ত্রুটির কারণে অ্যাপ সরানো হলে ব্যবহারকারীকে জানায়',
			'xWasRemovedDueToErrorY' => '{} সরানো হয়েছে এই ত্রুটির কারণে: {}',
			'completeAppInstallation' => 'অ্যাপ ইনস্টলেশন সম্পন্ন করুন',
			'updatiumMustBeOpenToInstallApps' => 'অ্যাপ ইনস্টল করতে Updatium খোলা থাকতে হবে',
			'completeAppInstallationNotifDescription' => 'অ্যাপ ইনস্টল শেষ করতে ব্যবহারকারীকে Updatium-এ ফিরে আসতে বলে',
			'checkingForUpdates' => 'আপডেট চেক করা হচ্ছে',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'আপডেট চেক করার সময় সাময়িক বিজ্ঞপ্তি',
			'pleaseAllowInstallPerm' => 'Updatium-কে অ্যাপ ইনস্টল করার অনুমতি দিন',
			'trackOnly' => 'শুধুমাত্র ট্র্যাক',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'ত্রুটি {}',
			'versionCorrectionDisabled' => 'ভার্সন সংশোধন নিষ্ক্রিয় (প্লাগইন কাজ করছে না বলে মনে হচ্ছে)',
			'unknown' => 'অজানা',
			'none' => 'কিছুই না',
			'all' => 'সব',
			'never' => 'কখনও না',
			'latestVersion' => 'লেটেস্ট',
			'installedVersionX' => 'ইনস্টল করা: {}',
			'lastUpdateCheckX' => 'শেষ আপডেট চেক: {}',
			'remove' => 'সরান',
			'quickLinks' => 'কুইক লিঙ্ক',
			'yesMarkUpdated' => 'হ্যাঁ, আপডেটেড হিসেবে চিহ্নিত করুন',
			'fdroid' => 'F-Droid অফিশিয়াল',
			'appIdOrName' => 'অ্যাপ ID বা নাম',
			'appId' => 'অ্যাপ ID',
			'appWithIdOrNameNotFound' => 'ওই ID বা নামে কোনো অ্যাপ পাওয়া যায়নি',
			'reposHaveMultipleApps' => 'রিপোজিটরিতে একাধিক অ্যাপ থাকতে পারে',
			'fdroidThirdPartyRepo' => 'F-Droid থার্ড-পার্টি রিপো',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'ইনস্টল',
			'markInstalled' => 'ইনস্টল করা হয়েছে হিসেবে চিহ্নিত করুন',
			'update' => 'আপডেট',
			'updated' => 'আপডেটেড',
			'markUpdated' => 'আপডেটেড হিসেবে চিহ্নিত করুন',
			'download' => 'Download',
			'additionalOptions' => 'অতিরিক্ত অপশন',
			'disableVersionDetection' => 'ভার্সন ডিটেকশন নিষ্ক্রিয় করুন',
			'noVersionDetectionExplanation' => 'এই অপশনটি শুধুমাত্র সেই অ্যাপগুলোর জন্য ব্যবহার করা উচিত যেগুলোর ভার্সন ডিটেকশন সঠিকভাবে কাজ করে না।',
			'downloadingX' => '{} ডাউনলোড হচ্ছে',
			'downloadX' => '{} ডাউনলোড করুন',
			'downloadedX' => '{} ডাউনলোড সম্পন্ন',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'রিলিজ অ্যাসেট',
			'downloadNotifDescription' => 'অ্যাপ ডাউনলোডের অগ্রগতি ব্যবহারকারীকে জানায়',
			'noAPKFound' => 'কোনো APK পাওয়া যায়নি',
			'noVersionDetection' => 'ভার্সন ডিটেকশন নেই',
			'categorize' => 'শ্রেণীবদ্ধ করুন',
			'categories' => 'বিভাগসমূহ',
			'category' => 'বিভাগ',
			'noCategory' => 'কোনো বিভাগ নেই',
			'noCategories' => 'কোনো বিভাগ নেই',
			'categoryDeleteQuestion' => 'বিভাগগুলো কি মুছে ফেলবেন?',
			'categoryDeleteWarning' => 'মুছে ফেলা বিভাগের সব অ্যাপ \'অশ্রেণীবদ্ধ\' হিসেবে সেট করা হবে।',
			'addCategory' => 'বিভাগ যোগ করুন',
			'label' => 'লেবেল',
			'language' => 'ভাষা',
			'copiedToClipboard' => 'ক্লিপবোর্ডে কপি করা হয়েছে',
			'storagePermissionDenied' => 'স্টোরেজ পারমিশন প্রত্যাখ্যান করা হয়েছে',
			'selectedCategorizeWarning' => 'এটি নির্বাচিত অ্যাপগুলোর বিদ্যমান বিভাগ সেটিংস প্রতিস্থাপন করবে।',
			'filterAPKsByRegEx' => 'রেগুলার এক্সপ্রেশন দিয়ে APK ফিল্টার করুন',
			'removeFromUpdatium' => 'Updatium থেকে সরান',
			'uninstallFromDevice' => 'ডিভাইস থেকে আনইনস্টল করুন',
			'onlyWorksWithNonVersionDetectApps' => 'শুধুমাত্র ভার্সন ডিটেকশন নিষ্ক্রিয় থাকা অ্যাপের জন্য কাজ করে।',
			'releaseDateAsVersion' => 'রিলিজের তারিখকে ভার্সন হিসেবে ব্যবহার করুন',
			'releaseTitleAsVersion' => 'রিলিজের টাইটেলকে ভার্সন হিসেবে ব্যবহার করুন',
			'releaseDateAsVersionExplanation' => 'এই অপশনটি শুধুমাত্র তখনই ব্যবহার করা উচিত যখন ভার্সন ডিটেকশন কাজ করে না কিন্তু রিলিজ ডেট পাওয়া যায়।',
			'changes' => 'পরিবর্তনসমূহ',
			'releaseDate' => 'রিলিজের তারিখ',
			'importFromURLsInFile' => 'ফাইলে থাকা URL থেকে ইমপোর্ট করুন (যেমন OPML)',
			'versionDetectionExplanation' => 'অপারেটিং সিস্টেম থেকে ডিটেক্ট করা ভার্সনের সাথে মেলানো',
			'versionDetection' => 'ভার্সন ডিটেকশন',
			'standardVersionDetection' => 'স্ট্যান্ডার্ড ভার্সন ডিটেকশন',
			'groupByCategory' => 'বিভাগ অনুযায়ী সাজান',
			'listView' => 'তালিকা ভিউ',
			'gridView' => 'গ্রিড ভিউ',
			'autoApkFilterByArch' => 'সম্ভব হলে CPU আর্কিটেকচার অনুযায়ী APK ফিল্টার করার চেষ্টা করুন',
			'autoLinkFilterByArch' => 'সম্ভব হলে CPU আর্কিটেকচার অনুযায়ী লিঙ্ক ফিল্টার করার চেষ্টা করুন',
			'overrideSource' => 'সোর্স ওভাররাইড করুন',
			'dontShowAgain' => 'এটি আর দেখাবেন না',
			'dontShowTrackOnlyWarnings' => '\'শুধুমাত্র-ট্র্যাক\' সতর্কতা দেখাবেন না',
			'dontShowAPKOriginWarnings' => 'APK সোর্স সংক্রান্ত সতর্কতা দেখাবেন না',
			'moveNonInstalledAppsToBottom' => 'ইনস্টল না করা অ্যাপগুলোকে তালিকার নিচে পাঠান',
			'gitlabPATLabel' => 'GitLab পার্সোনাল অ্যাক্সেস টোকেন',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'সম্পর্কে',
			'requiresCredentialsInSettings' => '{} এর জন্য অতিরিক্ত তথ্য প্রয়োজন (সেটিংসে দেখুন)',
			'checkOnStart' => 'অ্যাপ চালুর সময় আপডেট চেক করুন',
			'safeMode' => 'সেফ মোড',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'সেফ মোডে অ্যাপ যোগ করা নিষ্ক্রিয়',
			'tryInferAppIdFromCode' => 'সোর্স কোড থেকে অ্যাপ ID অনুমান করার চেষ্টা করুন',
			'removeOnExternalUninstall' => 'বাইরে থেকে আনইনস্টল করা অ্যাপ স্বয়ংক্রিয়ভাবে সরান',
			'pickHighestVersionCode' => 'সবচেয়ে বেশি ভার্সন কোডের APK স্বয়ংক্রিয়ভাবে বেছে নিন',
			'checkUpdateOnDetailPage' => 'অ্যাপ ডিটেইল পেজ খোলার সময় আপডেট চেক করুন',
			'disablePageTransitions' => 'পেজ ট্রানজিশন অ্যানিমেশন বন্ধ করুন',
			'reversePageTransitions' => 'পেজ ট্রানজিশন অ্যানিমেশন উল্টো করুন',
			'minStarCount' => 'নূন্যতম স্টার সংখ্যা',
			'addInfoBelow' => 'নিচে এই তথ্যটি যোগ করুন।',
			'addInfoInSettings' => 'সেটিংসে এই তথ্যটি যোগ করুন।',
			'githubSourceNote' => 'API কি ব্যবহার করে GitHub-এর রেট লিমিটিং এড়ানো সম্ভব।',
			'sortByLastLinkSegment' => 'লিঙ্কের শুধুমাত্র শেষ অংশ অনুযায়ী সাজান',
			'filterReleaseNotesByRegEx' => 'রেগুলার এক্সপ্রেশন দিয়ে রিলিজ নোট ফিল্টার করুন',
			'customLinkFilterRegex' => 'কাস্টম APK লিঙ্ক ফিল্টার রেগুলার এক্সপ্রেশন (ডিফল্ট \'.apk$\')',
			'appsPossiblyUpdated' => 'অ্যাপ আপডেট করার চেষ্টা করা হয়েছে',
			'appsPossiblyUpdatedNotifDescription' => 'ব্যাকগ্রাউন্ডে এক বা একাধিক অ্যাপ সম্ভবত আপডেট করা হয়েছে তা ব্যবহারকারীকে জানায়',
			'xWasPossiblyUpdatedToY' => '{} সম্ভবত {} ভার্সনে আপডেট হয়েছে।',
			'enableBackgroundUpdates' => 'ব্যাকগ্রাউন্ড আপডেট সক্রিয় করুন',
			'backgroundUpdateReqsExplanation' => 'সব অ্যাপের জন্য ব্যাকগ্রাউন্ড আপডেট সম্ভব নাও হতে পারে।',
			'backgroundUpdateLimitsExplanation' => 'ব্যাকগ্রাউন্ড ইনস্টলেশন সফল হয়েছে কি না তা Updatium খুললেই বোঝা যাবে।',
			'verifyLatestTag' => '\'Latest\' ট্যাগ যাচাই করুন',
			'intermediateLinkRegex' => 'পরিদর্শনের জন্য একটি \'ইন্টারমিডিয়েট\' লিঙ্ক ফিল্টার করুন',
			'filterByLinkText' => 'লিঙ্ক টেক্সট দিয়ে লিঙ্ক ফিল্টার করুন',
			'matchLinksOutsideATags' => '<a> ট্যাগের বাইরের লিঙ্কগুলো মেলান',
			'intermediateLinkNotFound' => 'ইন্টারমিডিয়েট লিঙ্ক পাওয়া যায়নি',
			'intermediateLink' => 'ইন্টারমিডিয়েট লিঙ্ক',
			'exemptFromBackgroundUpdates' => 'ব্যাকগ্রাউন্ড আপডেট থেকে অব্যাহতি দিন (সক্রিয় থাকলে)',
			'bgUpdatesOnWiFiOnly' => 'ওয়াই-ফাই না থাকলে ব্যাকগ্রাউন্ড আপডেট বন্ধ রাখুন',
			'bgUpdatesWhileChargingOnly' => 'চার্জ না হলে ব্যাকগ্রাউন্ড আপডেট বন্ধ রাখুন',
			'autoSelectHighestVersionCode' => 'স্বয়ংক্রিয়ভাবে সর্বোচ্চ ভার্সন কোডের APK বেছে নিন',
			'versionExtractionRegEx' => 'ভার্সন স্ট্রিং এক্সট্রাকশন RegEx',
			'trimVersionString' => 'RegEx দিয়ে ভার্সন স্ট্রিং ট্রিম করুন',
			'matchGroupToUseForX' => '"{}" এর জন্য ম্যাচ গ্রুপ ব্যবহার করুন',
			'matchGroupToUse' => 'ভার্সন স্ট্রিং এক্সট্রাকশনের জন্য ম্যাচ গ্রুপ',
			'highlightTouchTargets' => 'অস্পষ্ট টাচ টার্গেটগুলো হাইলাইট করুন',
			'pickExportDir' => 'এক্সপোর্ট ডিরেক্টরি বেছে নিন',
			'autoExportOnChanges' => 'পরিবর্তন হলে স্বয়ংক্রিয়ভাবে এক্সপোর্ট করুন',
			'includeSettings' => 'সেটিংস অন্তর্ভুক্ত করুন',
			'filterVersionsByRegEx' => 'রেগুলার এক্সপ্রেশন দিয়ে ভার্সন ফিল্টার করুন',
			'trySelectingSuggestedVersionCode' => 'প্রস্তাবিত ভার্সন কোড APK বেছে নেওয়ার চেষ্টা করুন',
			'dontSortReleasesList' => 'API থেকে পাওয়া রিলিজ ক্রম বজায় রাখুন',
			'reverseSort' => 'বিপরীত ক্রমে সাজানো',
			'takeFirstLink' => 'প্রথম লিঙ্কটি নিন',
			'skipSort' => 'সাজানো বাদ দিন',
			'debugMenu' => 'ডিবাগ মেনু',
			'bgTaskStarted' => 'ব্যাকগ্রাউন্ড টাস্ক শুরু হয়েছে - লগ চেক করুন।',
			'runBgCheckNow' => 'এখনই ব্যাকগ্রাউন্ড আপডেট চেক করুন',
			'versionExtractWholePage' => 'পুরো পৃষ্ঠায় ভার্সন স্ট্রিং এক্সট্রাকশন Regex প্রয়োগ করুন',
			'installing' => 'ইনস্টল হচ্ছে',
			'skipUpdateNotifications' => 'আপডেট বিজ্ঞপ্তি বাদ দিন',
			'updatesAvailableNotifChannel' => 'আপডেট উপলব্ধ',
			'appsUpdatedNotifChannel' => 'অ্যাপ আপডেট হয়েছে',
			'appsPossiblyUpdatedNotifChannel' => 'অ্যাপ আপডেট করার চেষ্টা হয়েছে',
			'errorCheckingUpdatesNotifChannel' => 'আপডেট চেক করার ত্রুটি',
			'appsRemovedNotifChannel' => 'অ্যাপ সরানো হয়েছে',
			'downloadingXNotifChannel' => '{} ডাউনলোড হচ্ছে',
			'completeAppInstallationNotifChannel' => 'অ্যাপ ইনস্টলেশন সম্পন্ন করুন',
			'checkingForUpdatesNotifChannel' => 'আপডেট চেক করা হচ্ছে',
			'onlyCheckInstalledOrTrackOnlyApps' => 'শুধুমাত্র ইনস্টল করা এবং ট্র্যাক-অনলি অ্যাপের আপডেট চেক করুন',
			'supportFixedAPKURL' => 'ফিক্সড APK URL সমর্থন করুন',
			'selectX' => '{} নির্বাচন করুন',
			'parallelDownloads' => 'একসাথে একাধিক ডাউনলোড করার অনুমতি দিন',
			'useShizuku' => 'ইনস্টল করতে Shizuku বা Sui ব্যবহার করুন',
			'shizukuBinderNotFound' => 'Shizuku সার্ভিস চলছে না',
			'shizukuOld' => 'পুরানো Shizuku ভার্সন (<11) - আপডেট করুন',
			'shizukuOldAndroidWithADB' => 'ADB সহ Android < 8.1 এ Shizuku চলছে - Android আপডেট করুন অথবা Sui ব্যবহার করুন',
			'shizukuPretendToBeGooglePlay' => 'ইনস্টলেশন সোর্স হিসেবে Google Play সেট করুন (যদি Shizuku ব্যবহার করা হয়)',
			'useSystemFont' => 'সিস্টেম ফন্ট ব্যবহার করুন',
			'useVersionCodeAsOSVersion' => 'অ্যাপের ভার্সন কোডকে OS-ডিটেক্টেড ভার্সন হিসেবে ব্যবহার করুন',
			'requestHeader' => 'রিকোয়েস্ট হেডার',
			'useLatestAssetDateAsReleaseDate' => 'লেটেস্ট অ্যাসেট আপলোডের সময়কে রিলিজ ডেট হিসেবে ব্যবহার করুন',
			'defaultPseudoVersioningMethod' => 'ডিফল্ট ছদ্ম-ভার্সনিং পদ্ধতি',
			'partialAPKHash' => 'আংশিক APK হ্যাশ',
			'APKLinkHash' => 'APK লিঙ্ক হ্যাশ',
			'directAPKLink' => 'সরাসরি APK লিঙ্ক',
			'pseudoVersionInUse' => 'একটি ছদ্ম-ভার্সন ব্যবহার করা হচ্ছে',
			'installedVersion' => 'ইনস্টল করা হয়েছে',
			'installed' => 'ইনস্টল করা হয়েছে',
			'notInstalledApps' => 'ইনস্টল করা নেই',
			'latest' => 'লেটেস্ট',
			'invertRegEx' => 'রেগুলার এক্সপ্রেশন উল্টে দিন',
			'note' => 'দ্রষ্টব্য',
			'selfHostedNote' => '"{}" ড্রপডাউনটি যে কোনো সোর্সের সেলফ-হোস্টেড বা কাস্টম ইনস্ট্যান্স ব্যবহারের জন্য ব্যবহার করা যেতে পারে।',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK টি পার্স করা যায়নি (অসংগতিপূর্ণ বা আংশিক ডাউনলোড)',
			'beforeNewInstallsShareToAppVerifier' => 'নতুন অ্যাপ ইনস্টলের আগে AppVerifier এর সাথে শেয়ার করুন (যদি থাকে)',
			'appVerifierInstructionToast' => 'AppVerifier-এ শেয়ার করুন, তারপর প্রস্তুত হলে এখানে ফিরে আসুন।',
			'wiki' => 'সহায়তা/উইকি',
			'wikiHint' => 'Updatium উইকি ডকুমেন্টেশন খুলুন',
			'allowInsecure' => 'অনিরাপদ HTTP রিকোয়েস্টের অনুমতি দিন',
			'stayOneVersionBehind' => 'লেটেস্ট ভার্সন থেকে এক ভার্সন পিছিয়ে থাকুন',
			'useFirstApkOfVersion' => 'একাধিক APK থাকলে প্রথমটি স্বয়ংক্রিয়ভাবে বেছে নিন',
			'refreshBeforeDownload' => 'ডাউনলোডের আগে অ্যাপের তথ্য রিফ্রেশ করুন',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'নাম',
			'smartname' => 'নাম (স্মার্ট)',
			'smartPlusDate' => 'স্মার্ট + তারিখ',
			'sortMethod' => 'সাজানোর পদ্ধতি',
			'welcome' => 'স্বাগতম',
			'batteryOptimizationNote' => 'Updatium এর জন্য ব্যাটারি অপ্টিমাইজেশন বন্ধ করলে ব্যাকগ্রাউন্ড ডাউনলোড আরও ভালোভাবে কাজ করতে পারে।',
			'fileDeletionError' => 'ফাইল মুছতে ব্যর্থ (ম্যানুয়ালি মুছে পুনরায় চেষ্টা করুন): "{}"',
			'foregroundService' => 'Updatium ফোরগ্রাউন্ড সার্ভিস',
			'foregroundServiceExplanation' => 'আপডেট চেকিংয়ের জন্য ফোরগ্রাউন্ড সার্ভিস ব্যবহার করুন (অধিক নির্ভরযোগ্য, বেশি চার্জ খরচ হয়)',
			'fgServiceNotice' => 'ব্যাকগ্রাউন্ড আপডেট চেকিংয়ের জন্য এই বিজ্ঞপ্তির প্রয়োজন (সিস্টেম সেটিংসে এটি লুকানো যেতে পারে)',
			'excludeSecrets' => 'গোপন তথ্য (secrets) বাদ দিন',
			'GHReqPrefix' => 'GitHub রিকোয়েস্টের জন্য \'omeritzics/Updatium\' ইনস্ট্যান্স',
			'includeZips' => 'ZIP ফাইল অন্তর্ভুক্ত করুন',
			'zippedApkFilterRegEx' => 'ZIP-এর ভেতরে থাকা APK ফিল্টার করুন',
			'multipleSigners' => 'একাধিক সাইনার (Signers)',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: 'অ্যাপটি কি সরিয়ে ফেলবেন?', other: 'অ্যাপগুলো কি সরিয়ে ফেলবেন?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: 'অত্যধিক রিকোয়েস্ট (রেট লিমিটেড) - {count} মিনিট পর আবার চেষ্টা করুন', other: 'অত্যধিক রিকোয়েস্ট (রেট লিমিটেড) - {count} মিনিট পর আবার চেষ্টা করুন', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: 'ব্যাকগ্রাউন্ড আপডেট চেক করার সময় {error} ঘটেছে, {count} মিনিট পর পুনরায় চেষ্টা করা হবে', other: 'ব্যাকগ্রাউন্ড আপডেট চেক করার সময় {error} ঘটেছে, {count} মিনিট পর পুনরায় চেষ্টা করা হবে', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: 'ব্যাকগ্রাউন্ড চেক ১টি আপডেট পেয়েছে - প্রয়োজনে ব্যবহারকারীকে জানানো হবে', other: 'ব্যাকগ্রাউন্ড চেক {count}টি আপডেট পেয়েছে - প্রয়োজনে ব্যবহারকারীকে জানানো হবে', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{count}টি অ্যাপ', other: '{count}টি অ্যাপ', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{count}টি URL', other: '{count}টি URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{count} মিনিট', other: '{count} মিনিট', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{count} ঘণ্টা', other: '{count} ঘণ্টা', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{count} দিন', other: '{count} দিন', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{n} টি লগ মুছে ফেলা হয়েছে (আগে = {before}, পরে = {after})', other: '{n} টি লগ মুছে ফেলা হয়েছে (আগে = {before}, পরে = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{app} এবং আরও ১টি অ্যাপের আপডেট আছে।', other: '{app} এবং আরও {count}টি অ্যাপের আপডেট আছে।', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{app} এবং আরও ১টি অ্যাপ আপডেট করা হয়েছে।', other: '{app} এবং আরও {count}টি অ্যাপ আপডেট করা হয়েছে।', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{app} এবং আরও ১টি অ্যাপ আপডেট করতে ব্যর্থ।', other: '{app} এবং আরও {count}টি অ্যাপ আপডেট করতে ব্যর্থ।', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{app} এবং আরও ১টি অ্যাপ সম্ভবত আপডেট করা হয়েছে।', other: '{app} এবং আরও {count}টি অ্যাপ সম্ভবত আপডেট করা হয়েছে।', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: '{count}টি APK', other: '{count}টি APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('bn'))(n, one: 'সার্টিফিকেট হ্যাশ', other: 'সার্টিফিকেট হ্যাশসমূহ', ), 
			'securityDisclaimerTitle' => 'নিরাপত্তা ও আইনি ঘোষণা',
			'license' => 'লাইসেন্স',
			'licenseText' => 'এই অ্যাপ্লিকেশনটি GPL v3 লাইসেন্সের অধীনে বিতরিত।',
			'disclaimer' => 'দাবিত্যাগ (Disclaimer)',
			'disclaimerText' => 'এই অ্যাপ্লিকেশনটি কোনো এক্সটার্নাল অ্যাপ বিতরণ, হোস্ট বা যাচাই করে না। এই টুলের মাধ্যমে ইনস্টল করা যেকোনো সফটওয়্যারের নিরাপত্তা ও বৈধতার দায়ভার সম্পূর্ণ ব্যবহারকারীর।\n\nUpdatium ডাউনলোডের একমাত্র অফিসিয়াল জায়গা হলো https://github.com/omeritzics/Updatium।',
			'privacy' => 'গোপনীয়তা',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'সম্মত এবং চালিয়ে যান',
			'decline' => 'প্রত্যাখ্যান',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Updatium ভালো লাগছে?',
			'githubStarPromptContent' => 'Updatium একটি স্বেচ্ছাসেবী ওপেন-সোর্স প্রজেক্ট। আপনি যদি প্রজেক্টটিকে সমর্থন করতে চান, তবে GitHub-এ একটি স্টার দেওয়ার কথা বিবেচনা করুন। ধন্যবাদ! :)',
			'githubStarPromptStar' => 'স্টার দিন',
			'githubStarPromptDontShowAgain' => 'আর দেখাবেন না',
			'sourceCode' => 'সোর্স কোড',
			'developedBy' => 'তৈরি করেছেন',
			'appDescription' => 'একটি কাস্টমাইজযোগ্য অ্যান্ড্রয়েড অ্যাপ ক্যাটালগ যা আপনাকে সরাসরি সোর্স থেকে অ্যাপ আপডেট করতে দেয়।',
			'safeModeEnabled' => 'সেফ মোড সক্রিয়',
			'safeModeDisabled' => 'সেফ মোড নিষ্ক্রিয়',
			'safeModeDisable' => 'সেফ মোড বন্ধ করুন',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'সেফ মোড প্রশাসন',
			'safeModeSetupDescription' => 'সেফ মোড চালু করতে একটি পাসওয়ার্ড সেট করুন। এটি নতুন অ্যাপ যোগ করা প্রতিরোধ করে।',
			'safeModeToggleDescription' => 'সেফ মোড চালু বা বন্ধ করতে আপনার পাসওয়ার্ড দিন।',
			'safeModeSetPassword' => 'পাসওয়ার্ড সেট করুন',
			'safeModeConfirmPassword' => 'পাসওয়ার্ড নিশ্চিত করুন',
			'safeModeEnterPassword' => 'পাসওয়ার্ড দিন',
			'safeModePasswordHint' => 'নূন্যতম ৮ অক্ষর',
			'safeModePasswordTooShort' => 'পাসওয়ার্ড অন্তত ৮ অক্ষরের হতে হবে',
			'safeModePasswordMismatch' => 'পাসওয়ার্ড মেলেনি',
			'safeModePasswordIncorrect' => 'ভুল পাসওয়ার্ড',
			'safeModePasswordError' => 'পাসওয়ার্ড সেট করতে ত্রুটি। আবার চেষ্টা করুন।',
			'safeModeEnable' => 'সেফ মোড সক্রিয় করুন',
			'safeModeToggle' => 'সেফ মোড বন্ধ করুন',
			'safeModeTapsRemaining' => 'সেফ মোড বন্ধ করতে আরও {count} বার ট্যাপ করুন',
			'safeModeEnabledHint' => 'সেফ মোড সক্রিয়। বন্ধ করতে সেটিংসের ভার্সন নম্বরের ওপর বারবার ট্যাপ করুন।',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'বুঝেছি',
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
