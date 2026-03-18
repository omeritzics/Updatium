// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Malayalam (`ml`).
class AppLocalizationsMl extends AppLocalizations {
  AppLocalizationsMl([String locale = 'ml']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'ഒരു സാധുവായ $arg1 ആപ്പ് URL അല്ല';
  }

  @override
  String get noReleaseFound => 'അനുയോജ്യമായ റിലീസ് കണ്ടെത്താനായില്ല';

  @override
  String get noVersionFound => 'റിലീസ് പതിപ്പ് നിർണ്ണയിക്കാനായില്ല';

  @override
  String get urlMatchesNoSource =>
      'URL അറിയപ്പെടുന്ന ഒരു ഉറവിടവുമായും യോജിക്കുന്നില്ല';

  @override
  String get cantInstallOlderVersion =>
      'ആപ്പിന്റെ പഴയ പതിപ്പ് ഇൻസ്റ്റാൾ ചെയ്യാൻ കഴിയില്ല.';

  @override
  String get appIdMismatch =>
      'ഡൗൺലോഡ് ചെയ്ത പാക്കേജ് ഐഡി നിലവിലുള്ള ആപ്പ് ഐഡിയുമായി ചേരുന്നില്ല';

  @override
  String get functionNotImplemented =>
      'ഈ ക്ലാസ് ഈ ഫംഗ്ഷൻ നടപ്പിലാക്കിയിട്ടില്ല';

  @override
  String get placeholder => 'സ്ഥലസൂചകം';

  @override
  String get someErrors => 'ചില പിശകുകൾ സംഭവിച്ചു';

  @override
  String get unexpectedError => 'പ്രതീക്ഷിക്കാത്ത പിശക്';

  @override
  String get ok => 'ശരി';

  @override
  String get and => 'കൂടാതെ';

  @override
  String get githubPATLabel =>
      'GitHub പേഴ്സണൽ ആക്സസ് ടോക്കൺ (നിരക്ക് പരിധി വർദ്ധിപ്പിക്കുന്നു)';

  @override
  String get includePrereleases => 'പ്രീ-റിലീസുകൾ ഉൾപ്പെടുത്തുക';

  @override
  String get fallbackToOlderReleases => 'പഴയ റിലീസുകളിലേക്ക് മടങ്ങുക';

  @override
  String get filterReleaseTitlesByRegEx =>
      'റിലീസ് ശീർഷകങ്ങൾ റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get invalidRegEx => 'സാധുവായ റെഗുലർ എക്സ്പ്രഷൻ അല്ല';

  @override
  String get noDescription => 'വിവരണം ലഭ്യമല്ല';

  @override
  String get cancel => 'റദ്ദാക്കുക';

  @override
  String get requiredInBrackets => '(ആവശ്യമാണ്)';

  @override
  String get dropdownNoOptsError =>
      'തെറ്റ്: ഡ്രോപ്പ്ഡൗണിന് കുറഞ്ഞത് ഒരു ഓപ്ഷനെങ്കിലും ഉണ്ടായിരിക്കണം';

  @override
  String get color => 'നിറം';

  @override
  String get standard => 'സാധാരണ';

  @override
  String get custom => 'ഇഷ്‌ടാനുസൃതം';

  @override
  String get useMaterialYou => 'Material You നിറങ്ങൾ ഉപയോഗിക്കുക';

  @override
  String get githubStarredRepos => 'GitHub സ്റ്റാർ ചെയ്ത റെപ്പോസിറ്ററികൾ';

  @override
  String get uname => 'ഉപയോക്തൃനാമം';

