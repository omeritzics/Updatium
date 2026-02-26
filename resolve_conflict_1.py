import os

path = 'lib/pages/apps.dart'
with open(path, 'r', encoding='utf-8') as f:
    lines = f.readlines()

new_lines = []
in_block = False
replaced = False

block_content = [
    '            action = Semantics(\n',
    '              button: true,\n',
    '              label: AppLocalizations.of(context)!.install,\n',
    '              hint: appsProvider.areDownloadsRunning()\n',
    '                  ? \'Please wait, downloads in progress\'\n',
    '                  : \'Install ${app.name} on your device\',\n',
    '              excludeSemantics: true,\n',
    '              child: FilledButton.tonal(\n',
    '                onPressed: appsProvider.areDownloadsRunning()\n',
    '                    ? null\n',
    '                    : () {\n',
    '                        appsProvider\n',
    '                            .downloadAndInstallLatestApps([\n',
    '                              app.id,\n',
    '                            ], globalNavigatorKey.currentContext)\n',
    '                            .catchError((e) {\n',
    '                              if (mounted) {\n',
    '                                showError(e, context);\n',
    '                              }\n',
    '                              return <String>[];\n',
    '                            });\n',
    '                      },\n',
    '                style: const ButtonStyle(visualDensity: VisualDensity.compact),\n',
    '                child: Text(AppLocalizations.of(context)!.install),\n',
    '              ),\n',
    '            );\n',
    '          } else if (hasUpdateLocal) {\n',
    '            action = Semantics(\n',
    '              button: true,\n',
    '              label: AppLocalizations.of(context)!.update,\n',
    '              hint: appsProvider.areDownloadsRunning()\n',
    '                  ? \'Please wait, downloads in progress\'\n',
    '                  : \'Update ${app.name} to version ${app.latestVersion}\',\n',
    '              excludeSemantics: true,\n',
    '              child: FilledButton.tonal(\n',
    '                onPressed: appsProvider.areDownloadsRunning()\n',
    '                    ? null\n',
    '                    : () {\n',
    '                        appsProvider\n',
    '                            .downloadAndInstallLatestApps([\n',
    '                              app.id,\n',
    '                            ], globalNavigatorKey.currentContext)\n',
    '                            .catchError((e) {\n',
    '                              if (mounted) {\n',
    '                                showError(e, context);\n',
    '                              }\n',
    '                              return <String>[];\n',
    '                            });\n',
    '                      },\n',
    '                style: const ButtonStyle(visualDensity: VisualDensity.compact),\n',
    '                child: Text(AppLocalizations.of(context)!.update),\n',
    '              ),\n',
    '            );\n'
]

for line in lines:
    if '<<<<<<< HEAD' in line and not replaced:
        in_block = True
        new_lines.extend(block_content)
        replaced = True
        continue
    if '>>>>>>> origin/dev' in line and in_block:
        in_block = False
        continue
    if not in_block:
        new_lines.append(line)

with open(path, 'w', encoding='utf-8') as f:
    f.writelines(new_lines)
print('Done resolving first conflict block')
