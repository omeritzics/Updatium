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
class TranslationsFr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsFr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.fr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsFr _root = this; // ignore: unused_field

	@override 
	TranslationsFr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsFr(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'URL de l\'application {} invalide';
	@override String get noReleaseFound => 'Impossible de trouver une publication correspondante';
	@override String get noVersionFound => 'Impossible de déterminer la version de la publication';
	@override String get urlMatchesNoSource => 'L\'URL ne correspond pas à une source connue';
	@override String get cantInstallOlderVersion => 'Impossible d\'installer une ancienne version de l\'application';
	@override String get appIdMismatch => 'L\'ID du paquet téléchargé ne correspond pas à l\'ID de l\'application existante';
	@override String get functionNotImplemented => 'Cette classe n\'implémente pas cette fonction';
	@override String get placeholder => 'Espace réservé';
	@override String get someErrors => 'Des erreurs sont survenues';
	@override String get unexpectedError => 'Erreur inattendue';
	@override String get ok => 'OK';
	@override String get and => 'et';
	@override String get githubPATLabel => 'Jeton d\'accès personnel GitHub';
	@override String get includePrereleases => 'Inclure les versions préliminaires';
	@override String get fallbackToOlderReleases => 'Revenir aux anciennes versions';
	@override String get filterReleaseTitlesByRegEx => 'Filtrer les titres de version par expression régulière';
	@override String get invalidRegEx => 'Expression régulière invalide';
	@override String get noDescription => 'Aucune description';
	@override String get cancel => 'Annuler';
	@override String get kContinue => 'Continuer';
	@override String get requiredInBrackets => '(Requis)';
	@override String get dropdownNoOptsError => 'ERREUR: LA LISTE DÉROULANTE DOIT AVOIR AU MOINS UNE OPTION';
	@override String get color => 'Couleur';
	@override String get standard => 'Norme';
	@override String get custom => 'Personnalisé';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Utiliser les couleurs Material You';
	@override String get githubStarredRepos => 'dépôts étoilés GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nom d\'utilisateur';
	@override String get wrongArgNum => 'Nombre incorrect des arguments fournis';
	@override String get xIsTrackOnly => '{} en Suivi uniquement';
	@override String get source => 'source';
	@override String get app => 'Appli';
	@override String get appsFromSourceAreTrackOnly => 'Les applications de cette source sont en \'Suivi uniquement\'.';
	@override String get youPickedTrackOnly => 'Vous avez sélectionné l\'option \'Suivi uniquement\'.';
	@override String get trackOnlyAppDescription => 'L\'application sera suivie pour les mises à jour, mais Updatium ne pourra pas la télécharger ou l\'installer.';
	@override String get cancelled => 'Annulé';
	@override String get appAlreadyAdded => 'Application déjà ajoutée';
	@override String get alreadyUpToDateQuestion => 'L\'application est déjà à jour?';
	@override String get addApp => 'Ajouter appli';
	@override String get appSourceURL => 'URL source de l\'application';
	@override String get error => 'Erreur';
	@override String get add => 'Ajouter';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Rechercher (certaines sources uniquement)';
	@override String get search => 'Rechercher';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Options supplémentaires pour {}';
	@override String get supportedSources => 'Sources prises en charge';
	@override String get trackOnlyInBrackets => '(Suivi uniquement)';
	@override String get searchableInBrackets => '(Interrogeable)';
	@override String get appsString => 'Applis';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Bienvenue !';
	@override String get noAppsSubtext => 'Vous pouvez ajouter votre première application en appuyant sur \'Ajouter appli\' ci-dessous.';
	@override String get noAppsForFilter => 'Aucune application correspondant au filtre';
	@override String get byX => 'Par {}';
	@override String get percentProgress => 'Progression : {}%';
	@override String get pleaseWait => 'Veuillez patienter';
	@override String get updateAvailable => 'Mise à jour disponible';
	@override String get notInstalled => 'Non installée';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'Version fictive';
	@override String get selectAll => 'Tout sélectionner';
	@override String get deselectX => 'Désélectionner {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} sera supprimée d\'Updatium mais restera installée sur l\'appareil.';
	@override String get removeSelectedAppsQuestion => 'Supprimer les applications sélectionnées ?';
	@override String get removeSelectedApps => 'Supprimer les applications sélectionnées';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Mettre à jour {}';
	@override String get installX => 'Installer {}';
	@override String get markXTrackOnlyAsUpdated => 'Marquer {}\n(Suivi uniquement)\ncomme étant à jour';
	@override String get changeX => 'Modifier {}';
	@override String get installUpdateApps => 'Installer/Mettre à jour les applications';
	@override String get installUpdateSelectedApps => 'Installer/Mettre à jour les applications sélectionnées';
	@override String get markXSelectedAppsAsUpdated => 'Marquer les {} applications sélectionnées comme étant à jour ?';
	@override String get no => 'Non';
	@override String get yes => 'Oui';
	@override String get markSelectedAppsUpdated => 'Marquer les applications sélectionnées comme étant à jour';
	@override String get pinToTop => 'Épingler en haut';
	@override String get unpinFromTop => 'Désépingler du haut';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Réinitialiser l\'état d\'installation des applications sélectionnées ?';
	@override String get installStatusOfXWillBeResetExplanation => 'L\'état d\'installation de toutes les applications sélectionnées sera réinitialisé.\n\nCela peut être utile lorsque la version de l\'application affichée dans Updatium est incorrecte en raison de l\'échec des mises à jour ou d\'autres problèmes.';
	@override String get customLinkMessage => 'Ces liens fonctionnent sur les appareils sur lesquels Updatium est installé';
	@override String get shareAppConfigLinks => 'Partager la configuration de l\'application sous forme de lien HTML';
	@override String get resetInstallStatus => 'Réinitialiser l\'état d\'installation des applications';
	@override String get more => 'Plus';
	@override String get removeOutdatedFilter => 'Supprimer le filtre des applications obsolètes';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Afficher uniquement les applications obsolètes';
	@override String get filter => 'Filtre';
	@override String get filterApps => 'Filtrer les applications';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nom de l\'application';
	@override String get author => 'Auteur';
	@override String get upToDateApps => 'Applications à jour';
	@override String get nonInstalledApps => 'Applications non installées';
	@override String get importExport => 'Import/Export';
	@override String get settings => 'Paramètres';
	@override String get exportedTo => 'Exporté vers {}';
	@override String get updatiumExport => 'Exporter la configuration d\'Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Entrée invalide';
	@override String get importedX => 'Importé {}';
	@override String get updatiumImport => 'Importer la configuration sur Updatium';
	@override String get importFromURLList => 'Importer depuis une liste d\'URL';
	@override String get searchQuery => 'Requête de recherche';
	@override String get appURLList => 'Liste d\'URL des applications';
	@override String get line => 'Ligne';
	@override String get searchX => 'Rechercher {}';
	@override String get noResults => 'Aucun résultat';
	@override String get importX => 'Importation de {}';
	@override String get importedAppsIdDisclaimer => 'Les applications importées peuvent s\'afficher de manière incorrecte comme étant "Non installées".\nPour résoudre ce problème, réinstallez-les via Updatium.\nCela n\'affectera pas les données des applications.\n\nCela n\'affecte que les méthodes d\'importation d\'URL et par des tiers.';
	@override String get importErrors => 'Erreurs lors de l\'importation';
	@override String get importedXOfYApps => '{} applications sur {} ont été importées.';
	@override String get followingURLsHadErrors => 'Les URL suivantes comportent des erreurs :';
	@override String get selectURL => 'Sélectionner l\'URL';
	@override String get selectURLs => 'Sélectionner les URL';
	@override String get pick => 'Choisir';
	@override String get theme => 'Thème';
	@override String get dark => 'Sombre';
	@override String get light => 'Clair';
	@override String get followSystem => 'Suivre le système';
	@override String get followSystemThemeExplanation => 'Suivre le thème du système est possible en utilisant des applications tierces.';
	@override String get useBlackTheme => 'Utiliser un thème noir';
	@override String get appSortBy => 'Trier les applications par';
	@override String get authorName => 'Auteur/Nom';
	@override String get nameAuthor => 'Nom/Auteur';
	@override String get asAdded => 'Date d\'ajout';
	@override String get appSortOrder => 'Ordre de tri des applications';
	@override String get ascending => 'Ascendant';
	@override String get descending => 'Descendant';
	@override String get bgUpdateCheckInterval => 'Intervalle de recherche de mises à jour en arrière-plan';
	@override String get neverManualOnly => 'Jamais - Manuellement uniquement';
	@override String get appearance => 'Apparence';
	@override String get pinUpdates => 'Épingler les mises à jour en haut de l\'onglet \'Applications\'';
	@override String get updates => 'Mises à jour';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Spécifique à la source';
	@override String get appSource => 'Source de l\'application';
	@override String get appSourceHint => 'Ouvrir le dépôt source de l\'application';
	@override String get noLogs => 'Aucun journal';
	@override String get appLogs => 'Journaux d\'application';
	@override String get appLogsHint => 'Voir les journaux de l\'application';
	@override String get close => 'Fermer';
	@override String get share => 'Partager';
	@override String get appNotFound => 'Application introuvable';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'export-updatium';
	@override String get pickAnAPK => 'Sélectionner un APK';
	@override String get appHasMoreThanOnePackage => '{} a plus d\'un paquet :';
	@override String get deviceSupportsXArch => 'Votre appareil prend en charge l\'architecture CPU {}.';
	@override String get deviceSupportsFollowingArchs => 'Votre appareil prend en charge les architectures CPU suivantes : ';
	@override String get warning => 'Avertissement';
	@override String get sourceIsXButPackageFromYPrompt => 'La source de l\'application est \'{}\' mais le paquet de mise à jour provient de \'{}\'. Continuer ?';
	@override String get updatesAvailable => 'Mises à jour disponibles';
	@override String get updatesAvailableNotifDescription => 'Notifie à l\'utilisateur que des mises à jour sont disponibles pour une ou plusieurs applications suivies par Updatium.';
	@override String get noNewUpdates => 'Aucune nouvelle mise à jour.';
	@override String get xHasAnUpdate => '{} a une mise à jour.';
	@override String get appsUpdated => 'Applications mises à jour';
	@override String get appsNotUpdated => 'Échec de la mise à jour des applications';
	@override String get appsUpdatedNotifDescription => 'Notifie à l\'utilisateur que des mises à jour d\'une ou plusieurs applications ont été installées en arrière-plan.';
	@override String get xWasUpdatedToY => '{} a été mise à jour vers {}.';
	@override String get xWasNotUpdatedToY => 'Échec de la mise à jour de {} vers {}.';
	@override String get errorCheckingUpdates => 'Erreur lors de la recherche de mises à jour';
	@override String get errorCheckingUpdatesNotifDescription => 'Notifie l\'utilisateur lorsque la recherche de mises à jour en arrière-plan échoue.';
	@override String get appsRemoved => 'Applications supprimées';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Notifie à l\'utilisateur qu\'une ou plusieurs applications ont été supprimées en raison d\'erreurs lors de leur chargement.';
	@override String get xWasRemovedDueToErrorY => '{} a été supprimée en raison de cette erreur : {}';
	@override String get completeAppInstallation => 'Installation complète de l\'application';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium doit être ouvert pour installer les applications';
	@override String get completeAppInstallationNotifDescription => 'Demande à l\'utilisateur de retourner sur Updatium pour terminer l\'installation d\'une application';
	@override String get checkingForUpdates => 'Recherche de mises à jour';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notification temporaire qui apparaît lors de la recherche de mises à jour';
	@override String get pleaseAllowInstallPerm => 'Veuillez autoriser Updatium à installer des applications';
	@override String get trackOnly => 'Suivi uniquement';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Erreur {}';
	@override String get versionCorrectionDisabled => 'Correction de version désactivée (le plugin ne semble pas fonctionner)';
	@override String get unknown => 'Inconnu';
	@override String get none => 'Aucun';
	@override String get all => 'Tous';
	@override String get never => 'Jamais';
	@override String get latestVersion => 'Dernière version ';
	@override String get installedVersionX => 'Version installée : {}';
	@override String get lastUpdateCheckX => 'Dernière recherche de mises à jour : {}';
	@override String get remove => 'Supprimer';
	@override String get quickLinks => 'Liens rapides';
	@override String get yesMarkUpdated => 'Oui, marquer comme étant à jour';
	@override String get fdroid => 'F-Droid Officiel';
	@override String get appIdOrName => 'ID ou nom de l\'application';
	@override String get appId => 'ID de l\'application';
	@override String get appWithIdOrNameNotFound => 'Aucune application n\'a été trouvée avec cet identifiant ou ce nom';
	@override String get reposHaveMultipleApps => 'Les dépôts peuvent contenir plusieurs applications';
	@override String get fdroidThirdPartyRepo => 'Dépôt tiers F-Droid';
	@override String get codeberg => 'Codeberg';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Installer';
	@override String get markInstalled => 'Marquer comme installée';
	@override String get update => 'Mettre à jour';
	@override String get updated => 'À jour';
	@override String get markUpdated => 'Marquer comme à jour';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Options supplémentaires';
	@override String get disableVersionDetection => 'Désactiver la détection de la version';
	@override String get noVersionDetectionExplanation => 'Cette option ne doit être utilisée que pour les applications où la détection de la version ne fonctionne pas correctement.';
	@override String get downloadingX => 'Téléchargement de {}';
	@override String get downloadX => 'Télécharger {}';
	@override String get downloadedX => 'Téléchargé {}';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Élément de version';
	@override String get downloadNotifDescription => 'Notifie l\'utilisateur sur l\'avancement du téléchargement d\'une application';
	@override String get noAPKFound => 'Aucun APK trouvé';
	@override String get noVersionDetection => 'Aucune détection de version';
	@override String get categorize => 'Catégoriser';
	@override String get categories => 'Catégories';
	@override String get category => 'Catégorie';
	@override String get noCategory => 'Aucune catégorie';
	@override String get noCategories => 'Aucune catégorie';
	@override String get categoryDeleteQuestion => 'Supprimer les catégories ?';
	@override String get categoryDeleteWarning => 'Toutes les applications des catégories supprimées seront définies comme non catégorisées.';
	@override String get addCategory => 'Ajouter une catégorie';
	@override String get label => 'Nom';
	@override String get language => 'Langue';
	@override String get copiedToClipboard => 'Copié dans le presse-papier';
	@override String get storagePermissionDenied => 'Permission de stockage refusée';
	@override String get selectedCategorizeWarning => 'Cela va remplacer toutes les catégories définies des applications sélectionnées.';
	@override String get filterAPKsByRegEx => 'Filtrer les APK par expression régulière';
	@override String get removeFromUpdatium => 'Supprimer d\'Updatium';
	@override String get uninstallFromDevice => 'Désinstaller de l\'appareil';
	@override String get onlyWorksWithNonVersionDetectApps => 'Ne fonctionne qu\'avec les applications dont la détection de la version est désactivée.';
	@override String get releaseDateAsVersion => 'Utiliser la date de sortie comme version';
	@override String get releaseTitleAsVersion => 'Utiliser le titre de la version comme chaîne de version';
	@override String get releaseDateAsVersionExplanation => 'Cette option ne doit être utilisée que pour les applications pour lesquelles la détection de la version ne fonctionne pas correctement, mais dont une date de sortie est disponible.';
	@override String get changes => 'Modifications';
	@override String get releaseDate => 'Date de sortie';
	@override String get importFromURLsInFile => 'Importer à partir des URLs d\'un fichier (comme OPML)';
	@override String get versionDetectionExplanation => 'Réconcilier la chaîne de version avec la version détectée par le système d\'exploitation';
	@override String get versionDetection => 'Détection de la version';
	@override String get standardVersionDetection => 'Détection de la version standard';
	@override String get groupByCategory => 'Grouper par catégorie';
	@override String get listView => 'Vue en liste';
	@override String get gridView => 'Vue en grille';
	@override String get autoApkFilterByArch => 'Essayer de filtrer les APKs par architecture CPU si possible';
	@override String get autoLinkFilterByArch => 'Essayer de filtrer les liens en fonction de l\'architecture de l\'unité centrale si possible';
	@override String get overrideSource => 'Remplacer la source';
	@override String get dontShowAgain => 'Ne plus afficher';
	@override String get dontShowTrackOnlyWarnings => 'Ne plus afficher les avertissements \'Suivi uniquement\'';
	@override String get dontShowAPKOriginWarnings => 'Ne plus afficher les avertissements sur l\'origine de l\'APK';
	@override String get moveNonInstalledAppsToBottom => 'Déplacer les applications non installées vers le bas de la vue Applications';
	@override String get gitlabPATLabel => 'Jeton d\'accès personnel GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'À propos';
	@override String get requiresCredentialsInSettings => '{} a besoin d\'informations d\'identification supplémentaires (dans les Paramètres)';
	@override String get checkOnStart => 'Rechercher les mises à jour au démarrage';
	@override String get safeMode => 'Mode sans échec';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'L\'ajout d\'application est désactivé en mode sans échec';
	@override String get tryInferAppIdFromCode => 'Essayer de déduire l\'ID de l\'application à partir du code source';
	@override String get removeOnExternalUninstall => 'Supprimer automatiquement les applications désinstallées en externe';
	@override String get pickHighestVersionCode => 'Sélectionner automatiquement la version la plus récente du code APK';
	@override String get checkUpdateOnDetailPage => 'Rechercher les mises à jour lors de l\'ouverture de la page détaillée d\'une application';
	@override String get disablePageTransitions => 'Désactiver les animations de transition de page';
	@override String get reversePageTransitions => 'Inverser les animations de transition de page';
	@override String get minStarCount => 'Nombre minimum d\'étoiles';
	@override String get addInfoBelow => 'Ajoutez cette information ci-dessous.';
	@override String get addInfoInSettings => 'Ajoutez cette information dans les paramètres.';
	@override String get githubSourceNote => 'La limitation du débit de GitHub peut être évitée à l\'aide d\'une clé d\'API.';
	@override String get sortByLastLinkSegment => 'Trier par le dernier segment du lien';
	@override String get filterReleaseNotesByRegEx => 'Filtrer les notes de version par expression régulière';
	@override String get customLinkFilterRegex => 'Filtre de lien APK personnalisé par expression régulière (par défaut \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Tentatives de mise à jour d\'applications';
	@override String get appsPossiblyUpdatedNotifDescription => 'Notifie à l\'utilisateur que des mises à jour d\'une ou plusieurs applications ont potentiellement été appliquées en arrière-plan';
	@override String get xWasPossiblyUpdatedToY => '{} a peut-être été mise à jour vers {}.';
	@override String get enableBackgroundUpdates => 'Activer les mises à jour en arrière-plan';
	@override String get backgroundUpdateReqsExplanation => 'Les mises à jour en arrière-plan peuvent ne pas être possibles pour toutes les applications.';
	@override String get backgroundUpdateLimitsExplanation => 'Le succès d\'une installation en arrière-plan ne peut être déterminé qu\'à l\'ouverture d\'Updatium.';
	@override String get verifyLatestTag => 'Vérifier la balise \'latest\'';
	@override String get intermediateLinkRegex => 'Filtrer un lien \'intermédiaire\' à visiter';
	@override String get filterByLinkText => 'Filtrer les liens par texte du lien';
	@override String get matchLinksOutsideATags => 'Liens en dehors des balises <a>';
	@override String get intermediateLinkNotFound => 'Lien intermédiaire introuvable';
	@override String get intermediateLink => 'Lien intermédiaire';
	@override String get exemptFromBackgroundUpdates => 'Exclure des mises à jour en arrière-plan (si activées)';
	@override String get bgUpdatesOnWiFiOnly => 'Désactiver les mises à jour en arrière-plan lorsque vous n\'êtes pas en Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Désactiver les mises à jour en arrière-plan lorsque l\'appareil n\'est pas en charge';
	@override String get autoSelectHighestVersionCode => 'Sélectionner automatiquement la version la plus récente du code APK';
	@override String get versionExtractionRegEx => 'Expression régulière d\'extraction de version';
	@override String get trimVersionString => 'Découper la chaîne de version avec une expression régulière';
	@override String get matchGroupToUseForX => 'Groupe de correspondance à utiliser pour "{}"';
	@override String get matchGroupToUse => 'Groupe de correspondance à utiliser pour l\'extraction de la version par expression régulière';
	@override String get highlightTouchTargets => 'Mettre en évidence les zones tactiles moins évidentes';
	@override String get pickExportDir => 'Sélectionner le dossier d\'exportation';
	@override String get autoExportOnChanges => 'Exporter automatiquement lors de modifications';
	@override String get includeSettings => 'Inclure les paramètres';
	@override String get filterVersionsByRegEx => 'Filtrer les versions par expression régulière';
	@override String get trySelectingSuggestedVersionCode => 'Essayer de sélectionner le code de version APK suggéré';
	@override String get dontSortReleasesList => 'Conserver l\'ordre de version de l\'API';
	@override String get reverseSort => 'Tri inversé';
	@override String get takeFirstLink => 'Utiliser le premier lien';
	@override String get skipSort => 'Ignorer le tri';
	@override String get debugMenu => 'Menu de débogage';
	@override String get bgTaskStarted => 'Tâche en arrière-plan démarrée - vérifier les journaux.';
	@override String get runBgCheckNow => 'Exécuter la recherche de mises à jour en arrière-plan maintenant';
	@override String get versionExtractWholePage => 'Appliquer l\'expression régulière d\'extraction de version à l\'ensemble de la page';
	@override String get installing => 'Installation';
	@override String get skipUpdateNotifications => 'Désactiver les notifications de mise à jour';
	@override String get updatesAvailableNotifChannel => 'Mises à jour disponibles';
	@override String get appsUpdatedNotifChannel => 'Applications mises à jour';
	@override String get appsPossiblyUpdatedNotifChannel => 'Tentatives de mise à jour d\'applications';
	@override String get errorCheckingUpdatesNotifChannel => 'Erreur lors de la recherche de mises à jour';
	@override String get appsRemovedNotifChannel => 'Applications supprimées';
	@override String get downloadingXNotifChannel => 'Téléchargement de {}';
	@override String get completeAppInstallationNotifChannel => 'Terminer l\'installation de l\'application';
	@override String get checkingForUpdatesNotifChannel => 'Recherche de mises à jour';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Rechercher uniquement les mises à jour des applications installées et des applications \'Suivi uniquement\'';
	@override String get supportFixedAPKURL => 'Prise en charge des URL APK fixes';
	@override String get selectX => 'Sélectionner {}';
	@override String get parallelDownloads => 'Autoriser les téléchargements simultanés';
	@override String get useShizuku => 'Utiliser Shizuku ou Sui pour l\'installation';
	@override String get shizukuBinderNotFound => 'Le service Shizuku n\'est pas en cours d\'exécution';
	@override String get shizukuOld => 'Ancienne version de Shizuku (<11) - veuillez le mettre à jour';
	@override String get shizukuOldAndroidWithADB => 'Shizuku fonctionne sur Android < 8.1 avec ADB - veuillez mettre à jour Android ou utiliser Sui à la place';
	@override String get shizukuPretendToBeGooglePlay => 'Définir Google Play comme source d\'installation (si Shizuku est utilisé)';
	@override String get useSystemFont => 'Utiliser la police du système';
	@override String get useVersionCodeAsOSVersion => 'Utiliser le code de version de l\'application détectée par le système d\'exploitation';
	@override String get requestHeader => 'En-tête de requête';
	@override String get useLatestAssetDateAsReleaseDate => 'Utiliser la date du dernier élément mis en ligne comme date de sortie';
	@override String get defaultPseudoVersioningMethod => 'Méthode de versionnage fictif par défaut';
	@override String get partialAPKHash => 'Hash partiel de l\'APK';
	@override String get APKLinkHash => 'Hash du lien APK';
	@override String get directAPKLink => 'Lien direct de l\'APK';
	@override String get pseudoVersionInUse => 'Une pseudo-version est utilisée';
	@override String get installedVersion => 'Installée';
	@override String get installed => 'Installée';
	@override String get notInstalledApps => 'Non installée';
	@override String get latest => 'Dernière version';
	@override String get invertRegEx => 'Inverser l\'expression régulière';
	@override String get note => 'Remarque';
	@override String get selfHostedNote => 'La liste déroulante "{}" peut être utilisée pour accéder à des instances auto-hébergées/personnalisées de n\'importe quelle source.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'L\'APK n\'a pas pu être analysé (téléchargement incompatible ou partiel)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Partager les nouvelles applications avec AppVerifier (si disponible)';
	@override String get appVerifierInstructionToast => 'Partagez avec AppVerifier, puis revenez ici lorsque tout est prêt.';
	@override String get wiki => 'Aide/Wiki';
	@override String get wikiHint => 'Ouvrir la documentation wiki de Updatium';
	@override String get allowInsecure => 'Autoriser les requêtes HTTP non sécurisées';
	@override String get stayOneVersionBehind => 'Rester une version en arrière de la dernière';
	@override String get useFirstApkOfVersion => 'Sélection automatique du premier APK parmi plusieurs';
	@override String get refreshBeforeDownload => 'Actualiser les détails de l\'application avant de la télécharger';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nom';
	@override String get smartname => 'Nom (Smart)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Méthode de tri';
	@override String get welcome => 'Bienvenue';
	@override String get batteryOptimizationNote => 'Notez que les téléchargements en arrière-plan peuvent fonctionner de manière plus fiable si vous désactivez les optimisations de la batterie du système d\'exploitation pour Updatium.';
	@override String get fileDeletionError => 'Échec de la suppression du fichier (essayez de le supprimer manuellement puis réessayez) : "{}"';
	@override String get foregroundService => 'Service d\'avant-plan Updatium';
	@override String get foregroundServiceExplanation => 'Utiliser un service de premier plan pour la vérification des mises à jour (plus fiable, consomme plus d\'énergie)';
	@override String get fgServiceNotice => 'Cette notification est nécessaire pour la vérification des mises à jour en arrière-plan (elle peut être masquée dans les paramètres du système d\'exploitation).';
	@override String get excludeSecrets => 'Exclure les secrets';
	@override String get GHReqPrefix => 'instance \'omeritzics/Updatium\' pour les requêtes GitHub';
	@override String get includeZips => 'Inclure les fichiers ZIP';
	@override String get zippedApkFilterRegEx => 'Filtrer les APK à l\'intérieur du ZIP';
	@override String get multipleSigners => 'Plusieurs signataires';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Supprimer l\'application ?',
		other: 'Supprimer les applications ?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Trop de requêtes (taux limité) - réessayez dans {count} minute',
		other: 'Trop de requêtes (taux limité) - réessayez dans {count} minutes',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'La recherche de mise à jour en arrière-plan a rencontré une erreur {error}, une nouvelle tentative programmée dans {count} minute',
		other: 'La recherche de mise à jour en arrière-plan a rencontré une erreur {error}, une nouvelle tentative programmée dans {count} minutes',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'La recherche de mises à jour en arrière-plan a trouvé {count} mise à jour - l\'utilisateur sera notifié si nécessaire',
		other: 'La recherche de mises à jour en arrière-plan a trouvé {count} mises à jour - l\'utilisateur sera notifié si nécessaire',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{count} Application',
		other: '{count} Applications',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{count} URL',
		other: '{count} URLs',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{count} minute',
		other: '{count} minutes',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{count} heure',
		other: '{count} heures',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{count} jour',
		other: '{count} jours',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Nettoyage du journal {n} (avant = {before}, après = {after})',
		other: 'Nettoyage des journaux {n} (avant = {before}, après = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{app} et 1 autre application ont des mises à jour.',
		other: '{app} et {count} autres applications ont des mises à jour.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{app} et 1 autre application ont été mises à jour.',
		other: '{app} et {count} autres applications ont été mises à jour.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Échec de la mise à jour de {app} et 1 autre application.',
		other: 'Échec de la mise à jour de {app} et {count} autres applications.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{app} et 1 autre application ont peut-être été mises à jour.',
		other: '{app} et {count} autres applications ont peut-être été mises à jour.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: '{count} APK',
		other: '{count} APKs',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n,
		one: 'Certificat Hash',
		other: 'Certificat Hashes',
	);
	@override String get securityDisclaimerTitle => 'Avis de Sécurité et Légal';
	@override String get license => 'Licence';
	@override String get licenseText => 'Cette application est distribuée sous la Licence GPL v3.';
	@override String get disclaimer => 'Avertissement';
	@override String get disclaimerText => 'Cette application ne distribue, n\'héberge ni ne vérifie aucune des applications externes. L\'utilisateur assume l\'entière responsabilité de la sécurité et de la légalité de tout logiciel installé via cet outil.\n\nhttps://github.com/omeritzics/Updatium est le seul endroit officiel pour télécharger Updatium - il est fortement déconseillé de le télécharger ailleurs car le téléchargement depuis des sources non officielles est dangereux.';
	@override String get privacy => 'Confidentialité';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Accepter et continuer';
	@override String get decline => 'Refuser';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Vous aimez Updatium ?';
	@override String get githubStarPromptContent => 'Updatium est un projet communautaire open-source volontaire développé pendant mon temps libre. Si vous souhaitez soutenir le projet, merci de lui donner une étoile sur GitHub pour nous aider à atteindre plus d\'utilisateurs et de contributeurs. Vous ne serez plus sollicité à ce sujet. Merci d\'avance ! :)';
	@override String get githubStarPromptStar => 'Donner une étoile';
	@override String get githubStarPromptDontShowAgain => 'Ne plus afficher';
	@override String get sourceCode => 'Code source';
	@override String get developedBy => 'Développé par';
	@override String get appDescription => 'Un catalogue d\'applications Android personnalisable qui vous permet de mettre à jour vos applications directement depuis leurs sources APK.';
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

