// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'Not a valid $p0 app URL';
  }

  @override
  String get noReleaseFound => 'Could not find a suitable release';

  @override
  String get noVersionFound => 'Could not determine release version';

  @override
  String get urlMatchesNoSource => 'URL does not match a known source';

  @override
  String get cantInstallOlderVersion => 'Cannot install an older version of an app';

  @override
  String get appIdMismatch => 'Downloaded package ID does not match existing app ID';

  @override
  String get functionNotImplemented => 'This class has not implemented this function';

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
  String get githubPATLabel => 'GitHub personal access token (increases rate limit)';

  @override
  String get includePrereleases => 'Include prereleases';

  @override
  String get fallbackToOlderReleases => 'Fallback to older releases';

  @override
  String get filterReleaseTitlesByRegEx => 'Filter release titles by regular expression';

  @override
  String get invalidRegEx => 'Invalid regular expression';

  @override
  String get noDescription => 'No description';

  @override
  String get cancel => 'Cancel';

  @override
  String get continue => 'Continue';

  @override
  String get requiredInBrackets => '(required)';

  @override
  String get dropdownNoOptsError => 'ERROR: DROPDOWN MUST HAVE AT LEAST ONE OPT';

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
  String xIsTrackOnly(Object p0) {
    return '$p0 is track-only';
  }

  @override
  String get source => 'Source';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly => 'Apps from this source are \'track-only\'.';

  @override
  String get youPickedTrackOnly => 'You have selected the \'track-only\' option.';

  @override
  String get trackOnlyAppDescription => 'The app will be tracked for updates, but Updatium will not be able to download or install it.';

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
  String additionalOptsFor(Object p0) {
    return 'Additional options for $p0';
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
  String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'No apps for filter';

  @override
  String byX(Object p0) {
    return 'By $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Progress: $p0%';
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
  String deselectX(Object p0) {
    return 'Deselect $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 will be removed from Updatium but remain installed on device.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Remove selected apps?';

  @override
  String get removeSelectedApps => 'Remove selected apps';

  @override
  String updateX(Object p0) {
    return 'Update $p0';
  }

  @override
  String installX(Object p0) {
    return 'Install $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Mark $p0\n(track-only)\nas updated';
  }

  @override
  String changeX(Object p0) {
    return 'Change $p0';
  }

  @override
  String get installUpdateApps => 'Install/update apps';

  @override
  String get installUpdateSelectedApps => 'Install/update selected apps';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Mark $p0 selected apps as updated?';
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
  String get resetInstallStatusForSelectedAppsQuestion => 'Reset install status for selected apps?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'The install status of any selected apps will be reset.\n\nThis can help when the app version shown in Updatium is incorrect due to failed updates or other issues.';

  @override
  String get customLinkMessage => 'These links work on devices with Updatium installed';

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
  String exportedTo(Object p0) {
    return 'Exported to $p0';
  }

  @override
  String get updatiumExport => 'Updatium export';

  @override
  String get invalidInput => 'Invalid input';

  @override
  String importedX(Object p0) {
    return 'Imported $p0';
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
  String searchX(Object p0) {
    return 'Search $p0';
  }

  @override
  String get noResults => 'No results found';

  @override
  String importX(Object p0) {
    return 'Import $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'Imported apps may incorrectly show as \"not installed\".\nTo fix this, re-install them through Updatium.\nThis should not affect app data.\n\nOnly affects URL and third-party import methods.';

  @override
  String get importErrors => 'Import errors';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 of $p1 apps imported.';
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
  String get followSystemThemeExplanation => 'Following system theme is possible only by using third-party applications';

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
  String get noLogs => 'No logs';

  @override
  String get appLogs => 'App logs';

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
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 has more than one package:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Your device supports the $p0 CPU architecture.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Your device supports the following CPU architectures:';

  @override
  String get warning => 'Warning';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'The app source is \'$p0\' but the release package comes from \'$p1\'. Continue?';
  }

  @override
  String get updatesAvailable => 'Updates available';

  @override
  String get updatesAvailableNotifDescription => 'Notifies the user that updates are available for one or more apps tracked by Updatium';

  @override
  String get noNewUpdates => 'No new updates.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 has an update.';
  }

  @override
  String get appsUpdated => 'Apps updated';

  @override
  String get appsNotUpdated => 'Failed to update applications';

  @override
  String get appsUpdatedNotifDescription => 'Notifies the user that updates to one or more apps were applied in the background';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 was updated to $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Failed to update $p0 to $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Error checking for updates';

  @override
  String get errorCheckingUpdatesNotifDescription => 'A notification that shows when background update checking fails';

  @override
  String get appsRemoved => 'Apps removed';

  @override
  String get appsRemovedNotifDescription => 'Notifies the user that one or more apps were removed due to errors while loading them';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 was removed due to this error: $p1';
  }

  @override
  String get completeAppInstallation => 'Complete app installation';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium must be open to install apps';

  @override
  String get completeAppInstallationNotifDescription => 'Asks the user to return to Updatium to finish installing an app';

  @override
  String get checkingForUpdates => 'Checking for updates';

  @override
  String get checkingForUpdatesNotifDescription => 'Transient notification that appears when checking for updates';

  @override
  String get pleaseAllowInstallPerm => 'Please allow Updatium to install apps';

  @override
  String get trackOnly => 'Track-only';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Error $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Version correction disabled (plugin doesn\'t seem to work)';

  @override
  String get unknown => 'Unknown';

  @override
  String get none => 'None';

  @override
  String get all => 'All';

  @override
  String get never => 'Never';

  @override
  String latestVersionX(Object p0) {
    return 'Latest: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Installed: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Last update check: $p0';
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
  String get noVersionDetectionExplanation => 'This option should only be used for apps where version detection does not work correctly.';

  @override
  String downloadingX(Object p0) {
    return 'Downloading $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Download $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Downloaded $p0';
  }

  @override
  String get releaseAsset => 'Release asset';

  @override
  String get downloadNotifDescription => 'Notifies the user of the progress in downloading an app';

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
  String get categoryDeleteWarning => 'All apps in deleted categories will be set to uncategorized.';

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
  String get selectedCategorizeWarning => 'This will replace any existing category settings for the selected apps.';

  @override
  String get filterAPKsByRegEx => 'Filter APKs by regular expression';

  @override
  String get removeFromUpdatium => 'Remove from Updatium';

  @override
  String get uninstallFromDevice => 'Uninstall from device';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Only works for apps with version detection disabled.';

  @override
  String get releaseDateAsVersion => 'Use release date as version string';

  @override
  String get releaseTitleAsVersion => 'Use release title as version string';

  @override
  String get releaseDateAsVersionExplanation => 'This option should only be used for apps where version detection does not work correctly, but a release date is available.';

  @override
  String get changes => 'Changes';

  @override
  String get releaseDate => 'Release date';

  @override
  String get importFromURLsInFile => 'Import from URLs in file (like OPML)';

  @override
  String get versionDetectionExplanation => 'Reconcile version string with version detected from OS';

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
  String get autoApkFilterByArch => 'Attempt to filter APKs by CPU architecture if possible';

  @override
  String get autoLinkFilterByArch => 'Attempt to filter links by CPU architecture if possible';

  @override
  String get overrideSource => 'Override source';

  @override
  String get dontShowAgain => 'Don\'t show this again';

  @override
  String get dontShowTrackOnlyWarnings => 'Don\'t show \'track-only\' warnings';

  @override
  String get dontShowAPKOriginWarnings => 'Don\'t show APK origin warnings';

  @override
  String get moveNonInstalledAppsToBottom => 'Move non-installed apps to bottom of apps view';

  @override
  String get hideNonInstalledApps => 'Hide non-installed apps';

  @override
  String get gitlabPATLabel => 'GitLab personal access token';

  @override
  String get about => 'About';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0 needs additional credentials (in Settings)';
  }

  @override
  String get checkOnStart => 'Check for updates on startup';

  @override
  String get tryInferAppIdFromCode => 'Try inferring app ID from source code';

  @override
  String get removeOnExternalUninstall => 'Automatically remove externally uninstalled apps';

  @override
  String get pickHighestVersionCode => 'Auto-select highest version code APK';

  @override
  String get checkUpdateOnDetailPage => 'Check for updates on opening an app detail page';

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
  String get githubSourceNote => 'GitHub rate limiting can be avoided using an API key.';

  @override
  String get sortByLastLinkSegment => 'Sort by only the last segment of the link';

  @override
  String get filterReleaseNotesByRegEx => 'Filter release notes by regular expression';

  @override
  String get customLinkFilterRegex => 'Custom APK link filter by regular expression (default \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'App updates attempted';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Notifies the user that updates to one or more apps were potentially applied in the background';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 may have been updated to $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Enable background updates';

  @override
  String get backgroundUpdateReqsExplanation => 'Background updates may not be possible for all apps.';

  @override
  String get backgroundUpdateLimitsExplanation => 'The success of a background install can only be determined when Updatium is opened.';

  @override
  String get verifyLatestTag => 'Verify the \'latest\' tag';

  @override
  String get intermediateLinkRegex => 'Filter for an \'intermediate\' link to visit';

  @override
  String get filterByLinkText => 'Filter links by link text';

  @override
  String get matchLinksOutsideATags => 'Match links outside <a> tags';

  @override
  String get intermediateLinkNotFound => 'Intermediate link not found';

  @override
  String get intermediateLink => 'Intermediate link';

  @override
  String get exemptFromBackgroundUpdates => 'Exempt from background updates (if enabled)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Disable background updates when not on Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly => 'Disable background updates when not charging';

  @override
  String get autoSelectHighestVersionCode => 'Auto-select highest versionCode APK';

  @override
  String get versionExtractionRegEx => 'Version string extraction RegEx';

  @override
  String get trimVersionString => 'Trim version string with RegEx';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Match group to use for \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Match group to use for version string extraction RegEx';

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
  String get trySelectingSuggestedVersionCode => 'Try selecting suggested versionCode APK';

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
  String get versionExtractWholePage => 'Apply version string extraction Regex to entire page';

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
  String downloadingXNotifChannel(Object p0) {
    return 'Downloading $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Complete app installation';

  @override
  String get checkingForUpdatesNotifChannel => 'Checking for updates';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Only check installed and track-only apps for updates';

  @override
  String get supportFixedAPKURL => 'Support fixed APK URLs';

  @override
  String selectX(Object p0) {
    return 'Select $p0';
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
  String get shizukuOldAndroidWithADB => 'Shizuku running on Android < 8.1 with ADB - update Android or use Sui instead';

  @override
  String get shizukuPretendToBeGooglePlay => 'Set Google Play as the installation source (if Shizuku is used)';

  @override
  String get useSystemFont => 'Use the system font';

  @override
  String get useVersionCodeAsOSVersion => 'Use app versionCode as OS-detected version';

  @override
  String get requestHeader => 'Request header';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Use latest asset upload as release date';

  @override
  String get defaultPseudoVersioningMethod => 'Default pseudo-versioning method';

  @override
  String get partialAPKHash => 'Partial APK hash';

  @override
  String get apkLinkHash => 'APK link hash';

  @override
  String get directAPKLink => 'Direct APK link';

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
  String selfHostedNote(Object p0) {
    return 'The \"$p0\" dropdown can be used to reach self-hosted/custom instances of any source.';
  }

  @override
  String get badDownload => 'The APK could not be parsed (incompatible or partial download)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Share new apps with AppVerifier (if available)';

  @override
  String get appVerifierInstructionToast => 'Share to AppVerifier, then return here when ready.';

  @override
  String get wiki => 'Help/wiki';

  @override
  String get allowInsecure => 'Allow insecure HTTP requests';

  @override
  String get stayOneVersionBehind => 'Stay one version behind latest';

  @override
  String get useFirstApkOfVersion => 'Auto-select first of multiple APKs';

  @override
  String get refreshBeforeDownload => 'Refresh app details before download';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Name';

  @override
  String get smartname => 'Name (smart)';

  @override
  String get sortMethod => 'Sort method';

  @override
  String get welcome => 'Welcome';

  @override
  String get documentationLinksNote => 'The Updatium GitHub page linked below contains links to videos, articles, discussions, and other resources that will help you understand how to use the app.';

  @override
  String get batteryOptimizationNote => 'Note that background downloads may work more reliably if you switch to the \"foreground service\" in the Updatium settings and/or disable battery optimization for Updatium in your OS settings.';

  @override
  String fileDeletionError(Object p0) {
    return 'Failed to delete file (try deleting it manually then try again): \"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium foreground service';

  @override
  String get foregroundServiceExplanation => 'Use a foreground service for update checking (more reliable, consumes more power)';

  @override
  String get fgServiceNotice => 'This notification is required for background update checking (it can be hidden in the OS settings)';

  @override
  String get excludeSecrets => 'Exclude secrets';

  @override
  String get ghReqPrefix => '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get includeZips => 'Include ZIP files';

  @override
  String get zippedApkFilterRegEx => 'Filter APKs inside ZIP';

  @override
  String get googleVerificationWarningP1 => 'Google has announced that, starting in 2026/2027, all apps on \"certified\" Android devices will require the developer to submit personal identity details directly to Google.\n\nAfter then, Updatium may stop working on certified Android devices.';

  @override
  String get googleVerificationWarningP2 => 'Go to https://keepandroidopen.org/ for more information.';

  @override
  String get googleVerificationWarningP3 => 'Note that in the short term, it may continue to be possible to install \"unverified\" (non-compliant) apps through an \"advanced flow\" process that Google has promised to implement after broad backlash to their announcement, but they have not detailed how this would work so it is unclear whether it will truly preserve user freedoms in any practical way.\n\nIn any case, Google\'s move is a significant step towards the end of free, general-purpose computing for individuals.\n\nNon-certified OSes, like GrapheneOS, should be unaffected by this for as long as they are allowed to continue to exist.';

  @override
  String get multipleSigners => 'Multiple Signers';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Remove apps?',
      one: 'Remove app?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Too many requests (rate limited) - try again in $count minutes',
      one: 'Too many requests (rate limited) - try again in $count minute',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'BG update checking encountered a $count, will schedule a retry check in $count minutes',
      one: 'BG update checking encountered a $count, will schedule a retry check in $count minute',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'BG update checking found $count updates - will notify user if needed',
      one: 'BG update checking found $count update - will notify user if needed',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Apps',
      one: '$count App',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URLs',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutes',
      one: '$count minute',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count hours',
      one: '$count hour',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count days',
      one: '$count day',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Cleared $n logs (before = $before, after = $after)',
      one: 'Cleared $n log (before = $before, after = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count and $count more apps have updates.',
      one: '$count and 1 more app have updates.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count and $count more apps were updated.',
      one: '$count and 1 more app was updated.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Failed to update $count and $count more apps.',
      one: 'Failed to update $count and 1 more app.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count and $count more apps may have been updated.',
      one: '$count and 1 more app may have been updated.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APKs',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Certificate Hashes',
      one: 'Certificate Hash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Security & Legal Disclaimer';

  @override
  String get license => 'License';

  @override
  String get licenseText => 'This application is distributed under the GPL v3 License.';

  @override
  String get disclaimer => 'Disclaimer';

  @override
  String get disclaimerText => 'This application does not distribute, host, or verify any of the external applications. The user bears full responsibility for the safety and legality of any software installed through this tool.\n\nhttps://github.com/omeritzics/Updatium is the only official place to download Updatium - it is highly discouraged to download it elsewhere as unofficial sources are unsafe.';

  @override
  String get privacy => 'Privacy';

  @override
  String get privacyText => 'This app is privacy-focused and does not collect personal data.';

  @override
  String get acceptAndContinue => 'Accept & Continue';

  @override
  String get decline => 'Decline';
}

/// The translations for English (`en_EO`).
class AppLocalizationsEnEo extends AppLocalizationsEn {
  AppLocalizationsEnEo(): super('en_EO');

  @override
  String invalidURLForSource(Object p0) {
    return 'Nevalida apo-URL $p0';
  }

  @override
  String get noReleaseFound => 'Ne eblas trovi taŭgan eldonon';

  @override
  String get noVersionFound => 'Ne eblas determini la eldonversion';

  @override
  String get urlMatchesNoSource => 'La URL ne konformas al konata fonto';

  @override
  String get cantInstallOlderVersion => 'Ne eblas instali malnovan version de la Apo';

  @override
  String get appIdMismatch => 'La identigilo de la elŝutita pakaĵo ne konformas al la identigilo de la ekzistanta apo';

  @override
  String get functionNotImplemented => 'Tiu klaso ne fasonadas tiun funkcion';

  @override
  String get placeholder => 'Rezervilo';

  @override
  String get someErrors => 'Eraroj okazis';

  @override
  String get unexpectedError => 'Neatendita eraro';

  @override
  String get ok => 'Okej';

  @override
  String get and => 'kaj';

  @override
  String get githubPATLabel => 'Github persona atingoĵetono (pliigas la kvantolimon)';

  @override
  String get includePrereleases => 'Inkluzivi la pra-eldonojn';

  @override
  String get fallbackToOlderReleases => 'Reveno al malnovaj versioj';

  @override
  String get filterReleaseTitlesByRegEx => 'Filtri la eldontitoljn per regula esprimo';

  @override
  String get invalidRegEx => 'Nevalida regula esprimo';

  @override
  String get noDescription => 'Neniu priskribo';

  @override
  String get cancel => 'Nuligi';

  @override
  String get continue => 'Daŭrigi';

  @override
  String get requiredInBrackets => '(Neprigata)';

  @override
  String get dropdownNoOptsError => 'ERARO: LA MALVOLVANTA LISTO DEVAS HAVI ALMENAŬ UNU OPCION';

  @override
  String get color => 'Koloro';

  @override
  String get standard => 'Norma';

  @override
  String get custom => 'Agordita';

  @override
  String get useMaterialYou => 'Uzi Material You kolorojn';

  @override
  String get githubStarredRepos => 'Stelaj GitHub-deponejoj';

  @override
  String get uname => 'Uzantnomo';

  @override
  String get wrongArgNum => 'Malĝusta nombro da provizitaj argumentoj';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 estas nur sekvitaj';
  }

  @override
  String get source => 'Fonto';

  @override
  String get app => 'Apo';

  @override
  String get appsFromSourceAreTrackOnly => 'Apoj el tiu fonto estas \'Nur sekvitaj\'.';

  @override
  String get youPickedTrackOnly => 'Vi selektis la opcion \'Nur sekvitaj\'.';

  @override
  String get trackOnlyAppDescription => 'La apo estas sekvota por ĝisdatigoj, sed Updatium ne povos elŝuti aŭ instali ĝin.';

  @override
  String get cancelled => 'Nuligita';

  @override
  String get appAlreadyAdded => 'Jam aldonita apo';

  @override
  String get alreadyUpToDateQuestion => 'Ĉu la apo estas ĝisdata?';

  @override
  String get addApp => 'Aldoni apon';

  @override
  String get appSourceURL => 'URL de la apofonto';

  @override
  String get error => 'Eraro';

  @override
  String get add => 'Aldoni';

  @override
  String get searchSomeSourcesLabel => 'Serĉi (nur kelkaj fontoj)';

  @override
  String get search => 'Serĉi';

  @override
  String additionalOptsFor(Object p0) {
    return 'Kromaj opcioj por $p0';
  }

  @override
  String get supportedSources => 'Taskiĝata fontoj';

  @override
  String get trackOnlyInBrackets => '(Nur sekvita)';

  @override
  String get searchableInBrackets => '(Serĉebla)';

  @override
  String get appsString => 'Apoj';

  @override
  String get noApps => 'Neniu apo';

  @override
  String get noAppsForFilter => 'Neniu apo por filtri';

  @override
  String byX(Object p0) {
    return 'Laŭ $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Progreso: $p0%';
  }

  @override
  String get pleaseWait => 'Bonvolu atendi';

  @override
  String get updateAvailable => 'Havebla ĝisdatigo';

  @override
  String get notInstalled => 'Neinstalita';

  @override
  String get pseudoVersion => 'Pseŭdoversio';

  @override
  String get selectAll => 'Selekti ĉion';

  @override
  String deselectX(Object p0) {
    return 'Malselekti $p0';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 estas farigota de Updatium sed restos instalata en la disponaĵo.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Farigi la selektitajn apojn?';

  @override
  String get removeSelectedApps => 'Farigi la selektitajn apojn';

  @override
  String updateX(Object p0) {
    return 'Ĝisdatigi $p0';
  }

  @override
  String installX(Object p0) {
    return 'Instali $p0';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Marki $p0\n(Nur sekvita)\nkiel ĝisdata';
  }

  @override
  String changeX(Object p0) {
    return 'Ŝanĝi $p0';
  }

  @override
  String get installUpdateApps => 'Instali/ĝisdatigi apojn';

  @override
  String get installUpdateSelectedApps => 'Instali/ĝisdatigi la selektitajn apojn';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return 'Marki la $p0 selektitajn apojn kiel ĝisdataj?';
  }

  @override
  String get no => 'Ne';

  @override
  String get yes => 'Jes';

  @override
  String get markSelectedAppsUpdated => 'Marki la selektitajn apojn kiel ĝisdataj';

  @override
  String get pinToTop => 'Alpingli supre';

  @override
  String get unpinFromTop => 'Malalpingli el supro';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Rekomenci la instaladostaton de la selektitaj apoj?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Instaladostato de ĉiuj selektitaj apoj estas rekomencota.\n\nTio povas utili kiam la versio de la montrata application en Updatium estas malĝusta kaŭze de malsukcesaj ĝidatigoj aŭ aliaj problemoj.';

  @override
  String get customLinkMessage => 'Tiuj ligiloj funkcias en disponaĵoj kun Updatium instalita';

  @override
  String get shareAppConfigLinks => 'Diskonigi la apo-agordojn kiel HTML ligilo';

  @override
  String get shareSelectedAppURLs => 'Diskonigi la selektitajn apo-URLjn';

  @override
  String get resetInstallStatus => 'Rekomenci la instaladostaton de la apoj';

  @override
  String get more => 'Pli';

  @override
  String get removeOutdatedFilter => 'Forigi la filtron de malmodernaj apoj';

  @override
  String get showOutdatedOnly => 'Nur montri malmodernajn apojn';

  @override
  String get filter => 'Filtro';

  @override
  String get filterApps => 'Filtri la apojn';

  @override
  String get appName => 'Aponomo';

  @override
  String get author => 'Aŭtoro';

  @override
  String get upToDateApps => 'Ĝisdataj apoj';

  @override
  String get nonInstalledApps => 'Neinstalita apoj';

  @override
  String get importExport => 'Importi/Eksporti';

  @override
  String get settings => 'Agordoj';

  @override
  String exportedTo(Object p0) {
    return 'Eksportita en $p0';
  }

  @override
  String get updatiumExport => 'Eksporti Updatium-n';

  @override
  String get invalidInput => 'Nevalida enigo';

  @override
  String importedX(Object p0) {
    return 'Importita $p0';
  }

  @override
  String get updatiumImport => 'Importi Updatium-n';

  @override
  String get importFromURLList => 'Eksporti el URL-listo';

  @override
  String get searchQuery => 'Informmendo de serĉo';

  @override
  String get appURLList => 'Listo de URLj de la apo';

  @override
  String get line => 'Horizontalo';

  @override
  String searchX(Object p0) {
    return 'Serĉi $p0';
  }

  @override
  String get noResults => 'Neniu rezulto';

  @override
  String importX(Object p0) {
    return 'Importi $p0';
  }

  @override
  String get importedAppsIdDisclaimer => 'La importitaj apoj povas montriĝi malĝuste kiel \"Neinstalitaj\".\nPor solvi tion, reinstalu ilin per Updatium.\nTiu ne afekcios la apodatumoj.\n\nAkefcias nur la URL-ajn lak triajn importmetodojn.';

  @override
  String get importErrors => 'Eraroj de importado';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 apoj el $p1 importitaj.';
  }

  @override
  String get followingURLsHadErrors => 'La sekvantaj URLj havis erarojn:';

  @override
  String get selectURL => 'Selekti URLn';

  @override
  String get selectURLs => 'Selekti URLjn';

  @override
  String get pick => 'Elekti';

  @override
  String get theme => 'Temo';

  @override
  String get dark => 'Malhela';

  @override
  String get light => 'Hela';

  @override
  String get followSystem => 'Konformi al sistemo';

  @override
  String get followSystemThemeExplanation => 'Konformi al sistemtemo nur eblas kun triaj aplikaĵoj.';

  @override
  String get useBlackTheme => 'Uzi puran nigran temon';

  @override
  String get appSortBy => 'Klasi apojn laŭ';

  @override
  String get authorName => 'Aŭtoro/Nomo';

  @override
  String get nameAuthor => 'Nomo/Aŭtoro';

  @override
  String get asAdded => 'Aldondato';

  @override
  String get appSortOrder => 'Ordo de la apoklasifiko';

  @override
  String get ascending => 'Kreskanta';

  @override
  String get descending => 'Malkreskanta';

  @override
  String get bgUpdateCheckInterval => 'Serĉo-intertempo de fonaj ĝisdatigoj';

  @override
  String get neverManualOnly => 'Neniam - Nur Malaŭtomata';

  @override
  String get appearance => 'Aspekto';

  @override
  String get pinUpdates => 'Alpingli ĝisatigojn en la supro de la langeto \'Apoj\'';

  @override
  String get updates => 'Ĝisdatigoj';

  @override
  String get sourceSpecific => 'Fontspecifa';

  @override
  String get appSource => 'Apofonto';

  @override
  String get noLogs => 'Neniu protokolo';

  @override
  String get appLogs => 'Apoprotokoloj';

  @override
  String get close => 'Fermi';

  @override
  String get share => 'Diskonigi';

  @override
  String get appNotFound => 'Netrovebla apo';

  @override
  String get updatiumExportHyphenatedLowercase => 'eksporto-updatium';

  @override
  String get pickAnAPK => 'Selektu APKn';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 havas pli ol unu pakaĵon:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Via disponaĵo taskiĝas la CPU-arkitekturon $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Via disponaĵo taskiĝas la sekvantajn CPU-arkitekturojn:';

  @override
  String get warning => 'Avertu';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'La apofonto estas \'$p0\' sed la pakaĵo de ĝisdatigo devenas de \'$p1\'. Daŭrigi?';
  }

  @override
  String get updatesAvailable => 'Haveblaj ĝisdatigoj';

  @override
  String get updatesAvailableNotifDescription => 'Sciigas al la uzanto, ke ĝisdatigoj haveblas por unu aŭ pluraj apoj sekvitaj fare de Updatium.';

  @override
  String get noNewUpdates => 'Neniu nova ĝisdatigo.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 havas ĝisdatigon.';
  }

  @override
  String get appsUpdated => 'Ĝisdataj apoj';

  @override
  String get appsNotUpdated => 'Malsukcesis ĝisdatigi aplikaĵojn';

  @override
  String get appsUpdatedNotifDescription => 'Sciigas al la uzanto, ke ĝisdatigoj de unu aŭ pluraj apoj estas instalitaj fone.';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 estas ĝidatigita en $p1.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Malsukcesas ĝisdatigi de $p0 en $p1.';
  }

  @override
  String get errorCheckingUpdates => 'Eraro serĉante ĝisdatigojn';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Sciigas al la uzanto, kiam la serĉo de fonaj ĝisdatigoj malsukcesas.';

  @override
  String get appsRemoved => 'Forigitaj Apoj';

  @override
  String get appsRemovedNotifDescription => 'Sciigas al la uzanto, ke unu aŭ pluraj apoj estas forigitaj kaŭze de eraroj dum ilia ŝarĝado.';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 estas forigita kaŭze de tiu eraro: $p1';
  }

  @override
  String get completeAppInstallation => 'Kompleta instalado de la apo';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium devas esti malfermita por instali apojn';

  @override
  String get completeAppInstallationNotifDescription => 'Petas la uzanton reiri en Updatium por fini la instaladon de apo';

  @override
  String get checkingForUpdates => 'Serĉante ĝisdatigojn';

  @override
  String get checkingForUpdatesNotifDescription => 'Dumtempa sciigo kiu aperas dum la serĉo de ĝisdatigoj';

  @override
  String get pleaseAllowInstallPerm => 'Bonvolu permesi al Updatium instali apojn';

  @override
  String get trackOnly => 'Nur sekvita';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Eraro $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Versiokorekto malaktivigita (ŝajnas, ke la kromaĵo ne funkcias)';

  @override
  String get unknown => 'Nekonata';

  @override
  String get none => 'Nenio';

  @override
  String get all => 'All';

  @override
  String get never => 'Neniam';

  @override
  String latestVersionX(Object p0) {
    return 'Lasta versio: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Instalita versio: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Lasta serĉo de ĝisdatigoj: $p0';
  }

  @override
  String get remove => 'Forigi';

  @override
  String get yesMarkUpdated => 'Jes, marki kiel ĝisdata';

  @override
  String get fdroid => 'Oficiala F-Droid';

  @override
  String get appIdOrName => 'Identigilo aŭ nomo de la apo';

  @override
  String get appId => 'Identigilo de la apo';

  @override
  String get appWithIdOrNameNotFound => 'Neniu apo estas trovita kun tiu identigilo aŭ nomo';

  @override
  String get reposHaveMultipleApps => 'Deponejoj povas enhavi plurajn apojn';

  @override
  String get fdroidThirdPartyRepo => 'Tria deponejo de F-Droid';

  @override
  String get install => 'Instali';

  @override
  String get markInstalled => 'Marki kiel instalita';

  @override
  String get update => 'Ĝisdatigi';

  @override
  String get updated => 'Ĝisdatiĝis';

  @override
  String get markUpdated => 'Marki kiel ĝisdata';

  @override
  String get additionalOptions => 'Kromaj opcioj';

  @override
  String get disableVersionDetection => 'Malaktivigi la versiodetekto';

  @override
  String get noVersionDetectionExplanation => 'Tiu opcio devas esti uzata nur por apoj, kie la versiodetekto ne funkcias ĝuste.';

  @override
  String downloadingX(Object p0) {
    return 'Elŝutante $p0';
  }

  @override
  String downloadX(Object p0) {
    return 'Elŝuti $p0';
  }

  @override
  String downloadedX(Object p0) {
    return 'Elŝutita $p0';
  }

  @override
  String get releaseAsset => 'Aktiva versio';

  @override
  String get downloadNotifDescription => 'Sciigas al la uzanto pri la progreso de apo-elŝuton';

  @override
  String get noAPKFound => 'Neniu trovita APK';

  @override
  String get noVersionDetection => 'Neniu versiodetekto';

  @override
  String get categorize => 'Kategorii';

  @override
  String get categories => 'Kategorioj';

  @override
  String get category => 'Kategorio';

  @override
  String get noCategory => 'Neniu kategorio';

  @override
  String get noCategories => 'Neniuj kategorioj';

  @override
  String get deleteCategoriesQuestion => 'Forigi la kategoriojn?';

  @override
  String get categoryDeleteWarning => 'Ĉiuj apoj el forigitaj kategorioj iĝos nekategoriitaj.';

  @override
  String get addCategory => 'Aldoni kategorion';

  @override
  String get label => 'Etikedo';

  @override
  String get language => 'Lingvo';

  @override
  String get copiedToClipboard => 'Kopiita en la tondujo';

  @override
  String get storagePermissionDenied => 'Permeso de stoko malkonsentita';

  @override
  String get selectedCategorizeWarning => 'Tio substituos ĉiujn difinitajn kategoriojn de la selektitaj apoj.';

  @override
  String get filterAPKsByRegEx => 'Filtri APKj per regula esprimo';

  @override
  String get removeFromUpdatium => 'Forigi el Updatium';

  @override
  String get uninstallFromDevice => 'Malinstali el la disponaĵo';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Funkcias nur por apoj kun malaktiva versiodetekto.';

  @override
  String get releaseDateAsVersion => 'Uzi eldondato kiel versioĉeno';

  @override
  String get releaseTitleAsVersion => 'Use release title as version string';

  @override
  String get releaseDateAsVersionExplanation => 'Tiu opcio devas esti uzata nur por apoj, por kiu la versiodetekto ne funkcias ĝuste, sed eldondato estas havebla.';

  @override
  String get changes => 'Modifoj';

  @override
  String get releaseDate => 'Eldondato';

  @override
  String get importFromURLsInFile => 'Importi el URLj en dosiero (kiel OPML)';

  @override
  String get versionDetectionExplanation => 'Akordigi la versioĉeno laŭ la versio detektita fare de la operaciumo';

  @override
  String get versionDetection => 'Versiodetekto';

  @override
  String get standardVersionDetection => 'Norma versiodetekto';

  @override
  String get groupByCategory => 'Grupigi per kategorio';

  @override
  String get listView => 'Lista vido';

  @override
  String get gridView => 'Krada vido';

  @override
  String get autoApkFilterByArch => 'Provi filtri APKj per CPU-arkitekturo se ebla';

  @override
  String get autoLinkFilterByArch => 'Attempt to filter links by CPU architecture if possible';

  @override
  String get overrideSource => 'Substitui la fonton';

  @override
  String get dontShowAgain => 'Ne plu montri';

  @override
  String get dontShowTrackOnlyWarnings => 'Ne plu montri \'Nur sekvita\' avertojn';

  @override
  String get dontShowAPKOriginWarnings => 'Ne plu montri avertojn pri APK-origino';

  @override
  String get moveNonInstalledAppsToBottom => 'Movi neinstalatajn apojn al malsupro de la langeto Apoj';

  @override
  String get hideNonInstalledApps => 'Hide non-installed apps';

  @override
  String get gitlabPATLabel => 'GitLab persona atingoĵetono';

  @override
  String get about => 'Pri';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0 bezonas kromajn informojn (en Agordoj)';
  }

  @override
  String get checkOnStart => 'Serĉi ĝisdatigojn starte';

  @override
  String get tryInferAppIdFromCode => 'Provi dedukti la identigilon de la apo el la fontkodo';

  @override
  String get removeOnExternalUninstall => 'Aŭtomate forigi ekstere malinstalitajn apojn';

  @override
  String get pickHighestVersionCode => 'Aŭtomate selekti la plej ĵusan version el APK-kodo';

  @override
  String get checkUpdateOnDetailPage => 'Serĉi ĝisdatigojn dum la malfermo de la detala apopaĝo';

  @override
  String get disablePageTransitions => 'Malaktivigi la animaciojn de paĝotransiro';

  @override
  String get reversePageTransitions => 'Inversigi la animaciojn de paĝotransiro';

  @override
  String get minStarCount => 'Minimuma nombro da steloj';

  @override
  String get addInfoBelow => 'Aldonu ĉi tiu informo ĉi-suba.';

  @override
  String get addInfoInSettings => 'Aldonu tiu informo en la agordoj.';

  @override
  String get githubSourceNote => 'La kvantolimo de GitHub povas esti evitata danke al API-ŝlosilo.';

  @override
  String get sortByLastLinkSegment => 'Klasi laŭ la lasta segmento de la ligilo';

  @override
  String get filterReleaseNotesByRegEx => 'Filtri versionotojn per regula esprimo';

  @override
  String get customLinkFilterRegex => 'Filtro de APK-ligilo agordita per regula esprimo (defaŭlte \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Provitaj apoĝisdatigoj';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Sciigas al la uzanto, ke ĝisdatigoj de unu aŭ pluraj apoj eble estas aplikitaj fone';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 povas esti ĝisdata kiel $p1.';
  }

  @override
  String get enableBackgroundUpdates => 'Aktivigi fonajn ĝisdatigojn';

  @override
  String get backgroundUpdateReqsExplanation => 'Fonaj ĝisdatigoj ne eblas por ĉiuj apoj.';

  @override
  String get backgroundUpdateLimitsExplanation => 'La sukceso de fona instalado povas esti nur determinata dum la malfermo de Updatium.';

  @override
  String get verifyLatestTag => 'Inspekti la etikedon \'latest\'';

  @override
  String get intermediateLinkRegex => 'Filtri por \'pera\' vizitota ligilo';

  @override
  String get filterByLinkText => 'Filtri ligilojn laŭ ligiloteksto';

  @override
  String get matchLinksOutsideATags => 'Match links outside <a> tags';

  @override
  String get intermediateLinkNotFound => 'Netrovebla pera ligilo';

  @override
  String get intermediateLink => 'Pera ligilo';

  @override
  String get exemptFromBackgroundUpdates => 'Escepti el la fonaj ĝisdatigoj (se aktiva)';

  @override
  String get bgUpdatesOnWiFiOnly => 'Malaktivigi fonajn ĝisdatigojn se sen vifio';

  @override
  String get bgUpdatesWhileChargingOnly => 'Disable background updates when not charging';

  @override
  String get autoSelectHighestVersionCode => 'Aŭtomate selekti la plej ĵusan version de la APK-kodo';

  @override
  String get versionExtractionRegEx => 'Ekstrakti la versioĉenon per regula esprimo';

  @override
  String get trimVersionString => 'Mallongigi la versioĉenon per regula esprimo';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Konformecogrupo uzota por \"$p0\"';
  }

  @override
  String get matchGroupToUse => 'Grupo de konformeco uzota por la eltiraĵo de la versio per regula esprimo';

  @override
  String get highlightTouchTargets => 'Emfazi malpi evidentajn klavojn';

  @override
  String get pickExportDir => 'Selekti la dosierujon de eksporto';

  @override
  String get autoExportOnChanges => 'Aŭtomate eksporti dum modifoj';

  @override
  String get includeSettings => 'Inkluzivi la agordojn';

  @override
  String get filterVersionsByRegEx => 'Filtri versiojn per regula esprimo';

  @override
  String get trySelectingSuggestedVersionCode => 'Provi selekti la sugestitan version fare de la APK-kodo';

  @override
  String get dontSortReleasesList => 'Konservi la ordo de la API-versio';

  @override
  String get reverseSort => 'Inversigi klasifikon';

  @override
  String get takeFirstLink => 'Uzi la unuan ligilon';

  @override
  String get skipSort => 'Salti la klasifikon';

  @override
  String get debugMenu => 'Menu de eraroserĉado';

  @override
  String get bgTaskStarted => 'Fona tasko startita - inspektu la protokolojn.';

  @override
  String get runBgCheckNow => 'Ruli la serĉo de fonaj ĝisdatigoj nun';

  @override
  String get versionExtractWholePage => 'Apliki eltiraĵon de la versioĉeno per regula esprimo al la tuta paĝo';

  @override
  String get installing => 'Instalante';

  @override
  String get skipUpdateNotifications => 'Salti la sciigojn de ĝisdatigo';

  @override
  String get updatesAvailableNotifChannel => 'Haveblaj ĝisdatigoj';

  @override
  String get appsUpdatedNotifChannel => 'Ĝisdataj aplikaĵoj';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Provitaj apoĝisdatigoj';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Eraro serĉante ĝisdatigojn';

  @override
  String get appsRemovedNotifChannel => 'Forigitaj aplikaĵoj';

  @override
  String downloadingXNotifChannel(Object p0) {
    return 'Elŝutante $p0';
  }

  @override
  String get completeAppInstallationNotifChannel => 'Kompleta apo instalado';

  @override
  String get checkingForUpdatesNotifChannel => 'Serĉante ĝisdatigojn';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Nur serĉi la ĝisdatigojn de instalitaj kaj \'nur sekvitaj\' apoj';

  @override
  String get supportFixedAPKURL => 'Taskiĝo de la fiksaj APK URLj';

  @override
  String selectX(Object p0) {
    return 'Selekti $p0';
  }

  @override
  String get parallelDownloads => 'Permesi dumajn elŝutojn';

  @override
  String get useShizuku => 'Uzi Shizuku aŭ Sui por instali';

  @override
  String get shizukuBinderNotFound => 'La servo Shizuku estas netrovebla';

  @override
  String get shizukuOld => 'Malnova versio de Shizuku (<11) - bonvolu ĝisdatigi ĝin';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku funkcias en Android < 8.1 kun ADB - bonvolu ĝisdatigi Android aŭ uzu Sui anstataŭe';

  @override
  String get shizukuPretendToBeGooglePlay => 'Determini Google Play kiel instalfonto (se Shizuku estas uzata)';

  @override
  String get useSystemFont => 'Uzi la sistema tiparo';

  @override
  String get useVersionCodeAsOSVersion => 'Uzi versiokodo de la apo kiel versio detektita fare de la operaciumo';

  @override
  String get requestHeader => 'Titolo de la informmendo';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Uzi la lastan publikigitan elementon kiel eldondato';

  @override
  String get defaultPseudoVersioningMethod => 'Defaŭlta metodo de fikcia versio';

  @override
  String get partialAPKHash => 'Parta APKa haketo';

  @override
  String get apkLinkHash => 'Haketo de la APKa ligilo';

  @override
  String get directAPKLink => 'Rekta APKa ligilo';

  @override
  String get pseudoVersionInUse => 'Pseŭdoversio estas uzata';

  @override
  String get installed => 'Instalita';

  @override
  String get latest => 'Lasta versio';

  @override
  String get invertRegEx => 'Inversigi la regula esprimo';

  @override
  String get note => 'Noto';

  @override
  String selfHostedNote(Object p0) {
    return 'La malvolvanta listo \"$p0\" povas esti uzata por aliri al memgastigataj/agordata instancoj el ajna fonto.';
  }

  @override
  String get badDownload => 'La APK ne povis esti analizita (neakordigebla aŭ nekompleta elŝuto)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Diskonigi novajn aplikaĵojn kun AppVerifier (se havebla)';

  @override
  String get appVerifierInstructionToast => 'Diskonigu kun AppVerifier, poste revenu ĉi tie kiam preta.';

  @override
  String get wiki => 'Helpo/Vikio';

  @override
  String get allowInsecure => 'Allow insecure HTTP requests';

  @override
  String get stayOneVersionBehind => 'Stay one version behind latest';

  @override
  String get useFirstApkOfVersion => 'Auto-select first of multiple APKs';

  @override
  String get refreshBeforeDownload => 'Refresh app details before download';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Name';

  @override
  String get smartname => 'Name (Smart)';

  @override
  String get sortMethod => 'Sort Method';

  @override
  String get welcome => 'Welcome';

  @override
  String get documentationLinksNote => 'The Updatium GitHub page linked below contains links to videos, articles, discussions, and other resources that will help you understand how to use the app.';

  @override
  String get batteryOptimizationNote => 'Note that background downloads may work more reliably if you disable OS battery optimizations for Updatium.';

  @override
  String fileDeletionError(Object p0) {
    return 'Failed to delete file (try deleting it manually then try again): \"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium foreground service';

  @override
  String get foregroundServiceExplanation => 'Use a foreground service for update checking (more reliable, consumes more power)';

  @override
  String get fgServiceNotice => 'This notification is required for background update checking (it can be hidden in the OS settings)';

  @override
  String get excludeSecrets => 'Exclude secrets';

  @override
  String get ghReqPrefix => '\'sky22333/hubproxy\' instance for GitHub requests';

  @override
  String get includeZips => 'Include ZIP files';

  @override
  String get zippedApkFilterRegEx => 'Filter APKs inside ZIP';

  @override
  String get googleVerificationWarningP1 => 'Google has announced that, starting in 2026/2027, all apps on \"certified\" Android devices will require the developer to submit personal identity details directly to Google.\n\nAfter then, Updatium may stop working on certified Android devices.';

  @override
  String get googleVerificationWarningP2 => 'Go to https://keepandroidopen.org/ for more information.';

  @override
  String get googleVerificationWarningP3 => 'Note that in the short term, it may continue to be possible to install \"unverified\" (non-compliant) apps through an \"advanced flow\" process that Google has promised to implement after broad backlash to their announcement, but they have not detailed how this would work so it is unclear whether it will truly preserve user freedoms in any practical way.\n\nIn any case, Google\'s move is a significant step towards the end of free, general-purpose computing for individuals.\n\nNon-certified OSes, like GrapheneOS, should be unaffected by this for as long as they are allowed to continue to exist.';

  @override
  String get multipleSigners => 'Multiple Signers';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Forigi la aplikaĵojn?',
      one: 'Forigi la aplikaĵon?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Tro da informmendoj (limigita kvanto) - reprovu en $count minutoj',
      one: 'Tro da informmendoj (limigita kvanto) - reprovu en $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La serĉo de fonaj ĝisdatigoj renkontis al $count, nova programota provo en $count minutoj',
      one: 'La serĉo de fonaj ĝisdatigoj renkontis al $count, nova programota provo en $count minuto',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'La serĉo de fonaj ĝisdatigoj trovis $count ĝisdatigojn - la uzanto estas sciigota se necesa',
      one: 'La serĉo de fonaj ĝisdatigoj trovis $count ĝisdatigon - la uzanto estas sciigota se necesa',
    );
    return '$_temp0';
  }

  @override
  String apps(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Apoj',
      one: '$count Apo',
    );
    return '$_temp0';
  }

  @override
  String url(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count URLj',
      one: '$count URL',
    );
    return '$_temp0';
  }

  @override
  String minute(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count minutoj',
      one: '$count minuto',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count horoj',
      one: '$count horo',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tagoj',
      one: '$count tago',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Purigis $n protokolojn (antaŭe = $before, malantaŭe = $after)',
      one: 'Purigis $n protokolon (antaŭe = $before, malantaŭe = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaj $count aliaj apoj havas ĝisdatigojn.',
      one: '$count kaj 1 alia apo havas ĝisdatigojn.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaj $count aliaj apoj ĝisdatiĝis.',
      one: '$count kaj 1 alia apo ĝisdatiĝis.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Ne eblas ĝisdatigi $count et $count aliajn apojn.',
      one: 'Ne eblas ĝisdatigi $count kaj 1 alian apon.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kaj $count aliaj apoj eble ĝisdatiĝis.',
      one: '$count kaj 1 alia apo eble ĝisdatiĝis.',
    );
    return '$_temp0';
  }

  @override
  String apk(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count APKj',
      one: '$count APK',
    );
    return '$_temp0';
  }

  @override
  String certificateHash(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Certificate Hashes',
      one: 'Certificate Hash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Sekureca kaj Jura Malrespondeco';

  @override
  String get license => 'Permesilo';

  @override
  String get licenseText => 'Ĉi tiu aplikaĵo estas distribuita sub la GPL v3 Permesilo.';

  @override
  String get disclaimer => 'Malrespondeco';

  @override
  String get disclaimerText => 'Ĉi tiu aplikaĵo ne distribuas, gastigas aŭ verigas iujn el la eksteraj aplikaĵoj. La uzanto portas la plenan respondecon por la sekureco kaj laŭleĝeco de iu ajn programaro instalita tra ĉi tiu ilo.';

  @override
  String get privacy => 'Privateco';

  @override
  String get privacyText => 'Ĉi tiu aplikaĵo fokusiĝas pri privateco kaj ne kolektas personajn datumojn.';

  @override
  String get acceptAndContinue => 'Akcepti kaj Daŭrigi';

  @override
  String get decline => 'Rifuzi';
}
