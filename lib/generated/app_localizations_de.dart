// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String invalidURLForSource(Object p0) {
    return 'Keine gültige $p0 App-URL';
  }

  @override
  String get noReleaseFound => 'Keine passende Version gefunden';

  @override
  String get noVersionFound => 'Release-Version nicht ermittelbar';

  @override
  String get urlMatchesNoSource => 'URL stimmt mit keiner bekannten Quelle überein';

  @override
  String get cantInstallOlderVersion => 'Installation einer älteren App-Version nicht möglich';

  @override
  String get appIdMismatch => 'Die heruntergeladene Paket-ID stimmt nicht mit der vorhandenen App-ID überein';

  @override
  String get functionNotImplemented => 'Diese Klasse hat diese Funktion nicht implementiert';

  @override
  String get placeholder => 'Platzhalter';

  @override
  String get someErrors => 'Es traten einige Fehler auf';

  @override
  String get unexpectedError => 'Unerwarteter Fehler';

  @override
  String get ok => 'OK';

  @override
  String get and => 'und';

  @override
  String get githubPATLabel => 'Persönlicher Zugangstoken für GitHub (erhöht das Ratenlimit)';

  @override
  String get includePrereleases => 'Vorabversionen einbeziehen';

  @override
  String get fallbackToOlderReleases => 'Fallback auf ältere Versionen';

  @override
  String get filterReleaseTitlesByRegEx => 'Release-Titel nach regulärem Ausdruck\nfiltern';

  @override
  String get invalidRegEx => 'Ungültiger regulärer Ausdruck';

  @override
  String get noDescription => 'Keine Beschreibung';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get continue => 'Weiter';

  @override
  String get requiredInBrackets => '(notwendig)';

  @override
  String get dropdownNoOptsError => 'FEHLER: DROPDOWN MUSS MINDESTENS EINE OPTION HABEN';

  @override
  String get color => 'Farbe';

  @override
  String get standard => 'Standard';

  @override
  String get custom => 'Benutzerdefiniert';

  @override
  String get useMaterialYou => 'Material You Farben verwenden';

  @override
  String get githubStarredRepos => 'GitHub Starred Repos';

  @override
  String get uname => 'Benutzername';

  @override
  String get wrongArgNum => 'Falsche Anzahl von Argumenten (Parametern) übermittelt';

  @override
  String xIsTrackOnly(Object p0) {
    return '$p0 ist nur zur Nachverfolgung';
  }

  @override
  String get source => 'Quelle';

  @override
  String get app => 'App';

  @override
  String get appsFromSourceAreTrackOnly => 'Apps aus dieser Quelle sind nur zur Nachverfolgung.';

  @override
  String get youPickedTrackOnly => 'Sie haben die Option „Nur nachverfolgen“ gewählt.';

  @override
  String get trackOnlyAppDescription => 'Die App wird auf neue verfügbare Versionen überwacht, aber Updatium wird sie nicht herunterladen oder installieren.';

  @override
  String get cancelled => 'Abgebrochen';

  @override
  String get appAlreadyAdded => 'App bereits hinzugefügt';

  @override
  String get alreadyUpToDateQuestion => 'App bereits auf dem neuesten Stand?';

  @override
  String get addApp => 'App hinzufügen';

  @override
  String get appSourceURL => 'Quell-URL der App';

  @override
  String get error => 'Fehler';

  @override
  String get add => 'Hinzufügen';

  @override
  String get searchSomeSourcesLabel => 'Suche (nur für bestimmte Quellen)';

  @override
  String get search => 'Suchen';

  @override
  String additionalOptsFor(Object p0) {
    return 'Zusatzoptionen für $p0';
  }

  @override
  String get supportedSources => 'Unterstützte Quellen';

  @override
  String get trackOnlyInBrackets => '(Nur nachverfolgen)';

  @override
  String get searchableInBrackets => '(durchsuchbar)';

  @override
  String get appsString => 'Apps';

  @override
  String get noApps => 'Willkommen!';

  @override
  String get noAppsSubtext => 'Sie können Ihre erste App hinzufügen, indem Sie unten auf \'App hinzufügen\' tippen.';

  @override
  String get noAppsForFilter => 'Keine Apps für ausgewählten Filter';

  @override
  String byX(Object p0) {
    return 'Von $p0';
  }

  @override
  String percentProgress(Object p0) {
    return 'Fortschritt: $p0%';
  }

  @override
  String get pleaseWait => 'Bitte warten';

  @override
  String get updateAvailable => 'Aktualisierung verfügbar';

  @override
  String get notInstalled => 'Nicht installiert';

  @override
  String get pseudoVersion => 'Pseudoversion';

  @override
  String get selectAll => 'Alle auswählen';

  @override
  String deselectX(Object p0) {
    return '$p0 abgewählt';
  }

  @override
  String xWillBeRemovedButRemainInstalled(Object p0) {
    return '$p0 wird aus Updatium entfernt, bleibt aber auf dem Gerät installiert.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Ausgewählte Apps entfernen?';

  @override
  String get removeSelectedApps => 'Ausgewählte Apps entfernen';

  @override
  String updateX(Object p0) {
    return '$p0 aktualisieren';
  }

  @override
  String installX(Object p0) {
    return '$p0 installieren';
  }

  @override
  String markXTrackOnlyAsUpdated(Object p0) {
    return 'Markiere $p0\n(Nur nachverfolgen)\nals aktualisiert';
  }

  @override
  String changeX(Object p0) {
    return '$p0 ändern';
  }

  @override
  String get installUpdateApps => 'Apps installieren/aktualisieren';

  @override
  String get installUpdateSelectedApps => 'Ausgewählte Apps installieren/aktualisieren';

  @override
  String markXSelectedAppsAsUpdated(Object p0) {
    return '$p0 ausgewählte Apps als aktuell markieren?';
  }

  @override
  String get no => 'Nein';

  @override
  String get yes => 'Ja';

  @override
  String get markSelectedAppsUpdated => 'Ausgewählte Apps als aktuell markieren';

  @override
  String get pinToTop => 'Oben anheften';

  @override
  String get unpinFromTop => '„Oben anheften“ aufheben';

  @override
  String get resetInstallStatusForSelectedAppsQuestion => 'Installationsstatus für ausgewählte Apps zurücksetzen?';

  @override
  String get installStatusOfXWillBeResetExplanation => 'Der Installationsstatus der ausgewählten Apps wird zurückgesetzt. Dies kann hilfreich sein, wenn die in Updatium angezeigte App-Version aufgrund fehlgeschlagener Aktualisierungen oder anderer Probleme falsch ist.';

  @override
  String get customLinkMessage => 'Diese Links funktionieren auf Geräten, wo Updatium installiert ist';

  @override
  String get shareAppConfigLinks => 'App-Konfiguration als HTML-Link teilen';

  @override
  String get shareSelectedAppURLs => 'Ausgewählte App-URLs teilen';

  @override
  String get resetInstallStatus => 'Installationsstatus zurücksetzen';

  @override
  String get more => 'Mehr';

  @override
  String get removeOutdatedFilter => 'App-Filter ‚Nicht aktuell‘ entfernen';

  @override
  String get showOutdatedOnly => 'Nur nicht aktuelle Apps anzeigen';

  @override
  String get filter => 'Filter';

  @override
  String get filterApps => 'Apps filtern';

  @override
  String get appName => 'App-Name';

  @override
  String get author => 'Herausgebende';

  @override
  String get upToDateApps => 'Apps mit aktuellster Version';

  @override
  String get nonInstalledApps => 'Nicht installierte Apps';

  @override
  String get importExport => 'Import/Export';

  @override
  String get settings => 'Einstellungen';

  @override
  String exportedTo(Object p0) {
    return 'Exportiert nach $p0';
  }

  @override
  String get updatiumExport => 'Updatium-Export';

  @override
  String get invalidInput => 'Ungültige Eingabe';

  @override
  String importedX(Object p0) {
    return '$p0 importiert';
  }

  @override
  String get updatiumImport => 'Updatium-Import';

  @override
  String get importFromURLList => 'Aus URL-Liste importieren';

  @override
  String get searchQuery => 'Suchanfrage';

  @override
  String get appURLList => 'App-URL-Liste';

  @override
  String get line => 'Zeile';

  @override
  String searchX(Object p0) {
    return '$p0 suchen';
  }

  @override
  String get noResults => 'Keine Ergebnisse gefunden';

  @override
  String importX(Object p0) {
    return '$p0 importieren';
  }

  @override
  String get importedAppsIdDisclaimer => 'Importierte Apps werden manchmal fälschlicherweise als „Nicht installiert“ angezeigt. Um dies zu beheben, installieren Sie sie erneut über Updatium. Dies hat keine Auswirkungen auf App-Daten. Es betrifft nur URL- und Drittanbieter-Importmethoden.';

  @override
  String get importErrors => 'Importfehler';

  @override
  String importedXOfYApps(Object p0, Object p1) {
    return '$p0 von $p1 Apps importiert.';
  }

  @override
  String get followingURLsHadErrors => 'Bei folgenden URLs traten Fehler auf:';

  @override
  String get selectURL => 'URL auswählen';

  @override
  String get selectURLs => 'URLs auswählen';

  @override
  String get pick => 'Auswählen';

  @override
  String get theme => 'Erscheinungsbild';

  @override
  String get dark => 'Dunkel';

  @override
  String get light => 'Hell';

  @override
  String get followSystem => 'Systemstandard';

  @override
  String get followSystemThemeExplanation => 'Das Abrufen des Systemdesigns ist unter Android < 10 nur mit Hilfe von Drittanbieterapps möglich';

  @override
  String get useBlackTheme => 'Rein schwarzen Hintergrund verwenden';

  @override
  String get appSortBy => 'App sortieren nach';

  @override
  String get authorName => 'Herausgebende/Name';

  @override
  String get nameAuthor => 'Name/Herausgebende';

  @override
  String get asAdded => 'Wie hinzugefügt';

  @override
  String get appSortOrder => 'App sortieren nach';

  @override
  String get ascending => 'Aufsteigend';

  @override
  String get descending => 'Absteigend';

  @override
  String get bgUpdateCheckInterval => 'Prüfintervall für Hintergrundaktualisierung';

  @override
  String get neverManualOnly => 'Nie – nur manuell';

  @override
  String get appearance => 'Aussehen';

  @override
  String get pinUpdates => 'Apps mit Aktualisierungen oben anheften';

  @override
  String get updates => 'Aktualisierungen';

  @override
  String get sourceSpecific => 'Quellenspezifisch';

  @override
  String get appSource => 'App-Quelle';

  @override
  String get noLogs => 'Keine Logs';

  @override
  String get appLogs => 'App-Logs';

  @override
  String get close => 'Schließen';

  @override
  String get share => 'Teilen';

  @override
  String get appNotFound => 'App nicht gefunden';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'Updatium-Export';

  @override
  String get pickAnAPK => 'APK auswählen';

  @override
  String appHasMoreThanOnePackage(Object p0) {
    return '$p0 verfügt über mehr als ein Paket:';
  }

  @override
  String deviceSupportsXArch(Object p0) {
    return 'Ihr Gerät unterstützt die CPU-Architektur $p0.';
  }

  @override
  String get deviceSupportsFollowingArchs => 'Ihr Gerät unterstützt die folgenden CPU-Architekturen:';

  @override
  String get warning => 'Warnung';

  @override
  String sourceIsXButPackageFromYPrompt(Object p0, Object p1) {
    return 'Die App-Quelle ist \'$p0\', aber das Release-Paket stammt von \'$p1\'. Fortfahren?';
  }

  @override
  String get updatesAvailable => 'Aktualisierungen verfügbar';

  @override
  String get updatesAvailableNotifDescription => 'Benachrichtigt, wenn Aktualisierungen für eine oder mehrere von Updatium überwachte Apps verfügbar sind';

  @override
  String get noNewUpdates => 'Keine neuen Aktualisierungen.';

  @override
  String xHasAnUpdate(Object p0) {
    return '$p0 hat eine Aktualisierung.';
  }

  @override
  String get appsUpdated => 'App wurde aktualisiert';

  @override
  String get appsNotUpdated => 'Aktualisierung der Apps fehlgeschlagen';

  @override
  String get appsUpdatedNotifDescription => 'Benachrichtigt, wenn Aktualisierungen für eine oder mehrere Apps im Hintergrund durchgeführt wurden';

  @override
  String xWasUpdatedToY(Object p0, Object p1) {
    return '$p0 wurde auf $p1 aktualisiert.';
  }

  @override
  String xWasNotUpdatedToY(Object p0, Object p1) {
    return 'Die Aktualisierung von $p0 auf $p1 ist fehlgeschlagen.';
  }

  @override
  String get errorCheckingUpdates => 'Fehler beim Prüfen auf Aktualisierungen';

  @override
  String get errorCheckingUpdatesNotifDescription => 'Benachrichtigt, wenn die Prüfung der Hintergrundaktualisierung fehlgeschlagen ist';

  @override
  String get appsRemoved => 'Apps entfernt';

  @override
  String get appsRemovedNotifDescription => 'Benachrichtigt, wenn eine oder mehrere Apps aufgrund von Fehlern beim Laden entfernt wurden';

  @override
  String xWasRemovedDueToErrorY(Object p0, Object p1) {
    return '$p0 wurde aufgrund des folgenden Fehlers entfernt: $p1';
  }

  @override
  String get completeAppInstallation => 'App-Installation abschließen';

  @override
  String get updatiumMustBeOpenToInstallApps => 'Updatium muss geöffnet sein, um Apps zu installieren';

  @override
  String get completeAppInstallationNotifDescription => 'Aufforderung zu Updatium zurückzukehren, um die Installation einer App abzuschließen';

  @override
  String get checkingForUpdates => 'Nach Aktualisierungen suchen';

  @override
  String get checkingForUpdatesNotifDescription => 'Vorübergehende Benachrichtigung, die bei der Suche nach Aktualisierungen angezeigt wird';

  @override
  String get pleaseAllowInstallPerm => 'Bitte erlauben Sie Updatium die Installation von Apps';

  @override
  String get trackOnly => 'Nur nachverfolgen';

  @override
  String errorWithHttpStatusCode(Object p0) {
    return 'Fehler $p0';
  }

  @override
  String get versionCorrectionDisabled => 'Versionskorrektur deaktiviert (Plugin scheint nicht zu funktionieren)';

  @override
  String get unknown => 'Unbekannt';

  @override
  String get none => 'Keine';

  @override
  String get all => 'Alle';

  @override
  String get never => 'Nie';

  @override
  String latestVersionX(Object p0) {
    return 'Neueste Version: $p0';
  }

  @override
  String installedVersionX(Object p0) {
    return 'Installierte Version: $p0';
  }

  @override
  String lastUpdateCheckX(Object p0) {
    return 'Letzte Aktualisierungsprüfung: $p0';
  }

  @override
  String get remove => 'Entfernen';

  @override
  String get yesMarkUpdated => 'Ja, als aktualisiert markieren';

  @override
  String get fdroid => 'Offizielles F-Droid-Repo';

  @override
  String get appIdOrName => 'App-ID oder Name';

  @override
  String get appId => 'App-ID';

  @override
  String get appWithIdOrNameNotFound => 'Es wurde keine App mit dieser ID oder diesem Namen gefunden';

  @override
  String get reposHaveMultipleApps => 'Repos können mehrere Apps enthalten';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid-Drittanbieter-Repo';

  @override
  String get install => 'Installieren';

  @override
  String get markInstalled => 'Als installiert markieren';

  @override
  String get update => 'Aktualisieren';

  @override
  String get updated => 'Aktuell';

  @override
  String get markUpdated => 'Als aktuell markieren';

  @override
  String get additionalOptions => 'Zusätzliche Optionen';

  @override
  String get disableVersionDetection => 'Versionserkennung deaktivieren';

  @override
  String get noVersionDetectionExplanation => 'Diese Option sollte nur für Apps verwendet werden, bei denen die Versionserkennung nicht korrekt funktioniert.';

  @override
  String downloadingX(Object p0) {
    return '$p0 wird heruntergeladen';
  }

  @override
  String downloadX(Object p0) {
    return '$p0 herunterladen';
  }

  @override
  String downloadedX(Object p0) {
    return '$p0 heruntergeladen';
  }

  @override
  String get releaseAsset => 'Release-Anhang';

  @override
  String get downloadNotifDescription => 'Fortschrittsanzeige beim Herunterladen einer App';

  @override
  String get noAPKFound => 'Keine APK gefunden';

  @override
  String get noVersionDetection => 'Keine Versionserkennung';

  @override
  String get categorize => 'Kategorisieren';

  @override
  String get categories => 'Kategorien';

  @override
  String get category => 'Kategorie';

  @override
  String get noCategory => 'Keine Kategorie';

  @override
  String get noCategories => 'Keine Kategorien';

  @override
  String get deleteCategoriesQuestion => 'Kategorien löschen?';

  @override
  String get categoryDeleteWarning => 'Alle Apps in gelöschten Kategorien werden auf nicht kategorisiert gesetzt.';

  @override
  String get addCategory => 'Kategorie hinzufügen';

  @override
  String get label => 'Bezeichnung';

  @override
  String get language => 'Sprache';

  @override
  String get copiedToClipboard => 'In die Zwischenablage kopiert';

  @override
  String get storagePermissionDenied => 'Speicherberechtigung verweigert';

  @override
  String get selectedCategorizeWarning => 'Dadurch werden alle bestehenden Kategorieeinstellungen für die ausgewählten Apps ersetzt.';

  @override
  String get filterAPKsByRegEx => 'APKs nach regulärem Ausdruck filtern';

  @override
  String get removeFromUpdatium => 'Aus Updatium entfernen';

  @override
  String get uninstallFromDevice => 'Vom Gerät deinstallieren';

  @override
  String get onlyWorksWithNonVersionDetectApps => 'Funktioniert nur bei Apps mit deaktivierter Versionserkennung.';

  @override
  String get releaseDateAsVersion => 'Veröffentlichungsdatum als Version verwenden';

  @override
  String get releaseTitleAsVersion => 'Versionstitel als Versionsstring verwenden';

  @override
  String get releaseDateAsVersionExplanation => 'Diese Option sollte nur für Apps verwendet werden, bei denen die Versionserkennung nicht korrekt funktioniert, aber ein Veröffentlichungsdatum verfügbar ist.';

  @override
  String get changes => 'Änderungen';

  @override
  String get releaseDate => 'Veröffentlichungsdatum';

  @override
  String get importFromURLsInFile => 'URLs aus Datei importieren (z. B. OPML)';

  @override
  String get versionDetectionExplanation => 'Abgleich der Versionsnummer mit der vom Betriebssystem erkannten Version';

  @override
  String get versionDetection => 'Versionserkennung';

  @override
  String get standardVersionDetection => 'Standardversionserkennung';

  @override
  String get groupByCategory => 'Nach Kategorie gruppieren';

  @override
  String get listView => 'Listenansicht';

  @override
  String get gridView => 'Rasteransicht';

  @override
  String get autoApkFilterByArch => 'Nach Möglichkeit versuchen, APKs nach CPU-Architektur zu filtern';

  @override
  String get autoLinkFilterByArch => 'Nach Möglichkeit versuchen, APKs nach CPU-Architektur zu filtern';

  @override
  String get overrideSource => 'Quelle überschreiben';

  @override
  String get dontShowAgain => 'Nicht noch einmal anzeigen';

  @override
  String get dontShowTrackOnlyWarnings => 'Warnung für ‚Nur nachverfolgen‘ nicht anzeigen';

  @override
  String get dontShowAPKOriginWarnings => 'Warnung für APK-Herkunft nicht anzeigen';

  @override
  String get moveNonInstalledAppsToBottom => 'Nicht installierte Apps ans Ende der App-Ansicht verschieben';

  @override
  String get hideNonInstalledApps => 'Verstecke nicht installierte Apps';

  @override
  String get gitlabPATLabel => 'Persönlicher Zugangstoken für GitLab';

  @override
  String get about => 'Weitere Informationen';

  @override
  String requiresCredentialsInSettings(Object p0) {
    return '$p0: Benötigt zusätzliche Anmeldedaten (in den Einstellungen)';
  }

  @override
  String get checkOnStart => 'Einmalig beim Start auf Aktualisierungen prüfen';

  @override
  String get tryInferAppIdFromCode => 'Versuchen, die App-ID aus dem Quellcode zu ermitteln';

  @override
  String get removeOnExternalUninstall => 'Extern deinstallierte Apps automatisch entfernen';

  @override
  String get pickHighestVersionCode => 'Automatische Auswahl des APK mit höchstem Versionscode';

  @override
  String get checkUpdateOnDetailPage => 'Nach Aktualisierungen suchen, wenn eine App-Detailseite geöffnet wird';

  @override
  String get disablePageTransitions => 'Animationen für Seitenübergänge deaktivieren';

  @override
  String get reversePageTransitions => 'Umgekehrte Animationen für Seitenübergänge';

  @override
  String get minStarCount => 'Minimale Anzahl von Sternen';

  @override
  String get addInfoBelow => 'Diese Information unten hinzufügen.';

  @override
  String get addInfoInSettings => 'Diese Information in den Einstellungen hinzufügen.';

  @override
  String get githubSourceNote => 'Die GitHub-Ratenbegrenzung kann mit einem API-Schlüssel umgangen werden.';

  @override
  String get sortByLastLinkSegment => 'Nur nach dem letzten Teil des Links sortieren';

  @override
  String get filterReleaseNotesByRegEx => 'Versionshinweise nach regulärem Ausdruck\nfiltern';

  @override
  String get customLinkFilterRegex => 'Benutzerdefinierter APK-Linkfilter durch regulären Ausdruck (Standard \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'App-Aktualisierungen wurden versucht';

  @override
  String get appsPossiblyUpdatedNotifDescription => 'Benachrichtigt, dass möglicherweise eine oder mehrere Apps im Hintergrund aktualisiert wurden';

  @override
  String xWasPossiblyUpdatedToY(Object p0, Object p1) {
    return '$p0 wurde möglicherweise auf Version $p1 aktualisiert.';
  }

  @override
  String get enableBackgroundUpdates => 'Hintergrundaktualisierungen aktivieren';

  @override
  String get backgroundUpdateReqsExplanation => 'Die Hintergrundaktualisierung ist unter Umständen nicht für alle Apps möglich.';

  @override
  String get backgroundUpdateLimitsExplanation => 'Der Erfolg einer Hintergrundinstallation kann nur festgestellt werden, wenn Updatium geöffnet wird.';

  @override
  String get verifyLatestTag => '„Latest“-Tag überprüfen';

  @override
  String get intermediateLinkRegex => 'Filter für einen „Zwischen“-Link, der zuerst besucht werden soll';

  @override
  String get filterByLinkText => 'Links durch Linktext filtern';

  @override
  String get matchLinksOutsideATags => 'Links außerhalb von <a>-Tags anpassen';

  @override
  String get intermediateLinkNotFound => '„Zwischen“-Link nicht gefunden';

  @override
  String get intermediateLink => '„Zwischen“-Link';

  @override
  String get exemptFromBackgroundUpdates => 'Von Hintergrundaktualisierungen (falls aktiviert) ausschließen';

  @override
  String get bgUpdatesOnWiFiOnly => 'Hintergrundaktualisierungen nur im WLAN ausführen';

  @override
  String get bgUpdatesWhileChargingOnly => 'Hintergrundaktualisierungen nur ausführen, während das Gerät geladen wird';

  @override
  String get autoSelectHighestVersionCode => 'Automatisch höchste APK-Version auswählen';

  @override
  String get versionExtractionRegEx => 'Versionsextraktion per RegEx';

  @override
  String get trimVersionString => 'Versionszeichenfolge mit RegEx kürzen';

  @override
  String matchGroupToUseForX(Object p0) {
    return 'Zu verwendende Abgleichsgruppe für\n„$p0“';
  }

  @override
  String get matchGroupToUse => 'Zu verwendende Gruppe abgleichen';

  @override
  String get highlightTouchTargets => 'Weniger offensichtliche Touch-Ziele hervorheben';

  @override
  String get pickExportDir => 'Export-Verzeichnis wählen';

  @override
  String get autoExportOnChanges => 'Automatischer Export bei Änderung(en)';

  @override
  String get includeSettings => 'Einstellungen einbeziehen';

  @override
  String get filterVersionsByRegEx => 'Versionen nach regulären Ausdrücken filtern';

  @override
  String get trySelectingSuggestedVersionCode => 'Versuchen, den vorgeschlagenen APK-Versionscode auszuwählen';

  @override
  String get dontSortReleasesList => 'Releases-Sortierung der API beibehalten';

  @override
  String get reverseSort => 'Umgekehrtes Sortieren';

  @override
  String get takeFirstLink => 'Ersten Link verwenden';

  @override
  String get skipSort => 'Sortieren überspringen';

  @override
  String get debugMenu => 'Debug-Menü';

  @override
  String get bgTaskStarted => 'Hintergrundaufgabe gestartet – Logs prüfen.';

  @override
  String get runBgCheckNow => 'Hintergrundaktualisierungsprüfung jetzt durchführen';

  @override
  String get versionExtractWholePage => 'Versionsextraktion per RegEx auf die gesamte Seite anwenden';

  @override
  String get installing => 'Installieren';

  @override
  String get skipUpdateNotifications => 'Update-Benachrichtigungen überspringen';

  @override
  String get updatesAvailableNotifChannel => 'Aktualisierungen verfügbar';

  @override
  String get appsUpdatedNotifChannel => 'Apps aktualisiert';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'App-Aktualisierungen wurden versucht';

  @override
  String get errorCheckingUpdatesNotifChannel => 'Fehler beim Prüfen auf Aktualisierungen';

  @override
  String get appsRemovedNotifChannel => 'Apps entfernt';

  @override
  String downloadingXNotifChannel(Object p0) {
    return '$p0 herunterladen';
  }

  @override
  String get completeAppInstallationNotifChannel => 'App-Installation abschließen';

  @override
  String get checkingForUpdatesNotifChannel => 'Nach Aktualisierungen suchen';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps => 'Nur mit „Nur nachverfolgen“ markierte und installierte Apps auf Aktualisierungen prüfen';

  @override
  String get supportFixedAPKURL => 'Unterstützung von festen APK-URLs';

  @override
  String selectX(Object p0) {
    return '$p0 wählen';
  }

  @override
  String get parallelDownloads => 'Parallele Downloads erlauben';

  @override
  String get useShizuku => 'Shizuku oder Sui zur Installation verwenden';

  @override
  String get shizukuBinderNotFound => 'Kompatibler Shizuku-Dienst wurde nicht gefunden';

  @override
  String get shizukuOld => 'Veraltete Shizuku-Version (< 11) – bitte aktualisieren Sie sie';

  @override
  String get shizukuOldAndroidWithADB => 'Shizuku läuft auf Android < 8.1 mit ADB – aktualisieren Sie die Android-Version oder verwenden Sie stattdessen Sui';

  @override
  String get shizukuPretendToBeGooglePlay => '(Mittels Shizuku) Google Play als Installationsquelle registrieren';

  @override
  String get useSystemFont => 'Systemschriftart verwenden';

  @override
  String get useVersionCodeAsOSVersion => 'Versionscode (versionCode) als vom Betriebssystem erkannte Version verwenden';

  @override
  String get requestHeader => 'Kopfzeile („Header“) anfordern';

  @override
  String get useLatestAssetDateAsReleaseDate => 'Letzten Upload eines Release-Anhangs als Veröffentlichungsdatum verwenden';

  @override
  String get defaultPseudoVersioningMethod => 'Standardmäßiges Verfahren zur Pseudo-Versionierung';

  @override
  String get partialAPKHash => 'Partieller APK-Hash';

  @override
  String get apkLinkHash => 'APK-Link-Hash';

  @override
  String get directAPKLink => 'Direkter APK-Link';

  @override
  String get pseudoVersionInUse => 'Es werden Pseudoversionen verwendet';

  @override
  String get installed => 'Installiert';

  @override
  String get latest => 'Neueste Version';

  @override
  String get invertRegEx => 'Regulären Ausdruck invertieren';

  @override
  String get note => 'Hinweis';

  @override
  String selfHostedNote(Object p0) {
    return 'Das „$p0“-Drop-down-Menü kann verwendet werden, um selbst gehostete/angepasste Instanzen einer beliebigen Quelle zu erreichen.';
  }

  @override
  String get badDownload => 'Die APK konnte nicht gelesen werden (inkompatibler oder unfertiger Download)';

  @override
  String get beforeNewInstallsShareToAppVerifier => 'Neue Apps mit AppVerifier teilen (falls verfügbar)';

  @override
  String get appVerifierInstructionToast => 'Teile die Daten mit AppVerifier und kehre im Anschluss hierher zurück.';

  @override
  String get wiki => 'Hilfe/Wiki';

  @override
  String get allowInsecure => 'Unsichere HTTP-Anfragen zulassen';

  @override
  String get stayOneVersionBehind => 'Eine Version hinter der neuesten Version bleiben';

  @override
  String get useFirstApkOfVersion => 'Automatische Auswahl der ersten von mehreren APKs';

  @override
  String get refreshBeforeDownload => 'App-Details vor dem Download aktualisieren';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (China)';

  @override
  String get name => 'Name';

  @override
  String get smartname => 'Name (Smart)';

  @override
  String get sortMethod => 'Sortierverfahren';

  @override
  String get welcome => 'Willkommen';

  @override
  String get documentationLinksNote => 'Die unten verlinkte GitHub-Seite von Updatium enthält Links zu Videos, Artikeln, Diskussionen und anderen Ressourcen, die Ihnen helfen werden, die Verwendung der App zu verstehen.';

  @override
  String get batteryOptimizationNote => 'Beachten Sie, dass Downloads im Hintergrund möglicherweise zuverlässiger funktionieren, wenn Sie die Batterieoptimierung des Betriebssystems für Updatium deaktivieren.';

  @override
  String fileDeletionError(Object p0) {
    return 'Die Datei konnte nicht gelöscht werden (versuchen Sie, sie manuell zu löschen und versuchen Sie es dann erneut): \"$p0\"';
  }

  @override
  String get foregroundService => 'Updatium-Vordergrunddienst';

  @override
  String get foregroundServiceExplanation => 'Aktualisierungsprüfung im Vordergrund durchführen (zuverlässiger, verbraucht mehr Strom)';

  @override
  String get fgServiceNotice => 'Diese Benachrichtigung ist für die Prüfung von Updates im Hintergrund erforderlich (sie kann in den Betriebssystemeinstellungen ausgeblendet werden)';

  @override
  String get excludeSecrets => 'Geheimnisse ausschließen';

  @override
  String get ghReqPrefix => 'sky22333/hubproxy\'-Instanz für GitHub-Anfragen';

  @override
  String get includeZips => 'ZIP-Dateien einbeziehen';

  @override
  String get zippedApkFilterRegEx => 'APKs in ZIP filtern';

  @override
  String get googleVerificationWarningP1 => 'Google hat bekannt gegeben, dass, ab 2026/2027, alle Apps auf \"zertifizierten\" Android-Geräten den Entwickler benötigen, um persönliche Identitätsdetails direkt an Google einzureichen.\n\nDanach kann Updatium auf zertifizierten Android-Geräten aufhören zu funktionieren.';

  @override
  String get googleVerificationWarningP2 => 'Weitere Informationen finden Sie unter https://keepandroidopen.org/.';

  @override
  String get googleVerificationWarningP3 => 'Beachten Sie, dass es kurzfristig weiterhin möglich sein kann, \"unverifizierte\" (nicht-konforme) Apps durch einen \"fortgeschrittenen Flow\"-Prozess zu installieren, den Google versprochen hat, nach einem breiten Rückschluss auf ihre Ankündigung umzusetzen, aber sie haben nicht detailliert, wie dies funktioniert, so dass es unklar ist, ob es wirklich Benutzerfreiheiten in praktischer Weise erhalten wird.\n\nIn jedem Fall ist Googles Bewegung ein wesentlicher Schritt zum Ende des kostenlosen, universellen Computers für Einzelpersonen.\n\nNicht zertifizierte Betriebssysteme, wie GrapheneOS, sollten dadurch nicht beeinflusst werden, solange sie weiterhin existieren dürfen.';

  @override
  String get multipleSigners => 'Mehrere Zeichen';

  @override
  String removeAppQuestion(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Apps entfernen?',
      one: 'App entfernen?',
    );
    return '$_temp0';
  }

  @override
  String tooManyRequestsTryAgainInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Zu viele Anfragen (Rate begrenzt) – versuchen Sie es in $count Minuten erneut',
      one: 'Zu viele Anfragen (Rate begrenzt) – versuchen Sie es in $count Minute erneut',
    );
    return '$_temp0';
  }

  @override
  String bgUpdateGotErrorRetryInMinutes(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Bei der Aktualisierungsprüfung im Hintergrund wurde ein $count festgestellt, eine erneute Prüfung wird in $count Minuten geplant',
      one: 'Bei der Aktualisierungsprüfung im Hintergrund wurde ein $count festgestellt, eine erneute Prüfung wird in $count Minute geplant',
    );
    return '$_temp0';
  }

  @override
  String bgCheckFoundUpdatesWillNotifyIfNeeded(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Die Aktualisierungsprüfung fand $count Aktualisierungen – benachrichtigt, falls erforderlich',
      one: 'Die Aktualisierungsprüfung fand $count Aktualisierung – benachrichtigt, falls erforderlich',
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
      other: '$count Minuten',
      one: '$count Minute',
    );
    return '$_temp0';
  }

  @override
  String hour(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Stunden',
      one: '$count Stunde',
    );
    return '$_temp0';
  }

  @override
  String day(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Tage',
      one: '$count Tag',
    );
    return '$_temp0';
  }

  @override
  String clearedNLogsBeforeXAfterY(num count, Object n, Object before, Object after) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$n Logs gelöscht (vorher = $before, nachher = $after)',
      one: '$n Log gelöscht (vorher = $before, nachher = $after)',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesAvailable(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count und $count weitere Apps können aktualisiert werden.',
      one: '$count und 1 weitere App können aktualisiert werden.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count und $count weitere Apps wurden aktualisiert.',
      one: '$count und 1 weitere App wurden aktualisiert.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesFailed(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Die Aktualisierung von $count und $count weiteren Apps ist fehlgeschlagen.',
      one: 'Die Aktualisierung von $count und 1 weiteren App ist fehlgeschlagen.',
    );
    return '$_temp0';
  }

  @override
  String xAndNMoreUpdatesPossiblyInstalled(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count und $count weitere Apps wurden möglicherweise aktualisiert.',
      one: '$count und 1 weitere App wurden möglicherweise aktualisiert.',
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
      other: 'Zertifikat Hashes',
      one: 'Zertifikat Hash',
    );
    return '$_temp0';
  }

  @override
  String get securityDisclaimerTitle => 'Sicherheits- und Rechtlicher Haftungsausschluss';

  @override
  String get license => 'Lizenz';

  @override
  String get licenseText => 'Diese Anwendung wird unter der GPL v3 Lizenz verteilt.';

  @override
  String get disclaimer => 'Haftungsausschluss';

  @override
  String get disclaimerText => 'Diese Anwendung verteilt, hostet oder überprüft keine der externen Anwendungen. Der Benutzer trägt die volle Verantwortung für die Sicherheit und Legalität jeder Software, die über dieses Tool installiert wird.\n\nhttps://github.com/omeritzics/Updatium ist der einzige offizielle Ort, um Updatium herunterzuladen - es wird dringend davon abgeraten, es woanders herunterzuladen, da das Herunterladen von inoffiziellen Quellen unsicher ist.';

  @override
  String get privacy => 'Datenschutz';

  @override
  String get privacyText => 'Diese App ist datenschutzorientiert und sammelt keine persönlichen Daten.';

  @override
  String get acceptAndContinue => 'Akzeptieren und fortfahren';

  @override
  String get decline => 'Ablehnen';
}
