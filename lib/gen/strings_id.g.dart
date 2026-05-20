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
class TranslationsId with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsId({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.id,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <id>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsId _root = this; // ignore: unused_field

	@override 
	TranslationsId $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsId(meta: meta ?? this.$meta);

	// Translations
	@override String get invalidURLForSource => 'Bukan URL aplikasi {} yang valid';
	@override String get noReleaseFound => 'Tidak dapat menemukan rilis yang sesuai';
	@override String get noVersionFound => 'Tidak dapat memastikan versi rilis yang sesuai';
	@override String get urlMatchesNoSource => 'URL tidak sesuai dengan sumber yang diketahui';
	@override String get cantInstallOlderVersion => 'Tidak dapat memasang versi aplikasi yang lebih lama';
	@override String get appIdMismatch => 'ID paket yang diunduh tidak sama dengan ID aplikasi yang ada';
	@override String get functionNotImplemented => 'Kelas ini belum mengimplementasikan fungsi ini';
	@override String get placeholder => 'Tempat penampung';
	@override String get someErrors => 'Terjadi beberapa kesalahan';
	@override String get unexpectedError => 'Kesalahan tidak terduga';
	@override String get ok => 'Oke';
	@override String get and => 'dan';
	@override String get githubPATLabel => 'Token Akses Pribadi GitHub';
	@override String get includePrereleases => 'Sertakan pra-rilis';
	@override String get fallbackToOlderReleases => 'Alternatif kembali ke rilis lama';
	@override String get filterReleaseTitlesByRegEx => 'Filter judul rilis dengan ekspresi reguler';
	@override String get invalidRegEx => 'Ekspresi reguler tidak valid';
	@override String get noDescription => 'Tidak ada deskripsi';
	@override String get cancel => 'Batal';
	@override String get kContinue => 'Lanjut';
	@override String get requiredInBrackets => '(Diperlukan)';
	@override String get dropdownNoOptsError => 'KESALAHAN: DROPDOWN HARUS MEMILIKI SETIDAKNYA SATU OPSI';
	@override String get color => 'Warna';
	@override String get standard => 'Standar';
	@override String get custom => 'Kustom';
	@override String get primary => 'Primary';
	@override String get useMaterialYou => 'Gunakan warna Material You';
	@override String get githubStarredRepos => 'Repositori berbintang GitHub';
	@override String get gettingAppInfo => 'Getting app info';
	@override String get username => 'Nama pengguna';
	@override String get wrongArgNum => 'Salah memberikan jumlah argumen';
	@override String get xIsTrackOnly => '{} adalah Pelacakan Saja';
	@override String get source => 'Sumber';
	@override String get app => 'Aplikasi';
	@override String get appsFromSourceAreTrackOnly => 'Aplikasi dari sumber ini hanya untuk \'Pelacakan Saja\'.';
	@override String get youPickedTrackOnly => 'Anda telah memilih opsi Pelacakan Saja.';
	@override String get trackOnlyAppDescription => 'Aplikasi akan dilacak untuk pembaruan, tetapi Updatium tidak akan dapat mengunduh atau memasangnya.';
	@override String get cancelled => 'Dibatalkan';
	@override String get appAlreadyAdded => 'Aplikasi sudah ditambahkan';
	@override String get alreadyUpToDateQuestion => 'Aplikasi sudah yang terbaru?';
	@override String get addApp => 'Tambah aplikasi';
	@override String get appSourceURL => 'Tambah sumber URL';
	@override String get error => 'Kesalahan';
	@override String get add => 'Tambah';
	@override String get advanced => 'Advanced';
	@override String get searchSomeSourcesLabel => 'Cari (beberapa sumber saja)';
	@override String get search => 'Cari';
	@override String get searching => 'Searching';
	@override String get additionalOptsFor => 'Opsi tambahan untuk {}';
	@override String get supportedSources => 'Sumber yang didukung';
	@override String get trackOnlyInBrackets => '(Pelacakan Saja)';
	@override String get searchableInBrackets => '(Dapat dicari)';
	@override String get appsString => 'Aplikasi';
	@override String get categoryX => 'Category: {}';
	@override String get collapse => 'Collapse';
	@override String get downloadProgress => 'Download progress';
	@override String get expand => 'Expand';
	@override String get noApps => 'Selamat datang!';
	@override String get noAppsSubtext => 'Anda dapat menambahkan aplikasi pertama dengan mengetuk \'Tambah aplikasi\' di bawah.';
	@override String get noAppsForFilter => 'Tidak ada aplikasi untuk difilter';
	@override String get byX => 'Oleh {}';
	@override String get percentProgress => 'Perkembangan: {}%';
	@override String get pleaseWait => 'Harap tunggu';
	@override String get updateAvailable => 'Pembaruan tersedia';
	@override String get notInstalled => 'Tidak terpasang';
	@override String get openAppDetails => 'Open app details';
	@override String get pinned => 'Pinned';
	@override String get pinnedApp => 'Pinned: {}, {}';
	@override String get upToDate => 'Up to date';
	@override String get pseudoVersion => 'versi semu';
	@override String get selectAll => 'Pilih semua';
	@override String get deselectX => 'Batal pilih {}';
	@override String get xWillBeRemovedButRemainInstalled => '{} akan dihapus dari Updatium tetapi tetap terpasang di perangkat.';
	@override String get removeSelectedAppsQuestion => 'Hapus aplikasi terpilih?';
	@override String get removeSelectedApps => 'Hapus aplikasi terpilih';
	@override String appRemoved({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Removed one app',
		other: 'Removed {count} apps',
	);
	@override String get updateX => 'Perbarui {}';
	@override String get installX => 'Pasang {}';
	@override String get markXTrackOnlyAsUpdated => 'Tandai {}\n(Pelacakan Saja)\nsudah diperbarui';
	@override String get changeX => 'Ubah {}';
	@override String get installUpdateApps => 'Pasang/perbarui aplikasi';
	@override String get installUpdateSelectedApps => 'Pasang/perbarui aplikasi terpilih';
	@override String get markXSelectedAppsAsUpdated => 'Tandai {} aplikasi terpilih sudah diperbarui?';
	@override String get no => 'Tidak';
	@override String get yes => 'Ya';
	@override String get markSelectedAppsUpdated => 'Tandai aplikasi terpilih sudah diperbarui';
	@override String get pinToTop => 'Sematkan ke atas';
	@override String get unpinFromTop => 'Lepaskan semat dari atas';
	@override String get resetInstallStatusForSelectedAppsQuestion => 'Atur ulang status pemasangan untuk aplikasi terpilih?';
	@override String get installStatusOfXWillBeResetExplanation => 'Status pemasangan dari aplikasi terpilih akan diatur ulang.\n\nHal ini bisa membantu saat versi aplikasi yang ditampilkan di Updatium salah akibat pembaruan yang gagal atau masalah lainnya.';
	@override String get customLinkMessage => 'Tautan ini berfungsi pada perangkat yang terpasang Updatium';
	@override String get shareAppConfigLinks => 'Bagikan konfigurasi aplikasi sebagai tautan HTML';
	@override String get resetInstallStatus => 'Atur ulang status pemasangan';
	@override String get more => 'Lebih banyak';
	@override String get removeOutdatedFilter => 'Hapus filter aplikasi yang usang';
	@override String get removeFilter => 'Remove filter';
	@override String get save => 'Save';
	@override String get showOutdatedOnly => 'Tampilkan aplikasi yang usang saja';
	@override String get filter => 'Filter';
	@override String get filterApps => 'Filter aplikasi';
	@override String get filterDays => 'Filter days';
	@override String get appName => 'Nama aplikasi';
	@override String get author => 'Pencipta';
	@override String get upToDateApps => 'Aplikasi terbaru';
	@override String get nonInstalledApps => 'Aplikasi tidak terpasang';
	@override String get importExport => 'Impor/ekspor';
	@override String get settings => 'Pengaturan';
	@override String get exportedTo => 'Diekspor ke {}';
	@override String get updatiumExport => 'Ekspor Updatium';
	@override String get failedToExport => 'Failed to export';
	@override String get exportAlreadyInProgress => 'Export already in progress';
	@override String get exportDirNotAccessible => 'Export directory is not accessible';
	@override String get exportDirUriEmpty => 'Export directory URI is empty';
	@override String get failedToCreateExportFile => 'Failed to create export file';
	@override String get invalidInput => 'Masukan tidak valid';
	@override String get importedX => '{} diimpor';
	@override String get updatiumImport => 'Impor Updatium';
	@override String get importFromURLList => 'Impor dari daftar URL';
	@override String get searchQuery => 'Cari Kueri';
	@override String get appURLList => 'Daftar URL aplikasi';
	@override String get line => 'Baris';
	@override String get searchX => 'Cari {}';
	@override String get noResults => 'Tidak ada hasil yang ditemukan';
	@override String get importX => 'Impor {}';
	@override String get importedAppsIdDisclaimer => 'Aplikasi yang diimpor mungkin secara salah ditampilkan sebagai "Tidak terpasang".\nUntuk memperbaikinya, lakukan pemasangan ulang melalui Updatium.\nHal ini seharusnya tidak mempengaruhi data aplikasi.\n\nHanya mempengaruhi metode impor URL dan pihak ketiga.';
	@override String get importErrors => 'Kesalahan impor';
	@override String get importedXOfYApps => '{} dari {} aplikasi diimpor.';
	@override String get followingURLsHadErrors => 'URL berikut mengalami kesalahan:';
	@override String get selectURL => 'Pilih URL';
	@override String get selectURLs => 'Pilih URL';
	@override String get pick => 'Pilih';
	@override String get theme => 'Tema';
	@override String get dark => 'Gelap';
	@override String get light => 'Terang';
	@override String get followSystem => 'Mengikuti sistem';
	@override String get followSystemThemeExplanation => 'Tema mengikuti sistem hanya mungkin dengan menggunakan aplikasi pihak ketiga';
	@override String get useBlackTheme => 'Gunakan tema hitam pekat';
	@override String get appSortBy => 'Penyortiran aplikasi berdasarkan';
	@override String get authorName => 'Pencipta/nama';
	@override String get nameAuthor => 'Nama/pencipta';
	@override String get asAdded => 'Tanggal ditambahkan';
	@override String get appSortOrder => 'Urutan penyortiran aplikasi';
	@override String get ascending => 'Menaik';
	@override String get descending => 'Menurun';
	@override String get bgUpdateCheckInterval => 'Interval pemeriksaan pembaruan di latar belakang';
	@override String get neverManualOnly => 'Tidak pernah - manual saja';
	@override String get appearance => 'Tampilan';
	@override String get pinUpdates => 'Sematkan pembaruan ke atas tampilan aplikasi';
	@override String get updates => 'Pembaruan';
	@override String get dnsServiceProvider => 'DNS Service';
	@override String get dnsServiceProviderDescription => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.';
	@override String get System Default => 'System Default';
	@override String get Cloudflare DNS => 'Cloudflare DNS';
	@override String get Quad9 DNS => 'Quad9 DNS';
	@override String get OpenDNS => 'OpenDNS';
	@override String get Mullvad DNS => 'Mullvad DNS';
	@override String get sourceSpecific => 'Sumber spesifik';
	@override String get appSource => 'Sumber aplikasi';
	@override String get appSourceHint => 'Open app source repository';
	@override String get noLogs => 'Tidak ada catatan';
	@override String get appLogs => 'Catatan aplikasi';
	@override String get appLogsHint => 'View application logs';
	@override String get close => 'Tutup';
	@override String get share => 'Bagikan';
	@override String get appNotFound => 'Aplikasi tidak ditemukan';
	@override String get networkError => 'Network connection failed';
	@override String get invalidUrlFormat => 'Invalid URL format';
	@override String get accessDenied => 'Access denied';
	@override String get importFailed => 'Import failed';
	@override String get updatiumExportHyphenatedLowercase => 'ekspor-updatium';
	@override String get pickAnAPK => 'Pilih APK';
	@override String get appHasMoreThanOnePackage => '{} memiliki lebih dari satu paket:';
	@override String get deviceSupportsXArch => 'Perangkat Anda mendukung arsitektur CPU {}.';
	@override String get deviceSupportsFollowingArchs => 'Perangkat anda mendukung arsitektur CPU berikut:';
	@override String get warning => 'Peringatan';
	@override String get sourceIsXButPackageFromYPrompt => 'Sumber aplikasinya adalah \'{}\' tetapi paket rilisnya berasal dari \'{}\'. Lanjutkan?';
	@override String get updatesAvailable => 'Pembaruan tersedia';
	@override String get updatesAvailableNotifDescription => 'Memberi tahu pengguna bahwa pembaruan tersedia untuk aplikasi yang dilacak oleh Updatium';
	@override String get noNewUpdates => 'Tidak ada pembaruan baru.';
	@override String get xHasAnUpdate => '{} memiliki pembaruan.';
	@override String get appsUpdated => 'Aplikasi diperbarui';
	@override String get appsNotUpdated => 'Gagal memperbarui aplikasi';
	@override String get appsUpdatedNotifDescription => 'Memberi tahu pengguna bahwa pembaruan terhadap aplikasi diterapkan di latar belakang';
	@override String get xWasUpdatedToY => '{} telah diperbarui ke {}.';
	@override String get xWasNotUpdatedToY => 'Gagal memperbarui {} ke {}.';
	@override String get errorCheckingUpdates => 'Kesalahan dalam memeriksa pembaruan';
	@override String get errorCheckingUpdatesNotifDescription => 'Notifikasi yang ditampilkan saat pemeriksaan pembaruan latar belakang gagal';
	@override String get appsRemoved => 'Aplikasi dihapus';
	@override String get undo => 'Undo';
	@override String get appsRemovedNotifDescription => 'Memberi tahu pengguna bahwa aplikasi dihapus karena kesalahan saat memuatnya';
	@override String get xWasRemovedDueToErrorY => '{} dihapus karena kesalahan berikut: {}';
	@override String get completeAppInstallation => 'Selesaikan pemasangan aplikasi';
	@override String get updatiumMustBeOpenToInstallApps => 'Updatium harus terbuka untuk memasang aplikasi';
	@override String get completeAppInstallationNotifDescription => 'Meminta pengguna kembali ke Updatium untuk menyelesaikan pemasangan aplikasi';
	@override String get checkingForUpdates => 'Memeriksa pembaruan';
	@override String get checkForUpdates => 'Check for updates';
	@override String get checkingForUpdatesNotifDescription => 'Notifikasi sementara yang ditampilkan saat memeriksa pembaruan';
	@override String get pleaseAllowInstallPerm => 'Harap izinkan Updatium untuk memasang aplikasi';
	@override String get trackOnly => 'Pelacakan Saja';
	@override String get trusted => 'Trusted';
	@override String get openSource => 'Open-source';
	@override String get errorWithHttpStatusCode => 'Kesalahan {}';
	@override String get versionCorrectionDisabled => 'Koreksi versi dinonaktifkan (sepertinya plugin tidak berfungsi)';
	@override String get unknown => 'Tidak diketahui';
	@override String get none => 'Tidak ada';
	@override String get all => 'Semua';
	@override String get never => 'Tidak pernah';
	@override String get latestVersion => 'Terbaru';
	@override String get installedVersionX => 'Terpasang: {}';
	@override String get lastUpdateCheckX => 'Terakhir memeriksa pembaruan: {}';
	@override String get remove => 'Hapus';
	@override String get quickLinks => 'Tautan Cepat';
	@override String get yesMarkUpdated => 'Ya, tandai bahwa sudah diperbarui';
	@override String get fdroid => 'F-Droid Resmi';
	@override String get appIdOrName => 'ID atau nama aplikasi';
	@override String get appId => 'ID aplikasi';
	@override String get appWithIdOrNameNotFound => 'Tidak ada aplikasi yang ditemukan dengan ID atau nama tersebut';
	@override String get reposHaveMultipleApps => 'Repositori dapat berisi beberapa aplikasi';
	@override String get fdroidThirdPartyRepo => 'Repositori pihak ketiga F-Droid';
	@override String get codeberg => 'Forgejo (Codeberg)';
	@override String get openapk => 'OpenAPK';
	@override String get huaweiappgallery => 'Huawei App Gallery';
	@override String get rustore => 'RuStore';
	@override String get telegramapp => 'Telegram App';
	@override String get html => 'HTML';
	@override String get install => 'Pasang';
	@override String get markInstalled => 'Tandai terpasang';
	@override String get update => 'perbarui';
	@override String get updated => 'Telah diperbarui';
	@override String get markUpdated => 'Tandai diperbarui';
	@override String get download => 'Download';
	@override String get additionalOptions => 'Opsi tambahan';
	@override String get disableVersionDetection => 'Nonaktifkan pendeteksi versi';
	@override String get noVersionDetectionExplanation => 'Opsi ini hanya boleh digunakan untuk aplikasi dengan pendeteksi versi yang tidak berfungsi dengan benar.';
	@override String get downloadingX => 'Mengunduh {}';
	@override String get downloadX => 'Unduh {}';
	@override String get downloadedX => '{} diunduh';
	@override String get editCategory => 'Edit category';
	@override String get releaseAsset => 'Aset rilis';
	@override String get downloadNotifDescription => 'Memberi tahu pengguna perkembangan dalam mengunduh aplikasi';
	@override String get noAPKFound => 'Tidak ada APK ditemukan';
	@override String get noVersionDetection => 'Tidak ada pendeteksi versi';
	@override String get categorize => 'Kategorikan';
	@override String get categories => 'Kategori';
	@override String get category => 'Kategori';
	@override String get noCategory => 'Tidak ada kategori';
	@override String get noCategories => 'Tidak ada kategori';
	@override String get categoryDeleteQuestion => 'Hapus kategori?';
	@override String get categoryDeleteWarning => 'Semua aplikasi dalam kategori yang dihapus akan diatur sebagai tidak terkategori.';
	@override String get addCategory => 'Tambah kategori';
	@override String get label => 'Label';
	@override String get language => 'Bahasa';
	@override String get copiedToClipboard => 'Disalin ke papan klip';
	@override String get storagePermissionDenied => 'Izin penyimpanan ditolak';
	@override String get selectedCategorizeWarning => 'Ini akan mengganti pengaturan kategori yang ada untuk aplikasi terpilih.';
	@override String get filterAPKsByRegEx => 'Filter APK dengan ekspresi reguler';
	@override String get removeFromUpdatium => 'Hapus dari Updatium';
	@override String get uninstallFromDevice => 'Copot pemasangan dari perangkat';
	@override String get onlyWorksWithNonVersionDetectApps => 'Hanya bekerja untuk aplikasi dengan pendeteksi versi yang nonaktif.';
	@override String get releaseDateAsVersion => 'Gunakan tanggal rilis sebagai versi string';
	@override String get releaseTitleAsVersion => 'Gunakan judul rilis sebagai string versi';
	@override String get releaseDateAsVersionExplanation => 'Opsi ini hanya boleh digunakan untuk aplikasi dengan pendeteksi versi yang tidak berfungsi dengan benar, tetapi tanggal rilisnya tersedia.';
	@override String get changes => 'Perubahan';
	@override String get releaseDate => 'Tanggal rilis';
	@override String get importFromURLsInFile => 'Impor dari URL dalam berkas (seperti OPML)';
	@override String get versionDetectionExplanation => 'Sesuaikan string versi dengan versi yang terdeteksi dari OS';
	@override String get versionDetection => 'Pendeteksi versi';
	@override String get standardVersionDetection => 'Pendeteksi versi standar';
	@override String get groupByCategory => 'Kelompokkan berdasarkan kategori';
	@override String get listView => 'Tampilan daftar';
	@override String get gridView => 'Tampilan kisi';
	@override String get autoApkFilterByArch => 'Coba filter APK berdasarkan arsitektur CPU jika memungkinkan';
	@override String get autoLinkFilterByArch => 'Mencoba memfilter tautan berdasarkan arsitektur CPU jika memungkinkan';
	@override String get overrideSource => 'Ganti sumber';
	@override String get dontShowAgain => 'Jangan tampilkan lagi';
	@override String get dontShowTrackOnlyWarnings => 'Jangan tampilkan peringatan \'Pelacakan Saja\'';
	@override String get dontShowAPKOriginWarnings => 'Jangan tampilkan peringatan asal APK';
	@override String get moveNonInstalledAppsToBottom => 'Pindahkan aplikasi tidak terpasang ke bawah tampilan aplikasi';
	@override String get gitlabPATLabel => 'Token Akses Pribadi GitLab';
	@override String get bitbucketAPITokenLabel => 'Bitbucket API token (email:token)';
	@override String get giteaTokenLabel => 'Gitea access token';
	@override String get about => 'Tentang';
	@override String get requiresCredentialsInSettings => '{} memerlukan kredensial tambahan (dalam pengaturan)';
	@override String get checkOnStart => 'Periksa pembaruan saat proses memulai';
	@override String get safeMode => 'Mode Aman';
	@override String get safeModeDescription => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times';
	@override String get safeModeAddAppDisabled => 'Tambah Aplikasi dinonaktifkan dalam Mode Aman';
	@override String get tryInferAppIdFromCode => 'Coba menebak ID aplikasi dari kode sumber';
	@override String get removeOnExternalUninstall => 'Hapus otomatis aplikasi yang dicopot pemasangannya dari luar';
	@override String get pickHighestVersionCode => 'Pilih otomatis APK dengan versi kode tertinggi';
	@override String get checkUpdateOnDetailPage => 'Periksa pembaruan saat membuka halaman detail aplikasi';
	@override String get disablePageTransitions => 'Nonaktifkan animasi transisi halaman';
	@override String get reversePageTransitions => 'Animasi transisi halaman secara terbalik';
	@override String get minStarCount => 'Jumlah bintang minimum';
	@override String get addInfoBelow => 'Tambahkan info ini di bawah.';
	@override String get addInfoInSettings => 'Tambahkan info ini di pengaturan.';
	@override String get githubSourceNote => 'Pembatasan tarif pada GitHub dapat dihindari dengan menggunakan kunci API.';
	@override String get sortByLastLinkSegment => 'Urutkan hanya berdasarkan segmen terakhir tautan';
	@override String get filterReleaseNotesByRegEx => 'Filter catatan perilisan dengan ekspresi reguler';
	@override String get customLinkFilterRegex => 'Filter tautan APK kustom dengan ekspresi reguler (Standar \'.apk$\')';
	@override String get appsPossiblyUpdated => 'Pembaruan aplikasi dicoba';
	@override String get appsPossiblyUpdatedNotifDescription => 'Memberi tahu pengguna bahwa pembaruan terhadap aplikasi berpotensi diterapkan di latar belakang';
	@override String get xWasPossiblyUpdatedToY => '{} mungkin telah diperbarui ke {}.';
	@override String get enableBackgroundUpdates => 'Aktifkan pembaruan latar belakang';
	@override String get backgroundUpdateReqsExplanation => 'Pembaruan latar belakang mungkin tidak dapat dilakukan untuk semua aplikasi.';
	@override String get backgroundUpdateLimitsExplanation => 'Keberhasilan pemasangan di latar belakang hanya dapat ditentukan ketika Updatium terbuka.';
	@override String get verifyLatestTag => 'Verifikasi label \'terbaru\'';
	@override String get intermediateLinkRegex => 'Filter tautan \'perantara\' untuk dikunjungi';
	@override String get filterByLinkText => 'Filter tautan berdasarkan teks tautan';
	@override String get matchLinksOutsideATags => 'Mencocokkan tautan di luar tag <a>';
	@override String get intermediateLinkNotFound => 'Tautan perantara tidak ditemukan';
	@override String get intermediateLink => 'Tautan perantara';
	@override String get exemptFromBackgroundUpdates => 'Dikecualikan dari pembaruan latar belakang (jika diaktifkan)';
	@override String get bgUpdatesOnWiFiOnly => 'Nonaktifkan pembaruan latar belakang saat tidak menggunakan Wi-Fi';
	@override String get bgUpdatesWhileChargingOnly => 'Menonaktifkan pembaruan latar belakang saat tidak mengisi daya';
	@override String get autoSelectHighestVersionCode => 'Pilih otomatis APK dengan versi kode tertinggi';
	@override String get versionExtractionRegEx => 'Reguler ekspresi terkait ekstraksi versi string';
	@override String get trimVersionString => 'Potong versi string dengan reguler ekspresi';
	@override String get matchGroupToUseForX => 'Cocokkan grup yang akan digunakan untuk "{}"';
	@override String get matchGroupToUse => 'Cocokkan grup yang akan digunakan untuk reguler ekspresi terkait ekstraksi versi string';
	@override String get highlightTouchTargets => 'Sorot target sentuh yang kurang jelas';
	@override String get pickExportDir => 'Pilih direktori ekspor';
	@override String get autoExportOnChanges => 'Otomatis ekspor terhadap perubahan';
	@override String get includeSettings => 'Sertakan pengaturan';
	@override String get filterVersionsByRegEx => 'Filter versi dengan ekspresi reguler';
	@override String get trySelectingSuggestedVersionCode => 'Coba pilih APK dengan version kode yang disarankan';
	@override String get dontSortReleasesList => 'Pertahankan urutan rilis dari API';
	@override String get reverseSort => 'Penyortiran terbalik';
	@override String get takeFirstLink => 'Ambil tautan pertama';
	@override String get skipSort => 'Lewati penyortiran';
	@override String get debugMenu => 'Menu debug';
	@override String get bgTaskStarted => 'Tugas latar belakang dimulai - periksa catatan.';
	@override String get runBgCheckNow => 'Jalankan pemeriksaan pembaruan latar belakang sekarang';
	@override String get versionExtractWholePage => 'Terapkan reguler ekspresi terkait ekstraksi versi string ke seluruh halaman';
	@override String get installing => 'Memasang';
	@override String get skipUpdateNotifications => 'Lewati notifikasi pembaruan';
	@override String get updatesAvailableNotifChannel => 'Pembaruan tersedia';
	@override String get appsUpdatedNotifChannel => 'Aplikasi diperbarui';
	@override String get appsPossiblyUpdatedNotifChannel => 'Pembaruan aplikasi dicoba';
	@override String get errorCheckingUpdatesNotifChannel => 'Kesalahan dalam memeriksa pembaruan';
	@override String get appsRemovedNotifChannel => 'Aplikasi dihapus';
	@override String get downloadingXNotifChannel => 'Mengunduh {}';
	@override String get completeAppInstallationNotifChannel => 'Selesaikan pemasangan aplikasi';
	@override String get checkingForUpdatesNotifChannel => 'Memeriksa pembaruan';
	@override String get onlyCheckInstalledOrTrackOnlyApps => 'Hanya periksa aplikasi yang dipasang dan ditandai \'Pelacakan Saja\' untuk pembaruan';
	@override String get supportFixedAPKURL => 'Mendukung URL APK tetap';
	@override String get selectX => 'Pilih {}';
	@override String get parallelDownloads => 'Izinkan mengunduh paralel';
	@override String get useShizuku => 'Gunakan Shizuku atau Sui untuk memasang';
	@override String get shizukuBinderNotFound => 'Layanan Shizuku tidak berjalan';
	@override String get shizukuOld => 'Versi Shizuku lama (<11) - harap perbarui';
	@override String get shizukuOldAndroidWithADB => 'Shizuku berjalan di Android < 8.1 dengan ADB - perbarui Android atau gunakan Sui sebagai gantinya';
	@override String get shizukuPretendToBeGooglePlay => 'Atur Google Play sebagai sumber pemasangan (jika Shizuku digunakan)';
	@override String get useSystemFont => 'Gunakan font sistem';
	@override String get useVersionCodeAsOSVersion => 'Gunakan versi kode aplikasi sebagai versi yang terdeteksi OS';
	@override String get requestHeader => 'Header permintaan';
	@override String get useLatestAssetDateAsReleaseDate => 'Gunakan unggahan aset terbaru sebagai tanggal rilis';
	@override String get defaultPseudoVersioningMethod => 'Metode versi semu standar';
	@override String get partialAPKHash => 'Hash APK parsial';
	@override String get APKLinkHash => 'Hash tautan APK';
	@override String get directAPKLink => 'Tautan APK langsung';
	@override String get pseudoVersionInUse => 'Versi semu sedang digunakan';
	@override String get installedVersion => 'Terpasang';
	@override String get installed => 'Terpasang';
	@override String get notInstalledApps => 'Tidak terpasang';
	@override String get latest => 'Terbaru';
	@override String get invertRegEx => 'Balikkan ekspresi reguler';
	@override String get note => 'Catatan';
	@override String get selfHostedNote => 'Dropdown "{}" bisa digunakan untuk menjangkau instansi yang dihosting sendiri/kustom dari sumber mana pun.';
	@override String get openSourceNote => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.';
	@override String get badDownload => 'APK tidak dapat diurai (tidak kompatibel atau diunduh sebagian)';
	@override String get beforeNewInstallsShareToAppVerifier => 'Bagikan aplikasi baru dengan AppVerifier (jika tersedia)';
	@override String get appVerifierInstructionToast => 'Bagikan ke AppVerifier, lalu kembali ke sini jika sudah siap.';
	@override String get wiki => 'Bantuan/Wiki';
	@override String get wikiHint => 'Open Updatium wiki documentation';
	@override String get allowInsecure => 'Izinkan permintaan HTTP yang tidak aman';
	@override String get stayOneVersionBehind => 'Tetap satu versi di belakang versi terbaru';
	@override String get useFirstApkOfVersion => 'Pilih otomatis yang pertama dari beberapa APK';
	@override String get refreshBeforeDownload => 'Segarkan detail aplikasi sebelum mengunduh';
	@override String get tencentAppStore => 'Tencent App Store';
	@override String get coolApk => 'CoolApk';
	@override String get vivoAppStore => 'vivo App Store (CN)';
	@override String get name => 'Nama';
	@override String get smartname => 'Nama (Cerdas)';
	@override String get smartPlusDate => 'Smart + Date';
	@override String get sortMethod => 'Metode Penyortiran';
	@override String get welcome => 'Selamat datang.';
	@override String get batteryOptimizationNote => 'Perhatikan bahwa unduhan latar belakang dapat bekerja lebih andal jika Anda menonaktifkan optimasi baterai OS untuk Updatium.';
	@override String get fileDeletionError => 'Gagal menghapus file (coba hapus secara manual, lalu coba lagi): "{}"';
	@override String get foregroundService => 'Layanan latar depan Updatium';
	@override String get foregroundServiceExplanation => 'Gunakan layanan latar depan untuk pemeriksaan pembaruan (lebih dapat diandalkan, menghabiskan lebih banyak daya)';
	@override String get fgServiceNotice => 'Pemberitahuan ini diperlukan untuk pemeriksaan pembaruan latar belakang (dapat disembunyikan dalam pengaturan OS)';
	@override String get excludeSecrets => 'Mengecualikan rahasia';
	@override String get GHReqPrefix => 'Instance \'omeritzics/Updatium\' untuk permintaan GitHub';
	@override String get includeZips => 'Menyertakan file ZIP';
	@override String get zippedApkFilterRegEx => 'Saring APK di dalam ZIP';
	@override String get multipleSigners => 'Tanda Tangan Ganda';
	@override String removeAppQuestion({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Hapus aplikasi?',
		other: 'Hapus aplikasi?',
	);
	@override String tooManyRequestsTryAgainInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Terlalu banyak permintaan (tarif dibatasi) - coba lagi dalam {count} menit',
		other: 'Terlalu banyak permintaan (tarif dibatasi) - coba lagi dalam {count} menit',
	);
	@override String bgUpdateGotErrorRetryInMinutes({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Pemeriksaan pembaruan latar belakang menemui {error}, akan menjadwalkan pemeriksaan ulang dalam {count} menit',
		other: 'Pemeriksaan pembaruan latar belakang menemui {error}, akan menjadwalkan pemeriksaan ulang dalam {count} menit',
	);
	@override String bgCheckFoundUpdatesWillNotifyIfNeeded({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Pemeriksaan pembaruan latar belakang menemukan {count} pembaruan - akan memberi tahu pengguna jika diperlukan',
		other: 'Pemeriksaan pembaruan latar belakang menemukan {count} pembaruan - akan memberi tahu pengguna jika diperlukan',
	);
	@override String apps({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{count} aplikasi',
		other: '{count} aplikasi',
	);
	@override String url({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{count} URL',
		other: '{count} URL',
	);
	@override String minute({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{count} menit',
		other: '{count} menit',
	);
	@override String hour({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{count} jam',
		other: '{count} jam',
	);
	@override String day({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{count} hari',
		other: '{count} hari',
	);
	@override String clearedNLogsBeforeXAfterY({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Menghapus {n} catatan (sebelum = {before}, setelah = {after})',
		other: 'Menghapus {n} catatan (sebelum = {before}, setelah = {after})',
	);
	@override String xAndNMoreUpdatesAvailable({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{app} dan 1 aplikasi lainnya memiliki pembaruan.',
		other: '{app} dan {count} aplikasi lainnya memiliki pembaruan.',
	);
	@override String xAndNMoreUpdatesInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{app} dan 1 aplikasi lainnya telah diperbarui.',
		other: '{app} dan {count} aplikasi lainnya telah diperbarui.',
	);
	@override String xAndNMoreUpdatesFailed({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Gagal memperbarui {app} dan 1 aplikasi lainnya.',
		other: 'Gagal memperbarui {app} dan {count} aplikasi lainnya.',
	);
	@override String xAndNMoreUpdatesPossiblyInstalled({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{app} dan 1 aplikasi lainnya mungkin telah diperbarui.',
		other: '{app} dan {count} aplikasi lainnya mungkin telah diperbarui.',
	);
	@override String apk({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: '{count} APK',
		other: '{count} APK',
	);
	@override String certificateHash({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n,
		one: 'Hash Sertifikat',
		other: 'Hashes Sertifikat',
	);
	@override String get securityDisclaimerTitle => 'Penafian Keamanan dan Hukum';
	@override String get license => 'Lisensi';
	@override String get licenseText => 'Aplikasi ini didistribusikan di bawah Lisensi GPL v3.';
	@override String get disclaimer => 'Penafian';
	@override String get disclaimerText => 'Aplikasi ini tidak mendistribusikan, menghosting, atau memverifikasi aplikasi eksternal mana pun. Pengguna menanggung tanggung jawab penuh atas keamanan dan legalitas perangkat lunak apa pun yang diinstal melalui alat ini.\n\nhttps://github.com/omeritzics/Updatium adalah satu-satunya tempat resmi untuk mengunduh Updatium - sangat tidak disarankan mengunduhnya dari tempat lain karena mengunduh dari sumber tidak resmi tidak aman.';
	@override String get privacy => 'Privasi';
	@override String get privacyText => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.';
	@override String get acceptAndContinue => 'Terima dan Lanjutkan';
	@override String get decline => 'Tolak';
	@override String get delete => 'Delete';
	@override String get deleteCategory => 'Delete category';
	@override String get githubStarPromptTitle => 'Menikmati Updatium?';
	@override String get githubStarPromptContent => 'Updatium adalah proyek komunitas sumber terbuka sukarela yang saya kembangkan di waktu luang saya. Jika Anda ingin mendukung proyek ini, silakan pertimbangkan untuk memberikan bintang di GitHub untuk membantu kami mencapai lebih banyak pengguna dan kontributor. Anda tidak akan dimintai lagi tentang ini. Terima kasih sebelumnya! :)';
	@override String get githubStarPromptStar => 'Beri bintang';
	@override String get githubStarPromptDontShowAgain => 'Jangan tampilkan lagi';
	@override String get sourceCode => 'Kode sumber';
	@override String get developedBy => 'Dikembangkan oleh';
	@override String get appDescription => 'Katalog aplikasi Android yang dapat disesuaikan yang memungkinkan Anda memperbarui aplikasi langsung dari sumber APK mereka.';
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

/// The flat map containing all translations for locale <id>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsId {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'invalidURLForSource' => 'Bukan URL aplikasi {} yang valid',
			'noReleaseFound' => 'Tidak dapat menemukan rilis yang sesuai',
			'noVersionFound' => 'Tidak dapat memastikan versi rilis yang sesuai',
			'urlMatchesNoSource' => 'URL tidak sesuai dengan sumber yang diketahui',
			'cantInstallOlderVersion' => 'Tidak dapat memasang versi aplikasi yang lebih lama',
			'appIdMismatch' => 'ID paket yang diunduh tidak sama dengan ID aplikasi yang ada',
			'functionNotImplemented' => 'Kelas ini belum mengimplementasikan fungsi ini',
			'placeholder' => 'Tempat penampung',
			'someErrors' => 'Terjadi beberapa kesalahan',
			'unexpectedError' => 'Kesalahan tidak terduga',
			'ok' => 'Oke',
			'and' => 'dan',
			'githubPATLabel' => 'Token Akses Pribadi GitHub',
			'includePrereleases' => 'Sertakan pra-rilis',
			'fallbackToOlderReleases' => 'Alternatif kembali ke rilis lama',
			'filterReleaseTitlesByRegEx' => 'Filter judul rilis dengan ekspresi reguler',
			'invalidRegEx' => 'Ekspresi reguler tidak valid',
			'noDescription' => 'Tidak ada deskripsi',
			'cancel' => 'Batal',
			'kContinue' => 'Lanjut',
			'requiredInBrackets' => '(Diperlukan)',
			'dropdownNoOptsError' => 'KESALAHAN: DROPDOWN HARUS MEMILIKI SETIDAKNYA SATU OPSI',
			'color' => 'Warna',
			'standard' => 'Standar',
			'custom' => 'Kustom',
			'primary' => 'Primary',
			'useMaterialYou' => 'Gunakan warna Material You',
			'githubStarredRepos' => 'Repositori berbintang GitHub',
			'gettingAppInfo' => 'Getting app info',
			'username' => 'Nama pengguna',
			'wrongArgNum' => 'Salah memberikan jumlah argumen',
			'xIsTrackOnly' => '{} adalah Pelacakan Saja',
			'source' => 'Sumber',
			'app' => 'Aplikasi',
			'appsFromSourceAreTrackOnly' => 'Aplikasi dari sumber ini hanya untuk \'Pelacakan Saja\'.',
			'youPickedTrackOnly' => 'Anda telah memilih opsi Pelacakan Saja.',
			'trackOnlyAppDescription' => 'Aplikasi akan dilacak untuk pembaruan, tetapi Updatium tidak akan dapat mengunduh atau memasangnya.',
			'cancelled' => 'Dibatalkan',
			'appAlreadyAdded' => 'Aplikasi sudah ditambahkan',
			'alreadyUpToDateQuestion' => 'Aplikasi sudah yang terbaru?',
			'addApp' => 'Tambah aplikasi',
			'appSourceURL' => 'Tambah sumber URL',
			'error' => 'Kesalahan',
			'add' => 'Tambah',
			'advanced' => 'Advanced',
			'searchSomeSourcesLabel' => 'Cari (beberapa sumber saja)',
			'search' => 'Cari',
			'searching' => 'Searching',
			'additionalOptsFor' => 'Opsi tambahan untuk {}',
			'supportedSources' => 'Sumber yang didukung',
			'trackOnlyInBrackets' => '(Pelacakan Saja)',
			'searchableInBrackets' => '(Dapat dicari)',
			'appsString' => 'Aplikasi',
			'categoryX' => 'Category: {}',
			'collapse' => 'Collapse',
			'downloadProgress' => 'Download progress',
			'expand' => 'Expand',
			'noApps' => 'Selamat datang!',
			'noAppsSubtext' => 'Anda dapat menambahkan aplikasi pertama dengan mengetuk \'Tambah aplikasi\' di bawah.',
			'noAppsForFilter' => 'Tidak ada aplikasi untuk difilter',
			'byX' => 'Oleh {}',
			'percentProgress' => 'Perkembangan: {}%',
			'pleaseWait' => 'Harap tunggu',
			'updateAvailable' => 'Pembaruan tersedia',
			'notInstalled' => 'Tidak terpasang',
			'openAppDetails' => 'Open app details',
			'pinned' => 'Pinned',
			'pinnedApp' => 'Pinned: {}, {}',
			'upToDate' => 'Up to date',
			'pseudoVersion' => 'versi semu',
			'selectAll' => 'Pilih semua',
			'deselectX' => 'Batal pilih {}',
			'xWillBeRemovedButRemainInstalled' => '{} akan dihapus dari Updatium tetapi tetap terpasang di perangkat.',
			'removeSelectedAppsQuestion' => 'Hapus aplikasi terpilih?',
			'removeSelectedApps' => 'Hapus aplikasi terpilih',
			'appRemoved' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Removed one app', other: 'Removed {count} apps', ), 
			'updateX' => 'Perbarui {}',
			'installX' => 'Pasang {}',
			'markXTrackOnlyAsUpdated' => 'Tandai {}\n(Pelacakan Saja)\nsudah diperbarui',
			'changeX' => 'Ubah {}',
			'installUpdateApps' => 'Pasang/perbarui aplikasi',
			'installUpdateSelectedApps' => 'Pasang/perbarui aplikasi terpilih',
			'markXSelectedAppsAsUpdated' => 'Tandai {} aplikasi terpilih sudah diperbarui?',
			'no' => 'Tidak',
			'yes' => 'Ya',
			'markSelectedAppsUpdated' => 'Tandai aplikasi terpilih sudah diperbarui',
			'pinToTop' => 'Sematkan ke atas',
			'unpinFromTop' => 'Lepaskan semat dari atas',
			'resetInstallStatusForSelectedAppsQuestion' => 'Atur ulang status pemasangan untuk aplikasi terpilih?',
			'installStatusOfXWillBeResetExplanation' => 'Status pemasangan dari aplikasi terpilih akan diatur ulang.\n\nHal ini bisa membantu saat versi aplikasi yang ditampilkan di Updatium salah akibat pembaruan yang gagal atau masalah lainnya.',
			'customLinkMessage' => 'Tautan ini berfungsi pada perangkat yang terpasang Updatium',
			'shareAppConfigLinks' => 'Bagikan konfigurasi aplikasi sebagai tautan HTML',
			'resetInstallStatus' => 'Atur ulang status pemasangan',
			'more' => 'Lebih banyak',
			'removeOutdatedFilter' => 'Hapus filter aplikasi yang usang',
			'removeFilter' => 'Remove filter',
			'save' => 'Save',
			'showOutdatedOnly' => 'Tampilkan aplikasi yang usang saja',
			'filter' => 'Filter',
			'filterApps' => 'Filter aplikasi',
			'filterDays' => 'Filter days',
			'appName' => 'Nama aplikasi',
			'author' => 'Pencipta',
			'upToDateApps' => 'Aplikasi terbaru',
			'nonInstalledApps' => 'Aplikasi tidak terpasang',
			'importExport' => 'Impor/ekspor',
			'settings' => 'Pengaturan',
			'exportedTo' => 'Diekspor ke {}',
			'updatiumExport' => 'Ekspor Updatium',
			'failedToExport' => 'Failed to export',
			'exportAlreadyInProgress' => 'Export already in progress',
			'exportDirNotAccessible' => 'Export directory is not accessible',
			'exportDirUriEmpty' => 'Export directory URI is empty',
			'failedToCreateExportFile' => 'Failed to create export file',
			'invalidInput' => 'Masukan tidak valid',
			'importedX' => '{} diimpor',
			'updatiumImport' => 'Impor Updatium',
			'importFromURLList' => 'Impor dari daftar URL',
			'searchQuery' => 'Cari Kueri',
			'appURLList' => 'Daftar URL aplikasi',
			'line' => 'Baris',
			'searchX' => 'Cari {}',
			'noResults' => 'Tidak ada hasil yang ditemukan',
			'importX' => 'Impor {}',
			'importedAppsIdDisclaimer' => 'Aplikasi yang diimpor mungkin secara salah ditampilkan sebagai "Tidak terpasang".\nUntuk memperbaikinya, lakukan pemasangan ulang melalui Updatium.\nHal ini seharusnya tidak mempengaruhi data aplikasi.\n\nHanya mempengaruhi metode impor URL dan pihak ketiga.',
			'importErrors' => 'Kesalahan impor',
			'importedXOfYApps' => '{} dari {} aplikasi diimpor.',
			'followingURLsHadErrors' => 'URL berikut mengalami kesalahan:',
			'selectURL' => 'Pilih URL',
			'selectURLs' => 'Pilih URL',
			'pick' => 'Pilih',
			'theme' => 'Tema',
			'dark' => 'Gelap',
			'light' => 'Terang',
			'followSystem' => 'Mengikuti sistem',
			'followSystemThemeExplanation' => 'Tema mengikuti sistem hanya mungkin dengan menggunakan aplikasi pihak ketiga',
			'useBlackTheme' => 'Gunakan tema hitam pekat',
			'appSortBy' => 'Penyortiran aplikasi berdasarkan',
			'authorName' => 'Pencipta/nama',
			'nameAuthor' => 'Nama/pencipta',
			'asAdded' => 'Tanggal ditambahkan',
			'appSortOrder' => 'Urutan penyortiran aplikasi',
			'ascending' => 'Menaik',
			'descending' => 'Menurun',
			'bgUpdateCheckInterval' => 'Interval pemeriksaan pembaruan di latar belakang',
			'neverManualOnly' => 'Tidak pernah - manual saja',
			'appearance' => 'Tampilan',
			'pinUpdates' => 'Sematkan pembaruan ke atas tampilan aplikasi',
			'updates' => 'Pembaruan',
			'dnsServiceProvider' => 'DNS Service',
			'dnsServiceProviderDescription' => 'Select the DNS service used for hostname resolution. This affects how apps are fetched from their sources.',
			'System Default' => 'System Default',
			'Cloudflare DNS' => 'Cloudflare DNS',
			'Quad9 DNS' => 'Quad9 DNS',
			'OpenDNS' => 'OpenDNS',
			'Mullvad DNS' => 'Mullvad DNS',
			'sourceSpecific' => 'Sumber spesifik',
			'appSource' => 'Sumber aplikasi',
			'appSourceHint' => 'Open app source repository',
			'noLogs' => 'Tidak ada catatan',
			'appLogs' => 'Catatan aplikasi',
			'appLogsHint' => 'View application logs',
			'close' => 'Tutup',
			'share' => 'Bagikan',
			'appNotFound' => 'Aplikasi tidak ditemukan',
			'networkError' => 'Network connection failed',
			'invalidUrlFormat' => 'Invalid URL format',
			'accessDenied' => 'Access denied',
			'importFailed' => 'Import failed',
			'updatiumExportHyphenatedLowercase' => 'ekspor-updatium',
			'pickAnAPK' => 'Pilih APK',
			'appHasMoreThanOnePackage' => '{} memiliki lebih dari satu paket:',
			'deviceSupportsXArch' => 'Perangkat Anda mendukung arsitektur CPU {}.',
			'deviceSupportsFollowingArchs' => 'Perangkat anda mendukung arsitektur CPU berikut:',
			'warning' => 'Peringatan',
			'sourceIsXButPackageFromYPrompt' => 'Sumber aplikasinya adalah \'{}\' tetapi paket rilisnya berasal dari \'{}\'. Lanjutkan?',
			'updatesAvailable' => 'Pembaruan tersedia',
			'updatesAvailableNotifDescription' => 'Memberi tahu pengguna bahwa pembaruan tersedia untuk aplikasi yang dilacak oleh Updatium',
			'noNewUpdates' => 'Tidak ada pembaruan baru.',
			'xHasAnUpdate' => '{} memiliki pembaruan.',
			'appsUpdated' => 'Aplikasi diperbarui',
			'appsNotUpdated' => 'Gagal memperbarui aplikasi',
			'appsUpdatedNotifDescription' => 'Memberi tahu pengguna bahwa pembaruan terhadap aplikasi diterapkan di latar belakang',
			'xWasUpdatedToY' => '{} telah diperbarui ke {}.',
			'xWasNotUpdatedToY' => 'Gagal memperbarui {} ke {}.',
			'errorCheckingUpdates' => 'Kesalahan dalam memeriksa pembaruan',
			'errorCheckingUpdatesNotifDescription' => 'Notifikasi yang ditampilkan saat pemeriksaan pembaruan latar belakang gagal',
			'appsRemoved' => 'Aplikasi dihapus',
			'undo' => 'Undo',
			'appsRemovedNotifDescription' => 'Memberi tahu pengguna bahwa aplikasi dihapus karena kesalahan saat memuatnya',
			'xWasRemovedDueToErrorY' => '{} dihapus karena kesalahan berikut: {}',
			'completeAppInstallation' => 'Selesaikan pemasangan aplikasi',
			'updatiumMustBeOpenToInstallApps' => 'Updatium harus terbuka untuk memasang aplikasi',
			'completeAppInstallationNotifDescription' => 'Meminta pengguna kembali ke Updatium untuk menyelesaikan pemasangan aplikasi',
			'checkingForUpdates' => 'Memeriksa pembaruan',
			'checkForUpdates' => 'Check for updates',
			'checkingForUpdatesNotifDescription' => 'Notifikasi sementara yang ditampilkan saat memeriksa pembaruan',
			'pleaseAllowInstallPerm' => 'Harap izinkan Updatium untuk memasang aplikasi',
			'trackOnly' => 'Pelacakan Saja',
			'trusted' => 'Trusted',
			'openSource' => 'Open-source',
			'errorWithHttpStatusCode' => 'Kesalahan {}',
			'versionCorrectionDisabled' => 'Koreksi versi dinonaktifkan (sepertinya plugin tidak berfungsi)',
			'unknown' => 'Tidak diketahui',
			'none' => 'Tidak ada',
			'all' => 'Semua',
			'never' => 'Tidak pernah',
			'latestVersion' => 'Terbaru',
			'installedVersionX' => 'Terpasang: {}',
			'lastUpdateCheckX' => 'Terakhir memeriksa pembaruan: {}',
			'remove' => 'Hapus',
			'quickLinks' => 'Tautan Cepat',
			'yesMarkUpdated' => 'Ya, tandai bahwa sudah diperbarui',
			'fdroid' => 'F-Droid Resmi',
			'appIdOrName' => 'ID atau nama aplikasi',
			'appId' => 'ID aplikasi',
			'appWithIdOrNameNotFound' => 'Tidak ada aplikasi yang ditemukan dengan ID atau nama tersebut',
			'reposHaveMultipleApps' => 'Repositori dapat berisi beberapa aplikasi',
			'fdroidThirdPartyRepo' => 'Repositori pihak ketiga F-Droid',
			'codeberg' => 'Forgejo (Codeberg)',
			'openapk' => 'OpenAPK',
			'huaweiappgallery' => 'Huawei App Gallery',
			'rustore' => 'RuStore',
			'telegramapp' => 'Telegram App',
			'html' => 'HTML',
			'install' => 'Pasang',
			'markInstalled' => 'Tandai terpasang',
			'update' => 'perbarui',
			'updated' => 'Telah diperbarui',
			'markUpdated' => 'Tandai diperbarui',
			'download' => 'Download',
			'additionalOptions' => 'Opsi tambahan',
			'disableVersionDetection' => 'Nonaktifkan pendeteksi versi',
			'noVersionDetectionExplanation' => 'Opsi ini hanya boleh digunakan untuk aplikasi dengan pendeteksi versi yang tidak berfungsi dengan benar.',
			'downloadingX' => 'Mengunduh {}',
			'downloadX' => 'Unduh {}',
			'downloadedX' => '{} diunduh',
			'editCategory' => 'Edit category',
			'releaseAsset' => 'Aset rilis',
			'downloadNotifDescription' => 'Memberi tahu pengguna perkembangan dalam mengunduh aplikasi',
			'noAPKFound' => 'Tidak ada APK ditemukan',
			'noVersionDetection' => 'Tidak ada pendeteksi versi',
			'categorize' => 'Kategorikan',
			'categories' => 'Kategori',
			'category' => 'Kategori',
			'noCategory' => 'Tidak ada kategori',
			'noCategories' => 'Tidak ada kategori',
			'categoryDeleteQuestion' => 'Hapus kategori?',
			'categoryDeleteWarning' => 'Semua aplikasi dalam kategori yang dihapus akan diatur sebagai tidak terkategori.',
			'addCategory' => 'Tambah kategori',
			'label' => 'Label',
			'language' => 'Bahasa',
			'copiedToClipboard' => 'Disalin ke papan klip',
			'storagePermissionDenied' => 'Izin penyimpanan ditolak',
			'selectedCategorizeWarning' => 'Ini akan mengganti pengaturan kategori yang ada untuk aplikasi terpilih.',
			'filterAPKsByRegEx' => 'Filter APK dengan ekspresi reguler',
			'removeFromUpdatium' => 'Hapus dari Updatium',
			'uninstallFromDevice' => 'Copot pemasangan dari perangkat',
			'onlyWorksWithNonVersionDetectApps' => 'Hanya bekerja untuk aplikasi dengan pendeteksi versi yang nonaktif.',
			'releaseDateAsVersion' => 'Gunakan tanggal rilis sebagai versi string',
			'releaseTitleAsVersion' => 'Gunakan judul rilis sebagai string versi',
			'releaseDateAsVersionExplanation' => 'Opsi ini hanya boleh digunakan untuk aplikasi dengan pendeteksi versi yang tidak berfungsi dengan benar, tetapi tanggal rilisnya tersedia.',
			'changes' => 'Perubahan',
			'releaseDate' => 'Tanggal rilis',
			'importFromURLsInFile' => 'Impor dari URL dalam berkas (seperti OPML)',
			'versionDetectionExplanation' => 'Sesuaikan string versi dengan versi yang terdeteksi dari OS',
			'versionDetection' => 'Pendeteksi versi',
			'standardVersionDetection' => 'Pendeteksi versi standar',
			'groupByCategory' => 'Kelompokkan berdasarkan kategori',
			'listView' => 'Tampilan daftar',
			'gridView' => 'Tampilan kisi',
			'autoApkFilterByArch' => 'Coba filter APK berdasarkan arsitektur CPU jika memungkinkan',
			'autoLinkFilterByArch' => 'Mencoba memfilter tautan berdasarkan arsitektur CPU jika memungkinkan',
			'overrideSource' => 'Ganti sumber',
			'dontShowAgain' => 'Jangan tampilkan lagi',
			'dontShowTrackOnlyWarnings' => 'Jangan tampilkan peringatan \'Pelacakan Saja\'',
			'dontShowAPKOriginWarnings' => 'Jangan tampilkan peringatan asal APK',
			'moveNonInstalledAppsToBottom' => 'Pindahkan aplikasi tidak terpasang ke bawah tampilan aplikasi',
			'gitlabPATLabel' => 'Token Akses Pribadi GitLab',
			'bitbucketAPITokenLabel' => 'Bitbucket API token (email:token)',
			'giteaTokenLabel' => 'Gitea access token',
			'about' => 'Tentang',
			'requiresCredentialsInSettings' => '{} memerlukan kredensial tambahan (dalam pengaturan)',
			'checkOnStart' => 'Periksa pembaruan saat proses memulai',
			'safeMode' => 'Mode Aman',
			'safeModeDescription' => 'Prevent unwanted changes to the app list by hiding the "Add App" page. To disable it, you\'ll have to open the About dialog, and then tap on the version number 500+ times',
			'safeModeAddAppDisabled' => 'Tambah Aplikasi dinonaktifkan dalam Mode Aman',
			'tryInferAppIdFromCode' => 'Coba menebak ID aplikasi dari kode sumber',
			'removeOnExternalUninstall' => 'Hapus otomatis aplikasi yang dicopot pemasangannya dari luar',
			'pickHighestVersionCode' => 'Pilih otomatis APK dengan versi kode tertinggi',
			'checkUpdateOnDetailPage' => 'Periksa pembaruan saat membuka halaman detail aplikasi',
			'disablePageTransitions' => 'Nonaktifkan animasi transisi halaman',
			'reversePageTransitions' => 'Animasi transisi halaman secara terbalik',
			'minStarCount' => 'Jumlah bintang minimum',
			'addInfoBelow' => 'Tambahkan info ini di bawah.',
			'addInfoInSettings' => 'Tambahkan info ini di pengaturan.',
			'githubSourceNote' => 'Pembatasan tarif pada GitHub dapat dihindari dengan menggunakan kunci API.',
			'sortByLastLinkSegment' => 'Urutkan hanya berdasarkan segmen terakhir tautan',
			'filterReleaseNotesByRegEx' => 'Filter catatan perilisan dengan ekspresi reguler',
			'customLinkFilterRegex' => 'Filter tautan APK kustom dengan ekspresi reguler (Standar \'.apk$\')',
			'appsPossiblyUpdated' => 'Pembaruan aplikasi dicoba',
			'appsPossiblyUpdatedNotifDescription' => 'Memberi tahu pengguna bahwa pembaruan terhadap aplikasi berpotensi diterapkan di latar belakang',
			'xWasPossiblyUpdatedToY' => '{} mungkin telah diperbarui ke {}.',
			'enableBackgroundUpdates' => 'Aktifkan pembaruan latar belakang',
			'backgroundUpdateReqsExplanation' => 'Pembaruan latar belakang mungkin tidak dapat dilakukan untuk semua aplikasi.',
			'backgroundUpdateLimitsExplanation' => 'Keberhasilan pemasangan di latar belakang hanya dapat ditentukan ketika Updatium terbuka.',
			'verifyLatestTag' => 'Verifikasi label \'terbaru\'',
			'intermediateLinkRegex' => 'Filter tautan \'perantara\' untuk dikunjungi',
			'filterByLinkText' => 'Filter tautan berdasarkan teks tautan',
			'matchLinksOutsideATags' => 'Mencocokkan tautan di luar tag <a>',
			'intermediateLinkNotFound' => 'Tautan perantara tidak ditemukan',
			'intermediateLink' => 'Tautan perantara',
			'exemptFromBackgroundUpdates' => 'Dikecualikan dari pembaruan latar belakang (jika diaktifkan)',
			'bgUpdatesOnWiFiOnly' => 'Nonaktifkan pembaruan latar belakang saat tidak menggunakan Wi-Fi',
			'bgUpdatesWhileChargingOnly' => 'Menonaktifkan pembaruan latar belakang saat tidak mengisi daya',
			'autoSelectHighestVersionCode' => 'Pilih otomatis APK dengan versi kode tertinggi',
			'versionExtractionRegEx' => 'Reguler ekspresi terkait ekstraksi versi string',
			'trimVersionString' => 'Potong versi string dengan reguler ekspresi',
			'matchGroupToUseForX' => 'Cocokkan grup yang akan digunakan untuk "{}"',
			'matchGroupToUse' => 'Cocokkan grup yang akan digunakan untuk reguler ekspresi terkait ekstraksi versi string',
			'highlightTouchTargets' => 'Sorot target sentuh yang kurang jelas',
			'pickExportDir' => 'Pilih direktori ekspor',
			'autoExportOnChanges' => 'Otomatis ekspor terhadap perubahan',
			'includeSettings' => 'Sertakan pengaturan',
			'filterVersionsByRegEx' => 'Filter versi dengan ekspresi reguler',
			'trySelectingSuggestedVersionCode' => 'Coba pilih APK dengan version kode yang disarankan',
			'dontSortReleasesList' => 'Pertahankan urutan rilis dari API',
			'reverseSort' => 'Penyortiran terbalik',
			'takeFirstLink' => 'Ambil tautan pertama',
			'skipSort' => 'Lewati penyortiran',
			'debugMenu' => 'Menu debug',
			'bgTaskStarted' => 'Tugas latar belakang dimulai - periksa catatan.',
			'runBgCheckNow' => 'Jalankan pemeriksaan pembaruan latar belakang sekarang',
			'versionExtractWholePage' => 'Terapkan reguler ekspresi terkait ekstraksi versi string ke seluruh halaman',
			'installing' => 'Memasang',
			'skipUpdateNotifications' => 'Lewati notifikasi pembaruan',
			'updatesAvailableNotifChannel' => 'Pembaruan tersedia',
			'appsUpdatedNotifChannel' => 'Aplikasi diperbarui',
			'appsPossiblyUpdatedNotifChannel' => 'Pembaruan aplikasi dicoba',
			'errorCheckingUpdatesNotifChannel' => 'Kesalahan dalam memeriksa pembaruan',
			'appsRemovedNotifChannel' => 'Aplikasi dihapus',
			'downloadingXNotifChannel' => 'Mengunduh {}',
			'completeAppInstallationNotifChannel' => 'Selesaikan pemasangan aplikasi',
			'checkingForUpdatesNotifChannel' => 'Memeriksa pembaruan',
			'onlyCheckInstalledOrTrackOnlyApps' => 'Hanya periksa aplikasi yang dipasang dan ditandai \'Pelacakan Saja\' untuk pembaruan',
			'supportFixedAPKURL' => 'Mendukung URL APK tetap',
			'selectX' => 'Pilih {}',
			'parallelDownloads' => 'Izinkan mengunduh paralel',
			'useShizuku' => 'Gunakan Shizuku atau Sui untuk memasang',
			'shizukuBinderNotFound' => 'Layanan Shizuku tidak berjalan',
			'shizukuOld' => 'Versi Shizuku lama (<11) - harap perbarui',
			'shizukuOldAndroidWithADB' => 'Shizuku berjalan di Android < 8.1 dengan ADB - perbarui Android atau gunakan Sui sebagai gantinya',
			'shizukuPretendToBeGooglePlay' => 'Atur Google Play sebagai sumber pemasangan (jika Shizuku digunakan)',
			'useSystemFont' => 'Gunakan font sistem',
			'useVersionCodeAsOSVersion' => 'Gunakan versi kode aplikasi sebagai versi yang terdeteksi OS',
			'requestHeader' => 'Header permintaan',
			'useLatestAssetDateAsReleaseDate' => 'Gunakan unggahan aset terbaru sebagai tanggal rilis',
			'defaultPseudoVersioningMethod' => 'Metode versi semu standar',
			'partialAPKHash' => 'Hash APK parsial',
			'APKLinkHash' => 'Hash tautan APK',
			'directAPKLink' => 'Tautan APK langsung',
			'pseudoVersionInUse' => 'Versi semu sedang digunakan',
			'installedVersion' => 'Terpasang',
			'installed' => 'Terpasang',
			'notInstalledApps' => 'Tidak terpasang',
			'latest' => 'Terbaru',
			'invertRegEx' => 'Balikkan ekspresi reguler',
			'note' => 'Catatan',
			'selfHostedNote' => 'Dropdown "{}" bisa digunakan untuk menjangkau instansi yang dihosting sendiri/kustom dari sumber mana pun.',
			'openSourceNote' => 'Open-source software is more safe and trustable, as its code is fully transparent and open to peer-review.',
			'badDownload' => 'APK tidak dapat diurai (tidak kompatibel atau diunduh sebagian)',
			'beforeNewInstallsShareToAppVerifier' => 'Bagikan aplikasi baru dengan AppVerifier (jika tersedia)',
			'appVerifierInstructionToast' => 'Bagikan ke AppVerifier, lalu kembali ke sini jika sudah siap.',
			'wiki' => 'Bantuan/Wiki',
			'wikiHint' => 'Open Updatium wiki documentation',
			'allowInsecure' => 'Izinkan permintaan HTTP yang tidak aman',
			'stayOneVersionBehind' => 'Tetap satu versi di belakang versi terbaru',
			'useFirstApkOfVersion' => 'Pilih otomatis yang pertama dari beberapa APK',
			'refreshBeforeDownload' => 'Segarkan detail aplikasi sebelum mengunduh',
			'tencentAppStore' => 'Tencent App Store',
			'coolApk' => 'CoolApk',
			'vivoAppStore' => 'vivo App Store (CN)',
			'name' => 'Nama',
			'smartname' => 'Nama (Cerdas)',
			'smartPlusDate' => 'Smart + Date',
			'sortMethod' => 'Metode Penyortiran',
			'welcome' => 'Selamat datang.',
			'batteryOptimizationNote' => 'Perhatikan bahwa unduhan latar belakang dapat bekerja lebih andal jika Anda menonaktifkan optimasi baterai OS untuk Updatium.',
			'fileDeletionError' => 'Gagal menghapus file (coba hapus secara manual, lalu coba lagi): "{}"',
			'foregroundService' => 'Layanan latar depan Updatium',
			'foregroundServiceExplanation' => 'Gunakan layanan latar depan untuk pemeriksaan pembaruan (lebih dapat diandalkan, menghabiskan lebih banyak daya)',
			'fgServiceNotice' => 'Pemberitahuan ini diperlukan untuk pemeriksaan pembaruan latar belakang (dapat disembunyikan dalam pengaturan OS)',
			'excludeSecrets' => 'Mengecualikan rahasia',
			'GHReqPrefix' => 'Instance \'omeritzics/Updatium\' untuk permintaan GitHub',
			'includeZips' => 'Menyertakan file ZIP',
			'zippedApkFilterRegEx' => 'Saring APK di dalam ZIP',
			'multipleSigners' => 'Tanda Tangan Ganda',
			'removeAppQuestion' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Hapus aplikasi?', other: 'Hapus aplikasi?', ), 
			'tooManyRequestsTryAgainInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Terlalu banyak permintaan (tarif dibatasi) - coba lagi dalam {count} menit', other: 'Terlalu banyak permintaan (tarif dibatasi) - coba lagi dalam {count} menit', ), 
			'bgUpdateGotErrorRetryInMinutes' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Pemeriksaan pembaruan latar belakang menemui {error}, akan menjadwalkan pemeriksaan ulang dalam {count} menit', other: 'Pemeriksaan pembaruan latar belakang menemui {error}, akan menjadwalkan pemeriksaan ulang dalam {count} menit', ), 
			'bgCheckFoundUpdatesWillNotifyIfNeeded' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Pemeriksaan pembaruan latar belakang menemukan {count} pembaruan - akan memberi tahu pengguna jika diperlukan', other: 'Pemeriksaan pembaruan latar belakang menemukan {count} pembaruan - akan memberi tahu pengguna jika diperlukan', ), 
			'apps' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{count} aplikasi', other: '{count} aplikasi', ), 
			'url' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{count} URL', other: '{count} URL', ), 
			'minute' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{count} menit', other: '{count} menit', ), 
			'hour' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{count} jam', other: '{count} jam', ), 
			'day' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{count} hari', other: '{count} hari', ), 
			'clearedNLogsBeforeXAfterY' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Menghapus {n} catatan (sebelum = {before}, setelah = {after})', other: 'Menghapus {n} catatan (sebelum = {before}, setelah = {after})', ), 
			'xAndNMoreUpdatesAvailable' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{app} dan 1 aplikasi lainnya memiliki pembaruan.', other: '{app} dan {count} aplikasi lainnya memiliki pembaruan.', ), 
			'xAndNMoreUpdatesInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{app} dan 1 aplikasi lainnya telah diperbarui.', other: '{app} dan {count} aplikasi lainnya telah diperbarui.', ), 
			'xAndNMoreUpdatesFailed' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Gagal memperbarui {app} dan 1 aplikasi lainnya.', other: 'Gagal memperbarui {app} dan {count} aplikasi lainnya.', ), 
			'xAndNMoreUpdatesPossiblyInstalled' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{app} dan 1 aplikasi lainnya mungkin telah diperbarui.', other: '{app} dan {count} aplikasi lainnya mungkin telah diperbarui.', ), 
			'apk' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: '{count} APK', other: '{count} APK', ), 
			'certificateHash' => ({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('id'))(n, one: 'Hash Sertifikat', other: 'Hashes Sertifikat', ), 
			'securityDisclaimerTitle' => 'Penafian Keamanan dan Hukum',
			'license' => 'Lisensi',
			'licenseText' => 'Aplikasi ini didistribusikan di bawah Lisensi GPL v3.',
			'disclaimer' => 'Penafian',
			'disclaimerText' => 'Aplikasi ini tidak mendistribusikan, menghosting, atau memverifikasi aplikasi eksternal mana pun. Pengguna menanggung tanggung jawab penuh atas keamanan dan legalitas perangkat lunak apa pun yang diinstal melalui alat ini.\n\nhttps://github.com/omeritzics/Updatium adalah satu-satunya tempat resmi untuk mengunduh Updatium - sangat tidak disarankan mengunduhnya dari tempat lain karena mengunduh dari sumber tidak resmi tidak aman.',
			'privacy' => 'Privasi',
			'privacyText' => 'Updatium does not collect any information about you. However, third party providers may collect and store information about you.',
			'acceptAndContinue' => 'Terima dan Lanjutkan',
			'decline' => 'Tolak',
			'delete' => 'Delete',
			'deleteCategory' => 'Delete category',
			'githubStarPromptTitle' => 'Menikmati Updatium?',
			'githubStarPromptContent' => 'Updatium adalah proyek komunitas sumber terbuka sukarela yang saya kembangkan di waktu luang saya. Jika Anda ingin mendukung proyek ini, silakan pertimbangkan untuk memberikan bintang di GitHub untuk membantu kami mencapai lebih banyak pengguna dan kontributor. Anda tidak akan dimintai lagi tentang ini. Terima kasih sebelumnya! :)',
			'githubStarPromptStar' => 'Beri bintang',
			'githubStarPromptDontShowAgain' => 'Jangan tampilkan lagi',
			'sourceCode' => 'Kode sumber',
			'developedBy' => 'Dikembangkan oleh',
			'appDescription' => 'Katalog aplikasi Android yang dapat disesuaikan yang memungkinkan Anda memperbarui aplikasi langsung dari sumber APK mereka.',
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
