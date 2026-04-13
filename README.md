# ![Updatium Icon](./assets/graphics/icon_small.png) Updatium

[![GitHub release (latest by date)](https://img.shields.io/github/v/release/omeritzics/Updatium)](https://github.com/omeritzics/Updatium/releases/latest)
[![Nightly Build](https://github.com/omeritzics/Updatium/actions/workflows/nightly.yml/badge.svg)](https://github.com/omeritzics/Updatium/actions/workflows/nightly.yml)
[![Translation Help Wanted](https://img.shields.io/badge/translation-help_wanted-blue)](https://github.com/omeritzics/Updatium/tree/main/assets/translations)

Update your Android apps directly from the APK source. Updatium is a customizable Android app catalogue that allows you to update your apps directly from their APK sources, and to receive notifications when updates are available.

#### [Testers needed. Click here for more information.](https://github.com/omeritzics/Updatium/issues/280)

## Features
### Currently supported App sources:
| Open Source (General) | Other (General) | Other (App-specific) |
| :--- | :--- | :--- |
| <img src="https://www.google.com/s2/favicons?sz=32&domain=github.com" width="16"/> [GitHub](https://github.com/) | <img src="https://www.google.com/s2/favicons?sz=32&domain=apkpure.com" width="16"/> [APKPure](https://apkpure.net/) | <img src="https://www.google.com/s2/favicons?sz=32&domain=neutroncode.com" width="16"/> [Neutron Code](https://neutroncode.com/) |
| <img src="https://www.google.com/s2/favicons?sz=32&domain=gitlab.com" width="16"/> [GitLab](https://gitlab.com/) | <img src="https://icons.duckduckgo.com/ip3/aptoide.com.ico" width="16"/> [Aptoide](https://aptoide.com/) | 🏗️ Jenkins Jobs |
| <img src="https://www.google.com/s2/favicons?sz=32&domain=forgejo.org" width="16"/> [Forgejo](https://forgejo.org/) ([Codeberg](https://codeberg.org/)) | <img src="https://www.google.com/s2/favicons?sz=32&domain=uptodown.com" width="16"/> [Uptodown](https://uptodown.com/) | 📦 Direct APK Link |
| <img src="https://icons.duckduckgo.com/ip3/f-droid.org.ico" width="16"/> [F-Droid](https://f-droid.org/) | <img src="https://www.google.com/s2/favicons?sz=32&domain=huawei.com" width="16"/> [Huawei AppGallery](https://appgallery.huawei.com/) | 🌐 HTML page fallback |
| 🧩 Third Party F-Droid Repos | <img src="https://icons.duckduckgo.com/ip3/sj.qq.com.ico" width="16"/> [Tencent App Store](https://sj.qq.com/) | |
| <img src="https://www.google.com/s2/favicons?sz=32&domain=android.izzysoft.de" width="16"/> [IzzyOnDroid](https://android.izzysoft.de/) | <img src="https://icons.duckduckgo.com/ip3/h5.appstore.vivo.com.cn.ico" width="16"/> [vivo App Store (CN)](https://h5.appstore.vivo.com.cn/) | |
| <img src="https://icons.duckduckgo.com/ip3/sourcehut.org.ico" width="16"/> [SourceHut](https://git.sr.ht/) | <img src="https://www.google.com/s2/favicons?sz=32&domain=rustore.ru" width="16"/> [RuStore](https://rustore.ru/) |  | |
| | <img src="https://www.google.com/s2/favicons?sz=32&domain=apkcombo.com" width="16"/> [APKCombo](https://apkcombo.com/) | |
| | <img src="https://icons.duckduckgo.com/ip3/apkmirror.com.ico" width="16"/> [APKMirror](https://apkmirror.com/) | |

### Improved Design
Based on Material Design 3 Expressive guidelines.

### Other Additional Features
- Hide non-installed apps.
- Better accessability for screen readers.
- Grid View.

### Localization
Updatium currently supports 38 locales (including English). If you want to help translate Updatium to your language or improve an existing translation, please open a pull with the new translations added to [here](https://github.com/omeritzics/Updatium/tree/main/assets/translations).

If you don't know how to make a pull request, and/or you don't have any experience with Git, you can open an issue [here](https://github.com/omeritzics/Updatium/issues/new/choose) and I'd be happy to help you with adding your language. 

Every language is welcome to Updatium, but your help is needed to make it happen.

* Currently supported locales: English, 简体中文, 臺灣話, Italiano, 日本語, עברית, हिन्दी, Magyar, Deutsch, فارسی, Français, Español, Polski, Русский, Bosanski, Português, Česky, Svenska, Nederlands, Tiếng Việt, Türkçe, Українська, Dansk, Eesti, Esperanto, Bahasa Indonesia, বাংলা, 한국어, Català, العربية, മലയാളം, Galego, Български, Kurdî (Kurmanjî), Bahasa Melayu, Română, ئۇيغۇرچە.

## Download
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/omeritzics/Updatium?style=for-the-badge&logo=android)](https://github.com/omeritzics/Updatium/releases/latest)

[![Download Nightly APK](https://img.shields.io/badge/Download-Nightly_APK-green?style=for-the-badge&logo=android)](https://github.com/omeritzics/Updatium/releases/tag/nightly)

Do not download Updatium from unofficial sources (such as Appteka), since these may contain more bugs, or even malware.

## Screenshots

| <img src="./assets/screenshots/1.apps.png" alt="Apps Page" /> | <img src="./assets/screenshots/2.dark_theme.png" alt="Dark Theme" />           | <img src="./assets/screenshots/3.material_you.png" alt="Material You" />    |
| ------------------------------------------------------ | ----------------------------------------------------------------------- | -------------------------------------------------------------------- |
| <img src="./assets/screenshots/4.app.png" alt="App Page" />   | |  |

## Limitations
- For some sources, data is gathered using Web scraping and can easily break due to changes in website design. In such cases, more reliable methods may be unavailable.

## Frequently Asked Questions
### Q: What is Updatium?
A: Updatium started as a fork of [Obtainium](https://github.com/ImranR98/Obtainium), aiming to be a better alternative to it. Updatium is a customizable app catalogue, to which you can add almost any application you want from a variety of sources, like GitHub and APKPure.

### Q: Why fork Obtainium?
A: One word - antisemitism. While Obtainium is a really powerful tool, its developer intended to block people from a specific nation from getting involved into the project. Updatium aims not just to be an update to Obtainium, but also to provide a broad, accepting, welcoming open source community.

### Q: Does Updatium encourage piracy?
A: Absolutely not! Updatium is highly against piracy and modded applications.

### Q: How can I help?
A: There are many ways you can. Simply open an issue on the project's GitHub and introduce yourself. Your contribution doesn't have to be code - it could also be bug reporting, translating the app into new languages (or improving existing translations), design proposals and ideas. Starring Updatium and sharing it to people who you think may like it can also help Updatium grow. Thank you for your support :)
