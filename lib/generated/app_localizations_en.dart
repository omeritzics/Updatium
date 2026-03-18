// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Not a valid $arg1 app URL';
  }

  @override
  String get noReleaseFound => 'Could not find a suitable release';

  @override
  String get noVersionFound => 'Could not determine release version';

  @override
  String get urlMatchesNoSource => 'URL does not match a known source';

  @override
  String get cantInstallOlderVersion =>
      'Cannot install an older version of an app';

  @override
  String get appIdMismatch =>
      'Downloaded package ID does not match existing app ID';

  @override
  String get functionNotImplemented =>
      'This class has not implemented this function';

  @override
  String get placeholder => 'Placeholder';

  @override
  String get someErrors => 'Some errors occurred';

  @override
  String get unexpectedError => 'Unexpected error';

  @override
  String get ok => 'Okay';

  @override
  String get and => 'and';

  @override
  String get githubPATLabel =>
      'GitHub personal access token (increases rate limit)';

  @override
  String get includePrereleases => 'Include prereleases';

  @override
  String get fallbackToOlderReleases => 'Fallback to older releases';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filter release titles by regular expression';

  @override
  String get invalidRegEx => 'Invalid regular expression';

  @override
  String get noDescription => 'No description';

  @override
  String get cancel => 'Cancel';

  @override
  String get requiredInBrackets => '(required)';

  @override
  String get dropdownNoOptsError =>
      'ERROR: DROPDOWN MUST HAVE AT LEAST ONE OPT';

  @override
  String get color => 'Color';

  @override
  String get standard => 'Standard';

  @override
  String get custom => 'Custom';

  @override
  String get useMaterialYou => 'Use Material You colors';

  @override
  String get githubStarredRepos => 'GitHub starred repositories';

  @override
  String get uname => 'Username';

  @override
  String get wrongArgNum => 'Wrong number of arguments provided';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 is track-only';
  }

  @override
  String get source => 'Source';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Apps from this source are \'track-only\'.';

  @override
  String get youPickedTrackOnly =>
      'You have selected the \'track-only\' option.';

  @override
  String get trackOnlyAppDescription =>
      'The app will be tracked for updates, but Updatium will not be able to download or install it.';

  @override
  String get cancelled => 'Cancelled';

  @override
  String get appAlreadyAdded => 'App already added';

  @override
  String get alreadyUpToDateQuestion => 'App already up to date?';

  @override
  String get addApp => 'Add App';

  @override
  String get appSourceURL => 'App source URL';

  @override
  String get error => 'Error';

  @override
  String get add => 'Add';

  @override
  String get searchSomeSourcesLabel => 'Search (some sources only)';

  @override
  String get search => 'Search';

  @override
  String additionalOptsFor(String arg1) {
    return 'Additional options for $arg1';
  }

  @override
  String get supportedSources => 'Supported sources';

  @override
  String get trackOnlyInBrackets => '(track-only)';

  @override
  String get searchableInBrackets => '(searchable)';

  @override
  String get appsString => 'Apps';

  @override
  String get noApps => 'Welcome!';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'No apps for filter';

  @override
  String byX(String arg1) {
    return 'By $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Progress: $arg1%';
  }

  @override
  String get pleaseWait => 'Please wait';

  @override
  String get updateAvailable => 'Update available';

  @override
  String get notInstalled => 'Not installed';

  @override
  String get pseudoVersion => 'pseudo-version';

  @override
  String get selectAll => 'Select all';

  @override
  String deselectX(String arg1) {
    return 'Deselect $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 will be removed from Updatium but remain installed on device.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Remove selected apps?';

  @override
  String get removeSelectedApps => 'Remove selected apps';

  @override
  String updateX(String arg1) {
    return 'Update $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Install $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Mark $arg1\n(track-only)\nas updated';
  }

  @override
  String changeX(String arg1) {
    return 'Change $arg1';
  }

  @override
  String get installUpdateApps => 'Install/update apps';

  @override
  String get installUpdateSelectedApps => 'Install/update selected apps';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Mark $arg1 selected apps as updated?';
  }

  @override
  String get no => 'No';

  @override
  String get yes => 'Yes';

  @override
  String get markSelectedAppsUpdated => 'Mark selected apps as updated';

  @override
  String get pinToTop => 'Pin to top';

  @override
  String get unpinFromTop => 'Unpin from top';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Reset install status for selected apps?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'The install status of any selected apps will be reset.\n\nThis can help when the app version shown in Updatium is incorrect due to failed updates or other issues.';

  @override
  String get customLinkMessage =>
      'These links work on devices with Updatium installed';

  @override
  String get shareAppConfigLinks => 'Share app configuration as HTML link';

  @override
  String get shareSelectedAppURLs => 'Share selected app URLs';

  @override
  String get resetInstallStatus => 'Reset install status';

  @override
  String get more => 'More';

  @override
  String get removeOutdatedFilter => 'Remove out-of-date app filter';

  @override
  String get showOutdatedOnly => 'Show out-of-date apps only';

  @override
  String get filter => 'Filter';

  @override
  String get filterApps => 'Filter apps';

  @override
  String get appName => 'App name';

  @override
  String get author => 'Author';

  @override
  String get upToDateApps => 'Up to date apps';

  @override
  String get nonInstalledApps => 'Non-installed apps';

  @override
  String get importExport => 'Import/export';

  @override
  String get settings => 'Settings';

  @override
  String exportedTo(String arg1) {
    return 'Exported to $arg1';
  }

  @override
  String get updatiumExport => 'Updatium export';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Invalid input';

  @override
  String importedX(String arg1) {
    return 'Imported $arg1';
  }

  @override
  String get updatiumImport => 'Updatium import';

  @override
  String get importFromURLList => 'Import from URL list';

  @override
  String get searchQuery => 'Search query';

  @override
  String get appURLList => 'App URL list';

  @override
  String get line => 'Line';

  @override
  String searchX(String arg1) {
    return 'Search $arg1';
  }

  @override
  String get noResults => 'No results found';

  @override
  String importX(String arg1) {
    return 'Import $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Imported apps may incorrectly show as \"not installed\".\nTo fix this, re-install them through Updatium.\nThis should not affect app data.\n\nOnly affects URL and third-party import methods.';

  @override
  String get importErrors => 'Import errors';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1 of $arg2 apps imported.';
  }

  @override
  String get followingURLsHadErrors => 'The following URLs had errors:';

  @override
  String get selectURL => 'Select URL';

  @override
  String get selectURLs => 'Select URLs';

  @override
  String get pick => 'Pick';

  @override
  String get theme => 'Theme';

  @override
  String get dark => 'Dark';

  @override
  String get light => 'Light';

  @override
  String get followSystem => 'Follow system';

  @override
  String get followSystemThemeExplanation =>
      'Following system theme is possible only by using third-party applications';

  @override
  String get useBlackTheme => 'Use pure black dark theme';

  @override
  String get appSortBy => 'App sort by';

  @override
  String get authorName => 'Author/name';

  @override
  String get nameAuthor => 'Name/author';

  @override
  String get asAdded => 'As added';

  @override
  String get appSortOrder => 'App sort order';

  @override
  String get ascending => 'Ascending';

  @override
  String get descending => 'Descending';

  @override
  String get bgUpdateCheckInterval => 'Background update checking interval';

  @override
  String get neverManualOnly => 'Never - manual only';

  @override
  String get appearance => 'Appearance';

  @override
  String get pinUpdates => 'Pin updates to top of apps view';

  @override
  String get updates => 'Updates';

  @override
  String get sourceSpecific => 'Source-specific';

  @override
  String get appSource => 'App source';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'No logs';

  @override
  String get appLogs => 'App logs';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Close';

  @override
  String get share => 'Share';

  @override
  String get appNotFound => 'App not found';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-export';

  @override
  String get pickAnAPK => 'Pick an APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 has more than one package:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Your device supports the $arg1 CPU architecture.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Your device supports the following CPU architectures:';

  @override
  String get warning => 'Warning';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'The app source is \'$arg1\' but the release package comes from \'$arg2\'. Continue?';
  }

  @override
  String get updatesAvailable => 'Updates available';

  @override
  String get updatesAvailableNotifDescription =>
      'Notifies the user that updates are available for one or more apps tracked by Updatium';

  @override
  String get noNewUpdates => 'No new updates.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 has an update.';
  }

  @override
  String get appsUpdated => 'Apps updated';

  @override
  String get appsNotUpdated => 'Failed to update applications';

  @override
  String get appsUpdatedNotifDescription =>
      'Notifies the user that updates to one or more apps were applied in the background';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 was updated to $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Failed to update $arg1 to $arg2.';
  }

  @override
  String get errorCheckingUpdates => 'Error checking for updates';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'A notification that shows when background update checking fails';

  @override
  String get appsRemoved => 'Apps removed';

  @override
  String get appsRemovedNotifDescription =>
      'Notifies the user that one or more apps were removed due to errors while loading them';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 was removed due to this error: $arg2';
  }

  @override
  String get completeAppInstallation => 'Complete app installation';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium must be open to install apps';

  @override
  String get completeAppInstallationNotifDescription =>
      'Asks the user to return to Updatium to finish installing an app';

  @override
  String get checkingForUpdates => 'Checking for updates';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Transient notification that appears when checking for updates';

  @override
  String get pleaseAllowInstallPerm => 'Please allow Updatium to install apps';

  @override
  String get trackOnly => 'Track-only';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Error $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Version correction disabled (plugin doesn\'t seem to work)';

  @override
  String get unknown => 'Unknown';

  @override
  String get none => 'None';

  @override
  String get all => 'All';

  @override
  String get never => 'Never';

  @override
  String latestVersionX(String arg1) {
    return 'Latest: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Installed: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Last update check: $arg1';
  }

  @override
  String get remove => 'Remove';

  @override
  String get yesMarkUpdated => 'Yes, mark as updated';

  @override
  String get fdroid => 'F-Droid official';

  @override
  String get appIdOrName => 'App ID or name';

  @override
  String get appId => 'App ID';

  @override
  String get appWithIdOrNameNotFound => 'No app was found with that ID or name';

  @override
  String get reposHaveMultipleApps => 'Repos may contain multiple apps';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid third-party repo';

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
  String get install => 'Install';

  @override
  String get markInstalled => 'Mark installed';

  @override
  String get update => 'Update';

  @override
  String get updated => 'Updated';

  @override
  String get markUpdated => 'Mark updated';

  @override
  String get additionalOptions => 'Additional options';

  @override
  String get disableVersionDetection => 'Disable version detection';

  @override
  String get noVersionDetectionExplanation =>
      'This option should only be used for apps where version detection does not work correctly.';

  @override
  String downloadingX(String arg1) {
    return 'Downloading $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'Download $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'Downloaded $arg1';
  }

  @override
  String get releaseAsset => 'Release asset';

  @override
  String get downloadNotifDescription =>
      'Notifies the user of the progress in downloading an app';

  @override
  String get noAPKFound => 'No APK found';

  @override
  String get noVersionDetection => 'No version detection';

  @override
  String get categorize => 'Categorize';

  @override
  String get categories => 'Categories';

  @override
  String get category => 'Category';

  @override
  String get noCategory => 'No category';

  @override
  String get noCategories => 'No categories';

  @override
  String get deleteCategoriesQuestion => 'Delete categories?';

  @override
  String get categoryDeleteWarning =>
      'All apps in deleted categories will be set to uncategorized.';

  @override
  String get addCategory => 'Add category';

  @override
  String get label => 'Label';

  @override
  String get language => 'Language';

  @override
  String get copiedToClipboard => 'Copied to clipboard';

  @override
  String get storagePermissionDenied => 'Storage permission denied';

  @override
  String get selectedCategorizeWarning =>
      'This will replace any existing category settings for the selected apps.';

  @override
  String get filterAPKsByRegEx => 'Filter APKs by regular expression';

  @override
  String get removeFromUpdatium => 'Remove from Updatium';

  @override
  String get uninstallFromDevice => 'Uninstall from device';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Only works for apps with version detection disabled.';

  @override
  String get releaseDateAsVersion => 'Use release date as version string';

  @override
  String get releaseTitleAsVersion => 'Release title as version';

  @override
  String get releaseDateAsVersionExplanation =>
      'This option should only be used for apps where version detection does not work correctly, but a release date is available.';

  @override
  String get changes => 'Changes';

  @override
  String get releaseDate => 'Release date';

  @override
  String get importFromURLsInFile => 'Import from URLs in file (like OPML)';

  @override
  String get versionDetectionExplanation =>
      'Reconcile version string with version detected from OS';

  @override
  String get versionDetection => 'Version detection';

  @override
  String get standardVersionDetection => 'Standard version detection';

  @override
  String get groupByCategory => 'Group by category';

  @override
  String get listView => 'List view';

  @override
  String get gridView => 'Grid view';

  @override
  String get autoApkFilterByArch =>
      'Attempt to filter APKs by CPU architecture if possible';

  @override
  String get autoLinkFilterByArch =>
      'Attempt to filter links by CPU architecture if possible';

  @override
  String get overrideSource => 'Override source';

  @override
  String get dontShowAgain => 'Don\'t show this again';

  @override
  String get dontShowTrackOnlyWarnings => 'Don\'t show \'track-only\' warnings';

  @override
  String get dontShowAPKOriginWarnings => 'Don\'t show APK origin warnings';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Move non-installed apps to bottom of apps view';

  @override
  String get hideNonInstalledApps => 'Hide non-installed apps';

  @override
  String get gitlabPATLabel => 'GitLab personal access token';

  @override
  String get about => 'About';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1 needs additional credentials (in Settings)';
  }

  @override
  String get checkOnStart => 'Check for updates on startup';

  @override
  String get safeMode => 'Safe Mode';

  @override
  String get safeModeDescription =>
      'Hide Add App page and show Import/Export instead';

  @override
  String get safeModeAddAppDisabled => 'Add App is disabled in Safe Mode';

  @override
  String get tryInferAppIdFromCode => 'Try inferring app ID from source code';

  @override
  String get removeOnExternalUninstall =>
      'Automatically remove externally uninstalled apps';

  @override
  String get pickHighestVersionCode => 'Auto-select highest version code APK';

  @override
  String get checkUpdateOnDetailPage =>
      'Check for updates on opening an app detail page';

  @override
  String get disablePageTransitions => 'Disable page transition animations';

  @override
  String get reversePageTransitions => 'Reverse page transition animations';

  @override
  String get minStarCount => 'Minimum star count';

  @override
  String get addInfoBelow => 'Add this info below.';

  @override
  String get addInfoInSettings => 'Add this info in the Settings.';

  @override
  String get githubSourceNote =>
      'GitHub rate limiting can be avoided using an API key.';

  @override
  String get sortByLastLinkSegment =>
      'Sort by only the last segment of the link';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filter release notes by regular expression';

  @override
  String get customLinkFilterRegex =>
      'Custom APK link filter by regular expression (default \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'App updates attempted';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Notifies the user that updates to one or more apps were potentially applied in the background';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 may have been updated to $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'Enable background updates';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Background updates may not be possible for all apps.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'The success of a background install can only be determined when Updatium is opened.';

  @override
  String get verifyLatestTag => 'Verify latest tag';

  @override
  String get intermediateLinkRegex =>
      'Filter for an \'intermediate\' link to visit';

  @override
  String get filterByLinkText => 'Filter links by link text';

  @override
  String get matchLinksOutsideATags => 'Match links outside <a> tags';

  @override
  String get intermediateLinkNotFound => 'Intermediate link not found';

  @override
  String get intermediateLink => 'Intermediate link';

  @override
  String get exemptFromBackgroundUpdates =>
      'Exempt from background updates (if enabled)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Disable background updates when not on Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Disable background updates when not charging';

  @override
  String get autoSelectHighestVersionCode =>
      'Auto-select highest versionCode APK';

  @override
  String get versionExtractionRegEx => 'Version string extraction RegEx';

  @override
  String get trimVersionString => 'Trim version string with RegEx';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Match group to use for \"$arg1\"';
  }

  @override
  String get matchGroupToUse =>
      'Match group to use for version string extraction RegEx';

  @override
  String get highlightTouchTargets => 'Highlight less obvious touch targets';

  @override
  String get pickExportDir => 'Pick export directory';

  @override
  String get autoExportOnChanges => 'Automatically export on changes';

  @override
  String get includeSettings => 'Include settings';

  @override
  String get filterVersionsByRegEx => 'Filter versions by regular expression';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Try selecting suggested versionCode APK';

  @override
  String get dontSortReleasesList => 'Retain release order from API';

  @override
  String get reverseSort => 'Reverse sorting';

  @override
  String get takeFirstLink => 'Take first link';

  @override
  String get skipSort => 'Skip sorting';

  @override
  String get debugMenu => 'Debug menu';

  @override
  String get bgTaskStarted => 'Background task started - check logs.';

  @override
  String get runBgCheckNow => 'Run background update check now';

  @override
  String get versionExtractWholePage =>
      'Apply version string extraction Regex to entire page';

  @override
  String get installing => 'Installing';

  @override
  String get skipUpdateNotifications => 'Skip update notifications';

  @override
  String get updatesAvailableNotifChannel => 'Updates available';

  @override
  String get appsUpdatedNotifChannel => 'Apps updated';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'App updates attempted';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Error checking for updates';

  @override
  String get appsRemovedNotifChannel => 'Apps removed';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Downloading $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Complete app installation';

  @override
  String get checkingForUpdatesNotifChannel => 'Checking for updates';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Only check installed and track-only apps for updates';

  @override
  String get supportFixedAPKURL => 'Support fixed APK URLs';

  @override
  String selectX(String arg1) {
    return 'Select $arg1';
  }

  @override
  String get parallelDownloads => 'Allow parallel downloads';

  @override
  String get useShizuku => 'Use Shizuku or Sui to install';

  @override
  String get shizukuBinderNotFound => 'Shizuku service not running';

  @override
  String get shizukuOld => 'Old Shizuku version (<11) - update it';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku running on Android < 8.1 with ADB - update Android or use Sui instead';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Set Google Play as the installation source (if Shizuku is used)';

  @override
  String get useSystemFont => 'Use the system font';

  @override
  String get useVersionCodeAsOSVersion =>
      'Use app versionCode as OS-detected version';

  @override
  String get requestHeader => 'Request header';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Use latest asset upload as release date';

  @override
  String get defaultPseudoVersioningMethod =>
      'Default pseudo-versioning method';

  @override
  String get partialAPKHash => 'Partial APK hash';

  @override
  String get directAPKLink => 'Direct APK link';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'Name';

  @override
  String get sortMethod => 'Sort method';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload => 'Refresh app details before download';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'A pseudo-version is in use';

  @override
  String get installed => 'Installed';

  @override
  String get latest => 'Latest';

  @override
  String get invertRegEx => 'Invert regular expression';

  @override
  String get note => 'Note';

  @override
  String selfHostedNote(String arg1) {
    return 'The \"$arg1\" dropdown can be used to reach self-hosted/custom instances of any source.';
  }

  @override
  String get badDownload =>
      'The APK could not be parsed (incompatible or partial download)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Share new apps with AppVerifier (if available)';

  @override
  String get appVerifierInstructionToast =>
      'Share to AppVerifier, then return here when ready.';

  @override
  String get wiki => 'Help/wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Allow insecure HTTP requests';

  @override
  String get stayOneVersionBehind => 'Stay one version behind latest';

  @override
  String get useFirstApkOfVersion => 'Auto-select first of multiple APKs';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get smartname => 'Name (smart)';

  @override
  String get welcome => 'Welcome';

  @override
  String get documentationLinksNote =>
      'The Updatium GitHub page linked below contains links to videos, articles, discussions, and other resources that will help you understand how to use the app.';

  @override
  String get batteryOptimizationNote =>
      'Note that background downloads may work more reliably if you switch to the \"foreground service\" in the Updatium settings and/or disable battery optimization for Updatium in your OS settings.';

  @override
  String fileDeletionError(String arg1) {
    return 'Failed to delete file (try deleting it manually then try again): \"$arg1\"';
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
  String get securityDisclaimerTitle => 'Security & Legal Disclaimer';

  @override
  String get license => 'License';

  @override
  String get licenseText =>
      'This application is distributed under the GPL v3 License.';

  @override
  String get disclaimer => 'Disclaimer';

  @override
  String get disclaimerText =>
      'This application does not distribute, host, or verify any of the external applications. The user bears full responsibility for the safety and legality of any software installed through this tool.\n\nhttps://github.com/omeritzics/Updatium is the only official place to download Updatium - it is highly discouraged to download it elsewhere as unofficial sources are unsafe.';

  @override
  String get privacy => 'Privacy';

  @override
  String get privacyText =>
      'This app is privacy-focused and does not collect personal data.';

  @override
  String get acceptAndContinue => 'Accept & Continue';

  @override
  String get decline => 'Decline';

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
  String get aPKLinkHash => 'APK link hash';

  @override
  String get gHReqPrefix =>
      '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get continueAction => 'Continue';

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
