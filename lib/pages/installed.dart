import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:updatium/pages/apps.dart';

class InstalledPage extends StatelessWidget {
  const InstalledPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppsPage(
      key: GlobalKey<AppsPageState>(),
      initialFilter: AppsFilter(
        onlyInstalled: true,
      ),
    );
  }
}
