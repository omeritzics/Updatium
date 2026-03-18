// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Geçerli bir $arg1 uygulama URL\'si değil';
  }

  @override
  String get noReleaseFound => 'Uygun bir sürüm bulunamadı';

  @override
  String get noVersionFound => 'Sürüm bulunamadı';

  @override
  String get urlMatchesNoSource => 'URL, bilinen bir kaynakla eşleşmiyor';

  @override
  String get cantInstallOlderVersion =>
      'Uygulamanın eski bir sürümü yüklenemez';

  @override
  String get appIdMismatch =>
      'İndirilen paketin kimliği mevcut uygulama kimliği ile eşleşmiyor';

  @override
  String get functionNotImplemented => 'Bu sınıf bu işlevi uygulamamış';

  @override
  String get placeholder => 'Yer tutucu';

  @override
  String get someErrors => 'Bazı hatalar oluştu';

  @override
  String get unexpectedError => 'Beklenmedik hata';

  @override
  String get ok => 'Tamam';

  @override
  String get and => 've';

  @override
  String get githubPATLabel =>
      'GitHub kişisel erişim anahtarı (limiti yükseltir)';

  @override
  String get includePrereleases => 'Ön sürümleri dahil et';

  @override
  String get fallbackToOlderReleases =>
      'Daha eski sürümleri alternatif olarak tut';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Düzenli ifadelerle sürüm başlıklarını filtrele';

  @override
  String get invalidRegEx => 'Geçersiz düzenli ifade';

  @override
  String get noDescription => 'Açıklama yok';

  @override
  String get cancel => 'İptal';

  @override
  String get requiredInBrackets => '(gerekli)';

  @override
  String get dropdownNoOptsError =>
      'HATA: AÇILIR MENÜDE EN AZ BİR SEÇENEK OLMALI';

  @override
  String get color => 'Renk';

  @override
  String get standard => 'Standart';

  @override
  String get custom => 'Özel';

  @override
  String get useMaterialYou => 'Material You renklerini kullan';

  @override
  String get githubStarredRepos => 'GitHub yıldızlı depolar';

  @override
  String get uname => 'Kullanıcı adı';

  @override
  String get wrongArgNum => 'Yanlış sayıda argüman sağlandı';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 sadece takip edilir';
  }

  @override
  String get source => 'Kaynak';

  @override
  String get app => 'Uygulama';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Bu kaynaktaki uygulamalar sadece takip edilir.';

  @override
  String get youPickedTrackOnly => '\'Sadece takip et\' seçeneğini seçtiniz.';

  @override
  String get trackOnlyAppDescription =>
      'Uygulama güncellemeler için takip edilecektir, ancak Updatium indirip kuramayacaktır.';

  @override
  String get cancelled => 'İptal edildi';

  @override
  String get appAlreadyAdded => 'Uygulama zaten ekli';

  @override
  String get alreadyUpToDateQuestion => 'Uygulama zaten güncel mi?';

  @override
  String get addApp => 'Uygulama ekle';

  @override
  String get appSourceURL => 'Uygulama kaynak URL\'si';

  @override
  String get error => 'Hata';

  @override
  String get add => 'Ekle';

  @override
  String get searchSomeSourcesLabel => 'Ara (yalnızca bazı kaynaklar)';

  @override
  String get search => 'Ara';

  @override
  String additionalOptsFor(String arg1) {
    return '$arg1 için ek seçenekler';
  }

  @override
  String get supportedSources => 'Desteklenen kaynaklar';

  @override
  String get trackOnlyInBrackets => '(sadece takip edilir)';

  @override
  String get searchableInBrackets => '(aranabilir)';

  @override
  String get appsString => 'Uygulamalar';

  @override
  String get noApps => 'Uygulama Yok';

  @override
  String get noAppsSubtext =>
      'You can add your first app by tapping on \'Add App\' below.';

  @override
  String get noAppsForFilter => 'Filtre İçin Uygulama Yok';

  @override
  String byX(String arg1) {
    return '$arg1 Tarafından';
  }

  @override
  String percentProgress(String arg1) {
    return 'İlerleme: $arg1%';
  }

  @override
  String get pleaseWait => 'Lütfen Bekleyin';

  @override
  String get updateAvailable => 'Güncelleme Var';

  @override
  String get notInstalled => 'Yüklenmedi';

  @override
  String get pseudoVersion => 'sözde versiyon';

  @override
  String get selectAll => 'Hepsini Seç';

  @override
  String deselectX(String arg1) {
    return '$arg1\'yi Seçimden Kaldır';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 Updatium\'dan kaldırılacak ancak cihazınızda yüklü kalacaktır.';
  }

  @override
  String get removeSelectedAppsQuestion =>
      'Seçilen Uygulamaları Kaldırmak İstiyor musunuz?';

  @override
  String get removeSelectedApps => 'Seçilen Uygulamaları Kaldır';

  @override
  String updateX(String arg1) {
    return '$arg1\'yi Güncelle';
  }

  @override
  String installX(String arg1) {
    return '$arg1\'yi Yükle';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return '$arg1(Takip Edilen) olarak Güncellendi olarak İşaretle';
  }

  @override
  String changeX(String arg1) {
    return '$arg1\'yi Değiştir';
  }

  @override
  String get installUpdateApps => 'Uygulamaları Yükle/Güncelle';

  @override
  String get installUpdateSelectedApps => 'Seçilen Uygulamaları Yükle/Güncelle';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Seçilen Uygulamaları $arg1 olarak Güncellendi olarak İşaretle?';
  }

  @override
  String get no => 'Hayır';

  @override
  String get yes => 'Evet';

  @override
  String get markSelectedAppsUpdated =>
      'Seçilen Uygulamaları Güncellendi olarak İşaretle';

  @override
  String get pinToTop => 'Üstte Tut';

  @override
  String get unpinFromTop => 'Üstten Kaldır';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Seçilen Uygulamaların Yükleme Durumunu Sıfırlamak İstiyor musunuz?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Seçilen Uygulamaların yükleme durumu sıfırlanacak.\n\nBu, Updatium\'da gösterilen uygulama sürümünün başarısız güncellemeler veya diğer sorunlar nedeniyle yanlış olması durumunda yardımcı olabilir.';

  @override
  String get customLinkMessage =>
      'Bu bağlantılar Updatium\'un kurulu olduğu cihazlarda çalışır';

  @override
  String get shareAppConfigLinks =>
      'Uygulama yapılandırmasını HTML bağlantısı olarak paylaş';

  @override
  String get shareSelectedAppURLs => 'Seçili uygulamaların URL\'lerini paylaş';

  @override
  String get resetInstallStatus => 'Yükleme durumunu sıfırla';

  @override
  String get more => 'Daha fazla';

  @override
  String get removeOutdatedFilter =>
      'Güncel olmayan uygulama filtresini kaldır';

  @override
  String get showOutdatedOnly => 'Sadece güncel olmayan uygulamaları göster';

  @override
  String get filter => 'Filtre';

  @override
  String get filterApps => 'Uygulamaları filtrele';

  @override
  String get appName => 'Uygulama adı';

  @override
  String get author => 'Yapımcı';

  @override
  String get upToDateApps => 'Güncel uygulamalar';

  @override
  String get nonInstalledApps => 'Yüklü olmayan uygulamalar';

  @override
  String get importExport => 'İçe/dışa aktar';

  @override
  String get settings => 'Ayarlar';

  @override
  String exportedTo(String arg1) {
    return '$arg1\'e Dışa Aktarıldı';
  }

  @override
  String get updatiumExport => 'Updatium Dışa Aktar';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Geçersiz Giriş';

  @override
  String importedX(String arg1) {
    return '$arg1 İçe Aktarıldı';
  }

  @override
  String get updatiumImport => 'Updatium İçe Aktar';

  @override
  String get importFromURLList => 'URL Listesinden İçe Aktar (Örneğin OPML)';

  @override
  String get searchQuery => 'Arama Sorgusu';

  @override
  String get appURLList => 'Uygulama URL Listesi';

  @override
  String get line => 'Satır';

  @override
  String searchX(String arg1) {
    return '$arg1\'yi Ara';
  }

  @override
  String get noResults => 'Sonuç Bulunamadı';

  @override
  String importX(String arg1) {
    return '$arg1 İçe Aktar';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'İçe Aktarılan Uygulamalar yanlışlıkla \"Yüklenmedi\" olarak gösterilebilir.\nBunu düzeltmek için bunları Updatium üzerinden yeniden yükleyin.\nBu, yalnızca URL ve üçüncü taraf içe aktarma yöntemlerini etkiler.\n\nYalnızca URL ve üçüncü taraf içe aktarma yöntemlerini etkiler.';

  @override
  String get importErrors => 'İçe Aktarma Hataları';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1\'den $arg2 Uygulama İçe Aktarıldı.';
  }

  @override
  String get followingURLsHadErrors => 'Aşağıdaki URL\'lerde hatalar oluştu:';

  @override
  String get selectURL => 'URL Seç';

  @override
  String get selectURLs => 'URL\'leri Seç';

  @override
  String get pick => 'Seç';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Karanlık';

  @override
  String get light => 'Aydınlık';

  @override
  String get followSystem => 'Sistemi takip et';

  @override
  String get followSystemThemeExplanation =>
      'Sistem temasını takip etme yalnızca üçüncü parti uygulamaların kullanımı ile mümkündür';

  @override
  String get useBlackTheme => 'Saf siyah karanlık tema kullan';

  @override
  String get appSortBy => 'Uygulama sıralama ölçütü';

  @override
  String get authorName => 'Yapımcı/isim';

  @override
  String get nameAuthor => 'İsim/yapımcı';

  @override
  String get asAdded => 'Eklendiği gibi';

  @override
  String get appSortOrder => 'Uygulama sıralama sırası';

  @override
  String get ascending => 'Artan';

  @override
  String get descending => 'Azalan';

  @override
  String get bgUpdateCheckInterval =>
      'Arka planda güncelleme denetleme sıklığı';

  @override
  String get neverManualOnly => 'Asla - yalnızca el ile';

  @override
  String get appearance => 'Görünüm';

  @override
  String get pinUpdates =>
      'Güncellemeleri uygulamalar görünümünün üstüne sabitle';

  @override
  String get updates => 'Güncellemeler';

  @override
  String get sourceSpecific => 'Kaynağa özgü';

  @override
  String get appSource => 'Uygulama kaynağı';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Günlük yok';

  @override
  String get appLogs => 'Uygulama günlükleri';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Kapat';

  @override
  String get share => 'Paylaş';

  @override
  String get appNotFound => 'Uygulama Bulunamadı';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'updatium-ihracat';

  @override
  String get pickAnAPK => 'APK Seç';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1\'nin birden fazla paketi var:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Cihazınız $arg1 CPU mimarisini destekliyor.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Cihazınız şu CPU mimarilerini destekliyor:';

  @override
  String get warning => 'Uyarı';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Uygulama kaynağı \'$arg1\', ancak dağıtım paketi \'$arg2\'. Devam etmek istiyor musunuz?';
  }

  @override
  String get updatesAvailable => 'Güncellemeler Var';

  @override
  String get updatesAvailableNotifDescription =>
      'Kullanıcıya Updatium tarafından takip edilen bir veya daha fazla uygulama için güncelleme bulunduğuna dair bilgi verir';

  @override
  String get noNewUpdates => 'Yeni güncelleme yok.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 güncellemesi var.';
  }

  @override
  String get appsUpdated => 'Uygulamalar güncellendi';

  @override
  String get appsNotUpdated => 'Uygulamalar güncellenemedi';

  @override
  String get appsUpdatedNotifDescription =>
      'Bir veya daha fazla uygulama güncellemesinin arka planda yapıldığını kullanıcıya bildirir';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1, $arg2 sürümüne güncellendi.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return '$arg1, $arg2 sürümüne güncellenemedi.';
  }

  @override
  String get errorCheckingUpdates => 'Güncellemeler denetlenirken hata oluştu';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Arka plan güncelleme denetlemesi başarısız olduğunda görünen bir bildirim';

  @override
  String get appsRemoved => 'Uygulamalar kaldırıldı';

  @override
  String get appsRemovedNotifDescription =>
      'Bir veya daha fazla uygulamanın, yüklenmesi sırasında oluşan hatalardan dolayı kaldırıldığını kullanıcıya bildirir';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 şu hatadan dolayı kaldırıldı: $arg2';
  }

  @override
  String get completeAppInstallation => 'Uygulama Yüklemeyi Tamamla';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Uygulamaları yüklemek için Updatium\'un açık olması gerekiyor';

  @override
  String get completeAppInstallationNotifDescription =>
      'Kullanıcıdan Updatium\'a geri dönüp bir uygulama yüklemeyi tamamlamasını isteyen bir bildirim';

  @override
  String get checkingForUpdates => 'Güncellemeler Kontrol Ediliyor';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Güncellemeler kontrol edildiğinde görünen geçici bir bildirim';

  @override
  String get pleaseAllowInstallPerm =>
      'Lütfen Updatium\'un uygulama yüklemesine izin verin';

  @override
  String get trackOnly => 'Sadece Takip Et';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Hata $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Sürüm düzeltme devre dışı (eklenti çalışmıyor gibi görünüyor)';

  @override
  String get unknown => 'Bilinmeyen';

  @override
  String get none => 'Hiçbiri';

  @override
  String get all => 'Tümü';

  @override
  String get never => 'Asla';

  @override
  String latestVersionX(String arg1) {
    return 'En son sürüm: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Yüklü: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Son güncelleme denetlemesi: $arg1';
  }

  @override
  String get remove => 'Kaldır';

  @override
  String get yesMarkUpdated => 'Evet, güncel olarak işaretle';

  @override
  String get fdroid => 'Resmi F-Droid';

  @override
  String get appIdOrName => 'Uygulama kimliği veya adı';

  @override
  String get appId => 'Uygulama kimliği';

  @override
  String get appWithIdOrNameNotFound =>
      'Bu kimlikle veya isimle bir uygulama bulunamadı';

  @override
  String get reposHaveMultipleApps =>
      'Depolar birden fazla uygulama içerebilirler';

  @override
  String get fdroidThirdPartyRepo => 'F-Droid üçüncü parti depo';

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
  String get install => 'Yükle';

  @override
  String get markInstalled => 'Yüklü olarak işaretle';

  @override
  String get update => 'Güncelle';

  @override
  String get updated => 'Güncellendi';

  @override
  String get markUpdated => 'Güncel olarak işaretle';

  @override
  String get additionalOptions => 'Ek seçenekler';

  @override
  String get disableVersionDetection => 'Sürüm algılamasını devre dışı bırak';

  @override
  String get noVersionDetectionExplanation =>
      'Bu seçenek yalnızca sürüm algılamasının doğru çalışmadığı uygulamalar için kullanılmalıdır.';

  @override
  String downloadingX(String arg1) {
    return '$arg1 indiriliyor';
  }

  @override
  String downloadX(String arg1) {
    return '$arg1\'yi indir';
  }

  @override
  String downloadedX(String arg1) {
    return '$arg1 indirildi';
  }

  @override
  String get releaseAsset => 'Sürüm varlığı';

  @override
  String get downloadNotifDescription =>
      'Uygulama indirilmesi ilerlemesini kullanıcıya bildirir';

  @override
  String get noAPKFound => 'APK bulunamadı';

  @override
  String get noVersionDetection => 'Sürüm algılaması yok';

  @override
  String get categorize => 'Kategorize et';

  @override
  String get categories => 'Kategoriler';

  @override
  String get category => 'Kategori';

  @override
  String get noCategory => 'Kategori yok';

  @override
  String get noCategories => 'Kategori yok';

  @override
  String get deleteCategoriesQuestion => 'Kategoriler silinsin mi?';

  @override
  String get categoryDeleteWarning =>
      'Silinen kategorilerdeki bütün uygulamalar kategorilendirilmemiş olarak ayarlanacaktır.';

  @override
  String get addCategory => 'Kategori ekle';

  @override
  String get label => 'Etiket';

  @override
  String get language => 'Dil';

  @override
  String get copiedToClipboard => 'Panoya kopyalandı';

  @override
  String get storagePermissionDenied => 'Depolama izni reddedildi';

  @override
  String get selectedCategorizeWarning =>
      'Bu, seçilen uygulamalar için mevcut kategori ayarlarını değiştirecektir.';

  @override
  String get filterAPKsByRegEx => 'APK\'leri Düzenli İfade ile Filtrele';

  @override
  String get removeFromUpdatium => 'Updatium\'dan Kaldır';

  @override
  String get uninstallFromDevice => 'Cihazdan Kaldır';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Yalnızca Sürüm Algılaması Devre Dışı Uygulamalar İçin Çalışır.';

  @override
  String get releaseDateAsVersion => 'Sürüm Olarak Yayın Tarihi Kullan';

  @override
  String get releaseTitleAsVersion =>
      'Sürüm dizesi olarak sürüm başlığını kullan';

  @override
  String get releaseDateAsVersionExplanation =>
      'Bu seçenek, sürüm algılamanın doğru çalışmadığı ancak bir sürüm tarihinin mevcut olduğu uygulamalar için kullanılmalıdır.';

  @override
  String get changes => 'Değişiklikler';

  @override
  String get releaseDate => 'Yayın tarihi';

  @override
  String get importFromURLsInFile =>
      'Dosyadaki URL\'lerden içe aktar (OPML gibi)';

  @override
  String get versionDetectionExplanation =>
      'Sürümü işletim sistemi tarafından algılanan sürümle eşleştir';

  @override
  String get versionDetection => 'Sürüm tespiti';

  @override
  String get standardVersionDetection => 'Standart sürüm tespiti';

  @override
  String get groupByCategory => 'Kategoriye göre grupla';

  @override
  String get listView => 'Liste görünümü';

  @override
  String get gridView => 'Izgara görünümü';

  @override
  String get autoApkFilterByArch =>
      'Mümkün olduğunda APK\'ları CPU mimarisine göre filtrelemeye çalış';

  @override
  String get autoLinkFilterByArch =>
      'Mümkün olduğunda bağlantıları CPU mimarisine göre filtrelemeye çalış';

  @override
  String get overrideSource => 'Öncelenecek kaynak';

  @override
  String get dontShowAgain => 'Bunu tekrar gösterme';

  @override
  String get dontShowTrackOnlyWarnings =>
      '\'Sadece takip edilir\' uyarılarını gösterme';

  @override
  String get dontShowAPKOriginWarnings => 'APK kaynağı uyarılarını gösterme';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Yüklü olmayan uygulamaları uygulamalar görünümünün altına taşı';

  @override
  String get hideNonInstalledApps => 'Yüklü olmayan uygulamaları gizle';

  @override
  String get gitlabPATLabel => 'GitLab kişisel erişim anahtarı';

  @override
  String get about => 'Hakkında';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1 ek kimlik bilgileri gerektirir (Ayarlarda)';
  }

  @override
  String get checkOnStart => 'Açılışta güncellemeleri denetle';

  @override
  String get safeMode => 'Güvenli Mod';

  @override
  String get safeModeDescription =>
      'Uygulama Ekle sayfasını gizle ve bunun yerine İçe/Dışa Aktar\'ı göster';

  @override
  String get safeModeAddAppDisabled => 'Uygulama Ekle güvenli modda devre dışı';

  @override
  String get tryInferAppIdFromCode =>
      'Uygulama kimliğini kaynak kodundan bulmaya çalış';

  @override
  String get removeOnExternalUninstall =>
      'Harici olarak kaldırılan uygulamaları otomatik olarak kaldır';

  @override
  String get pickHighestVersionCode =>
      'Otomatik olarak en yüksek sürüm koduna sahip APK\'yı seç';

  @override
  String get checkUpdateOnDetailPage =>
      'Bir uygulama detayı sayfasını açarken güncellemeleri denetle';

  @override
  String get disablePageTransitions =>
      'Sayfa geçiş animasyonlarını devre dışı bırak';

  @override
  String get reversePageTransitions =>
      'Sayfa geçiş animasyonlarını tersine çevir';

  @override
  String get minStarCount => 'Minimum yıldız sayısı';

  @override
  String get addInfoBelow => 'Bu bilgiyi aşağıya ekleyin.';

  @override
  String get addInfoInSettings => 'Bu bilgiyi Ayarlarda ekleyin.';

  @override
  String get githubSourceNote =>
      'GitHub sınırlaması bir API anahtarı kullanılarak önlenebilir.';

  @override
  String get sortByLastLinkSegment =>
      'Bağlantının sadece son kısmına göre sırala';

  @override
  String get filterReleaseNotesByRegEx =>
      'Sürüm notlarını düzenli ifade ile filtrele';

  @override
  String get customLinkFilterRegex =>
      'Düzenli ifade ile APK bağlantı filtresi (varsayılan \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Uygulama güncellemeleri denendi';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Bir veya daha fazla uygulama güncellemesinin arka planda yapılmış olabileceğini kullanıcıya bildirir';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 $arg2 sürümüne güncellenmiş olabilir.';
  }

  @override
  String get enableBackgroundUpdates =>
      'Arka plan güncellemelerini etkinleştir';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Arka plan güncellemeleri tüm uygulamalar için mümkün olmayabilir.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Arka plan kurulumunun başarısı, Updatium\'un açıldığında ancak belirlenebilir.';

  @override
  String get verifyLatestTag => '\'latest\' etiketini doğrula';

  @override
  String get intermediateLinkRegex =>
      'Ziyaret Edilecek \'Orta Düzey\' Bağlantıyı Filtrele';

  @override
  String get filterByLinkText => 'Bağlantıları bağlantı metnine göre filtrele';

  @override
  String get matchLinksOutsideATags =>
      '<a> etiketi dışındaki bağlantıları eşleştir';

  @override
  String get intermediateLinkNotFound => 'Ara bağlantı bulunamadı';

  @override
  String get intermediateLink => 'Ara bağlantı';

  @override
  String get exemptFromBackgroundUpdates =>
      'Arka plan güncellemelerinden muaf (etkinleştirilmişse)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Wi-Fi\'de değilken arka plan güncellemelerini devre dışı bırak';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Şarjda değilken arka plan güncellemelerini devre dışı bırak';

  @override
  String get autoSelectHighestVersionCode =>
      'En yüksek versionCode olan APK\'yı otomatik seç';

  @override
  String get versionExtractionRegEx => 'Sürüm dizesi bulmak için RegEx';

  @override
  String get trimVersionString => 'Sürüm dizesini RegEx ile kırp';

  @override
  String matchGroupToUseForX(String arg1) {
    return '\"$arg1\" için kullanılacak grubu eşleştir';
  }

  @override
  String get matchGroupToUse =>
      'Sürüm dizesi bulma RegEx\'i için kullanılacak grubu eşleştir';

  @override
  String get highlightTouchTargets =>
      'Az belirgin olan dokunma hedeflerini vurgula';

  @override
  String get pickExportDir => 'Dışa aktarma klasörü seç';

  @override
  String get autoExportOnChanges =>
      'Değişiklik olduğunda otomatik olarak dışa aktar';

  @override
  String get includeSettings => 'Ayarları dahil et';

  @override
  String get filterVersionsByRegEx => 'Sürümleri düzenli ifade ile filtrele';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Önerilen versionCode olan APK\'yı seçmeye çalış';

  @override
  String get dontSortReleasesList => 'API\'deki sürüm sırasını tut';

  @override
  String get reverseSort => 'Sıralamayı tersine çevir';

  @override
  String get takeFirstLink => 'İlk bağlantıyı al';

  @override
  String get skipSort => 'Sıralamayı atla';

  @override
  String get debugMenu => 'Hata ayıklama menüsü';

  @override
  String get bgTaskStarted =>
      'Arka plan işlemi başladı - günlükleri kontrol et.';

  @override
  String get runBgCheckNow => 'Arka plan güncelleme denetlemesini şimdi başlat';

  @override
  String get versionExtractWholePage =>
      'Sürüm dizesi bulma RegEx\'ini bütün sayfaya uygula';

  @override
  String get installing => 'Yükleniyor';

  @override
  String get skipUpdateNotifications => 'Güncelleme bildirimlerini atla';

  @override
  String get updatesAvailableNotifChannel => 'Güncellemeler mevcut';

  @override
  String get appsUpdatedNotifChannel => 'Uygulamalar güncellendi';

  @override
  String get appsPossiblyUpdatedNotifChannel =>
      'Uygulama güncellemeleri denendi';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Güncelleme denetlenirken hata';

  @override
  String get appsRemovedNotifChannel => 'Uygulamalar kaldırıldı';

  @override
  String downloadingXNotifChannel(String arg1) {
    return '$arg1 indiriliyor';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Uygulama yüklemesini tamamla';

  @override
  String get checkingForUpdatesNotifChannel => 'Güncellemeler denetleniyor';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Yalnızca yüklü ve \'sadece takip edilen\' uygulamaların güncellemesini denetle';

  @override
  String get supportFixedAPKURL => 'Sabit APK URL\'lerini destekle';

  @override
  String selectX(String arg1) {
    return '$arg1\'yi seç';
  }

  @override
  String get parallelDownloads => 'Paralel indirmelere izin ver';

  @override
  String get useShizuku => 'Yüklemek için Shizuku ya da Sui kullan';

  @override
  String get shizukuBinderNotFound => 'Shizuku hizmeti çalışmıyor';

  @override
  String get shizukuOld => 'Eski Shizuku sürümü (<11) - güncelleyin';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku, Android < 8.1\'de ADB ile çalışıyor - Android\'i güncelleyin veya Sui kullanın';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Yükleme kaynağını Google Play olarak ayarla (Shizuku kullanılıyorsa)';

  @override
  String get useSystemFont => 'Sistem yazı tipini kullan';

  @override
  String get useVersionCodeAsOSVersion =>
      'Uygulama versionCode\'sini işletim sistemi tarafından algılanan sürüm olarak kullan';

  @override
  String get requestHeader => 'İstek başlığı';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'En son varlık yüklemesini yayın tarihi olarak kullan';

  @override
  String get defaultPseudoVersioningMethod => 'Varsayılan sözde sürüm yöntemi';

  @override
  String get partialAPKHash => 'Kısmi APK hash\'i';

  @override
  String get directAPKLink => 'Direkt APK bağlantısı';

  @override
  String get githubRequestPrefix => 'GitHub request prefix';

  @override
  String get smartName => 'Smart name';

  @override
  String get smartPlusDate => 'Smart + Date';

  @override
  String get name => 'İsim';

  @override
  String get sortMethod => 'Sıralama yöntemi';

  @override
  String get minimumStarCount => 'Minimum star count';

  @override
  String get refreshBeforeDownload =>
      'İndirmeden önce uygulama ayrıntılarını yenileyin';

  @override
  String get gitlabRequestPrefix => 'GitLab request prefix';

  @override
  String get pseudoVersionInUse => 'Sözde sürüm kullanılıyor';

  @override
  String get installed => 'Yüklü';

  @override
  String get latest => 'En son';

  @override
  String get invertRegEx => 'Düzenli ifadeyi ters çevir';

  @override
  String get note => 'Not';

  @override
  String selfHostedNote(String arg1) {
    return '\"$arg1\" açılır menüsü, herhangi bir kaynağın bireysel (self-hosted) veya özel örneklerine ulaşmak için kullanılabilir.';
  }

  @override
  String get badDownload => 'APK ayrıştırılamadı (uyumsuz veya kısmi indirme)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Yeni Uygulamaları AppVerifier ile paylaşın (varsa)';

  @override
  String get appVerifierInstructionToast =>
      'AppVerifier ile paylaşın, hazır olduğunuzda buraya dönün.';

  @override
  String get wiki => 'Yardım/Wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Güvensiz HTTP isteklerine izin ver';

  @override
  String get stayOneVersionBehind => 'En son sürümün bir sürüm gerisinde kalın';

  @override
  String get useFirstApkOfVersion =>
      'Birden fazla APK arasından ilkini otomatik seçme';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (Çin)';

  @override
  String get smartname => 'İsim (akıllı)';

  @override
  String get welcome => 'Hoş geldiniz';

  @override
  String get documentationLinksNote =>
      'Aşağıda bağlantısı verilen Updatium GitHub sayfası, uygulamayı nasıl kullanacağınızı anlamanıza yardımcı olacak videolara, makalelere, tartışmalara ve diğer kaynaklara bağlantılar içerir.';

  @override
  String get batteryOptimizationNote =>
      'Updatium ayarlarında \"ön plan hizmeti\"ne geçerseniz ve/veya Updatium için işletim sistemi pil optimizasyonlarını devre dışı bırakırsanız arka planda indirmelerin daha güvenilir şekilde çalışabileceğini unutmayın.';

  @override
  String fileDeletionError(String arg1) {
    return 'Dosya silinemedi (elle silmeyi deneyin ve sonra tekrar deneyin): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Updatium ön plan hizmeti';

  @override
  String get foregroundServiceExplanation =>
      'Güncelleme denetimi için bir ön plan hizmeti kullanın (daha güvenilir, daha fazla güç tüketir)';

  @override
  String get fgServiceNotice =>
      'Bu bildirim arka planda güncelleme kontrolü için gereklidir (işletim sistemi ayarlarından gizlenebilir)';

  @override
  String get excludeSecrets => 'Sırları hariç tut';

  @override
  String get includeZips => 'ZIP dosyalarını dahil et';

  @override
  String get zippedApkFilterRegEx => 'ZIP içindeki APK\'ları filtrele';

  @override
  String get googleVerificationWarningP1 =>
      'Google, 2026/2027\'den itibaren \"sertifikalı\" Android cihazlardaki bütün uygulamaların, geliştiricinin kişisel kimlik bilgilerini doğrudan Google\'a göndermesini gerektireceğini duyurdu.\n\nBu tarihten sonra, Updatium sertifikalı Android cihazlarda çalışmayı durabilir.';

  @override
  String get googleVerificationWarningP2 =>
      'Daha fazla bilgi için https://keepandroidopen.org/ adresine gidin.';

  @override
  String get googleVerificationWarningP3 =>
      'Kısa vadede, Google\'ın duyurudan sonra aldığı geniş tepkilerin ardından yapacağına söz verdiği \"gelişmiş akış\" işlemi ile \"doğrulanmamış\" (şartı yerine getirmeyen) uygulamaları yüklemek mümkün olabilir; ancak nasıl çalışacağını detaylandırmadıkları için bunun kullanıcı özgürlüğünü pratik anlamda gerçekten koruyup koruyamayacağı belirsizdir.\n\nHer halükârda Google\'ın bu hamlesi; bireyler için ücretsiz, genel amaçlı bilişim hizmetlerinin sonuna doğru atılmış önemli bir adımdır.\n\nVar olmalarına müsaade edildiği sürece, GrapheneOS gibi sertifikasız işletim sistemleri bundan etkilenmemelidir.';

  @override
  String get multipleSigners => 'Birden fazla imzacı';

  @override
  String get securityDisclaimerTitle => 'Güvenlik ve Yasal Sorumluluk Reddi';

  @override
  String get license => 'Lisans';

  @override
  String get licenseText =>
      'Bu uygulama GPL v3 Lisansı altında dağıtılmaktadır.';

  @override
  String get disclaimer => 'Sorumluluk Reddi';

  @override
  String get disclaimerText =>
      'Bu uygulama harici uygulamaları dağıtmaz, barındırmaz veya doğrulamaz. Kullanıcı, bu araç üzerinden yüklenen herhangi bir yazılımın güvenliği ve yasallığından tamamen sorumludur.\n\nhttps://github.com/omeritzics/Updatium Updatium\'u indirmek için tek resmi yerdir - resmi olmayan kaynaklardan indirmek güvenli olmadığından başka yerlerden indirmek şiddetle tavsiye edilmez.';

  @override
  String get privacy => 'Gizlilik';

  @override
  String get privacyText =>
      'Bu uygulama gizlilik odaklıdır ve kişisel veri toplamaz.';

  @override
  String get acceptAndContinue => 'Kabul Et ve Devam Et';

  @override
  String get decline => 'Reddet';

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
  String get aPKLinkHash => 'APK bağlantısı hash\'i';

  @override
  String get gHReqPrefix =>
      'GitHub istekleri için \'sky22333/hubproxy\' örneği';

  @override
  String get continueAction => 'Devam et';

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
    return '$count dakika';
  }

  @override
  String hour(int count) {
    return '$count saat';
  }

  @override
  String day(int count) {
    return '$count gün';
  }
}
