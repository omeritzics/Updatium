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
class TranslationsMl with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsMl({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ml,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ml>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsMl _root = this; // ignore: unused_field

	@override 
	TranslationsMl $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsMl(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'ഒരു സാധുവായ {} ആപ്പ് URL അല്ല';
	@override String get noReleaseFound => 'അനുയോജ്യമായ റിലീസ് കണ്ടെത്താനായില്ല';
	@override String get noVersionFound => 'റിലീസ് പതിപ്പ് നിർണ്ണയിക്കാനായില്ല';
	@override String get urlMatchesNoSource => 'URL അറിയപ്പെടുന്ന ഒരു ഉറവിടവുമായും യോജിക്കുന്നില്ല';
	@override String get cantInstallOlderVersion => 'ആപ്പിന്റെ പഴയ പതിപ്പ് ഇൻസ്റ്റാൾ ചെയ്യാൻ കഴിയില്ല.';
	@override String get appIdMismatch => 'ഡൗൺലോഡ് ചെയ്ത പാക്കേജ് ഐഡി നിലവിലുള്ള ആപ്പ് ഐഡിയുമായി ചേരുന്നില്ല';
	@override String get functionNotImplemented => 'ഈ ക്ലാസ് ഈ ഫംഗ്ഷൻ നടപ്പിലാക്കിയിട്ടില്ല';
	@override String get placeholder => 'സ്ഥലസൂചകം';
	@override String get someErrors => 'ചില പിശകുകൾ സംഭവിച്ചു';
	@override String get unexpectedError => 'പ്രതീക്ഷിക്കാത്ത പിശക്';
	@override String get ok => 'ശരി';
	@override String get and => 'കൂടാതെ';
	@override String get githubPATLabel => 'GitHub പേഴ്സണൽ ആക്സസ് ടോക്കൺ';
	@override String get includePrereleases => 'പ്രീ-റിലീസുകൾ ഉൾപ്പെടുത്തുക';
	@override String get fallbackToOlderReleases => 'പഴയ റിലീസുകളിലേക്ക് മടങ്ങുക';
	@override String get filterReleaseTitlesByRegEx => 'റിലീസ് ശീർഷകങ്ങൾ റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് ഫിൽട്ടർ ചെയ്യുക';
	@override String get invalidRegEx => 'സാധുവായ റെഗുലർ എക്സ്പ്രഷൻ അല്ല';
	@override String get noDescription => 'വിവരണം ലഭ്യമല്ല';
	@override String get cancel => 'റദ്ദാക്കുക';
	@override String get kContinue => 'തുടരുക';
	@override String get requiredInBrackets => '(ആവശ്യമാണ്)';
	@override String get dropdownNoOptsError => 'തെറ്റ്: ഡ്രോപ്പ്ഡൗണിന് കുറഞ്ഞത് ഒരു ഓപ്ഷനെങ്കിലും ഉണ്ടായിരിക്കണം';
	@override String get color => 'നിറം';
	@override String get standard => 'സാധാരണ';
	@override String get custom => 'ഇഷ്‌ടാനുസൃതം';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You നിറങ്ങൾ ഉപയോഗിക്കുക';
	@override String get githubStarredRepos => 'GitHub സ്റ്റാർ ചെയ്ത റെപ്പോസിറ്ററികൾ';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'ഉപയോക്തൃനാമം';
	@override String get wrongArgNum => 'തെറ്റായ എണ്ണം ആർഗ്യുമെന്റുകൾ നൽകി';
	@override String get xIsTrackOnly => '{} ട്രാക്ക്-മാത്രം ആണ്';
	@override String get source => 'ഉറവിടം';
	@override String get app => 'ആപ്പ്';
	@override String get appsFromSourceAreTrackOnly => 'ഈ ഉറവിടത്തിൽ നിന്നുള്ള ആപ്പുകൾ \'ട്രാക്ക്-മാത്രം\' ആണ്.';
	@override String get youPickedTrackOnly => 'നിങ്ങൾ \'ട്രാക്ക്-മാത്രം\' ഓപ്ഷൻ തിരഞ്ഞെടുത്തു.';
	@override String get trackOnlyAppDescription => 'ആപ്പ് അപ്‌ഡേറ്റുകൾക്കായി ട്രാക്ക് ചെയ്യപ്പെടും, പക്ഷേ ഒബ്‌റ്റേനിയത്തിന് അത് ഡൗൺലോഡ് ചെയ്യാനോ ഇൻസ്റ്റാൾ ചെയ്യാനോ കഴിയില്ല.';
	@override String get cancelled => 'റദ്ദാക്കി';
	@override String get appAlreadyAdded => 'ആപ്പ് ഇതിനകം കൂട്ടിച്ചേർത്തിട്ടുണ്ട്';
	@override String get alreadyUpToDateQuestion => 'ആപ്പ് ഇതിനകം ഏറ്റവും പുതിയ പതിപ്പിലാണോ?';
	@override String get addApp => 'ആപ്പ് ചേർക്കുക';
	@override String get appSourceURL => 'ആപ്പ് ഉറവിട URL';
	@override String get error => 'പിശക്';
	@override String get add => 'ചേർക്കുക';
	@override String get advanced => 'അഡ്വാൻസ്ഡ്';
	@override String get searchSomeSourcesLabel => 'തിരയുക (ചില ഉറവിടങ്ങളിൽ മാത്രം)';
	@override String get search => 'തിരയുക';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{} നായുള്ള അധിക ഓപ്ഷനുകൾ';
	@override String get supportedSources => 'പിന്തുണയ്ക്കുന്ന ഉറവിടങ്ങൾ';
	@override String get trackOnlyInBrackets => '(ട്രാക്ക്-മാത്രം)';
	@override String get searchableInBrackets => '(തിരയാവുന്നത്)';
	@override String get appsString => 'ആപ്പുകൾ';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'സ്വാഗതം!';
	@override String get noAppsSubtext => 'നിങ്ങളുടെ ആദ്യത്തെ ആപ്പ് ചേർക്കാൻ താഴെ \'ആപ്പ് ചേർക്കുക\' ടാപ്പ് ചെയ്യുക.';
	@override String get noAppsForFilter => 'ഈ ഫിൽട്ടറിനായി ആപ്പുകളൊന്നുമില്ല';
	@override String get byX => '{} വഴി';
	@override String get percentProgress => 'പുരോഗതി: {}%';
	@override String get pleaseWait => 'ദയവായി കാത്തിരിക്കുക';
	@override String get updateAvailable => 'അപ്‌ഡേറ്റ് ലഭ്യമാണ്';
	@override String get notInstalled => 'ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'സ്യൂഡോ-പതിപ്പ്';
	@override String get selectAll => 'എല്ലാം തിരഞ്ഞെടുക്കുക';
	@override String get deselectX => '{} തിരഞ്ഞെടുക്കൽ റദ്ദാക്കുക';
	@override String get xWillBeRemovedButRemainInstalled => '{} ഒബ്‌റ്റേനിയത്തിൽ നിന്ന് നീക്കം ചെയ്യപ്പെടും, പക്ഷേ ഉപകരണത്തിൽ ഇൻസ്റ്റാൾ ചെയ്ത നിലയിൽ തുടരും.';
	@override String get removeSelectedAppsQuestion => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ നീക്കം ചെയ്യണോ?';
	@override String get removeSelectedApps => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ നീക്കം ചെയ്യുക';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} അപ്‌ഡേറ്റ് ചെയ്യുക';
	@override String get installX => '{} ഇൻസ്റ്റാൾ ചെയ്യുക';
	@override String get markXTrackOnlyAsUpdated => '{}\n(ട്രാക്ക്-മാത്രം)\nഅപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';
	@override String get changeX => '{} മാറ്റുക';
	@override String get installUpdateApps => 'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യുക/അപ്‌ഡേറ്റ് ചെയ്യുക';
	@override String get installUpdateSelectedApps => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യുക/അപ്‌ഡേറ്റ് ചെയ്യുക';
	@override String get markXSelectedAppsAsUpdated => '{} തിരഞ്ഞെടുത്ത ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തണോ?';
	@override String get no => 'ഇല്ല';
	@override String get yes => 'അതെ';
	@override String get markSelectedAppsUpdated => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';
	@override String get pinToTop => 'മുകളിൽ പിൻ ചെയ്യുക';
	@override String get unpinFromTop => 'മുകളിൽ നിന്ന് അൺപിൻ ചെയ്യുക';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'തിരഞ്ഞെടുത്ത ആപ്പുകളുടെ ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യണോ?';
	@override String get installStatusOfXWillBeResetExplanation => 'തിരഞ്ഞെടുത്ത ഏതെങ്കിലും ആപ്പുകളുടെ ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യപ്പെടും.\n\nപരാജയപ്പെട്ട അപ്‌ഡേറ്റുകളോ മറ്റ് പ്രശ്നങ്ങളോ കാരണം ഒബ്‌റ്റേനിയത്തിൽ കാണിക്കുന്ന ആപ്പ് പതിപ്പ് തെറ്റായിരിക്കുമ്പോൾ ഇത് സഹായകമാകും.';
	@override String get customLinkMessage => 'ഈ ലിങ്കുകൾ ഒബ്‌റ്റേനിയം ഇൻസ്റ്റാൾ ചെയ്ത ഉപകരണങ്ങളിൽ പ്രവർത്തിക്കും';
	@override String get shareAppConfigLinks => 'ആപ്പ് കോൺഫിഗറേഷൻ HTML ലിങ്കായി പങ്കിടുക';
	@override String get resetInstallStatus => 'ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യുക';
	@override String get more => 'കൂടുതൽ';
	@override String get removeOutdatedFilter => 'കാലഹരണപ്പെട്ട ആപ്പ് ഫിൽട്ടർ നീക്കം ചെയ്യുക';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'കാലഹരണപ്പെട്ട ആപ്പുകൾ മാത്രം കാണിക്കുക';
	@override String get filter => 'ഫിൽട്ടർ';
	@override String get filterApps => 'ആപ്പുകൾ ഫിൽട്ടർ ചെയ്യുക';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'ആപ്പിന്റെ പേര്';
	@override String get author => 'ഡെവലപ്പർ';
	@override String get upToDateApps => 'ഏറ്റവും പുതിയ പതിപ്പിലുള്ള ആപ്പുകൾ';
	@override String get nonInstalledApps => 'ഇൻസ്റ്റാൾ ചെയ്യാത്ത ആപ്പുകൾ';
	@override String get importExport => 'ഇംപോർട്ട്/എക്സ്പോർട്ട്';
	@override String get settings => 'ക്രമീകരണങ്ങൾ';
	@override String get exportedTo => '{} ലേക്ക് എക്സ്പോർട്ട് ചെയ്തു';
	@override String get updatiumExport => 'ഒബ്‌റ്റേനിയം എക്സ്പോർട്ട്';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'തെറ്റായ ഇൻപുട്ട്';
	@override String get importedX => '{} ഇംപോർട്ട് ചെയ്തു';
	@override String get updatiumImport => 'ഒബ്‌റ്റേനിയം ഇംപോർട്ട്';
	@override String get importFromURLList => 'URL ലിസ്റ്റിൽ നിന്ന് ഇംപോർട്ട് ചെയ്യുക';
	@override String get searchQuery => 'തിരയൽ ചോദ്യം';
	@override String get appURLList => 'ആപ്പ് URL ലിസ്റ്റ്';
	@override String get line => 'വരി';
	@override String get searchX => '{} തിരയുക';
	@override String get noResults => 'ഫലങ്ങളൊന്നും കണ്ടെത്തിയില്ല';
	@override String get importX => '{} ഇംപോർട്ട് ചെയ്യുക';
	@override String get importedAppsIdDisclaimer => 'ഇംപോർട്ട് ചെയ്ത ആപ്പുകൾ "ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല" എന്ന് തെറ്റായി കാണിച്ചേക്കാം.\nഇത് ശരിയാക്കാൻ, ഒബ്‌റ്റേനിയം വഴി അവ വീണ്ടും ഇൻസ്റ്റാൾ ചെയ്യുക.\nഇത് ആപ്പ് ഡാറ്റയെ ബാധിക്കില്ല.\n\nURL, മൂന്നാം കക്ഷി ഇംപോർട്ട് രീതികളെ മാത്രം ബാധിക്കുന്നു.';
	@override String get importErrors => 'ഇംപോർട്ട് പിശകുകൾ';
	@override String get importedXOfYApps => '{} ആപ്പുകളിൽ {} എണ്ണം ഇംപോർട്ട് ചെയ്തു.';
	@override String get followingURLsHadErrors => 'ഇനിപ്പറയുന്ന URL-കളിൽ പിശകുകൾ ഉണ്ടായിരുന്നു:';
	@override String get selectURL => 'URL തിരഞ്ഞെടുക്കുക';
	@override String get selectURLs => 'URL-കൾ തിരഞ്ഞെടുക്കുക';
	@override String get pick => 'തിരഞ്ഞെടുക്കുക';
	@override String get theme => 'തീം';
	@override String get dark => 'ഇരുണ്ട';
	@override String get light => 'ഇളം';
	@override String get followSystem => 'സിസ്റ്റം പിന്തുടരുക';
	@override String get followSystemThemeExplanation => 'സിസ്റ്റം തീം പിന്തുടരുന്നത് തേർഡ് പാർട്ടി ആപ്ലിക്കേഷനുകൾ ഉപയോഗിച്ച് മാത്രമേ സാധ്യമാകൂ';
	@override String get useBlackTheme => 'തനി കറുപ്പ് തീം ഉപയോഗിക്കുക';
	@override String get appSortBy => 'ആപ്പ് അടുക്കേണ്ട രീതി';
	@override String get authorName => 'ഡെവലപ്പർ/പേര്';
	@override String get nameAuthor => 'പേര്/ഡെവലപ്പർ';
	@override String get asAdded => 'ചേർത്ത ക്രമത്തിൽ';
	@override String get appSortOrder => 'ആപ്പ് അടുക്കേണ്ട ക്രമം';
	@override String get ascending => 'ആരോഹണ ക്രമത്തിൽ';
	@override String get descending => 'അവരോഹണ ക്രമത്തിൽ';
	@override String get bgUpdateCheckInterval => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന ഇടവേള';
	@override String get neverManualOnly => 'ഒരിക്കലുമില്ല - സ്വമേധയാ മാത്രം';
	@override String get appearance => 'രൂപം';
	@override String get pinUpdates => 'അപ്‌ഡേറ്റുകൾ ആപ്പ് കാഴ്ചയുടെ മുകളിൽ പിൻ ചെയ്യുക';
	@override String get updates => 'അപ്‌ഡേറ്റുകൾ';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'ഉറവിടം അടിസ്ഥാനമാക്കി';
	@override String get appSource => 'ആപ്പ് ഉറവിടം';
	@override String get appSourceHint => 'ആപ്പ് ഉറവിട റെപ്പോസിറ്ററി തുറക്കുക';
	@override String get noLogs => 'ലോഗുകളൊന്നുമില്ല';
	@override String get appLogs => 'ആപ്പ് ലോഗുകൾ';
	@override String get appLogsHint => 'ആപ്ലിക്കേഷൻ ലോഗുകൾ കാണുക';
	@override String get close => 'അടയ്ക്കുക';
	@override String get share => 'പങ്കിടുക';
	@override String get appNotFound => 'ആപ്പ് കണ്ടെത്തിയില്ല';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'ഒബ്‌റ്റേനിയം-എക്സ്പോർട്ട്';
	@override String get pickAnAPK => 'ഒരു APK തിരഞ്ഞെടുക്കുക';
	@override String get appHasMoreThanOnePackage => '{}-ന് ഒന്നിൽ കൂടുതൽ പാക്കേജുകൾ ഉണ്ട്:';
	@override String get deviceSupportsXArch => 'നിങ്ങളുടെ ഉപകരണം {} CPU ആർക്കിടെക്ചറിനെ പിന്തുണയ്ക്കുന്നു.';
	@override String get deviceSupportsFollowingArchs => 'നിങ്ങളുടെ ഉപകരണം ഇനിപ്പറയുന്ന CPU ആർക്കിടെക്ചറുകളെ പിന്തുണയ്ക്കുന്നു:';
	@override String get warning => 'മുന്നറിയിപ്പ്';
	@override String get sourceIsXButPackageFromYPrompt => 'ആപ്പ് ഉറവിടം \'{}\' ആണ്, പക്ഷേ റിലീസ് പാക്കേജ് \'{}\'-ൽ നിന്നാണ് വരുന്നത്. തുടരണോ?';
	@override String get updatesAvailable => 'അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്';
	@override String get updatesAvailableNotifDescription => 'ഒബ്‌റ്റേനിയം ട്രാക്ക് ചെയ്യുന്ന ഒന്നോ അതിലധികമോ ആപ്പുകൾക്ക് അപ്‌ഡേറ്റുകൾ ലഭ്യമാണെന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';
	@override String get noNewUpdates => 'പുതിയ അപ്‌ഡേറ്റുകളൊന്നുമില്ല.';
	@override String get xHasAnUpdate => '{}-ന് ഒരു അപ്‌ഡേറ്റ് ഉണ്ട്.';
	@override String get appsUpdated => 'ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തു';
	@override String get appsNotUpdated => 'ആപ്ലിക്കേഷനുകൾ അപ്‌ഡേറ്റ് ചെയ്യുന്നതിൽ പരാജയപ്പെട്ടു';
	@override String get appsUpdatedNotifDescription => 'ഒന്നോ അതിലധികമോ ആപ്പുകളിലേക്കുള്ള അപ്‌ഡേറ്റുകൾ ബാക്ക്ഗ്രൗണ്ടിൽ പ്രയോഗിച്ചു എന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';
	@override String get xWasUpdatedToY => '{} {} ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്തു.';
	@override String get xWasNotUpdatedToY => '{} {} ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്യാൻ പരാജയപ്പെട്ടു.';
	@override String get errorCheckingUpdates => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നതിൽ പിശക്';
	@override String get errorCheckingUpdatesNotifDescription => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന പരാജയപ്പെടുമ്പോൾ കാണിക്കുന്ന അറിയിപ്പ്';
	@override String get appsRemoved => 'ആപ്പുകൾ നീക്കം ചെയ്തു';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'ഒന്നോ അതിലധികമോ ആപ്പുകൾ ലോഡ് ചെയ്യുന്നതിൽ പിശകുകൾ കാരണം നീക്കം ചെയ്തു എന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';
	@override String get xWasRemovedDueToErrorY => '{} ഈ പിശക് കാരണം നീക്കം ചെയ്തു: {}';
	@override String get completeAppInstallation => 'ആപ്പ് ഇൻസ്റ്റാളേഷൻ പൂർത്തിയാക്കുക';
	@override String get updatiumMustBeOpenToInstallApps => 'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ ഒബ്‌റ്റേനിയം തുറന്നിരിക്കണം';
	@override String get completeAppInstallationNotifDescription => 'ഒരു ആപ്പ് ഇൻസ്റ്റാൾ ചെയ്യുന്നത് പൂർത്തിയാക്കാൻ ഒബ്‌റ്റേനിയത്തിലേക്ക് മടങ്ങാൻ ഉപയോക്താവിനോട് ആവശ്യപ്പെടുന്നു';
	@override String get checkingForUpdates => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നു';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുമ്പോൾ ദൃശ്യമാകുന്ന താൽക്കാലിക അറിയിപ്പ്';
	@override String get pleaseAllowInstallPerm => 'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ ഒബ്‌റ്റേനിയത്തിന് അനുമതി നൽകുക';
	@override String get trackOnly => 'ട്രാക്ക്-മാത്രം';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'പിശക് {}';
	@override String get versionCorrectionDisabled => 'പതിപ്പ് തിരുത്തൽ പ്രവർത്തനരഹിതമാക്കി (പ്ലഗിൻ പ്രവർത്തിക്കുന്നതായി തോന്നുന്നില്ല)';
	@override String get unknown => 'അജ്ഞാതം';
	@override String get none => 'ഒന്നുമില്ല';
	@override String get all => 'All';
	@override String get never => 'ഒരിക്കലുമില്ല';
	@override String get latestVersion => 'ഏറ്റവും പുതിയത്';
	@override String get installedVersionX => 'ഇൻസ്റ്റാൾ ചെയ്തത്: {}';
	@override String get lastUpdateCheckX => 'അവസാന അപ്‌ഡേറ്റ് പരിശോധന: {}';
	@override String get remove => 'നീക്കം ചെയ്യുക';
	@override String get quickLinks => 'വേഗി ലിങ്കൾ';
	@override String get yesMarkUpdated => 'അതെ, അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';
	@override String get fdroid => 'എഫ്-ഡ്രോയിഡ് ഒഫീഷ്യൽ';
	@override String get appIdOrName => 'ആപ്പ് ഐഡി അല്ലെങ്കിൽ പേര്';
	@override String get appId => 'ആപ്പ് ഐഡി';
	@override String get appWithIdOrNameNotFound => 'ആ ഐഡിയിലോ പേരിലോ ആപ്പുകളൊന്നും കണ്ടെത്തിയില്ല';
	@override String get reposHaveMultipleApps => 'റെപ്പോകളിൽ ഒന്നിലധികം ആപ്പുകൾ അടങ്ങിയിരിക്കാം';
	@override String get fdroidThirdPartyRepo => 'എഫ്-ഡ്രോയിഡ് തേർഡ് പാർട്ടി റെപ്പോ';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'ഇൻസ്റ്റാൾ ചെയ്യുക';
	@override String get markInstalled => 'ഇൻസ്റ്റാൾ ചെയ്തതായി അടയാളപ്പെടുത്തുക';
	@override String get update => 'അപ്‌ഡേറ്റ് ചെയ്യുക';
	@override String get updated => 'അപ്‌ഡേറ്റ് ചെയ്ത്';
	@override String get markUpdated => 'അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';
	@override String get download => 'Download';
	@override String get additionalOptions => 'കൂടുതൽ ഓപ്ഷനുകൾ';
	@override String get disableVersionDetection => 'പതിപ്പ് കണ്ടെത്തൽ പ്രവർത്തനരഹിതമാക്കുക';
	@override String get noVersionDetectionExplanation => 'പതിപ്പ് കണ്ടെത്തൽ ശരിയായി പ്രവർത്തിക്കാത്ത ആപ്പുകൾക്ക് മാത്രമേ ഈ ഓപ്ഷൻ ഉപയോഗിക്കാവൂ.';
	@override String get downloadingX => '{} ഡൗൺലോഡ് ചെയ്യുന്നു';
	@override String get downloadX => '{} ഡൗൺലോഡ് ചെയ്യുക';
	@override String get downloadedX => '{} ഡൗൺലോഡ് ചെയ്തു';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'റിലീസ് അസറ്റ്';
	@override String get downloadNotifDescription => 'ഒരു ആപ്പ് ഡൗൺലോഡ് ചെയ്യുന്നതിലെ പുരോഗതി ഉപയോക്താവിനെ അറിയിക്കുന്നു';
	@override String get noAPKFound => 'APK കണ്ടെത്തിയില്ല';
	@override String get noVersionDetection => 'പതിപ്പ് കണ്ടെത്തൽ ഇല്ല';
	@override String get categorize => 'വിഭാഗീകരിക്കുക';
	@override String get categories => 'വിഭാഗങ്ങൾ';
	@override String get category => 'വിഭാഗം';
	@override String get noCategory => 'വിഭാഗമൊന്നുമില്ല';
	@override String get noCategories => 'വിഭാഗങ്ങളൊന്നുമില്ല';
	@override String get categoryDeleteQuestion => 'വിഭാഗങ്ങൾ ഇല്ലാതാക്കണോ?';
	@override String get categoryDeleteWarning => 'ഇല്ലാതാക്കിയ വിഭാഗങ്ങളിലെ എല്ലാ ആപ്പുകളും വിഭാഗരഹിതമായി ക്രമീകരിക്കും.';
	@override String get addCategory => 'വിഭാഗം ചേർക്കുക';
	@override String get label => 'ലേബൽ';
	@override String get language => 'ഭാഷ';
	@override String get copiedToClipboard => 'ക്ലിപ്ബോർഡിലേക്ക് പകർത്തി';
	@override String get storagePermissionDenied => 'സ്റ്റോറേജ് അനുമതി നിഷേധിച്ചു';
	@override String get selectedCategorizeWarning => 'ഇത് തിരഞ്ഞെടുത്ത ആപ്പുകൾക്കായി നിലവിലുള്ള ഏതൊരു വിഭാഗ ക്രമീകരണങ്ങളെയും മാറ്റിസ്ഥാപിക്കും.';
	@override String get filterAPKsByRegEx => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് APK-കൾ ഫിൽട്ടർ ചെയ്യുക';
	@override String get removeFromUpdatium => 'ഒബ്‌റ്റേനിയത്തിൽ നിന്ന് നീക്കം ചെയ്യുക';
	@override String get uninstallFromDevice => 'ഉപകരണത്തിൽ നിന്ന് അൺഇൻസ്റ്റാൾ ചെയ്യുക';
	@override String get onlyWorksWithNonVersionDetectApps => 'പതിപ്പ് കണ്ടെത്തൽ പ്രവർത്തനരഹിതമാക്കിയ ആപ്പുകൾക്ക് മാത്രമേ ഇത് പ്രവർത്തിക്കൂ.';
	@override String get releaseDateAsVersion => 'റിലീസ് തീയതി പതിപ്പ് സ്ട്രിംഗായി ഉപയോഗിക്കുക';
	@override String get releaseTitleAsVersion => 'റിലീസ് ശീർഷകം പതിപ്പ് സ്ട്രിംഗായി ഉപയോഗിക്കുക';
	@override String get releaseDateAsVersionExplanation => 'പതിപ്പ് കണ്ടെത്തൽ ശരിയായി പ്രവർത്തിക്കാത്തതും എന്നാൽ റിലീസ് തീയതി ലഭ്യമായതുമായ ആപ്പുകൾക്ക് മാത്രമേ ഈ ഓപ്ഷൻ ഉപയോഗിക്കാവൂ.';
	@override String get changes => 'മാറ്റങ്ങൾ';
	@override String get releaseDate => 'റിലീസ് തീയതി';
	@override String get importFromURLsInFile => 'ഫയലിലെ URL-കളിൽ നിന്ന് ഇംപോർട്ട് ചെയ്യുക (OPML പോലെ)';
	@override String get versionDetectionExplanation => 'കണ്ടെത്തിയ പതിപ്പ് സ്ട്രിംഗ് OS-ൽ നിന്ന് കണ്ടെത്തിയ പതിപ്പുമായി പൊരുത്തപ്പെടുത്തുക';
	@override String get versionDetection => 'പതിപ്പ് കണ്ടെത്തൽ';
	@override String get standardVersionDetection => 'സാധാരണ പതിപ്പ് കണ്ടെത്തൽ';
	@override String get groupByCategory => 'വിഭാഗം അനുസരിച്ച് ഗ്രൂപ്പുചെയ്യുക';
	@override String get listView => 'ലിസ്റ്റ് കാഴ്ച';
	@override String get gridView => 'ഗ്രിഡ് കാഴ്ച';
	@override String get autoApkFilterByArch => 'സാധ്യമെങ്കിൽ CPU ആർക്കിടെക്ചർ അനുസരിച്ച് APK-കൾ ഫിൽട്ടർ ചെയ്യാൻ ശ്രമിക്കുക';
	@override String get autoLinkFilterByArch => 'സാധ്യമെങ്കിൽ CPU ആർക്കിടെക്ചർ അനുസരിച്ച് ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യാൻ ശ്രമിക്കുക';
	@override String get overrideSource => 'ഉറവിടം അസാധുവാക്കുക';
	@override String get dontShowAgain => 'ഇത് വീണ്ടും കാണിക്കരുത്';
	@override String get dontShowTrackOnlyWarnings => '\'ട്രാക്ക്-മാത്രം\' മുന്നറിയിപ്പുകൾ കാണിക്കരുത്';
	@override String get dontShowAPKOriginWarnings => 'APK ഉറവിട മുന്നറിയിപ്പുകൾ കാണിക്കരുത്';
	@override String get moveNonInstalledAppsToBottom => 'ഇൻസ്റ്റാൾ ചെയ്യാത്ത ആപ്പുകൾ ആപ്പ് കാഴ്ചയുടെ താഴേക്ക് മാറ്റുക';
	@override String get gitlabPATLabel => 'GitLab പേഴ്സണൽ ആക്സസ് ടോക്കൺ';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'വിവരങ്ങൾ';
	@override String get requiresCredentialsInSettings => '{}-ന് അധിക ക്രെഡൻഷ്യലുകൾ ആവശ്യമാണ് (ക്രമീകരണങ്ങളിൽ)';
	@override String get checkOnStart => 'തുടങ്ങുമ്പോൾ അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക';
	@override String get safeMode => 'സുരക്ഷിത മോഡ്';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'അപ്പ് ചേർക്കൽ സുരക്ഷിത മോഡിൽ പ്രവർത്തനരഹിതമാണ്';
	@override String get tryInferAppIdFromCode => 'സോഴ്സ് കോഡിൽ നിന്ന് ആപ്പ് ഐഡി അനുമാനിക്കാൻ ശ്രമിക്കുക';
	@override String get removeOnExternalUninstall => 'പുറത്ത് നിന്ന് അൺഇൻസ്റ്റാൾ ചെയ്ത ആപ്പുകൾ സ്വയമേവ നീക്കം ചെയ്യുക';
	@override String get pickHighestVersionCode => 'ഏറ്റവും ഉയർന്ന പതിപ്പ് കോഡ് APK സ്വയമേവ തിരഞ്ഞെടുക്കുക';
	@override String get checkUpdateOnDetailPage => 'ഒരു ആപ്പ് വിശദാംശ പേജ് തുറക്കുമ്പോൾ അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക';
	@override String get disablePageTransitions => 'പേജ് ട്രാൻസിഷൻ ആനിമേഷൻ പ്രവർത്തനരഹിതമാക്കുക';
	@override String get reversePageTransitions => 'പേജ് ട്രാൻസിഷൻ ആനിമേഷൻ വിപരീതമാക്കുക';
	@override String get minStarCount => 'കുറഞ്ഞ് നക്ഷത്രം എണ്ണം';
	@override String get addInfoBelow => 'ഈ വിവരങ്ങൾ താഴെ ചേർക്കുക.';
	@override String get addInfoInSettings => 'ഈ വിവരങ്ങൾ ക്രമീകരണങ്ങളിൽ ചേർക്കുക.';
	@override String get githubSourceNote => 'API കീ ഉപയോഗിച്ച് GitHub നിരക്ക് പരിധി ഒഴിവാക്കാം.';
	@override String get sortByLastLinkSegment => 'ലിങ്കിന്റെ അവസാന ഭാഗം മാത്രം ഉപയോഗിച്ച് അടുക്കുക';
	@override String get filterReleaseNotesByRegEx => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് റിലീസ് നോട്ടുകൾ ഫിൽട്ടർ ചെയ്യുക';
	@override String get customLinkFilterRegex => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് APK ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യുക (ഡിഫോൾട് \'.apk$\')';
	@override String get appsPossiblyUpdated => 'ആപ്പ് അപ്‌ഡേറ്റുകൾ ശ്രമിച്ചു';
	@override String get appsPossiblyUpdatedNotifDescription => 'ഒന്നോ അതിലധികമോ ആപ്പുകളിലേക്കുള്ള അപ്‌ഡേറ്റുകൾ ബാക്ക്ഗ്രൗണ്ടിൽ പ്രയോഗിക്കാൻ സാധ്യതയുണ്ടെന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';
	@override String get xWasPossiblyUpdatedToY => '{} {} ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്തിരിക്കാം.';
	@override String get enableBackgroundUpdates => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനക്ഷമമാക്കുക';
	@override String get backgroundUpdateReqsExplanation => 'എല്ലാ ആപ്പുകൾക്കും ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ സാധ്യമായെന്ന് വരില്ല.';
	@override String get backgroundUpdateLimitsExplanation => 'ബാക്ക്ഗ്രൗണ്ട് ഇൻസ്റ്റാളിന്റെ വിജയം ഒബ്‌റ്റേനിയം തുറക്കുമ്പോൾ മാത്രമേ നിർണ്ണയിക്കാൻ കഴിയൂ.';
	@override String get verifyLatestTag => '\'ഏറ്റവും പുതിയ\' ടാഗ് പരിശോധിക്കുക';
	@override String get intermediateLinkRegex => 'സന്ദർശിക്കാൻ ഒരു \'ഇന്റർമീഡിയറ്റ്\' ലിങ്കിനായി ഫിൽട്ടർ ചെയ്യുക';
	@override String get filterByLinkText => 'ലിങ്ക് ടെക്സ്റ്റ് ഉപയോഗിച്ച് ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യുക';
	@override String get matchLinksOutsideATags => '<a> ടാഗുകൾക്ക് പുറത്തെ ലിങ്കുകൾ പൊരുത്തുക';
	@override String get intermediateLinkNotFound => 'ഇന്റർമീഡിയറ്റ് ലിങ്ക് കണ്ടെത്തിയില്ല';
	@override String get intermediateLink => 'ഇന്റർമീഡിയറ്റ് ലിങ്ക്';
	@override String get exemptFromBackgroundUpdates => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകളിൽ നിന്ന് ഒഴിവാക്കുക (പ്രവർത്തനക്ഷമമാക്കിയിട്ടുണ്ടെങ്കിൽ)';
	@override String get bgUpdatesOnWiFiOnly => 'വൈഫൈയിൽ അല്ലാത്തപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക';
	@override String get bgUpdatesWhileChargingOnly => 'ചാർജ് ചെയ്യാത്തപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക';
	@override String get autoSelectHighestVersionCode => 'ഏറ്റവും ഉയർന്ന versionCode APK സ്വയമേവ തിരഞ്ഞെടുക്കുക';
	@override String get versionExtractionRegEx => 'പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്നതിനുള്ള റെഗുലർ എക്സ്പ്രഷൻ';
	@override String get trimVersionString => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് പതിപ്പ് സ്ട്രിംഗ് ട്രിം ചെയ്യുക';
	@override String get matchGroupToUseForX => '"{}" നായി ഉപയോഗിക്കേണ്ട ഗ്രൂപ്പ് മാച്ച് ചെയ്യുക';
	@override String get matchGroupToUse => 'പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്നതിനുള്ള റെഗുലർ എക്സ്പ്രഷനായി ഉപയോഗിക്കേണ്ട ഗ്രൂപ്പ് മാച്ച് ചെയ്യുക';
	@override String get highlightTouchTargets => 'കുറഞ്ഞ വ്യക്തതയുള്ള ടച്ച് ടാർഗെറ്റുകൾ ഹൈലൈറ്റ് ചെയ്യുക';
	@override String get pickExportDir => 'എക്സ്പോർട്ട് ഡയറക്ടറി തിരഞ്ഞെടുക്കുക';
	@override String get autoExportOnChanges => 'മാറ്റങ്ങൾ വരുമ്പോൾ സ്വയമേവ എക്സ്പോർട്ട് ചെയ്യുക';
	@override String get includeSettings => 'ക്രമീകരണങ്ങൾ ഉൾപ്പെടുത്തുക';
	@override String get filterVersionsByRegEx => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് പതിപ്പുകൾ ഫിൽട്ടർ ചെയ്യുക';
	@override String get trySelectingSuggestedVersionCode => 'നിർദ്ദേശിച്ച versionCode APK തിരഞ്ഞെടുക്കാൻ ശ്രമിക്കുക';
	@override String get dontSortReleasesList => 'API-യിൽ നിന്നുള്ള റിലീസ് ഓർഡർ നിലനിർത്തുക';
	@override String get reverseSort => 'റിവേഴ്സ് സോർട്ടിംഗ്';
	@override String get takeFirstLink => 'ആദ്യ ലിങ്ക് എടുക്കുക';
	@override String get skipSort => 'സോർട്ടിംഗ് ഒഴിവാക്കുക';
	@override String get debugMenu => 'ഡീബഗ് മെനു';
	@override String get bgTaskStarted => 'ബാക്ക്ഗ്രൗണ്ട് ടാസ്ക് ആരംഭിച്ചു - ലോഗുകൾ പരിശോധിക്കുക.';
	@override String get runBgCheckNow => 'ഇപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന പ്രവർത്തിപ്പിക്കുക';
	@override String get versionExtractWholePage => 'മുഴുവൻ പേജിലും പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്ന റെഗുലർ എക്സ്പ്രഷൻ പ്രയോഗിക്കുക';
	@override String get installing => 'ഇൻസ്റ്റാൾ ചെയ്യുന്നു';
	@override String get skipUpdateNotifications => 'അപ്‌ഡേറ്റ് അറിയിപ്പുകൾ ഒഴിവാക്കുക';
	@override String get updatesAvailableNotifChannel => 'അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്';
	@override String get appsUpdatedNotifChannel => 'ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തു';
	@override String get appsPossiblyUpdatedNotifChannel => 'ആപ്പ് അപ്‌ഡേറ്റുകൾ ശ്രമിച്ചു';
	@override String get errorCheckingUpdatesNotifChannel => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നതിൽ പിശക്';
	@override String get appsRemovedNotifChannel => 'ആപ്പുകൾ നീക്കം ചെയ്തു';
	@override String get downloadingXNotifChannel => '{} ഡൗൺലോഡ് ചെയ്യുന്നു';
	@override String get completeAppInstallationNotifChannel => 'ആപ്പ് ഇൻസ്റ്റാളേഷൻ പൂർത്തിയാക്കുക';
	@override String get checkingForUpdatesNotifChannel => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നു';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'ഇൻസ്റ്റാൾ ചെയ്തതും ട്രാക്ക്-മാത്രം ആപ്പുകളും മാത്രം അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക';
	@override String get supportFixedAPKURL => 'സ്ഥിരമായ APK URL-കളെ പിന്തുണയ്ക്കുക';
	@override String get selectX => '{} തിരഞ്ഞെടുക്കുക';
	@override String get parallelDownloads => 'പാരലൽ ഡൗൺലോഡുകൾ അനുവദിക്കുക';
	@override String get useShizuku => 'ഇൻസ്റ്റാൾ ചെയ്യാൻ ഷിസുകു അല്ലെങ്കിൽ സ്യൂ ഉപയോഗിക്കുക';
	@override String get shizukuBinderNotFound => 'ഷിസുകു സേവനം പ്രവർത്തിക്കുന്നില്ല';
	@override String get shizukuOld => 'പഴയ ഷിസുകു പതിപ്പ് (<11) - അത് അപ്‌ഡേറ്റ് ചെയ്യുക';
	@override String get shizukuOldAndroidWithADB => 'ആൻഡ്രോയിഡ് < 8.1 ഉള്ള ഷിസുകു ADB ഉപയോഗിച്ച് പ്രവർത്തിക്കുന്നു - ആൻഡ്രോയിഡ് അപ്‌ഡേറ്റ് ചെയ്യുക അല്ലെങ്കിൽ പകരം സ്യൂ ഉപയോഗിക്കുക';
	@override String get shizukuPretendToBeGooglePlay => 'Google Play ഇൻസ്റ്റാളേഷൻ ഉറവിടമായി സജ്ജമാക്കുക (ഷിസുകു ഉപയോഗിക്കുകയാണെങ്കിൽ)';
	@override String get useSystemFont => 'സിസ്റ്റം ഫോണ്ട് ഉപയോഗിക്കുക';
	@override String get useVersionCodeAsOSVersion => 'ആപ്പ് versionCode OS-ൽ കണ്ടെത്തിയ പതിപ്പായി ഉപയോഗിക്കുക';
	@override String get requestHeader => 'അഭ്യർത്ഥന തലക്കെട്ട്';
	@override String get useLatestAssetDateAsReleaseDate => 'ഏറ്റവും പുതിയ അസറ്റ് അപ്‌ലോഡ് റിലീസ് തീയതിയായി ഉപയോഗിക്കുക';
	@override String get defaultPseudoVersioningMethod => 'സ്ഥിരസ്ഥിതി സ്യൂഡോ-പതിപ്പ് രീതി';
	@override String get partialAPKHash => 'ഭാഗിക APK ഹാഷ്';
	@override String get APKLinkHash => 'APK ലിങ്ക് ഹാഷ്';
	@override String get directAPKLink => 'നേരിട്ടുള്ള APK ലിങ്ക്';
	@override String get pseudoVersionInUse => 'ഒരു സ്യൂഡോ-പതിപ്പ് ഉപയോഗത്തിലുണ്ട്';
	@override String get installedVersion => 'ഇൻസ്റ്റാൾ ചെയ്തത്';
	@override String get installed => 'ഇൻസ്റ്റാൾ ചെയ്തത്';
	@override String get notInstalledApps => 'ഇൻസ്റ്റാൾ ചെയ്തില്ല';
	@override String get latest => 'ഏറ്റവും പുതിയത്';
	@override String get invertRegEx => 'റെഗുലർ എക്സ്പ്രഷൻ വിപരീതമാക്കുക';
	@override String get note => 'ശ്രദ്ധിക്കുക';
	@override String get selfHostedNote => 'ഏത് ഉറവിടത്തിന്റെയും സെൽഫ്-ഹോസ്റ്റ് ചെയ്ത/കസ്റ്റം ഇൻസ്റ്റൻസുകളിലേക്ക് എത്താൻ "{}" ഡ്രോപ്പ്ഡൗൺ ഉപയോഗിക്കാം.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK പാഴ്സ് ചെയ്യാൻ കഴിഞ്ഞില്ല (അനുയോജ്യമല്ലാത്തതോ ഭാഗികമായ ഡൗൺലോഡോ)';
	@override String get beforeNewInstallsShareToAppVerifier => 'പുതിയ ആപ്പുകൾ AppVerifier-ലേക്ക് പങ്കിടുക (ലഭ്യമെങ്കിൽ)';
	@override String get appVerifierInstructionToast => 'AppVerifier-ലേക്ക് പങ്കിടുക, തുടർന്ന് തയ്യാറാകുമ്പോൾ ഇവിടെ തിരിച്ചെത്തുക.';
	@override String get wiki => 'സഹായം/വിക്കി';
	@override String get wikiHint => 'ഒബ്‌റ്റേനിയം വിക്കി ഡോക്യുമെന്റേഷൻ തുറക്കുക';
	@override String get allowInsecure => 'സുരക്ഷിതമല്ലാത്ത HTTP അഭ്യർത്ഥനകൾ അനുവദിക്കുക';
	@override String get stayOneVersionBehind => 'ഏറ്റവും പുതിയ പതിപ്പിന് ഒരു പതിപ്പ് പിന്നിൽ തുടരുക';
	@override String get useFirstApkOfVersion => 'ഒന്നിലധികം APK-കളിൽ നിന്ന് ആദ്യത്തേത് സ്വയമേവ തിരഞ്ഞെടുക്കുക';
	@override String get refreshBeforeDownload => 'ഡൗൺലോഡ് ചെയ്യുന്നതിന് മുമ്പ് ആപ്പ് വിവരങ്ങൾ പുതുക്കുക';
	@override String get tencentAppStore => 'ടെൻസെന്റ് ആപ്പ് സ്റ്റോർ';
	@override String get coolApk => 'കൂൾ APK';
	@override String get vivoAppStore => 'വിവോ ആപ്പ് സ്റ്റോർ (CN)';
	@override String get name => 'പേര്';
	@override String get smartname => 'പേര് (സ്മാർട്ട്)';
	@override String get smartPlusDate => 'സ്മാർട്ട് + തീയതി';
	@override String get sortMethod => 'അടുക്കുന്ന രീതി';
	@override String get welcome => 'സ്വാഗതം';
	@override String get batteryOptimizationNote => 'ഒബ്‌റ്റേനിയത്തിനായുള്ള OS ബാറ്ററി ഒപ്റ്റിമൈസേഷനുകൾ പ്രവർത്തനരഹിതമാക്കുകയാണെങ്കിൽ ബാക്ക്ഗ്രൗണ്ട് ഡൗൺലോഡുകൾ കൂടുതൽ വിശ്വസനീയമായി പ്രവർത്തിച്ചേക്കാം എന്നത് ശ്രദ്ധിക്കുക.';
	@override String get fileDeletionError => 'ഫയൽ ഇല്ലാതാക്കാൻ പരാജയപ്പെട്ടു (സ്വമേധയാ ഇല്ലാതാക്കാൻ ശ്രമിക്കുക, എന്നിട്ട് വീണ്ടും ശ്രമിക്കുക): "{}"';
	@override String get foregroundService => 'ഒബ്‌റ്റേനിയം ഫോർഗ്രൗണ്ട് സർവീസ്';
	@override String get foregroundServiceExplanation => 'അപ്‌ഡേറ്റ് പരിശോധനയ്ക്ക് ഒരു ഫോർഗ്രൗണ്ട് സർവീസ് ഉപയോഗിക്കുക (കൂടുതൽ വിശ്വസനീയം, കൂടുതൽ പവർ ഉപയോഗിക്കുന്നു)';
	@override String get fgServiceNotice => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയ്ക്ക് ഈ അറിയിപ്പ് ആവശ്യമാണ് (ഇത് OS ക്രമീകരണങ്ങളിൽ മറയ്ക്കാം)';
	@override String get excludeSecrets => 'രഹസ്യങ്ങൾ ഒഴിവാക്കുക';
	@override String get GHReqPrefix => 'GitHub അഭ്യർത്ഥനകൾക്ക് \'omeritzics/Updatium\' ഇൻസ്റ്റൻസ്';
	@override String get includeZips => 'ZIP ഫയലുകൾ ഉൾപ്പെടുത്തുക';
	@override String get zippedApkFilterRegEx => 'ZIP-നുള്ളിൽ APK-കൾ ഫിൽട്ടർ ചെയ്യുക';
	@override String get multipleSigners => 'ഒന്നിലധികം ഒപ്പന്മായികൾ';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: 'ആപ്പ് നീക്കം ചെയ്യണോ?',
		other: 'ആപ്പുകൾ നീക്കം ചെയ്യണോ?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: 'നിരവധി അഭ്യർത്ഥനകൾ (നിരക്ക് പരിമിതപ്പെടുത്തി) - {count} മിനിറ്റിനുള്ളിൽ വീണ്ടും ശ്രമിക്കുക',
		other: 'നിരവധി അഭ്യർത്ഥനകൾ (നിരക്ക് പരിമിതപ്പെടുത്തി) - {count} മിനിറ്റുകൾക്കുള്ളിൽ വീണ്ടും ശ്രമിക്കുക',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ ഒരു {error} നേരിട്ടു, {count} മിനിറ്റിനുള്ളിൽ വീണ്ടും ശ്രമിക്കാൻ ക്രമീകരിക്കും',
		other: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ ഒരു {error} നേരിട്ടു, {count} മിനിറ്റുകൾക്കുള്ളിൽ വീണ്ടും ശ്രമിക്കാൻ ക്രമീകരിക്കും',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ {count} അപ്‌ഡേറ്റ് കണ്ടെത്തി - ആവശ്യമെങ്കിൽ ഉപയോക്താവിനെ അറിയിക്കും',
		other: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ {count} അപ്‌ഡേറ്റുകൾ കണ്ടെത്തി - ആവശ്യമെങ്കിൽ ഉപയോക്താവിനെ അറിയിക്കും',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{count} ആപ്പ്',
		other: '{count} ആപ്പുകൾ',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{count} URL',
		other: '{count} URL-കൾ',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{count} മിനിറ്റ്',
		other: '{count} മിനിറ്റുകൾ',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{count} മണിക്കൂർ',
		other: '{count} മണിക്കൂർ',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{count} ദിവസം',
		other: '{count} ദിവസങ്ങൾ',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{n} ലോഗ് മായ്ച്ചു (മുമ്പ് = {before}, ശേഷം = {after})',
		other: '{n} ലോഗുകൾ മായ്ച്ചു (മുമ്പ് = {before}, ശേഷം = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{app} കൂടാതെ 1 ആപ്പിന് കൂടി അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്.',
		other: '{app} കൂടാതെ {count} ആപ്പുകൾക്ക് കൂടി അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{app} കൂടാതെ 1 ആപ്പ് കൂടി അപ്‌ഡേറ്റ് ചെയ്തു.',
		other: '{app} കൂടാതെ {count} ആപ്പുകൾ കൂടി അപ്‌ഡേറ്റ് ചെയ്തു.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{app} കൂടാതെ 1 ആപ്പ് കൂടി അപ്‌ഡേറ്റ് ചെയ്യാൻ പരാജയപ്പെട്ടു.',
		other: '{app} കൂടാതെ {count} ആപ്പുകൾ കൂടി അപ്‌ഡേറ്റ് ചെയ്യാൻ പരാജയപ്പെട്ടു.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{app} കൂടാതെ 1 ആപ്പ് കൂടി അപ്‌ഡേറ്റ് ചെയ്തിരിക്കാം.',
		other: '{app} കൂടാതെ {count} ആപ്പുകൾ കൂടി അപ്‌ഡേറ്റ് ചെയ്തിരിക്കാം.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: '{count} APK',
		other: '{count} APK-കൾ',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n,
		one: 'സർട്ടിഫിക്കറ്റ് ഹാഷ്',
		other: 'സർട്ടിഫിക്കറ്റ് ഹാഷുകൾ',
	);
	@override String get securityDisclaimerTitle => 'സുരക്ഷാ നിയമ നിരാകരണം';
	@override String get license => 'ലൈസൻസ്';
	@override String get licenseText => 'ഈ അപ്ലിക്കേഷൻ GPL v3 ലൈസൻസിന് കീഴിൽ വിതരണം ചെയ്യുന്നു.';
	@override String get disclaimer => 'നിരാകരണം';
	@override String get disclaimerText => 'ഈ അപ്ലിക്കേഷൻ ബാഹ്യ അപ്ലിക്കേഷനുകൾ വിതരണം ചെയ്യുന്നില്ല, ഹോസ്റ്റ് ചെയ്യുന്നില്ല, അല്ലെങ്കിൽ പരിശോധിക്കുന്നില്ല. ഈ ടൂൾ ഉപയോഗിച്ച് ഇൻസ്റ്റാൾ ചെയ്യുന്ന ഏത് സോഫ്റ്റ്‌വെയറിന്റെയും സുരക്ഷയ്ക്കും നിയമപരമായ കാര്യങ്ങൾക്കും ഉപയോക്താവ് പൂർണ്ണമായും ഉത്തരവാദിത്തം വഹിക്കുന്നു.';
	@override String get privacy => 'സ്വകാര്യത';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'അംഗീകരിച്ച് തുടരുക';
	@override String get decline => 'നിരസിക്കുക';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'ഒബ്‌റ്റേനിയം ഇഷ്ടപ്പെടുന്നുണ്ടോ?';
	@override String get githubStarPromptContent => 'ഒബ്‌റ്റേനിയം എന്റെ ഒഴിവുസമയത്തിൽ വികസിപ്പിച്ച ഒരു സന്നദേഹ, ഓപ്പൺ-സോഴ്‌സ് കമ്മ്യൂണിറ്റി പ്രോജക്റ്റാണ്. നിങ്ങൾക്ക് ഈ പ്രോജക്റ്റിനെ പിന്തുണയാൻ താൽപ്പര്യമെങ്കിൽ, കൂടുതൽ ഉപയോക്താക്കളിലേക്കും സംഭാവകരിലേക്കും എത്താൻ സഹായിക്കാൻ GitHub-ൽ അതിന് ഒരു നക്ഷത്രം നൽകാൻ പരിഗണിക്കുക. ഇതിനെക്കുറിച്ച് നിങ്ങളെ വീണ്ടും ഓർക്കുകയില്ല. മുൻകൂട്ടി നന്ദി! :)';
	@override String get githubStarPromptStar => 'നക്ഷത്രം നൽകുക';
	@override String get githubStarPromptDontShowAgain => 'വീണ്ടും കാണിക്കരുതൂ';
	@override String get sourceCode => 'സോഴ്സ് കോഡ്';
	@override String get developedBy => 'വികസിപ്പിച്ച്';
	@override String get appDescription => 'A customizable Android app catalogue that allows you to update your apps directly from their APK sources.';
	@override String get safeModeEnabled => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാണ്';
	@override String get safeModeDisabled => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാണ്';
	@override String get safeModeDisable => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാക്കുക';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'സുരക്ഷിത മോഡ് അഡ്മിനിസ്ട്രേഷൻ';
	@override String get safeModeSetupDescription => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാക്കാൻ ഒരു രഹസ്യവാക്യം സജ്ജീകരിക്കുക. പ്രവർത്തനക്ഷമമാക്കിയാൽ, സുരക്ഷിത മോഡ് പുതിയ ആപ്പുകൾ ചേർക്കുന്നത് തടയുകയും രഹസ്യവാക്യം ഉപയോഗിച്ച് മാത്രമേ പ്രവർത്തനരഹിതമാക്കാൻ കഴിയൂ.';
	@override String get safeModeToggleDescription => 'സുരക്ഷിത മോഡ് ഓണോഫ് ചെയ്യാൻ നിങ്ങളുടെ രഹസ്യവാക്യം നൽകുക.';
	@override String get safeModeSetPassword => 'രഹസ്യവാക്യം സജ്ജീകരിക്കുക';
	@override String get safeModeConfirmPassword => 'രഹസ്യവാക്യം സ്ഥിരീകരിക്കുക';
	@override String get safeModeEnterPassword => 'രഹസ്യവാക്യം നൽകുക';
	@override String get safeModePasswordHint => 'കുറഞ്ഞത് 8 പ്രതീകങ്ങൾ';
	@override String get safeModePasswordTooShort => 'രഹസ്യവാക്യം കുറഞ്ഞത് 8 പ്രതീകങ്ങൾ നീളമുള്ളതായിരിക്കണം';
	@override String get safeModePasswordMismatch => 'രഹസ്യവാക്യങ്ങൾ പൊരുത്തുന്നില്ല';
	@override String get safeModePasswordIncorrect => 'തെറ്റായ രഹസ്യവാക്യം';
	@override String get safeModePasswordError => 'രഹസ്യവാക്യം സജ്ജീകരിക്കുന്നതിൽ പിശക്. ദയവായി വീണ്ടും ശ്രമിക്കുക.';
	@override String get safeModeEnable => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാക്കുക';
	@override String get safeModeToggle => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാക്കുക';
	@override String get safeModeTapsRemaining => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാക്കാൻ {count} ടാപ്പുകൾ ശേഷി';
	@override String get safeModeEnabledHint => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാണ്. പ്രവർത്തനരഹിതമാക്കാൻ ക്രമീകരണങ്ങളിലെ പതിപ്പ് നമ്പറിൽ നിരവധി തവണ ടാപ്പ് ചെയ്യുക.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'മനസ്സില്ല';
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

/// The flat map containing all translations for locale <ml>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsMl {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'ഒരു സാധുവായ {} ആപ്പ് URL അല്ല',
			'noReleaseFound' => 'അനുയോജ്യമായ റിലീസ് കണ്ടെത്താനായില്ല',
			'noVersionFound' => 'റിലീസ് പതിപ്പ് നിർണ്ണയിക്കാനായില്ല',
			'urlMatchesNoSource' => 'URL അറിയപ്പെടുന്ന ഒരു ഉറവിടവുമായും യോജിക്കുന്നില്ല',
			'cantInstallOlderVersion' => 'ആപ്പിന്റെ പഴയ പതിപ്പ് ഇൻസ്റ്റാൾ ചെയ്യാൻ കഴിയില്ല.',
			'appIdMismatch' => 'ഡൗൺലോഡ് ചെയ്ത പാക്കേജ് ഐഡി നിലവിലുള്ള ആപ്പ് ഐഡിയുമായി ചേരുന്നില്ല',
			'functionNotImplemented' => 'ഈ ക്ലാസ് ഈ ഫംഗ്ഷൻ നടപ്പിലാക്കിയിട്ടില്ല',
			'placeholder' => 'സ്ഥലസൂചകം',
			'someErrors' => 'ചില പിശകുകൾ സംഭവിച്ചു',
			'unexpectedError' => 'പ്രതീക്ഷിക്കാത്ത പിശക്',
			'ok' => 'ശരി',
			'and' => 'കൂടാതെ',
			'githubPATLabel' => 'GitHub പേഴ്സണൽ ആക്സസ് ടോക്കൺ',
			'includePrereleases' => 'പ്രീ-റിലീസുകൾ ഉൾപ്പെടുത്തുക',
			'fallbackToOlderReleases' => 'പഴയ റിലീസുകളിലേക്ക് മടങ്ങുക',
			'filterReleaseTitlesByRegEx' => 'റിലീസ് ശീർഷകങ്ങൾ റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് ഫിൽട്ടർ ചെയ്യുക',
			'invalidRegEx' => 'സാധുവായ റെഗുലർ എക്സ്പ്രഷൻ അല്ല',
			'noDescription' => 'വിവരണം ലഭ്യമല്ല',
			'cancel' => 'റദ്ദാക്കുക',
			'kContinue' => 'തുടരുക',
			'requiredInBrackets' => '(ആവശ്യമാണ്)',
			'dropdownNoOptsError' => 'തെറ്റ്: ഡ്രോപ്പ്ഡൗണിന് കുറഞ്ഞത് ഒരു ഓപ്ഷനെങ്കിലും ഉണ്ടായിരിക്കണം',
			'color' => 'നിറം',
			'standard' => 'സാധാരണ',
			'custom' => 'ഇഷ്‌ടാനുസൃതം',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You നിറങ്ങൾ ഉപയോഗിക്കുക',
			'githubStarredRepos' => 'GitHub സ്റ്റാർ ചെയ്ത റെപ്പോസിറ്ററികൾ',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'ഉപയോക്തൃനാമം',
			'wrongArgNum' => 'തെറ്റായ എണ്ണം ആർഗ്യുമെന്റുകൾ നൽകി',
			'xIsTrackOnly' => '{} ട്രാക്ക്-മാത്രം ആണ്',
			'source' => 'ഉറവിടം',
			'app' => 'ആപ്പ്',
			'appsFromSourceAreTrackOnly' => 'ഈ ഉറവിടത്തിൽ നിന്നുള്ള ആപ്പുകൾ \'ട്രാക്ക്-മാത്രം\' ആണ്.',
			'youPickedTrackOnly' => 'നിങ്ങൾ \'ട്രാക്ക്-മാത്രം\' ഓപ്ഷൻ തിരഞ്ഞെടുത്തു.',
			'trackOnlyAppDescription' => 'ആപ്പ് അപ്‌ഡേറ്റുകൾക്കായി ട്രാക്ക് ചെയ്യപ്പെടും, പക്ഷേ ഒബ്‌റ്റേനിയത്തിന് അത് ഡൗൺലോഡ് ചെയ്യാനോ ഇൻസ്റ്റാൾ ചെയ്യാനോ കഴിയില്ല.',
			'cancelled' => 'റദ്ദാക്കി',
			'appAlreadyAdded' => 'ആപ്പ് ഇതിനകം കൂട്ടിച്ചേർത്തിട്ടുണ്ട്',
			'alreadyUpToDateQuestion' => 'ആപ്പ് ഇതിനകം ഏറ്റവും പുതിയ പതിപ്പിലാണോ?',
			'addApp' => 'ആപ്പ് ചേർക്കുക',
			'appSourceURL' => 'ആപ്പ് ഉറവിട URL',
			'error' => 'പിശക്',
			'add' => 'ചേർക്കുക',
			'advanced' => 'അഡ്വാൻസ്ഡ്',
			'searchSomeSourcesLabel' => 'തിരയുക (ചില ഉറവിടങ്ങളിൽ മാത്രം)',
			'search' => 'തിരയുക',
			'searching' => 'Searching',
			'additionalOptsFor' => '{} നായുള്ള അധിക ഓപ്ഷനുകൾ',
			'supportedSources' => 'പിന്തുണയ്ക്കുന്ന ഉറവിടങ്ങൾ',
			'trackOnlyInBrackets' => '(ട്രാക്ക്-മാത്രം)',
			'searchableInBrackets' => '(തിരയാവുന്നത്)',
			'appsString' => 'ആപ്പുകൾ',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'സ്വാഗതം!',
			'noAppsSubtext' => 'നിങ്ങളുടെ ആദ്യത്തെ ആപ്പ് ചേർക്കാൻ താഴെ \'ആപ്പ് ചേർക്കുക\' ടാപ്പ് ചെയ്യുക.',
			'noAppsForFilter' => 'ഈ ഫിൽട്ടറിനായി ആപ്പുകളൊന്നുമില്ല',
			'byX' => '{} വഴി',
			'percentProgress' => 'പുരോഗതി: {}%',
			'pleaseWait' => 'ദയവായി കാത്തിരിക്കുക',
			'updateAvailable' => 'അപ്‌ഡേറ്റ് ലഭ്യമാണ്',
			'notInstalled' => 'ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'സ്യൂഡോ-പതിപ്പ്',
			'selectAll' => 'എല്ലാം തിരഞ്ഞെടുക്കുക',
			'deselectX' => '{} തിരഞ്ഞെടുക്കൽ റദ്ദാക്കുക',
			'xWillBeRemovedButRemainInstalled' => '{} ഒബ്‌റ്റേനിയത്തിൽ നിന്ന് നീക്കം ചെയ്യപ്പെടും, പക്ഷേ ഉപകരണത്തിൽ ഇൻസ്റ്റാൾ ചെയ്ത നിലയിൽ തുടരും.',
			'removeSelectedAppsQuestion' => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ നീക്കം ചെയ്യണോ?',
			'removeSelectedApps' => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ നീക്കം ചെയ്യുക',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} അപ്‌ഡേറ്റ് ചെയ്യുക',
			'installX' => '{} ഇൻസ്റ്റാൾ ചെയ്യുക',
			'markXTrackOnlyAsUpdated' => '{}\n(ട്രാക്ക്-മാത്രം)\nഅപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക',
			'changeX' => '{} മാറ്റുക',
			'installUpdateApps' => 'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യുക/അപ്‌ഡേറ്റ് ചെയ്യുക',
			'installUpdateSelectedApps' => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യുക/അപ്‌ഡേറ്റ് ചെയ്യുക',
			'markXSelectedAppsAsUpdated' => '{} തിരഞ്ഞെടുത്ത ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തണോ?',
			'no' => 'ഇല്ല',
			'yes' => 'അതെ',
			'markSelectedAppsUpdated' => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക',
			'pinToTop' => 'മുകളിൽ പിൻ ചെയ്യുക',
			'unpinFromTop' => 'മുകളിൽ നിന്ന് അൺപിൻ ചെയ്യുക',
			'resetInstallStatusForSelectedAppsQuestion' => 'തിരഞ്ഞെടുത്ത ആപ്പുകളുടെ ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യണോ?',
			'installStatusOfXWillBeResetExplanation' => 'തിരഞ്ഞെടുത്ത ഏതെങ്കിലും ആപ്പുകളുടെ ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യപ്പെടും.\n\nപരാജയപ്പെട്ട അപ്‌ഡേറ്റുകളോ മറ്റ് പ്രശ്നങ്ങളോ കാരണം ഒബ്‌റ്റേനിയത്തിൽ കാണിക്കുന്ന ആപ്പ് പതിപ്പ് തെറ്റായിരിക്കുമ്പോൾ ഇത് സഹായകമാകും.',
			'customLinkMessage' => 'ഈ ലിങ്കുകൾ ഒബ്‌റ്റേനിയം ഇൻസ്റ്റാൾ ചെയ്ത ഉപകരണങ്ങളിൽ പ്രവർത്തിക്കും',
			'shareAppConfigLinks' => 'ആപ്പ് കോൺഫിഗറേഷൻ HTML ലിങ്കായി പങ്കിടുക',
			'resetInstallStatus' => 'ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യുക',
			'more' => 'കൂടുതൽ',
			'removeOutdatedFilter' => 'കാലഹരണപ്പെട്ട ആപ്പ് ഫിൽട്ടർ നീക്കം ചെയ്യുക',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'കാലഹരണപ്പെട്ട ആപ്പുകൾ മാത്രം കാണിക്കുക',
			'filter' => 'ഫിൽട്ടർ',
			'filterApps' => 'ആപ്പുകൾ ഫിൽട്ടർ ചെയ്യുക',
			'filterDays' => 'Filter days',
			'appName' => 'ആപ്പിന്റെ പേര്',
			'author' => 'ഡെവലപ്പർ',
			'upToDateApps' => 'ഏറ്റവും പുതിയ പതിപ്പിലുള്ള ആപ്പുകൾ',
			'nonInstalledApps' => 'ഇൻസ്റ്റാൾ ചെയ്യാത്ത ആപ്പുകൾ',
			'importExport' => 'ഇംപോർട്ട്/എക്സ്പോർട്ട്',
			'settings' => 'ക്രമീകരണങ്ങൾ',
			'exportedTo' => '{} ലേക്ക് എക്സ്പോർട്ട് ചെയ്തു',
			'updatiumExport' => 'ഒബ്‌റ്റേനിയം എക്സ്പോർട്ട്',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'തെറ്റായ ഇൻപുട്ട്',
			'importedX' => '{} ഇംപോർട്ട് ചെയ്തു',
			'updatiumImport' => 'ഒബ്‌റ്റേനിയം ഇംപോർട്ട്',
			'importFromURLList' => 'URL ലിസ്റ്റിൽ നിന്ന് ഇംപോർട്ട് ചെയ്യുക',
			'searchQuery' => 'തിരയൽ ചോദ്യം',
			'appURLList' => 'ആപ്പ് URL ലിസ്റ്റ്',
			'line' => 'വരി',
			'searchX' => '{} തിരയുക',
			'noResults' => 'ഫലങ്ങളൊന്നും കണ്ടെത്തിയില്ല',
			'importX' => '{} ഇംപോർട്ട് ചെയ്യുക',
			'importedAppsIdDisclaimer' => 'ഇംപോർട്ട് ചെയ്ത ആപ്പുകൾ "ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല" എന്ന് തെറ്റായി കാണിച്ചേക്കാം.\nഇത് ശരിയാക്കാൻ, ഒബ്‌റ്റേനിയം വഴി അവ വീണ്ടും ഇൻസ്റ്റാൾ ചെയ്യുക.\nഇത് ആപ്പ് ഡാറ്റയെ ബാധിക്കില്ല.\n\nURL, മൂന്നാം കക്ഷി ഇംപോർട്ട് രീതികളെ മാത്രം ബാധിക്കുന്നു.',
			'importErrors' => 'ഇംപോർട്ട് പിശകുകൾ',
			'importedXOfYApps' => '{} ആപ്പുകളിൽ {} എണ്ണം ഇംപോർട്ട് ചെയ്തു.',
			'followingURLsHadErrors' => 'ഇനിപ്പറയുന്ന URL-കളിൽ പിശകുകൾ ഉണ്ടായിരുന്നു:',
			'selectURL' => 'URL തിരഞ്ഞെടുക്കുക',
			'selectURLs' => 'URL-കൾ തിരഞ്ഞെടുക്കുക',
			'pick' => 'തിരഞ്ഞെടുക്കുക',
			'theme' => 'തീം',
			'dark' => 'ഇരുണ്ട',
			'light' => 'ഇളം',
			'followSystem' => 'സിസ്റ്റം പിന്തുടരുക',
			'followSystemThemeExplanation' => 'സിസ്റ്റം തീം പിന്തുടരുന്നത് തേർഡ് പാർട്ടി ആപ്ലിക്കേഷനുകൾ ഉപയോഗിച്ച് മാത്രമേ സാധ്യമാകൂ',
			'useBlackTheme' => 'തനി കറുപ്പ് തീം ഉപയോഗിക്കുക',
			'appSortBy' => 'ആപ്പ് അടുക്കേണ്ട രീതി',
			'authorName' => 'ഡെവലപ്പർ/പേര്',
			'nameAuthor' => 'പേര്/ഡെവലപ്പർ',
			'asAdded' => 'ചേർത്ത ക്രമത്തിൽ',
			'appSortOrder' => 'ആപ്പ് അടുക്കേണ്ട ക്രമം',
			'ascending' => 'ആരോഹണ ക്രമത്തിൽ',
			'descending' => 'അവരോഹണ ക്രമത്തിൽ',
			'bgUpdateCheckInterval' => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന ഇടവേള',
			'neverManualOnly' => 'ഒരിക്കലുമില്ല - സ്വമേധയാ മാത്രം',
			'appearance' => 'രൂപം',
			'pinUpdates' => 'അപ്‌ഡേറ്റുകൾ ആപ്പ് കാഴ്ചയുടെ മുകളിൽ പിൻ ചെയ്യുക',
			'updates' => 'അപ്‌ഡേറ്റുകൾ',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'ഉറവിടം അടിസ്ഥാനമാക്കി',
			'appSource' => 'ആപ്പ് ഉറവിടം',
			'appSourceHint' => 'ആപ്പ് ഉറവിട റെപ്പോസിറ്ററി തുറക്കുക',
			'noLogs' => 'ലോഗുകളൊന്നുമില്ല',
			'appLogs' => 'ആപ്പ് ലോഗുകൾ',
			'appLogsHint' => 'ആപ്ലിക്കേഷൻ ലോഗുകൾ കാണുക',
			'close' => 'അടയ്ക്കുക',
			'share' => 'പങ്കിടുക',
			'appNotFound' => 'ആപ്പ് കണ്ടെത്തിയില്ല',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'ഒബ്‌റ്റേനിയം-എക്സ്പോർട്ട്',
			'pickAnAPK' => 'ഒരു APK തിരഞ്ഞെടുക്കുക',
			'appHasMoreThanOnePackage' => '{}-ന് ഒന്നിൽ കൂടുതൽ പാക്കേജുകൾ ഉണ്ട്:',
			'deviceSupportsXArch' => 'നിങ്ങളുടെ ഉപകരണം {} CPU ആർക്കിടെക്ചറിനെ പിന്തുണയ്ക്കുന്നു.',
			'deviceSupportsFollowingArchs' => 'നിങ്ങളുടെ ഉപകരണം ഇനിപ്പറയുന്ന CPU ആർക്കിടെക്ചറുകളെ പിന്തുണയ്ക്കുന്നു:',
			'warning' => 'മുന്നറിയിപ്പ്',
			'sourceIsXButPackageFromYPrompt' => 'ആപ്പ് ഉറവിടം \'{}\' ആണ്, പക്ഷേ റിലീസ് പാക്കേജ് \'{}\'-ൽ നിന്നാണ് വരുന്നത്. തുടരണോ?',
			'updatesAvailable' => 'അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്',
			'updatesAvailableNotifDescription' => 'ഒബ്‌റ്റേനിയം ട്രാക്ക് ചെയ്യുന്ന ഒന്നോ അതിലധികമോ ആപ്പുകൾക്ക് അപ്‌ഡേറ്റുകൾ ലഭ്യമാണെന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു',
			'noNewUpdates' => 'പുതിയ അപ്‌ഡേറ്റുകളൊന്നുമില്ല.',
			'xHasAnUpdate' => '{}-ന് ഒരു അപ്‌ഡേറ്റ് ഉണ്ട്.',
			'appsUpdated' => 'ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തു',
			'appsNotUpdated' => 'ആപ്ലിക്കേഷനുകൾ അപ്‌ഡേറ്റ് ചെയ്യുന്നതിൽ പരാജയപ്പെട്ടു',
			'appsUpdatedNotifDescription' => 'ഒന്നോ അതിലധികമോ ആപ്പുകളിലേക്കുള്ള അപ്‌ഡേറ്റുകൾ ബാക്ക്ഗ്രൗണ്ടിൽ പ്രയോഗിച്ചു എന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു',
			'xWasUpdatedToY' => '{} {} ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്തു.',
			'xWasNotUpdatedToY' => '{} {} ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്യാൻ പരാജയപ്പെട്ടു.',
			'errorCheckingUpdates' => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നതിൽ പിശക്',
			'errorCheckingUpdatesNotifDescription' => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന പരാജയപ്പെടുമ്പോൾ കാണിക്കുന്ന അറിയിപ്പ്',
			'appsRemoved' => 'ആപ്പുകൾ നീക്കം ചെയ്തു',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'ഒന്നോ അതിലധികമോ ആപ്പുകൾ ലോഡ് ചെയ്യുന്നതിൽ പിശകുകൾ കാരണം നീക്കം ചെയ്തു എന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു',
			'xWasRemovedDueToErrorY' => '{} ഈ പിശക് കാരണം നീക്കം ചെയ്തു: {}',
			'completeAppInstallation' => 'ആപ്പ് ഇൻസ്റ്റാളേഷൻ പൂർത്തിയാക്കുക',
			'updatiumMustBeOpenToInstallApps' => 'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ ഒബ്‌റ്റേനിയം തുറന്നിരിക്കണം',
			'completeAppInstallationNotifDescription' => 'ഒരു ആപ്പ് ഇൻസ്റ്റാൾ ചെയ്യുന്നത് പൂർത്തിയാക്കാൻ ഒബ്‌റ്റേനിയത്തിലേക്ക് മടങ്ങാൻ ഉപയോക്താവിനോട് ആവശ്യപ്പെടുന്നു',
			'checkingForUpdates' => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നു',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുമ്പോൾ ദൃശ്യമാകുന്ന താൽക്കാലിക അറിയിപ്പ്',
			'pleaseAllowInstallPerm' => 'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ ഒബ്‌റ്റേനിയത്തിന് അനുമതി നൽകുക',
			'trackOnly' => 'ട്രാക്ക്-മാത്രം',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'പിശക് {}',
			'versionCorrectionDisabled' => 'പതിപ്പ് തിരുത്തൽ പ്രവർത്തനരഹിതമാക്കി (പ്ലഗിൻ പ്രവർത്തിക്കുന്നതായി തോന്നുന്നില്ല)',
			'unknown' => 'അജ്ഞാതം',
			'none' => 'ഒന്നുമില്ല',
			'all' => 'All',
			'never' => 'ഒരിക്കലുമില്ല',
			'latestVersion' => 'ഏറ്റവും പുതിയത്',
			'installedVersionX' => 'ഇൻസ്റ്റാൾ ചെയ്തത്: {}',
			'lastUpdateCheckX' => 'അവസാന അപ്‌ഡേറ്റ് പരിശോധന: {}',
			'remove' => 'നീക്കം ചെയ്യുക',
			'quickLinks' => 'വേഗി ലിങ്കൾ',
			'yesMarkUpdated' => 'അതെ, അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക',
			'fdroid' => 'എഫ്-ഡ്രോയിഡ് ഒഫീഷ്യൽ',
			'appIdOrName' => 'ആപ്പ് ഐഡി അല്ലെങ്കിൽ പേര്',
			'appId' => 'ആപ്പ് ഐഡി',
			'appWithIdOrNameNotFound' => 'ആ ഐഡിയിലോ പേരിലോ ആപ്പുകളൊന്നും കണ്ടെത്തിയില്ല',
			'reposHaveMultipleApps' => 'റെപ്പോകളിൽ ഒന്നിലധികം ആപ്പുകൾ അടങ്ങിയിരിക്കാം',
			'fdroidThirdPartyRepo' => 'എഫ്-ഡ്രോയിഡ് തേർഡ് പാർട്ടി റെപ്പോ',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'ഇൻസ്റ്റാൾ ചെയ്യുക',
			'markInstalled' => 'ഇൻസ്റ്റാൾ ചെയ്തതായി അടയാളപ്പെടുത്തുക',
			'update' => 'അപ്‌ഡേറ്റ് ചെയ്യുക',
			'updated' => 'അപ്‌ഡേറ്റ് ചെയ്ത്',
			'markUpdated' => 'അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക',
			'download' => 'Download',
			'additionalOptions' => 'കൂടുതൽ ഓപ്ഷനുകൾ',
			'disableVersionDetection' => 'പതിപ്പ് കണ്ടെത്തൽ പ്രവർത്തനരഹിതമാക്കുക',
			'noVersionDetectionExplanation' => 'പതിപ്പ് കണ്ടെത്തൽ ശരിയായി പ്രവർത്തിക്കാത്ത ആപ്പുകൾക്ക് മാത്രമേ ഈ ഓപ്ഷൻ ഉപയോഗിക്കാവൂ.',
			'downloadingX' => '{} ഡൗൺലോഡ് ചെയ്യുന്നു',
			'downloadX' => '{} ഡൗൺലോഡ് ചെയ്യുക',
			'downloadedX' => '{} ഡൗൺലോഡ് ചെയ്തു',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'റിലീസ് അസറ്റ്',
			'downloadNotifDescription' => 'ഒരു ആപ്പ് ഡൗൺലോഡ് ചെയ്യുന്നതിലെ പുരോഗതി ഉപയോക്താവിനെ അറിയിക്കുന്നു',
			'noAPKFound' => 'APK കണ്ടെത്തിയില്ല',
			'noVersionDetection' => 'പതിപ്പ് കണ്ടെത്തൽ ഇല്ല',
			'categorize' => 'വിഭാഗീകരിക്കുക',
			'categories' => 'വിഭാഗങ്ങൾ',
			'category' => 'വിഭാഗം',
			'noCategory' => 'വിഭാഗമൊന്നുമില്ല',
			'noCategories' => 'വിഭാഗങ്ങളൊന്നുമില്ല',
			'categoryDeleteQuestion' => 'വിഭാഗങ്ങൾ ഇല്ലാതാക്കണോ?',
			'categoryDeleteWarning' => 'ഇല്ലാതാക്കിയ വിഭാഗങ്ങളിലെ എല്ലാ ആപ്പുകളും വിഭാഗരഹിതമായി ക്രമീകരിക്കും.',
			'addCategory' => 'വിഭാഗം ചേർക്കുക',
			'label' => 'ലേബൽ',
			'language' => 'ഭാഷ',
			'copiedToClipboard' => 'ക്ലിപ്ബോർഡിലേക്ക് പകർത്തി',
			'storagePermissionDenied' => 'സ്റ്റോറേജ് അനുമതി നിഷേധിച്ചു',
			'selectedCategorizeWarning' => 'ഇത് തിരഞ്ഞെടുത്ത ആപ്പുകൾക്കായി നിലവിലുള്ള ഏതൊരു വിഭാഗ ക്രമീകരണങ്ങളെയും മാറ്റിസ്ഥാപിക്കും.',
			'filterAPKsByRegEx' => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് APK-കൾ ഫിൽട്ടർ ചെയ്യുക',
			'removeFromUpdatium' => 'ഒബ്‌റ്റേനിയത്തിൽ നിന്ന് നീക്കം ചെയ്യുക',
			'uninstallFromDevice' => 'ഉപകരണത്തിൽ നിന്ന് അൺഇൻസ്റ്റാൾ ചെയ്യുക',
			'onlyWorksWithNonVersionDetectApps' => 'പതിപ്പ് കണ്ടെത്തൽ പ്രവർത്തനരഹിതമാക്കിയ ആപ്പുകൾക്ക് മാത്രമേ ഇത് പ്രവർത്തിക്കൂ.',
			'releaseDateAsVersion' => 'റിലീസ് തീയതി പതിപ്പ് സ്ട്രിംഗായി ഉപയോഗിക്കുക',
			'releaseTitleAsVersion' => 'റിലീസ് ശീർഷകം പതിപ്പ് സ്ട്രിംഗായി ഉപയോഗിക്കുക',
			'releaseDateAsVersionExplanation' => 'പതിപ്പ് കണ്ടെത്തൽ ശരിയായി പ്രവർത്തിക്കാത്തതും എന്നാൽ റിലീസ് തീയതി ലഭ്യമായതുമായ ആപ്പുകൾക്ക് മാത്രമേ ഈ ഓപ്ഷൻ ഉപയോഗിക്കാവൂ.',
			'changes' => 'മാറ്റങ്ങൾ',
			'releaseDate' => 'റിലീസ് തീയതി',
			'importFromURLsInFile' => 'ഫയലിലെ URL-കളിൽ നിന്ന് ഇംപോർട്ട് ചെയ്യുക (OPML പോലെ)',
			'versionDetectionExplanation' => 'കണ്ടെത്തിയ പതിപ്പ് സ്ട്രിംഗ് OS-ൽ നിന്ന് കണ്ടെത്തിയ പതിപ്പുമായി പൊരുത്തപ്പെടുത്തുക',
			'versionDetection' => 'പതിപ്പ് കണ്ടെത്തൽ',
			'standardVersionDetection' => 'സാധാരണ പതിപ്പ് കണ്ടെത്തൽ',
			'groupByCategory' => 'വിഭാഗം അനുസരിച്ച് ഗ്രൂപ്പുചെയ്യുക',
			'listView' => 'ലിസ്റ്റ് കാഴ്ച',
			'gridView' => 'ഗ്രിഡ് കാഴ്ച',
			'autoApkFilterByArch' => 'സാധ്യമെങ്കിൽ CPU ആർക്കിടെക്ചർ അനുസരിച്ച് APK-കൾ ഫിൽട്ടർ ചെയ്യാൻ ശ്രമിക്കുക',
			'autoLinkFilterByArch' => 'സാധ്യമെങ്കിൽ CPU ആർക്കിടെക്ചർ അനുസരിച്ച് ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യാൻ ശ്രമിക്കുക',
			'overrideSource' => 'ഉറവിടം അസാധുവാക്കുക',
			'dontShowAgain' => 'ഇത് വീണ്ടും കാണിക്കരുത്',
			'dontShowTrackOnlyWarnings' => '\'ട്രാക്ക്-മാത്രം\' മുന്നറിയിപ്പുകൾ കാണിക്കരുത്',
			'dontShowAPKOriginWarnings' => 'APK ഉറവിട മുന്നറിയിപ്പുകൾ കാണിക്കരുത്',
			'moveNonInstalledAppsToBottom' => 'ഇൻസ്റ്റാൾ ചെയ്യാത്ത ആപ്പുകൾ ആപ്പ് കാഴ്ചയുടെ താഴേക്ക് മാറ്റുക',
			'gitlabPATLabel' => 'GitLab പേഴ്സണൽ ആക്സസ് ടോക്കൺ',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'വിവരങ്ങൾ',
			'requiresCredentialsInSettings' => '{}-ന് അധിക ക്രെഡൻഷ്യലുകൾ ആവശ്യമാണ് (ക്രമീകരണങ്ങളിൽ)',
			'checkOnStart' => 'തുടങ്ങുമ്പോൾ അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക',
			'safeMode' => 'സുരക്ഷിത മോഡ്',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'അപ്പ് ചേർക്കൽ സുരക്ഷിത മോഡിൽ പ്രവർത്തനരഹിതമാണ്',
			'tryInferAppIdFromCode' => 'സോഴ്സ് കോഡിൽ നിന്ന് ആപ്പ് ഐഡി അനുമാനിക്കാൻ ശ്രമിക്കുക',
			'removeOnExternalUninstall' => 'പുറത്ത് നിന്ന് അൺഇൻസ്റ്റാൾ ചെയ്ത ആപ്പുകൾ സ്വയമേവ നീക്കം ചെയ്യുക',
			'pickHighestVersionCode' => 'ഏറ്റവും ഉയർന്ന പതിപ്പ് കോഡ് APK സ്വയമേവ തിരഞ്ഞെടുക്കുക',
			'checkUpdateOnDetailPage' => 'ഒരു ആപ്പ് വിശദാംശ പേജ് തുറക്കുമ്പോൾ അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക',
			'disablePageTransitions' => 'പേജ് ട്രാൻസിഷൻ ആനിമേഷൻ പ്രവർത്തനരഹിതമാക്കുക',
			'reversePageTransitions' => 'പേജ് ട്രാൻസിഷൻ ആനിമേഷൻ വിപരീതമാക്കുക',
			'minStarCount' => 'കുറഞ്ഞ് നക്ഷത്രം എണ്ണം',
			'addInfoBelow' => 'ഈ വിവരങ്ങൾ താഴെ ചേർക്കുക.',
			'addInfoInSettings' => 'ഈ വിവരങ്ങൾ ക്രമീകരണങ്ങളിൽ ചേർക്കുക.',
			'githubSourceNote' => 'API കീ ഉപയോഗിച്ച് GitHub നിരക്ക് പരിധി ഒഴിവാക്കാം.',
			'sortByLastLinkSegment' => 'ലിങ്കിന്റെ അവസാന ഭാഗം മാത്രം ഉപയോഗിച്ച് അടുക്കുക',
			'filterReleaseNotesByRegEx' => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് റിലീസ് നോട്ടുകൾ ഫിൽട്ടർ ചെയ്യുക',
			'customLinkFilterRegex' => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് APK ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യുക (ഡിഫോൾട് \'.apk$\')',
			'appsPossiblyUpdated' => 'ആപ്പ് അപ്‌ഡേറ്റുകൾ ശ്രമിച്ചു',
			'appsPossiblyUpdatedNotifDescription' => 'ഒന്നോ അതിലധികമോ ആപ്പുകളിലേക്കുള്ള അപ്‌ഡേറ്റുകൾ ബാക്ക്ഗ്രൗണ്ടിൽ പ്രയോഗിക്കാൻ സാധ്യതയുണ്ടെന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു',
			'xWasPossiblyUpdatedToY' => '{} {} ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്തിരിക്കാം.',
			'enableBackgroundUpdates' => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനക്ഷമമാക്കുക',
			'backgroundUpdateReqsExplanation' => 'എല്ലാ ആപ്പുകൾക്കും ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ സാധ്യമായെന്ന് വരില്ല.',
			'backgroundUpdateLimitsExplanation' => 'ബാക്ക്ഗ്രൗണ്ട് ഇൻസ്റ്റാളിന്റെ വിജയം ഒബ്‌റ്റേനിയം തുറക്കുമ്പോൾ മാത്രമേ നിർണ്ണയിക്കാൻ കഴിയൂ.',
			'verifyLatestTag' => '\'ഏറ്റവും പുതിയ\' ടാഗ് പരിശോധിക്കുക',
			'intermediateLinkRegex' => 'സന്ദർശിക്കാൻ ഒരു \'ഇന്റർമീഡിയറ്റ്\' ലിങ്കിനായി ഫിൽട്ടർ ചെയ്യുക',
			'filterByLinkText' => 'ലിങ്ക് ടെക്സ്റ്റ് ഉപയോഗിച്ച് ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യുക',
			'matchLinksOutsideATags' => '<a> ടാഗുകൾക്ക് പുറത്തെ ലിങ്കുകൾ പൊരുത്തുക',
			'intermediateLinkNotFound' => 'ഇന്റർമീഡിയറ്റ് ലിങ്ക് കണ്ടെത്തിയില്ല',
			'intermediateLink' => 'ഇന്റർമീഡിയറ്റ് ലിങ്ക്',
			'exemptFromBackgroundUpdates' => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകളിൽ നിന്ന് ഒഴിവാക്കുക (പ്രവർത്തനക്ഷമമാക്കിയിട്ടുണ്ടെങ്കിൽ)',
			'bgUpdatesOnWiFiOnly' => 'വൈഫൈയിൽ അല്ലാത്തപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക',
			'bgUpdatesWhileChargingOnly' => 'ചാർജ് ചെയ്യാത്തപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക',
			'autoSelectHighestVersionCode' => 'ഏറ്റവും ഉയർന്ന versionCode APK സ്വയമേവ തിരഞ്ഞെടുക്കുക',
			'versionExtractionRegEx' => 'പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്നതിനുള്ള റെഗുലർ എക്സ്പ്രഷൻ',
			'trimVersionString' => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് പതിപ്പ് സ്ട്രിംഗ് ട്രിം ചെയ്യുക',
			'matchGroupToUseForX' => '"{}" നായി ഉപയോഗിക്കേണ്ട ഗ്രൂപ്പ് മാച്ച് ചെയ്യുക',
			'matchGroupToUse' => 'പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്നതിനുള്ള റെഗുലർ എക്സ്പ്രഷനായി ഉപയോഗിക്കേണ്ട ഗ്രൂപ്പ് മാച്ച് ചെയ്യുക',
			'highlightTouchTargets' => 'കുറഞ്ഞ വ്യക്തതയുള്ള ടച്ച് ടാർഗെറ്റുകൾ ഹൈലൈറ്റ് ചെയ്യുക',
			'pickExportDir' => 'എക്സ്പോർട്ട് ഡയറക്ടറി തിരഞ്ഞെടുക്കുക',
			'autoExportOnChanges' => 'മാറ്റങ്ങൾ വരുമ്പോൾ സ്വയമേവ എക്സ്പോർട്ട് ചെയ്യുക',
			'includeSettings' => 'ക്രമീകരണങ്ങൾ ഉൾപ്പെടുത്തുക',
			'filterVersionsByRegEx' => 'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് പതിപ്പുകൾ ഫിൽട്ടർ ചെയ്യുക',
			'trySelectingSuggestedVersionCode' => 'നിർദ്ദേശിച്ച versionCode APK തിരഞ്ഞെടുക്കാൻ ശ്രമിക്കുക',
			'dontSortReleasesList' => 'API-യിൽ നിന്നുള്ള റിലീസ് ഓർഡർ നിലനിർത്തുക',
			'reverseSort' => 'റിവേഴ്സ് സോർട്ടിംഗ്',
			'takeFirstLink' => 'ആദ്യ ലിങ്ക് എടുക്കുക',
			'skipSort' => 'സോർട്ടിംഗ് ഒഴിവാക്കുക',
			'debugMenu' => 'ഡീബഗ് മെനു',
			'bgTaskStarted' => 'ബാക്ക്ഗ്രൗണ്ട് ടാസ്ക് ആരംഭിച്ചു - ലോഗുകൾ പരിശോധിക്കുക.',
			'runBgCheckNow' => 'ഇപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന പ്രവർത്തിപ്പിക്കുക',
			'versionExtractWholePage' => 'മുഴുവൻ പേജിലും പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്ന റെഗുലർ എക്സ്പ്രഷൻ പ്രയോഗിക്കുക',
			'installing' => 'ഇൻസ്റ്റാൾ ചെയ്യുന്നു',
			'skipUpdateNotifications' => 'അപ്‌ഡേറ്റ് അറിയിപ്പുകൾ ഒഴിവാക്കുക',
			'updatesAvailableNotifChannel' => 'അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്',
			'appsUpdatedNotifChannel' => 'ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തു',
			'appsPossiblyUpdatedNotifChannel' => 'ആപ്പ് അപ്‌ഡേറ്റുകൾ ശ്രമിച്ചു',
			'errorCheckingUpdatesNotifChannel' => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നതിൽ പിശക്',
			'appsRemovedNotifChannel' => 'ആപ്പുകൾ നീക്കം ചെയ്തു',
			'downloadingXNotifChannel' => '{} ഡൗൺലോഡ് ചെയ്യുന്നു',
			'completeAppInstallationNotifChannel' => 'ആപ്പ് ഇൻസ്റ്റാളേഷൻ പൂർത്തിയാക്കുക',
			'checkingForUpdatesNotifChannel' => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നു',
			'onlyCheckInstalledOrTrackOnlyApps' => 'ഇൻസ്റ്റാൾ ചെയ്തതും ട്രാക്ക്-മാത്രം ആപ്പുകളും മാത്രം അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക',
			'supportFixedAPKURL' => 'സ്ഥിരമായ APK URL-കളെ പിന്തുണയ്ക്കുക',
			'selectX' => '{} തിരഞ്ഞെടുക്കുക',
			'parallelDownloads' => 'പാരലൽ ഡൗൺലോഡുകൾ അനുവദിക്കുക',
			'useShizuku' => 'ഇൻസ്റ്റാൾ ചെയ്യാൻ ഷിസുകു അല്ലെങ്കിൽ സ്യൂ ഉപയോഗിക്കുക',
			'shizukuBinderNotFound' => 'ഷിസുകു സേവനം പ്രവർത്തിക്കുന്നില്ല',
			'shizukuOld' => 'പഴയ ഷിസുകു പതിപ്പ് (<11) - അത് അപ്‌ഡേറ്റ് ചെയ്യുക',
			'shizukuOldAndroidWithADB' => 'ആൻഡ്രോയിഡ് < 8.1 ഉള്ള ഷിസുകു ADB ഉപയോഗിച്ച് പ്രവർത്തിക്കുന്നു - ആൻഡ്രോയിഡ് അപ്‌ഡേറ്റ് ചെയ്യുക അല്ലെങ്കിൽ പകരം സ്യൂ ഉപയോഗിക്കുക',
			'shizukuPretendToBeGooglePlay' => 'Google Play ഇൻസ്റ്റാളേഷൻ ഉറവിടമായി സജ്ജമാക്കുക (ഷിസുകു ഉപയോഗിക്കുകയാണെങ്കിൽ)',
			'useSystemFont' => 'സിസ്റ്റം ഫോണ്ട് ഉപയോഗിക്കുക',
			'useVersionCodeAsOSVersion' => 'ആപ്പ് versionCode OS-ൽ കണ്ടെത്തിയ പതിപ്പായി ഉപയോഗിക്കുക',
			'requestHeader' => 'അഭ്യർത്ഥന തലക്കെട്ട്',
			'useLatestAssetDateAsReleaseDate' => 'ഏറ്റവും പുതിയ അസറ്റ് അപ്‌ലോഡ് റിലീസ് തീയതിയായി ഉപയോഗിക്കുക',
			'defaultPseudoVersioningMethod' => 'സ്ഥിരസ്ഥിതി സ്യൂഡോ-പതിപ്പ് രീതി',
			'partialAPKHash' => 'ഭാഗിക APK ഹാഷ്',
			'APKLinkHash' => 'APK ലിങ്ക് ഹാഷ്',
			'directAPKLink' => 'നേരിട്ടുള്ള APK ലിങ്ക്',
			'pseudoVersionInUse' => 'ഒരു സ്യൂഡോ-പതിപ്പ് ഉപയോഗത്തിലുണ്ട്',
			'installedVersion' => 'ഇൻസ്റ്റാൾ ചെയ്തത്',
			'installed' => 'ഇൻസ്റ്റാൾ ചെയ്തത്',
			'notInstalledApps' => 'ഇൻസ്റ്റാൾ ചെയ്തില്ല',
			'latest' => 'ഏറ്റവും പുതിയത്',
			'invertRegEx' => 'റെഗുലർ എക്സ്പ്രഷൻ വിപരീതമാക്കുക',
			'note' => 'ശ്രദ്ധിക്കുക',
			'selfHostedNote' => 'ഏത് ഉറവിടത്തിന്റെയും സെൽഫ്-ഹോസ്റ്റ് ചെയ്ത/കസ്റ്റം ഇൻസ്റ്റൻസുകളിലേക്ക് എത്താൻ "{}" ഡ്രോപ്പ്ഡൗൺ ഉപയോഗിക്കാം.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK പാഴ്സ് ചെയ്യാൻ കഴിഞ്ഞില്ല (അനുയോജ്യമല്ലാത്തതോ ഭാഗികമായ ഡൗൺലോഡോ)',
			'beforeNewInstallsShareToAppVerifier' => 'പുതിയ ആപ്പുകൾ AppVerifier-ലേക്ക് പങ്കിടുക (ലഭ്യമെങ്കിൽ)',
			'appVerifierInstructionToast' => 'AppVerifier-ലേക്ക് പങ്കിടുക, തുടർന്ന് തയ്യാറാകുമ്പോൾ ഇവിടെ തിരിച്ചെത്തുക.',
			'wiki' => 'സഹായം/വിക്കി',
			'wikiHint' => 'ഒബ്‌റ്റേനിയം വിക്കി ഡോക്യുമെന്റേഷൻ തുറക്കുക',
			'allowInsecure' => 'സുരക്ഷിതമല്ലാത്ത HTTP അഭ്യർത്ഥനകൾ അനുവദിക്കുക',
			'stayOneVersionBehind' => 'ഏറ്റവും പുതിയ പതിപ്പിന് ഒരു പതിപ്പ് പിന്നിൽ തുടരുക',
			'useFirstApkOfVersion' => 'ഒന്നിലധികം APK-കളിൽ നിന്ന് ആദ്യത്തേത് സ്വയമേവ തിരഞ്ഞെടുക്കുക',
			'refreshBeforeDownload' => 'ഡൗൺലോഡ് ചെയ്യുന്നതിന് മുമ്പ് ആപ്പ് വിവരങ്ങൾ പുതുക്കുക',
			'tencentAppStore' => 'ടെൻസെന്റ് ആപ്പ് സ്റ്റോർ',
			'coolApk' => 'കൂൾ APK',
			'vivoAppStore' => 'വിവോ ആപ്പ് സ്റ്റോർ (CN)',
			'name' => 'പേര്',
			'smartname' => 'പേര് (സ്മാർട്ട്)',
			'smartPlusDate' => 'സ്മാർട്ട് + തീയതി',
			'sortMethod' => 'അടുക്കുന്ന രീതി',
			'welcome' => 'സ്വാഗതം',
			'batteryOptimizationNote' => 'ഒബ്‌റ്റേനിയത്തിനായുള്ള OS ബാറ്ററി ഒപ്റ്റിമൈസേഷനുകൾ പ്രവർത്തനരഹിതമാക്കുകയാണെങ്കിൽ ബാക്ക്ഗ്രൗണ്ട് ഡൗൺലോഡുകൾ കൂടുതൽ വിശ്വസനീയമായി പ്രവർത്തിച്ചേക്കാം എന്നത് ശ്രദ്ധിക്കുക.',
			'fileDeletionError' => 'ഫയൽ ഇല്ലാതാക്കാൻ പരാജയപ്പെട്ടു (സ്വമേധയാ ഇല്ലാതാക്കാൻ ശ്രമിക്കുക, എന്നിട്ട് വീണ്ടും ശ്രമിക്കുക): "{}"',
			'foregroundService' => 'ഒബ്‌റ്റേനിയം ഫോർഗ്രൗണ്ട് സർവീസ്',
			'foregroundServiceExplanation' => 'അപ്‌ഡേറ്റ് പരിശോധനയ്ക്ക് ഒരു ഫോർഗ്രൗണ്ട് സർവീസ് ഉപയോഗിക്കുക (കൂടുതൽ വിശ്വസനീയം, കൂടുതൽ പവർ ഉപയോഗിക്കുന്നു)',
			'fgServiceNotice' => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയ്ക്ക് ഈ അറിയിപ്പ് ആവശ്യമാണ് (ഇത് OS ക്രമീകരണങ്ങളിൽ മറയ്ക്കാം)',
			'excludeSecrets' => 'രഹസ്യങ്ങൾ ഒഴിവാക്കുക',
			'GHReqPrefix' => 'GitHub അഭ്യർത്ഥനകൾക്ക് \'omeritzics/Updatium\' ഇൻസ്റ്റൻസ്',
			'includeZips' => 'ZIP ഫയലുകൾ ഉൾപ്പെടുത്തുക',
			'zippedApkFilterRegEx' => 'ZIP-നുള്ളിൽ APK-കൾ ഫിൽട്ടർ ചെയ്യുക',
			'multipleSigners' => 'ഒന്നിലധികം ഒപ്പന്മായികൾ',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: 'ആപ്പ് നീക്കം ചെയ്യണോ?', other: 'ആപ്പുകൾ നീക്കം ചെയ്യണോ?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: 'നിരവധി അഭ്യർത്ഥനകൾ (നിരക്ക് പരിമിതപ്പെടുത്തി) - {count} മിനിറ്റിനുള്ളിൽ വീണ്ടും ശ്രമിക്കുക', other: 'നിരവധി അഭ്യർത്ഥനകൾ (നിരക്ക് പരിമിതപ്പെടുത്തി) - {count} മിനിറ്റുകൾക്കുള്ളിൽ വീണ്ടും ശ്രമിക്കുക', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ ഒരു {error} നേരിട്ടു, {count} മിനിറ്റിനുള്ളിൽ വീണ്ടും ശ്രമിക്കാൻ ക്രമീകരിക്കും', other: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ ഒരു {error} നേരിട്ടു, {count} മിനിറ്റുകൾക്കുള്ളിൽ വീണ്ടും ശ്രമിക്കാൻ ക്രമീകരിക്കും', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ {count} അപ്‌ഡേറ്റ് കണ്ടെത്തി - ആവശ്യമെങ്കിൽ ഉപയോക്താവിനെ അറിയിക്കും', other: 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധനയിൽ {count} അപ്‌ഡേറ്റുകൾ കണ്ടെത്തി - ആവശ്യമെങ്കിൽ ഉപയോക്താവിനെ അറിയിക്കും', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{count} ആപ്പ്', other: '{count} ആപ്പുകൾ', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{count} URL', other: '{count} URL-കൾ', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{count} മിനിറ്റ്', other: '{count} മിനിറ്റുകൾ', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{count} മണിക്കൂർ', other: '{count} മണിക്കൂർ', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{count} ദിവസം', other: '{count} ദിവസങ്ങൾ', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{n} ലോഗ് മായ്ച്ചു (മുമ്പ് = {before}, ശേഷം = {after})', other: '{n} ലോഗുകൾ മായ്ച്ചു (മുമ്പ് = {before}, ശേഷം = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{app} കൂടാതെ 1 ആപ്പിന് കൂടി അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്.', other: '{app} കൂടാതെ {count} ആപ്പുകൾക്ക് കൂടി അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{app} കൂടാതെ 1 ആപ്പ് കൂടി അപ്‌ഡേറ്റ് ചെയ്തു.', other: '{app} കൂടാതെ {count} ആപ്പുകൾ കൂടി അപ്‌ഡേറ്റ് ചെയ്തു.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{app} കൂടാതെ 1 ആപ്പ് കൂടി അപ്‌ഡേറ്റ് ചെയ്യാൻ പരാജയപ്പെട്ടു.', other: '{app} കൂടാതെ {count} ആപ്പുകൾ കൂടി അപ്‌ഡേറ്റ് ചെയ്യാൻ പരാജയപ്പെട്ടു.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{app} കൂടാതെ 1 ആപ്പ് കൂടി അപ്‌ഡേറ്റ് ചെയ്തിരിക്കാം.', other: '{app} കൂടാതെ {count} ആപ്പുകൾ കൂടി അപ്‌ഡേറ്റ് ചെയ്തിരിക്കാം.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: '{count} APK', other: '{count} APK-കൾ', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('ml'))(n, one: 'സർട്ടിഫിക്കറ്റ് ഹാഷ്', other: 'സർട്ടിഫിക്കറ്റ് ഹാഷുകൾ', ), 
			'securityDisclaimerTitle' => 'സുരക്ഷാ നിയമ നിരാകരണം',
			'license' => 'ലൈസൻസ്',
			'licenseText' => 'ഈ അപ്ലിക്കേഷൻ GPL v3 ലൈസൻസിന് കീഴിൽ വിതരണം ചെയ്യുന്നു.',
			'disclaimer' => 'നിരാകരണം',
			'disclaimerText' => 'ഈ അപ്ലിക്കേഷൻ ബാഹ്യ അപ്ലിക്കേഷനുകൾ വിതരണം ചെയ്യുന്നില്ല, ഹോസ്റ്റ് ചെയ്യുന്നില്ല, അല്ലെങ്കിൽ പരിശോധിക്കുന്നില്ല. ഈ ടൂൾ ഉപയോഗിച്ച് ഇൻസ്റ്റാൾ ചെയ്യുന്ന ഏത് സോഫ്റ്റ്‌വെയറിന്റെയും സുരക്ഷയ്ക്കും നിയമപരമായ കാര്യങ്ങൾക്കും ഉപയോക്താവ് പൂർണ്ണമായും ഉത്തരവാദിത്തം വഹിക്കുന്നു.',
			'privacy' => 'സ്വകാര്യത',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'അംഗീകരിച്ച് തുടരുക',
			'decline' => 'നിരസിക്കുക',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'ഒബ്‌റ്റേനിയം ഇഷ്ടപ്പെടുന്നുണ്ടോ?',
			'githubStarPromptContent' => 'ഒബ്‌റ്റേനിയം എന്റെ ഒഴിവുസമയത്തിൽ വികസിപ്പിച്ച ഒരു സന്നദേഹ, ഓപ്പൺ-സോഴ്‌സ് കമ്മ്യൂണിറ്റി പ്രോജക്റ്റാണ്. നിങ്ങൾക്ക് ഈ പ്രോജക്റ്റിനെ പിന്തുണയാൻ താൽപ്പര്യമെങ്കിൽ, കൂടുതൽ ഉപയോക്താക്കളിലേക്കും സംഭാവകരിലേക്കും എത്താൻ സഹായിക്കാൻ GitHub-ൽ അതിന് ഒരു നക്ഷത്രം നൽകാൻ പരിഗണിക്കുക. ഇതിനെക്കുറിച്ച് നിങ്ങളെ വീണ്ടും ഓർക്കുകയില്ല. മുൻകൂട്ടി നന്ദി! :)',
			'githubStarPromptStar' => 'നക്ഷത്രം നൽകുക',
			'githubStarPromptDontShowAgain' => 'വീണ്ടും കാണിക്കരുതൂ',
			'sourceCode' => 'സോഴ്സ് കോഡ്',
			'developedBy' => 'വികസിപ്പിച്ച്',
			'appDescription' => 'A customizable Android app catalogue that allows you to update your apps directly from their APK sources.',
			'safeModeEnabled' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാണ്',
			'safeModeDisabled' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാണ്',
			'safeModeDisable' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാക്കുക',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'സുരക്ഷിത മോഡ് അഡ്മിനിസ്ട്രേഷൻ',
			'safeModeSetupDescription' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാക്കാൻ ഒരു രഹസ്യവാക്യം സജ്ജീകരിക്കുക. പ്രവർത്തനക്ഷമമാക്കിയാൽ, സുരക്ഷിത മോഡ് പുതിയ ആപ്പുകൾ ചേർക്കുന്നത് തടയുകയും രഹസ്യവാക്യം ഉപയോഗിച്ച് മാത്രമേ പ്രവർത്തനരഹിതമാക്കാൻ കഴിയൂ.',
			'safeModeToggleDescription' => 'സുരക്ഷിത മോഡ് ഓണോഫ് ചെയ്യാൻ നിങ്ങളുടെ രഹസ്യവാക്യം നൽകുക.',
			'safeModeSetPassword' => 'രഹസ്യവാക്യം സജ്ജീകരിക്കുക',
			'safeModeConfirmPassword' => 'രഹസ്യവാക്യം സ്ഥിരീകരിക്കുക',
			'safeModeEnterPassword' => 'രഹസ്യവാക്യം നൽകുക',
			'safeModePasswordHint' => 'കുറഞ്ഞത് 8 പ്രതീകങ്ങൾ',
			'safeModePasswordTooShort' => 'രഹസ്യവാക്യം കുറഞ്ഞത് 8 പ്രതീകങ്ങൾ നീളമുള്ളതായിരിക്കണം',
			'safeModePasswordMismatch' => 'രഹസ്യവാക്യങ്ങൾ പൊരുത്തുന്നില്ല',
			'safeModePasswordIncorrect' => 'തെറ്റായ രഹസ്യവാക്യം',
			'safeModePasswordError' => 'രഹസ്യവാക്യം സജ്ജീകരിക്കുന്നതിൽ പിശക്. ദയവായി വീണ്ടും ശ്രമിക്കുക.',
			'safeModeEnable' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാക്കുക',
			'safeModeToggle' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാക്കുക',
			'safeModeTapsRemaining' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനരഹിതമാക്കാൻ {count} ടാപ്പുകൾ ശേഷി',
			'safeModeEnabledHint' => 'സുരക്ഷിത മോഡ് പ്രവർത്തനക്ഷമമാണ്. പ്രവർത്തനരഹിതമാക്കാൻ ക്രമീകരണങ്ങളിലെ പതിപ്പ് നമ്പറിൽ നിരവധി തവണ ടാപ്പ് ചെയ്യുക.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'മനസ്സില്ല',
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