/// The flat map containing all translations for locale <fr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsFr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'URL de l\'application {} invalide',
			'noReleaseFound' => 'Impossible de trouver une publication correspondante',
			'noVersionFound' => 'Impossible de déterminer la version de la publication',
			'urlMatchesNoSource' => 'L\'URL ne correspond pas à une source connue',
			'cantInstallOlderVersion' => 'Impossible d\'installer une ancienne version de l\'application',
			'appIdMismatch' => 'L\'ID du paquet téléchargé ne correspond pas à l\'ID de l\'application existante',
			'functionNotImplemented' => 'Cette classe n\'implémente pas cette fonction',
			'placeholder' => 'Espace réservé',
			'someErrors' => 'Des erreurs sont survenues',
			'unexpectedError' => 'Erreur inattendue',
			'ok' => 'OK',
			'and' => 'et',
			'githubPATLabel' => 'Jeton d\'accès personnel GitHub',
			'includePrereleases' => 'Inclure les versions préliminaires',
			'fallbackToOlderReleases' => 'Revenir aux anciennes versions',
			'filterReleaseTitlesByRegEx' => 'Filtrer les titres de version par expression régulière',
			'invalidRegEx' => 'Expression régulière invalide',
			'noDescription' => 'Aucune description',
			'cancel' => 'Annuler',
			'kContinue' => 'Continuer',
			'requiredInBrackets' => '(Requis)',
			'dropdownNoOptsError' => 'ERREUR: LA LISTE DÉROULANTE DOIT AVOIR AU MOINS UNE OPTION',
			'color' => 'Couleur',
			'standard' => 'Norme',
			'custom' => 'Personnalisé',
			'primary' => 'Primary',
			'useMaterialYou' => 'Utiliser les couleurs Material You',
			'githubStarredRepos' => 'dépôts étoilés GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nom d\'utilisateur',
			'wrongArgNum' => 'Nombre incorrect des arguments fournis',
			'xIsTrackOnly' => '{} en Suivi uniquement',
			'source' => 'source',
			'app' => 'Appli',
			'appsFromSourceAreTrackOnly' => 'Les applications de cette source sont en \'Suivi uniquement\'.',
			'youPickedTrackOnly' => 'Vous avez sélectionné l\'option \'Suivi uniquement\'.',
			'trackOnlyAppDescription' => 'L\'application sera suivie pour les mises à jour, mais Updatium ne pourra pas la télécharger ou l\'installer.',
			'cancelled' => 'Annulé',
			'appAlreadyAdded' => 'Application déjà ajoutée',
			'alreadyUpToDateQuestion' => 'L\'application est déjà à jour?',
			'addApp' => 'Ajouter appli',
			'appSourceURL' => 'URL source de l\'application',
			'error' => 'Erreur',
			'add' => 'Ajouter',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Rechercher (certaines sources uniquement)',
			'search' => 'Rechercher',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Options supplémentaires pour {}',
			'supportedSources' => 'Sources prises en charge',
			'trackOnlyInBrackets' => '(Suivi uniquement)',
			'searchableInBrackets' => '(Interrogeable)',
			'appsString' => 'Applis',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Bienvenue !',
			'noAppsSubtext' => 'Vous pouvez ajouter votre première application en appuyant sur \'Ajouter appli\' ci-dessous.',
			'noAppsForFilter' => 'Aucune application correspondant au filtre',
			'byX' => 'Par {}',
			'percentProgress' => 'Progression : {}%',
			'pleaseWait' => 'Veuillez patienter',
			'updateAvailable' => 'Mise à jour disponible',
			'notInstalled' => 'Non installée',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'Version fictive',
			'selectAll' => 'Tout sélectionner',
			'deselectX' => 'Désélectionner {}',
			'xWillBeRemovedButRemainInstalled' => '{} sera supprimée d\'Updatium mais restera installée sur l\'appareil.',
			'removeSelectedAppsQuestion' => 'Supprimer les applications sélectionnées ?',
			'removeSelectedApps' => 'Supprimer les applications sélectionnées',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Mettre à jour {}',
			'installX' => 'Installer {}',
			'markXTrackOnlyAsUpdated' => 'Marquer {}\n(Suivi uniquement)\ncomme étant à jour',
			'changeX' => 'Modifier {}',
			'installUpdateApps' => 'Installer/Mettre à jour les applications',
			'installUpdateSelectedApps' => 'Installer/Mettre à jour les applications sélectionnées',
			'markXSelectedAppsAsUpdated' => 'Marquer les {} applications sélectionnées comme étant à jour ?',
			'no' => 'Non',
			'yes' => 'Oui',
			'markSelectedAppsUpdated' => 'Marquer les applications sélectionnées comme étant à jour',
			'pinToTop' => 'Épingler en haut',
			'unpinFromTop' => 'Désépingler du haut',
			'resetInstallStatusForSelectedAppsQuestion' => 'Réinitialiser l\'état d\'installation des applications sélectionnées ?',
			'installStatusOfXWillBeResetExplanation' => 'L\'état d\'installation de toutes les applications sélectionnées sera réinitialisé.\n\nCela peut être utile lorsque la version de l\'application affichée dans Updatium est incorrecte en raison de l\'échec des mises à jour ou d\'autres problèmes.',
			'customLinkMessage' => 'Ces liens fonctionnent sur les appareils sur lesquels Updatium est installé',
			'shareAppConfigLinks' => 'Partager la configuration de l\'application sous forme de lien HTML',
			'resetInstallStatus' => 'Réinitialiser l\'état d\'installation des applications',
			'more' => 'Plus',
			'removeOutdatedFilter' => 'Supprimer le filtre des applications obsolètes',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Afficher uniquement les applications obsolètes',
			'filter' => 'Filtre',
			'filterApps' => 'Filtrer les applications',
			'filterDays' => 'Filter days',
			'appName' => 'Nom de l\'application',
			'author' => 'Auteur',
			'upToDateApps' => 'Applications à jour',
			'nonInstalledApps' => 'Applications non installées',
			'importExport' => 'Import/Export',
			'settings' => 'Paramètres',
			'exportedTo' => 'Exporté vers {}',
			'updatiumExport' => 'Exporter la configuration d\'Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Entrée invalide',
			'importedX' => 'Importé {}',
			'updatiumImport' => 'Importer la configuration sur Updatium',
			'importFromURLList' => 'Importer depuis une liste d\'URL',
			'searchQuery' => 'Requête de recherche',
			'appURLList' => 'Liste d\'URL des applications',
			'line' => 'Ligne',
			'searchX' => 'Rechercher {}',
			'noResults' => 'Aucun résultat',
			'importX' => 'Importation de {}',
			'importedAppsIdDisclaimer' => 'Les applications importées peuvent s\'afficher de manière incorrecte comme étant "Non installées".\nPour résoudre ce problème, réinstallez-les via Updatium.\nCela n\'affectera pas les données des applications.\n\nCela n\'affecte que les méthodes d\'importation d\'URL et par des tiers.',
			'importErrors' => 'Erreurs lors de l\'importation',
			'importedXOfYApps' => '{} applications sur {} ont été importées.',
			'followingURLsHadErrors' => 'Les URL suivantes comportent des erreurs :',
			'selectURL' => 'Sélectionner l\'URL',
			'selectURLs' => 'Sélectionner les URL',
			'pick' => 'Choisir',
			'theme' => 'Thème',
			'dark' => 'Sombre',
			'light' => 'Clair',
			'followSystem' => 'Suivre le système',
			'followSystemThemeExplanation' => 'Suivre le thème du système est possible en utilisant des applications tierces.',
			'useBlackTheme' => 'Utiliser un thème noir',
			'appSortBy' => 'Trier les applications par',
			'authorName' => 'Auteur/Nom',
			'nameAuthor' => 'Nom/Auteur',
			'asAdded' => 'Date d\'ajout',
			'appSortOrder' => 'Ordre de tri des applications',
			'ascending' => 'Ascendant',
			'descending' => 'Descendant',
			'bgUpdateCheckInterval' => 'Intervalle de recherche de mises à jour en arrière-plan',
			'neverManualOnly' => 'Jamais - Manuellement uniquement',
			'appearance' => 'Apparence',
			'pinUpdates' => 'Épingler les mises à jour en haut de l\'onglet \'Applications\'',
			'updates' => 'Mises à jour',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Spécifique à la source',
			'appSource' => 'Source de l\'application',
			'appSourceHint' => 'Ouvrir le dépôt source de l\'application',
			'noLogs' => 'Aucun journal',
			'appLogs' => 'Journaux d\'application',
			'appLogsHint' => 'Voir les journaux de l\'application',
			'close' => 'Fermer',
			'share' => 'Partager',
			'appNotFound' => 'Application introuvable',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'export-updatium',
			'pickAnAPK' => 'Sélectionner un APK',
			'appHasMoreThanOnePackage' => '{} a plus d\'un paquet :',
			'deviceSupportsXArch' => 'Votre appareil prend en charge l\'architecture CPU {}.',
			'deviceSupportsFollowingArchs' => 'Votre appareil prend en charge les architectures CPU suivantes : ',
			'warning' => 'Avertissement',
			'sourceIsXButPackageFromYPrompt' => 'La source de l\'application est \'{}\' mais le paquet de mise à jour provient de \'{}\'. Continuer ?',
			'updatesAvailable' => 'Mises à jour disponibles',
			'updatesAvailableNotifDescription' => 'Notifie à l\'utilisateur que des mises à jour sont disponibles pour une ou plusieurs applications suivies par Updatium.',
			'noNewUpdates' => 'Aucune nouvelle mise à jour.',
			'xHasAnUpdate' => '{} a une mise à jour.',
			'appsUpdated' => 'Applications mises à jour',
			'appsNotUpdated' => 'Échec de la mise à jour des applications',
			'appsUpdatedNotifDescription' => 'Notifie à l\'utilisateur que des mises à jour d\'une ou plusieurs applications ont été installées en arrière-plan.',
			'xWasUpdatedToY' => '{} a été mise à jour vers {}.',
			'xWasNotUpdatedToY' => 'Échec de la mise à jour de {} vers {}.',
			'errorCheckingUpdates' => 'Erreur lors de la recherche de mises à jour',
			'errorCheckingUpdatesNotifDescription' => 'Notifie l\'utilisateur lorsque la recherche de mises à jour en arrière-plan échoue.',
			'appsRemoved' => 'Applications supprimées',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Notifie à l\'utilisateur qu\'une ou plusieurs applications ont été supprimées en raison d\'erreurs lors de leur chargement.',
			'xWasRemovedDueToErrorY' => '{} a été supprimée en raison de cette erreur : {}',
			'completeAppInstallation' => 'Installation complète de l\'application',
			'updatiumMustBeOpenToInstallApps' => 'Updatium doit être ouvert pour installer les applications',
			'completeAppInstallationNotifDescription' => 'Demande à l\'utilisateur de retourner sur Updatium pour terminer l\'installation d\'une application',
			'checkingForUpdates' => 'Recherche de mises à jour',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notification temporaire qui apparaît lors de la recherche de mises à jour',
			'pleaseAllowInstallPerm' => 'Veuillez autoriser Updatium à installer des applications',
			'trackOnly' => 'Suivi uniquement',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Erreur {}',
			'versionCorrectionDisabled' => 'Correction de version désactivée (le plugin ne semble pas fonctionner)',
			'unknown' => 'Inconnu',
			'none' => 'Aucun',
			'all' => 'Tous',
			'never' => 'Jamais',
			'latestVersion' => 'Dernière version ',
			'installedVersionX' => 'Version installée : {}',
			'lastUpdateCheckX' => 'Dernière recherche de mises à jour : {}',
			'remove' => 'Supprimer',
			'quickLinks' => 'Liens rapides',
			'yesMarkUpdated' => 'Oui, marquer comme étant à jour',
			'fdroid' => 'F-Droid Officiel',
			'appIdOrName' => 'ID ou nom de l\'application',
			'appId' => 'ID de l\'application',
			'appWithIdOrNameNotFound' => 'Aucune application n\'a été trouvée avec cet identifiant ou ce nom',
			'reposHaveMultipleApps' => 'Les dépôts peuvent contenir plusieurs applications',
			'fdroidThirdPartyRepo' => 'Dépôt tiers F-Droid',
			'codeberg' => 'Codeberg',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Installer',
			'markInstalled' => 'Marquer comme installée',
			'update' => 'Mettre à jour',
			'updated' => 'À jour',
			'markUpdated' => 'Marquer comme à jour',
			'download' => 'Download',
			'additionalOptions' => 'Options supplémentaires',
			'disableVersionDetection' => 'Désactiver la détection de la version',
			'noVersionDetectionExplanation' => 'Cette option ne doit être utilisée que pour les applications où la détection de la version ne fonctionne pas correctement.',
			'downloadingX' => 'Téléchargement de {}',
			'downloadX' => 'Télécharger {}',
			'downloadedX' => 'Téléchargé {}',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Élément de version',
			'downloadNotifDescription' => 'Notifie l\'utilisateur sur l\'avancement du téléchargement d\'une application',
			'noAPKFound' => 'Aucun APK trouvé',
			'noVersionDetection' => 'Aucune détection de version',
			'categorize' => 'Catégoriser',
			'categories' => 'Catégories',
			'category' => 'Catégorie',
			'noCategory' => 'Aucune catégorie',
			'noCategories' => 'Aucune catégorie',
			'categoryDeleteQuestion' => 'Supprimer les catégories ?',
			'categoryDeleteWarning' => 'Toutes les applications des catégories supprimées seront définies comme non catégorisées.',
			'addCategory' => 'Ajouter une catégorie',
			'label' => 'Nom',
			'language' => 'Langue',
			'copiedToClipboard' => 'Copié dans le presse-papier',
			'storagePermissionDenied' => 'Permission de stockage refusée',
			'selectedCategorizeWarning' => 'Cela va remplacer toutes les catégories définies des applications sélectionnées.',
			'filterAPKsByRegEx' => 'Filtrer les APK par expression régulière',
			'removeFromUpdatium' => 'Supprimer d\'Updatium',
			'uninstallFromDevice' => 'Désinstaller de l\'appareil',
			'onlyWorksWithNonVersionDetectApps' => 'Ne fonctionne qu\'avec les applications dont la détection de la version est désactivée.',
			'releaseDateAsVersion' => 'Utiliser la date de sortie comme version',
			'releaseTitleAsVersion' => 'Utiliser le titre de la version comme chaîne de version',
			'releaseDateAsVersionExplanation' => 'Cette option ne doit être utilisée que pour les applications pour lesquelles la détection de la version ne fonctionne pas correctement, mais dont une date de sortie est disponible.',
			'changes' => 'Modifications',
			'releaseDate' => 'Date de sortie',
			'importFromURLsInFile' => 'Importer à partir des URLs d\'un fichier (comme OPML)',
			'versionDetectionExplanation' => 'Réconcilier la chaîne de version avec la version détectée par le système d\'exploitation',
			'versionDetection' => 'Détection de la version',
			'standardVersionDetection' => 'Détection de la version standard',
			'groupByCategory' => 'Grouper par catégorie',
			'listView' => 'Vue en liste',
			'gridView' => 'Vue en grille',
			'autoApkFilterByArch' => 'Essayer de filtrer les APKs par architecture CPU si possible',
			'autoLinkFilterByArch' => 'Essayer de filtrer les liens en fonction de l\'architecture de l\'unité centrale si possible',
			'overrideSource' => 'Remplacer la source',
			'dontShowAgain' => 'Ne plus afficher',
			'dontShowTrackOnlyWarnings' => 'Ne plus afficher les avertissements \'Suivi uniquement\'',
			'dontShowAPKOriginWarnings' => 'Ne plus afficher les avertissements sur l\'origine de l\'APK',
			'moveNonInstalledAppsToBottom' => 'Déplacer les applications non installées vers le bas de la vue Applications',
			'gitlabPATLabel' => 'Jeton d\'accès personnel GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'À propos',
			'requiresCredentialsInSettings' => '{} a besoin d\'informations d\'identification supplémentaires (dans les Paramètres)',
			'checkOnStart' => 'Rechercher les mises à jour au démarrage',
			'safeMode' => 'Mode sans échec',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'L\'ajout d\'application est désactivé en mode sans échec',
			'tryInferAppIdFromCode' => 'Essayer de déduire l\'ID de l\'application à partir du code source',
			'removeOnExternalUninstall' => 'Supprimer automatiquement les applications désinstallées en externe',
			'pickHighestVersionCode' => 'Sélectionner automatiquement la version la plus récente du code APK',
			'checkUpdateOnDetailPage' => 'Rechercher les mises à jour lors de l\'ouverture de la page détaillée d\'une application',
			'disablePageTransitions' => 'Désactiver les animations de transition de page',
			'reversePageTransitions' => 'Inverser les animations de transition de page',
			'minStarCount' => 'Nombre minimum d\'étoiles',
			'addInfoBelow' => 'Ajoutez cette information ci-dessous.',
			'addInfoInSettings' => 'Ajoutez cette information dans les paramètres.',
			'githubSourceNote' => 'La limitation du débit de GitHub peut être évitée à l\'aide d\'une clé d\'API.',
			'sortByLastLinkSegment' => 'Trier par le dernier segment du lien',
			'filterReleaseNotesByRegEx' => 'Filtrer les notes de version par expression régulière',
			'customLinkFilterRegex' => 'Filtre de lien APK personnalisé par expression régulière (par défaut \'.apk$\')',
			'appsPossiblyUpdated' => 'Tentatives de mise à jour d\'applications',
			'appsPossiblyUpdatedNotifDescription' => 'Notifie à l\'utilisateur que des mises à jour d\'une ou plusieurs applications ont potentiellement été appliquées en arrière-plan',
			'xWasPossiblyUpdatedToY' => '{} a peut-être été mise à jour vers {}.',
			'enableBackgroundUpdates' => 'Activer les mises à jour en arrière-plan',
			'backgroundUpdateReqsExplanation' => 'Les mises à jour en arrière-plan peuvent ne pas être possibles pour toutes les applications.',
			'backgroundUpdateLimitsExplanation' => 'Le succès d\'une installation en arrière-plan ne peut être déterminé qu\'à l\'ouverture d\'Updatium.',
			'verifyLatestTag' => 'Vérifier la balise \'latest\'',
			'intermediateLinkRegex' => 'Filtrer un lien \'intermédiaire\' à visiter',
			'filterByLinkText' => 'Filtrer les liens par texte du lien',
			'matchLinksOutsideATags' => 'Liens en dehors des balises <a>',
			'intermediateLinkNotFound' => 'Lien intermédiaire introuvable',
			'intermediateLink' => 'Lien intermédiaire',
			'exemptFromBackgroundUpdates' => 'Exclure des mises à jour en arrière-plan (si activées)',
			'bgUpdatesOnWiFiOnly' => 'Désactiver les mises à jour en arrière-plan lorsque vous n\'êtes pas en Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Désactiver les mises à jour en arrière-plan lorsque l\'appareil n\'est pas en charge',
			'autoSelectHighestVersionCode' => 'Sélectionner automatiquement la version la plus récente du code APK',
			'versionExtractionRegEx' => 'Expression régulière d\'extraction de version',
			'trimVersionString' => 'Découper la chaîne de version avec une expression régulière',
			'matchGroupToUseForX' => 'Groupe de correspondance à utiliser pour "{}"',
			'matchGroupToUse' => 'Groupe de correspondance à utiliser pour l\'extraction de la version par expression régulière',
			'highlightTouchTargets' => 'Mettre en évidence les zones tactiles moins évidentes',
			'pickExportDir' => 'Sélectionner le dossier d\'exportation',
			'autoExportOnChanges' => 'Exporter automatiquement lors de modifications',
			'includeSettings' => 'Inclure les paramètres',
			'filterVersionsByRegEx' => 'Filtrer les versions par expression régulière',
			'trySelectingSuggestedVersionCode' => 'Essayer de sélectionner le code de version APK suggéré',
			'dontSortReleasesList' => 'Conserver l\'ordre de version de l\'API',
			'reverseSort' => 'Tri inversé',
			'takeFirstLink' => 'Utiliser le premier lien',
			'skipSort' => 'Ignorer le tri',
			'debugMenu' => 'Menu de débogage',
			'bgTaskStarted' => 'Tâche en arrière-plan démarrée - vérifier les journaux.',
			'runBgCheckNow' => 'Exécuter la recherche de mises à jour en arrière-plan maintenant',
			'versionExtractWholePage' => 'Appliquer l\'expression régulière d\'extraction de version à l\'ensemble de la page',
			'installing' => 'Installation',
			'skipUpdateNotifications' => 'Désactiver les notifications de mise à jour',
			'updatesAvailableNotifChannel' => 'Mises à jour disponibles',
			'appsUpdatedNotifChannel' => 'Applications mises à jour',
			'appsPossiblyUpdatedNotifChannel' => 'Tentatives de mise à jour d\'applications',
			'errorCheckingUpdatesNotifChannel' => 'Erreur lors de la recherche de mises à jour',
			'appsRemovedNotifChannel' => 'Applications supprimées',
			'downloadingXNotifChannel' => 'Téléchargement de {}',
			'completeAppInstallationNotifChannel' => 'Terminer l\'installation de l\'application',
			'checkingForUpdatesNotifChannel' => 'Recherche de mises à jour',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Rechercher uniquement les mises à jour des applications installées et des applications \'Suivi uniquement\'',
			'supportFixedAPKURL' => 'Prise en charge des URL APK fixes',
			'selectX' => 'Sélectionner {}',
			'parallelDownloads' => 'Autoriser les téléchargements simultanés',
			'useShizuku' => 'Utiliser Shizuku ou Sui pour l\'installation',
			'shizukuBinderNotFound' => 'Le service Shizuku n\'est pas en cours d\'exécution',
			'shizukuOld' => 'Ancienne version de Shizuku (<11) - veuillez le mettre à jour',
			'shizukuOldAndroidWithADB' => 'Shizuku fonctionne sur Android < 8.1 avec ADB - veuillez mettre à jour Android ou utiliser Sui à la place',
			'shizukuPretendToBeGooglePlay' => 'Définir Google Play comme source d\'installation (si Shizuku est utilisé)',
			'useSystemFont' => 'Utiliser la police du système',
			'useVersionCodeAsOSVersion' => 'Utiliser le code de version de l\'application détectée par le système d\'exploitation',
			'requestHeader' => 'En-tête de requête',
			'useLatestAssetDateAsReleaseDate' => 'Utiliser la date du dernier élément mis en ligne comme date de sortie',
			'defaultPseudoVersioningMethod' => 'Méthode de versionnage fictif par défaut',
			'partialAPKHash' => 'Hash partiel de l\'APK',
			'APKLinkHash' => 'Hash du lien APK',
			'directAPKLink' => 'Lien direct de l\'APK',
			'pseudoVersionInUse' => 'Une pseudo-version est utilisée',
			'installedVersion' => 'Installée',
			'installed' => 'Installée',
			'notInstalledApps' => 'Non installée',
			'latest' => 'Dernière version',
			'invertRegEx' => 'Inverser l\'expression régulière',
			'note' => 'Remarque',
			'selfHostedNote' => 'La liste déroulante "{}" peut être utilisée pour accéder à des instances auto-hébergées/personnalisées de n\'importe quelle source.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'L\'APK n\'a pas pu être analysé (téléchargement incompatible ou partiel)',
			'beforeNewInstallsShareToAppVerifier' => 'Partager les nouvelles applications avec AppVerifier (si disponible)',
			'appVerifierInstructionToast' => 'Partagez avec AppVerifier, puis revenez ici lorsque tout est prêt.',
			'wiki' => 'Aide/Wiki',
			'wikiHint' => 'Ouvrir la documentation wiki de Updatium',
			'allowInsecure' => 'Autoriser les requêtes HTTP non sécurisées',
			'stayOneVersionBehind' => 'Rester une version en arrière de la dernière',
			'useFirstApkOfVersion' => 'Sélection automatique du premier APK parmi plusieurs',
			'refreshBeforeDownload' => 'Actualiser les détails de l\'application avant de la télécharger',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nom',
			'smartname' => 'Nom (Smart)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Méthode de tri',
			'welcome' => 'Bienvenue',
			'batteryOptimizationNote' => 'Notez que les téléchargements en arrière-plan peuvent fonctionner de manière plus fiable si vous désactivez les optimisations de la batterie du système d\'exploitation pour Updatium.',
			'fileDeletionError' => 'Échec de la suppression du fichier (essayez de le supprimer manuellement puis réessayez) : "{}"',
			'foregroundService' => 'Service d\'avant-plan Updatium',
			'foregroundServiceExplanation' => 'Utiliser un service de premier plan pour la vérification des mises à jour (plus fiable, consomme plus d\'énergie)',
			'fgServiceNotice' => 'Cette notification est nécessaire pour la vérification des mises à jour en arrière-plan (elle peut être masquée dans les paramètres du système d\'exploitation).',
			'excludeSecrets' => 'Exclure les secrets',
			'GHReqPrefix' => 'instance \'omeritzics/Updatium\' pour les requêtes GitHub',
			'includeZips' => 'Inclure les fichiers ZIP',
			'zippedApkFilterRegEx' => 'Filtrer les APK à l\'intérieur du ZIP',
			'multipleSigners' => 'Plusieurs signataires',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Supprimer l\'application ?', other: 'Supprimer les applications ?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Trop de requêtes (taux limité) - réessayez dans {count} minute', other: 'Trop de requêtes (taux limité) - réessayez dans {count} minutes', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'La recherche de mise à jour en arrière-plan a rencontré une erreur {error}, une nouvelle tentative programmée dans {count} minute', other: 'La recherche de mise à jour en arrière-plan a rencontré une erreur {error}, une nouvelle tentative programmée dans {count} minutes', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'La recherche de mises à jour en arrière-plan a trouvé {count} mise à jour - l\'utilisateur sera notifié si nécessaire', other: 'La recherche de mises à jour en arrière-plan a trouvé {count} mises à jour - l\'utilisateur sera notifié si nécessaire', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{count} Application', other: '{count} Applications', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{count} URL', other: '{count} URLs', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{count} minute', other: '{count} minutes', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{count} heure', other: '{count} heures', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{count} jour', other: '{count} jours', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Nettoyage du journal {n} (avant = {before}, après = {after})', other: 'Nettoyage des journaux {n} (avant = {before}, après = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{app} et 1 autre application ont des mises à jour.', other: '{app} et {count} autres applications ont des mises à jour.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{app} et 1 autre application ont été mises à jour.', other: '{app} et {count} autres applications ont été mises à jour.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Échec de la mise à jour de {app} et 1 autre application.', other: 'Échec de la mise à jour de {app} et {count} autres applications.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{app} et 1 autre application ont peut-être été mises à jour.', other: '{app} et {count} autres applications ont peut-être été mises à jour.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: '{count} APK', other: '{count} APKs', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('fr'))(n, one: 'Certificat Hash', other: 'Certificat Hashes', ), 
			'securityDisclaimerTitle' => 'Avis de Sécurité et Légal',
			'license' => 'Licence',
			'licenseText' => 'Cette application est distribuée sous la Licence GPL v3.',
			'disclaimer' => 'Avertissement',
			'disclaimerText' => 'Cette application ne distribue, n\'héberge ni ne vérifie aucune des applications externes. L\'utilisateur assume l\'entière responsabilité de la sécurité et de la légalité de tout logiciel installé via cet outil.\n\nhttps://github.com/omeritzics/Updatium est le seul endroit officiel pour télécharger Updatium - il est fortement déconseillé de le télécharger ailleurs car le téléchargement depuis des sources non officielles est dangereux.',
			'privacy' => 'Confidentialité',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Accepter et continuer',
			'decline' => 'Refuser',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Vous aimez Updatium ?',
			'githubStarPromptContent' => 'Updatium est un projet communautaire open-source volontaire développé pendant mon temps libre. Si vous souhaitez soutenir le projet, merci de lui donner une étoile sur GitHub pour nous aider à atteindre plus d\'utilisateurs et de contributeurs. Vous ne serez plus sollicité à ce sujet. Merci d\'avance ! :)',
			'githubStarPromptStar' => 'Donner une étoile',
			'githubStarPromptDontShowAgain' => 'Ne plus afficher',
			'sourceCode' => 'Code source',
			'developedBy' => 'Développé par',
			'appDescription' => 'Un catalogue d\'applications Android personnalisable qui vous permet de mettre à jour vos applications directement depuis leurs sources APK.',
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
