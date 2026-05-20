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
class TranslationsTr with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsTr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.tr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <tr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsTr _root = this; // ignore: unused_field

	@override 
	TranslationsTr $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsTr(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Geçerli bir {} uygulama bağlantısı (URL) değil';
	@override String get noReleaseFound => 'Uygun bir sürüm (release) bulunamadı';
	@override String get noVersionFound => 'Sürüm versiyonu belirlenemedi';
	@override String get urlMatchesNoSource => 'Bağlantı (URL) bilinen bir kaynakla eşleşmiyor';
	@override String get cantInstallOlderVersion => 'Uygulamanın daha eski bir sürümü yüklenemez';
	@override String get appIdMismatch => 'İndirilen paket kimliği (ID), mevcut uygulama kimliğiyle eşleşmiyor';
	@override String get functionNotImplemented => 'Bu sınıf bu işlevi uygulamamış';
	@override String get placeholder => 'Yer tutucu';
	@override String get someErrors => 'Bazı hatalar oluştu';
	@override String get unexpectedError => 'Beklenmeyen hata';
	@override String get ok => 'Tamam';
	@override String get and => 've';
	@override String get githubPATLabel => 'GitHub kişisel erişim anahtarı';
	@override String get includePrereleases => 'Ön sürümleri (prerelease) dahil et';
	@override String get fallbackToOlderReleases => 'Daha eski sürümlere başvur';
	@override String get filterReleaseTitlesByRegEx => 'Sürüm başlıklarını düzenli ifade (RegEx) ile filtrele';
	@override String get invalidRegEx => 'Geçersiz düzenli ifade (RegEx)';
	@override String get noDescription => 'Açıklama yok';
	@override String get cancel => 'İptal';
	@override String get kContinue => 'Devam et';
	@override String get requiredInBrackets => '(gerekli)';
	@override String get dropdownNoOptsError => 'HATA: AÇILIR MENÜDE EN AZ BİR SEÇENEK OLMALIDIR';
	@override String get color => 'Renk';
	@override String get standard => 'Standart';
	@override String get custom => 'Özel';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Material You renklerini kullan';
	@override String get githubStarredRepos => 'Yıldızlanmış GitHub depoları';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Kullanıcı adı';
	@override String get wrongArgNum => 'Yanlış sayıda argüman sağlandı';
	@override String get xIsTrackOnly => '{} sadece takip ediliyor (track-only)';
	@override String get source => 'Kaynak';
	@override String get app => 'Uygulama';
	@override String get appsFromSourceAreTrackOnly => 'Bu kaynaktaki uygulamalar sadece \'takip edilebilir\' (track-only).';
	@override String get youPickedTrackOnly => '\'Sadece takip et\' (track-only) seçeneğini seçtiniz.';
	@override String get trackOnlyAppDescription => 'Uygulama güncellemeler için takip edilecek, ancak Updatium bu uygulamayı indiremeyecek veya yükleyemeyecek.';
	@override String get cancelled => 'İptal edildi';
	@override String get appAlreadyAdded => 'Uygulama zaten eklenmiş';
	@override String get alreadyUpToDateQuestion => 'Uygulama zaten güncel mi?';
	@override String get addApp => 'Uygulama Ekle';
	@override String get appSourceURL => 'Uygulama kaynak bağlantısı (URL)';
	@override String get error => 'Hata';
	@override String get add => 'Ekle';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Ara (sadece bazı kaynaklar)';
	@override String get search => 'Ara';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => '{} için ek seçenekler';
	@override String get supportedSources => 'Desteklenen kaynaklar';
	@override String get trackOnlyInBrackets => '(sadece takip)';
	@override String get searchableInBrackets => '(aranabilir)';
	@override String get appsString => 'Uygulamalar';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Hoş geldiniz!';
	@override String get noAppsSubtext => 'Aşağıdaki \'Uygulama Ekle\'ye dokunarak ilk uygulamanızı ekleyebilirsiniz.';
	@override String get noAppsForFilter => 'Filtreye uygun uygulama yok';
	@override String get byX => 'Geliştirici: {}';
	@override String get percentProgress => 'İlerleme: %{}';
	@override String get pleaseWait => 'Lütfen bekleyin';
	@override String get updateAvailable => 'Güncelleme mevcut';
	@override String get notInstalled => 'Yüklü değil';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'sözde sürüm';
	@override String get selectAll => 'Tümünü seç';
	@override String get deselectX => '{} seçimini kaldır';
	@override String get xWillBeRemovedButRemainInstalled => '{} Updatium\'dan kaldırılacak ancak cihazda yüklü kalmaya devam edecek.';
	@override String get removeSelectedAppsQuestion => 'Seçili uygulamalar kaldırılsın mı?';
	@override String get removeSelectedApps => 'Seçili uygulamaları kaldır';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => '{} güncelle';
	@override String get installX => '{} yükle';
	@override String get markXTrackOnlyAsUpdated => '{}\n(sadece takip)\nuygulamasını güncel olarak işaretle';
	@override String get changeX => '{} değiştir';
	@override String get installUpdateApps => 'Uygulamaları yükle/güncelle';
	@override String get installUpdateSelectedApps => 'Seçili uygulamaları yükle/güncelle';
	@override String get markXSelectedAppsAsUpdated => 'Seçili {} uygulama güncel olarak işaretlensin mi?';
	@override String get no => 'Hayır';
	@override String get yes => 'Evet';
	@override String get markSelectedAppsUpdated => 'Seçili uygulamaları güncel olarak işaretle';
	@override String get pinToTop => 'Başa tuttur';
	@override String get unpinFromTop => 'Baştan ayır';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Seçili uygulamalar için yükleme durumu sıfırlansın mı?';
	@override String get installStatusOfXWillBeResetExplanation => 'Seçilen uygulamaların yükleme durumu sıfırlanacaktır.\n\nBu işlem, başarısız güncellemeler veya başka sorunlar nedeniyle Updatium\'da gösterilen uygulama sürümü yanlış olduğunda yardımcı olabilir.';
	@override String get customLinkMessage => 'Bu bağlantılar Updatium yüklü cihazlarda çalışır';
	@override String get shareAppConfigLinks => 'Uygulama yapılandırmasını HTML bağlantısı olarak paylaş';
	@override String get resetInstallStatus => 'Yükleme durumunu sıfırla';
	@override String get more => 'Daha fazla';
	@override String get removeOutdatedFilter => 'Güncel olmayan uygulama filtresini kaldır';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Sadece güncel olmayan uygulamaları göster';
	@override String get filter => 'Filtre';
	@override String get filterApps => 'Uygulamaları filtrele';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Uygulama adı';
	@override String get author => 'Geliştirici';
	@override String get upToDateApps => 'Güncel uygulamalar';
	@override String get nonInstalledApps => 'Yüklü olmayan uygulamalar';
	@override String get importExport => 'İçe/Dışa aktar';
	@override String get settings => 'Ayarlar';
	@override String get exportedTo => '{} konumuna dışa aktarıldı';
	@override String get updatiumExport => 'Updatium dışa aktarımı';
	@override String get failedToExport => 'Dışa aktarma başarısız';
	@override String get exportAlreadyInProgress => 'Dışa aktarma işlemi zaten devam ediyor';
	@override String get exportDirNotAccessible => 'Dışa aktarma dizinine erişilemiyor';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Dışa aktarma dosyası oluşturulamadı';
	@override String get invalidInput => 'Geçersiz giriş';
	@override String get importedX => '{} içe aktarıldı';
	@override String get updatiumImport => 'Updatium içe aktarımı';
	@override String get importFromURLList => 'Bağlantı (URL) listesinden içe aktar';
	@override String get searchQuery => 'Arama sorgusu';
	@override String get appURLList => 'Uygulama bağlantı (URL) listesi';
	@override String get line => 'Satır';
	@override String get searchX => '{} Ara';
	@override String get noResults => 'Sonuç bulunamadı';
	@override String get importX => '{} içe aktar';
	@override String get importedAppsIdDisclaimer => 'İçe aktarılan uygulamalar yanlışlıkla "yüklü değil" olarak görünebilir.\nBunu düzeltmek için uygulamaları Updatium üzerinden yeniden yükleyin.\nBu işlem uygulama verilerini etkilemeyecektir.\n\nSadece URL ve üçüncü taraf içe aktarma yöntemlerini etkiler.';
	@override String get importErrors => 'İçe aktarma hataları';
	@override String get importedXOfYApps => '{} / {} uygulama içe aktarıldı.';
	@override String get followingURLsHadErrors => 'Aşağıdaki bağlantılarda (URL) hata oluştu:';
	@override String get selectURL => 'Bağlantı (URL) seç';
	@override String get selectURLs => 'Bağlantıları (URL) seç';
	@override String get pick => 'Seç';
	@override String get theme => 'Tema';
	@override String get dark => 'Koyu';
	@override String get light => 'Açık';
	@override String get followSystem => 'Sistemi takip et';
	@override String get followSystemThemeExplanation => 'Sistem temasını takip etmek yalnızca üçüncü taraf uygulamalar kullanılarak mümkündür';
	@override String get useBlackTheme => 'Tam siyah koyu temayı kullan';
	@override String get appSortBy => 'Uygulama sıralama ölçütü';
	@override String get authorName => 'Geliştirici/Ad';
	@override String get nameAuthor => 'Ad/Geliştirici';
	@override String get asAdded => 'Eklendiği gibi';
	@override String get appSortOrder => 'Uygulama sıralama düzeni';
	@override String get ascending => 'Artan';
	@override String get descending => 'Azalan';
	@override String get bgUpdateCheckInterval => 'Arka planda güncelleme kontrol aralığı';
	@override String get neverManualOnly => 'Asla - sadece manuel';
	@override String get appearance => 'Görünüm';
	@override String get pinUpdates => 'Güncellemeleri uygulamalar görünümünün en üstüne sabitle';
	@override String get updates => 'Güncellemeler';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Kaynağa özel';
	@override String get appSource => 'Uygulama kaynağı';
	@override String get appSourceHint => 'Uygulama kaynak deposunu aç';
	@override String get noLogs => 'Kayıt (Log) yok';
	@override String get appLogs => 'Uygulama kayıtları (log)';
	@override String get appLogsHint => 'Uygulama kayıtlarını görüntüle';
	@override String get close => 'Kapat';
	@override String get share => 'Paylaş';
	@override String get appNotFound => 'Uygulama bulunamadı';
	@override String get networkError => 'Ağ bağlantısı başarısız oldu';
	@override String get invalidUrlFormat => 'Geçersiz bağlantı (URL) biçimi';
	@override String get accessDenied => 'Erişim reddedildi';
	@override String get importFailed => 'İçe aktarma başarısız';
	@override String get updatiumExportHyphenatedLowercase => 'updatium-export';
	@override String get pickAnAPK => 'Bir APK seçin';
	@override String get appHasMoreThanOnePackage => '{} uygulamasının birden fazla paketi var:';
	@override String get deviceSupportsXArch => 'Cihazınız {} işlemci (CPU) mimarisini destekliyor.';
	@override String get deviceSupportsFollowingArchs => 'Cihazınız aşağıdaki işlemci (CPU) mimarilerini destekliyor:';
	@override String get warning => 'Uyarı';
	@override String get sourceIsXButPackageFromYPrompt => 'Uygulama kaynağı \'{}\' ancak sürüm paketi \'{}\' konumundan geliyor. Devam edilsin mi?';
	@override String get updatesAvailable => 'Güncellemeler mevcut';
	@override String get updatesAvailableNotifDescription => 'Kullanıcıya, Updatium tarafından takip edilen bir veya daha fazla uygulama için güncellemelerin mevcut olduğunu bildirir';
	@override String get noNewUpdates => 'Yeni güncelleme yok.';
	@override String get xHasAnUpdate => '{} için bir güncelleme var.';
	@override String get appsUpdated => 'Uygulamalar güncellendi';
	@override String get appsNotUpdated => 'Uygulamalar güncellenemedi';
	@override String get appsUpdatedNotifDescription => 'Kullanıcıya, bir veya daha fazla uygulamanın güncellemelerinin arka planda uygulandığını bildirir';
	@override String get xWasUpdatedToY => '{} uygulaması {} sürümüne güncellendi.';
	@override String get xWasNotUpdatedToY => '{} uygulaması {} sürümüne güncellenemedi.';
	@override String get errorCheckingUpdates => 'Güncellemeler kontrol edilirken hata oluştu';
	@override String get errorCheckingUpdatesNotifDescription => 'Arka planda güncelleme kontrolü başarısız olduğunda gösterilen bir bildirim';
	@override String get appsRemoved => 'Uygulamalar kaldırıldı';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Kullanıcıya, yüklenirken oluşan hatalar nedeniyle bir veya daha fazla uygulamanın kaldırıldığını bildirir';
	@override String get xWasRemovedDueToErrorY => '{} bu hata nedeniyle kaldırıldı: {}';
	@override String get completeAppInstallation => 'Uygulama yüklemesini tamamla';
	@override String get updatiumMustBeOpenToInstallApps => 'Uygulamaları yüklemek için Updatium açık olmalıdır';
	@override String get completeAppInstallationNotifDescription => 'Kullanıcıdan bir uygulamanın yüklenmesini bitirmek için Updatium\'a dönmesini ister';
	@override String get checkingForUpdates => 'Güncellemeler kontrol ediliyor';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Güncellemeler kontrol edilirken görünen geçici bildirim';
	@override String get pleaseAllowInstallPerm => 'Lütfen Updatium\'un uygulamaları yüklemesine izin verin';
	@override String get trackOnly => 'Sadece takip';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Hata {}';
	@override String get versionCorrectionDisabled => 'Sürüm düzeltme devre dışı bırakıldı (eklenti çalışmıyor gibi görünüyor)';
	@override String get unknown => 'Bilinmeyen';
	@override String get none => 'Hiçbiri';
	@override String get all => 'Tümü';
	@override String get never => 'Asla';
	@override String get latestVersion => 'En son';
	@override String get installedVersionX => 'Yüklü: {}';
	@override String get lastUpdateCheckX => 'Son güncelleme kontrolü: {}';
	@override String get remove => 'Kaldır';
	@override String get quickLinks => 'Hızlı Linkler';
	@override String get yesMarkUpdated => 'Evet, güncel olarak işaretle';
	@override String get fdroid => 'Resmi F-Droid';
	@override String get appIdOrName => 'Uygulama kimliği (ID) veya adı';
	@override String get appId => 'Uygulama kimliği (ID)';
	@override String get appWithIdOrNameNotFound => 'Bu kimliğe (ID) veya ada sahip bir uygulama bulunamadı';
	@override String get reposHaveMultipleApps => 'Depolar (Repo) birden fazla uygulama içerebilir';
	@override String get fdroidThirdPartyRepo => 'Üçüncü taraf F-Droid deposu';
	@override String get codeberg => 'Codeberg';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram Uygulaması';
	@override String get html => 'HTML';
	@override String get install => 'Yükle';
	@override String get markInstalled => 'Yüklü olarak işaretle';
	@override String get update => 'Güncelle';
	@override String get updated => 'Güncellendi';
	@override String get markUpdated => 'Güncel olarak işaretle';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Ek seçenekler';
	@override String get disableVersionDetection => 'Sürüm algılamayı devre dışı bırak';
	@override String get noVersionDetectionExplanation => 'Bu seçenek yalnızca sürüm algılamanın doğru çalışmadığı uygulamalar için kullanılmalıdır.';
	@override String get downloadingX => '{} indiriliyor';
	@override String get downloadX => '{} İndir';
	@override String get downloadedX => '{} indirildi';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Sürüm dosyası (Asset)';
	@override String get downloadNotifDescription => 'Kullanıcıya bir uygulamanın indirilme sürecini bildirir';
	@override String get noAPKFound => 'APK bulunamadı';
	@override String get noVersionDetection => 'Sürüm algılama yok';
	@override String get categorize => 'Kategorize et';
	@override String get categories => 'Kategoriler';
	@override String get category => 'Kategori';
	@override String get noCategory => 'Kategori yok';
	@override String get noCategories => 'Kategori yok';
	@override String get categoryDeleteQuestion => 'Kategoriler silinsin mi?';
	@override String get categoryDeleteWarning => 'Silinen kategorilerdeki tüm uygulamalar kategorize edilmemiş olarak ayarlanacaktır.';
	@override String get addCategory => 'Kategori ekle';
	@override String get label => 'Etiket';
	@override String get language => 'Dil';
	@override String get copiedToClipboard => 'Panoya kopyalandı';
	@override String get storagePermissionDenied => 'Depolama izni reddedildi';
	@override String get selectedCategorizeWarning => 'Bu işlem, seçilen uygulamalar için mevcut tüm kategori ayarlarını değiştirecektir.';
	@override String get filterAPKsByRegEx => 'APK\'ları düzenli ifade (RegEx) ile filtrele';
	@override String get removeFromUpdatium => 'Updatium\'dan kaldır';
	@override String get uninstallFromDevice => 'Cihazdan kaldır';
	@override String get onlyWorksWithNonVersionDetectApps => 'Sadece sürüm algılaması devre dışı bırakılmış uygulamalar için çalışır.';
	@override String get releaseDateAsVersion => 'Sürüm tarihi bilgisini sürüm olarak kullan';
	@override String get releaseTitleAsVersion => 'Sürüm başlığı bilgisini sürüm olarak kullan';
	@override String get releaseDateAsVersionExplanation => 'Bu seçenek yalnızca sürüm algılamanın doğru çalışmadığı, ancak bir sürüm tarihinin mevcut olduğu uygulamalar için kullanılmalıdır.';
	@override String get changes => 'Değişiklikler';
	@override String get releaseDate => 'Yayınlanma tarihi';
	@override String get importFromURLsInFile => 'Dosyadaki bağlantılardan (URL) içe aktar (OPML gibi)';
	@override String get versionDetectionExplanation => 'Sürüm dizesini, işletim sisteminden algılanan sürümle eşleştir/doğrula';
	@override String get versionDetection => 'Sürüm algılama';
	@override String get standardVersionDetection => 'Standart sürüm algılama';
	@override String get groupByCategory => 'Kategoriye göre grupla';
	@override String get listView => 'Liste görünümü';
	@override String get gridView => 'Izgara görünümü';
	@override String get autoApkFilterByArch => 'Mümkünse APK\'ları işlemci (CPU) mimarisine göre filtrelemeyi dene';
	@override String get autoLinkFilterByArch => 'Mümkünse bağlantıları işlemci (CPU) mimarisine göre filtrelemeyi dene';
	@override String get overrideSource => 'Kaynağı geçersiz kıl (Üzerine yaz)';
	@override String get dontShowAgain => 'Bunu bir daha gösterme';
	@override String get dontShowTrackOnlyWarnings => '\'Sadece takip\' (track-only) uyarılarını gösterme';
	@override String get dontShowAPKOriginWarnings => 'APK kökeni uyarılarını gösterme';
	@override String get moveNonInstalledAppsToBottom => 'Yüklü olmayan uygulamaları listenin en altına taşı';
	@override String get gitlabPATLabel => 'GitLab kişisel erişim anahtarı';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Hakkında';
	@override String get requiresCredentialsInSettings => '{} için ek kimlik bilgileri gerekiyor (Ayarlarda)';
	@override String get checkOnStart => 'Başlangıçta güncellemeleri kontrol et';
	@override String get safeMode => 'Güvenli Mod';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Güvenli Modda Uygulama Ekleme devre dışıdır';
	@override String get tryInferAppIdFromCode => 'Kaynak kodundan uygulama kimliğini (ID) çıkarmayı dene';
	@override String get removeOnExternalUninstall => 'Dışarıdan kaldırılan uygulamaları otomatik olarak Updatium\'dan sil';
	@override String get pickHighestVersionCode => 'En yüksek sürüm koduna (versionCode) sahip APK\'yı otomatik seç';
	@override String get checkUpdateOnDetailPage => 'Uygulama detay sayfası açıldığında güncellemeleri kontrol et';
	@override String get disablePageTransitions => 'Sayfa geçiş animasyonlarını devre dışı bırak';
	@override String get reversePageTransitions => 'Sayfa geçiş animasyonlarını tersine çevir';
	@override String get minStarCount => 'Minimum yıldız sayısı';
	@override String get addInfoBelow => 'Bu bilgiyi aşağıya ekleyin.';
	@override String get addInfoInSettings => 'Bu bilgiyi Ayarlar\'a ekleyin.';
	@override String get githubSourceNote => 'GitHub istek sınırı (rate limit), bir API anahtarı kullanılarak aşılabilir.';
	@override String get sortByLastLinkSegment => 'Yalnızca bağlantının son bölümüne göre sırala';
	@override String get filterReleaseNotesByRegEx => 'Sürüm notlarını düzenli ifade (RegEx) ile filtrele';
	@override String get customLinkFilterRegex => 'Düzenli ifade (RegEx) ile özel APK bağlantı filtresi (varsayılan \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Uygulama güncellemeleri denendi';
	@override String get appsPossiblyUpdatedNotifDescription => 'Kullanıcıya, bir veya daha fazla uygulamanın güncellemelerinin arka planda potansiyel olarak uygulandığını bildirir';
	@override String get xWasPossiblyUpdatedToY => '{} uygulaması {} sürümüne güncellenmiş olabilir.';
	@override String get enableBackgroundUpdates => 'Arka plan güncellemelerini etkinleştir';
	@override String get backgroundUpdateReqsExplanation => 'Arka plan güncellemeleri tüm uygulamalar için mümkün olmayabilir.';
	@override String get backgroundUpdateLimitsExplanation => 'Arka planda yüklemenin başarısı yalnızca Updatium açıldığında belirlenebilir.';
	@override String get verifyLatestTag => '\'latest\' (en son) etiketini doğrula';
	@override String get intermediateLinkRegex => 'Ziyaret edilecek bir \'ara\' (intermediate) bağlantıyı filtrele';
	@override String get filterByLinkText => 'Bağlantıları bağlantı metnine göre filtrele';
	@override String get matchLinksOutsideATags => '<a> etiketleri dışındaki bağlantıları eşleştir';
	@override String get intermediateLinkNotFound => 'Ara bağlantı bulunamadı';
	@override String get intermediateLink => 'Ara bağlantı';
	@override String get exemptFromBackgroundUpdates => 'Arka plan güncellemelerinden muaf tut (etkinleştirilmişse)';
	@override String get bgUpdatesOnWiFiOnly => 'Wi-Fi\'ye bağlı değilken arka plan güncellemelerini devre dışı bırak';
	@override String get bgUpdatesWhileChargingOnly => 'Şarjda değilken arka plan güncellemelerini devre dışı bırak';
	@override String get autoSelectHighestVersionCode => 'En yüksek versionCode (sürüm kodu) APK\'sını otomatik seç';
	@override String get versionExtractionRegEx => 'Sürüm dizesi çıkarma düzenli ifadesi (RegEx)';
	@override String get trimVersionString => 'Sürüm dizesini RegEx ile kırp/temizle';
	@override String get matchGroupToUseForX => '"{}" için kullanılacak eşleşme grubu';
	@override String get matchGroupToUse => 'Sürüm dizesi çıkarma RegEx\'i için kullanılacak eşleşme grubu';
	@override String get highlightTouchTargets => 'Daha az belirgin dokunma hedeflerini vurgula';
	@override String get pickExportDir => 'Dışa aktarma dizinini seçin';
	@override String get autoExportOnChanges => 'Değişikliklerde otomatik olarak dışa aktar';
	@override String get includeSettings => 'Ayarları dahil et';
	@override String get filterVersionsByRegEx => 'Sürümleri düzenli ifade (RegEx) ile filtrele';
	@override String get trySelectingSuggestedVersionCode => 'Önerilen versionCode (sürüm kodu) APK\'sını seçmeyi dene';
	@override String get dontSortReleasesList => 'API\'den gelen sürüm sırasını koru (Sıralama yapma)';
	@override String get reverseSort => 'Sıralamayı tersine çevir';
	@override String get takeFirstLink => 'İlk bağlantıyı al';
	@override String get skipSort => 'Sıralamayı atla';
	@override String get debugMenu => 'Hata ayıklama (Debug) menüsü';
	@override String get bgTaskStarted => 'Arka plan görevi başlatıldı - kayıtları (log) kontrol edin.';
	@override String get runBgCheckNow => 'Arka planda güncelleme kontrolünü şimdi çalıştır';
	@override String get versionExtractWholePage => 'Sürüm dizesi çıkarma RegEx\'ini tüm sayfaya uygula';
	@override String get installing => 'Yükleniyor';
	@override String get skipUpdateNotifications => 'Güncelleme bildirimlerini atla';
	@override String get updatesAvailableNotifChannel => 'Güncellemeler mevcut';
	@override String get appsUpdatedNotifChannel => 'Uygulamalar güncellendi';
	@override String get appsPossiblyUpdatedNotifChannel => 'Uygulama güncellemeleri denendi';
	@override String get errorCheckingUpdatesNotifChannel => 'Güncellemeler kontrol edilirken hata oluştu';
	@override String get appsRemovedNotifChannel => 'Uygulamalar kaldırıldı';
	@override String get downloadingXNotifChannel => '{} indiriliyor';
	@override String get completeAppInstallationNotifChannel => 'Uygulama yüklemesini tamamla';
	@override String get checkingForUpdatesNotifChannel => 'Güncellemeler kontrol ediliyor';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Sadece yüklü ve \'sadece takip\' edilen (track-only) uygulamaları güncellemeler için kontrol et';
	@override String get supportFixedAPKURL => 'Sabit APK bağlantılarını (URL) destekle';
	@override String get selectX => '{} seç';
	@override String get parallelDownloads => 'Eşzamanlı (Paralel) indirmelere izin ver';
	@override String get useShizuku => 'Yüklemek için Shizuku veya Sui kullan';
	@override String get shizukuBinderNotFound => 'Shizuku hizmeti çalışmıyor';
	@override String get shizukuOld => 'Eski Shizuku sürümü (<11) - lütfen güncelleyin';
	@override String get shizukuOldAndroidWithADB => 'Shizuku ADB ile Android < 8.1 üzerinde çalışıyor - Android\'i güncelleyin veya yerine Sui kullanın';
	@override String get shizukuPretendToBeGooglePlay => 'Yükleme kaynağı olarak Google Play\'i ayarla (Shizuku kullanılıyorsa)';
	@override String get useSystemFont => 'Sistem yazı tipini kullan';
	@override String get useVersionCodeAsOSVersion => 'İşletim sistemi tarafından algılanan sürüm olarak uygulamanın sürüm kodunu (versionCode) kullan';
	@override String get requestHeader => 'İstek başlığı (Request header)';
	@override String get useLatestAssetDateAsReleaseDate => 'En son yüklenen dosyayı sürüm tarihi olarak kullan';
	@override String get defaultPseudoVersioningMethod => 'Varsayılan sözde sürüm (pseudo-versioning) yöntemi';
	@override String get partialAPKHash => 'Kısmi APK karma değeri (Hash)';
	@override String get APKLinkHash => 'APK bağlantı karma değeri (Hash)';
	@override String get directAPKLink => 'Doğrudan APK bağlantısı';
	@override String get pseudoVersionInUse => 'Bir sözde sürüm kullanımda';
	@override String get installedVersion => 'Yüklü';
	@override String get installed => 'Yüklü';
	@override String get notInstalledApps => 'Yüklü değil';
	@override String get latest => 'En son';
	@override String get invertRegEx => 'Düzenli ifadeyi (RegEx) tersine çevir';
	@override String get note => 'Not';
	@override String get selfHostedNote => '"{}" açılır menüsü, herhangi bir kaynağın kendi sunucunuzda barındırılan (self-hosted) / özel örneklerine ulaşmak için kullanılabilir.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK ayrıştırılamadı (uyumsuz veya eksik indirme)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Yeni uygulamaları AppVerifier ile paylaş (mevcutsa)';
	@override String get appVerifierInstructionToast => 'AppVerifier\'da paylaşın, ardından hazır olduğunda buraya dönün.';
	@override String get wiki => 'Yardım/Wiki';
	@override String get wikiHint => 'Updatium Wiki belgelerini aç';
	@override String get allowInsecure => 'Güvenli olmayan HTTP isteklerine izin ver';
	@override String get stayOneVersionBehind => 'En son sürümün bir sürüm gerisinde kal';
	@override String get useFirstApkOfVersion => 'Birden fazla APK olduğunda ilkini otomatik seç';
	@override String get refreshBeforeDownload => 'İndirmeden önce uygulama ayrıntılarını yenile';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Ad';
	@override String get smartname => 'Ad (akıllı)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Sıralama yöntemi';
	@override String get welcome => 'Hoş Geldiniz';
	@override String get batteryOptimizationNote => 'Updatium ayarlarından "ön plan hizmetine" geçerseniz ve/veya işletim sistemi ayarlarınızdan Updatium için pil optimizasyonunu devre dışı bırakırsanız, arka plan indirmelerinin daha güvenilir çalışabileceğini unutmayın.';
	@override String get fileDeletionError => 'Dosya silinemedi (manuel olarak silmeyi deneyin, ardından tekrar deneyin): "{}"';
	@override String get foregroundService => 'Updatium ön plan hizmeti';
	@override String get foregroundServiceExplanation => 'Güncelleme kontrolü için bir ön plan hizmeti kullanın (daha güvenilirdir, daha fazla güç tüketir)';
	@override String get fgServiceNotice => 'Bu bildirim, arka planda güncelleme kontrolü için gereklidir (işletim sistemi ayarlarında gizlenebilir)';
	@override String get excludeSecrets => 'Gizli bilgileri (Secrets) hariç tut';
	@override String get GHReqPrefix => 'GitHub istekleri için \'omeritzics/Updatium\' örneği (instance)';
	@override String get includeZips => 'ZIP dosyalarını dahil et';
	@override String get zippedApkFilterRegEx => 'ZIP içindeki APK\'ları filtrele';
	@override String get multipleSigners => 'Çoklu İmzalayıcı';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: 'Uygulama kaldırılsın mı?',
		other: 'Uygulamalar kaldırılsın mı?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: 'Çok fazla istek (istek sınırı) - {count} dakika içinde tekrar deneyin',
		other: 'Çok fazla istek (istek sınırı) - {count} dakika içinde tekrar deneyin',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: 'Arka planda güncelleme kontrolü sırasında {error} ile karşılaşıldı, {count} dakika içinde yeniden kontrol planlanacak',
		other: 'Arka planda güncelleme kontrolü sırasında {error} ile karşılaşıldı, {count} dakika içinde yeniden kontrol planlanacak',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: 'Arka planda güncelleme kontrolünde {count} güncelleme bulundu - gerekirse kullanıcıya bildirilecek',
		other: 'Arka planda güncelleme kontrolünde {count} güncelleme bulundu - gerekirse kullanıcıya bildirilecek',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{count} Uygulama',
		other: '{count} Uygulama',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{count} Bağlantı (URL)',
		other: '{count} Bağlantı (URL)',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{count} dakika',
		other: '{count} dakika',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{count} saat',
		other: '{count} saat',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{count} gün',
		other: '{count} gün',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{n} kayıt temizlendi (önce = {before}, sonra = {after})',
		other: '{n} kayıt temizlendi (önce = {before}, sonra = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{app} ve 1 uygulamanın daha güncellemesi var.',
		other: '{app} ve {count} uygulamanın daha güncellemesi var.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{app} ve 1 uygulama daha güncellendi.',
		other: '{app} ve {count} uygulama daha güncellendi.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{app} ve 1 uygulama güncellenemedi.',
		other: '{app} ve {count} uygulama güncellenemedi.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{app} ve 1 uygulama daha güncellenmiş olabilir.',
		other: '{app} ve {count} uygulama daha güncellenmiş olabilir.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n,
		one: 'Sertifika Karma Değeri (Hash)',
		other: 'Sertifika Karma Değerleri (Hash)',
	);
	@override String get securityDisclaimerTitle => 'Güvenlik ve Yasal Sorumluluk Reddi';
	@override String get license => 'Lisans';
	@override String get licenseText => 'Bu uygulama GPL v3 Lisansı altında dağıtılmaktadır.';
	@override String get disclaimer => 'Sorumluluk Reddi';
	@override String get disclaimerText => 'Bu uygulama, dış uygulamaların hiçbirini dağıtmaz, barındırmaz veya doğrulamaz. Bu araç aracılığıyla yüklenen herhangi bir yazılımın güvenliği ve yasallığı konusunda tüm sorumluluk kullanıcıya aittir.\n\nhttps://github.com/omeritzics/Updatium, Updatium\'u indirmek için tek resmi yerdir; resmi olmayan kaynaklar güvensiz olduğundan, uygulamayı başka bir yerden indirmek kesinlikle önerilmez.';
	@override String get privacy => 'Gizlilik';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Kabul Et ve Devam Et';
	@override String get decline => 'Reddet';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Updatium hoşunuza gitti mi?';
	@override String get githubStarPromptContent => 'Updatium, boş zamanlarımda geliştirdiğim gönüllü, açık kaynaklı bir topluluk projesidir. Projeyi desteklemek isterseniz, daha fazla kullanıcıya ve katılımcıya ulaşmamıza yardımcı olmak için lütfen projeyi GitHub\'da yıldızlamayı (star) düşünün. Bu konuda sizi bir daha rahatsız etmeyeceğiz. Şimdiden teşekkürler! :)';
	@override String get githubStarPromptStar => 'Yıldızla';
	@override String get githubStarPromptDontShowAgain => 'Bir daha gösterme';
	@override String get sourceCode => 'Kaynak Kodu';
	@override String get developedBy => 'Geliştiren';
	@override String get appDescription => 'Android uygulamalarınızı doğrudan APK kaynaklarından güncellemenize izin veren özelleştirilebilir bir uygulama kataloğudur.';
	@override String get safeModeEnabled => 'Güvenli Mod Etkin';
	@override String get safeModeDisabled => 'Güvenli Mod Devre Dışı';
	@override String get safeModeDisable => 'Güvenli Mod\'u Devre Dışı Bırak';
	@override String get safeModeDisableHint => 'Tap many times on the version number in the About dialog to disable Safe Mode';
	@override String get safeModeAdmin => 'Güvenli Mod Yönetimi';
	@override String get safeModeSetupDescription => 'Güvenli Mod\'u etkinleştirmek için bir parola ayarlayın. Etkinleştirildikten sonra, Güvenli Mod yeni uygulamaların eklenmesini engeller ve yalnızca parola ile devre dışı bırakılabilir.';
	@override String get safeModeToggleDescription => 'Güvenli Mod\'u açmak veya kapatmak için parolanızı girin.';
	@override String get safeModeSetPassword => 'Parola Ayarla';
	@override String get safeModeConfirmPassword => 'Parolayı Onayla';
	@override String get safeModeEnterPassword => 'Parola Girin';
	@override String get safeModePasswordHint => 'En az 8 karakter';
	@override String get safeModePasswordTooShort => 'Parola en az 8 karakter uzunluğunda olmalıdır';
	@override String get safeModePasswordMismatch => 'Parolalar eşleşmiyor';
	@override String get safeModePasswordIncorrect => 'Yanlış parola';
	@override String get safeModePasswordError => 'Parola ayarlanırken hata oluştu. Lütfen tekrar deneyin.';
	@override String get safeModeEnable => 'Güvenli Mod\'u Etkinleştir';
	@override String get safeModeToggle => 'Disable Safe Mode';
	@override String get safeModeTapsRemaining => '{count} dokunma kaldı, Güvenli Mod\'u devre dışı bırakmak için';
	@override String get safeModeEnabledHint => 'Güvenli Mod etkinleştirildi. Ayarlardaki sürüm numarasına birçoğuna dokunarak devre dışı bırakın.';
	@override String get preventUninstallation => 'Prevent uninstallation';
	@override String get preventUninstallationDescription => 'Prevents Updatium from being uninstalled when Safe Mode is on';
	@override String get deviceAdminRequired => 'Device admin permission is required to prevent uninstallation';
	@override String get turnOffSafeModeFirst => 'Please turn off Safe Mode first';
	@override String get gotIt => 'Anladım';
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