  @override
  String get wrongArgNum => 'തെറ്റായ എണ്ണം ആർഗ്യുമെന്റുകൾ നൽകി';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 ട്രാക്ക്-മാത്രം ആണ്';
  }

  @override
  String get source => 'ഉറവിടം';

  @override
  String get app => 'ആപ്പ്';

  @override
  String get appsFromSourceAreTrackOnly =>
      'ഈ ഉറവിടത്തിൽ നിന്നുള്ള ആപ്പുകൾ \'ട്രാക്ക്-മാത്രം\' ആണ്.';

  @override
  String get youPickedTrackOnly =>
      'നിങ്ങൾ \'ട്രാക്ക്-മാത്രം\' ഓപ്ഷൻ തിരഞ്ഞെടുത്തു.';

  @override
  String get trackOnlyAppDescription =>
      'ആപ്പ് അപ്‌ഡേറ്റുകൾക്കായി ട്രാക്ക് ചെയ്യപ്പെടും, പക്ഷേ ഒബ്‌റ്റേനിയത്തിന് അത് ഡൗൺലോഡ് ചെയ്യാനോ ഇൻസ്റ്റാൾ ചെയ്യാനോ കഴിയില്ല.';

  @override
  String get cancelled => 'റദ്ദാക്കി';

  @override
  String get appAlreadyAdded => 'ആപ്പ് ഇതിനകം കൂട്ടിച്ചേർത്തിട്ടുണ്ട്';

  @override
  String get alreadyUpToDateQuestion =>
      'ആപ്പ് ഇതിനകം ഏറ്റവും പുതിയ പതിപ്പിലാണോ?';

  @override
  String get addApp => 'ആപ്പ് ചേർക്കുക';

  @override
  String get appSourceURL => 'ആപ്പ് ഉറവിട URL';

  @override
  String get error => 'പിശക്';

  @override
  String get add => 'ചേർക്കുക';

  @override
  String get searchSomeSourcesLabel => 'തിരയുക (ചില ഉറവിടങ്ങളിൽ മാത്രം)';

  @override
  String get search => 'തിരയുക';

  @override
  String additionalOptsFor(String arg1) {
    return '$arg1 നായുള്ള അധിക ഓപ്ഷനുകൾ';
  }

  @override
  String get supportedSources => 'പിന്തുണയ്ക്കുന്ന ഉറവിടങ്ങൾ';

  @override
  String get trackOnlyInBrackets => '(ട്രാക്ക്-മാത്രം)';

  @override
  String get searchableInBrackets => '(തിരയാവുന്നത്)';

  @override
  String get appsString => 'ആപ്പുകൾ';

  @override
  String get noApps => 'സ്വാഗതം!';

  @override
  String get noAppsSubtext =>
      'നിങ്ങളുടെ ആദ്യത്തെ ആപ്പ് ചേർക്കാൻ താഴെ \'ആപ്പ് ചേർക്കുക\' ടാപ്പ് ചെയ്യുക.';

  @override
  String get noAppsForFilter => 'ഈ ഫിൽട്ടറിനായി ആപ്പുകളൊന്നുമില്ല';

  @override
  String byX(String arg1) {
    return '$arg1 വഴി';
  }

  @override
  String percentProgress(String arg1) {
    return 'പുരോഗതി: $arg1%';
  }

  @override
  String get pleaseWait => 'ദയവായി കാത്തിരിക്കുക';

  @override
  String get updateAvailable => 'അപ്‌ഡേറ്റ് ലഭ്യമാണ്';

  @override
  String get notInstalled => 'ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല';

  @override
  String get pseudoVersion => 'സ്യൂഡോ-പതിപ്പ്';

  @override
  String get selectAll => 'എല്ലാം തിരഞ്ഞെടുക്കുക';

  @override
  String deselectX(String arg1) {
    return '$arg1 തിരഞ്ഞെടുക്കൽ റദ്ദാക്കുക';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 ഒബ്‌റ്റേനിയത്തിൽ നിന്ന് നീക്കം ചെയ്യപ്പെടും, പക്ഷേ ഉപകരണത്തിൽ ഇൻസ്റ്റാൾ ചെയ്ത നിലയിൽ തുടരും.';
  }

  @override
  String get removeSelectedAppsQuestion =>
      'തിരഞ്ഞെടുത്ത ആപ്പുകൾ നീക്കം ചെയ്യണോ?';

  @override
  String get removeSelectedApps => 'തിരഞ്ഞെടുത്ത ആപ്പുകൾ നീക്കം ചെയ്യുക';

  @override
  String updateX(String arg1) {
    return '$arg1 അപ്‌ഡേറ്റ് ചെയ്യുക';
  }

  @override
  String installX(String arg1) {
    return '$arg1 ഇൻസ്റ്റാൾ ചെയ്യുക';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return '$arg1\n(ട്രാക്ക്-മാത്രം)\nഅപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';
  }

  @override
  String changeX(String arg1) {
    return '$arg1 മാറ്റുക';
  }

  @override
  String get installUpdateApps =>
      'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യുക/അപ്‌ഡേറ്റ് ചെയ്യുക';

  @override
  String get installUpdateSelectedApps =>
      'തിരഞ്ഞെടുത്ത ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യുക/അപ്‌ഡേറ്റ് ചെയ്യുക';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return '$arg1 തിരഞ്ഞെടുത്ത ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തണോ?';
  }

  @override
  String get no => 'ഇല്ല';

  @override
  String get yes => 'അതെ';

  @override
  String get markSelectedAppsUpdated =>
      'തിരഞ്ഞെടുത്ത ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';

  @override
  String get pinToTop => 'മുകളിൽ പിൻ ചെയ്യുക';

  @override
  String get unpinFromTop => 'മുകളിൽ നിന്ന് അൺപിൻ ചെയ്യുക';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'തിരഞ്ഞെടുത്ത ആപ്പുകളുടെ ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യണോ?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'തിരഞ്ഞെടുത്ത ഏതെങ്കിലും ആപ്പുകളുടെ ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യപ്പെടും.\n\nപരാജയപ്പെട്ട അപ്‌ഡേറ്റുകളോ മറ്റ് പ്രശ്നങ്ങളോ കാരണം ഒബ്‌റ്റേനിയത്തിൽ കാണിക്കുന്ന ആപ്പ് പതിപ്പ് തെറ്റായിരിക്കുമ്പോൾ ഇത് സഹായകമാകും.';

  @override
  String get customLinkMessage =>
      'ഈ ലിങ്കുകൾ ഒബ്‌റ്റേനിയം ഇൻസ്റ്റാൾ ചെയ്ത ഉപകരണങ്ങളിൽ പ്രവർത്തിക്കും';

  @override
  String get shareAppConfigLinks => 'ആപ്പ് കോൺഫിഗറേഷൻ HTML ലിങ്കായി പങ്കിടുക';

  @override
  String get shareSelectedAppURLs => 'തിരഞ്ഞെടുത്ത ആപ്പ് URL-കൾ പങ്കിടുക';

  @override
  String get resetInstallStatus => 'ഇൻസ്റ്റാൾ സ്റ്റാറ്റസ് റീസെറ്റ് ചെയ്യുക';

  @override
  String get more => 'കൂടുതൽ';

  @override
  String get removeOutdatedFilter =>
      'കാലഹരണപ്പെട്ട ആപ്പ് ഫിൽട്ടർ നീക്കം ചെയ്യുക';

  @override
  String get showOutdatedOnly => 'കാലഹരണപ്പെട്ട ആപ്പുകൾ മാത്രം കാണിക്കുക';

  @override
  String get filter => 'ഫിൽട്ടർ';

  @override
  String get filterApps => 'ആപ്പുകൾ ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get appName => 'ആപ്പിന്റെ പേര്';

  @override
  String get author => 'ഡെവലപ്പർ';

  @override
  String get upToDateApps => 'ഏറ്റവും പുതിയ പതിപ്പിലുള്ള ആപ്പുകൾ';

  @override
  String get nonInstalledApps => 'ഇൻസ്റ്റാൾ ചെയ്യാത്ത ആപ്പുകൾ';

  @override
  String get importExport => 'ഇംപോർട്ട്/എക്സ്പോർട്ട്';

  @override
  String get settings => 'ക്രമീകരണങ്ങൾ';

  @override
  String exportedTo(String arg1) {
    return '$arg1 ലേക്ക് എക്സ്പോർട്ട് ചെയ്തു';
  }

  @override
  String get updatiumExport => 'ഒബ്‌റ്റേനിയം എക്സ്പോർട്ട്';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'തെറ്റായ ഇൻപുട്ട്';

  @override
  String importedX(String arg1) {
    return '$arg1 ഇംപോർട്ട് ചെയ്തു';
  }

  @override
  String get updatiumImport => 'ഒബ്‌റ്റേനിയം ഇംപോർട്ട്';

  @override
  String get importFromURLList => 'URL ലിസ്റ്റിൽ നിന്ന് ഇംപോർട്ട് ചെയ്യുക';

  @override
  String get searchQuery => 'തിരയൽ ചോദ്യം';

  @override
  String get appURLList => 'ആപ്പ് URL ലിസ്റ്റ്';

  @override
  String get line => 'വരി';

  @override
  String searchX(String arg1) {
    return '$arg1 തിരയുക';
  }

  @override
  String get noResults => 'ഫലങ്ങളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String importX(String arg1) {
    return '$arg1 ഇംപോർട്ട് ചെയ്യുക';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'ഇംപോർട്ട് ചെയ്ത ആപ്പുകൾ \"ഇൻസ്റ്റാൾ ചെയ്തിട്ടില്ല\" എന്ന് തെറ്റായി കാണിച്ചേക്കാം.\nഇത് ശരിയാക്കാൻ, ഒബ്‌റ്റേനിയം വഴി അവ വീണ്ടും ഇൻസ്റ്റാൾ ചെയ്യുക.\nഇത് ആപ്പ് ഡാറ്റയെ ബാധിക്കില്ല.\n\nURL, മൂന്നാം കക്ഷി ഇംപോർട്ട് രീതികളെ മാത്രം ബാധിക്കുന്നു.';

  @override
  String get importErrors => 'ഇംപോർട്ട് പിശകുകൾ';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1 ആപ്പുകളിൽ $arg2 എണ്ണം ഇംപോർട്ട് ചെയ്തു.';
  }

  @override
  String get followingURLsHadErrors =>
      'ഇനിപ്പറയുന്ന URL-കളിൽ പിശകുകൾ ഉണ്ടായിരുന്നു:';

  @override
  String get selectURL => 'URL തിരഞ്ഞെടുക്കുക';

  @override
  String get selectURLs => 'URL-കൾ തിരഞ്ഞെടുക്കുക';

  @override
  String get pick => 'തിരഞ്ഞെടുക്കുക';

  @override
  String get theme => 'തീം';

  @override
  String get dark => 'ഇരുണ്ട';

  @override
  String get light => 'ഇളം';

  @override
  String get followSystem => 'സിസ്റ്റം പിന്തുടരുക';

  @override
  String get followSystemThemeExplanation =>
      'സിസ്റ്റം തീം പിന്തുടരുന്നത് തേർഡ് പാർട്ടി ആപ്ലിക്കേഷനുകൾ ഉപയോഗിച്ച് മാത്രമേ സാധ്യമാകൂ';

  @override
  String get useBlackTheme => 'തനി കറുപ്പ് തീം ഉപയോഗിക്കുക';

  @override
  String get appSortBy => 'ആപ്പ് അടുക്കേണ്ട രീതി';

  @override
  String get authorName => 'ഡെവലപ്പർ/പേര്';

  @override
  String get nameAuthor => 'പേര്/ഡെവലപ്പർ';

  @override
  String get asAdded => 'ചേർത്ത ക്രമത്തിൽ';

  @override
  String get appSortOrder => 'ആപ്പ് അടുക്കേണ്ട ക്രമം';

  @override
  String get ascending => 'ആരോഹണ ക്രമത്തിൽ';

  @override
  String get descending => 'അവരോഹണ ക്രമത്തിൽ';

  @override
  String get bgUpdateCheckInterval => 'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന ഇടവേള';

  @override
  String get neverManualOnly => 'ഒരിക്കലുമില്ല - സ്വമേധയാ മാത്രം';

  @override
  String get appearance => 'രൂപം';

  @override
  String get pinUpdates => 'അപ്‌ഡേറ്റുകൾ ആപ്പ് കാഴ്ചയുടെ മുകളിൽ പിൻ ചെയ്യുക';

  @override
  String get updates => 'അപ്‌ഡേറ്റുകൾ';

  @override
  String get sourceSpecific => 'ഉറവിടം അടിസ്ഥാനമാക്കി';

  @override
  String get appSource => 'ആപ്പ് ഉറവിടം';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'ലോഗുകളൊന്നുമില്ല';

  @override
  String get appLogs => 'ആപ്പ് ലോഗുകൾ';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'അടയ്ക്കുക';

  @override
  String get share => 'പങ്കിടുക';

  @override
  String get appNotFound => 'ആപ്പ് കണ്ടെത്തിയില്ല';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'ഒബ്‌റ്റേനിയം-എക്സ്പോർട്ട്';

  @override
  String get pickAnAPK => 'ഒരു APK തിരഞ്ഞെടുക്കുക';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1-ന് ഒന്നിൽ കൂടുതൽ പാക്കേജുകൾ ഉണ്ട്:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'നിങ്ങളുടെ ഉപകരണം $arg1 CPU ആർക്കിടെക്ചറിനെ പിന്തുണയ്ക്കുന്നു.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'നിങ്ങളുടെ ഉപകരണം ഇനിപ്പറയുന്ന CPU ആർക്കിടെക്ചറുകളെ പിന്തുണയ്ക്കുന്നു:';

  @override
  String get warning => 'മുന്നറിയിപ്പ്';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'ആപ്പ് ഉറവിടം \'$arg1\' ആണ്, പക്ഷേ റിലീസ് പാക്കേജ് \'$arg2\'-ൽ നിന്നാണ് വരുന്നത്. തുടരണോ?';
  }

  @override
  String get updatesAvailable => 'അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്';

  @override
  String get updatesAvailableNotifDescription =>
      'ഒബ്‌റ്റേനിയം ട്രാക്ക് ചെയ്യുന്ന ഒന്നോ അതിലധികമോ ആപ്പുകൾക്ക് അപ്‌ഡേറ്റുകൾ ലഭ്യമാണെന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';

  @override
  String get noNewUpdates => 'പുതിയ അപ്‌ഡേറ്റുകളൊന്നുമില്ല.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1-ന് ഒരു അപ്‌ഡേറ്റ് ഉണ്ട്.';
  }

  @override
  String get appsUpdated => 'ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തു';

  @override
  String get appsNotUpdated =>
      'ആപ്ലിക്കേഷനുകൾ അപ്‌ഡേറ്റ് ചെയ്യുന്നതിൽ പരാജയപ്പെട്ടു';

  @override
  String get appsUpdatedNotifDescription =>
      'ഒന്നോ അതിലധികമോ ആപ്പുകളിലേക്കുള്ള അപ്‌ഡേറ്റുകൾ ബാക്ക്ഗ്രൗണ്ടിൽ പ്രയോഗിച്ചു എന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 $arg2 ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്തു.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return '$arg1 $arg2 ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്യാൻ പരാജയപ്പെട്ടു.';
  }

  @override
  String get errorCheckingUpdates => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നതിൽ പിശക്';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന പരാജയപ്പെടുമ്പോൾ കാണിക്കുന്ന അറിയിപ്പ്';

  @override
  String get appsRemoved => 'ആപ്പുകൾ നീക്കം ചെയ്തു';

  @override
  String get appsRemovedNotifDescription =>
      'ഒന്നോ അതിലധികമോ ആപ്പുകൾ ലോഡ് ചെയ്യുന്നതിൽ പിശകുകൾ കാരണം നീക്കം ചെയ്തു എന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 ഈ പിശക് കാരണം നീക്കം ചെയ്തു: $arg2';
  }

  @override
  String get completeAppInstallation => 'ആപ്പ് ഇൻസ്റ്റാളേഷൻ പൂർത്തിയാക്കുക';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ ഒബ്‌റ്റേനിയം തുറന്നിരിക്കണം';

  @override
  String get completeAppInstallationNotifDescription =>
      'ഒരു ആപ്പ് ഇൻസ്റ്റാൾ ചെയ്യുന്നത് പൂർത്തിയാക്കാൻ ഒബ്‌റ്റേനിയത്തിലേക്ക് മടങ്ങാൻ ഉപയോക്താവിനോട് ആവശ്യപ്പെടുന്നു';

  @override
  String get checkingForUpdates => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നു';

  @override
  String get checkingForUpdatesNotifDescription =>
      'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുമ്പോൾ ദൃശ്യമാകുന്ന താൽക്കാലിക അറിയിപ്പ്';

  @override
  String get pleaseAllowInstallPerm =>
      'ആപ്പുകൾ ഇൻസ്റ്റാൾ ചെയ്യാൻ ഒബ്‌റ്റേനിയത്തിന് അനുമതി നൽകുക';

  @override
  String get trackOnly => 'ട്രാക്ക്-മാത്രം';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'പിശക് $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'പതിപ്പ് തിരുത്തൽ പ്രവർത്തനരഹിതമാക്കി (പ്ലഗിൻ പ്രവർത്തിക്കുന്നതായി തോന്നുന്നില്ല)';

  @override
  String get unknown => 'അജ്ഞാതം';

  @override
  String get none => 'ഒന്നുമില്ല';

  @override
  String get all => 'All';

  @override
  String get never => 'ഒരിക്കലുമില്ല';

  @override
  String latestVersionX(String arg1) {
    return 'ഏറ്റവും പുതിയത്: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'ഇൻസ്റ്റാൾ ചെയ്തത്: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'അവസാന അപ്‌ഡേറ്റ് പരിശോധന: $arg1';
  }

  @override
  String get remove => 'നീക്കം ചെയ്യുക';

  @override
  String get yesMarkUpdated => 'അതെ, അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';

  @override
  String get fdroid => 'എഫ്-ഡ്രോയിഡ് ഒഫീഷ്യൽ';

  @override
  String get appIdOrName => 'ആപ്പ് ഐഡി അല്ലെങ്കിൽ പേര്';

  @override
  String get appId => 'ആപ്പ് ഐഡി';

  @override
  String get appWithIdOrNameNotFound =>
      'ആ ഐഡിയിലോ പേരിലോ ആപ്പുകളൊന്നും കണ്ടെത്തിയില്ല';

  @override
  String get reposHaveMultipleApps =>
      'റെപ്പോകളിൽ ഒന്നിലധികം ആപ്പുകൾ അടങ്ങിയിരിക്കാം';

  @override
  String get fdroidThirdPartyRepo => 'എഫ്-ഡ്രോയിഡ് തേർഡ് പാർട്ടി റെപ്പോ';

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
  String get install => 'ഇൻസ്റ്റാൾ ചെയ്യുക';

  @override
  String get markInstalled => 'ഇൻസ്റ്റാൾ ചെയ്തതായി അടയാളപ്പെടുത്തുക';

  @override
  String get update => 'അപ്‌ഡേറ്റ് ചെയ്യുക';

  @override
  String get updated => 'അപ്‌ഡേറ്റ് ചെയ്ത്';

  @override
  String get markUpdated => 'അപ്‌ഡേറ്റ് ചെയ്തതായി അടയാളപ്പെടുത്തുക';

  @override
  String get additionalOptions => 'കൂടുതൽ ഓപ്ഷനുകൾ';

  @override
  String get disableVersionDetection =>
      'പതിപ്പ് കണ്ടെത്തൽ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get noVersionDetectionExplanation =>
      'പതിപ്പ് കണ്ടെത്തൽ ശരിയായി പ്രവർത്തിക്കാത്ത ആപ്പുകൾക്ക് മാത്രമേ ഈ ഓപ്ഷൻ ഉപയോഗിക്കാവൂ.';

  @override
  String downloadingX(String arg1) {
    return '$arg1 ഡൗൺലോഡ് ചെയ്യുന്നു';
  }

  @override
  String downloadX(String arg1) {
    return '$arg1 ഡൗൺലോഡ് ചെയ്യുക';
  }

  @override
  String downloadedX(String arg1) {
    return '$arg1 ഡൗൺലോഡ് ചെയ്തു';
  }

  @override
  String get releaseAsset => 'റിലീസ് അസറ്റ്';

  @override
  String get downloadNotifDescription =>
      'ഒരു ആപ്പ് ഡൗൺലോഡ് ചെയ്യുന്നതിലെ പുരോഗതി ഉപയോക്താവിനെ അറിയിക്കുന്നു';

  @override
  String get noAPKFound => 'APK കണ്ടെത്തിയില്ല';

  @override
  String get noVersionDetection => 'പതിപ്പ് കണ്ടെത്തൽ ഇല്ല';

  @override
  String get categorize => 'വിഭാഗീകരിക്കുക';

  @override
  String get categories => 'വിഭാഗങ്ങൾ';

  @override
  String get category => 'വിഭാഗം';

  @override
  String get noCategory => 'വിഭാഗമൊന്നുമില്ല';

  @override
  String get noCategories => 'വിഭാഗങ്ങളൊന്നുമില്ല';

  @override
  String get deleteCategoriesQuestion => 'വിഭാഗങ്ങൾ ഇല്ലാതാക്കണോ?';

  @override
  String get categoryDeleteWarning =>
      'ഇല്ലാതാക്കിയ വിഭാഗങ്ങളിലെ എല്ലാ ആപ്പുകളും വിഭാഗരഹിതമായി ക്രമീകരിക്കും.';

  @override
  String get addCategory => 'വിഭാഗം ചേർക്കുക';

  @override
  String get label => 'ലേബൽ';

  @override
  String get language => 'ഭാഷ';

  @override
  String get copiedToClipboard => 'ക്ലിപ്ബോർഡിലേക്ക് പകർത്തി';

  @override
  String get storagePermissionDenied => 'സ്റ്റോറേജ് അനുമതി നിഷേധിച്ചു';

  @override
  String get selectedCategorizeWarning =>
      'ഇത് തിരഞ്ഞെടുത്ത ആപ്പുകൾക്കായി നിലവിലുള്ള ഏതൊരു വിഭാഗ ക്രമീകരണങ്ങളെയും മാറ്റിസ്ഥാപിക്കും.';

  @override
  String get filterAPKsByRegEx =>
      'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് APK-കൾ ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get removeFromUpdatium => 'ഒബ്‌റ്റേനിയത്തിൽ നിന്ന് നീക്കം ചെയ്യുക';

  @override
  String get uninstallFromDevice => 'ഉപകരണത്തിൽ നിന്ന് അൺഇൻസ്റ്റാൾ ചെയ്യുക';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'പതിപ്പ് കണ്ടെത്തൽ പ്രവർത്തനരഹിതമാക്കിയ ആപ്പുകൾക്ക് മാത്രമേ ഇത് പ്രവർത്തിക്കൂ.';

  @override
  String get releaseDateAsVersion =>
      'റിലീസ് തീയതി പതിപ്പ് സ്ട്രിംഗായി ഉപയോഗിക്കുക';

  @override
  String get releaseTitleAsVersion =>
      'റിലീസ് ശീർഷകം പതിപ്പ് സ്ട്രിംഗായി ഉപയോഗിക്കുക';

  @override
  String get releaseDateAsVersionExplanation =>
      'പതിപ്പ് കണ്ടെത്തൽ ശരിയായി പ്രവർത്തിക്കാത്തതും എന്നാൽ റിലീസ് തീയതി ലഭ്യമായതുമായ ആപ്പുകൾക്ക് മാത്രമേ ഈ ഓപ്ഷൻ ഉപയോഗിക്കാവൂ.';

  @override
  String get changes => 'മാറ്റങ്ങൾ';

  @override
  String get releaseDate => 'റിലീസ് തീയതി';

  @override
  String get importFromURLsInFile =>
      'ഫയലിലെ URL-കളിൽ നിന്ന് ഇംപോർട്ട് ചെയ്യുക (OPML പോലെ)';

  @override
  String get versionDetectionExplanation =>
      'കണ്ടെത്തിയ പതിപ്പ് സ്ട്രിംഗ് OS-ൽ നിന്ന് കണ്ടെത്തിയ പതിപ്പുമായി പൊരുത്തപ്പെടുത്തുക';

  @override
  String get versionDetection => 'പതിപ്പ് കണ്ടെത്തൽ';

  @override
  String get standardVersionDetection => 'സാധാരണ പതിപ്പ് കണ്ടെത്തൽ';

  @override
  String get groupByCategory => 'വിഭാഗം അനുസരിച്ച് ഗ്രൂപ്പുചെയ്യുക';

  @override
  String get listView => 'ലിസ്റ്റ് കാഴ്ച';

  @override
  String get gridView => 'ഗ്രിഡ് കാഴ്ച';

  @override
  String get autoApkFilterByArch =>
      'സാധ്യമെങ്കിൽ CPU ആർക്കിടെക്ചർ അനുസരിച്ച് APK-കൾ ഫിൽട്ടർ ചെയ്യാൻ ശ്രമിക്കുക';

  @override
  String get autoLinkFilterByArch =>
      'സാധ്യമെങ്കിൽ CPU ആർക്കിടെക്ചർ അനുസരിച്ച് ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യാൻ ശ്രമിക്കുക';

  @override
  String get overrideSource => 'ഉറവിടം അസാധുവാക്കുക';

  @override
  String get dontShowAgain => 'ഇത് വീണ്ടും കാണിക്കരുത്';

  @override
  String get dontShowTrackOnlyWarnings =>
      '\'ട്രാക്ക്-മാത്രം\' മുന്നറിയിപ്പുകൾ കാണിക്കരുത്';

  @override
  String get dontShowAPKOriginWarnings =>
      'APK ഉറവിട മുന്നറിയിപ്പുകൾ കാണിക്കരുത്';

  @override
  String get moveNonInstalledAppsToBottom =>
      'ഇൻസ്റ്റാൾ ചെയ്യാത്ത ആപ്പുകൾ ആപ്പ് കാഴ്ചയുടെ താഴേക്ക് മാറ്റുക';

  @override
  String get hideNonInstalledApps => 'ഇൻസ്റ്റാൾ ചെയ്യാത്ത ആപ്പുകൾ മറയ്ക്കുക';

  @override
  String get gitlabPATLabel => 'GitLab പേഴ്സണൽ ആക്സസ് ടോക്കൺ';

  @override
  String get about => 'വിവരങ്ങൾ';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1-ന് അധിക ക്രെഡൻഷ്യലുകൾ ആവശ്യമാണ് (ക്രമീകരണങ്ങളിൽ)';
  }

  @override
  String get checkOnStart => 'തുടങ്ങുമ്പോൾ അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക';

  @override
  String get safeMode => 'സുരക്ഷിത മോഡ്';

  @override
  String get safeModeDescription =>
      'അപ്പ് ചേർക്കൽ പേജ് മറയ്ക്കുകയും പകരം ഇറക്കുമതി/കയറ്റുമതി കാണിക്കുക';

  @override
  String get safeModeAddAppDisabled =>
      'അപ്പ് ചേർക്കൽ സുരക്ഷിത മോഡിൽ പ്രവർത്തനരഹിതമാണ്';

  @override
  String get tryInferAppIdFromCode =>
      'സോഴ്സ് കോഡിൽ നിന്ന് ആപ്പ് ഐഡി അനുമാനിക്കാൻ ശ്രമിക്കുക';

  @override
  String get removeOnExternalUninstall =>
      'പുറത്ത് നിന്ന് അൺഇൻസ്റ്റാൾ ചെയ്ത ആപ്പുകൾ സ്വയമേവ നീക്കം ചെയ്യുക';

  @override
  String get pickHighestVersionCode =>
      'ഏറ്റവും ഉയർന്ന പതിപ്പ് കോഡ് APK സ്വയമേവ തിരഞ്ഞെടുക്കുക';

  @override
  String get checkUpdateOnDetailPage =>
      'ഒരു ആപ്പ് വിശദാംശ പേജ് തുറക്കുമ്പോൾ അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക';

  @override
  String get disablePageTransitions =>
      'പേജ് ട്രാൻസിഷൻ ആനിമേഷനുകൾ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get reversePageTransitions =>
      'പേജ് ട്രാൻസിഷൻ ആനിമേഷനുകൾ വിപരീതമാക്കുക';

  @override
  String get minStarCount => 'Minimum star count';

  @override
  String get addInfoBelow => 'ഈ വിവരങ്ങൾ താഴെ ചേർക്കുക.';

  @override
  String get addInfoInSettings => 'ഈ വിവരങ്ങൾ ക്രമീകരണങ്ങളിൽ ചേർക്കുക.';

  @override
  String get githubSourceNote =>
      'API കീ ഉപയോഗിച്ച് GitHub നിരക്ക് പരിധി ഒഴിവാക്കാം.';

  @override
  String get sortByLastLinkSegment =>
      'ലിങ്കിന്റെ അവസാന ഭാഗം മാത്രം ഉപയോഗിച്ച് അടുക്കുക';

  @override
  String get filterReleaseNotesByRegEx =>
      'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് റിലീസ് നോട്ടുകൾ ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get customLinkFilterRegex =>
      'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ചുള്ള കസ്റ്റം APK ലിങ്ക് ഫിൽട്ടർ (സ്ഥിരസ്ഥിതി \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'ആപ്പ് അപ്‌ഡേറ്റുകൾ ശ്രമിച്ചു';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'ഒന്നോ അതിലധികമോ ആപ്പുകളിലേക്കുള്ള അപ്‌ഡേറ്റുകൾ ബാക്ക്ഗ്രൗണ്ടിൽ പ്രയോഗിക്കാൻ സാധ്യതയുണ്ടെന്ന് ഉപയോക്താവിനെ അറിയിക്കുന്നു';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 $arg2 ലേക്ക് അപ്‌ഡേറ്റ് ചെയ്തിരിക്കാം.';
  }

  @override
  String get enableBackgroundUpdates =>
      'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനക്ഷമമാക്കുക';

  @override
  String get backgroundUpdateReqsExplanation =>
      'എല്ലാ ആപ്പുകൾക്കും ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ സാധ്യമായെന്ന് വരില്ല.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'ബാക്ക്ഗ്രൗണ്ട് ഇൻസ്റ്റാളിന്റെ വിജയം ഒബ്‌റ്റേനിയം തുറക്കുമ്പോൾ മാത്രമേ നിർണ്ണയിക്കാൻ കഴിയൂ.';

  @override
  String get verifyLatestTag => '\'ഏറ്റവും പുതിയ\' ടാഗ് പരിശോധിക്കുക';

  @override
  String get intermediateLinkRegex =>
      'സന്ദർശിക്കാൻ ഒരു \'ഇന്റർമീഡിയറ്റ്\' ലിങ്കിനായി ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get filterByLinkText =>
      'ലിങ്ക് ടെക്സ്റ്റ് ഉപയോഗിച്ച് ലിങ്കുകൾ ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get matchLinksOutsideATags => 'Match links outside <a> tags';

  @override
  String get intermediateLinkNotFound => 'ഇന്റർമീഡിയറ്റ് ലിങ്ക് കണ്ടെത്തിയില്ല';

  @override
  String get intermediateLink => 'ഇന്റർമീഡിയറ്റ് ലിങ്ക്';

  @override
  String get exemptFromBackgroundUpdates =>
      'ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകളിൽ നിന്ന് ഒഴിവാക്കുക (പ്രവർത്തനക്ഷമമാക്കിയിട്ടുണ്ടെങ്കിൽ)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'വൈഫൈയിൽ അല്ലാത്തപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'ചാർജ് ചെയ്യാത്തപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റുകൾ പ്രവർത്തനരഹിതമാക്കുക';

  @override
  String get autoSelectHighestVersionCode =>
      'ഏറ്റവും ഉയർന്ന versionCode APK സ്വയമേവ തിരഞ്ഞെടുക്കുക';

  @override
  String get versionExtractionRegEx =>
      'പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്നതിനുള്ള റെഗുലർ എക്സ്പ്രഷൻ';

  @override
  String get trimVersionString =>
      'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് പതിപ്പ് സ്ട്രിംഗ് ട്രിം ചെയ്യുക';

  @override
  String matchGroupToUseForX(String arg1) {
    return '\"$arg1\" നായി ഉപയോഗിക്കേണ്ട ഗ്രൂപ്പ് മാച്ച് ചെയ്യുക';
  }

  @override
  String get matchGroupToUse =>
      'പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്നതിനുള്ള റെഗുലർ എക്സ്പ്രഷനായി ഉപയോഗിക്കേണ്ട ഗ്രൂപ്പ് മാച്ച് ചെയ്യുക';

  @override
  String get highlightTouchTargets =>
      'കുറഞ്ഞ വ്യക്തതയുള്ള ടച്ച് ടാർഗെറ്റുകൾ ഹൈലൈറ്റ് ചെയ്യുക';

  @override
  String get pickExportDir => 'എക്സ്പോർട്ട് ഡയറക്ടറി തിരഞ്ഞെടുക്കുക';

  @override
  String get autoExportOnChanges =>
      'മാറ്റങ്ങൾ വരുമ്പോൾ സ്വയമേവ എക്സ്പോർട്ട് ചെയ്യുക';

  @override
  String get includeSettings => 'ക്രമീകരണങ്ങൾ ഉൾപ്പെടുത്തുക';

  @override
  String get filterVersionsByRegEx =>
      'റെഗുലർ എക്സ്പ്രഷൻ ഉപയോഗിച്ച് പതിപ്പുകൾ ഫിൽട്ടർ ചെയ്യുക';

  @override
  String get trySelectingSuggestedVersionCode =>
      'നിർദ്ദേശിച്ച versionCode APK തിരഞ്ഞെടുക്കാൻ ശ്രമിക്കുക';

  @override
  String get dontSortReleasesList =>
      'API-യിൽ നിന്നുള്ള റിലീസ് ഓർഡർ നിലനിർത്തുക';

  @override
  String get reverseSort => 'റിവേഴ്സ് സോർട്ടിംഗ്';

  @override
  String get takeFirstLink => 'ആദ്യ ലിങ്ക് എടുക്കുക';

  @override
  String get skipSort => 'സോർട്ടിംഗ് ഒഴിവാക്കുക';

  @override
  String get debugMenu => 'ഡീബഗ് മെനു';

  @override
  String get bgTaskStarted =>
      'ബാക്ക്ഗ്രൗണ്ട് ടാസ്ക് ആരംഭിച്ചു - ലോഗുകൾ പരിശോധിക്കുക.';

  @override
  String get runBgCheckNow =>
      'ഇപ്പോൾ ബാക്ക്ഗ്രൗണ്ട് അപ്‌ഡേറ്റ് പരിശോധന പ്രവർത്തിപ്പിക്കുക';

  @override
  String get versionExtractWholePage =>
      'മുഴുവൻ പേജിലും പതിപ്പ് സ്ട്രിംഗ് വേർതിരിച്ചെടുക്കുന്ന റെഗുലർ എക്സ്പ്രഷൻ പ്രയോഗിക്കുക';

  @override
  String get installing => 'ഇൻസ്റ്റാൾ ചെയ്യുന്നു';

  @override
  String get skipUpdateNotifications => 'അപ്‌ഡേറ്റ് അറിയിപ്പുകൾ ഒഴിവാക്കുക';

  @override
  String get updatesAvailableNotifChannel => 'അപ്‌ഡേറ്റുകൾ ലഭ്യമാണ്';

  @override
  String get appsUpdatedNotifChannel => 'ആപ്പുകൾ അപ്‌ഡേറ്റ് ചെയ്തു';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'ആപ്പ് അപ്‌ഡേറ്റുകൾ ശ്രമിച്ചു';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നതിൽ പിശക്';

  @override
  String get appsRemovedNotifChannel => 'ആപ്പുകൾ നീക്കം ചെയ്തു';

  @override
  String downloadingXNotifChannel(String arg1) {
    return '$arg1 ഡൗൺലോഡ് ചെയ്യുന്നു';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'ആപ്പ് ഇൻസ്റ്റാളേഷൻ പൂർത്തിയാക്കുക';

  @override
  String get checkingForUpdatesNotifChannel => 'അപ്‌ഡേറ്റുകൾ പരിശോധിക്കുന്നു';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'ഇൻസ്റ്റാൾ ചെയ്തതും ട്രാക്ക്-മാത്രം ആപ്പുകളും മാത്രം അപ്‌ഡേറ്റുകൾക്കായി പരിശോധിക്കുക';

  @override
  String get supportFixedAPKURL => 'സ്ഥിരമായ APK URL-കളെ പിന്തുണയ്ക്കുക';

  @override
  String selectX(String arg1) {
    return '$arg1 തിരഞ്ഞെടുക്കുക';
  }

  @override
  String get parallelDownloads => 'പാരലൽ ഡൗൺലോഡുകൾ അനുവദിക്കുക';

  @override
  String get useShizuku =>
      'ഇൻസ്റ്റാൾ ചെയ്യാൻ ഷിസുകു അല്ലെങ്കിൽ സ്യൂ ഉപയോഗിക്കുക';

  @override
  String get shizukuBinderNotFound => 'ഷിസുകു സേവനം പ്രവർത്തിക്കുന്നില്ല';

  @override
  String get shizukuOld => 'പഴയ ഷിസുകു പതിപ്പ് (<11) - അത് അപ്‌ഡേറ്റ് ചെയ്യുക';

  @override
  String get shizukuOldAndroidWithADB =>
      'ആൻഡ്രോയിഡ് < 8.1 ഉള്ള ഷിസുകു ADB ഉപയോഗിച്ച് പ്രവർത്തിക്കുന്നു - ആൻഡ്രോയിഡ് അപ്‌ഡേറ്റ് ചെയ്യുക അല്ലെങ്കിൽ പകരം സ്യൂ ഉപയോഗിക്കുക';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Google Play ഇൻസ്റ്റാളേഷൻ ഉറവിടമായി സജ്ജമാക്കുക (ഷിസുകു ഉപയോഗിക്കുകയാണെങ്കിൽ)';

  @override
  String get useSystemFont => 'സിസ്റ്റം ഫോണ്ട് ഉപയോഗിക്കുക';

  @override
  String get useVersionCodeAsOSVersion =>
      'ആപ്പ് versionCode OS-ൽ കണ്ടെത്തിയ പതിപ്പായി ഉപയോഗിക്കുക';

  @override
  String get requestHeader => 'അഭ്യർത്ഥന തലക്കെട്ട്';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'ഏറ്റവും പുതിയ അസറ്റ് അപ്‌ലോഡ് റിലീസ് തീയതിയായി ഉപയോഗിക്കുക';

  @override
  String get defaultPseudoVersioningMethod => 'സ്ഥിരസ്ഥിതി സ്യൂഡോ-പതിപ്പ് രീതി';

  @override
  String get partialAPKHash => 'ഭാഗിക APK ഹാഷ്';

  @override
  String get directAPKLink => 'നേരിട്ടുള്ള APK ലിങ്ക്';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'പേര്';

  @override
  String get sortMethod => 'അടുക്കുന്ന രീതി';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload =>
      'ഡൗൺലോഡ് ചെയ്യുന്നതിന് മുമ്പ് ആപ്പ് വിവരങ്ങൾ പുതുക്കുക';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'ഒരു സ്യൂഡോ-പതിപ്പ് ഉപയോഗത്തിലുണ്ട്';

  @override
  String get installed => 'ഇൻസ്റ്റാൾ ചെയ്തത്';

  @override
  String get latest => 'ഏറ്റവും പുതിയത്';

  @override
  String get invertRegEx => 'റെഗുലർ എക്സ്പ്രഷൻ വിപരീതമാക്കുക';

  @override
  String get note => 'ശ്രദ്ധിക്കുക';

  @override
  String selfHostedNote(String arg1) {
    return 'ഏത് ഉറവിടത്തിന്റെയും സെൽഫ്-ഹോസ്റ്റ് ചെയ്ത/കസ്റ്റം ഇൻസ്റ്റൻസുകളിലേക്ക് എത്താൻ \"$arg1\" ഡ്രോപ്പ്ഡൗൺ ഉപയോഗിക്കാം.';
  }

  @override
  String get badDownload =>
      'APK പാഴ്സ് ചെയ്യാൻ കഴിഞ്ഞില്ല (അനുയോജ്യമല്ലാത്തതോ ഭാഗികമായ ഡൗൺലോഡോ)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'പുതിയ ആപ്പുകൾ AppVerifier-ലേക്ക് പങ്കിടുക (ലഭ്യമെങ്കിൽ)';

  @override
  String get appVerifierInstructionToast =>
      'AppVerifier-ലേക്ക് പങ്കിടുക, തുടർന്ന് തയ്യാറാകുമ്പോൾ ഇവിടെ തിരിച്ചെത്തുക.';

  @override
  String get wiki => 'സഹായം/വിക്കി';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'സുരക്ഷിതമല്ലാത്ത HTTP അഭ്യർത്ഥനകൾ അനുവദിക്കുക';

  @override
  String get stayOneVersionBehind =>
      'ഏറ്റവും പുതിയ പതിപ്പിന് ഒരു പതിപ്പ് പിന്നിൽ തുടരുക';

  @override
  String get useFirstApkOfVersion =>
      'ഒന്നിലധികം APK-കളിൽ നിന്ന് ആദ്യത്തേത് സ്വയമേവ തിരഞ്ഞെടുക്കുക';

  @override
  String get tencentAppStore => 'ടെൻസെന്റ് ആപ്പ് സ്റ്റോർ';

  @override
  String get coolApk => 'കൂൾ APK';

  @override
  String get vivoAppStore => 'വിവോ ആപ്പ് സ്റ്റോർ (CN)';

  @override
  String get smartname => 'പേര് (സ്മാർട്ട്)';

  @override
  String get welcome => 'സ്വാഗതം';

  @override
  String get documentationLinksNote =>
      'താഴെ ലിങ്ക് ചെയ്തിട്ടുള്ള ഒബ്‌റ്റേനിയം GitHub പേജിൽ ആപ്പ് എങ്ങനെ ഉപയോഗിക്കാമെന്ന് മനസ്സിലാക്കാൻ സഹായിക്കുന്ന വീഡിയോകൾ, ലേഖനങ്ങൾ, ചർച്ചകൾ, മറ്റ് വിഭവങ്ങൾ എന്നിവയുടെ ലിങ്കുകൾ അടങ്ങിയിരിക്കുന്നു.';

  @override
  String get batteryOptimizationNote =>
      'ഒബ്‌റ്റേനിയത്തിനായുള്ള OS ബാറ്ററി ഒപ്റ്റിമൈസേഷനുകൾ പ്രവർത്തനരഹിതമാക്കുകയാണെങ്കിൽ ബാക്ക്ഗ്രൗണ്ട് ഡൗൺലോഡുകൾ കൂടുതൽ വിശ്വസനീയമായി പ്രവർത്തിച്ചേക്കാം എന്നത് ശ്രദ്ധിക്കുക.';

  @override
  String fileDeletionError(String arg1) {
    return 'ഫയൽ ഇല്ലാതാക്കാൻ പരാജയപ്പെട്ടു (സ്വമേധയാ ഇല്ലാതാക്കാൻ ശ്രമിക്കുക, എന്നിട്ട് വീണ്ടും ശ്രമിക്കുക): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Updatium foreground service';

  @override
  String get foregroundServiceExplanation =>
      'Use a foreground service for update checking (more reliable, consumes more power)';

  @override
  String get fgServiceNotice =>
      'This notification is required for background update checking (it can be hidden in the OS settings)';

  @override
  String get excludeSecrets => 'Exclude secrets';

  @override
  String get includeZips => 'Include ZIP files';

  @override
  String get zippedApkFilterRegEx => 'Filter APKs inside ZIP';

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
  String get securityDisclaimerTitle => 'സുരക്ഷാ നിയമ നിരാകരണം';

  @override
  String get license => 'ലൈസൻസ്';

  @override
  String get licenseText =>
      'ഈ അപ്ലിക്കേഷൻ GPL v3 ലൈസൻസിന് കീഴിൽ വിതരണം ചെയ്യുന്നു.';

  @override
  String get disclaimer => 'നിരാകരണം';

  @override
  String get disclaimerText =>
      'ഈ അപ്ലിക്കേഷൻ ബാഹ്യ അപ്ലിക്കേഷനുകൾ വിതരണം ചെയ്യുന്നില്ല, ഹോസ്റ്റ് ചെയ്യുന്നില്ല, അല്ലെങ്കിൽ പരിശോധിക്കുന്നില്ല. ഈ ടൂൾ ഉപയോഗിച്ച് ഇൻസ്റ്റാൾ ചെയ്യുന്ന ഏത് സോഫ്റ്റ്‌വെയറിന്റെയും സുരക്ഷയ്ക്കും നിയമപരമായ കാര്യങ്ങൾക്കും ഉപയോക്താവ് പൂർണ്ണമായും ഉത്തരവാദിത്തം വഹിക്കുന്നു.';

  @override
  String get privacy => 'സ്വകാര്യത';

  @override
  String get privacyText =>
      'ഈ ആപ്പ് സ്വകാര്യം പരിഗണിക്കുന്നതും വ്യക്തിഗത ഡാറ്റ ശേഖരിക്കുന്നതുമല്ല.';

  @override
  String get acceptAndContinue => 'അംഗീകരിച്ച് തുടരുക';

  @override
  String get decline => 'നിരസിക്കുക';

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
  String get aPKLinkHash => 'APK ലിങ്ക് ഹാഷ്';

  @override
  String get gHReqPrefix =>
      '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get continueAction => 'തുടരുക';

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
