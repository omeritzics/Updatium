import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:updatium/pages/apps.dart';

class DownloadPage extends StatefulWidget {
  const DownloadPage({super.key});

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  final GlobalKey<AppsPageState> _appsPageKey = GlobalKey<AppsPageState>();

  @override
  Widget build(BuildContext context) {
    return AppsPage(
      key: _appsPageKey,
      initialFilter: AppsFilter(
        onlyNonInstalled: true,
        includeNonInstalled: true,
      ),
    );
  }
}
