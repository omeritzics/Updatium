// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'URL de l\'application $arg1 invalide';
  }

  @override
  String get noReleaseFound =>
      'Impossible de trouver une publication correspondante';

  @override
  String get noVersionFound =>
      'Impossible de déterminer la version de la publication';

  @override
  String get urlMatchesNoSource =>
      'L\'URL ne correspond pas à une source connue';

  @override
  String get cantInstallOlderVersion =>
      'Impossible d\'installer une ancienne version de l\'application';

  @override
  String get appIdMismatch =>
      'L\'ID du paquet téléchargé ne correspond pas à l\'ID de l\'application existante';

  @override
  String get functionNotImplemented =>
      'Cette classe n\'implémente pas cette fonction';

  @override
  String get placeholder => 'Espace réservé';

  @override
  String get someErrors => 'Des erreurs sont survenues';

  @override
  String get unexpectedError => 'Erreur inattendue';

  @override
  String get ok => 'OK';

  @override
  String get and => 'et';

  @override
  String get githubPATLabel =>
      'Jeton d\'accès personnel GitHub (augmente la limite de débit)';

  @override
  String get includePrereleases => 'Inclure les versions préliminaires';

  @override
  String get fallbackToOlderReleases => 'Revenir aux anciennes versions';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filtrer les titres de version par expression régulière';

  @override
  String get invalidRegEx => 'Expression régulière invalide';

  @override
  String get noDescription => 'Aucune description';

  @override
  String get cancel => 'Annuler';

  @override
  String get requiredInBrackets => '(Requis)';

  @override
  String get dropdownNoOptsError =>
      'ERREUR: LA LISTE DÉROULANTE DOIT AVOIR AU MOINS UNE OPTION';

  @override
  String get color => 'Couleur';

  @override
  String get standard => 'Norme';

  @override
  String get custom => 'Personnalisé';

  @override
  String get useMaterialYou => 'Utiliser les couleurs Material You';

  @override
  String get githubStarredRepos => 'dépôts étoilés GitHub';

  @override
  String get uname => 'Nom d\'utilisateur';

  @override
  String get wrongArgNum => 'Nombre incorrect des arguments fournis';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 en Suivi uniquement';
  }

  @override
  String get source => 'source';

  @override
  String get app => 'Appli';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Les applications de cette source sont en \'Suivi uniquement\'.';

  @override
  String get youPickedTrackOnly =>
      'Vous avez sélectionné l\'option \'Suivi uniquement\'.';

  @override
  String get trackOnlyAppDescription =>
      'L\'application sera suivie pour les mises à jour, mais Updatium ne pourra pas la télécharger ou l\'installer.';

  @override
  String get cancelled => 'Annulé';

  @override
  String get appAlreadyAdded => 'Application déjà ajoutée';

  @override
  String get alreadyUpToDateQuestion => 'L\'application est déjà à jour?';

  @override
  String get addApp => 'Ajouter appli';

  @override
  String get appSourceURL => 'URL source de l\'application';

  @override
  String get error => 'Erreur';

  @override
  String get add => 'Ajouter';

  @override
  String get searchSomeSourcesLabel =>
      'Rechercher (certaines sources uniquement)';

  @override
  String get search => 'Rechercher';

  @override
  String additionalOptsFor(String arg1) {
    return 'Options supplémentaires pour $arg1';
  }

  @override
  String get supportedSources => 'Sources prises en charge';

  @override
  String get trackOnlyInBrackets => '(Suivi uniquement)';

  @override
  String get searchableInBrackets => '(Interrogeable)';

  @override
  String get appsString => 'Applis';

  @override
  String get noApps => 'Bienvenue !';

  @override
  String get noAppsSubtext =>
      'Vous pouvez ajouter votre première application en appuyant sur \'Ajouter appli\' ci-dessous.';

  @override
  String get noAppsForFilter => 'Aucune application correspondant au filtre';

  @override
  String byX(String arg1) {
    return 'Par $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Progression : $arg1%';
  }

  @override
  String get pleaseWait => 'Veuillez patienter';

  @override
  String get updateAvailable => 'Mise à jour disponible';

  @override
  String get notInstalled => 'Non installée';

  @override
  String get pseudoVersion => 'Version fictive';

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String deselectX(String arg1) {
    return 'Désélectionner $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 sera supprimée d\'Updatium mais restera installée sur l\'appareil.';
  }

  @override
  String get removeSelectedAppsQuestion =>
      'Supprimer les applications sélectionnées ?';

  @override
  String get removeSelectedApps => 'Supprimer les applications sélectionnées';

  @override
  String updateX(String arg1) {
    return 'Mettre à jour $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Installer $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Marquer $arg1\n(Suivi uniquement)\ncomme étant à jour';
  }

  @override
  String changeX(String arg1) {
    return 'Modifier $arg1';
  }

  @override
  String get installUpdateApps => 'Installer/Mettre à jour les applications';

  @override
  String get installUpdateSelectedApps =>
      'Installer/Mettre à jour les applications sélectionnées';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Marquer les $arg1 applications sélectionnées comme étant à jour ?';
  }

  @override
  String get no => 'Non';

  @override
  String get yes => 'Oui';

  @override
  String get markSelectedAppsUpdated =>
      'Marquer les applications sélectionnées comme étant à jour';

  @override
  String get pinToTop => 'Épingler en haut';

  @override
  String get unpinFromTop => 'Désépingler du haut';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Réinitialiser l\'état d\'installation des applications sélectionnées ?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'L\'état d\'installation de toutes les applications sélectionnées sera réinitialisé.\n\nCela peut être utile lorsque la version de l\'application affichée dans Updatium est incorrecte en raison de l\'échec des mises à jour ou d\'autres problèmes.';

  @override
  String get customLinkMessage =>
      'Ces liens fonctionnent sur les appareils sur lesquels Updatium est installé';

  @override
  String get shareAppConfigLinks =>
      'Partager la configuration de l\'application sous forme de lien HTML';

  @override
  String get shareSelectedAppURLs =>
      'Partager les URL des applications sélectionnées';

  @override
  String get resetInstallStatus =>
      'Réinitialiser l\'état d\'installation des applications';

  @override
  String get more => 'Plus';

  @override
  String get removeOutdatedFilter =>
      'Supprimer le filtre des applications obsolètes';

  @override
  String get showOutdatedOnly =>
      'Afficher uniquement les applications obsolètes';

  @override
  String get filter => 'Filtre';

  @override
  String get filterApps => 'Filtrer les applications';

  @override
  String get appName => 'Nom de l\'application';

  @override
  String get author => 'Auteur';

  @override
  String get upToDateApps => 'Applications à jour';

  @override
  String get nonInstalledApps => 'Applications non installées';

  @override
  String get importExport => 'Import/Export';

  @override
  String get settings => 'Paramètres';

  @override
  String exportedTo(String arg1) {
    return 'Exporté vers $arg1';
  }

  @override
  String get updatiumExport => 'Exporter la configuration d\'Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Entrée invalide';

  @override
  String importedX(String arg1) {
    return 'Importé $arg1';
  }

  @override
  String get updatiumImport => 'Importer la configuration sur Updatium';

  @override
  String get importFromURLList => 'Importer depuis une liste d\'URL';

  @override
  String get searchQuery => 'Requête de recherche';

  @override
  String get appURLList => 'Liste d\'URL des applications';

  @override
  String get line => 'Ligne';

  @override
  String searchX(String arg1) {
    return 'Rechercher $arg1';
  }

  @override
  String get noResults => 'Aucun résultat';

  @override
  String importX(String arg1) {
    return 'Importation de $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Les applications importées peuvent s\'afficher de manière incorrecte comme étant \"Non installées\".\nPour résoudre ce problème, réinstallez-les via Updatium.\nCela n\'affectera pas les données des applications.\n\nCela n\'affecte que les méthodes d\'importation d\'URL et par des tiers.';

  @override
  String get importErrors => 'Erreurs lors de l\'importation';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1 applications sur $arg2 ont été importées.';
  }

  @override
  String get followingURLsHadErrors =>
      'Les URL suivantes comportent des erreurs :';

  @override
  String get selectURL => 'Sélectionner l\'URL';

  @override
  String get selectURLs => 'Sélectionner les URL';

  @override
  String get pick => 'Choisir';

  @override
  String get theme => 'Thème';

  @override
  String get dark => 'Sombre';

  @override
  String get light => 'Clair';

  @override
  String get followSystem => 'Suivre le système';

  @override
  String get followSystemThemeExplanation =>
      'Suivre le thème du système est possible en utilisant des applications tierces.';

  @override
  String get useBlackTheme => 'Utiliser un thème noir';

  @override
  String get appSortBy => 'Trier les applications par';

  @override
  String get authorName => 'Auteur/Nom';

  @override
  String get nameAuthor => 'Nom/Auteur';

  @override
  String get asAdded => 'Date d\'ajout';

  @override
  String get appSortOrder => 'Ordre de tri des applications';

  @override
  String get ascending => 'Ascendant';

  @override
  String get descending => 'Descendant';

  @override
  String get bgUpdateCheckInterval =>
      'Intervalle de recherche de mises à jour en arrière-plan';

  @override
  String get neverManualOnly => 'Jamais - Manuellement uniquement';

  @override
  String get appearance => 'Apparence';

  @override
  String get pinUpdates =>
      'Épingler les mises à jour en haut de l\'onglet \'Applications\'';

  @override
  String get updates => 'Mises à jour';

  @override
  String get sourceSpecific => 'Spécifique à la source';

  @override
  String get appSource => 'Source de l\'application';

  @override
  String get appSourceHint => 'Ouvrir le dépôt source de l\'application';

  @override
  String get noLogs => 'Aucun journal';

  @override
  String get appLogs => 'Journaux d\'application';

  @override
  String get appLogsHint => 'Voir les journaux de l\'application';

  @override
  String get close => 'Fermer';

  @override
  String get share => 'Partager';

  @override
  String get appNotFound => 'Application introuvable';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'export-updatium';

  @override
  String get pickAnAPK => 'Sélectionner un APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 a plus d\'un paquet :';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Votre appareil prend en charge l\'architecture CPU $arg1.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Votre appareil prend en charge les architectures CPU suivantes : ';

  @override
  String get warning => 'Avertissement';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'La source de l\'application est \'$arg1\' mais le paquet de mise à jour provient de \'$arg2\'. Continuer ?';
  }

  @override
  String get updatesAvailable => 'Mises à jour disponibles';

  @override
  String get updatesAvailableNotifDescription =>
      'Notifie à l\'utilisateur que des mises à jour sont disponibles pour une ou plusieurs applications suivies par Updatium.';

  @override
  String get noNewUpdates => 'Aucune nouvelle mise à jour.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 a une mise à jour.';
  }

  @override
  String get appsUpdated => 'Applications mises à jour';

  @override
  String get appsNotUpdated => 'Échec de la mise à jour des applications';

  @override
  String get appsUpdatedNotifDescription =>
      'Notifie à l\'utilisateur que des mises à jour d\'une ou plusieurs applications ont été installées en arrière-plan.';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 a été mise à jour vers $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Échec de la mise à jour de $arg1 vers $arg2.';
  }

  @override
  String get errorCheckingUpdates =>
      'Erreur lors de la recherche de mises à jour';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Notifie l\'utilisateur lorsque la recherche de mises à jour en arrière-plan échoue.';

  @override
  String get appsRemoved => 'Applications supprimées';

  @override
  String get appsRemovedNotifDescription =>
      'Notifie à l\'utilisateur qu\'une ou plusieurs applications ont été supprimées en raison d\'erreurs lors de leur chargement.';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 a été supprimée en raison de cette erreur : $arg2';
  }

  @override
  String get completeAppInstallation =>
      'Installation complète de l\'application';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium doit être ouvert pour installer les applications';

  @override
  String get completeAppInstallationNotifDescription =>
      'Demande à l\'utilisateur de retourner sur Updatium pour terminer l\'installation d\'une application';

  @override
  String get checkingForUpdates => 'Recherche de mises à jour';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Notification temporaire qui apparaît lors de la recherche de mises à jour';

  @override
  String get pleaseAllowInstallPerm =>
      'Veuillez autoriser Updatium à installer des applications';

  @override
  String get trackOnly => 'Suivi uniquement';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Erreur $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Correction de version désactivée (le plugin ne semble pas fonctionner)';

  @override
  String get unknown => 'Inconnu';

  @override
  String get none => 'Aucun';

  @override
  String get all => 'Tous';

  @override
  String get never => 'Jamais';

  @override
  String latestVersionX(String arg1) {
    return 'Dernière version : $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Version installée : $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Dernière recherche de mises à jour : $arg1';
  }

  @override
  String get remove => 'Supprimer';

  @override
  String get yesMarkUpdated => 'Oui, marquer comme étant à jour';

  @override
  String get fdroid => 'F-Droid Officiel';

  @override
  String get appIdOrName => 'ID ou nom de l\'application';

  @override
  String get appId => 'ID de l\'application';

  @override
  String get appWithIdOrNameNotFound =>
      'Aucune application n\'a été trouvée avec cet identifiant ou ce nom';

  @override
  String get reposHaveMultipleApps =>
      'Les dépôts peuvent contenir plusieurs applications';

  @override
  String get fdroidThirdPartyRepo => 'Dépôt tiers F-Droid';

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
  String get install => 'Installer';

  @override
  String get markInstalled => 'Marquer comme installée';

  @override
  String get update => 'Mettre à jour';

  @override
  String get updated => 'À jour';

  @override
  String get markUpdated => 'Marquer comme à jour';

  @override
  String get additionalOptions => 'Options supplémentaires';

  @override
  String get disableVersionDetection => 'Désactiver la détection de la version';

  @override
  String get noVersionDetectionExplanation =>
      'Cette option ne doit être utilisée que pour les applications où la détection de la version ne fonctionne pas correctement.';

  @override
  String downloadingX(String arg1) {
    return 'Téléchargement de $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'Télécharger $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return 'Téléchargé $arg1';
  }

  @override
  String get releaseAsset => 'Élément de version';

  @override
  String get downloadNotifDescription =>
      'Notifie l\'utilisateur sur l\'avancement du téléchargement d\'une application';

  @override
  String get noAPKFound => 'Aucun APK trouvé';

  @override
  String get noVersionDetection => 'Aucune détection de version';

  @override
  String get categorize => 'Catégoriser';

  @override
  String get categories => 'Catégories';

  @override
  String get category => 'Catégorie';

  @override
  String get noCategory => 'Aucune catégorie';

  @override
  String get noCategories => 'Aucune catégorie';

  @override
  String get deleteCategoriesQuestion => 'Supprimer les catégories ?';

  @override
  String get categoryDeleteWarning =>
      'Toutes les applications des catégories supprimées seront définies comme non catégorisées.';

  @override
  String get addCategory => 'Ajouter une catégorie';

  @override
  String get label => 'Nom';

  @override
  String get language => 'Langue';

  @override
  String get copiedToClipboard => 'Copié dans le presse-papier';

  @override
  String get storagePermissionDenied => 'Permission de stockage refusée';

  @override
  String get selectedCategorizeWarning =>
      'Cela va remplacer toutes les catégories définies des applications sélectionnées.';

  @override
  String get filterAPKsByRegEx => 'Filtrer les APK par expression régulière';

  @override
  String get removeFromUpdatium => 'Supprimer d\'Updatium';

  @override
  String get uninstallFromDevice => 'Désinstaller de l\'appareil';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Ne fonctionne qu\'avec les applications dont la détection de la version est désactivée.';

  @override
  String get releaseDateAsVersion => 'Utiliser la date de sortie comme version';

  @override
  String get releaseTitleAsVersion =>
      'Utiliser le titre de la version comme chaîne de version';

  @override
  String get releaseDateAsVersionExplanation =>
      'Cette option ne doit être utilisée que pour les applications pour lesquelles la détection de la version ne fonctionne pas correctement, mais dont une date de sortie est disponible.';

  @override
  String get changes => 'Modifications';

  @override
  String get releaseDate => 'Date de sortie';

  @override
  String get importFromURLsInFile =>
      'Importer à partir des URLs d\'un fichier (comme OPML)';

  @override
  String get versionDetectionExplanation =>
      'Réconcilier la chaîne de version avec la version détectée par le système d\'exploitation';

  @override
  String get versionDetection => 'Détection de la version';

  @override
  String get standardVersionDetection => 'Détection de la version standard';

  @override
  String get groupByCategory => 'Grouper par catégorie';

  @override
  String get listView => 'Vue en liste';

  @override
  String get gridView => 'Vue en grille';

  @override
  String get autoApkFilterByArch =>
      'Essayer de filtrer les APKs par architecture CPU si possible';

  @override
  String get autoLinkFilterByArch =>
      'Essayer de filtrer les liens en fonction de l\'architecture de l\'unité centrale si possible';

  @override
  String get overrideSource => 'Remplacer la source';

  @override
  String get dontShowAgain => 'Ne plus afficher';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Ne plus afficher les avertissements \'Suivi uniquement\'';

  @override
  String get dontShowAPKOriginWarnings =>
      'Ne plus afficher les avertissements sur l\'origine de l\'APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Déplacer les applications non installées vers le bas de la vue Applications';

  @override
  String get hideNonInstalledApps => 'Masquer les applications non installées';

  @override
  String get gitlabPATLabel => 'Jeton d\'accès personnel GitLab';

  @override
  String get about => 'À propos';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1 a besoin d\'informations d\'identification supplémentaires (dans les Paramètres)';
  }

  @override
  String get checkOnStart => 'Rechercher les mises à jour au démarrage';

  @override
  String get safeMode => 'Mode sans échec';

  @override
  String get safeModeDescription =>
      'Masquer la page Ajouter une application et afficher Importer/Exporter à la place';

  @override
  String get safeModeAddAppDisabled =>
      'L\'ajout d\'application est désactivé en mode sans échec';

  @override
  String get tryInferAppIdFromCode =>
      'Essayer de déduire l\'ID de l\'application à partir du code source';

  @override
  String get removeOnExternalUninstall =>
      'Supprimer automatiquement les applications désinstallées en externe';

  @override
  String get pickHighestVersionCode =>
      'Sélectionner automatiquement la version la plus récente du code APK';

  @override
  String get checkUpdateOnDetailPage =>
      'Rechercher les mises à jour lors de l\'ouverture de la page détaillée d\'une application';

  @override
  String get disablePageTransitions =>
      'Désactiver les animations de transition de page';

  @override
  String get reversePageTransitions =>
      'Inverser les animations de transition de page';

  @override
  String get minStarCount => 'Nombre minimum d\'étoiles';

  @override
  String get addInfoBelow => 'Ajoutez cette information ci-dessous.';

  @override
  String get addInfoInSettings =>
      'Ajoutez cette information dans les paramètres.';

  @override
  String get githubSourceNote =>
      'La limitation du débit de GitHub peut être évitée à l\'aide d\'une clé d\'API.';

  @override
  String get sortByLastLinkSegment => 'Trier par le dernier segment du lien';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filtrer les notes de version par expression régulière';

  @override
  String get customLinkFilterRegex =>
      'Filtre de lien APK personnalisé par expression régulière (par défaut \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Tentatives de mise à jour d\'applications';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Notifie à l\'utilisateur que des mises à jour d\'une ou plusieurs applications ont potentiellement été appliquées en arrière-plan';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 a peut-être été mise à jour vers $arg2.';
  }

  @override
  String get enableBackgroundUpdates =>
      'Activer les mises à jour en arrière-plan';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Les mises à jour en arrière-plan peuvent ne pas être possibles pour toutes les applications.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Le succès d\'une installation en arrière-plan ne peut être déterminé qu\'à l\'ouverture d\'Updatium.';

  @override
  String get verifyLatestTag => 'Vérifier la balise \'latest\'';

  @override
  String get intermediateLinkRegex =>
      'Filtrer un lien \'intermédiaire\' à visiter';

  @override
  String get filterByLinkText => 'Filtrer les liens par texte du lien';

  @override
  String get matchLinksOutsideATags => 'Liens en dehors des balises <a>';

  @override
  String get intermediateLinkNotFound => 'Lien intermédiaire introuvable';

  @override
  String get intermediateLink => 'Lien intermédiaire';

  @override
  String get exemptFromBackgroundUpdates =>
      'Exclure des mises à jour en arrière-plan (si activées)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Désactiver les mises à jour en arrière-plan lorsque vous n\'êtes pas en Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Désactiver les mises à jour en arrière-plan lorsque l\'appareil n\'est pas en charge';

  @override
  String get autoSelectHighestVersionCode =>
      'Sélectionner automatiquement la version la plus récente du code APK';

  @override
  String get versionExtractionRegEx =>
      'Expression régulière d\'extraction de version';

  @override
  String get trimVersionString =>
      'Découper la chaîne de version avec une expression régulière';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Groupe de correspondance à utiliser pour \"$arg1\"';
  }

  @override
  String get matchGroupToUse =>
      'Groupe de correspondance à utiliser pour l\'extraction de la version par expression régulière';

  @override
  String get highlightTouchTargets =>
      'Mettre en évidence les zones tactiles moins évidentes';

  @override
  String get pickExportDir => 'Sélectionner le dossier d\'exportation';

  @override
  String get autoExportOnChanges =>
      'Exporter automatiquement lors de modifications';

  @override
  String get includeSettings => 'Inclure les paramètres';

  @override
  String get filterVersionsByRegEx =>
      'Filtrer les versions par expression régulière';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Essayer de sélectionner le code de version APK suggéré';

  @override
  String get dontSortReleasesList => 'Conserver l\'ordre de version de l\'API';

  @override
  String get reverseSort => 'Tri inversé';

  @override
  String get takeFirstLink => 'Utiliser le premier lien';

  @override
  String get skipSort => 'Ignorer le tri';

  @override
  String get debugMenu => 'Menu de débogage';

  @override
  String get bgTaskStarted =>
      'Tâche en arrière-plan démarrée - vérifier les journaux.';

  @override
  String get runBgCheckNow =>
      'Exécuter la recherche de mises à jour en arrière-plan maintenant';

  @override
  String get versionExtractWholePage =>
      'Appliquer l\'expression régulière d\'extraction de version à l\'ensemble de la page';

  @override
  String get installing => 'Installation';

  @override
  String get skipUpdateNotifications =>
      'Désactiver les notifications de mise à jour';

  @override
  String get updatesAvailableNotifChannel => 'Mises à jour disponibles';

  @override
  String get appsUpdatedNotifChannel => 'Applications mises à jour';

  @override
  String get appsPossiblyUpdatedNotifChannel =>
      'Tentatives de mise à jour d\'applications';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Erreur lors de la recherche de mises à jour';

  @override
  String get appsRemovedNotifChannel => 'Applications supprimées';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Téléchargement de $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Terminer l\'installation de l\'application';

  @override
  String get checkingForUpdatesNotifChannel => 'Recherche de mises à jour';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Rechercher uniquement les mises à jour des applications installées et des applications \'Suivi uniquement\'';

  @override
  String get supportFixedAPKURL => 'Prise en charge des URL APK fixes';

  @override
  String selectX(String arg1) {
    return 'Sélectionner $arg1';
  }

  @override
  String get parallelDownloads => 'Autoriser les téléchargements simultanés';

  @override
  String get useShizuku => 'Utiliser Shizuku ou Sui pour l\'installation';

  @override
  String get shizukuBinderNotFound =>
      'Le service Shizuku n\'est pas en cours d\'exécution';

  @override
  String get shizukuOld =>
      'Ancienne version de Shizuku (<11) - veuillez le mettre à jour';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku fonctionne sur Android < 8.1 avec ADB - veuillez mettre à jour Android ou utiliser Sui à la place';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Définir Google Play comme source d\'installation (si Shizuku est utilisé)';

  @override
  String get useSystemFont => 'Utiliser la police du système';

  @override
  String get useVersionCodeAsOSVersion =>
      'Utiliser le code de version de l\'application détectée par le système d\'exploitation';

  @override
  String get requestHeader => 'En-tête de requête';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Utiliser la date du dernier élément mis en ligne comme date de sortie';

  @override
  String get defaultPseudoVersioningMethod =>
      'Méthode de versionnage fictif par défaut';

  @override
  String get partialAPKHash => 'Hash partiel de l\'APK';

  @override
  String get directAPKLink => 'Lien direct de l\'APK';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'Nom';

  @override
  String get sortMethod => 'Méthode de tri';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload =>
      'Actualiser les détails de l\'application avant de la télécharger';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'Une version fictive est utilisée';

  @override
  String get installed => 'Installée';

  @override
  String get latest => 'Dernière version';

  @override
  String get invertRegEx => 'Inverser l\'expression régulière';

  @override
  String get note => 'Remarque';

  @override
  String selfHostedNote(String arg1) {
    return 'La liste déroulante \"$arg1\" peut être utilisée pour accéder à des instances auto-hébergées/personnalisées de n\'importe quelle source.';
  }

  @override
  String get badDownload =>
      'L\'APK n\'a pas pu être analysé (téléchargement incompatible ou partiel)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Partager les nouvelles applications avec AppVerifier (si disponible)';

  @override
  String get appVerifierInstructionToast =>
      'Partagez avec AppVerifier, puis revenez ici lorsque tout est prêt.';

  @override
  String get wiki => 'Aide/Wiki';

  @override
  String get wikiHint => 'Ouvrir la documentation wiki de Updatium';

  @override
  String get allowInsecure => 'Autoriser les requêtes HTTP non sécurisées';

  @override
  String get stayOneVersionBehind =>
      'Rester une version en arrière de la dernière';

  @override
  String get useFirstApkOfVersion =>
      'Sélection automatique du premier APK parmi plusieurs';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get smartname => 'Nom (Smart)';

  @override
  String get welcome => 'Bienvenue';

  @override
  String get documentationLinksNote =>
      'La page GitHub d\'Updatium, dont le lien figure ci-dessous, contient des liens vers des vidéos, des articles, des discussions et d\'autres ressources qui vous aideront à comprendre comment utiliser l\'application.';

  @override
  String get batteryOptimizationNote =>
      'Notez que les téléchargements en arrière-plan peuvent fonctionner de manière plus fiable si vous désactivez les optimisations de la batterie du système d\'exploitation pour Updatium.';

  @override
  String fileDeletionError(String arg1) {
    return 'Échec de la suppression du fichier (essayez de le supprimer manuellement puis réessayez) : \"$arg1\"';
  }

  @override
  String get foregroundService => 'Service d\'avant-plan Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Utiliser un service de premier plan pour la vérification des mises à jour (plus fiable, consomme plus d\'énergie)';

  @override
  String get fgServiceNotice =>
      'Cette notification est nécessaire pour la vérification des mises à jour en arrière-plan (elle peut être masquée dans les paramètres du système d\'exploitation).';

  @override
  String get excludeSecrets => 'Exclure les secrets';

  @override
  String get includeZips => 'Inclure les fichiers ZIP';

  @override
  String get zippedApkFilterRegEx => 'Filtrer les APK à l\'intérieur du ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google a annoncé que, à partir de 2026/2027, toutes les applications sur des appareils Android \"certifiés\" exigeront du développeur de soumettre des données personnelles d\'identité directement à Google.\n\nAprès cela, Updatium peut cesser de fonctionner sur les appareils Android certifiés.';

  @override
  String get googleVerificationWarningP2 =>
      'Consultez https://keepandroidopen.org/ pour plus d\'informations.';

  @override
  String get googleVerificationWarningP3 =>
      'Notez qu\'à court terme, il peut continuer d\'être possible d\'installer des applications \"non vérifiées\" (non conformes) à travers un processus de \"flux avancé\" que Google a promis de mettre en œuvre après un grand retour à l\'annonce, mais ils n\'ont pas précisé comment cela fonctionnerait donc il n\'est pas clair s\'il préservera réellement les libertés des utilisateurs d\'une manière pratique.\n\nEn tout cas, le mouvement de Google est un pas important vers la fin de l\'informatique gratuite et à usage général pour les individus.\n\nLes OS non certifiés, comme GrapheneOS, ne devraient pas en être affectés tant qu\'ils sont autorisés à continuer d\'exister.';

  @override
  String get multipleSigners => 'Plusieurs signataires';

  @override
  String get securityDisclaimerTitle => 'Avis de Sécurité et Légal';

  @override
  String get license => 'Licence';

  @override
  String get licenseText =>
      'Cette application est distribuée sous la Licence GPL v3.';

  @override
  String get disclaimer => 'Avertissement';

  @override
  String get disclaimerText =>
      'Cette application ne distribue, n\'héberge ni ne vérifie aucune des applications externes. L\'utilisateur assume l\'entière responsabilité de la sécurité et de la légalité de tout logiciel installé via cet outil.\n\nhttps://github.com/omeritzics/Updatium est le seul endroit officiel pour télécharger Updatium - il est fortement déconseillé de le télécharger ailleurs car le téléchargement depuis des sources non officielles est dangereux.';

  @override
  String get privacy => 'Confidentialité';

  @override
  String get privacyText =>
      'Cette application est axée sur la confidentialité et ne collecte pas de données personnelles.';

  @override
  String get acceptAndContinue => 'Accepter et continuer';

  @override
  String get decline => 'Refuser';

  @override
  String get githubStarPromptTitle => 'Vous aimez Updatium ?';

  @override
  String get githubStarPromptContent =>
      'Updatium est un projet communautaire open-source volontaire développé pendant mon temps libre. Si vous souhaitez soutenir le projet, merci de lui donner une étoile sur GitHub pour nous aider à atteindre plus d\'utilisateurs et de contributeurs. Vous ne serez plus sollicité à ce sujet. Merci d\'avance ! :)';

  @override
  String get githubStarPromptStar => 'Donner une étoile';

  @override
  String get githubStarPromptDontShowAgain => 'Ne plus afficher';

  @override
  String get aPKLinkHash => 'Hash du lien APK';

  @override
  String get gHReqPrefix =>
      'instance \'sky22333/hubproxy\' pour les requêtes GitHub';

  @override
  String get continueAction => 'Continuer';

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
    return '$count heures';
  }

  @override
  String day(int count) {
    return '$count jours';
  }
}
