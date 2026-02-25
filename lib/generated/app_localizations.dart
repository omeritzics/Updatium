import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';

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
import 'package:updatium/generated/app_localizations.dart';
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
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en')
  ];

  /// No description provided for @invalidURLForSource.
  ///
  /// In en, this message translates to:
  /// **'Not a valid {appType} app URL'**
  String invalidURLForSource(Object appType);

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

  /// No description provided for @continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue;

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
  String xIsTrackOnly(Object appName);

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
  /// **'Additional options for {sourceName}'**
  String additionalOptsFor(Object sourceName);

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
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {

  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
