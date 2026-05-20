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
class TranslationsDe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Keine gültige {} App-URL';
	@override String get noReleaseFound => 'Keine passende Version gefunden';
	@override String get noVersionFound => 'Release-Version nicht ermittelbar';
	@override String get urlMatchesNoSource => 'URL stimmt mit keiner bekannten Quelle überein';
	@override String get cantInstallOlderVersion => 'Installation einer älteren App-Version nicht möglich';
	@override String get appIdMismatch => 'Die heruntergeladene Paket-ID stimmt nicht mit der vorhandenen App-ID überein';
	@override String get functionNotImplemented => 'Diese Klasse hat diese Funktion nicht implementiert';
	@override String get placeholder => 'Platzhalter';
	@override String get someErrors => 'Es traten einige Fehler auf';
	@override String get unexpectedError => 'Unerwarteter Fehler';
	@override String get ok => 'OK';
	@override String get and => 'und';
	@override String get githubPATLabel => 'Persönlicher Zugangstoken für GitHub';
	@override String get includePrereleases => 'Vorabversionen einbeziehen';
	@override String get fallbackToOlderReleases => 'Fallback auf ältere Versionen';
	@override String get filterReleaseTitlesByRegEx => 'Release-Titel nach regulärem Ausdruck\nfiltern';
	@override String get invalidRegEx => 'Ungültiger regulärer Ausdruck';
	@override String get noDescription => 'Keine Beschreibung';
	@override String get cancel => 'Abbrechen';
	@override String get kContinue => 'Weiter';
	@override String get requiredInBrackets => '(notwendig)';
	@override String get dropdownNoOptsError => 'FEHLER: DROPDOWN MUSS MINDESTENS EINE OPTION HABEN';
	@override String get color => 'Farbe';
	@override String get standard => 'Standard';
	@override String get custom => 'Benutzerdefiniert';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You Farben verwenden';
	@override String get githubStarredRepos => 'GitHub Starred Repos';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Benutzername';
	@override String get wrongArgNum => 'Falsche Anzahl von Argumenten (Parametern) übermittelt';
	@override String get xIsTrackOnly => '{} ist nur zur Nachverfolgung';
	@override String get source => 'Quelle';
	@override String get app => 'App';
	@override String get appsFromSourceAreTrackOnly => 'Apps aus dieser Quelle sind nur zur Nachverfolgung.';
	@override String get youPickedTrackOnly => 'Sie haben die Option „Nur nachverfolgen“ gewählt.';
	@override String get trackOnlyAppDescription => 'Die App wird auf neue verfügbare Versionen überwacht, aber Updatium wird sie nicht herunterladen oder installieren.';
	@override String get cancelled => 'Abgebrochen';
	@override String get appAlreadyAdded => 'App bereits hinzugefügt';
	@override String get alreadyUpToDateQuestion => 'App bereits auf dem neuesten Stand?';
	@override String get addApp => 'App hinzufügen';
	@override String get appSourceURL => 'Quell-URL der App';
	@override String get error => 'Fehler';
	@override String get add => 'Hinzufügen';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Suche (nur für bestimmte Quellen)';
	@override String get search => 'Suchen';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Zusatzoptionen für {}';
	@override String get supportedSources => 'Unterstützte Quellen';
	@override String get trackOnlyInBrackets => '(Nur nachverfolgen)';
	@override String get searchableInBrackets => '(durchsuchbar)';
	@override String get appsString => 'Apps';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Willkommen!';
	@override String get noAppsSubtext => 'Sie können Ihre erste App hinzufügen, indem Sie unten auf \'App hinzufügen\' tippen.';
	@override String get noAppsForFilter => 'Keine Apps für ausgewählten Filter';
	@override String get byX => 'Von {}';
	@override String get percentProgress => 'Fortschritt: {}%';
	@override String get pleaseWait => 'Bitte warten';
	@override String get updateAvailable => 'Aktualisierung verfügbar';
	@override String get notInstalled => 'Nicht installiert';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'Pseudoversion';
	@override String get selectAll => 'Alle auswählen';
	@override String get deselectX => '{} abgewählt';
	@override String get xWillBeRemovedButRemainInstalled => '{} wird aus Updatium entfernt, bleibt aber auf dem Gerät installiert.';
	@override String get removeSelectedAppsQuestion => 'Ausgewählte Apps entfernen?';
	@override String get removeSelectedApps => 'Ausgewählte Apps entfernen';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} aktualisieren';
	@override String get installX => '{} installieren';
	@override String get markXTrackOnlyAsUpdated => 'Markiere {}\n(Nur nachverfolgen)\nals aktualisiert';
	@override String get changeX => '{} ändern';
	@override String get installUpdateApps => 'Apps installieren/aktualisieren';
	@override String get installUpdateSelectedApps => 'Ausgewählte Apps installieren/aktualisieren';
	@override String get markXSelectedAppsAsUpdated => '{} ausgewählte Apps als aktuell markieren?';
	@override String get no => 'Nein';
	@override String get yes => 'Ja';
	@override String get markSelectedAppsUpdated => 'Ausgewählte Apps als aktuell markieren';
	@override String get pinToTop => 'Oben anheften';
	@override String get unpinFromTop => '„Oben anheften“ aufheben';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Installationsstatus für ausgewählte Apps zurücksetzen?';
	@override String get installStatusOfXWillBeResetExplanation => 'Der Installationsstatus der ausgewählten Apps wird zurückgesetzt. Dies kann hilfreich sein, wenn die in Updatium angezeigte App-Version aufgrund fehlgeschlagener Aktualisierungen oder anderer Probleme falsch ist.';
	@override String get customLinkMessage => 'Diese Links funktionieren auf Geräten, wo Updatium installiert ist';
	@override String get shareAppConfigLinks => 'App-Konfiguration als HTML-Link teilen';
	@override String get resetInstallStatus => 'Installationsstatus zurücksetzen';
	@override String get more => 'Mehr';
	@override String get removeOutdatedFilter => 'App-Filter ‚Nicht aktuell‘ entfernen';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Nur nicht aktuelle Apps anzeigen';
	@override String get filter => 'Filter';
	@override String get filterApps => 'Apps filtern';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'App-Name';
	@override String get author => 'Herausgebende';
	@override String get upToDateApps => 'Apps mit aktuellster Version';
	@override String get nonInstalledApps => 'Nicht installierte Apps';
	@override String get importExport => 'Import/Export';
	@override String get settings => 'Einstellungen';
	@override String get exportedTo => 'Exportiert nach {}';
	@override String get updatiumExport => 'Updatium-Export';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Ungültige Eingabe';
	@override String get importedX => '{} importiert';
	@override String get updatiumImport => 'Updatium-Import';
	@override String get importFromURLList => 'Aus URL-Liste importieren';
	@override String get searchQuery => 'Suchanfrage';
	@override String get appURLList => 'App-URL-Liste';
	@override String get line => 'Zeile';
	@override String get searchX => '{} suchen';
	@override String get noResults => 'Keine Ergebnisse gefunden';
	@override String get importX => '{} importieren';
	@override String get importedAppsIdDisclaimer => 'Importierte Apps werden manchmal fälschlicherweise als „Nicht installiert“ angezeigt. Um dies zu beheben, installieren Sie sie erneut über Updatium. Dies hat keine Auswirkungen auf App-Daten. Es betrifft nur URL- und Drittanbieter-Importmethoden.';
	@override String get importErrors => 'Importfehler';
	@override String get importedXOfYApps => '{} von {} Apps importiert.';
	@override String get followingURLsHadErrors => 'Bei folgenden URLs traten Fehler auf:';
	@override String get selectURL => 'URL auswählen';
	@override String get selectURLs => 'URLs auswählen';
	@override String get pick => 'Auswählen';
	@override String get theme => 'Erscheinungsbild';
	@override String get dark => 'Dunkel';
	@override String get light => 'Hell';
	@override String get followSystem => 'Systemstandard';
	@override String get followSystemThemeExplanation => 'Das Abrufen des Systemdesigns ist unter Android < 10 nur mit Hilfe von Drittanbieterapps möglich';
	@override String get useBlackTheme => 'Rein schwarzen Hintergrund verwenden';
	@override String get appSortBy => 'App sortieren nach';
	@override String get authorName => 'Herausgebende/Name';
	@override String get nameAuthor => 'Name/Herausgebende';
	@override String get asAdded => 'Wie hinzugefügt';
	@override String get appSortOrder => 'App sortieren nach';
	@override String get ascending => 'Aufsteigend';
	@override String get descending => 'Absteigend';
	@override String get bgUpdateCheckInterval => 'Prüfintervall für Hintergrundaktualisierung';
	@override String get neverManualOnly => 'Nie – nur manuell';
	@override String get appearance => 'Aussehen';
	@override String get pinUpdates => 'Apps mit Aktualisierungen oben anheften';
	@override String get updates => 'Aktualisierungen';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Quellenspezifisch';
	@override String get appSource => 'App-Quelle';
	@override String get appSourceHint => 'App-Quellcode-Repository öffnen';
	@override String get noLogs => 'Keine Logs';
	@override String get appLogs => 'App-Logs';
	@override String get appLogsHint => 'Anwendungsprotokolle anzeigen';
	@override String get close => 'Schließen';
	@override String get share => 'Teilen';
	@override String get appNotFound => 'App nicht gefunden';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'Updatium-Export';
	@override String get pickAnAPK => 'APK auswählen';
	@override String get appHasMoreThanOnePackage => '{} verfügt über mehr als ein Paket:';
	@override String get deviceSupportsXArch => 'Ihr Gerät unterstützt die CPU-Architektur {}.';
	@override String get deviceSupportsFollowingArchs => 'Ihr Gerät unterstützt die folgenden CPU-Architekturen:';
	@override String get warning => 'Warnung';
	@override String get sourceIsXButPackageFromYPrompt => 'Die App-Quelle ist \'{}\', aber das Release-Paket stammt von \'{}\'. Fortfahren?';
	@override String get updatesAvailable => 'Aktualisierungen verfügbar';
	@override String get updatesAvailableNotifDescription => 'Benachrichtigt, wenn Aktualisierungen für eine oder mehrere von Updatium überwachte Apps verfügbar sind';
	@override String get noNewUpdates => 'Keine neuen Aktualisierungen.';
	@override String get xHasAnUpdate => '{} hat eine Aktualisierung.';
	@override String get appsUpdated => 'App wurde aktualisiert';
	@override String get appsNotUpdated => 'Aktualisierung der Apps fehlgeschlagen';
	@override String get appsUpdatedNotifDescription => 'Benachrichtigt, wenn Aktualisierungen für eine oder mehrere Apps im Hintergrund durchgeführt wurden';
	@override String get xWasUpdatedToY => '{} wurde auf {} aktualisiert.';
	@override String get xWasNotUpdatedToY => 'Die Aktualisierung von {} auf {} ist fehlgeschlagen.';
	@override String get errorCheckingUpdates => 'Fehler beim Prüfen auf Aktualisierungen';
	@override String get errorCheckingUpdatesNotifDescription => 'Benachrichtigt, wenn die Prüfung der Hintergrundaktualisierung fehlgeschlagen ist';
	@override String get appsRemoved => 'Apps entfernt';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Benachrichtigt, wenn eine oder mehrere Apps aufgrund von Fehlern beim Laden entfernt wurden';
	@override String get xWasRemovedDueToErrorY => '{} wurde aufgrund des folgenden Fehlers entfernt: {}';
	@override String get completeAppInstallation => 'App-Installation abschließen';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium muss geöffnet sein, um Apps zu installieren';
	@override String get completeAppInstallationNotifDescription => 'Aufforderung zu Updatium zurückzukehren, um die Installation einer App abzuschließen';
	@override String get checkingForUpdates => 'Nach Aktualisierungen suchen';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Vorübergehende Benachrichtigung, die bei der Suche nach Aktualisierungen angezeigt wird';
	@override String get pleaseAllowInstallPerm => 'Bitte erlauben Sie Updatium die Installation von Apps';
	@override String get trackOnly => 'Nur nachverfolgen';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Fehler {}';
	@override String get versionCorrectionDisabled => 'Versionskorrektur deaktiviert (Plugin scheint nicht zu funktionieren)';
	@override String get unknown => 'Unbekannt';
	@override String get none => 'Keine';
	@override String get all => 'Alle';
	@override String get never => 'Nie';
	@override String get latestVersion => 'Neueste Version';
	@override String get installedVersionX => 'Installierte Version: {}';
	@override String get lastUpdateCheckX => 'Letzte Aktualisierungsprüfung: {}';
	@override String get remove => 'Entfernen';
	@override String get quickLinks => 'Schnelllinks';
	@override String get yesMarkUpdated => 'Ja, als aktualisiert markieren';
	@override String get fdroid => 'Offizielles F-Droid-Repo';
	@override String get appIdOrName => 'App-ID oder Name';
	@override String get appId => 'App-ID';
	@override String get appWithIdOrNameNotFound => 'Es wurde keine App mit dieser ID oder diesem Namen gefunden';
	@override String get reposHaveMultipleApps => 'Repos können mehrere Apps enthalten';
	@override String get fdroidThirdPartyRepo => 'F-Droid-Drittanbieter-Repo';
	@override String get codeberg => 'Codeberg';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Installieren';
	@override String get markInstalled => 'Als installiert markieren';
	@override String get update => 'Aktualisieren';
	@override String get updated => 'Aktuell';
	@override String get markUpdated => 'Als aktuell markieren';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Zusätzliche Optionen';
	@override String get disableVersionDetection => 'Versionserkennung deaktivieren';
	@override String get noVersionDetectionExplanation => 'Diese Option sollte nur für Apps verwendet werden, bei denen die Versionserkennung nicht korrekt funktioniert.';
	@override String get downloadingX => '{} wird heruntergeladen';
	@override String get downloadX => '{} herunterladen';
	@override String get downloadedX => '{} heruntergeladen';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Release-Anhang';
	@override String get downloadNotifDescription => 'Fortschrittsanzeige beim Herunterladen einer App';
	@override String get noAPKFound => 'Keine APK gefunden';
	@override String get noVersionDetection => 'Keine Versionserkennung';
	@override String get categorize => 'Kategorisieren';
	@override String get categories => 'Kategorien';
	@override String get category => 'Kategorie';
	@override String get noCategory => 'Keine Kategorie';
	@override String get noCategories => 'Keine Kategorien';
	@override String get categoryDeleteQuestion => 'Kategorien löschen?';
	@override String get categoryDeleteWarning => 'Alle Apps in gelöschten Kategorien werden auf nicht kategorisiert gesetzt.';
	@override String get addCategory => 'Kategorie hinzufügen';
	@override String get label => 'Bezeichnung';
	@override String get language => 'Sprache';
	@override String get copiedToClipboard => 'In die Zwischenablage kopiert';
	@override String get storagePermissionDenied => 'Speicherberechtigung verweigert';
	@override String get selectedCategorizeWarning => 'Dadurch werden alle bestehenden Kategorieeinstellungen für die ausgewählten Apps ersetzt.';
	@override String get filterAPKsByRegEx => 'APKs nach regulärem Ausdruck filtern';
	@override String get removeFromUpdatium => 'Aus Updatium entfernen';
	@override String get uninstallFromDevice => 'Vom Gerät deinstallieren';
	@override String get onlyWorksWithNonVersionDetectApps => 'Funktioniert nur bei Apps mit deaktivierter Versionserkennung.';
	@override String get releaseDateAsVersion => 'Veröffentlichungsdatum als Version verwenden';
	@override String get releaseTitleAsVersion => 'Versionstitel als Versionsstring verwenden';
	@override String get releaseDateAsVersionExplanation => 'Diese Option sollte nur für Apps verwendet werden, bei denen die Versionserkennung nicht korrekt funktioniert, aber ein Veröffentlichungsdatum verfügbar ist.';
	@override String get changes => 'Änderungen';
	@override String get releaseDate => 'Veröffentlichungsdatum';
	@override String get importFromURLsInFile => 'URLs aus Datei importieren (z. B. OPML)';
	@override String get versionDetectionExplanation => 'Abgleich der Versionsnummer mit der vom Betriebssystem erkannten Version';
	@override String get versionDetection => 'Versionserkennung';
	@override String get standardVersionDetection => 'Standardversionserkennung';
	@override String get groupByCategory => 'Nach Kategorie gruppieren';
	@override String get listView => 'Listenansicht';
	@override String get gridView => 'Rasteransicht';
	@override String get autoApkFilterByArch => 'Nach Möglichkeit versuchen, APKs nach CPU-Architektur zu filtern';
	@override String get autoLinkFilterByArch => 'Nach Möglichkeit versuchen, APKs nach CPU-Architektur zu filtern';
	@override String get overrideSource => 'Quelle überschreiben';
	@override String get dontShowAgain => 'Nicht noch einmal anzeigen';
	@override String get dontShowTrackOnlyWarnings => 'Warnung für ‚Nur nachverfolgen‘ nicht anzeigen';
	@override String get dontShowAPKOriginWarnings => 'Warnung für APK-Herkunft nicht anzeigen';
	@override String get moveNonInstalledAppsToBottom => 'Nicht installierte Apps ans Ende der App-Ansicht verschieben';
	@override String get gitlabPATLabel => 'Persönlicher Zugangstoken für GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Weitere Informationen';
	@override String get requiresCredentialsInSettings => '{}: Benötigt zusätzliche Anmeldedaten (in den Einstellungen)';
	@override String get checkOnStart => 'Einmalig beim Start auf Aktualisierungen prüfen';
	@override String get safeMode => 'Sicherer Modus';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'App hinzufügen ist im sicheren Modus deaktiviert';
	@override String get tryInferAppIdFromCode => 'Versuchen, die App-ID aus dem Quellcode zu ermitteln';
	@override String get removeOnExternalUninstall => 'Extern deinstallierte Apps automatisch entfernen';
	@override String get pickHighestVersionCode => 'Automatische Auswahl des APK mit höchstem Versionscode';
	@override String get checkUpdateOnDetailPage => 'Nach Aktualisierungen suchen, wenn eine App-Detailseite geöffnet wird';
	@override String get disablePageTransitions => 'Animationen für Seitenübergänge deaktivieren';
	@override String get reversePageTransitions => 'Umgekehrte Animationen für Seitenübergänge';
	@override String get minStarCount => 'Minimale Anzahl von Sternen';
	@override String get addInfoBelow => 'Diese Information unten hinzufügen.';
	@override String get addInfoInSettings => 'Diese Information in den Einstellungen hinzufügen.';
	@override String get githubSourceNote => 'Die GitHub-Ratenbegrenzung kann mit einem API-Schlüssel umgangen werden.';
	@override String get sortByLastLinkSegment => 'Nur nach dem letzten Teil des Links sortieren';
	@override String get filterReleaseNotesByRegEx => 'Versionshinweise nach regulärem Ausdruck\nfiltern';
	@override String get customLinkFilterRegex => 'Benutzerdefinierter APK-Linkfilter durch regulären Ausdruck (Standard \'.apk$\')';
	@override String get appsPossiblyUpdated => 'App-Aktualisierungen wurden versucht';
	@override String get appsPossiblyUpdatedNotifDescription => 'Benachrichtigt, dass möglicherweise eine oder mehrere Apps im Hintergrund aktualisiert wurden';
	@override String get xWasPossiblyUpdatedToY => '{} wurde möglicherweise auf Version {} aktualisiert.';
	@override String get enableBackgroundUpdates => 'Hintergrundaktualisierungen aktivieren';
	@override String get backgroundUpdateReqsExplanation => 'Die Hintergrundaktualisierung ist unter Umständen nicht für alle Apps möglich.';
	@override String get backgroundUpdateLimitsExplanation => 'Der Erfolg einer Hintergrundinstallation kann nur festgestellt werden, wenn Updatium geöffnet wird.';
	@override String get verifyLatestTag => '„Latest“-Tag überprüfen';
	@override String get intermediateLinkRegex => 'Filter für einen „Zwischen“-Link, der zuerst besucht werden soll';
	@override String get filterByLinkText => 'Links durch Linktext filtern';
	@override String get matchLinksOutsideATags => 'Links außerhalb von <a>-Tags anpassen';
	@override String get intermediateLinkNotFound => '„Zwischen“-Link nicht gefunden';
	@override String get intermediateLink => '„Zwischen“-Link';
	@override String get exemptFromBackgroundUpdates => 'Von Hintergrundaktualisierungen (falls aktiviert) ausschließen';
	@override String get bgUpdatesOnWiFiOnly => 'Hintergrundaktualisierungen nur im WLAN ausführen';
	@override String get bgUpdatesWhileChargingOnly => 'Hintergrundaktualisierungen nur ausführen, während das Gerät geladen wird';
	@override String get autoSelectHighestVersionCode => 'Automatisch höchste APK-Version auswählen';
	@override String get versionExtractionRegEx => 'Versionsextraktion per RegEx';
	@override String get trimVersionString => 'Versionszeichenfolge mit RegEx kürzen';
	@override String get matchGroupToUseForX => 'Zu verwendende Abgleichsgruppe für\n„{}“';
	@override String get matchGroupToUse => 'Zu verwendende Gruppe abgleichen';
	@override String get highlightTouchTargets => 'Weniger offensichtliche Touch-Ziele hervorheben';
	@override String get pickExportDir => 'Export-Verzeichnis wählen';
	@override String get autoExportOnChanges => 'Automatischer Export bei Änderung(en)';
	@override String get includeSettings => 'Einstellungen einbeziehen';
	@override String get filterVersionsByRegEx => 'Versionen nach regulären Ausdrücken filtern';
	@override String get trySelectingSuggestedVersionCode => 'Versuchen, den vorgeschlagenen APK-Versionscode auszuwählen';
	@override String get dontSortReleasesList => 'Releases-Sortierung der API beibehalten';
	@override String get reverseSort => 'Umgekehrtes Sortieren';
	@override String get takeFirstLink => 'Ersten Link verwenden';
	@override String get skipSort => 'Sortieren überspringen';
	@override String get debugMenu => 'Debug-Menü';
	@override String get bgTaskStarted => 'Hintergrundaufgabe gestartet – Logs prüfen.';
	@override String get runBgCheckNow => 'Hintergrundaktualisierungsprüfung jetzt durchführen';
	@override String get versionExtractWholePage => 'Versionsextraktion per RegEx auf die gesamte Seite anwenden';
	@override String get installing => 'Installieren';
	@override String get skipUpdateNotifications => 'Update-Benachrichtigungen überspringen';
	@override String get updatesAvailableNotifChannel => 'Aktualisierungen verfügbar';
	@override String get appsUpdatedNotifChannel => 'Apps aktualisiert';
	@override String get appsPossiblyUpdatedNotifChannel => 'App-Aktualisierungen wurden versucht';
	@override String get errorCheckingUpdatesNotifChannel => 'Fehler beim Prüfen auf Aktualisierungen';
	@override String get appsRemovedNotifChannel => 'Apps entfernt';
	@override String get downloadingXNotifChannel => '{} herunterladen';
	@override String get completeAppInstallationNotifChannel => 'App-Installation abschließen';
	@override String get checkingForUpdatesNotifChannel => 'Nach Aktualisierungen suchen';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Nur mit „Nur nachverfolgen“ markierte und installierte Apps auf Aktualisierungen prüfen';
	@override String get supportFixedAPKURL => 'Unterstützung von festen APK-URLs';
	@override String get selectX => '{} wählen';
	@override String get parallelDownloads => 'Parallele Downloads erlauben';
	@override String get useShizuku => 'Shizuku oder Sui zur Installation verwenden';
	@override String get shizukuBinderNotFound => 'Kompatibler Shizuku-Dienst wurde nicht gefunden';
	@override String get shizukuOld => 'Veraltete Shizuku-Version (< 11) – bitte aktualisieren Sie sie';
	@override String get shizukuOldAndroidWithADB => 'Shizuku läuft auf Android < 8.1 mit ADB – aktualisieren Sie die Android-Version oder verwenden Sie stattdessen Sui';
	@override String get shizukuPretendToBeGooglePlay => '(Mittels Shizuku) Google Play als Installationsquelle registrieren';
	@override String get useSystemFont => 'Systemschriftart verwenden';
	@override String get useVersionCodeAsOSVersion => 'Versionscode (versionCode) als vom Betriebssystem erkannte Version verwenden';
	@override String get requestHeader => 'Kopfzeile („Header“) anfordern';
	@override String get useLatestAssetDateAsReleaseDate => 'Letzten Upload eines Release-Anhangs als Veröffentlichungsdatum verwenden';
	@override String get defaultPseudoVersioningMethod => 'Standardmäßiges Verfahren zur Pseudo-Versionierung';
	@override String get partialAPKHash => 'Partieller APK-Hash';
	@override String get APKLinkHash => 'APK-Link-Hash';
	@override String get directAPKLink => 'Direkter APK-Link';
	@override String get pseudoVersionInUse => 'Es werden Pseudoversionen verwendet';
	@override String get installedVersion => 'Installiert';
	@override String get installed => 'Installiert';
	@override String get notInstalledApps => 'Nicht installiert';
	@override String get latest => 'Neueste Version';
	@override String get invertRegEx => 'Regulären Ausdruck invertieren';
	@override String get note => 'Hinweis';
	@override String get selfHostedNote => 'Das „{}“-Drop-down-Menü kann verwendet werden, um selbst gehostete/angepasste Instanzen einer beliebigen Quelle zu erreichen.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'Die APK konnte nicht gelesen werden (inkompatibler oder unfertiger Download)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Neue Apps mit AppVerifier teilen (falls verfügbar)';
	@override String get appVerifierInstructionToast => 'Teile die Daten mit AppVerifier und kehre im Anschluss hierher zurück.';
	@override String get wiki => 'Hilfe/Wiki';
	@override String get wikiHint => 'Updatium-Wiki-Dokumentation öffnen';
	@override String get allowInsecure => 'Unsichere HTTP-Anfragen zulassen';
	@override String get stayOneVersionBehind => 'Eine Version hinter der neuesten Version bleiben';
	@override String get useFirstApkOfVersion => 'Automatische Auswahl der ersten von mehreren APKs';
	@override String get refreshBeforeDownload => 'App-Details vor dem Download aktualisieren';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (China)';
	@override String get name => 'Name';
	@override String get smartname => 'Name (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sortierverfahren';
	@override String get welcome => 'Willkommen';
	@override String get batteryOptimizationNote => 'Beachten Sie, dass Downloads im Hintergrund möglicherweise zuverlässiger funktionieren, wenn Sie die Batterieoptimierung des Betriebssystems für Updatium deaktivieren.';
	@override String get fileDeletionError => 'Die Datei konnte nicht gelöscht werden (versuchen Sie, sie manuell zu löschen und versuchen Sie es dann erneut): "{}"';
	@override String get foregroundService => 'Updatium-Vordergrunddienst';
	@override String get foregroundServiceExplanation => 'Aktualisierungsprüfung im Vordergrund durchführen (zuverlässiger, verbraucht mehr Strom)';
	@override String get fgServiceNotice => 'Diese Benachrichtigung ist für die Prüfung von Updates im Hintergrund erforderlich (sie kann in den Betriebssystemeinstellungen ausgeblendet werden)';
	@override String get excludeSecrets => 'Geheimnisse ausschließen';
	@override String get GHReqPrefix => 'omeritzics/Updatium\'-Instanz für GitHub-Anfragen';
	@override String get includeZips => 'ZIP-Dateien einbeziehen';
	@override String get zippedApkFilterRegEx => 'APKs in ZIP filtern';
	@override String get multipleSigners => 'Mehrere Zeichen';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'App entfernen?',
		other: 'Apps entfernen?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Zu viele Anfragen (Rate begrenzt) – versuchen Sie es in {count} Minute erneut',
		other: 'Zu viele Anfragen (Rate begrenzt) – versuchen Sie es in {count} Minuten erneut',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Bei der Aktualisierungsprüfung im Hintergrund wurde ein {error} festgestellt, eine erneute Prüfung wird in {count} Minute geplant',
		other: 'Bei der Aktualisierungsprüfung im Hintergrund wurde ein {error} festgestellt, eine erneute Prüfung wird in {count} Minuten geplant',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Die Aktualisierungsprüfung fand {count} Aktualisierung – benachrichtigt, falls erforderlich',
		other: 'Die Aktualisierungsprüfung fand {count} Aktualisierungen – benachrichtigt, falls erforderlich',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{count} App',
		other: '{count} Apps',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{count} URL',
		other: '{count} URLs',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{count} Minute',
		other: '{count} Minuten',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{count} Stunde',
		other: '{count} Stunden',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{count} Tag',
		other: '{count} Tage',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{n} Log gelöscht (vorher = {before}, nachher = {after})',
		other: '{n} Logs gelöscht (vorher = {before}, nachher = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{app} und 1 weitere App können aktualisiert werden.',
		other: '{app} und {count} weitere Apps können aktualisiert werden.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{app} und 1 weitere App wurden aktualisiert.',
		other: '{app} und {count} weitere Apps wurden aktualisiert.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Die Aktualisierung von {app} und 1 weiteren App ist fehlgeschlagen.',
		other: 'Die Aktualisierung von {app} und {count} weiteren Apps ist fehlgeschlagen.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{app} und 1 weitere App wurden möglicherweise aktualisiert.',
		other: '{app} und {count} weitere Apps wurden möglicherweise aktualisiert.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n,
		one: 'Zertifikat Hash',
		other: 'Zertifikat Hashes',
	);
	@override String get securityDisclaimerTitle => 'Sicherheits- und Rechtlicher Haftungsausschluss';
	@override String get license => 'Lizenz';
	@override String get licenseText => 'Diese Anwendung wird unter der GPL v3 Lizenz verteilt.';
	@override String get disclaimer => 'Haftungsausschluss';
	@override String get disclaimerText => 'Diese Anwendung verteilt, hostet oder überprüft keine der externen Anwendungen. Der Benutzer trägt die volle Verantwortung für die Sicherheit und Legalität jeder Software, die über dieses Tool installiert wird.\n\nhttps://github.com/omeritzics/Updatium ist der einzige offizielle Ort, um Updatium herunterzuladen - es wird dringend davon abgeraten, es woanders herunterzuladen, da das Herunterladen von inoffiziellen Quellen unsicher ist.';
	@override String get privacy => 'Datenschutz';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Akzeptieren und fortfahren';
	@override String get decline => 'Ablehnen';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Gefällt Ihnen Updatium?';
	@override String get githubStarPromptContent => 'Updatium ist ein freiwilliges Open-Source-Community-Projekt, das in meiner Freizeit entwickelt wird. Wenn Sie das Projekt unterstützen möchten, erwägen Sie bitte, ihm auf GitHub einen Stern zu geben, um uns zu helfen, mehr Nutzer und Mitwirkende zu erreichen. Sie werden darüber nicht mehr belästigt. Vielen Dank im Voraus! :)';
	@override String get githubStarPromptStar => 'Stern geben';
	@override String get githubStarPromptDontShowAgain => 'Nicht mehr anzeigen';
	@override String get sourceCode => 'Quellcode';
	@override String get developedBy => 'Entwickelt von';
	@override String get appDescription => 'Ein anpassbarer Android-App-Katalog, der es Ihnen ermöglicht, Ihre Apps direkt aus ihren APK-Quellen zu aktualisieren.';
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

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Keine gültige {} App-URL',
			'noReleaseFound' => 'Keine passende Version gefunden',
			'noVersionFound' => 'Release-Version nicht ermittelbar',
			'urlMatchesNoSource' => 'URL stimmt mit keiner bekannten Quelle überein',
			'cantInstallOlderVersion' => 'Installation einer älteren App-Version nicht möglich',
			'appIdMismatch' => 'Die heruntergeladene Paket-ID stimmt nicht mit der vorhandenen App-ID überein',
			'functionNotImplemented' => 'Diese Klasse hat diese Funktion nicht implementiert',
			'placeholder' => 'Platzhalter',
			'someErrors' => 'Es traten einige Fehler auf',
			'unexpectedError' => 'Unerwarteter Fehler',
			'ok' => 'OK',
			'and' => 'und',
			'githubPATLabel' => 'Persönlicher Zugangstoken für GitHub',
			'includePrereleases' => 'Vorabversionen einbeziehen',
			'fallbackToOlderReleases' => 'Fallback auf ältere Versionen',
			'filterReleaseTitlesByRegEx' => 'Release-Titel nach regulärem Ausdruck\nfiltern',
			'invalidRegEx' => 'Ungültiger regulärer Ausdruck',
			'noDescription' => 'Keine Beschreibung',
			'cancel' => 'Abbrechen',
			'kContinue' => 'Weiter',
			'requiredInBrackets' => '(notwendig)',
			'dropdownNoOptsError' => 'FEHLER: DROPDOWN MUSS MINDESTENS EINE OPTION HABEN',
			'color' => 'Farbe',
			'standard' => 'Standard',
			'custom' => 'Benutzerdefiniert',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You Farben verwenden',
			'githubStarredRepos' => 'GitHub Starred Repos',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Benutzername',
			'wrongArgNum' => 'Falsche Anzahl von Argumenten (Parametern) übermittelt',
			'xIsTrackOnly' => '{} ist nur zur Nachverfolgung',
			'source' => 'Quelle',
			'app' => 'App',
			'appsFromSourceAreTrackOnly' => 'Apps aus dieser Quelle sind nur zur Nachverfolgung.',
			'youPickedTrackOnly' => 'Sie haben die Option „Nur nachverfolgen“ gewählt.',
			'trackOnlyAppDescription' => 'Die App wird auf neue verfügbare Versionen überwacht, aber Updatium wird sie nicht herunterladen oder installieren.',
			'cancelled' => 'Abgebrochen',
			'appAlreadyAdded' => 'App bereits hinzugefügt',
			'alreadyUpToDateQuestion' => 'App bereits auf dem neuesten Stand?',
			'addApp' => 'App hinzufügen',
			'appSourceURL' => 'Quell-URL der App',
			'error' => 'Fehler',
			'add' => 'Hinzufügen',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Suche (nur für bestimmte Quellen)',
			'search' => 'Suchen',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Zusatzoptionen für {}',
			'supportedSources' => 'Unterstützte Quellen',
			'trackOnlyInBrackets' => '(Nur nachverfolgen)',
			'searchableInBrackets' => '(durchsuchbar)',
			'appsString' => 'Apps',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Willkommen!',
			'noAppsSubtext' => 'Sie können Ihre erste App hinzufügen, indem Sie unten auf \'App hinzufügen\' tippen.',
			'noAppsForFilter' => 'Keine Apps für ausgewählten Filter',
			'byX' => 'Von {}',
			'percentProgress' => 'Fortschritt: {}%',
			'pleaseWait' => 'Bitte warten',
			'updateAvailable' => 'Aktualisierung verfügbar',
			'notInstalled' => 'Nicht installiert',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'Pseudoversion',
			'selectAll' => 'Alle auswählen',
			'deselectX' => '{} abgewählt',
			'xWillBeRemovedButRemainInstalled' => '{} wird aus Updatium entfernt, bleibt aber auf dem Gerät installiert.',
			'removeSelectedAppsQuestion' => 'Ausgewählte Apps entfernen?',
			'removeSelectedApps' => 'Ausgewählte Apps entfernen',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} aktualisieren',
			'installX' => '{} installieren',
			'markXTrackOnlyAsUpdated' => 'Markiere {}\n(Nur nachverfolgen)\nals aktualisiert',
			'changeX' => '{} ändern',
			'installUpdateApps' => 'Apps installieren/aktualisieren',
			'installUpdateSelectedApps' => 'Ausgewählte Apps installieren/aktualisieren',
			'markXSelectedAppsAsUpdated' => '{} ausgewählte Apps als aktuell markieren?',
			'no' => 'Nein',
			'yes' => 'Ja',
			'markSelectedAppsUpdated' => 'Ausgewählte Apps als aktuell markieren',
			'pinToTop' => 'Oben anheften',
			'unpinFromTop' => '„Oben anheften“ aufheben',
			'resetInstallStatusForSelectedAppsQuestion' => 'Installationsstatus für ausgewählte Apps zurücksetzen?',
			'installStatusOfXWillBeResetExplanation' => 'Der Installationsstatus der ausgewählten Apps wird zurückgesetzt. Dies kann hilfreich sein, wenn die in Updatium angezeigte App-Version aufgrund fehlgeschlagener Aktualisierungen oder anderer Probleme falsch ist.',
			'customLinkMessage' => 'Diese Links funktionieren auf Geräten, wo Updatium installiert ist',
			'shareAppConfigLinks' => 'App-Konfiguration als HTML-Link teilen',
			'resetInstallStatus' => 'Installationsstatus zurücksetzen',
			'more' => 'Mehr',
			'removeOutdatedFilter' => 'App-Filter ‚Nicht aktuell‘ entfernen',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Nur nicht aktuelle Apps anzeigen',
			'filter' => 'Filter',
			'filterApps' => 'Apps filtern',
			'filterDays' => 'Filter days',
			'appName' => 'App-Name',
			'author' => 'Herausgebende',
			'upToDateApps' => 'Apps mit aktuellster Version',
			'nonInstalledApps' => 'Nicht installierte Apps',
			'importExport' => 'Import/Export',
			'settings' => 'Einstellungen',
			'exportedTo' => 'Exportiert nach {}',
			'updatiumExport' => 'Updatium-Export',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Ungültige Eingabe',
			'importedX' => '{} importiert',
			'updatiumImport' => 'Updatium-Import',
			'importFromURLList' => 'Aus URL-Liste importieren',
			'searchQuery' => 'Suchanfrage',
			'appURLList' => 'App-URL-Liste',
			'line' => 'Zeile',
			'searchX' => '{} suchen',
			'noResults' => 'Keine Ergebnisse gefunden',
			'importX' => '{} importieren',
			'importedAppsIdDisclaimer' => 'Importierte Apps werden manchmal fälschlicherweise als „Nicht installiert“ angezeigt. Um dies zu beheben, installieren Sie sie erneut über Updatium. Dies hat keine Auswirkungen auf App-Daten. Es betrifft nur URL- und Drittanbieter-Importmethoden.',
			'importErrors' => 'Importfehler',
			'importedXOfYApps' => '{} von {} Apps importiert.',
			'followingURLsHadErrors' => 'Bei folgenden URLs traten Fehler auf:',
			'selectURL' => 'URL auswählen',
			'selectURLs' => 'URLs auswählen',
			'pick' => 'Auswählen',
			'theme' => 'Erscheinungsbild',
			'dark' => 'Dunkel',
			'light' => 'Hell',
			'followSystem' => 'Systemstandard',
			'followSystemThemeExplanation' => 'Das Abrufen des Systemdesigns ist unter Android < 10 nur mit Hilfe von Drittanbieterapps möglich',
			'useBlackTheme' => 'Rein schwarzen Hintergrund verwenden',
			'appSortBy' => 'App sortieren nach',
			'authorName' => 'Herausgebende/Name',
			'nameAuthor' => 'Name/Herausgebende',
			'asAdded' => 'Wie hinzugefügt',
			'appSortOrder' => 'App sortieren nach',
			'ascending' => 'Aufsteigend',
			'descending' => 'Absteigend',
			'bgUpdateCheckInterval' => 'Prüfintervall für Hintergrundaktualisierung',
			'neverManualOnly' => 'Nie – nur manuell',
			'appearance' => 'Aussehen',
			'pinUpdates' => 'Apps mit Aktualisierungen oben anheften',
			'updates' => 'Aktualisierungen',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Quellenspezifisch',
			'appSource' => 'App-Quelle',
			'appSourceHint' => 'App-Quellcode-Repository öffnen',
			'noLogs' => 'Keine Logs',
			'appLogs' => 'App-Logs',
			'appLogsHint' => 'Anwendungsprotokolle anzeigen',
			'close' => 'Schließen',
			'share' => 'Teilen',
			'appNotFound' => 'App nicht gefunden',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'Updatium-Export',
			'pickAnAPK' => 'APK auswählen',
			'appHasMoreThanOnePackage' => '{} verfügt über mehr als ein Paket:',
			'deviceSupportsXArch' => 'Ihr Gerät unterstützt die CPU-Architektur {}.',
			'deviceSupportsFollowingArchs' => 'Ihr Gerät unterstützt die folgenden CPU-Architekturen:',
			'warning' => 'Warnung',
			'sourceIsXButPackageFromYPrompt' => 'Die App-Quelle ist \'{}\', aber das Release-Paket stammt von \'{}\'. Fortfahren?',
			'updatesAvailable' => 'Aktualisierungen verfügbar',
			'updatesAvailableNotifDescription' => 'Benachrichtigt, wenn Aktualisierungen für eine oder mehrere von Updatium überwachte Apps verfügbar sind',
			'noNewUpdates' => 'Keine neuen Aktualisierungen.',
			'xHasAnUpdate' => '{} hat eine Aktualisierung.',
			'appsUpdated' => 'App wurde aktualisiert',
			'appsNotUpdated' => 'Aktualisierung der Apps fehlgeschlagen',
			'appsUpdatedNotifDescription' => 'Benachrichtigt, wenn Aktualisierungen für eine oder mehrere Apps im Hintergrund durchgeführt wurden',
			'xWasUpdatedToY' => '{} wurde auf {} aktualisiert.',
			'xWasNotUpdatedToY' => 'Die Aktualisierung von {} auf {} ist fehlgeschlagen.',
			'errorCheckingUpdates' => 'Fehler beim Prüfen auf Aktualisierungen',
			'errorCheckingUpdatesNotifDescription' => 'Benachrichtigt, wenn die Prüfung der Hintergrundaktualisierung fehlgeschlagen ist',
			'appsRemoved' => 'Apps entfernt',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Benachrichtigt, wenn eine oder mehrere Apps aufgrund von Fehlern beim Laden entfernt wurden',
			'xWasRemovedDueToErrorY' => '{} wurde aufgrund des folgenden Fehlers entfernt: {}',
			'completeAppInstallation' => 'App-Installation abschließen',
			'updatiumMustBeOpenToInstallApps' => 'Updatium muss geöffnet sein, um Apps zu installieren',
			'completeAppInstallationNotifDescription' => 'Aufforderung zu Updatium zurückzukehren, um die Installation einer App abzuschließen',
			'checkingForUpdates' => 'Nach Aktualisierungen suchen',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Vorübergehende Benachrichtigung, die bei der Suche nach Aktualisierungen angezeigt wird',
			'pleaseAllowInstallPerm' => 'Bitte erlauben Sie Updatium die Installation von Apps',
			'trackOnly' => 'Nur nachverfolgen',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Fehler {}',
			'versionCorrectionDisabled' => 'Versionskorrektur deaktiviert (Plugin scheint nicht zu funktionieren)',
			'unknown' => 'Unbekannt',
			'none' => 'Keine',
			'all' => 'Alle',
			'never' => 'Nie',
			'latestVersion' => 'Neueste Version',
			'installedVersionX' => 'Installierte Version: {}',
			'lastUpdateCheckX' => 'Letzte Aktualisierungsprüfung: {}',
			'remove' => 'Entfernen',
			'quickLinks' => 'Schnelllinks',
			'yesMarkUpdated' => 'Ja, als aktualisiert markieren',
			'fdroid' => 'Offizielles F-Droid-Repo',
			'appIdOrName' => 'App-ID oder Name',
			'appId' => 'App-ID',
			'appWithIdOrNameNotFound' => 'Es wurde keine App mit dieser ID oder diesem Namen gefunden',
			'reposHaveMultipleApps' => 'Repos können mehrere Apps enthalten',
			'fdroidThirdPartyRepo' => 'F-Droid-Drittanbieter-Repo',
			'codeberg' => 'Codeberg',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Installieren',
			'markInstalled' => 'Als installiert markieren',
			'update' => 'Aktualisieren',
			'updated' => 'Aktuell',
			'markUpdated' => 'Als aktuell markieren',
			'download' => 'Download',
			'additionalOptions' => 'Zusätzliche Optionen',
			'disableVersionDetection' => 'Versionserkennung deaktivieren',
			'noVersionDetectionExplanation' => 'Diese Option sollte nur für Apps verwendet werden, bei denen die Versionserkennung nicht korrekt funktioniert.',
			'downloadingX' => '{} wird heruntergeladen',
			'downloadX' => '{} herunterladen',
			'downloadedX' => '{} heruntergeladen',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Release-Anhang',
			'downloadNotifDescription' => 'Fortschrittsanzeige beim Herunterladen einer App',
			'noAPKFound' => 'Keine APK gefunden',
			'noVersionDetection' => 'Keine Versionserkennung',
			'categorize' => 'Kategorisieren',
			'categories' => 'Kategorien',
			'category' => 'Kategorie',
			'noCategory' => 'Keine Kategorie',
			'noCategories' => 'Keine Kategorien',
			'categoryDeleteQuestion' => 'Kategorien löschen?',
			'categoryDeleteWarning' => 'Alle Apps in gelöschten Kategorien werden auf nicht kategorisiert gesetzt.',
			'addCategory' => 'Kategorie hinzufügen',
			'label' => 'Bezeichnung',
			'language' => 'Sprache',
			'copiedToClipboard' => 'In die Zwischenablage kopiert',
			'storagePermissionDenied' => 'Speicherberechtigung verweigert',
			'selectedCategorizeWarning' => 'Dadurch werden alle bestehenden Kategorieeinstellungen für die ausgewählten Apps ersetzt.',
			'filterAPKsByRegEx' => 'APKs nach regulärem Ausdruck filtern',
			'removeFromUpdatium' => 'Aus Updatium entfernen',
			'uninstallFromDevice' => 'Vom Gerät deinstallieren',
			'onlyWorksWithNonVersionDetectApps' => 'Funktioniert nur bei Apps mit deaktivierter Versionserkennung.',
			'releaseDateAsVersion' => 'Veröffentlichungsdatum als Version verwenden',
			'releaseTitleAsVersion' => 'Versionstitel als Versionsstring verwenden',
			'releaseDateAsVersionExplanation' => 'Diese Option sollte nur für Apps verwendet werden, bei denen die Versionserkennung nicht korrekt funktioniert, aber ein Veröffentlichungsdatum verfügbar ist.',
			'changes' => 'Änderungen',
			'releaseDate' => 'Veröffentlichungsdatum',
			'importFromURLsInFile' => 'URLs aus Datei importieren (z. B. OPML)',
			'versionDetectionExplanation' => 'Abgleich der Versionsnummer mit der vom Betriebssystem erkannten Version',
			'versionDetection' => 'Versionserkennung',
			'standardVersionDetection' => 'Standardversionserkennung',
			'groupByCategory' => 'Nach Kategorie gruppieren',
			'listView' => 'Listenansicht',
			'gridView' => 'Rasteransicht',
			'autoApkFilterByArch' => 'Nach Möglichkeit versuchen, APKs nach CPU-Architektur zu filtern',
			'autoLinkFilterByArch' => 'Nach Möglichkeit versuchen, APKs nach CPU-Architektur zu filtern',
			'overrideSource' => 'Quelle überschreiben',
			'dontShowAgain' => 'Nicht noch einmal anzeigen',
			'dontShowTrackOnlyWarnings' => 'Warnung für ‚Nur nachverfolgen‘ nicht anzeigen',
			'dontShowAPKOriginWarnings' => 'Warnung für APK-Herkunft nicht anzeigen',
			'moveNonInstalledAppsToBottom' => 'Nicht installierte Apps ans Ende der App-Ansicht verschieben',
			'gitlabPATLabel' => 'Persönlicher Zugangstoken für GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Weitere Informationen',
			'requiresCredentialsInSettings' => '{}: Benötigt zusätzliche Anmeldedaten (in den Einstellungen)',
			'checkOnStart' => 'Einmalig beim Start auf Aktualisierungen prüfen',
			'safeMode' => 'Sicherer Modus',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'App hinzufügen ist im sicheren Modus deaktiviert',
			'tryInferAppIdFromCode' => 'Versuchen, die App-ID aus dem Quellcode zu ermitteln',
			'removeOnExternalUninstall' => 'Extern deinstallierte Apps automatisch entfernen',
			'pickHighestVersionCode' => 'Automatische Auswahl des APK mit höchstem Versionscode',
			'checkUpdateOnDetailPage' => 'Nach Aktualisierungen suchen, wenn eine App-Detailseite geöffnet wird',
			'disablePageTransitions' => 'Animationen für Seitenübergänge deaktivieren',
			'reversePageTransitions' => 'Umgekehrte Animationen für Seitenübergänge',
			'minStarCount' => 'Minimale Anzahl von Sternen',
			'addInfoBelow' => 'Diese Information unten hinzufügen.',
			'addInfoInSettings' => 'Diese Information in den Einstellungen hinzufügen.',
			'githubSourceNote' => 'Die GitHub-Ratenbegrenzung kann mit einem API-Schlüssel umgangen werden.',
			'sortByLastLinkSegment' => 'Nur nach dem letzten Teil des Links sortieren',
			'filterReleaseNotesByRegEx' => 'Versionshinweise nach regulärem Ausdruck\nfiltern',
			'customLinkFilterRegex' => 'Benutzerdefinierter APK-Linkfilter durch regulären Ausdruck (Standard \'.apk$\')',
			'appsPossiblyUpdated' => 'App-Aktualisierungen wurden versucht',
			'appsPossiblyUpdatedNotifDescription' => 'Benachrichtigt, dass möglicherweise eine oder mehrere Apps im Hintergrund aktualisiert wurden',
			'xWasPossiblyUpdatedToY' => '{} wurde möglicherweise auf Version {} aktualisiert.',
			'enableBackgroundUpdates' => 'Hintergrundaktualisierungen aktivieren',
			'backgroundUpdateReqsExplanation' => 'Die Hintergrundaktualisierung ist unter Umständen nicht für alle Apps möglich.',
			'backgroundUpdateLimitsExplanation' => 'Der Erfolg einer Hintergrundinstallation kann nur festgestellt werden, wenn Updatium geöffnet wird.',
			'verifyLatestTag' => '„Latest“-Tag überprüfen',
			'intermediateLinkRegex' => 'Filter für einen „Zwischen“-Link, der zuerst besucht werden soll',
			'filterByLinkText' => 'Links durch Linktext filtern',
			'matchLinksOutsideATags' => 'Links außerhalb von <a>-Tags anpassen',
			'intermediateLinkNotFound' => '„Zwischen“-Link nicht gefunden',
			'intermediateLink' => '„Zwischen“-Link',
			'exemptFromBackgroundUpdates' => 'Von Hintergrundaktualisierungen (falls aktiviert) ausschließen',
			'bgUpdatesOnWiFiOnly' => 'Hintergrundaktualisierungen nur im WLAN ausführen',
			'bgUpdatesWhileChargingOnly' => 'Hintergrundaktualisierungen nur ausführen, während das Gerät geladen wird',
			'autoSelectHighestVersionCode' => 'Automatisch höchste APK-Version auswählen',
			'versionExtractionRegEx' => 'Versionsextraktion per RegEx',
			'trimVersionString' => 'Versionszeichenfolge mit RegEx kürzen',
			'matchGroupToUseForX' => 'Zu verwendende Abgleichsgruppe für\n„{}“',
			'matchGroupToUse' => 'Zu verwendende Gruppe abgleichen',
			'highlightTouchTargets' => 'Weniger offensichtliche Touch-Ziele hervorheben',
			'pickExportDir' => 'Export-Verzeichnis wählen',
			'autoExportOnChanges' => 'Automatischer Export bei Änderung(en)',
			'includeSettings' => 'Einstellungen einbeziehen',
			'filterVersionsByRegEx' => 'Versionen nach regulären Ausdrücken filtern',
			'trySelectingSuggestedVersionCode' => 'Versuchen, den vorgeschlagenen APK-Versionscode auszuwählen',
			'dontSortReleasesList' => 'Releases-Sortierung der API beibehalten',
			'reverseSort' => 'Umgekehrtes Sortieren',
			'takeFirstLink' => 'Ersten Link verwenden',
			'skipSort' => 'Sortieren überspringen',
			'debugMenu' => 'Debug-Menü',
			'bgTaskStarted' => 'Hintergrundaufgabe gestartet – Logs prüfen.',
			'runBgCheckNow' => 'Hintergrundaktualisierungsprüfung jetzt durchführen',
			'versionExtractWholePage' => 'Versionsextraktion per RegEx auf die gesamte Seite anwenden',
			'installing' => 'Installieren',
			'skipUpdateNotifications' => 'Update-Benachrichtigungen überspringen',
			'updatesAvailableNotifChannel' => 'Aktualisierungen verfügbar',
			'appsUpdatedNotifChannel' => 'Apps aktualisiert',
			'appsPossiblyUpdatedNotifChannel' => 'App-Aktualisierungen wurden versucht',
			'errorCheckingUpdatesNotifChannel' => 'Fehler beim Prüfen auf Aktualisierungen',
			'appsRemovedNotifChannel' => 'Apps entfernt',
			'downloadingXNotifChannel' => '{} herunterladen',
			'completeAppInstallationNotifChannel' => 'App-Installation abschließen',
			'checkingForUpdatesNotifChannel' => 'Nach Aktualisierungen suchen',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Nur mit „Nur nachverfolgen“ markierte und installierte Apps auf Aktualisierungen prüfen',
			'supportFixedAPKURL' => 'Unterstützung von festen APK-URLs',
			'selectX' => '{} wählen',
			'parallelDownloads' => 'Parallele Downloads erlauben',
			'useShizuku' => 'Shizuku oder Sui zur Installation verwenden',
			'shizukuBinderNotFound' => 'Kompatibler Shizuku-Dienst wurde nicht gefunden',
			'shizukuOld' => 'Veraltete Shizuku-Version (< 11) – bitte aktualisieren Sie sie',
			'shizukuOldAndroidWithADB' => 'Shizuku läuft auf Android < 8.1 mit ADB – aktualisieren Sie die Android-Version oder verwenden Sie stattdessen Sui',
			'shizukuPretendToBeGooglePlay' => '(Mittels Shizuku) Google Play als Installationsquelle registrieren',
			'useSystemFont' => 'Systemschriftart verwenden',
			'useVersionCodeAsOSVersion' => 'Versionscode (versionCode) als vom Betriebssystem erkannte Version verwenden',
			'requestHeader' => 'Kopfzeile („Header“) anfordern',
			'useLatestAssetDateAsReleaseDate' => 'Letzten Upload eines Release-Anhangs als Veröffentlichungsdatum verwenden',
			'defaultPseudoVersioningMethod' => 'Standardmäßiges Verfahren zur Pseudo-Versionierung',
			'partialAPKHash' => 'Partieller APK-Hash',
			'APKLinkHash' => 'APK-Link-Hash',
			'directAPKLink' => 'Direkter APK-Link',
			'pseudoVersionInUse' => 'Es werden Pseudoversionen verwendet',
			'installedVersion' => 'Installiert',
			'installed' => 'Installiert',
			'notInstalledApps' => 'Nicht installiert',
			'latest' => 'Neueste Version',
			'invertRegEx' => 'Regulären Ausdruck invertieren',
			'note' => 'Hinweis',
			'selfHostedNote' => 'Das „{}“-Drop-down-Menü kann verwendet werden, um selbst gehostete/angepasste Instanzen einer beliebigen Quelle zu erreichen.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'Die APK konnte nicht gelesen werden (inkompatibler oder unfertiger Download)',
			'beforeNewInstallsShareToAppVerifier' => 'Neue Apps mit AppVerifier teilen (falls verfügbar)',
			'appVerifierInstructionToast' => 'Teile die Daten mit AppVerifier und kehre im Anschluss hierher zurück.',
			'wiki' => 'Hilfe/Wiki',
			'wikiHint' => 'Updatium-Wiki-Dokumentation öffnen',
			'allowInsecure' => 'Unsichere HTTP-Anfragen zulassen',
			'stayOneVersionBehind' => 'Eine Version hinter der neuesten Version bleiben',
			'useFirstApkOfVersion' => 'Automatische Auswahl der ersten von mehreren APKs',
			'refreshBeforeDownload' => 'App-Details vor dem Download aktualisieren',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (China)',
			'name' => 'Name',
			'smartname' => 'Name (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sortierverfahren',
			'welcome' => 'Willkommen',
			'batteryOptimizationNote' => 'Beachten Sie, dass Downloads im Hintergrund möglicherweise zuverlässiger funktionieren, wenn Sie die Batterieoptimierung des Betriebssystems für Updatium deaktivieren.',
			'fileDeletionError' => 'Die Datei konnte nicht gelöscht werden (versuchen Sie, sie manuell zu löschen und versuchen Sie es dann erneut): "{}"',
			'foregroundService' => 'Updatium-Vordergrunddienst',
			'foregroundServiceExplanation' => 'Aktualisierungsprüfung im Vordergrund durchführen (zuverlässiger, verbraucht mehr Strom)',
			'fgServiceNotice' => 'Diese Benachrichtigung ist für die Prüfung von Updates im Hintergrund erforderlich (sie kann in den Betriebssystemeinstellungen ausgeblendet werden)',
			'excludeSecrets' => 'Geheimnisse ausschließen',
			'GHReqPrefix' => 'omeritzics/Updatium\'-Instanz für GitHub-Anfragen',
			'includeZips' => 'ZIP-Dateien einbeziehen',
			'zippedApkFilterRegEx' => 'APKs in ZIP filtern',
			'multipleSigners' => 'Mehrere Zeichen',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'App entfernen?', other: 'Apps entfernen?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Zu viele Anfragen (Rate begrenzt) – versuchen Sie es in {count} Minute erneut', other: 'Zu viele Anfragen (Rate begrenzt) – versuchen Sie es in {count} Minuten erneut', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Bei der Aktualisierungsprüfung im Hintergrund wurde ein {error} festgestellt, eine erneute Prüfung wird in {count} Minute geplant', other: 'Bei der Aktualisierungsprüfung im Hintergrund wurde ein {error} festgestellt, eine erneute Prüfung wird in {count} Minuten geplant', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Die Aktualisierungsprüfung fand {count} Aktualisierung – benachrichtigt, falls erforderlich', other: 'Die Aktualisierungsprüfung fand {count} Aktualisierungen – benachrichtigt, falls erforderlich', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{count} App', other: '{count} Apps', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{count} Minute', other: '{count} Minuten', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{count} Stunde', other: '{count} Stunden', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{count} Tag', other: '{count} Tage', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{n} Log gelöscht (vorher = {before}, nachher = {after})', other: '{n} Logs gelöscht (vorher = {before}, nachher = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{app} und 1 weitere App können aktualisiert werden.', other: '{app} und {count} weitere Apps können aktualisiert werden.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{app} und 1 weitere App wurden aktualisiert.', other: '{app} und {count} weitere Apps wurden aktualisiert.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Die Aktualisierung von {app} und 1 weiteren App ist fehlgeschlagen.', other: 'Die Aktualisierung von {app} und {count} weiteren Apps ist fehlgeschlagen.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{app} und 1 weitere App wurden möglicherweise aktualisiert.', other: '{app} und {count} weitere Apps wurden möglicherweise aktualisiert.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('de'))(n, one: 'Zertifikat Hash', other: 'Zertifikat Hashes', ), 
			'securityDisclaimerTitle' => 'Sicherheits- und Rechtlicher Haftungsausschluss',
			'license' => 'Lizenz',
			'licenseText' => 'Diese Anwendung wird unter der GPL v3 Lizenz verteilt.',
			'disclaimer' => 'Haftungsausschluss',
			'disclaimerText' => 'Diese Anwendung verteilt, hostet oder überprüft keine der externen Anwendungen. Der Benutzer trägt die volle Verantwortung für die Sicherheit und Legalität jeder Software, die über dieses Tool installiert wird.\n\nhttps://github.com/omeritzics/Updatium ist der einzige offizielle Ort, um Updatium herunterzuladen - es wird dringend davon abgeraten, es woanders herunterzuladen, da das Herunterladen von inoffiziellen Quellen unsicher ist.',
			'privacy' => 'Datenschutz',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Akzeptieren und fortfahren',
			'decline' => 'Ablehnen',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Gefällt Ihnen Updatium?',
			'githubStarPromptContent' => 'Updatium ist ein freiwilliges Open-Source-Community-Projekt, das in meiner Freizeit entwickelt wird. Wenn Sie das Projekt unterstützen möchten, erwägen Sie bitte, ihm auf GitHub einen Stern zu geben, um uns zu helfen, mehr Nutzer und Mitwirkende zu erreichen. Sie werden darüber nicht mehr belästigt. Vielen Dank im Voraus! :)',
			'githubStarPromptStar' => 'Stern geben',
			'githubStarPromptDontShowAgain' => 'Nicht mehr anzeigen',
			'sourceCode' => 'Quellcode',
			'developedBy' => 'Entwickelt von',
			'appDescription' => 'Ein anpassbarer Android-App-Katalog, der es Ihnen ermöglicht, Ihre Apps direkt aus ihren APK-Quellen zu aktualisieren.',
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