/// The flat map containing all translations for locale <tr>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsTr {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Geçerli bir {} uygulama bağlantısı (URL) değil',
			'noReleaseFound' => 'Uygun bir sürüm (release) bulunamadı',
			'noVersionFound' => 'Sürüm versiyonu belirlenemedi',
			'urlMatchesNoSource' => 'Bağlantı (URL) bilinen bir kaynakla eşleşmiyor',
			'cantInstallOlderVersion' => 'Uygulamanın daha eski bir sürümü yüklenemez',
			'appIdMismatch' => 'İndirilen paket kimliği (ID), mevcut uygulama kimliğiyle eşleşmiyor',
			'functionNotImplemented' => 'Bu sınıf bu işlevi uygulamamış',
			'placeholder' => 'Yer tutucu',
			'someErrors' => 'Bazı hatalar oluştu',
			'unexpectedError' => 'Beklenmeyen hata',
			'ok' => 'Tamam',
			'and' => 've',
			'githubPATLabel' => 'GitHub kişisel erişim anahtarı',
			'includePrereleases' => 'Ön sürümleri (prerelease) dahil et',
			'fallbackToOlderReleases' => 'Daha eski sürümlere başvur',
			'filterReleaseTitlesByRegEx' => 'Sürüm başlıklarını düzenli ifade (RegEx) ile filtrele',
			'invalidRegEx' => 'Geçersiz düzenli ifade (RegEx)',
			'noDescription' => 'Açıklama yok',
			'cancel' => 'İptal',
			'kContinue' => 'Devam et',
			'requiredInBrackets' => '(gerekli)',
			'dropdownNoOptsError' => 'HATA: AÇILIR MENÜDE EN AZ BİR SEÇENEK OLMALIDIR',
			'color' => 'Renk',
			'standard' => 'Standart',
			'custom' => 'Özel',
			'primary' => 'Primary',
			'useMaterialYou' => 'Material You renklerini kullan',
			'githubStarredRepos' => 'Yıldızlanmış GitHub depoları',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Kullanıcı adı',
			'wrongArgNum' => 'Yanlış sayıda argüman sağlandı',
			'xIsTrackOnly' => '{} sadece takip ediliyor (track-only)',
			'source' => 'Kaynak',
			'app' => 'Uygulama',
			'appsFromSourceAreTrackOnly' => 'Bu kaynaktaki uygulamalar sadece \'takip edilebilir\' (track-only).',
			'youPickedTrackOnly' => '\'Sadece takip et\' (track-only) seçeneğini seçtiniz.',
			'trackOnlyAppDescription' => 'Uygulama güncellemeler için takip edilecek, ancak Updatium bu uygulamayı indiremeyecek veya yükleyemeyecek.',
			'cancelled' => 'İptal edildi',
			'appAlreadyAdded' => 'Uygulama zaten eklenmiş',
			'alreadyUpToDateQuestion' => 'Uygulama zaten güncel mi?',
			'addApp' => 'Uygulama Ekle',
			'appSourceURL' => 'Uygulama kaynak bağlantısı (URL)',
			'error' => 'Hata',
			'add' => 'Ekle',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Ara (sadece bazı kaynaklar)',
			'search' => 'Ara',
			'searching' => 'Searching',
			'additionalOptsFor' => '{} için ek seçenekler',
			'supportedSources' => 'Desteklenen kaynaklar',
			'trackOnlyInBrackets' => '(sadece takip)',
			'searchableInBrackets' => '(aranabilir)',
			'appsString' => 'Uygulamalar',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Hoş geldiniz!',
			'noAppsSubtext' => 'Aşağıdaki \'Uygulama Ekle\'ye dokunarak ilk uygulamanızı ekleyebilirsiniz.',
			'noAppsForFilter' => 'Filtreye uygun uygulama yok',
			'byX' => 'Geliştirici: {}',
			'percentProgress' => 'İlerleme: %{}',
			'pleaseWait' => 'Lütfen bekleyin',
			'updateAvailable' => 'Güncelleme mevcut',
			'notInstalled' => 'Yüklü değil',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'sözde sürüm',
			'selectAll' => 'Tümünü seç',
			'deselectX' => '{} seçimini kaldır',
			'xWillBeRemovedButRemainInstalled' => '{} Updatium\'dan kaldırılacak ancak cihazda yüklü kalmaya devam edecek.',
			'removeSelectedAppsQuestion' => 'Seçili uygulamalar kaldırılsın mı?',
			'removeSelectedApps' => 'Seçili uygulamaları kaldır',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => '{} güncelle',
			'installX' => '{} yükle',
			'markXTrackOnlyAsUpdated' => '{}\n(sadece takip)\nuygulamasını güncel olarak işaretle',
			'changeX' => '{} değiştir',
			'installUpdateApps' => 'Uygulamaları yükle/güncelle',
			'installUpdateSelectedApps' => 'Seçili uygulamaları yükle/güncelle',
			'markXSelectedAppsAsUpdated' => 'Seçili {} uygulama güncel olarak işaretlensin mi?',
			'no' => 'Hayır',
			'yes' => 'Evet',
			'markSelectedAppsUpdated' => 'Seçili uygulamaları güncel olarak işaretle',
			'pinToTop' => 'Başa tuttur',
			'unpinFromTop' => 'Baştan ayır',
			'resetInstallStatusForSelectedAppsQuestion' => 'Seçili uygulamalar için yükleme durumu sıfırlansın mı?',
			'installStatusOfXWillBeResetExplanation' => 'Seçilen uygulamaların yükleme durumu sıfırlanacaktır.\n\nBu işlem, başarısız güncellemeler veya başka sorunlar nedeniyle Updatium\'da gösterilen uygulama sürümü yanlış olduğunda yardımcı olabilir.',
			'customLinkMessage' => 'Bu bağlantılar Updatium yüklü cihazlarda çalışır',
			'shareAppConfigLinks' => 'Uygulama yapılandırmasını HTML bağlantısı olarak paylaş',
			'resetInstallStatus' => 'Yükleme durumunu sıfırla',
			'more' => 'Daha fazla',
			'removeOutdatedFilter' => 'Güncel olmayan uygulama filtresini kaldır',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Sadece güncel olmayan uygulamaları göster',
			'filter' => 'Filtre',
			'filterApps' => 'Uygulamaları filtrele',
			'filterDays' => 'Filter days',
			'appName' => 'Uygulama adı',
			'author' => 'Geliştirici',
			'upToDateApps' => 'Güncel uygulamalar',
			'nonInstalledApps' => 'Yüklü olmayan uygulamalar',
			'importExport' => 'İçe/Dışa aktar',
			'settings' => 'Ayarlar',
			'exportedTo' => '{} konumuna dışa aktarıldı',
			'updatiumExport' => 'Updatium dışa aktarımı',
			'failedToExport' => 'Dışa aktarma başarısız',
			'exportAlreadyInProgress' => 'Dışa aktarma işlemi zaten devam ediyor',
			'exportDirNotAccessible' => 'Dışa aktarma dizinine erişilemiyor',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Dışa aktarma dosyası oluşturulamadı',
			'invalidInput' => 'Geçersiz giriş',
			'importedX' => '{} içe aktarıldı',
			'updatiumImport' => 'Updatium içe aktarımı',
			'importFromURLList' => 'Bağlantı (URL) listesinden içe aktar',
			'searchQuery' => 'Arama sorgusu',
			'appURLList' => 'Uygulama bağlantı (URL) listesi',
			'line' => 'Satır',
			'searchX' => '{} Ara',
			'noResults' => 'Sonuç bulunamadı',
			'importX' => '{} içe aktar',
			'importedAppsIdDisclaimer' => 'İçe aktarılan uygulamalar yanlışlıkla "yüklü değil" olarak görünebilir.\nBunu düzeltmek için uygulamaları Updatium üzerinden yeniden yükleyin.\nBu işlem uygulama verilerini etkilemeyecektir.\n\nSadece URL ve üçüncü taraf içe aktarma yöntemlerini etkiler.',
			'importErrors' => 'İçe aktarma hataları',
			'importedXOfYApps' => '{} / {} uygulama içe aktarıldı.',
			'followingURLsHadErrors' => 'Aşağıdaki bağlantılarda (URL) hata oluştu:',
			'selectURL' => 'Bağlantı (URL) seç',
			'selectURLs' => 'Bağlantıları (URL) seç',
			'pick' => 'Seç',
			'theme' => 'Tema',
			'dark' => 'Koyu',
			'light' => 'Açık',
			'followSystem' => 'Sistemi takip et',
			'followSystemThemeExplanation' => 'Sistem temasını takip etmek yalnızca üçüncü taraf uygulamalar kullanılarak mümkündür',
			'useBlackTheme' => 'Tam siyah koyu temayı kullan',
			'appSortBy' => 'Uygulama sıralama ölçütü',
			'authorName' => 'Geliştirici/Ad',
			'nameAuthor' => 'Ad/Geliştirici',
			'asAdded' => 'Eklendiği gibi',
			'appSortOrder' => 'Uygulama sıralama düzeni',
			'ascending' => 'Artan',
			'descending' => 'Azalan',
			'bgUpdateCheckInterval' => 'Arka planda güncelleme kontrol aralığı',
			'neverManualOnly' => 'Asla - sadece manuel',
			'appearance' => 'Görünüm',
			'pinUpdates' => 'Güncellemeleri uygulamalar görünümünün en üstüne sabitle',
			'updates' => 'Güncellemeler',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Kaynağa özel',
			'appSource' => 'Uygulama kaynağı',
			'appSourceHint' => 'Uygulama kaynak deposunu aç',
			'noLogs' => 'Kayıt (Log) yok',
			'appLogs' => 'Uygulama kayıtları (log)',
			'appLogsHint' => 'Uygulama kayıtlarını görüntüle',
			'close' => 'Kapat',
			'share' => 'Paylaş',
			'appNotFound' => 'Uygulama bulunamadı',
			'networkError' => 'Ağ bağlantısı başarısız oldu',
			'invalidUrlFormat' => 'Geçersiz bağlantı (URL) biçimi',
			'accessDenied' => 'Erişim reddedildi',
			'importFailed' => 'İçe aktarma başarısız',
			'updatiumExportHyphenatedLowercase' => 'updatium-export',
			'pickAnAPK' => 'Bir APK seçin',
			'appHasMoreThanOnePackage' => '{} uygulamasının birden fazla paketi var:',
			'deviceSupportsXArch' => 'Cihazınız {} işlemci (CPU) mimarisini destekliyor.',
			'deviceSupportsFollowingArchs' => 'Cihazınız aşağıdaki işlemci (CPU) mimarilerini destekliyor:',
			'warning' => 'Uyarı',
			'sourceIsXButPackageFromYPrompt' => 'Uygulama kaynağı \'{}\' ancak sürüm paketi \'{}\' konumundan geliyor. Devam edilsin mi?',
			'updatesAvailable' => 'Güncellemeler mevcut',
			'updatesAvailableNotifDescription' => 'Kullanıcıya, Updatium tarafından takip edilen bir veya daha fazla uygulama için güncellemelerin mevcut olduğunu bildirir',
			'noNewUpdates' => 'Yeni güncelleme yok.',
			'xHasAnUpdate' => '{} için bir güncelleme var.',
			'appsUpdated' => 'Uygulamalar güncellendi',
			'appsNotUpdated' => 'Uygulamalar güncellenemedi',
			'appsUpdatedNotifDescription' => 'Kullanıcıya, bir veya daha fazla uygulamanın güncellemelerinin arka planda uygulandığını bildirir',
			'xWasUpdatedToY' => '{} uygulaması {} sürümüne güncellendi.',
			'xWasNotUpdatedToY' => '{} uygulaması {} sürümüne güncellenemedi.',
			'errorCheckingUpdates' => 'Güncellemeler kontrol edilirken hata oluştu',
			'errorCheckingUpdatesNotifDescription' => 'Arka planda güncelleme kontrolü başarısız olduğunda gösterilen bir bildirim',
			'appsRemoved' => 'Uygulamalar kaldırıldı',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Kullanıcıya, yüklenirken oluşan hatalar nedeniyle bir veya daha fazla uygulamanın kaldırıldığını bildirir',
			'xWasRemovedDueToErrorY' => '{} bu hata nedeniyle kaldırıldı: {}',
			'completeAppInstallation' => 'Uygulama yüklemesini tamamla',
			'updatiumMustBeOpenToInstallApps' => 'Uygulamaları yüklemek için Updatium açık olmalıdır',
			'completeAppInstallationNotifDescription' => 'Kullanıcıdan bir uygulamanın yüklenmesini bitirmek için Updatium\'a dönmesini ister',
			'checkingForUpdates' => 'Güncellemeler kontrol ediliyor',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Güncellemeler kontrol edilirken görünen geçici bildirim',
			'pleaseAllowInstallPerm' => 'Lütfen Updatium\'un uygulamaları yüklemesine izin verin',
			'trackOnly' => 'Sadece takip',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Hata {}',
			'versionCorrectionDisabled' => 'Sürüm düzeltme devre dışı bırakıldı (eklenti çalışmıyor gibi görünüyor)',
			'unknown' => 'Bilinmeyen',
			'none' => 'Hiçbiri',
			'all' => 'Tümü',
			'never' => 'Asla',
			'latestVersion' => 'En son',
			'installedVersionX' => 'Yüklü: {}',
			'lastUpdateCheckX' => 'Son güncelleme kontrolü: {}',
			'remove' => 'Kaldır',
			'quickLinks' => 'Hızlı Linkler',
			'yesMarkUpdated' => 'Evet, güncel olarak işaretle',
			'fdroid' => 'Resmi F-Droid',
			'appIdOrName' => 'Uygulama kimliği (ID) veya adı',
			'appId' => 'Uygulama kimliği (ID)',
			'appWithIdOrNameNotFound' => 'Bu kimliğe (ID) veya ada sahip bir uygulama bulunamadı',
			'reposHaveMultipleApps' => 'Depolar (Repo) birden fazla uygulama içerebilir',
			'fdroidThirdPartyRepo' => 'Üçüncü taraf F-Droid deposu',
			'codeberg' => 'Codeberg',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram Uygulaması',
			'html' => 'HTML',
			'install' => 'Yükle',
			'markInstalled' => 'Yüklü olarak işaretle',
			'update' => 'Güncelle',
			'updated' => 'Güncellendi',
			'markUpdated' => 'Güncel olarak işaretle',
			'download' => 'Download',
			'additionalOptions' => 'Ek seçenekler',
			'disableVersionDetection' => 'Sürüm algılamayı devre dışı bırak',
			'noVersionDetectionExplanation' => 'Bu seçenek yalnızca sürüm algılamanın doğru çalışmadığı uygulamalar için kullanılmalıdır.',
			'downloadingX' => '{} indiriliyor',
			'downloadX' => '{} İndir',
			'downloadedX' => '{} indirildi',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Sürüm dosyası (Asset)',
			'downloadNotifDescription' => 'Kullanıcıya bir uygulamanın indirilme sürecini bildirir',
			'noAPKFound' => 'APK bulunamadı',
			'noVersionDetection' => 'Sürüm algılama yok',
			'categorize' => 'Kategorize et',
			'categories' => 'Kategoriler',
			'category' => 'Kategori',
			'noCategory' => 'Kategori yok',
			'noCategories' => 'Kategori yok',
			'categoryDeleteQuestion' => 'Kategoriler silinsin mi?',
			'categoryDeleteWarning' => 'Silinen kategorilerdeki tüm uygulamalar kategorize edilmemiş olarak ayarlanacaktır.',
			'addCategory' => 'Kategori ekle',
			'label' => 'Etiket',
			'language' => 'Dil',
			'copiedToClipboard' => 'Panoya kopyalandı',
			'storagePermissionDenied' => 'Depolama izni reddedildi',
			'selectedCategorizeWarning' => 'Bu işlem, seçilen uygulamalar için mevcut tüm kategori ayarlarını değiştirecektir.',
			'filterAPKsByRegEx' => 'APK\'ları düzenli ifade (RegEx) ile filtrele',
			'removeFromUpdatium' => 'Updatium\'dan kaldır',
			'uninstallFromDevice' => 'Cihazdan kaldır',
			'onlyWorksWithNonVersionDetectApps' => 'Sadece sürüm algılaması devre dışı bırakılmış uygulamalar için çalışır.',
			'releaseDateAsVersion' => 'Sürüm tarihi bilgisini sürüm olarak kullan',
			'releaseTitleAsVersion' => 'Sürüm başlığı bilgisini sürüm olarak kullan',
			'releaseDateAsVersionExplanation' => 'Bu seçenek yalnızca sürüm algılamanın doğru çalışmadığı, ancak bir sürüm tarihinin mevcut olduğu uygulamalar için kullanılmalıdır.',
			'changes' => 'Değişiklikler',
			'releaseDate' => 'Yayınlanma tarihi',
			'importFromURLsInFile' => 'Dosyadaki bağlantılardan (URL) içe aktar (OPML gibi)',
			'versionDetectionExplanation' => 'Sürüm dizesini, işletim sisteminden algılanan sürümle eşleştir/doğrula',
			'versionDetection' => 'Sürüm algılama',
			'standardVersionDetection' => 'Standart sürüm algılama',
			'groupByCategory' => 'Kategoriye göre grupla',
			'listView' => 'Liste görünümü',
			'gridView' => 'Izgara görünümü',
			'autoApkFilterByArch' => 'Mümkünse APK\'ları işlemci (CPU) mimarisine göre filtrelemeyi dene',
			'autoLinkFilterByArch' => 'Mümkünse bağlantıları işlemci (CPU) mimarisine göre filtrelemeyi dene',
			'overrideSource' => 'Kaynağı geçersiz kıl (Üzerine yaz)',
			'dontShowAgain' => 'Bunu bir daha gösterme',
			'dontShowTrackOnlyWarnings' => '\'Sadece takip\' (track-only) uyarılarını gösterme',
			'dontShowAPKOriginWarnings' => 'APK kökeni uyarılarını gösterme',
			'moveNonInstalledAppsToBottom' => 'Yüklü olmayan uygulamaları listenin en altına taşı',
			'gitlabPATLabel' => 'GitLab kişisel erişim anahtarı',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Hakkında',
			'requiresCredentialsInSettings' => '{} için ek kimlik bilgileri gerekiyor (Ayarlarda)',
			'checkOnStart' => 'Başlangıçta güncellemeleri kontrol et',
			'safeMode' => 'Güvenli Mod',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Güvenli Modda Uygulama Ekleme devre dışıdır',
			'tryInferAppIdFromCode' => 'Kaynak kodundan uygulama kimliğini (ID) çıkarmayı dene',
			'removeOnExternalUninstall' => 'Dışarıdan kaldırılan uygulamaları otomatik olarak Updatium\'dan sil',
			'pickHighestVersionCode' => 'En yüksek sürüm koduna (versionCode) sahip APK\'yı otomatik seç',
			'checkUpdateOnDetailPage' => 'Uygulama detay sayfası açıldığında güncellemeleri kontrol et',
			'disablePageTransitions' => 'Sayfa geçiş animasyonlarını devre dışı bırak',
			'reversePageTransitions' => 'Sayfa geçiş animasyonlarını tersine çevir',
			'minStarCount' => 'Minimum yıldız sayısı',
			'addInfoBelow' => 'Bu bilgiyi aşağıya ekleyin.',
			'addInfoInSettings' => 'Bu bilgiyi Ayarlar\'a ekleyin.',
			'githubSourceNote' => 'GitHub istek sınırı (rate limit), bir API anahtarı kullanılarak aşılabilir.',
			'sortByLastLinkSegment' => 'Yalnızca bağlantının son bölümüne göre sırala',
			'filterReleaseNotesByRegEx' => 'Sürüm notlarını düzenli ifade (RegEx) ile filtrele',
			'customLinkFilterRegex' => 'Düzenli ifade (RegEx) ile özel APK bağlantı filtresi (varsayılan \'.apk$\')',
			'appsPossiblyUpdated' => 'Uygulama güncellemeleri denendi',
			'appsPossiblyUpdatedNotifDescription' => 'Kullanıcıya, bir veya daha fazla uygulamanın güncellemelerinin arka planda potansiyel olarak uygulandığını bildirir',
			'xWasPossiblyUpdatedToY' => '{} uygulaması {} sürümüne güncellenmiş olabilir.',
			'enableBackgroundUpdates' => 'Arka plan güncellemelerini etkinleştir',
			'backgroundUpdateReqsExplanation' => 'Arka plan güncellemeleri tüm uygulamalar için mümkün olmayabilir.',
			'backgroundUpdateLimitsExplanation' => 'Arka planda yüklemenin başarısı yalnızca Updatium açıldığında belirlenebilir.',
			'verifyLatestTag' => '\'latest\' (en son) etiketini doğrula',
			'intermediateLinkRegex' => 'Ziyaret edilecek bir \'ara\' (intermediate) bağlantıyı filtrele',
			'filterByLinkText' => 'Bağlantıları bağlantı metnine göre filtrele',
			'matchLinksOutsideATags' => '<a> etiketleri dışındaki bağlantıları eşleştir',
			'intermediateLinkNotFound' => 'Ara bağlantı bulunamadı',
			'intermediateLink' => 'Ara bağlantı',
			'exemptFromBackgroundUpdates' => 'Arka plan güncellemelerinden muaf tut (etkinleştirilmişse)',
			'bgUpdatesOnWiFiOnly' => 'Wi-Fi\'ye bağlı değilken arka plan güncellemelerini devre dışı bırak',
			'bgUpdatesWhileChargingOnly' => 'Şarjda değilken arka plan güncellemelerini devre dışı bırak',
			'autoSelectHighestVersionCode' => 'En yüksek versionCode (sürüm kodu) APK\'sını otomatik seç',
			'versionExtractionRegEx' => 'Sürüm dizesi çıkarma düzenli ifadesi (RegEx)',
			'trimVersionString' => 'Sürüm dizesini RegEx ile kırp/temizle',
			'matchGroupToUseForX' => '"{}" için kullanılacak eşleşme grubu',
			'matchGroupToUse' => 'Sürüm dizesi çıkarma RegEx\'i için kullanılacak eşleşme grubu',
			'highlightTouchTargets' => 'Daha az belirgin dokunma hedeflerini vurgula',
			'pickExportDir' => 'Dışa aktarma dizinini seçin',
			'autoExportOnChanges' => 'Değişikliklerde otomatik olarak dışa aktar',
			'includeSettings' => 'Ayarları dahil et',
			'filterVersionsByRegEx' => 'Sürümleri düzenli ifade (RegEx) ile filtrele',
			'trySelectingSuggestedVersionCode' => 'Önerilen versionCode (sürüm kodu) APK\'sını seçmeyi dene',
			'dontSortReleasesList' => 'API\'den gelen sürüm sırasını koru (Sıralama yapma)',
			'reverseSort' => 'Sıralamayı tersine çevir',
			'takeFirstLink' => 'İlk bağlantıyı al',
			'skipSort' => 'Sıralamayı atla',
			'debugMenu' => 'Hata ayıklama (Debug) menüsü',
			'bgTaskStarted' => 'Arka plan görevi başlatıldı - kayıtları (log) kontrol edin.',
			'runBgCheckNow' => 'Arka planda güncelleme kontrolünü şimdi çalıştır',
			'versionExtractWholePage' => 'Sürüm dizesi çıkarma RegEx\'ini tüm sayfaya uygula',
			'installing' => 'Yükleniyor',
			'skipUpdateNotifications' => 'Güncelleme bildirimlerini atla',
			'updatesAvailableNotifChannel' => 'Güncellemeler mevcut',
			'appsUpdatedNotifChannel' => 'Uygulamalar güncellendi',
			'appsPossiblyUpdatedNotifChannel' => 'Uygulama güncellemeleri denendi',
			'errorCheckingUpdatesNotifChannel' => 'Güncellemeler kontrol edilirken hata oluştu',
			'appsRemovedNotifChannel' => 'Uygulamalar kaldırıldı',
			'downloadingXNotifChannel' => '{} indiriliyor',
			'completeAppInstallationNotifChannel' => 'Uygulama yüklemesini tamamla',
			'checkingForUpdatesNotifChannel' => 'Güncellemeler kontrol ediliyor',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Sadece yüklü ve \'sadece takip\' edilen (track-only) uygulamaları güncellemeler için kontrol et',
			'supportFixedAPKURL' => 'Sabit APK bağlantılarını (URL) destekle',
			'selectX' => '{} seç',
			'parallelDownloads' => 'Eşzamanlı (Paralel) indirmelere izin ver',
			'useShizuku' => 'Yüklemek için Shizuku veya Sui kullan',
			'shizukuBinderNotFound' => 'Shizuku hizmeti çalışmıyor',
			'shizukuOld' => 'Eski Shizuku sürümü (<11) - lütfen güncelleyin',
			'shizukuOldAndroidWithADB' => 'Shizuku ADB ile Android < 8.1 üzerinde çalışıyor - Android\'i güncelleyin veya yerine Sui kullanın',
			'shizukuPretendToBeGooglePlay' => 'Yükleme kaynağı olarak Google Play\'i ayarla (Shizuku kullanılıyorsa)',
			'useSystemFont' => 'Sistem yazı tipini kullan',
			'useVersionCodeAsOSVersion' => 'İşletim sistemi tarafından algılanan sürüm olarak uygulamanın sürüm kodunu (versionCode) kullan',
			'requestHeader' => 'İstek başlığı (Request header)',
			'useLatestAssetDateAsReleaseDate' => 'En son yüklenen dosyayı sürüm tarihi olarak kullan',
			'defaultPseudoVersioningMethod' => 'Varsayılan sözde sürüm (pseudo-versioning) yöntemi',
			'partialAPKHash' => 'Kısmi APK karma değeri (Hash)',
			'APKLinkHash' => 'APK bağlantı karma değeri (Hash)',
			'directAPKLink' => 'Doğrudan APK bağlantısı',
			'pseudoVersionInUse' => 'Bir sözde sürüm kullanımda',
			'installedVersion' => 'Yüklü',
			'installed' => 'Yüklü',
			'notInstalledApps' => 'Yüklü değil',
			'latest' => 'En son',
			'invertRegEx' => 'Düzenli ifadeyi (RegEx) tersine çevir',
			'note' => 'Not',
			'selfHostedNote' => '"{}" açılır menüsü, herhangi bir kaynağın kendi sunucunuzda barındırılan (self-hosted) / özel örneklerine ulaşmak için kullanılabilir.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK ayrıştırılamadı (uyumsuz veya eksik indirme)',
			'beforeNewInstallsShareToAppVerifier' => 'Yeni uygulamaları AppVerifier ile paylaş (mevcutsa)',
			'appVerifierInstructionToast' => 'AppVerifier\'da paylaşın, ardından hazır olduğunda buraya dönün.',
			'wiki' => 'Yardım/Wiki',
			'wikiHint' => 'Updatium Wiki belgelerini aç',
			'allowInsecure' => 'Güvenli olmayan HTTP isteklerine izin ver',
			'stayOneVersionBehind' => 'En son sürümün bir sürüm gerisinde kal',
			'useFirstApkOfVersion' => 'Birden fazla APK olduğunda ilkini otomatik seç',
			'refreshBeforeDownload' => 'İndirmeden önce uygulama ayrıntılarını yenile',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Ad',
			'smartname' => 'Ad (akıllı)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Sıralama yöntemi',
			'welcome' => 'Hoş Geldiniz',
			'batteryOptimizationNote' => 'Updatium ayarlarından "ön plan hizmetine" geçerseniz ve/veya işletim sistemi ayarlarınızdan Updatium için pil optimizasyonunu devre dışı bırakırsanız, arka plan indirmelerinin daha güvenilir çalışabileceğini unutmayın.',
			'fileDeletionError' => 'Dosya silinemedi (manuel olarak silmeyi deneyin, ardından tekrar deneyin): "{}"',
			'foregroundService' => 'Updatium ön plan hizmeti',
			'foregroundServiceExplanation' => 'Güncelleme kontrolü için bir ön plan hizmeti kullanın (daha güvenilirdir, daha fazla güç tüketir)',
			'fgServiceNotice' => 'Bu bildirim, arka planda güncelleme kontrolü için gereklidir (işletim sistemi ayarlarında gizlenebilir)',
			'excludeSecrets' => 'Gizli bilgileri (Secrets) hariç tut',
			'GHReqPrefix' => 'GitHub istekleri için \'omeritzics/Updatium\' örneği (instance)',
			'includeZips' => 'ZIP dosyalarını dahil et',
			'zippedApkFilterRegEx' => 'ZIP içindeki APK\'ları filtrele',
			'multipleSigners' => 'Çoklu İmzalayıcı',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: 'Uygulama kaldırılsın mı?', other: 'Uygulamalar kaldırılsın mı?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: 'Çok fazla istek (istek sınırı) - {count} dakika içinde tekrar deneyin', other: 'Çok fazla istek (istek sınırı) - {count} dakika içinde tekrar deneyin', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: 'Arka planda güncelleme kontrolü sırasında {error} ile karşılaşıldı, {count} dakika içinde yeniden kontrol planlanacak', other: 'Arka planda güncelleme kontrolü sırasında {error} ile karşılaşıldı, {count} dakika içinde yeniden kontrol planlanacak', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: 'Arka planda güncelleme kontrolünde {count} güncelleme bulundu - gerekirse kullanıcıya bildirilecek', other: 'Arka planda güncelleme kontrolünde {count} güncelleme bulundu - gerekirse kullanıcıya bildirilecek', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{count} Uygulama', other: '{count} Uygulama', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{count} Bağlantı (URL)', other: '{count} Bağlantı (URL)', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{count} dakika', other: '{count} dakika', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{count} saat', other: '{count} saat', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{count} gün', other: '{count} gün', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{n} kayıt temizlendi (önce = {before}, sonra = {after})', other: '{n} kayıt temizlendi (önce = {before}, sonra = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{app} ve 1 uygulamanın daha güncellemesi var.', other: '{app} ve {count} uygulamanın daha güncellemesi var.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{app} ve 1 uygulama daha güncellendi.', other: '{app} ve {count} uygulama daha güncellendi.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{app} ve 1 uygulama güncellenemedi.', other: '{app} ve {count} uygulama güncellenemedi.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{app} ve 1 uygulama daha güncellenmiş olabilir.', other: '{app} ve {count} uygulama daha güncellenmiş olabilir.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('tr'))(n, one: 'Sertifika Karma Değeri (Hash)', other: 'Sertifika Karma Değerleri (Hash)', ), 
			'securityDisclaimerTitle' => 'Güvenlik ve Yasal Sorumluluk Reddi',
			'license' => 'Lisans',
			'licenseText' => 'Bu uygulama GPL v3 Lisansı altında dağıtılmaktadır.',
			'disclaimer' => 'Sorumluluk Reddi',
			'disclaimerText' => 'Bu uygulama, dış uygulamaların hiçbirini dağıtmaz, barındırmaz veya doğrulamaz. Bu araç aracılığıyla yüklenen herhangi bir yazılımın güvenliği ve yasallığı konusunda tüm sorumluluk kullanıcıya aittir.\n\nhttps://github.com/omeritzics/Updatium, Updatium\'u indirmek için tek resmi yerdir; resmi olmayan kaynaklar güvensiz olduğundan, uygulamayı başka bir yerden indirmek kesinlikle önerilmez.',
			'privacy' => 'Gizlilik',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Kabul Et ve Devam Et',
			'decline' => 'Reddet',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Updatium hoşunuza gitti mi?',
			'githubStarPromptContent' => 'Updatium, boş zamanlarımda geliştirdiğim gönüllü, açık kaynaklı bir topluluk projesidir. Projeyi desteklemek isterseniz, daha fazla kullanıcıya ve katılımcıya ulaşmamıza yardımcı olmak için lütfen projeyi GitHub\'da yıldızlamayı (star) düşünün. Bu konuda sizi bir daha rahatsız etmeyeceğiz. Şimdiden teşekkürler! :)',
			'githubStarPromptStar' => 'Yıldızla',
			'githubStarPromptDontShowAgain' => 'Bir daha gösterme',
			'sourceCode' => 'Kaynak Kodu',
			'developedBy' => 'Geliştiren',
			'appDescription' => 'Android uygulamalarınızı doğrudan APK kaynaklarından güncellemenize izin veren özelleştirilebilir bir uygulama kataloğudur.',
			'safeModeEnabled' => 'Güvenli Mod Etkin',
			'safeModeDisabled' => 'Güvenli Mod Devre Dışı',
			'safeModeDisable' => 'Güvenli Mod\'u Devre Dışı Bırak',
			'safeModeDisableHint' => 'Tap many times on the version number in the About dialog to disable Safe Mode',
			'safeModeAdmin' => 'Güvenli Mod Yönetimi',
			'safeModeSetupDescription' => 'Güvenli Mod\'u etkinleştirmek için bir parola ayarlayın. Etkinleştirildikten sonra, Güvenli Mod yeni uygulamaların eklenmesini engeller ve yalnızca parola ile devre dışı bırakılabilir.',
			'safeModeToggleDescription' => 'Güvenli Mod\'u açmak veya kapatmak için parolanızı girin.',
			'safeModeSetPassword' => 'Parola Ayarla',
			'safeModeConfirmPassword' => 'Parolayı Onayla',
			'safeModeEnterPassword' => 'Parola Girin',
			'safeModePasswordHint' => 'En az 8 karakter',
			'safeModePasswordTooShort' => 'Parola en az 8 karakter uzunluğunda olmalıdır',
			'safeModePasswordMismatch' => 'Parolalar eşleşmiyor',
			'safeModePasswordIncorrect' => 'Yanlış parola',
			'safeModePasswordError' => 'Parola ayarlanırken hata oluştu. Lütfen tekrar deneyin.',
			'safeModeEnable' => 'Güvenli Mod\'u Etkinleştir',
			'safeModeToggle' => 'Disable Safe Mode',
			'safeModeTapsRemaining' => '{count} dokunma kaldı, Güvenli Mod\'u devre dışı bırakmak için',
			'safeModeEnabledHint' => 'Güvenli Mod etkinleştirildi. Ayarlardaki sürüm numarasına birçoğuna dokunarak devre dışı bırakın.',
			'preventUninstallation' => 'Prevent uninstallation',
			'preventUninstallationDescription' => 'Prevents Updatium from being uninstalled when Safe Mode is on',
			'deviceAdminRequired' => 'Device admin permission is required to prevent uninstallation',
			'turnOffSafeModeFirst' => 'Please turn off Safe Mode first',
			'gotIt' => 'Anladım',
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
