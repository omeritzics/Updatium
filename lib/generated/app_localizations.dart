/// Generated localization file for Updatium.
///
/// This file is generated automatically. Do not edit manually.

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('zh'),
  ];

  /// No description provided for @invalidURLForSource.
  ///
  /// In en, this message translates to:
  /// **'Not a valid {appType} app URL'**
  String invalidURLForSource(String appType);

  /// No description provided for @noReleaseFound.
  ///
  /// In en, this message translates to:
  /// **'Could not find a suitable release'**
  String get noReleaseFound;

  /// No description provided for @noVersionFound.
  ///
  /// In en, this message translates to:
  /// **'Could not determine release version'**
  String get noVersionFound;

  /// No description provided for @urlMatchesNoSource.
  ///
  /// In en, this message translates to:
  /// **'URL does not match a known source'**
  String get urlMatchesNoSource;

  /// No description provided for @cantInstallOlderVersion.
  ///
  /// In en, this message translates to:
  /// **'Cannot install an older version of an app'**
  String get cantInstallOlderVersion;

  /// No description provided for @appIdMismatch.
  ///
  /// In en, this message translates to:
  /// **'Downloaded package ID does not match existing app ID'**
  String get appIdMismatch;

  /// No description provided for @functionNotImplemented.
  ///
  /// In en, this message translates to:
  /// **'This class has not implemented this function'**
  String get functionNotImplemented;

  /// No description provided for @placeholder.
  ///
  /// In en, this message translates to:
  /// **'Placeholder'**
  String get placeholder;

  /// No description provided for @someErrors.
  ///
  /// In en, this message translates to:
  /// **'Some errors occurred'**
  String get someErrors;

  /// No description provided for @unexpectedError.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error'**
  String get unexpectedError;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'Okay'**
  String get ok;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @githubPATLabel.
  ///
  /// In en, this message translates to:
  /// **'GitHub personal access token (increases rate limit)'**
  String get githubPATLabel;

  /// No description provided for @includePrereleases.
  ///
  /// In en, this message translates to:
  /// **'Include prereleases'**
  String get includePrereleases;

  /// No description provided for @fallbackToOlderReleases.
  ///
  /// In en, this message translates to:
  /// **'Fallback to older releases'**
  String get fallbackToOlderReleases;

  /// No description provided for @filterReleaseTitlesByRegEx.
  ///
  /// In en, this message translates to:
  /// **'Filter release titles by regular expression'**
  String get filterReleaseTitlesByRegEx;

  /// No description provided for @invalidRegEx.
  ///
  /// In en, this message translates to:
  /// **'Invalid regular expression'**
  String get invalidRegEx;

  /// No description provided for @noDescription.
  ///
  /// In en, this message translates to:
  /// **'No description'**
  String get noDescription;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @continueAction.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueAction;

  /// No description provided for @requiredInBrackets.
  ///
  /// In en, this message translates to:
  /// **'(required)'**
  String get requiredInBrackets;

  /// No description provided for @dropdownNoOptsError.
  ///
  /// In en, this message translates to:
  /// **'ERROR: DROPDOWN MUST HAVE AT LEAST ONE OPT'**
  String get dropdownNoOptsError;

  /// No description provided for @color.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get color;

  /// No description provided for @standard.
  ///
  /// In en, this message translates to:
  /// **'Standard'**
  String get standard;

  /// No description provided for @custom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get custom;

  /// No description provided for @useMaterialYou.
  ///
  /// In en, this message translates to:
  /// **'Use Material You colors'**
  String get useMaterialYou;

  /// No description provided for @githubStarredRepos.
  ///
  /// In en, this message translates to:
  /// **'GitHub starred repositories'**
  String get githubStarredRepos;

  /// No description provided for @uname.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get uname;

  /// No description provided for @wrongArgNum.
  ///
  /// In en, this message translates to:
  /// **'Wrong number of arguments provided'**
  String get wrongArgNum;

  /// No description provided for @xIsTrackOnly.
  ///
  /// In en, this message translates to:
  /// **'{appName} is track-only'**
  String xIsTrackOnly(String appName);

  /// No description provided for @source.
  ///
  /// In en, this message translates to:
  /// **'Source'**
  String get source;

  /// No description provided for @app.
  ///
  /// In en, this message translates to:
  /// **'App'**
  String get app;

  /// No description provided for @appsFromSourceAreTrackOnly.
  ///
  /// In en, this message translates to:
  /// **'Apps from this source are \'track-only\'.'**
  String get appsFromSourceAreTrackOnly;

  /// No description provided for @youPickedTrackOnly.
  ///
  /// In en, this message translates to:
  /// **'You have selected the \'track-only\' option.'**
  String get youPickedTrackOnly;

  /// No description provided for @trackOnlyAppDescription.
  ///
  /// In en, this message translates to:
  /// **'The app will be tracked for updates, but Updatium will not be able to download or install it.'**
  String get trackOnlyAppDescription;

  /// No description provided for @cancelled.
  ///
  /// In en, this message translates to:
  /// **'Cancelled'**
  String get cancelled;

  /// No description provided for @appAlreadyAdded.
  ///
  /// In en, this message translates to:
  /// **'App already added'**
  String get appAlreadyAdded;

  /// No description provided for @alreadyUpToDateQuestion.
  ///
  /// In en, this message translates to:
  /// **'App already up to date?'**
  String get alreadyUpToDateQuestion;

  /// No description provided for @addApp.
  ///
  /// In en, this message translates to:
  /// **'Add App'**
  String get addApp;

  /// No description provided for @appSourceURL.
  ///
  /// In en, this message translates to:
  /// **'App source URL'**
  String get appSourceURL;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @searchSomeSourcesLabel.
  ///
  /// In en, this message translates to:
  /// **'Search (some sources only)'**
  String get searchSomeSourcesLabel;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @additionalOptsFor.
  ///
  /// In en, this message translates to:
  /// **'Additional options for {appName}'**
  String additionalOptsFor(String appName);

  /// No description provided for @supportedSources.
  ///
  /// In en, this message translates to:
  /// **'Supported sources'**
  String get supportedSources;

  /// No description provided for @trackOnlyInBrackets.
  ///
  /// In en, this message translates to:
  /// **'(track-only)'**
  String get trackOnlyInBrackets;

  /// No description provided for @searchableInBrackets.
  ///
  /// In en, this message translates to:
  /// **'(searchable)'**
  String get searchableInBrackets;

  /// No description provided for @appsString.
  ///
  /// In en, this message translates to:
  /// **'Apps'**
  String get appsString;

  /// No description provided for @noApps.
  ///
  /// In en, this message translates to:
  /// **'Welcome!'**
  String get noApps;

  /// No description provided for @noAppsSubtext.
  ///
  /// In en, this message translates to:
  /// **'You can add your first app by tapping on \'Add App\' below.'**
  String get noAppsSubtext;

  /// No description provided for @noAppsForFilter.
  ///
  /// In en, this message translates to:
  /// **'No apps for filter'**
  String get noAppsForFilter;

  /// No description provided for @byX.
  ///
  /// In en, this message translates to:
  /// **'By {author}'**
  String byX(String author);

  /// No description provided for @percentProgress.
  ///
  /// In en, this message translates to:
  /// **'Progress: {progress}%'**
  String percentProgress(String progress);

  /// No description provided for @pleaseWait.
  ///
  /// In en, this message translates to:
  /// **'Please wait'**
  String get pleaseWait;

  /// No description provided for @updateAvailable.
  ///
  /// In en, this message translates to:
  /// **'Update available'**
  String get updateAvailable;

  /// No description provided for @notInstalled.
  ///
  /// In en, this message translates to:
  /// **'Not installed'**
  String get notInstalled;

  /// No description provided for @pseudoVersion.
  ///
  /// In en, this message translates to:
  /// **'pseudo-version'**
  String get pseudoVersion;

  /// No description provided for @selectAll.
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// No description provided for @deselectX.
  ///
  /// In en, this message translates to:
  /// **'Deselect {count}'**
  String deselectX(String count);

  /// No description provided for @xWillBeRemovedButRemainInstalled.
  ///
  /// In en, this message translates to:
  /// **'{appName} will be removed from Updatium but remain installed on device.'**
  String xWillBeRemovedButRemainInstalled(String appName);

  /// No description provided for @removeSelectedAppsQuestion.
  ///
  /// In en, this message translates to:
  /// **'Remove selected apps?'**
  String get removeSelectedAppsQuestion;

  /// No description provided for @removeSelectedApps.
  ///
  /// In en, this message translates to:
  /// **'Remove selected apps'**
  String get removeSelectedApps;

  /// No description provided for @updateX.
  ///
  /// In en, this message translates to:
  /// **'Update {appName}'**
  String updateX(String appName);

  /// No description provided for @installX.
  ///
  /// In en, this message translates to:
  /// **'Install {appName}'**
  String installX(String appName);

  /// No description provided for @markXTrackOnlyAsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Mark {appName}\n(track-only)\nas updated'**
  String markXTrackOnlyAsUpdated(String appName);

  /// No description provided for @changeX.
  ///
  /// In en, this message translates to:
  /// **'Change {appName}'**
  String changeX(String appName);

  /// No description provided for @installUpdateApps.
  ///
  /// In en, this message translates to:
  /// **'Install/update apps'**
  String get installUpdateApps;

  /// No description provided for @installUpdateSelectedApps.
  ///
  /// In en, this message translates to:
  /// **'Install/update selected apps'**
  String get installUpdateSelectedApps;

  /// No description provided for @markXSelectedAppsAsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Mark {count} selected apps as updated?'**
  String markXSelectedAppsAsUpdated(String count);

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @markSelectedAppsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Mark selected apps as updated'**
  String get markSelectedAppsUpdated;

  /// No description provided for @pinToTop.
  ///
  /// In en, this message translates to:
  /// **'Pin to top'**
  String get pinToTop;

  /// No description provided for @unpinFromTop.
  ///
  /// In en, this message translates to:
  /// **'Unpin from top'**
  String get unpinFromTop;

  /// No description provided for @resetInstallStatusForSelectedAppsQuestion.
  ///
  /// In en, this message translates to:
  /// **'Reset install status for selected apps?'**
  String get resetInstallStatusForSelectedAppsQuestion;

  /// No description provided for @installStatusOfXWillBeResetExplanation.
  ///
  /// In en, this message translates to:
  /// **'The install status of any selected apps will be reset.\n\nThis can help when the app version shown in Updatium is incorrect due to failed updates or other issues.'**
  String get installStatusOfXWillBeResetExplanation;

  /// No description provided for @customLinkMessage.
  ///
  /// In en, this message translates to:
  /// **'These links work on devices with Updatium installed'**
  String get customLinkMessage;

  /// No description provided for @shareAppConfigLinks.
  ///
  /// In en, this message translates to:
  /// **'Share app configuration as HTML link'**
  String get shareAppConfigLinks;

  /// No description provided for @shareSelectedAppURLs.
  ///
  /// In en, this message translates to:
  /// **'Share selected app URLs'**
  String get shareSelectedAppURLs;

  /// No description provided for @resetInstallStatus.
  ///
  /// In en, this message translates to:
  /// **'Reset install status'**
  String get resetInstallStatus;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @removeOutdatedFilter.
  ///
  /// In en, this message translates to:
  /// **'Remove out-of-date app filter'**
  String get removeOutdatedFilter;

  /// No description provided for @showOutdatedOnly.
  ///
  /// In en, this message translates to:
  /// **'Show out-of-date apps only'**
  String get showOutdatedOnly;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'Filter'**
  String get filter;

  /// No description provided for @filterApps.
  ///
  /// In en, this message translates to:
  /// **'Filter apps'**
  String get filterApps;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'App name'**
  String get appName;

  /// No description provided for @author.
  ///
  /// In en, this message translates to:
  /// **'Author'**
  String get author;

  /// No description provided for @upToDateApps.
  ///
  /// In en, this message translates to:
  /// **'Up to date apps'**
  String get upToDateApps;

  /// No description provided for @nonInstalledApps.
  ///
  /// In en, this message translates to:
  /// **'Non-installed apps'**
  String get nonInstalledApps;

  /// No description provided for @importExport.
  ///
  /// In en, this message translates to:
  /// **'Import/export'**
  String get importExport;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @exportedTo.
  ///
  /// In en, this message translates to:
  /// **'Exported to {location}'**
  String exportedTo(String location);

  /// No description provided for @updatiumExport.
  ///
  /// In en, this message translates to:
  /// **'Updatium export'**
  String get updatiumExport;

  /// No description provided for @failedToExport.
  ///
  /// In en, this message translates to:
  /// **'Failed to export'**
  String get failedToExport;

  /// No description provided for @exportAlreadyInProgress.
  ///
  /// In en, this message translates to:
  /// **'Export already in progress'**
  String get exportAlreadyInProgress;

  /// No description provided for @failedToCreateExportFile.
  ///
  /// In en, this message translates to:
  /// **'Failed to create export file'**
  String get failedToCreateExportFile;

  /// No description provided for @exportDirNotAccessible.
  ///
  /// In en, this message translates to:
  /// **'Export directory is not accessible'**
  String get exportDirNotAccessible;

  /// No description provided for @invalidInput.
  ///
  /// In en, this message translates to:
  /// **'Invalid input'**
  String get invalidInput;

  /// No description provided for @importedX.
  ///
  /// In en, this message translates to:
  /// **'Imported {count}'**
  String importedX(String count);

  /// No description provided for @updatiumImport.
  ///
  /// In en, this message translates to:
  /// **'Updatium import'**
  String get updatiumImport;

  /// No description provided for @importFromURLList.
  ///
  /// In en, this message translates to:
  /// **'Import from URL list'**
  String get importFromURLList;

  /// No description provided for @searchQuery.
  ///
  /// In en, this message translates to:
  /// **'Search query'**
  String get searchQuery;

  /// No description provided for @appURLList.
  ///
  /// In en, this message translates to:
  /// **'App URL list'**
  String get appURLList;

  /// No description provided for @line.
  ///
  /// In en, this message translates to:
  /// **'Line'**
  String get line;

  /// No description provided for @searchX.
  ///
  /// In en, this message translates to:
  /// **'Search {query}'**
  String searchX(String query);

  /// No description provided for @noResults.
  ///
  /// In en, this message translates to:
  /// **'No results found'**
  String get noResults;

  /// No description provided for @importX.
  ///
  /// In en, this message translates to:
  /// **'Import {count}'**
  String importX(String count);

  /// No description provided for @importedAppsIdDisclaimer.
  ///
  /// In en, this message translates to:
  /// **'Imported apps may incorrectly show as \"not installed\".\nTo fix this, re-install them through Updatium.\nThis should not affect app data.\n\nOnly affects URL and third-party import methods.'**
  String get importedAppsIdDisclaimer;

  /// No description provided for @importErrors.
  ///
  /// In en, this message translates to:
  /// **'Import errors'**
  String get importErrors;

  /// No description provided for @importedXOfYApps.
  ///
  /// In en, this message translates to:
  /// **'{imported} of {total} apps imported.'**
  String importedXOfYApps(String imported, String total);

  /// No description provided for @followingURLsHadErrors.
  ///
  /// In en, this message translates to:
  /// **'The following URLs had errors:'**
  String get followingURLsHadErrors;

  /// No description provided for @selectURL.
  ///
  /// In en, this message translates to:
  /// **'Select URL'**
  String get selectURL;

  /// No description provided for @selectURLs.
  ///
  /// In en, this message translates to:
  /// **'Select URLs'**
  String get selectURLs;

  /// No description provided for @pick.
  ///
  /// In en, this message translates to:
  /// **'Pick'**
  String get pick;

  /// No description provided for @theme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get theme;

  /// No description provided for @dark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get dark;

  /// No description provided for @light.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get light;

  /// No description provided for @followSystem.
  ///
  /// In en, this message translates to:
  /// **'Follow system'**
  String get followSystem;

  /// No description provided for @followSystemThemeExplanation.
  ///
  /// In en, this message translates to:
  /// **'Following system theme is possible only by using third-party applications'**
  String get followSystemThemeExplanation;

  /// No description provided for @useBlackTheme.
  ///
  /// In en, this message translates to:
  /// **'Use pure black dark theme'**
  String get useBlackTheme;

  /// No description provided for @appSortBy.
  ///
  /// In en, this message translates to:
  /// **'App sort by'**
  String get appSortBy;

  /// No description provided for @authorName.
  ///
  /// In en, this message translates to:
  /// **'Author/name'**
  String get authorName;

  /// No description provided for @nameAuthor.
  ///
  /// In en, this message translates to:
  /// **'Name/author'**
  String get nameAuthor;

  /// No description provided for @asAdded.
  ///
  /// In en, this message translates to:
  /// **'As added'**
  String get asAdded;

  /// No description provided for @appSortOrder.
  ///
  /// In en, this message translates to:
  /// **'App sort order'**
  String get appSortOrder;

  /// No description provided for @ascending.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get ascending;

  /// No description provided for @descending.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get descending;

  /// No description provided for @bgUpdateCheckInterval.
  ///
  /// In en, this message translates to:
  /// **'Background update checking interval'**
  String get bgUpdateCheckInterval;

  /// No description provided for @neverManualOnly.
  ///
  /// In en, this message translates to:
  /// **'Never - manual only'**
  String get neverManualOnly;

  /// No description provided for @appearance.
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// No description provided for @pinUpdates.
  ///
  /// In en, this message translates to:
  /// **'Pin updates to top of apps view'**
  String get pinUpdates;

  /// No description provided for @updates.
  ///
  /// In en, this message translates to:
  /// **'Updates'**
  String get updates;

  /// No description provided for @sourceSpecific.
  ///
  /// In en, this message translates to:
  /// **'Source-specific'**
  String get sourceSpecific;

  /// No description provided for @appSource.
  ///
  /// In en, this message translates to:
  /// **'App source'**
  String get appSource;

  /// No description provided for @appSourceHint.
  ///
  /// In en, this message translates to:
  /// **'Open app source repository'**
  String get appSourceHint;

  /// No description provided for @noLogs.
  ///
  /// In en, this message translates to:
  /// **'No logs'**
  String get noLogs;

  /// No description provided for @appLogs.
  ///
  /// In en, this message translates to:
  /// **'App logs'**
  String get appLogs;

  /// No description provided for @appLogsHint.
  ///
  /// In en, this message translates to:
  /// **'View application logs'**
  String get appLogsHint;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @appNotFound.
  ///
  /// In en, this message translates to:
  /// **'App not found'**
  String get appNotFound;

  /// No description provided for @networkError.
  ///
  /// In en, this message translates to:
  /// **'Network connection failed'**
  String get networkError;

  /// No description provided for @invalidUrlFormat.
  ///
  /// In en, this message translates to:
  /// **'Invalid URL format'**
  String get invalidUrlFormat;

  /// No description provided for @accessDenied.
  ///
  /// In en, this message translates to:
  /// **'Access denied'**
  String get accessDenied;

  /// No description provided for @importFailed.
  ///
  /// In en, this message translates to:
  /// **'Import failed'**
  String get importFailed;

  /// No description provided for @updatiumExportHyphenatedLowercase.
  ///
  /// In en, this message translates to:
  /// **'updatium-export'**
  String get updatiumExportHyphenatedLowercase;

  /// No description provided for @pickAnAPK.
  ///
  /// In en, this message translates to:
  /// **'Pick an APK'**
  String get pickAnAPK;

  /// No description provided for @appHasMoreThanOnePackage.
  ///
  /// In en, this message translates to:
  /// **'{appName} has more than one package:'**
  String appHasMoreThanOnePackage(String appName);

  /// No description provided for @deviceSupportsXArch.
  ///
  /// In en, this message translates to:
  /// **'Your device supports the {arch} CPU architecture.'**
  String deviceSupportsXArch(String arch);

  /// No description provided for @deviceSupportsFollowingArchs.
  ///
  /// In en, this message translates to:
  /// **'Your device supports the following CPU architectures:'**
  String get deviceSupportsFollowingArchs;

  /// No description provided for @warning.
  ///
  /// In en, this message translates to:
  /// **'Warning'**
  String get warning;

  /// No description provided for @sourceIsXButPackageFromYPrompt.
  ///
  /// In en, this message translates to:
  /// **'The app source is \'{source}\' but the release package comes from \'{package}\'. Continue?'**
  String sourceIsXButPackageFromYPrompt(String source, String package);

  /// No description provided for @updatesAvailable.
  ///
  /// In en, this message translates to:
  /// **'Updates available'**
  String get updatesAvailable;

  /// No description provided for @updatesAvailableNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'Notifies the user that updates are available for one or more apps tracked by Updatium'**
  String get updatesAvailableNotifDescription;

  /// No description provided for @noNewUpdates.
  ///
  /// In en, this message translates to:
  /// **'No new updates.'**
  String get noNewUpdates;

  /// No description provided for @xHasAnUpdate.
  ///
  /// In en, this message translates to:
  /// **'{appName} has an update.'**
  String xHasAnUpdate(String appName);

  /// No description provided for @appsUpdated.
  ///
  /// In en, this message translates to:
  /// **'Apps updated'**
  String get appsUpdated;

  /// No description provided for @appsNotUpdated.
  ///
  /// In en, this message translates to:
  /// **'Failed to update applications'**
  String get appsNotUpdated;

  /// No description provided for @appsUpdatedNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'Notifies the user that updates to one or more apps were applied in the background'**
  String get appsUpdatedNotifDescription;

  /// No description provided for @xWasUpdatedToY.
  ///
  /// In en, this message translates to:
  /// **'{appName} was updated to {version}.'**
  String xWasUpdatedToY(String appName, String version);

  /// No description provided for @xWasNotUpdatedToY.
  ///
  /// In en, this message translates to:
  /// **'Failed to update {appName} to {version}.'**
  String xWasNotUpdatedToY(String appName, String version);

  /// No description provided for @errorCheckingUpdates.
  ///
  /// In en, this message translates to:
  /// **'Error checking for updates'**
  String get errorCheckingUpdates;

  /// No description provided for @errorCheckingUpdatesNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'A notification that shows when background update checking fails'**
  String get errorCheckingUpdatesNotifDescription;

  /// No description provided for @appsRemoved.
  ///
  /// In en, this message translates to:
  /// **'Apps removed'**
  String get appsRemoved;

  /// No description provided for @appsRemovedNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'Notifies the user that one or more apps were removed due to errors while loading them'**
  String get appsRemovedNotifDescription;

  /// No description provided for @xWasRemovedDueToErrorY.
  ///
  /// In en, this message translates to:
  /// **'{appName} was removed due to this error: {error}'**
  String xWasRemovedDueToErrorY(String appName, String error);

  /// No description provided for @completeAppInstallation.
  ///
  /// In en, this message translates to:
  /// **'Complete app installation'**
  String get completeAppInstallation;

  /// No description provided for @updatiumMustBeOpenToInstallApps.
  ///
  /// In en, this message translates to:
  /// **'Updatium must be open to install apps'**
  String get updatiumMustBeOpenToInstallApps;

  /// No description provided for @completeAppInstallationNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'Asks the user to return to Updatium to finish installing an app'**
  String get completeAppInstallationNotifDescription;

  /// No description provided for @checkingForUpdates.
  ///
  /// In en, this message translates to:
  /// **'Checking for updates'**
  String get checkingForUpdates;

  /// No description provided for @checkingForUpdatesNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'Transient notification that appears when checking for updates'**
  String get checkingForUpdatesNotifDescription;

  /// No description provided for @pleaseAllowInstallPerm.
  ///
  /// In en, this message translates to:
  /// **'Please allow Updatium to install apps'**
  String get pleaseAllowInstallPerm;

  /// No description provided for @trackOnly.
  ///
  /// In en, this message translates to:
  /// **'Track-only'**
  String get trackOnly;

  /// No description provided for @errorWithHttpStatusCode.
  ///
  /// In en, this message translates to:
  /// **'Error {statusCode}'**
  String errorWithHttpStatusCode(String statusCode);

  /// No description provided for @versionCorrectionDisabled.
  ///
  /// In en, this message translates to:
  /// **'Version correction disabled (plugin doesn\'t seem to work)'**
  String get versionCorrectionDisabled;

  /// No description provided for @unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get unknown;

  /// No description provided for @none.
  ///
  /// In en, this message translates to:
  /// **'None'**
  String get none;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @never.
  ///
  /// In en, this message translates to:
  /// **'Never'**
  String get never;

  /// No description provided for @latestVersionX.
  ///
  /// In en, this message translates to:
  /// **'Latest: {version}'**
  String latestVersionX(String version);

  /// No description provided for @installedVersionX.
  ///
  /// In en, this message translates to:
  /// **'Installed: {version}'**
  String installedVersionX(String version);

  /// No description provided for @lastUpdateCheckX.
  ///
  /// In en, this message translates to:
  /// **'Last update check: {time}'**
  String lastUpdateCheckX(String time);

  /// No description provided for @remove.
  ///
  /// In en, this message translates to:
  /// **'Remove'**
  String get remove;

  /// No description provided for @yesMarkUpdated.
  ///
  /// In en, this message translates to:
  /// **'Yes, mark as updated'**
  String get yesMarkUpdated;

  /// No description provided for @fdroid.
  ///
  /// In en, this message translates to:
  /// **'F-Droid official'**
  String get fdroid;

  /// No description provided for @appIdOrName.
  ///
  /// In en, this message translates to:
  /// **'App ID or name'**
  String get appIdOrName;

  /// No description provided for @appId.
  ///
  /// In en, this message translates to:
  /// **'App ID'**
  String get appId;

  /// No description provided for @appWithIdOrNameNotFound.
  ///
  /// In en, this message translates to:
  /// **'No app was found with that ID or name'**
  String get appWithIdOrNameNotFound;

  /// No description provided for @reposHaveMultipleApps.
  ///
  /// In en, this message translates to:
  /// **'Repos may contain multiple apps'**
  String get reposHaveMultipleApps;

  /// No description provided for @fdroidThirdPartyRepo.
  ///
  /// In en, this message translates to:
  /// **'F-Droid third-party repo'**
  String get fdroidThirdPartyRepo;

  /// No description provided for @gitlab.
  ///
  /// In en, this message translates to:
  /// **'GitLab'**
  String get gitlab;

  /// No description provided for @codeberg.
  ///
  /// In en, this message translates to:
  /// **'Codeberg'**
  String get codeberg;

  /// No description provided for @izzyondroid.
  ///
  /// In en, this message translates to:
  /// **'IzzyOnDroid'**
  String get izzyondroid;

  /// No description provided for @sourcehut.
  ///
  /// In en, this message translates to:
  /// **'SourceHut'**
  String get sourcehut;

  /// No description provided for @apkcombo.
  ///
  /// In en, this message translates to:
  /// **'APKCombo'**
  String get apkcombo;

  /// No description provided for @apkpure.
  ///
  /// In en, this message translates to:
  /// **'APKPure'**
  String get apkpure;

  /// No description provided for @aptoide.
  ///
  /// In en, this message translates to:
  /// **'Aptoide'**
  String get aptoide;

  /// No description provided for @uptodown.
  ///
  /// In en, this message translates to:
  /// **'Uptodown'**
  String get uptodown;

  /// No description provided for @huaweiappgallery.
  ///
  /// In en, this message translates to:
  /// **'Huawei App Gallery'**
  String get huaweiappgallery;

  /// No description provided for @rustore.
  ///
  /// In en, this message translates to:
  /// **'RuStore'**
  String get rustore;

  /// No description provided for @jenkins.
  ///
  /// In en, this message translates to:
  /// **'Jenkins'**
  String get jenkins;

  /// No description provided for @apkmirror.
  ///
  /// In en, this message translates to:
  /// **'APKMirror'**
  String get apkmirror;

  /// No description provided for @telegramapp.
  ///
  /// In en, this message translates to:
  /// **'Telegram App'**
  String get telegramapp;

  /// No description provided for @neutroncode.
  ///
  /// In en, this message translates to:
  /// **'NeutronCode'**
  String get neutroncode;

  /// No description provided for @html.
  ///
  /// In en, this message translates to:
  /// **'HTML'**
  String get html;

  /// No description provided for @install.
  ///
  /// In en, this message translates to:
  /// **'Install'**
  String get install;

  /// No description provided for @markInstalled.
  ///
  /// In en, this message translates to:
  /// **'Mark installed'**
  String get markInstalled;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @updated.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get updated;

  /// No description provided for @markUpdated.
  ///
  /// In en, this message translates to:
  /// **'Mark updated'**
  String get markUpdated;

  /// No description provided for @additionalOptions.
  ///
  /// In en, this message translates to:
  /// **'Additional options'**
  String get additionalOptions;

  /// No description provided for @disableVersionDetection.
  ///
  /// In en, this message translates to:
  /// **'Disable version detection'**
  String get disableVersionDetection;

  /// No description provided for @noVersionDetectionExplanation.
  ///
  /// In en, this message translates to:
  /// **'This option should only be used for apps where version detection does not work correctly.'**
  String get noVersionDetectionExplanation;

  /// No description provided for @downloadingX.
  ///
  /// In en, this message translates to:
  /// **'Downloading {appName}'**
  String downloadingX(String appName);

  /// No description provided for @downloadX.
  ///
  /// In en, this message translates to:
  /// **'Download {appName}'**
  String downloadX(String appName);

  /// No description provided for @downloadedX.
  ///
  /// In en, this message translates to:
  /// **'Downloaded {appName}'**
  String downloadedX(String appName);

  /// No description provided for @releaseAsset.
  ///
  /// In en, this message translates to:
  /// **'Release asset'**
  String get releaseAsset;

  /// No description provided for @downloadNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'Notifies the user of the progress in downloading an app'**
  String get downloadNotifDescription;

  /// No description provided for @noAPKFound.
  ///
  /// In en, this message translates to:
  /// **'No APK found'**
  String get noAPKFound;

  /// No description provided for @noVersionDetection.
  ///
  /// In en, this message translates to:
  /// **'No version detection'**
  String get noVersionDetection;

  /// No description provided for @categorize.
  ///
  /// In en, this message translates to:
  /// **'Categorize'**
  String get categorize;

  /// No description provided for @categories.
  ///
  /// In en, this message translates to:
  /// **'Categories'**
  String get categories;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @noCategory.
  ///
  /// In en, this message translates to:
  /// **'No category'**
  String get noCategory;

  /// No description provided for @noCategories.
  ///
  /// In en, this message translates to:
  /// **'No categories'**
  String get noCategories;

  /// No description provided for @deleteCategoriesQuestion.
  ///
  /// In en, this message translates to:
  /// **'Delete categories?'**
  String get deleteCategoriesQuestion;

  /// No description provided for @categoryDeleteWarning.
  ///
  /// In en, this message translates to:
  /// **'All apps in deleted categories will be set to uncategorized.'**
  String get categoryDeleteWarning;

  /// No description provided for @addCategory.
  ///
  /// In en, this message translates to:
  /// **'Add category'**
  String get addCategory;

  /// No description provided for @label.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get label;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @copiedToClipboard.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get copiedToClipboard;

  /// No description provided for @storagePermissionDenied.
  ///
  /// In en, this message translates to:
  /// **'Storage permission denied'**
  String get storagePermissionDenied;

  /// No description provided for @selectedCategorizeWarning.
  ///
  /// In en, this message translates to:
  /// **'This will replace any existing category settings for the selected apps.'**
  String get selectedCategorizeWarning;

  /// No description provided for @filterAPKsByRegEx.
  ///
  /// In en, this message translates to:
  /// **'Filter APKs by regular expression'**
  String get filterAPKsByRegEx;

  /// No description provided for @removeFromUpdatium.
  ///
  /// In en, this message translates to:
  /// **'Remove from Updatium'**
  String get removeFromUpdatium;

  /// No description provided for @uninstallFromDevice.
  ///
  /// In en, this message translates to:
  /// **'Uninstall from device'**
  String get uninstallFromDevice;

  /// No description provided for @onlyWorksWithNonVersionDetectApps.
  ///
  /// In en, this message translates to:
  /// **'Only works for apps with version detection disabled.'**
  String get onlyWorksWithNonVersionDetectApps;

  /// No description provided for @releaseDateAsVersion.
  ///
  /// In en, this message translates to:
  /// **'Use release date as version string'**
  String get releaseDateAsVersion;

  /// No description provided for @releaseTitleAsVersion.
  ///
  /// In en, this message translates to:
  /// **'Use release title as version string'**
  String get releaseTitleAsVersion;

  /// No description provided for @releaseDateAsVersionExplanation.
  ///
  /// In en, this message translates to:
  /// **'This option should only be used for apps where version detection does not work correctly, but a release date is available.'**
  String get releaseDateAsVersionExplanation;

  /// No description provided for @changes.
  ///
  /// In en, this message translates to:
  /// **'Changes'**
  String get changes;

  /// No description provided for @releaseDate.
  ///
  /// In en, this message translates to:
  /// **'Release date'**
  String get releaseDate;

  /// No description provided for @importFromURLsInFile.
  ///
  /// In en, this message translates to:
  /// **'Import from URLs in file (like OPML)'**
  String get importFromURLsInFile;

  /// No description provided for @versionDetectionExplanation.
  ///
  /// In en, this message translates to:
  /// **'Reconcile version string with version detected from OS'**
  String get versionDetectionExplanation;

  /// No description provided for @versionDetection.
  ///
  /// In en, this message translates to:
  /// **'Version detection'**
  String get versionDetection;

  /// No description provided for @standardVersionDetection.
  ///
  /// In en, this message translates to:
  /// **'Standard version detection'**
  String get standardVersionDetection;

  /// No description provided for @groupByCategory.
  ///
  /// In en, this message translates to:
  /// **'Group by category'**
  String get groupByCategory;

  /// No description provided for @listView.
  ///
  /// In en, this message translates to:
  /// **'List view'**
  String get listView;

  /// No description provided for @gridView.
  ///
  /// In en, this message translates to:
  /// **'Grid view'**
  String get gridView;

  /// No description provided for @autoApkFilterByArch.
  ///
  /// In en, this message translates to:
  /// **'Attempt to filter APKs by CPU architecture if possible'**
  String get autoApkFilterByArch;

  /// No description provided for @autoLinkFilterByArch.
  ///
  /// In en, this message translates to:
  /// **'Attempt to filter links by CPU architecture if possible'**
  String get autoLinkFilterByArch;

  /// No description provided for @overrideSource.
  ///
  /// In en, this message translates to:
  /// **'Override source'**
  String get overrideSource;

  /// No description provided for @dontShowAgain.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show this again'**
  String get dontShowAgain;

  /// No description provided for @dontShowTrackOnlyWarnings.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show \'track-only\' warnings'**
  String get dontShowTrackOnlyWarnings;

  /// No description provided for @dontShowAPKOriginWarnings.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show APK origin warnings'**
  String get dontShowAPKOriginWarnings;

  /// No description provided for @moveNonInstalledAppsToBottom.
  ///
  /// In en, this message translates to:
  /// **'Move non-installed apps to bottom of apps view'**
  String get moveNonInstalledAppsToBottom;

  /// No description provided for @hideNonInstalledApps.
  ///
  /// In en, this message translates to:
  /// **'Hide non-installed apps'**
  String get hideNonInstalledApps;

  /// No description provided for @gitlabPATLabel.
  ///
  /// In en, this message translates to:
  /// **'GitLab personal access token'**
  String get gitlabPATLabel;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @requiresCredentialsInSettings.
  ///
  /// In en, this message translates to:
  /// **'{source} needs additional credentials (in Settings)'**
  String requiresCredentialsInSettings(String source);

  /// No description provided for @checkOnStart.
  ///
  /// In en, this message translates to:
  /// **'Check for updates on startup'**
  String get checkOnStart;

  /// No description provided for @safeMode.
  ///
  /// In en, this message translates to:
  /// **'Safe Mode'**
  String get safeMode;

  /// No description provided for @safeModeDescription.
  ///
  /// In en, this message translates to:
  /// **'Hide Add App page and show Import/Export instead'**
  String get safeModeDescription;

  /// No description provided for @safeModeAddAppDisabled.
  ///
  /// In en, this message translates to:
  /// **'Add App is disabled in Safe Mode'**
  String get safeModeAddAppDisabled;

  /// No description provided for @tryInferAppIdFromCode.
  ///
  /// In en, this message translates to:
  /// **'Try inferring app ID from source code'**
  String get tryInferAppIdFromCode;

  /// No description provided for @removeOnExternalUninstall.
  ///
  /// In en, this message translates to:
  /// **'Automatically remove externally uninstalled apps'**
  String get removeOnExternalUninstall;

  /// No description provided for @pickHighestVersionCode.
  ///
  /// In en, this message translates to:
  /// **'Auto-select highest version code APK'**
  String get pickHighestVersionCode;

  /// No description provided for @checkUpdateOnDetailPage.
  ///
  /// In en, this message translates to:
  /// **'Check for updates on opening an app detail page'**
  String get checkUpdateOnDetailPage;

  /// No description provided for @disablePageTransitions.
  ///
  /// In en, this message translates to:
  /// **'Disable page transition animations'**
  String get disablePageTransitions;

  /// No description provided for @reversePageTransitions.
  ///
  /// In en, this message translates to:
  /// **'Reverse page transition animations'**
  String get reversePageTransitions;

  /// No description provided for @minStarCount.
  ///
  /// In en, this message translates to:
  /// **'Minimum star count'**
  String get minStarCount;

  /// No description provided for @addInfoBelow.
  ///
  /// In en, this message translates to:
  /// **'Add this info below.'**
  String get addInfoBelow;

  /// No description provided for @addInfoInSettings.
  ///
  /// In en, this message translates to:
  /// **'Add this info in the Settings.'**
  String get addInfoInSettings;

  /// No description provided for @githubSourceNote.
  ///
  /// In en, this message translates to:
  /// **'GitHub rate limiting can be avoided using an API key.'**
  String get githubSourceNote;

  /// No description provided for @sortByLastLinkSegment.
  ///
  /// In en, this message translates to:
  /// **'Sort by only the last segment of the link'**
  String get sortByLastLinkSegment;

  /// No description provided for @filterReleaseNotesByRegEx.
  ///
  /// In en, this message translates to:
  /// **'Filter release notes by regular expression'**
  String get filterReleaseNotesByRegEx;

  /// No description provided for @customLinkFilterRegex.
  ///
  /// In en, this message translates to:
  /// **'Custom APK link filter by regular expression (default \'.apk\$\')'**
  String get customLinkFilterRegex;

  /// No description provided for @appsPossiblyUpdated.
  ///
  /// In en, this message translates to:
  /// **'App updates attempted'**
  String get appsPossiblyUpdated;

  /// No description provided for @appsPossiblyUpdatedNotifDescription.
  ///
  /// In en, this message translates to:
  /// **'Notifies the user that updates to one or more apps were potentially applied in the background'**
  String get appsPossiblyUpdatedNotifDescription;

  /// No description provided for @xWasPossiblyUpdatedToY.
  ///
  /// In en, this message translates to:
  /// **'{appName} may have been updated to {version}.'**
  String xWasPossiblyUpdatedToY(String appName, String version);

  /// No description provided for @enableBackgroundUpdates.
  ///
  /// In en, this message translates to:
  /// **'Enable background updates'**
  String get enableBackgroundUpdates;

  /// No description provided for @backgroundUpdateReqsExplanation.
  ///
  /// In en, this message translates to:
  /// **'Background updates may not be possible for all apps.'**
  String get backgroundUpdateReqsExplanation;

  /// No description provided for @backgroundUpdateLimitsExplanation.
  ///
  /// In en, this message translates to:
  /// **'The success of a background install can only be determined when Updatium is opened.'**
  String get backgroundUpdateLimitsExplanation;

  /// No description provided for @verifyLatestTag.
  ///
  /// In en, this message translates to:
  /// **'Verify the \'latest\' tag'**
  String get verifyLatestTag;

  /// No description provided for @intermediateLinkRegex.
  ///
  /// In en, this message translates to:
  /// **'Filter for an \'intermediate\' link to visit'**
  String get intermediateLinkRegex;

  /// No description provided for @filterByLinkText.
  ///
  /// In en, this message translates to:
  /// **'Filter links by link text'**
  String get filterByLinkText;

  /// No description provided for @matchLinksOutsideATags.
  ///
  /// In en, this message translates to:
  /// **'Match links outside <a> tags'**
  String get matchLinksOutsideATags;

  /// No description provided for @intermediateLinkNotFound.
  ///
  /// In en, this message translates to:
  /// **'Intermediate link not found'**
  String get intermediateLinkNotFound;

  /// No description provided for @intermediateLink.
  ///
  /// In en, this message translates to:
  /// **'Intermediate link'**
  String get intermediateLink;

  /// No description provided for @exemptFromBackgroundUpdates.
  ///
  /// In en, this message translates to:
  /// **'Exempt from background updates (if enabled)'**
  String get exemptFromBackgroundUpdates;

  /// No description provided for @bgUpdatesOnWiFiOnly.
  ///
  /// In en, this message translates to:
  /// **'Disable background updates when not on Wi-Fi'**
  String get bgUpdatesOnWiFiOnly;

  /// No description provided for @bgUpdatesWhileChargingOnly.
  ///
  /// In en, this message translates to:
  /// **'Disable background updates when not charging'**
  String get bgUpdatesWhileChargingOnly;

  /// No description provided for @autoSelectHighestVersionCode.
  ///
  /// In en, this message translates to:
  /// **'Auto-select highest versionCode APK'**
  String get autoSelectHighestVersionCode;

  /// No description provided for @versionExtractionRegEx.
  ///
  /// In en, this message translates to:
  /// **'Version string extraction RegEx'**
  String get versionExtractionRegEx;

  /// No description provided for @trimVersionString.
  ///
  /// In en, this message translates to:
  /// **'Trim version string with RegEx'**
  String get trimVersionString;

  /// No description provided for @matchGroupToUseForX.
  ///
  /// In en, this message translates to:
  /// **'Match group to use for \"{regexName}\"'**
  String matchGroupToUseForX(String regexName);

  /// No description provided for @matchGroupToUse.
  ///
  /// In en, this message translates to:
  /// **'Match group to use for version string extraction RegEx'**
  String get matchGroupToUse;

  /// No description provided for @highlightTouchTargets.
  ///
  /// In en, this message translates to:
  /// **'Highlight less obvious touch targets'**
  String get highlightTouchTargets;

  /// No description provided for @pickExportDir.
  ///
  /// In en, this message translates to:
  /// **'Pick export directory'**
  String get pickExportDir;

  /// No description provided for @autoExportOnChanges.
  ///
  /// In en, this message translates to:
  /// **'Automatically export on changes'**
  String get autoExportOnChanges;

  /// No description provided for @includeSettings.
  ///
  /// In en, this message translates to:
  /// **'Include settings'**
  String get includeSettings;

  /// No description provided for @filterVersionsByRegEx.
  ///
  /// In en, this message translates to:
  /// **'Filter versions by regular expression'**
  String get filterVersionsByRegEx;

  /// No description provided for @trySelectingSuggestedVersionCode.
  ///
  /// In en, this message translates to:
  /// **'Try selecting suggested versionCode APK'**
  String get trySelectingSuggestedVersionCode;

  /// No description provided for @dontSortReleasesList.
  ///
  /// In en, this message translates to:
  /// **'Retain release order from API'**
  String get dontSortReleasesList;

  /// No description provided for @reverseSort.
  ///
  /// In en, this message translates to:
  /// **'Reverse sorting'**
  String get reverseSort;

  /// No description provided for @takeFirstLink.
  ///
  /// In en, this message translates to:
  /// **'Take first link'**
  String get takeFirstLink;

  /// No description provided for @skipSort.
  ///
  /// In en, this message translates to:
  /// **'Skip sorting'**
  String get skipSort;

  /// No description provided for @debugMenu.
  ///
  /// In en, this message translates to:
  /// **'Debug menu'**
  String get debugMenu;

  /// No description provided for @bgTaskStarted.
  ///
  /// In en, this message translates to:
  /// **'Background task started - check logs.'**
  String get bgTaskStarted;

  /// No description provided for @runBgCheckNow.
  ///
  /// In en, this message translates to:
  /// **'Run background update check now'**
  String get runBgCheckNow;

  /// No description provided for @versionExtractWholePage.
  ///
  /// In en, this message translates to:
  /// **'Apply version string extraction Regex to entire page'**
  String get versionExtractWholePage;

  /// No description provided for @installing.
  ///
  /// In en, this message translates to:
  /// **'Installing'**
  String get installing;

  /// No description provided for @skipUpdateNotifications.
  ///
  /// In en, this message translates to:
  /// **'Skip update notifications'**
  String get skipUpdateNotifications;

  /// No description provided for @updatesAvailableNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'Updates available'**
  String get updatesAvailableNotifChannel;

  /// No description provided for @appsUpdatedNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'Apps updated'**
  String get appsUpdatedNotifChannel;

  /// No description provided for @appsPossiblyUpdatedNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'App updates attempted'**
  String get appsPossiblyUpdatedNotifChannel;

  /// No description provided for @errorCheckingUpdatesNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'Error checking for updates'**
  String get errorCheckingUpdatesNotifChannel;

  /// No description provided for @appsRemovedNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'Apps removed'**
  String get appsRemovedNotifChannel;

  /// No description provided for @downloadingXNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'Downloading {appName}'**
  String downloadingXNotifChannel(String appName);

  /// No description provided for @completeAppInstallationNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'Complete app installation'**
  String get completeAppInstallationNotifChannel;

  /// No description provided for @checkingForUpdatesNotifChannel.
  ///
  /// In en, this message translates to:
  /// **'Checking for updates'**
  String get checkingForUpdatesNotifChannel;

  /// No description provided for @onlyCheckInstalledOrTrackOnlyApps.
  ///
  /// In en, this message translates to:
  /// **'Only check installed and track-only apps for updates'**
  String get onlyCheckInstalledOrTrackOnlyApps;

  /// No description provided for @supportFixedAPKURL.
  ///
  /// In en, this message translates to:
  /// **'Support fixed APK URLs'**
  String get supportFixedAPKURL;

  /// No description provided for @selectX.
  ///
  /// In en, this message translates to:
  /// **'Select {count}'**
  String selectX(String count);

  /// No description provided for @parallelDownloads.
  ///
  /// In en, this message translates to:
  /// **'Allow parallel downloads'**
  String get parallelDownloads;

  /// No description provided for @useShizuku.
  ///
  /// In en, this message translates to:
  /// **'Use Shizuku or Sui to install'**
  String get useShizuku;

  /// No description provided for @shizukuBinderNotFound.
  ///
  /// In en, this message translates to:
  /// **'Shizuku service not running'**
  String get shizukuBinderNotFound;

  /// No description provided for @shizukuOld.
  ///
  /// In en, this message translates to:
  /// **'Old Shizuku version (<11) - update it'**
  String get shizukuOld;

  /// No description provided for @shizukuOldAndroidWithADB.
  ///
  /// In en, this message translates to:
  /// **'Shizuku running on Android < 8.1 with ADB - update Android or use Sui instead'**
  String get shizukuOldAndroidWithADB;

  /// No description provided for @shizukuPretendToBeGooglePlay.
  ///
  /// In en, this message translates to:
  /// **'Set Google Play as the installation source (if Shizuku is used)'**
  String get shizukuPretendToBeGooglePlay;

  /// No description provided for @useSystemFont.
  ///
  /// In en, this message translates to:
  /// **'Use the system font'**
  String get useSystemFont;

  /// No description provided for @useVersionCodeAsOSVersion.
  ///
  /// In en, this message translates to:
  /// **'Use app versionCode as OS-detected version'**
  String get useVersionCodeAsOSVersion;

  /// No description provided for @requestHeader.
  ///
  /// In en, this message translates to:
  /// **'Request header'**
  String get requestHeader;

  /// No description provided for @useLatestAssetDateAsReleaseDate.
  ///
  /// In en, this message translates to:
  /// **'Use latest asset upload as release date'**
  String get useLatestAssetDateAsReleaseDate;

  /// No description provided for @defaultPseudoVersioningMethod.
  ///
  /// In en, this message translates to:
  /// **'Default pseudo-versioning method'**
  String get defaultPseudoVersioningMethod;

  /// No description provided for @partialAPKHash.
  ///
  /// In en, this message translates to:
  /// **'Partial APK hash'**
  String get partialAPKHash;

  /// No description provided for @apkLinkHash.
  ///
  /// In en, this message translates to:
  /// **'APK link hash'**
  String get apkLinkHash;

  /// No description provided for @directAPKLink.
  ///
  /// In en, this message translates to:
  /// **'Direct APK link'**
  String get directAPKLink;

  /// No description provided for @pseudoVersionInUse.
  ///
  /// In en, this message translates to:
  /// **'A pseudo-version is in use'**
  String get pseudoVersionInUse;

  /// No description provided for @installed.
  ///
  /// In en, this message translates to:
  /// **'Installed'**
  String get installed;

  /// No description provided for @latest.
  ///
  /// In en, this message translates to:
  /// **'Latest'**
  String get latest;

  /// No description provided for @invertRegEx.
  ///
  /// In en, this message translates to:
  /// **'Invert regular expression'**
  String get invertRegEx;

  /// No description provided for @note.
  ///
  /// In en, this message translates to:
  /// **'Note'**
  String get note;

  /// No description provided for @selfHostedNote.
  ///
  /// In en, this message translates to:
  /// **'The \"{dropdown}\" dropdown can be used to reach self-hosted/custom instances of any source.'**
  String selfHostedNote(String dropdown);

  /// No description provided for @badDownload.
  ///
  /// In en, this message translates to:
  /// **'The APK could not be parsed (incompatible or partial download)'**
  String get badDownload;

  /// No description provided for @beforeNewInstallsShareToAppVerifier.
  ///
  /// In en, this message translates to:
  /// **'Share new apps with AppVerifier (if available)'**
  String get beforeNewInstallsShareToAppVerifier;

  /// No description provided for @appVerifierInstructionToast.
  ///
  /// In en, this message translates to:
  /// **'Share to AppVerifier, then return here when ready.'**
  String get appVerifierInstructionToast;

  /// No description provided for @wiki.
  ///
  /// In en, this message translates to:
  /// **'Help/wiki'**
  String get wiki;

  /// No description provided for @wikiHint.
  ///
  /// In en, this message translates to:
  /// **'Open Updatium wiki documentation'**
  String get wikiHint;

  /// No description provided for @allowInsecure.
  ///
  /// In en, this message translates to:
  /// **'Allow insecure HTTP requests'**
  String get allowInsecure;

  /// No description provided for @stayOneVersionBehind.
  ///
  /// In en, this message translates to:
  /// **'Stay one version behind latest'**
  String get stayOneVersionBehind;

  /// No description provided for @useFirstApkOfVersion.
  ///
  /// In en, this message translates to:
  /// **'Auto-select first of multiple APKs'**
  String get useFirstApkOfVersion;

  /// No description provided for @refreshBeforeDownload.
  ///
  /// In en, this message translates to:
  /// **'Refresh app details before download'**
  String get refreshBeforeDownload;

  /// No description provided for @tencentAppStore.
  ///
  /// In en, this message translates to:
  /// **'Tencent App Store'**
  String get tencentAppStore;

  /// No description provided for @coolApk.
  ///
  /// In en, this message translates to:
  /// **'CoolApk'**
  String get coolApk;

  /// No description provided for @vivoAppStore.
  ///
  /// In en, this message translates to:
  /// **'vivo App Store (CN)'**
  String get vivoAppStore;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @smartname.
  ///
  /// In en, this message translates to:
  /// **'Name (smart)'**
  String get smartname;

  /// No description provided for @sortMethod.
  ///
  /// In en, this message translates to:
  /// **'Sort method'**
  String get sortMethod;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @documentationLinksNote.
  ///
  /// In en, this message translates to:
  /// **'The Updatium GitHub page linked below contains links to videos, articles, discussions, and other resources that will help you understand how to use the app.'**
  String get documentationLinksNote;

  /// No description provided for @batteryOptimizationNote.
  ///
  /// In en, this message translates to:
  /// **'Note that background downloads may work more reliably if you switch to the \"foreground service\" in the Updatium settings and/or disable battery optimization for Updatium in your OS settings.'**
  String get batteryOptimizationNote;

  /// No description provided for @fileDeletionError.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete file (try deleting it manually then try again): \"{filename}\"'**
  String fileDeletionError(String filename);

  /// No description provided for @foregroundService.
  ///
  /// In en, this message translates to:
  /// **'Updatium foreground service'**
  String get foregroundService;

  /// No description provided for @foregroundServiceExplanation.
  ///
  /// In en, this message translates to:
  /// **'Use a foreground service for update checking (more reliable, consumes more power)'**
  String get foregroundServiceExplanation;

  /// No description provided for @fgServiceNotice.
  ///
  /// In en, this message translates to:
  /// **'This notification is required for background update checking (it can be hidden in the OS settings)'**
  String get fgServiceNotice;

  /// No description provided for @excludeSecrets.
  ///
  /// In en, this message translates to:
  /// **'Exclude secrets'**
  String get excludeSecrets;

  /// No description provided for @ghReqPrefix.
  ///
  /// In en, this message translates to:
  /// **'\'sky22333/hubproxy\' instance for GitHub requests'**
  String get ghReqPrefix;

  /// No description provided for @includeZips.
  ///
  /// In en, this message translates to:
  /// **'Include ZIP files'**
  String get includeZips;

  /// No description provided for @zippedApkFilterRegEx.
  ///
  /// In en, this message translates to:
  /// **'Filter APKs inside ZIP'**
  String get zippedApkFilterRegEx;

  /// No description provided for @googleVerificationWarningP1.
  ///
  /// In en, this message translates to:
  /// **'Google has announced that, starting in 2026/2027, all apps on \"certified\" Android devices will require the developer to submit personal identity details directly to Google.\n\nAfter then, Updatium may stop working on certified Android devices.'**
  String get googleVerificationWarningP1;

  /// No description provided for @googleVerificationWarningP2.
  ///
  /// In en, this message translates to:
  /// **'Go to https://keepandroidopen.org/ for more information.'**
  String get googleVerificationWarningP2;

  /// No description provided for @googleVerificationWarningP3.
  ///
  /// In en, this message translates to:
  /// **'Note that in the short term, it may continue to be possible to install \"unverified\" (non-compliant) apps through an \"advanced flow\" process that Google has promised to implement after broad backlash to their announcement, but they have not detailed how this would work so it is unclear whether it will truly preserve user freedoms in any practical way.\n\nIn any case, Google\'s move is a significant step towards the end of free, general-purpose computing for individuals.\n\nNon-certified OSes, like GrapheneOS, should be unaffected by this for as long as they are allowed to continue to exist.'**
  String get googleVerificationWarningP3;

  /// No description provided for @multipleSigners.
  ///
  /// In en, this message translates to:
  /// **'Multiple Signers'**
  String get multipleSigners;

  /// No description provided for @removeAppQuestion.
  ///
  /// In en, this message translates to:
  /// **'Remove app?'**
  String get removeAppQuestion;

  /// No description provided for @tooManyRequestsTryAgainInMinutes.
  ///
  /// In en, this message translates to:
  /// **'Too many requests (rate limited) - try again in {count} minute'**
  String tooManyRequestsTryAgainInMinutes(int count);

  /// No description provided for @bgUpdateGotErrorRetryInMinutes.
  ///
  /// In en, this message translates to:
  /// **'BG update checking encountered a {error}, will schedule a retry check in {count} minute'**
  String bgUpdateGotErrorRetryInMinutes(String error, int count);

  /// No description provided for @bgCheckFoundUpdatesWillNotifyIfNeeded.
  ///
  /// In en, this message translates to:
  /// **'BG update checking found {count} update - will notify user if needed'**
  String bgCheckFoundUpdatesWillNotifyIfNeeded(int count);

  /// No description provided for @apps.
  ///
  /// In en, this message translates to:
  /// **'{count} Apps'**
  String apps(int count);

  /// No description provided for @url.
  ///
  /// In en, this message translates to:
  /// **'{count} URLs'**
  String url(int count);

  /// No description provided for @minute.
  ///
  /// In en, this message translates to:
  /// **'{count} minutes'**
  String minute(int count);

  /// No description provided for @hour.
  ///
  /// In en, this message translates to:
  /// **'{count} hours'**
  String hour(int count);

  /// No description provided for @day.
  ///
  /// In en, this message translates to:
  /// **'{count} days'**
  String day(int count);

  /// No description provided for @clearedNLogsBeforeXAfterY.
  ///
  /// In en, this message translates to:
  /// **'Cleared {n} logs (before = {before}, after = {after})'**
  String clearedNLogsBeforeXAfterY(int n, int before, int after);

  /// No description provided for @xAndNMoreUpdatesAvailable.
  ///
  /// In en, this message translates to:
  /// **'{appName} and {count} more apps have updates.'**
  String xAndNMoreUpdatesAvailable(String appName, int count);

  /// No description provided for @xAndNMoreUpdatesInstalled.
  ///
  /// In en, this message translates to:
  /// **'{appName} and {count} more apps were updated.'**
  String xAndNMoreUpdatesInstalled(String appName, int count);

  /// No description provided for @xAndNMoreUpdatesFailed.
  ///
  /// In en, this message translates to:
  /// **'Failed to update {appName} and {count} more apps.'**
  String xAndNMoreUpdatesFailed(String appName, int count);

  /// No description provided for @xAndNMoreUpdatesPossiblyInstalled.
  ///
  /// In en, this message translates to:
  /// **'{appName} and {count} more apps may have been updated.'**
  String xAndNMoreUpdatesPossiblyInstalled(String appName, int count);

  /// No description provided for @apk.
  ///
  /// In en, this message translates to:
  /// **'{count} APKs'**
  String apk(int count);

  /// No description provided for @certificateHash.
  ///
  /// In en, this message translates to:
  /// **'Certificate Hashes'**
  String get certificateHash;

  /// No description provided for @securityDisclaimerTitle.
  ///
  /// In en, this message translates to:
  /// **'Security & Legal Disclaimer'**
  String get securityDisclaimerTitle;

  /// No description provided for @license.
  ///
  /// In en, this message translates to:
  /// **'License'**
  String get license;

  /// No description provided for @licenseText.
  ///
  /// In en, this message translates to:
  /// **'This application is distributed under the GPL v3 License.'**
  String get licenseText;

  /// No description provided for @disclaimer.
  ///
  /// In en, this message translates to:
  /// **'Disclaimer'**
  String get disclaimer;

  /// No description provided for @disclaimerText.
  ///
  /// In en, this message translates to:
  /// **'This application does not distribute, host, or verify any of the external applications. The user bears full responsibility for the safety and legality of any software installed through this tool.\n\nhttps://github.com/omeritzics/Updatium is the only official place to download Updatium - it is highly discouraged to download it elsewhere as unofficial sources are unsafe.'**
  String get disclaimerText;

  /// No description provided for @privacy.
  ///
  /// In en, this message translates to:
  /// **'Privacy'**
  String get privacy;

  /// No description provided for @privacyText.
  ///
  /// In en, this message translates to:
  /// **'This app is privacy-focused and does not collect personal data.'**
  String get privacyText;

  /// No description provided for @acceptAndContinue.
  ///
  /// In en, this message translates to:
  /// **'Accept & Continue'**
  String get acceptAndContinue;

  /// No description provided for @decline.
  ///
  /// In en, this message translates to:
  /// **'Decline'**
  String get decline;

  /// No description provided for @githubStarPromptTitle.
  ///
  /// In en, this message translates to:
  /// **'Enjoying Updatium?'**
  String get githubStarPromptTitle;

  /// No description provided for @githubStarPromptContent.
  ///
  /// In en, this message translates to:
  /// **'Updatium is a voluntary, open-source community project developed in my free time. If you\'d like to support the project, please consider starring it on GitHub to help us reach more users and contributors. You won\'t be nudged about this again. Thank you in advance! :)'**
  String get githubStarPromptContent;

  /// No description provided for @githubStarPromptStar.
  ///
  /// In en, this message translates to:
  /// **'Star'**
  String get githubStarPromptStar;

  /// No description provided for @githubStarPromptDontShowAgain.
  ///
  /// In en, this message translates to:
  /// **'Don\'t show again'**
  String get githubStarPromptDontShowAgain;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return AppLocalizationsEn();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
