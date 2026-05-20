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
class TranslationsHy with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsHy({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.hy,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <hy>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsHy _root = this; // ignore: unused_field

	@override 
	TranslationsHy $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsHy(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Not a valid {} app URL';
	@override String get noReleaseFound => 'Could not find a suitable release';
	@override String get noVersionFound => 'Could not determine release version';
	@override String get urlMatchesNoSource => 'URL does not match a known source';
	@override String get cantInstallOlderVersion => 'Cannot install an older version of an app';
	@override String get appIdMismatch => 'Downloaded package ID does not match existing app ID';
	@override String get functionNotImplemented => 'This class has not implemented this function';
	@override String get placeholder => 'Placeholder';
	@override String get someErrors => 'Some errors occurred';
	@override String get unexpectedError => 'Unexpected error';
	@override String get ok => 'Լավ';
	@override String get and => 'and';
	@override String get githubPATLabel => 'GitHub personal access token';
	@override String get includePrereleases => 'Include prereleases';
	@override String get fallbackToOlderReleases => 'Fallback to older releases';
	@override String get filterReleaseTitlesByRegEx => 'Filter release titles by regular expression';
	@override String get invalidRegEx => 'Invalid regular expression';
	@override String get noDescription => 'No description';
	@override String get cancel => 'Չեղարկել';
	@override String get kContinue => 'Continue';
	@override String get requiredInBrackets => '(required)';
	@override String get dropdownNoOptsError => 'ERROR: DROPDOWN MUST HAVE AT LEAST ONE OPT';
	@override String get color => 'Color';
	@override String get standard => 'Standard';
	@override String get custom => 'Custom';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Use Material You colors';
	@override String get githubStarredRepos => 'GitHub starred repositories';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Username';
	@override String get wrongArgNum => 'Wrong number of arguments provided';
	@override String get xIsTrackOnly => '{} is track-only';
	@override String get source => 'Source';
	@override String get app => 'App';
	@override String get appsFromSourceAreTrackOnly => 'Apps from this source are \'track-only\'.';
	@override String get youPickedTrackOnly => 'You have selected the \'track-only\' option.';
	@override String get trackOnlyAppDescription => 'The app will be tracked for updates, but Updatium will not be able to download or install it.';
	@override String get cancelled => 'Cancelled';
	@override String get appAlreadyAdded => 'App already added';
	@override String get alreadyUpToDateQuestion => 'App already up to date?';
	@override String get addApp => 'Add App';
	@override String get appSourceURL => 'App source URL';
	@override String get error => 'Error';
	@override String get add => 'Add';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Search (some sources only)';
	@override String get search => 'Search';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Additional options for {}';
	@override String get supportedSources => 'Supported sources';
	@override String get trackOnlyInBrackets => '(track-only)';
	@override String get searchableInBrackets => '(searchable)';
	@override String get appsString => 'Apps';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Welcome!';
	@override String get noAppsSubtext => 'You can add your first app by tapping on \'Add App\' below.';
	@override String get noAppsForFilter => 'No apps for filter';
	@override String get byX => 'By {}';
	@override String get percentProgress => 'Progress: {}%';
	@override String get pleaseWait => 'Please wait';
	@override String get updateAvailable => 'Update available';
	@override String get notInstalled => 'Not installed';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'pseudo-version';
	@override String get selectAll => 'Select all';
	@override String get deselectX => 'Deselect {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} will be removed from Updatium but remain installed on device.';
	@override String get removeSelectedAppsQuestion => 'Remove selected apps?';
	@override String get removeSelectedApps => 'Remove selected apps';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Update {}';
	@override String get installX => 'Install {}';
	@override String get markXTrackOnlyAsUpdated => 'Mark {}\n(track-only)\nas updated';
	@override String get changeX => 'Change {}';
	@override String get installUpdateApps => 'Install/update apps';
	@override String get installUpdateSelectedApps => 'Install/update selected apps';
	@override String get markXSelectedAppsAsUpdated => 'Mark {} selected apps as updated?';
	@override String get no => 'No';
	@override String get yes => 'Yes';
	@override String get markSelectedAppsUpdated => 'Mark selected apps as updated';
	@override String get pinToTop => 'Pin to top';
	@override String get unpinFromTop => 'Unpin from top';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Reset install status for selected apps?';
	@override String get installStatusOfXWillBeResetExplanation => 'The install status of any selected apps will be reset.\n\nThis can help when the app version shown in Updatium is incorrect due to failed updates or other issues.';
	@override String get customLinkMessage => 'These links work on devices with Updatium installed';
	@override String get shareAppConfigLinks => 'Share app configuration as HTML link';
	@override String get resetInstallStatus => 'Reset install status';
	@override String get more => 'More';
	@override String get removeOutdatedFilter => 'Remove out-of-date app filter';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Show out-of-date apps only';
	@override String get filter => 'Filter';
	@override String get filterApps => 'Filter apps';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'App name';
	@override String get author => 'Author';
	@override String get upToDateApps => 'Up to date apps';
	@override String get nonInstalledApps => 'Non-installed apps';
	@override String get importExport => 'Import/export';
	@override String get settings => 'Կարգավորումներ';
	@override String get exportedTo => 'Exported to {}';
	@override String get updatiumExport => 'Updatium export';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Invalid input';
	@override String get importedX => 'Imported {}';
	@override String get updatiumImport => 'Updatium import';
	@override String get importFromURLList => 'Import from URL list';
	@override String get searchQuery => 'Search query';
	@override String get appURLList => 'App URL list';
	@override String get line => 'Line';
	@override String get searchX => 'Search {}';
	@override String get noResults => 'No results found';
	@override String get importX => 'Import {}';
	@override String get importedAppsIdDisclaimer => 'Imported apps may incorrectly show as "not installed".\nTo fix this, re-install them through Updatium.\nThis should not affect app data.\n\nOnly affects URL and third-party import methods.';
	@override String get importErrors => 'Import errors';
	@override String get importedXOfYApps => '{} of {} apps imported.';
	@override String get followingURLsHadErrors => 'The following URLs had errors:';
	@override String get selectURL => 'Select URL';
	@override String get selectURLs => 'Select URLs';
	@override String get pick => 'Pick';
	@override String get theme => 'Theme';
	@override String get dark => 'Dark';
	@override String get light => 'Light';
	@override String get followSystem => 'Follow system';
	@override String get followSystemThemeExplanation => 'Following system theme is possible only by using third-party applications';
	@override String get useBlackTheme => 'Use pure black dark theme';
	@override String get appSortBy => 'App sort by';
	@override String get authorName => 'Author/name';
	@override String get nameAuthor => 'Name/author';
	@override String get asAdded => 'As added';
	@override String get appSortOrder => 'App sort order';
	@override String get ascending => 'Ascending';
	@override String get descending => 'Descending';
	@override String get bgUpdateCheckInterval => 'Background update checking interval';
	@override String get neverManualOnly => 'Never - manual only';
	@override String get appearance => 'Appearance';
	@override String get pinUpdates => 'Pin updates to top of apps view';
	@override String get updates => 'Updates';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Source-specific';
	@override String get appSource => 'App source';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'No logs';
	@override String get appLogs => 'App logs';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Close';
	@override String get share => 'Share';
	@override String get appNotFound => 'App not found';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Pick an APK';
	@override String get appHasMoreThanOnePackage => '{} has more than one package:';
	@override String get deviceSupportsXArch => 'Your device supports the {} CPU architecture.';
	@override String get deviceSupportsFollowingArchs => 'Your device supports the following CPU architectures:';
	@override String get warning => 'Warning';
	@override String get sourceIsXButPackageFromYPrompt => 'The app source is \'{}\' but the release package comes from \'{}\'. Continue?';
	@override String get updatesAvailable => 'Updates available';
	@override String get updatesAvailableNotifDescription => 'Notifies the user that updates are available for one or more apps tracked by Updatium';
	@override String get noNewUpdates => 'No new updates.';
	@override String get xHasAnUpdate => '{} has an update.';
	@override String get appsUpdated => 'Apps updated';
	@override String get appsNotUpdated => 'Failed to update applications';
	@override String get appsUpdatedNotifDescription => 'Notifies the user that updates to one or more apps were applied in the background';
	@override String get xWasUpdatedToY => '{} was updated to {}.';
	@override String get xWasNotUpdatedToY => 'Failed to update {} to {}.';
	@override String get errorCheckingUpdates => 'Error checking for updates';
	@override String get errorCheckingUpdatesNotifDescription => 'A notification that shows when background update checking fails';
	@override String get appsRemoved => 'Apps removed';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifies the user that one or more apps were removed due to errors while loading them';
	@override String get xWasRemovedDueToErrorY => '{} was removed due to this error: {}';
	@override String get completeAppInstallation => 'Complete app installation';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium must be open to install apps';
	@override String get completeAppInstallationNotifDescription => 'Asks the user to return to Updatium to finish installing an app';
	@override String get checkingForUpdates => 'Checking for updates';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Transient notification that appears when checking for updates';
	@override String get pleaseAllowInstallPerm => 'Please allow Updatium to install apps';
	@override String get trackOnly => 'Track-only';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Error {}';
	@override String get versionCorrectionDisabled => 'Version correction disabled (plugin doesn\'t seem to work)';
	@override String get unknown => 'Unknown';
	@override String get none => 'None';
	@override String get all => 'All';
	@override String get never => 'Never';
	@override String get latestVersion => 'Latest';
	@override String get installedVersionX => 'Installed: {}';
	@override String get lastUpdateCheckX => 'Last update check: {}';
	@override String get remove => 'Remove';
	@override String get quickLinks => 'Quick Links';
	@override String get yesMarkUpdated => 'Yes, mark as updated';
	@override String get fdroid => 'F-Droid official';
	@override String get appIdOrName => 'App ID or name';
	@override String get appId => 'App ID';
	@override String get appWithIdOrNameNotFound => 'No app was found with that ID or name';
	@override String get reposHaveMultipleApps => 'Repos may contain multiple apps';
	@override String get fdroidThirdPartyRepo => 'F-Droid third-party repo';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Install';
	@override String get markInstalled => 'Mark installed';
	@override String get update => 'Update';
	@override String get updated => 'Updated';
	@override String get markUpdated => 'Mark updated';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Additional options';
	@override String get disableVersionDetection => 'Disable version detection';
	@override String get noVersionDetectionExplanation => 'This option should only be used for apps where version detection does not work correctly.';
	@override String get downloadingX => 'Downloading {}';
	@override String get downloadX => 'Download {}';
	@override String get downloadedX => 'Downloaded {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Release asset';
	@override String get downloadNotifDescription => 'Notifies the user of the progress in downloading an app';
	@override String get noAPKFound => 'No APK found';
	@override String get noVersionDetection => 'No version detection';
	@override String get categorize => 'Categorize';
	@override String get categories => 'Categories';
	@override String get category => 'Category';
	@override String get noCategory => 'No category';
	@override String get noCategories => 'No categories';
	@override String get categoryDeleteQuestion => 'Delete categories?';
	@override String get categoryDeleteWarning => 'All apps in deleted categories will be set to uncategorized.';
	@override String get addCategory => 'Add category';
	@override String get label => 'Label';
	@override String get language => 'Language';
	@override String get copiedToClipboard => 'Copied to clipboard';
	@override String get storagePermissionDenied => 'Storage permission denied';
	@override String get selectedCategorizeWarning => 'This will replace any existing category settings for the selected apps.';
	@override String get filterAPKsByRegEx => 'Filter APKs by regular expression';
	@override String get removeFromUpdatium => 'Remove from Updatium';
	@override String get uninstallFromDevice => 'Uninstall from device';
	@override String get onlyWorksWithNonVersionDetectApps => 'Only works for apps with version detection disabled.';
	@override String get releaseDateAsVersion => 'Use release date as version string';
	@override String get releaseTitleAsVersion => 'Use release title as version string';
	@override String get releaseDateAsVersionExplanation => 'This option should only be used for apps where version detection does not work correctly, but a release date is available.';
	@override String get changes => 'Changes';
	@override String get releaseDate => 'Release date';
	@override String get importFromURLsInFile => 'Import from URLs in file (like OPML)';
	@override String get versionDetectionExplanation => 'Reconcile version string with version detected from OS';
	@override String get versionDetection => 'Version detection';
	@override String get standardVersionDetection => 'Standard version detection';
	@override String get groupByCategory => 'Group by category';
	@override String get listView => 'List view';
	@override String get gridView => 'Grid view';
	@override String get autoApkFilterByArch => 'Attempt to filter APKs by CPU architecture if possible';
	@override String get autoLinkFilterByArch => 'Attempt to filter links by CPU architecture if possible';
	@override String get overrideSource => 'Override source';
	@override String get dontShowAgain => 'Don\'t show this again';
	@override String get dontShowTrackOnlyWarnings => 'Don\'t show \'track-only\' warnings';
	@override String get dontShowAPKOriginWarnings => 'Don\'t show APK origin warnings';
	@override String get moveNonInstalledAppsToBottom => 'Move non-installed apps to bottom of apps view';
	@override String get gitlabPATLabel => 'GitLab personal access token';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Մասին';
	@override String get requiresCredentialsInSettings => '{} needs additional credentials (in Settings)';
	@override String get checkOnStart => 'Check for updates on startup';
	@override String get safeMode => 'Safe Mode';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Add App is disabled in Safe Mode';
	@override String get tryInferAppIdFromCode => 'Try inferring app ID from source code';
	@override String get removeOnExternalUninstall => 'Automatically remove externally uninstalled apps';
	@override String get pickHighestVersionCode => 'Auto-select highest version code APK';
	@override String get checkUpdateOnDetailPage => 'Check for updates on opening an app detail page';
	@override String get disablePageTransitions => 'Disable page transition animations';
	@override String get reversePageTransitions => 'Reverse page transition animations';
	@override String get minStarCount => 'Minimum star count';
	@override String get addInfoBelow => 'Add this info below.';
	@override String get addInfoInSettings => 'Add this info in the Settings.';
	@override String get githubSourceNote => 'GitHub rate limiting can be avoided using an API key.';
	@override String get sortByLastLinkSegment => 'Sort by only the last segment of the link';
	@override String get filterReleaseNotesByRegEx => 'Filter release notes by regular expression';
	@override String get customLinkFilterRegex => 'Custom APK link filter by regular expression (default \'.apk$\')';
	@override String get appsPossiblyUpdated => 'App updates attempted';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifies the user that updates to one or more apps were potentially applied in the background';
	@override String get xWasPossiblyUpdatedToY => '{} may have been updated to {}.';
	@override String get enableBackgroundUpdates => 'Enable background updates';
	@override String get backgroundUpdateReqsExplanation => 'Background updates may not be possible for all apps.';
	@override String get backgroundUpdateLimitsExplanation => 'The success of a background install can only be determined when Updatium is opened.';
	@override String get verifyLatestTag => 'Verify the \'latest\' tag';
	@override String get intermediateLinkRegex => 'Filter for an \'intermediate\' link to visit';
	@override String get filterByLinkText => 'Filter links by link text';
	@override String get matchLinksOutsideATags => 'Match links outside <a> tags';
	@override String get intermediateLinkNotFound => 'Intermediate link not found';
	@override String get intermediateLink => 'Intermediate link';
	@override String get exemptFromBackgroundUpdates => 'Exempt from background updates (if enabled)';
	@override String get bgUpdatesOnWiFiOnly => 'Disable background updates when not on Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Disable background updates when not charging';
	@override String get autoSelectHighestVersionCode => 'Auto-select highest versionCode APK';
	@override String get versionExtractionRegEx => 'Version string extraction RegEx';
	@override String get trimVersionString => 'Trim version string with RegEx';
	@override String get matchGroupToUseForX => 'Match group to use for "{}"';
	@override String get matchGroupToUse => 'Match group to use for version string extraction RegEx';
	@override String get highlightTouchTargets => 'Highlight less obvious touch targets';
	@override String get pickExportDir => 'Pick export directory';
	@override String get autoExportOnChanges => 'Automatically export on changes';
	@override String get includeSettings => 'Include settings';
	@override String get filterVersionsByRegEx => 'Filter versions by regular expression';
	@override String get trySelectingSuggestedVersionCode => 'Try selecting suggested versionCode APK';
	@override String get dontSortReleasesList => 'Retain release order from API';
	@override String get reverseSort => 'Reverse sorting';
	@override String get takeFirstLink => 'Take first link';
	@override String get skipSort => 'Skip sorting';
	@override String get debugMenu => 'Debug menu';
	@override String get bgTaskStarted => 'Background task started - check logs.';
	@override String get runBgCheckNow => 'Run background update check now';
	@override String get versionExtractWholePage => 'Apply version string extraction Regex to entire page';
	@override String get installing => 'Installing';
	@override String get skipUpdateNotifications => 'Skip update notifications';
	@override String get updatesAvailableNotifChannel => 'Updates available';
	@override String get appsUpdatedNotifChannel => 'Apps updated';
	@override String get appsPossiblyUpdatedNotifChannel => 'App updates attempted';
	@override String get errorCheckingUpdatesNotifChannel => 'Error checking for updates';
	@override String get appsRemovedNotifChannel => 'Apps removed';
	@override String get downloadingXNotifChannel => 'Downloading {}';
	@override String get completeAppInstallationNotifChannel => 'Complete app installation';
	@override String get checkingForUpdatesNotifChannel => 'Checking for updates';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Only check installed and track-only apps for updates';
	@override String get supportFixedAPKURL => 'Support fixed APK URLs';
	@override String get selectX => 'Select {}';
	@override String get parallelDownloads => 'Allow parallel downloads';
	@override String get useShizuku => 'Use Shizuku or Sui to install';
	@override String get shizukuBinderNotFound => 'Shizuku service not running';
	@override String get shizukuOld => 'Old Shizuku version (<11) - update it';
	@override String get shizukuOldAndroidWithADB => 'Shizuku running on Android < 8.1 with ADB - update Android or use Sui instead';
	@override String get shizukuPretendToBeGooglePlay => 'Set Google Play as the installation source (if Shizuku is used)';
	@override String get useSystemFont => 'Use the system font';
	@override String get useVersionCodeAsOSVersion => 'Use app versionCode as OS-detected version';
	@override String get requestHeader => 'Request header';
	@override String get useLatestAssetDateAsReleaseDate => 'Use latest asset upload as release date';
	@override String get defaultPseudoVersioningMethod => 'Default pseudo-versioning method';
	@override String get partialAPKHash => 'Partial APK hash';
	@override String get APKLinkHash => 'APK link hash';
	@override String get directAPKLink => 'Direct APK link';
	@override String get pseudoVersionInUse => 'A pseudo-version is in use';
	@override String get installedVersion => 'Տեղադրված';
	@override String get installed => 'Installed';
	@override String get notInstalledApps => 'Not Installed';
	@override String get latest => 'Latest';
	@override String get invertRegEx => 'Invert regular expression';
	@override String get note => 'Note';
	@override String get selfHostedNote => 'The "{}" dropdown can be used to reach self-hosted/custom instances of any source.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'The APK could not be parsed (incompatible or partial download)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Share new apps with AppVerifier (if available)';
	@override String get appVerifierInstructionToast => 'Share to AppVerifier, then return here when ready.';
	@override String get wiki => 'Help/wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Allow insecure HTTP requests';
	@override String get stayOneVersionBehind => 'Stay one version behind latest';
	@override String get useFirstApkOfVersion => 'Auto-select first of multiple APKs';
	@override String get refreshBeforeDownload => 'Refresh app details before download';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Name';
	@override String get smartname => 'Name (smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sort method';
	@override String get welcome => 'Welcome';
	@override String get batteryOptimizationNote => 'Note that background downloads may work more reliably if you switch to the "foreground service" in the Updatium settings and/or disable battery optimization for Updatium in your OS settings.';
	@override String get fileDeletionError => 'Failed to delete file (try deleting it manually then try again): "{}"';
	@override String get foregroundService => 'Updatium foreground service';
	@override String get foregroundServiceExplanation => 'Use a foreground service for update checking (more reliable, consumes more power)';
	@override String get fgServiceNotice => 'This notification is required for background update checking (it can be hidden in the OS settings)';
	@override String get excludeSecrets => 'Exclude secrets';
	@override String get GHReqPrefix => '\'omeritzics/Updatium\' instance for GitHub requests';
	@override String get includeZips => 'Include ZIP files';
	@override String get zippedApkFilterRegEx => 'Filter APKs inside ZIP';
	@override String get multipleSigners => 'Multiple Signers';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'Remove app?',
		other: 'Remove apps?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'Too many requests (rate limited) - try again in {count} minute',
		other: 'Too many requests (rate limited) - try again in {count} minutes',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'BG update checking encountered a {error}, will schedule a retry check in {count} minute',
		other: 'BG update checking encountered a {error}, will schedule a retry check in {count} minutes',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'BG update checking found {count} update - will notify user if needed',
		other: 'BG update checking found {count} updates - will notify user if needed',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{count} App',
		other: '{count} Apps',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{count} URL',
		other: '{count} URLs',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{count} minute',
		other: '{count} minutes',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{count} hour',
		other: '{count} hours',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{count} day',
		other: '{count} days',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'Cleared {n} log (before = {before}, after = {after})',
		other: 'Cleared {n} logs (before = {before}, after = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{app} and 1 more app have updates.',
		other: '{app} and {count} more apps have updates.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{app} and 1 more app was updated.',
		other: '{app} and {count} more apps were updated.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'Failed to update {app} and 1 more app.',
		other: 'Failed to update {app} and {count} more apps.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{app} and 1 more app may have been updated.',
		other: '{app} and {count} more apps may have been updated.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n,
		one: 'Certificate Hash',
		other: 'Certificate Hashes',
	);
	@override String get securityDisclaimerTitle => 'Security & Legal Disclaimer';
	@override String get license => 'License';
	@override String get licenseText => 'This application is distributed under the GPL v3 License.';
	@override String get disclaimer => 'Disclaimer';
	@override String get disclaimerText => 'This application does not distribute, host, or verify any of the external applications. The user bears full responsibility for the safety and legality of any software installed through this tool.\n\nhttps://github.com/omeritzics/Updatium is the only official place to download Updatium - it is highly discouraged to download it elsewhere as unofficial sources are unsafe.';
	@override String get privacy => 'Privacy';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Accept & Continue';
	@override String get decline => 'Decline';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Enjoying Updatium?';
	@override String get githubStarPromptContent => 'Updatium is a voluntary, open-source community project developed in my free time. If you\'d like to support the project, please consider starring it on GitHub to help us reach more users and contributors. You won\'t be nudged about this again. Thank you in advance! :)';
	@override String get githubStarPromptStar => 'Star';
	@override String get githubStarPromptDontShowAgain => 'Don\'t show again';
	@override String get sourceCode => 'Source Code';
	@override String get developedBy => 'Developed by';
	@override String get appDescription => 'A customizable Android app catalogue that allows you to update your apps directly from their APK sources.';
	@override String get safeModeEnabled => 'Safe Mode is enabled';
	@override String get safeModeDisabled => 'Safe Mode is disabled';
	@override String get safeModeDisable => 'Disable Safe Mode';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Safe Mode Administration';
	@override String get safeModeSetupDescription => 'Set a password to enable Safe Mode. Once enabled, Safe Mode prevents adding new apps and can only be disabled with the password.';
	@override String get safeModeToggleDescription => 'Enter your password to toggle Safe Mode on or off.';
	@override String get safeModeSetPassword => 'Set Password';
	@override String get safeModeConfirmPassword => 'Confirm Password';
	@override String get safeModeEnterPassword => 'Enter Password';
	@override String get safeModePasswordHint => 'Minimum 8 characters';
	@override String get safeModePasswordTooShort => 'Password must be at least 8 characters long';
	@override String get safeModePasswordMismatch => 'Passwords do not match';
	@override String get safeModePasswordIncorrect => 'Incorrect password';
	@override String get safeModePasswordError => 'Error setting password. Please try again.';
	@override String get safeModeEnable => 'Enable Safe Mode';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} taps remaining to disable Safe Mode';
	@override String get safeModeEnabledHint => 'Safe Mode enabled. Tap on the version number in the Settings many times to disable.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Got it';
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

/// The flat map containing all translations for locale <hy>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsHy {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Not a valid {} app URL',
			'noReleaseFound' => 'Could not find a suitable release',
			'noVersionFound' => 'Could not determine release version',
			'urlMatchesNoSource' => 'URL does not match a known source',
			'cantInstallOlderVersion' => 'Cannot install an older version of an app',
			'appIdMismatch' => 'Downloaded package ID does not match existing app ID',
			'functionNotImplemented' => 'This class has not implemented this function',
			'placeholder' => 'Placeholder',
			'someErrors' => 'Some errors occurred',
			'unexpectedError' => 'Unexpected error',
			'ok' => 'Լավ',
			'and' => 'and',
			'githubPATLabel' => 'GitHub personal access token',
			'includePrereleases' => 'Include prereleases',
			'fallbackToOlderReleases' => 'Fallback to older releases',
			'filterReleaseTitlesByRegEx' => 'Filter release titles by regular expression',
			'invalidRegEx' => 'Invalid regular expression',
			'noDescription' => 'No description',
			'cancel' => 'Չեղարկել',
			'kContinue' => 'Continue',
			'requiredInBrackets' => '(required)',
			'dropdownNoOptsError' => 'ERROR: DROPDOWN MUST HAVE AT LEAST ONE OPT',
			'color' => 'Color',
			'standard' => 'Standard',
			'custom' => 'Custom',
			'primary' => 'Primary',
			'useMaterialYou' => 'Use Material You colors',
			'githubStarredRepos' => 'GitHub starred repositories',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Username',
			'wrongArgNum' => 'Wrong number of arguments provided',
			'xIsTrackOnly' => '{} is track-only',
			'source' => 'Source',
			'app' => 'App',
			'appsFromSourceAreTrackOnly' => 'Apps from this source are \'track-only\'.',
			'youPickedTrackOnly' => 'You have selected the \'track-only\' option.',
			'trackOnlyAppDescription' => 'The app will be tracked for updates, but Updatium will not be able to download or install it.',
			'cancelled' => 'Cancelled',
			'appAlreadyAdded' => 'App already added',
			'alreadyUpToDateQuestion' => 'App already up to date?',
			'addApp' => 'Add App',
			'appSourceURL' => 'App source URL',
			'error' => 'Error',
			'add' => 'Add',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Search (some sources only)',
			'search' => 'Search',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Additional options for {}',
			'supportedSources' => 'Supported sources',
			'trackOnlyInBrackets' => '(track-only)',
			'searchableInBrackets' => '(searchable)',
			'appsString' => 'Apps',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Welcome!',
			'noAppsSubtext' => 'You can add your first app by tapping on \'Add App\' below.',
			'noAppsForFilter' => 'No apps for filter',
			'byX' => 'By {}',
			'percentProgress' => 'Progress: {}%',
			'pleaseWait' => 'Please wait',
			'updateAvailable' => 'Update available',
			'notInstalled' => 'Not installed',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'pseudo-version',
			'selectAll' => 'Select all',
			'deselectX' => 'Deselect {}',
			'xWillBeRemovedButRemainInstalled' => '{} will be removed from Updatium but remain installed on device.',
			'removeSelectedAppsQuestion' => 'Remove selected apps?',
			'removeSelectedApps' => 'Remove selected apps',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Update {}',
			'installX' => 'Install {}',
			'markXTrackOnlyAsUpdated' => 'Mark {}\n(track-only)\nas updated',
			'changeX' => 'Change {}',
			'installUpdateApps' => 'Install/update apps',
			'installUpdateSelectedApps' => 'Install/update selected apps',
			'markXSelectedAppsAsUpdated' => 'Mark {} selected apps as updated?',
			'no' => 'No',
			'yes' => 'Yes',
			'markSelectedAppsUpdated' => 'Mark selected apps as updated',
			'pinToTop' => 'Pin to top',
			'unpinFromTop' => 'Unpin from top',
			'resetInstallStatusForSelectedAppsQuestion' => 'Reset install status for selected apps?',
			'installStatusOfXWillBeResetExplanation' => 'The install status of any selected apps will be reset.\n\nThis can help when the app version shown in Updatium is incorrect due to failed updates or other issues.',
			'customLinkMessage' => 'These links work on devices with Updatium installed',
			'shareAppConfigLinks' => 'Share app configuration as HTML link',
			'resetInstallStatus' => 'Reset install status',
			'more' => 'More',
			'removeOutdatedFilter' => 'Remove out-of-date app filter',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Show out-of-date apps only',
			'filter' => 'Filter',
			'filterApps' => 'Filter apps',
			'filterDays' => 'Filter days',
			'appName' => 'App name',
			'author' => 'Author',
			'upToDateApps' => 'Up to date apps',
			'nonInstalledApps' => 'Non-installed apps',
			'importExport' => 'Import/export',
			'settings' => 'Կարգավորումներ',
			'exportedTo' => 'Exported to {}',
			'updatiumExport' => 'Updatium export',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Invalid input',
			'importedX' => 'Imported {}',
			'updatiumImport' => 'Updatium import',
			'importFromURLList' => 'Import from URL list',
			'searchQuery' => 'Search query',
			'appURLList' => 'App URL list',
			'line' => 'Line',
			'searchX' => 'Search {}',
			'noResults' => 'No results found',
			'importX' => 'Import {}',
			'importedAppsIdDisclaimer' => 'Imported apps may incorrectly show as "not installed".\nTo fix this, re-install them through Updatium.\nThis should not affect app data.\n\nOnly affects URL and third-party import methods.',
			'importErrors' => 'Import errors',
			'importedXOfYApps' => '{} of {} apps imported.',
			'followingURLsHadErrors' => 'The following URLs had errors:',
			'selectURL' => 'Select URL',
			'selectURLs' => 'Select URLs',
			'pick' => 'Pick',
			'theme' => 'Theme',
			'dark' => 'Dark',
			'light' => 'Light',
			'followSystem' => 'Follow system',
			'followSystemThemeExplanation' => 'Following system theme is possible only by using third-party applications',
			'useBlackTheme' => 'Use pure black dark theme',
			'appSortBy' => 'App sort by',
			'authorName' => 'Author/name',
			'nameAuthor' => 'Name/author',
			'asAdded' => 'As added',
			'appSortOrder' => 'App sort order',
			'ascending' => 'Ascending',
			'descending' => 'Descending',
			'bgUpdateCheckInterval' => 'Background update checking interval',
			'neverManualOnly' => 'Never - manual only',
			'appearance' => 'Appearance',
			'pinUpdates' => 'Pin updates to top of apps view',
			'updates' => 'Updates',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Source-specific',
			'appSource' => 'App source',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'No logs',
			'appLogs' => 'App logs',
			'appLogsHint' => 'View application logs',
			'close' => 'Close',
			'share' => 'Share',
			'appNotFound' => 'App not found',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Pick an APK',
			'appHasMoreThanOnePackage' => '{} has more than one package:',
			'deviceSupportsXArch' => 'Your device supports the {} CPU architecture.',
			'deviceSupportsFollowingArchs' => 'Your device supports the following CPU architectures:',
			'warning' => 'Warning',
			'sourceIsXButPackageFromYPrompt' => 'The app source is \'{}\' but the release package comes from \'{}\'. Continue?',
			'updatesAvailable' => 'Updates available',
			'updatesAvailableNotifDescription' => 'Notifies the user that updates are available for one or more apps tracked by Updatium',
			'noNewUpdates' => 'No new updates.',
			'xHasAnUpdate' => '{} has an update.',
			'appsUpdated' => 'Apps updated',
			'appsNotUpdated' => 'Failed to update applications',
			'appsUpdatedNotifDescription' => 'Notifies the user that updates to one or more apps were applied in the background',
			'xWasUpdatedToY' => '{} was updated to {}.',
			'xWasNotUpdatedToY' => 'Failed to update {} to {}.',
			'errorCheckingUpdates' => 'Error checking for updates',
			'errorCheckingUpdatesNotifDescription' => 'A notification that shows when background update checking fails',
			'appsRemoved' => 'Apps removed',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifies the user that one or more apps were removed due to errors while loading them',
			'xWasRemovedDueToErrorY' => '{} was removed due to this error: {}',
			'completeAppInstallation' => 'Complete app installation',
			'updatiumMustBeOpenToInstallApps' => 'Updatium must be open to install apps',
			'completeAppInstallationNotifDescription' => 'Asks the user to return to Updatium to finish installing an app',
			'checkingForUpdates' => 'Checking for updates',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Transient notification that appears when checking for updates',
			'pleaseAllowInstallPerm' => 'Please allow Updatium to install apps',
			'trackOnly' => 'Track-only',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Error {}',
			'versionCorrectionDisabled' => 'Version correction disabled (plugin doesn\'t seem to work)',
			'unknown' => 'Unknown',
			'none' => 'None',
			'all' => 'All',
			'never' => 'Never',
			'latestVersion' => 'Latest',
			'installedVersionX' => 'Installed: {}',
			'lastUpdateCheckX' => 'Last update check: {}',
			'remove' => 'Remove',
			'quickLinks' => 'Quick Links',
			'yesMarkUpdated' => 'Yes, mark as updated',
			'fdroid' => 'F-Droid official',
			'appIdOrName' => 'App ID or name',
			'appId' => 'App ID',
			'appWithIdOrNameNotFound' => 'No app was found with that ID or name',
			'reposHaveMultipleApps' => 'Repos may contain multiple apps',
			'fdroidThirdPartyRepo' => 'F-Droid third-party repo',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Install',
			'markInstalled' => 'Mark installed',
			'update' => 'Update',
			'updated' => 'Updated',
			'markUpdated' => 'Mark updated',
			'download' => 'Download',
			'additionalOptions' => 'Additional options',
			'disableVersionDetection' => 'Disable version detection',
			'noVersionDetectionExplanation' => 'This option should only be used for apps where version detection does not work correctly.',
			'downloadingX' => 'Downloading {}',
			'downloadX' => 'Download {}',
			'downloadedX' => 'Downloaded {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Release asset',
			'downloadNotifDescription' => 'Notifies the user of the progress in downloading an app',
			'noAPKFound' => 'No APK found',
			'noVersionDetection' => 'No version detection',
			'categorize' => 'Categorize',
			'categories' => 'Categories',
			'category' => 'Category',
			'noCategory' => 'No category',
			'noCategories' => 'No categories',
			'categoryDeleteQuestion' => 'Delete categories?',
			'categoryDeleteWarning' => 'All apps in deleted categories will be set to uncategorized.',
			'addCategory' => 'Add category',
			'label' => 'Label',
			'language' => 'Language',
			'copiedToClipboard' => 'Copied to clipboard',
			'storagePermissionDenied' => 'Storage permission denied',
			'selectedCategorizeWarning' => 'This will replace any existing category settings for the selected apps.',
			'filterAPKsByRegEx' => 'Filter APKs by regular expression',
			'removeFromUpdatium' => 'Remove from Updatium',
			'uninstallFromDevice' => 'Uninstall from device',
			'onlyWorksWithNonVersionDetectApps' => 'Only works for apps with version detection disabled.',
			'releaseDateAsVersion' => 'Use release date as version string',
			'releaseTitleAsVersion' => 'Use release title as version string',
			'releaseDateAsVersionExplanation' => 'This option should only be used for apps where version detection does not work correctly, but a release date is available.',
			'changes' => 'Changes',
			'releaseDate' => 'Release date',
			'importFromURLsInFile' => 'Import from URLs in file (like OPML)',
			'versionDetectionExplanation' => 'Reconcile version string with version detected from OS',
			'versionDetection' => 'Version detection',
			'standardVersionDetection' => 'Standard version detection',
			'groupByCategory' => 'Group by category',
			'listView' => 'List view',
			'gridView' => 'Grid view',
			'autoApkFilterByArch' => 'Attempt to filter APKs by CPU architecture if possible',
			'autoLinkFilterByArch' => 'Attempt to filter links by CPU architecture if possible',
			'overrideSource' => 'Override source',
			'dontShowAgain' => 'Don\'t show this again',
			'dontShowTrackOnlyWarnings' => 'Don\'t show \'track-only\' warnings',
			'dontShowAPKOriginWarnings' => 'Don\'t show APK origin warnings',
			'moveNonInstalledAppsToBottom' => 'Move non-installed apps to bottom of apps view',
			'gitlabPATLabel' => 'GitLab personal access token',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Մասին',
			'requiresCredentialsInSettings' => '{} needs additional credentials (in Settings)',
			'checkOnStart' => 'Check for updates on startup',
			'safeMode' => 'Safe Mode',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Add App is disabled in Safe Mode',
			'tryInferAppIdFromCode' => 'Try inferring app ID from source code',
			'removeOnExternalUninstall' => 'Automatically remove externally uninstalled apps',
			'pickHighestVersionCode' => 'Auto-select highest version code APK',
			'checkUpdateOnDetailPage' => 'Check for updates on opening an app detail page',
			'disablePageTransitions' => 'Disable page transition animations',
			'reversePageTransitions' => 'Reverse page transition animations',
			'minStarCount' => 'Minimum star count',
			'addInfoBelow' => 'Add this info below.',
			'addInfoInSettings' => 'Add this info in the Settings.',
			'githubSourceNote' => 'GitHub rate limiting can be avoided using an API key.',
			'sortByLastLinkSegment' => 'Sort by only the last segment of the link',
			'filterReleaseNotesByRegEx' => 'Filter release notes by regular expression',
			'customLinkFilterRegex' => 'Custom APK link filter by regular expression (default \'.apk$\')',
			'appsPossiblyUpdated' => 'App updates attempted',
			'appsPossiblyUpdatedNotifDescription' => 'Notifies the user that updates to one or more apps were potentially applied in the background',
			'xWasPossiblyUpdatedToY' => '{} may have been updated to {}.',
			'enableBackgroundUpdates' => 'Enable background updates',
			'backgroundUpdateReqsExplanation' => 'Background updates may not be possible for all apps.',
			'backgroundUpdateLimitsExplanation' => 'The success of a background install can only be determined when Updatium is opened.',
			'verifyLatestTag' => 'Verify the \'latest\' tag',
			'intermediateLinkRegex' => 'Filter for an \'intermediate\' link to visit',
			'filterByLinkText' => 'Filter links by link text',
			'matchLinksOutsideATags' => 'Match links outside <a> tags',
			'intermediateLinkNotFound' => 'Intermediate link not found',
			'intermediateLink' => 'Intermediate link',
			'exemptFromBackgroundUpdates' => 'Exempt from background updates (if enabled)',
			'bgUpdatesOnWiFiOnly' => 'Disable background updates when not on Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Disable background updates when not charging',
			'autoSelectHighestVersionCode' => 'Auto-select highest versionCode APK',
			'versionExtractionRegEx' => 'Version string extraction RegEx',
			'trimVersionString' => 'Trim version string with RegEx',
			'matchGroupToUseForX' => 'Match group to use for "{}"',
			'matchGroupToUse' => 'Match group to use for version string extraction RegEx',
			'highlightTouchTargets' => 'Highlight less obvious touch targets',
			'pickExportDir' => 'Pick export directory',
			'autoExportOnChanges' => 'Automatically export on changes',
			'includeSettings' => 'Include settings',
			'filterVersionsByRegEx' => 'Filter versions by regular expression',
			'trySelectingSuggestedVersionCode' => 'Try selecting suggested versionCode APK',
			'dontSortReleasesList' => 'Retain release order from API',
			'reverseSort' => 'Reverse sorting',
			'takeFirstLink' => 'Take first link',
			'skipSort' => 'Skip sorting',
			'debugMenu' => 'Debug menu',
			'bgTaskStarted' => 'Background task started - check logs.',
			'runBgCheckNow' => 'Run background update check now',
			'versionExtractWholePage' => 'Apply version string extraction Regex to entire page',
			'installing' => 'Installing',
			'skipUpdateNotifications' => 'Skip update notifications',
			'updatesAvailableNotifChannel' => 'Updates available',
			'appsUpdatedNotifChannel' => 'Apps updated',
			'appsPossiblyUpdatedNotifChannel' => 'App updates attempted',
			'errorCheckingUpdatesNotifChannel' => 'Error checking for updates',
			'appsRemovedNotifChannel' => 'Apps removed',
			'downloadingXNotifChannel' => 'Downloading {}',
			'completeAppInstallationNotifChannel' => 'Complete app installation',
			'checkingForUpdatesNotifChannel' => 'Checking for updates',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Only check installed and track-only apps for updates',
			'supportFixedAPKURL' => 'Support fixed APK URLs',
			'selectX' => 'Select {}',
			'parallelDownloads' => 'Allow parallel downloads',
			'useShizuku' => 'Use Shizuku or Sui to install',
			'shizukuBinderNotFound' => 'Shizuku service not running',
			'shizukuOld' => 'Old Shizuku version (<11) - update it',
			'shizukuOldAndroidWithADB' => 'Shizuku running on Android < 8.1 with ADB - update Android or use Sui instead',
			'shizukuPretendToBeGooglePlay' => 'Set Google Play as the installation source (if Shizuku is used)',
			'useSystemFont' => 'Use the system font',
			'useVersionCodeAsOSVersion' => 'Use app versionCode as OS-detected version',
			'requestHeader' => 'Request header',
			'useLatestAssetDateAsReleaseDate' => 'Use latest asset upload as release date',
			'defaultPseudoVersioningMethod' => 'Default pseudo-versioning method',
			'partialAPKHash' => 'Partial APK hash',
			'APKLinkHash' => 'APK link hash',
			'directAPKLink' => 'Direct APK link',
			'pseudoVersionInUse' => 'A pseudo-version is in use',
			'installedVersion' => 'Տեղադրված',
			'installed' => 'Installed',
			'notInstalledApps' => 'Not Installed',
			'latest' => 'Latest',
			'invertRegEx' => 'Invert regular expression',
			'note' => 'Note',
			'selfHostedNote' => 'The "{}" dropdown can be used to reach self-hosted/custom instances of any source.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'The APK could not be parsed (incompatible or partial download)',
			'beforeNewInstallsShareToAppVerifier' => 'Share new apps with AppVerifier (if available)',
			'appVerifierInstructionToast' => 'Share to AppVerifier, then return here when ready.',
			'wiki' => 'Help/wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Allow insecure HTTP requests',
			'stayOneVersionBehind' => 'Stay one version behind latest',
			'useFirstApkOfVersion' => 'Auto-select first of multiple APKs',
			'refreshBeforeDownload' => 'Refresh app details before download',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Name',
			'smartname' => 'Name (smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sort method',
			'welcome' => 'Welcome',
			'batteryOptimizationNote' => 'Note that background downloads may work more reliably if you switch to the "foreground service" in the Updatium settings and/or disable battery optimization for Updatium in your OS settings.',
			'fileDeletionError' => 'Failed to delete file (try deleting it manually then try again): "{}"',
			'foregroundService' => 'Updatium foreground service',
			'foregroundServiceExplanation' => 'Use a foreground service for update checking (more reliable, consumes more power)',
			'fgServiceNotice' => 'This notification is required for background update checking (it can be hidden in the OS settings)',
			'excludeSecrets' => 'Exclude secrets',
			'GHReqPrefix' => '\'omeritzics/Updatium\' instance for GitHub requests',
			'includeZips' => 'Include ZIP files',
			'zippedApkFilterRegEx' => 'Filter APKs inside ZIP',
			'multipleSigners' => 'Multiple Signers',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'Remove app?', other: 'Remove apps?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'Too many requests (rate limited) - try again in {count} minute', other: 'Too many requests (rate limited) - try again in {count} minutes', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'BG update checking encountered a {error}, will schedule a retry check in {count} minute', other: 'BG update checking encountered a {error}, will schedule a retry check in {count} minutes', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'BG update checking found {count} update - will notify user if needed', other: 'BG update checking found {count} updates - will notify user if needed', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{count} App', other: '{count} Apps', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{count} minute', other: '{count} minutes', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{count} hour', other: '{count} hours', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{count} day', other: '{count} days', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'Cleared {n} log (before = {before}, after = {after})', other: 'Cleared {n} logs (before = {before}, after = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{app} and 1 more app have updates.', other: '{app} and {count} more apps have updates.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{app} and 1 more app was updated.', other: '{app} and {count} more apps were updated.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'Failed to update {app} and 1 more app.', other: 'Failed to update {app} and {count} more apps.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{app} and 1 more app may have been updated.', other: '{app} and {count} more apps may have been updated.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('hy'))(n, one: 'Certificate Hash', other: 'Certificate Hashes', ), 
			'securityDisclaimerTitle' => 'Security & Legal Disclaimer',
			'license' => 'License',
			'licenseText' => 'This application is distributed under the GPL v3 License.',
			'disclaimer' => 'Disclaimer',
			'disclaimerText' => 'This application does not distribute, host, or verify any of the external applications. The user bears full responsibility for the safety and legality of any software installed through this tool.\n\nhttps://github.com/omeritzics/Updatium is the only official place to download Updatium - it is highly discouraged to download it elsewhere as unofficial sources are unsafe.',
			'privacy' => 'Privacy',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Accept & Continue',
			'decline' => 'Decline',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Enjoying Updatium?',
			'githubStarPromptContent' => 'Updatium is a voluntary, open-source community project developed in my free time. If you\'d like to support the project, please consider starring it on GitHub to help us reach more users and contributors. You won\'t be nudged about this again. Thank you in advance! :)',
			'githubStarPromptStar' => 'Star',
			'githubStarPromptDontShowAgain' => 'Don\'t show again',
			'sourceCode' => 'Source Code',
			'developedBy' => 'Developed by',
			'appDescription' => 'A customizable Android app catalogue that allows you to update your apps directly from their APK sources.',
			'safeModeEnabled' => 'Safe Mode is enabled',
			'safeModeDisabled' => 'Safe Mode is disabled',
			'safeModeDisable' => 'Disable Safe Mode',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Safe Mode Administration',
			'safeModeSetupDescription' => 'Set a password to enable Safe Mode. Once enabled, Safe Mode prevents adding new apps and can only be disabled with the password.',
			'safeModeToggleDescription' => 'Enter your password to toggle Safe Mode on or off.',
			'safeModeSetPassword' => 'Set Password',
			'safeModeConfirmPassword' => 'Confirm Password',
			'safeModeEnterPassword' => 'Enter Password',
			'safeModePasswordHint' => 'Minimum 8 characters',
			'safeModePasswordTooShort' => 'Password must be at least 8 characters long',
			'safeModePasswordMismatch' => 'Passwords do not match',
			'safeModePasswordIncorrect' => 'Incorrect password',
			'safeModePasswordError' => 'Error setting password. Please try again.',
			'safeModeEnable' => 'Enable Safe Mode',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} taps remaining to disable Safe Mode',
			'safeModeEnabledHint' => 'Safe Mode enabled. Tap on the version number in the Settings many times to disable.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Got it',
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
