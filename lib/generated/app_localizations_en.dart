// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';
import 'package:updatium/generated/app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String invalidURLForSource(Object appType) {
    return 'Not a valid $appType app URL';
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
  String xIsTrackOnly(Object appName) {
    return '$appName is track-only';
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
  String additionalOptsFor(Object sourceName) {
    return 'Additional options for $sourceName';
  }

  @override
  String get supportedSources => 'Supported sources';

  @override
  String get trackOnlyInBrackets => '(track-only)';

  @override
  String get searchableInBrackets => '(searchable)';

  @override
  String get appsString => 'Apps';
}
