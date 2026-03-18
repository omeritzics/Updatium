// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String invalidURLForSource(String arg1) {
    return 'Bukan URL aplikasi $arg1 yang valid';
  }

  @override
  String get noReleaseFound => 'Tidak dapat menemukan rilis yang sesuai';

  @override
  String get noVersionFound => 'Tidak dapat memastikan versi rilis yang sesuai';

  @override
  String get urlMatchesNoSource =>
      'URL tidak sesuai dengan sumber yang diketahui';

  @override
  String get cantInstallOlderVersion =>
      'Tidak dapat memasang versi aplikasi yang lebih lama';

  @override
  String get appIdMismatch =>
      'ID paket yang diunduh tidak sama dengan ID aplikasi yang ada';

  @override
  String get functionNotImplemented =>
      'Kelas ini belum mengimplementasikan fungsi ini';

  @override
  String get placeholder => 'Tempat penampung';

  @override
  String get someErrors => 'Terjadi beberapa kesalahan';

  @override
  String get unexpectedError => 'Kesalahan tidak terduga';

  @override
  String get ok => 'Oke';

  @override
  String get and => 'dan';

  @override
  String get githubPATLabel =>
      'Token Akses Pribadi GitHub (tingkatkan batasan tarif)';

  @override
  String get includePrereleases => 'Sertakan pra-rilis';

  @override
  String get fallbackToOlderReleases => 'Alternatif kembali ke rilis lama';

  @override
  String get filterReleaseTitlesByRegEx =>
      'Filter judul rilis dengan ekspresi reguler';

  @override
  String get invalidRegEx => 'Ekspresi reguler tidak valid';

  @override
  String get noDescription => 'Tidak ada deskripsi';

  @override
  String get cancel => 'Batal';

  @override
  String get requiredInBrackets => '(Diperlukan)';

  @override
  String get dropdownNoOptsError =>
      'KESALAHAN: DROPDOWN HARUS MEMILIKI SETIDAKNYA SATU OPSI';

  @override
  String get color => 'Warna';

  @override
  String get standard => 'Standar';

  @override
  String get custom => 'Kustom';

  @override
  String get useMaterialYou => 'Gunakan warna Material You';

  @override
  String get githubStarredRepos => 'Repositori berbintang GitHub';

  @override
  String get uname => 'Nama pengguna';

  @override
  String get wrongArgNum => 'Salah memberikan jumlah argumen';

  @override
  String xIsTrackOnly(String arg1) {
    return '$arg1 adalah Pelacakan Saja';
  }

  @override
  String get source => 'Sumber';

  @override
  String get app => 'Aplikasi';

  @override
  String get appsFromSourceAreTrackOnly =>
      'Aplikasi dari sumber ini hanya untuk \'Pelacakan Saja\'.';

  @override
  String get youPickedTrackOnly => 'Anda telah memilih opsi Pelacakan Saja.';

  @override
  String get trackOnlyAppDescription =>
      'Aplikasi akan dilacak untuk pembaruan, tetapi Updatium tidak akan dapat mengunduh atau memasangnya.';

  @override
  String get cancelled => 'Dibatalkan';

  @override
  String get appAlreadyAdded => 'Aplikasi sudah ditambahkan';

  @override
  String get alreadyUpToDateQuestion => 'Aplikasi sudah yang terbaru?';

  @override
  String get addApp => 'Tambah aplikasi';

  @override
  String get appSourceURL => 'Tambah sumber URL';

  @override
  String get error => 'Kesalahan';

  @override
  String get add => 'Tambah';

  @override
  String get searchSomeSourcesLabel => 'Cari (beberapa sumber saja)';

  @override
  String get search => 'Cari';

  @override
  String additionalOptsFor(String arg1) {
    return 'Opsi tambahan untuk $arg1';
  }

  @override
  String get supportedSources => 'Sumber yang didukung';

  @override
  String get trackOnlyInBrackets => '(Pelacakan Saja)';

  @override
  String get searchableInBrackets => '(Dapat dicari)';

  @override
  String get appsString => 'Aplikasi';

  @override
  String get noApps => 'Selamat datang!';

  @override
  String get noAppsSubtext =>
      'Anda dapat menambahkan aplikasi pertama dengan mengetuk \'Tambah aplikasi\' di bawah.';

  @override
  String get noAppsForFilter => 'Tidak ada aplikasi untuk difilter';

  @override
  String byX(String arg1) {
    return 'Oleh $arg1';
  }

  @override
  String percentProgress(String arg1) {
    return 'Perkembangan: $arg1%';
  }

  @override
  String get pleaseWait => 'Harap tunggu';

  @override
  String get updateAvailable => 'Pembaruan tersedia';

  @override
  String get notInstalled => 'Tidak terpasang';

  @override
  String get pseudoVersion => 'versi semu';

  @override
  String get selectAll => 'Pilih semua';

  @override
  String deselectX(String arg1) {
    return 'Batal pilih $arg1';
  }

  @override
  String xWillBeRemovedButRemainInstalled(String arg1) {
    return '$arg1 akan dihapus dari Updatium tetapi tetap terpasang di perangkat.';
  }

  @override
  String get removeSelectedAppsQuestion => 'Hapus aplikasi terpilih?';

  @override
  String get removeSelectedApps => 'Hapus aplikasi terpilih';

  @override
  String updateX(String arg1) {
    return 'Perbarui $arg1';
  }

  @override
  String installX(String arg1) {
    return 'Pasang $arg1';
  }

  @override
  String markXTrackOnlyAsUpdated(String arg1) {
    return 'Tandai $arg1\n(Pelacakan Saja)\nsudah diperbarui';
  }

  @override
  String changeX(String arg1) {
    return 'Ubah $arg1';
  }

  @override
  String get installUpdateApps => 'Pasang/perbarui aplikasi';

  @override
  String get installUpdateSelectedApps => 'Pasang/perbarui aplikasi terpilih';

  @override
  String markXSelectedAppsAsUpdated(String arg1) {
    return 'Tandai $arg1 aplikasi terpilih sudah diperbarui?';
  }

  @override
  String get no => 'Tidak';

  @override
  String get yes => 'Ya';

  @override
  String get markSelectedAppsUpdated =>
      'Tandai aplikasi terpilih sudah diperbarui';

  @override
  String get pinToTop => 'Sematkan ke atas';

  @override
  String get unpinFromTop => 'Lepaskan semat dari atas';

  @override
  String get resetInstallStatusForSelectedAppsQuestion =>
      'Atur ulang status pemasangan untuk aplikasi terpilih?';

  @override
  String get installStatusOfXWillBeResetExplanation =>
      'Status pemasangan dari aplikasi terpilih akan diatur ulang.\n\nHal ini bisa membantu saat versi aplikasi yang ditampilkan di Updatium salah akibat pembaruan yang gagal atau masalah lainnya.';

  @override
  String get customLinkMessage =>
      'Tautan ini berfungsi pada perangkat yang terpasang Updatium';

  @override
  String get shareAppConfigLinks =>
      'Bagikan konfigurasi aplikasi sebagai tautan HTML';

  @override
  String get shareSelectedAppURLs => 'Bagikan URL aplikasi terpilih';

  @override
  String get resetInstallStatus => 'Atur ulang status pemasangan';

  @override
  String get more => 'Lebih banyak';

  @override
  String get removeOutdatedFilter => 'Hapus filter aplikasi yang usang';

  @override
  String get showOutdatedOnly => 'Tampilkan aplikasi yang usang saja';

  @override
  String get filter => 'Filter';

  @override
  String get filterApps => 'Filter aplikasi';

  @override
  String get appName => 'Nama aplikasi';

  @override
  String get author => 'Pencipta';

  @override
  String get upToDateApps => 'Aplikasi terbaru';

  @override
  String get nonInstalledApps => 'Aplikasi tidak terpasang';

  @override
  String get importExport => 'Impor/ekspor';

  @override
  String get settings => 'Pengaturan';

  @override
  String exportedTo(String arg1) {
    return 'Diekspor ke $arg1';
  }

  @override
  String get updatiumExport => 'Ekspor Updatium';

  @override
  String get failedToExport => 'Failed to export';

  @override
  String get exportAlreadyInProgress => 'Export already in progress';

  @override
  String get failedToCreateExportFile => 'Failed to create export file';

  @override
  String get exportDirNotAccessible => 'Export directory is not accessible';

  @override
  String get invalidInput => 'Masukan tidak valid';

  @override
  String importedX(String arg1) {
    return '$arg1 diimpor';
  }

  @override
  String get updatiumImport => 'Impor Updatium';

  @override
  String get importFromURLList => 'Impor dari daftar URL';

  @override
  String get searchQuery => 'Cari Kueri';

  @override
  String get appURLList => 'Daftar URL aplikasi';

  @override
  String get line => 'Baris';

  @override
  String searchX(String arg1) {
    return 'Cari $arg1';
  }

  @override
  String get noResults => 'Tidak ada hasil yang ditemukan';

  @override
  String importX(String arg1) {
    return 'Impor $arg1';
  }

  @override
  String get importedAppsIdDisclaimer =>
      'Aplikasi yang diimpor mungkin secara salah ditampilkan sebagai \"Tidak terpasang\".\nUntuk memperbaikinya, lakukan pemasangan ulang melalui Updatium.\nHal ini seharusnya tidak mempengaruhi data aplikasi.\n\nHanya mempengaruhi metode impor URL dan pihak ketiga.';

  @override
  String get importErrors => 'Kesalahan impor';

  @override
  String importedXOfYApps(String arg1, String arg2) {
    return '$arg1 dari $arg2 aplikasi diimpor.';
  }

  @override
  String get followingURLsHadErrors => 'URL berikut mengalami kesalahan:';

  @override
  String get selectURL => 'Pilih URL';

  @override
  String get selectURLs => 'Pilih URL';

  @override
  String get pick => 'Pilih';

  @override
  String get theme => 'Tema';

  @override
  String get dark => 'Gelap';

  @override
  String get light => 'Terang';

  @override
  String get followSystem => 'Mengikuti sistem';

  @override
  String get followSystemThemeExplanation =>
      'Tema mengikuti sistem hanya mungkin dengan menggunakan aplikasi pihak ketiga';

  @override
  String get useBlackTheme => 'Gunakan tema hitam pekat';

  @override
  String get appSortBy => 'Penyortiran aplikasi berdasarkan';

  @override
  String get authorName => 'Pencipta/nama';

  @override
  String get nameAuthor => 'Nama/pencipta';

  @override
  String get asAdded => 'Tanggal ditambahkan';

  @override
  String get appSortOrder => 'Urutan penyortiran aplikasi';

  @override
  String get ascending => 'Menaik';

  @override
  String get descending => 'Menurun';

  @override
  String get bgUpdateCheckInterval =>
      'Interval pemeriksaan pembaruan di latar belakang';

  @override
  String get neverManualOnly => 'Tidak pernah - manual saja';

  @override
  String get appearance => 'Tampilan';

  @override
  String get pinUpdates => 'Sematkan pembaruan ke atas tampilan aplikasi';

  @override
  String get updates => 'Pembaruan';

  @override
  String get sourceSpecific => 'Sumber spesifik';

  @override
  String get appSource => 'Sumber aplikasi';

  @override
  String get appSourceHint => 'Open app source repository';

  @override
  String get noLogs => 'Tidak ada catatan';

  @override
  String get appLogs => 'Catatan aplikasi';

  @override
  String get appLogsHint => 'View application logs';

  @override
  String get close => 'Tutup';

  @override
  String get share => 'Bagikan';

  @override
  String get appNotFound => 'Aplikasi tidak ditemukan';

  @override
  String get networkError => 'Network connection failed';

  @override
  String get invalidUrlFormat => 'Invalid URL format';

  @override
  String get accessDenied => 'Access denied';

  @override
  String get importFailed => 'Import failed';

  @override
  String get updatiumExportHyphenatedLowercase => 'ekspor-updatium';

  @override
  String get pickAnAPK => 'Pilih APK';

  @override
  String appHasMoreThanOnePackage(String arg1) {
    return '$arg1 memiliki lebih dari satu paket:';
  }

  @override
  String deviceSupportsXArch(String arg1) {
    return 'Perangkat Anda mendukung arsitektur CPU $arg1.';
  }

  @override
  String get deviceSupportsFollowingArchs =>
      'Perangkat anda mendukung arsitektur CPU berikut:';

  @override
  String get warning => 'Peringatan';

  @override
  String sourceIsXButPackageFromYPrompt(String arg1, String arg2) {
    return 'Sumber aplikasinya adalah \'$arg1\' tetapi paket rilisnya berasal dari \'$arg2\'. Lanjutkan?';
  }

  @override
  String get updatesAvailable => 'Pembaruan tersedia';

  @override
  String get updatesAvailableNotifDescription =>
      'Memberi tahu pengguna bahwa pembaruan tersedia untuk aplikasi yang dilacak oleh Updatium';

  @override
  String get noNewUpdates => 'Tidak ada pembaruan baru.';

  @override
  String xHasAnUpdate(String arg1) {
    return '$arg1 memiliki pembaruan.';
  }

  @override
  String get appsUpdated => 'Aplikasi diperbarui';

  @override
  String get appsNotUpdated => 'Gagal memperbarui aplikasi';

  @override
  String get appsUpdatedNotifDescription =>
      'Memberi tahu pengguna bahwa pembaruan terhadap aplikasi diterapkan di latar belakang';

  @override
  String xWasUpdatedToY(String arg1, String arg2) {
    return '$arg1 telah diperbarui ke $arg2.';
  }

  @override
  String xWasNotUpdatedToY(String arg1, String arg2) {
    return 'Gagal memperbarui $arg1 ke $arg2.';
  }

  @override
  String get errorCheckingUpdates => 'Kesalahan dalam memeriksa pembaruan';

  @override
  String get errorCheckingUpdatesNotifDescription =>
      'Notifikasi yang ditampilkan saat pemeriksaan pembaruan latar belakang gagal';

  @override
  String get appsRemoved => 'Aplikasi dihapus';

  @override
  String get appsRemovedNotifDescription =>
      'Memberi tahu pengguna bahwa aplikasi dihapus karena kesalahan saat memuatnya';

  @override
  String xWasRemovedDueToErrorY(String arg1, String arg2) {
    return '$arg1 dihapus karena kesalahan berikut: $arg2';
  }

  @override
  String get completeAppInstallation => 'Selesaikan pemasangan aplikasi';

  @override
  String get updatiumMustBeOpenToInstallApps =>
      'Updatium harus terbuka untuk memasang aplikasi';

  @override
  String get completeAppInstallationNotifDescription =>
      'Meminta pengguna kembali ke Updatium untuk menyelesaikan pemasangan aplikasi';

  @override
  String get checkingForUpdates => 'Memeriksa pembaruan';

  @override
  String get checkingForUpdatesNotifDescription =>
      'Notifikasi sementara yang ditampilkan saat memeriksa pembaruan';

  @override
  String get pleaseAllowInstallPerm =>
      'Harap izinkan Updatium untuk memasang aplikasi';

  @override
  String get trackOnly => 'Pelacakan Saja';

  @override
  String errorWithHttpStatusCode(String arg1) {
    return 'Kesalahan $arg1';
  }

  @override
  String get versionCorrectionDisabled =>
      'Koreksi versi dinonaktifkan (sepertinya plugin tidak berfungsi)';

  @override
  String get unknown => 'Tidak diketahui';

  @override
  String get none => 'Tidak ada';

  @override
  String get all => 'Semua';

  @override
  String get never => 'Tidak pernah';

  @override
  String latestVersionX(String arg1) {
    return 'Terbaru: $arg1';
  }

  @override
  String installedVersionX(String arg1) {
    return 'Terpasang: $arg1';
  }

  @override
  String lastUpdateCheckX(String arg1) {
    return 'Terakhir memeriksa pembaruan: $arg1';
  }

  @override
  String get remove => 'Hapus';

  @override
  String get yesMarkUpdated => 'Ya, tandai bahwa sudah diperbarui';

  @override
  String get fdroid => 'F-Droid Resmi';

  @override
  String get appIdOrName => 'ID atau nama aplikasi';

  @override
  String get appId => 'ID aplikasi';

  @override
  String get appWithIdOrNameNotFound =>
      'Tidak ada aplikasi yang ditemukan dengan ID atau nama tersebut';

  @override
  String get reposHaveMultipleApps =>
      'Repositori dapat berisi beberapa aplikasi';

  @override
  String get fdroidThirdPartyRepo => 'Repositori pihak ketiga F-Droid';

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
  String get install => 'Pasang';

  @override
  String get markInstalled => 'Tandai terpasang';

  @override
  String get update => 'perbarui';

  @override
  String get updated => 'Telah diperbarui';

  @override
  String get markUpdated => 'Tandai diperbarui';

  @override
  String get additionalOptions => 'Opsi tambahan';

  @override
  String get disableVersionDetection => 'Nonaktifkan pendeteksi versi';

  @override
  String get noVersionDetectionExplanation =>
      'Opsi ini hanya boleh digunakan untuk aplikasi dengan pendeteksi versi yang tidak berfungsi dengan benar.';

  @override
  String downloadingX(String arg1) {
    return 'Mengunduh $arg1';
  }

  @override
  String downloadX(String arg1) {
    return 'Unduh $arg1';
  }

  @override
  String downloadedX(String arg1) {
    return '$arg1 diunduh';
  }

  @override
  String get releaseAsset => 'Aset rilis';

  @override
  String get downloadNotifDescription =>
      'Memberi tahu pengguna perkembangan dalam mengunduh aplikasi';

  @override
  String get noAPKFound => 'Tidak ada APK ditemukan';

  @override
  String get noVersionDetection => 'Tidak ada pendeteksi versi';

  @override
  String get categorize => 'Kategorikan';

  @override
  String get categories => 'Kategori';

  @override
  String get category => 'Kategori';

  @override
  String get noCategory => 'Tidak ada kategori';

  @override
  String get noCategories => 'Tidak ada kategori';

  @override
  String get deleteCategoriesQuestion => 'Hapus kategori?';

  @override
  String get categoryDeleteWarning =>
      'Semua aplikasi dalam kategori yang dihapus akan diatur sebagai tidak terkategori.';

  @override
  String get addCategory => 'Tambah kategori';

  @override
  String get label => 'Label';

  @override
  String get language => 'Bahasa';

  @override
  String get copiedToClipboard => 'Disalin ke papan klip';

  @override
  String get storagePermissionDenied => 'Izin penyimpanan ditolak';

  @override
  String get selectedCategorizeWarning =>
      'Ini akan mengganti pengaturan kategori yang ada untuk aplikasi terpilih.';

  @override
  String get filterAPKsByRegEx => 'Filter APK dengan ekspresi reguler';

  @override
  String get removeFromUpdatium => 'Hapus dari Updatium';

  @override
  String get uninstallFromDevice => 'Copot pemasangan dari perangkat';

  @override
  String get onlyWorksWithNonVersionDetectApps =>
      'Hanya bekerja untuk aplikasi dengan pendeteksi versi yang nonaktif.';

  @override
  String get releaseDateAsVersion =>
      'Gunakan tanggal rilis sebagai versi string';

  @override
  String get releaseTitleAsVersion =>
      'Gunakan judul rilis sebagai string versi';

  @override
  String get releaseDateAsVersionExplanation =>
      'Opsi ini hanya boleh digunakan untuk aplikasi dengan pendeteksi versi yang tidak berfungsi dengan benar, tetapi tanggal rilisnya tersedia.';

  @override
  String get changes => 'Perubahan';

  @override
  String get releaseDate => 'Tanggal rilis';

  @override
  String get importFromURLsInFile =>
      'Impor dari URL dalam berkas (seperti OPML)';

  @override
  String get versionDetectionExplanation =>
      'Sesuaikan string versi dengan versi yang terdeteksi dari OS';

  @override
  String get versionDetection => 'Pendeteksi versi';

  @override
  String get standardVersionDetection => 'Pendeteksi versi standar';

  @override
  String get groupByCategory => 'Kelompokkan berdasarkan kategori';

  @override
  String get listView => 'Tampilan daftar';

  @override
  String get gridView => 'Tampilan kisi';

  @override
  String get autoApkFilterByArch =>
      'Coba filter APK berdasarkan arsitektur CPU jika memungkinkan';

  @override
  String get autoLinkFilterByArch =>
      'Mencoba memfilter tautan berdasarkan arsitektur CPU jika memungkinkan';

  @override
  String get overrideSource => 'Ganti sumber';

  @override
  String get dontShowAgain => 'Jangan tampilkan lagi';

  @override
  String get dontShowTrackOnlyWarnings =>
      'Jangan tampilkan peringatan \'Pelacakan Saja\'';

  @override
  String get dontShowAPKOriginWarnings =>
      'Jangan tampilkan peringatan asal APK';

  @override
  String get moveNonInstalledAppsToBottom =>
      'Pindahkan aplikasi tidak terpasang ke bawah tampilan aplikasi';

  @override
  String get hideNonInstalledApps =>
      'Sembunyikan aplikasi yang belum terpasang';

  @override
  String get gitlabPATLabel => 'Token Akses Pribadi GitLab';

  @override
  String get about => 'Tentang';

  @override
  String requiresCredentialsInSettings(String arg1) {
    return '$arg1 memerlukan kredensial tambahan (dalam pengaturan)';
  }

  @override
  String get checkOnStart => 'Periksa pembaruan saat proses memulai';

  @override
  String get safeMode => 'Mode Aman';

  @override
  String get safeModeDescription =>
      'Sembunyikan halaman Tambah Aplikasi dan tampilkan Impor/Ekspor sebagai gantinya';

  @override
  String get safeModeAddAppDisabled =>
      'Tambah Aplikasi dinonaktifkan dalam Mode Aman';

  @override
  String get tryInferAppIdFromCode =>
      'Coba menebak ID aplikasi dari kode sumber';

  @override
  String get removeOnExternalUninstall =>
      'Hapus otomatis aplikasi yang dicopot pemasangannya dari luar';

  @override
  String get pickHighestVersionCode =>
      'Pilih otomatis APK dengan versi kode tertinggi';

  @override
  String get checkUpdateOnDetailPage =>
      'Periksa pembaruan saat membuka halaman detail aplikasi';

  @override
  String get disablePageTransitions => 'Nonaktifkan animasi transisi halaman';

  @override
  String get reversePageTransitions =>
      'Animasi transisi halaman secara terbalik';

  @override
  String get minStarCount => 'Jumlah bintang minimum';

  @override
  String get addInfoBelow => 'Tambahkan info ini di bawah.';

  @override
  String get addInfoInSettings => 'Tambahkan info ini di pengaturan.';

  @override
  String get githubSourceNote =>
      'Pembatasan tarif pada GitHub dapat dihindari dengan menggunakan kunci API.';

  @override
  String get sortByLastLinkSegment =>
      'Urutkan hanya berdasarkan segmen terakhir tautan';

  @override
  String get filterReleaseNotesByRegEx =>
      'Filter catatan perilisan dengan ekspresi reguler';

  @override
  String get customLinkFilterRegex =>
      'Filter tautan APK kustom dengan ekspresi reguler (Standar \'.apk\$\')';

  @override
  String get appsPossiblyUpdated => 'Pembaruan aplikasi dicoba';

  @override
  String get appsPossiblyUpdatedNotifDescription =>
      'Memberi tahu pengguna bahwa pembaruan terhadap aplikasi berpotensi diterapkan di latar belakang';

  @override
  String xWasPossiblyUpdatedToY(String arg1, String arg2) {
    return '$arg1 mungkin telah diperbarui ke $arg2.';
  }

  @override
  String get enableBackgroundUpdates => 'Aktifkan pembaruan latar belakang';

  @override
  String get backgroundUpdateReqsExplanation =>
      'Pembaruan latar belakang mungkin tidak dapat dilakukan untuk semua aplikasi.';

  @override
  String get backgroundUpdateLimitsExplanation =>
      'Keberhasilan pemasangan di latar belakang hanya dapat ditentukan ketika Updatium terbuka.';

  @override
  String get verifyLatestTag => 'Verifikasi label \'terbaru\'';

  @override
  String get intermediateLinkRegex =>
      'Filter tautan \'perantara\' untuk dikunjungi';

  @override
  String get filterByLinkText => 'Filter tautan berdasarkan teks tautan';

  @override
  String get matchLinksOutsideATags => 'Mencocokkan tautan di luar tag <a>';

  @override
  String get intermediateLinkNotFound => 'Tautan perantara tidak ditemukan';

  @override
  String get intermediateLink => 'Tautan perantara';

  @override
  String get exemptFromBackgroundUpdates =>
      'Dikecualikan dari pembaruan latar belakang (jika diaktifkan)';

  @override
  String get bgUpdatesOnWiFiOnly =>
      'Nonaktifkan pembaruan latar belakang saat tidak menggunakan Wi-Fi';

  @override
  String get bgUpdatesWhileChargingOnly =>
      'Menonaktifkan pembaruan latar belakang saat tidak mengisi daya';

  @override
  String get autoSelectHighestVersionCode =>
      'Pilih otomatis APK dengan versi kode tertinggi';

  @override
  String get versionExtractionRegEx =>
      'Reguler ekspresi terkait ekstraksi versi string';

  @override
  String get trimVersionString => 'Potong versi string dengan reguler ekspresi';

  @override
  String matchGroupToUseForX(String arg1) {
    return 'Cocokkan grup yang akan digunakan untuk \"$arg1\"';
  }

  @override
  String get matchGroupToUse =>
      'Cocokkan grup yang akan digunakan untuk reguler ekspresi terkait ekstraksi versi string';

  @override
  String get highlightTouchTargets => 'Sorot target sentuh yang kurang jelas';

  @override
  String get pickExportDir => 'Pilih direktori ekspor';

  @override
  String get autoExportOnChanges => 'Otomatis ekspor terhadap perubahan';

  @override
  String get includeSettings => 'Sertakan pengaturan';

  @override
  String get filterVersionsByRegEx => 'Filter versi dengan ekspresi reguler';

  @override
  String get trySelectingSuggestedVersionCode =>
      'Coba pilih APK dengan version kode yang disarankan';

  @override
  String get dontSortReleasesList => 'Pertahankan urutan rilis dari API';

  @override
  String get reverseSort => 'Penyortiran terbalik';

  @override
  String get takeFirstLink => 'Ambil tautan pertama';

  @override
  String get skipSort => 'Lewati penyortiran';

  @override
  String get debugMenu => 'Menu debug';

  @override
  String get bgTaskStarted => 'Tugas latar belakang dimulai - periksa catatan.';

  @override
  String get runBgCheckNow =>
      'Jalankan pemeriksaan pembaruan latar belakang sekarang';

  @override
  String get versionExtractWholePage =>
      'Terapkan reguler ekspresi terkait ekstraksi versi string ke seluruh halaman';

  @override
  String get installing => 'Memasang';

  @override
  String get skipUpdateNotifications => 'Lewati notifikasi pembaruan';

  @override
  String get updatesAvailableNotifChannel => 'Pembaruan tersedia';

  @override
  String get appsUpdatedNotifChannel => 'Aplikasi diperbarui';

  @override
  String get appsPossiblyUpdatedNotifChannel => 'Pembaruan aplikasi dicoba';

  @override
  String get errorCheckingUpdatesNotifChannel =>
      'Kesalahan dalam memeriksa pembaruan';

  @override
  String get appsRemovedNotifChannel => 'Aplikasi dihapus';

  @override
  String downloadingXNotifChannel(String arg1) {
    return 'Mengunduh $arg1';
  }

  @override
  String get completeAppInstallationNotifChannel =>
      'Selesaikan pemasangan aplikasi';

  @override
  String get checkingForUpdatesNotifChannel => 'Memeriksa pembaruan';

  @override
  String get onlyCheckInstalledOrTrackOnlyApps =>
      'Hanya periksa aplikasi yang dipasang dan ditandai \'Pelacakan Saja\' untuk pembaruan';

  @override
  String get supportFixedAPKURL => 'Mendukung URL APK tetap';

  @override
  String selectX(String arg1) {
    return 'Pilih $arg1';
  }

  @override
  String get parallelDownloads => 'Izinkan mengunduh paralel';

  @override
  String get useShizuku => 'Gunakan Shizuku atau Sui untuk memasang';

  @override
  String get shizukuBinderNotFound => 'Layanan Shizuku tidak berjalan';

  @override
  String get shizukuOld => 'Versi Shizuku lama (<11) - harap perbarui';

  @override
  String get shizukuOldAndroidWithADB =>
      'Shizuku berjalan di Android < 8.1 dengan ADB - perbarui Android atau gunakan Sui sebagai gantinya';

  @override
  String get shizukuPretendToBeGooglePlay =>
      'Atur Google Play sebagai sumber pemasangan (jika Shizuku digunakan)';

  @override
  String get useSystemFont => 'Gunakan font sistem';

  @override
  String get useVersionCodeAsOSVersion =>
      'Gunakan versi kode aplikasi sebagai versi yang terdeteksi OS';

  @override
  String get requestHeader => 'Header permintaan';

  @override
  String get useLatestAssetDateAsReleaseDate =>
      'Gunakan unggahan aset terbaru sebagai tanggal rilis';

  @override
  String get defaultPseudoVersioningMethod => 'Metode versi semu standar';

  @override
  String get partialAPKHash => 'Hash APK parsial';

  @override
  String get directAPKLink => 'Tautan APK langsung';

  @override
  String get pseudoVersionInUse => 'Versi semu sedang digunakan';

  @override
  String get installed => 'Terpasang';

  @override
  String get latest => 'Terbaru';

  @override
  String get invertRegEx => 'Balikkan ekspresi reguler';

  @override
  String get note => 'Catatan';

  @override
  String selfHostedNote(String arg1) {
    return 'Dropdown \"$arg1\" bisa digunakan untuk menjangkau instansi yang dihosting sendiri/kustom dari sumber mana pun.';
  }

  @override
  String get badDownload =>
      'APK tidak dapat diurai (tidak kompatibel atau diunduh sebagian)';

  @override
  String get beforeNewInstallsShareToAppVerifier =>
      'Bagikan aplikasi baru dengan AppVerifier (jika tersedia)';

  @override
  String get appVerifierInstructionToast =>
      'Bagikan ke AppVerifier, lalu kembali ke sini jika sudah siap.';

  @override
  String get wiki => 'Bantuan/Wiki';

  @override
  String get wikiHint => 'Open Updatium wiki documentation';

  @override
  String get allowInsecure => 'Izinkan permintaan HTTP yang tidak aman';

  @override
  String get stayOneVersionBehind =>
      'Tetap satu versi di belakang versi terbaru';

  @override
  String get useFirstApkOfVersion =>
      'Pilih otomatis yang pertama dari beberapa APK';

  @override
  String get refreshBeforeDownload =>
      'Segarkan detail aplikasi sebelum mengunduh';

  @override
  String get tencentAppStore => 'Tencent App Store';

  @override
  String get coolApk => 'CoolApk';

  @override
  String get vivoAppStore => 'vivo App Store (CN)';

  @override
  String get name => 'Nama';

  @override
  String get smartname => 'Nama (Cerdas)';

  @override
  String get sortMethod => 'Metode Penyortiran';

  @override
  String get welcome => 'Selamat datang.';

  @override
  String get documentationLinksNote =>
      'Halaman GitHub Updatium yang ditautkan di bawah ini berisi tautan ke video, artikel, diskusi, dan sumber daya lain yang akan membantu Anda memahami cara menggunakan aplikasi.';

  @override
  String get batteryOptimizationNote =>
      'Perhatikan bahwa unduhan latar belakang dapat bekerja lebih andal jika Anda menonaktifkan optimasi baterai OS untuk Updatium.';

  @override
  String fileDeletionError(String arg1) {
    return 'Gagal menghapus file (coba hapus secara manual, lalu coba lagi): \"$arg1\"';
  }

  @override
  String get foregroundService => 'Layanan latar depan Updatium';

  @override
  String get foregroundServiceExplanation =>
      'Gunakan layanan latar depan untuk pemeriksaan pembaruan (lebih dapat diandalkan, menghabiskan lebih banyak daya)';

  @override
  String get fgServiceNotice =>
      'Pemberitahuan ini diperlukan untuk pemeriksaan pembaruan latar belakang (dapat disembunyikan dalam pengaturan OS)';

  @override
  String get excludeSecrets => 'Mengecualikan rahasia';

  @override
  String get includeZips => 'Menyertakan file ZIP';

  @override
  String get zippedApkFilterRegEx => 'Saring APK di dalam ZIP';

  @override
  String get googleVerificationWarningP1 =>
      'Google has announced that, starting in 2026 / 2027, all apps on \"certified\" Android devices will needs the developer to submit personal identity details directly to Google.\n\nSetelah itu, Updatium mungkin berhenti bekerja pada perangkat Android bersertifikat.';

  @override
  String get googleVerificationWarningP2 =>
      'Pergi ke https: / / keep androidpen.org / untuk informasi lebih lanjut.';

  @override
  String get googleVerificationWarningP3 =>
      'Perlu dicatat bahwa dalam jangka pendek, mungkin terus mungkin untuk memasang aplikasi \"belum diverifikasi\" (bukan -compliant) melalui proses \"arus maju\" yang Google janjikan untuk mengimplementasikan setelah reaksi luas terhadap pengumuman mereka, tetapi mereka tidak rinci bagaimana hal ini akan bekerja sehingga tidak jelas apakah itu benar-benar akan menjaga kebebasan pengguna dengan cara praktis.\n\nDalam hal apapun, Google bergerak adalah langkah yang signifikan menuju akhir bebas, tujuan umum komputasi untuk individu.\n\nOS tidak bersertifikat, seperti GrapheneOS, seharusnya tidak terpengaruh oleh hal ini selama mereka diizinkan untuk terus ada.';

  @override
  String get multipleSigners => 'Tanda Tangan Ganda';

  @override
  String get securityDisclaimerTitle => 'Penafian Keamanan dan Hukum';

  @override
  String get license => 'Lisensi';

  @override
  String get licenseText =>
      'Aplikasi ini didistribusikan di bawah Lisensi GPL v3.';

  @override
  String get disclaimer => 'Penafian';

  @override
  String get disclaimerText =>
      'Aplikasi ini tidak mendistribusikan, menghosting, atau memverifikasi aplikasi eksternal mana pun. Pengguna menanggung tanggung jawab penuh atas keamanan dan legalitas perangkat lunak apa pun yang diinstal melalui alat ini.\n\nhttps://github.com/omeritzics/Updatium adalah satu-satunya tempat resmi untuk mengunduh Updatium - sangat tidak disarankan mengunduhnya dari tempat lain karena mengunduh dari sumber tidak resmi tidak aman.';

  @override
  String get privacy => 'Privasi';

  @override
  String get privacyText =>
      'Aplikasi ini berfokus pada privasi dan tidak mengumpulkan data pribadi.';

  @override
  String get acceptAndContinue => 'Terima dan Lanjutkan';

  @override
  String get decline => 'Tolak';

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
  String get aPKLinkHash => 'Hash tautan APK';

  @override
  String get gHReqPrefix =>
      'Instance \'sky22333/hubproxy\' untuk permintaan GitHub';

  @override
  String get continueAction => 'Lanjut';

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
    return '$count hours';
  }

  @override
  String day(int count) {
    return '$count days';
  }
}
