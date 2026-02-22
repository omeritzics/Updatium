import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:updatium/security/security_settings_provider.dart';

class SecuritySettingsPage extends StatefulWidget {
  const SecuritySettingsPage({super.key});

  @override
  State<SecuritySettingsPage> createState() => _SecuritySettingsPageState();
}

class _SecuritySettingsPageState extends State<SecuritySettingsPage> {
  late SecuritySettingsProvider _securityProvider;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _initializeSecurityProvider();
  }

  Future<void> _initializeSecurityProvider() async {
    _securityProvider = await SecuritySettingsProvider.create();
    await _securityProvider.initialize();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(tr('securitySettings')),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _buildHeader(),
          const SizedBox(height: 16),
          _buildAutoScanSection(),
          const SizedBox(height: 16),
          _buildAutoUpdateSection(),
          const SizedBox(height: 16),
          _buildThreatLevelSection(),
          const SizedBox(height: 16),
          _buildQuarantineSection(),
          const SizedBox(height: 16),
          _buildUpdateSection(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.security,
                  color: Theme.of(context).colorScheme.primary,
                  size: 24,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tr('yaraMalwareScanner'),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        tr('yaraScannerDescription'),
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAutoScanSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('autoScanSettings'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            SwitchListTile(
              title: Text(tr('enableAutoScan')),
              subtitle: Text(tr('enableAutoScanDescription')),
              value: _securityProvider.getAutoScanEnabled(),
              onChanged: (value) async {
                await _securityProvider.setAutoScanEnabled(value);
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAutoUpdateSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('autoUpdateSettings'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            SwitchListTile(
              title: Text(tr('enableAutoUpdate')),
              subtitle: Text(tr('enableAutoUpdateDescription')),
              value: _securityProvider.getAutoUpdateEnabled(),
              onChanged: (value) async {
                await _securityProvider.setAutoUpdateEnabled(value);
                setState(() {});
              },
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text(tr('updateInterval')),
              subtitle: Text(tr('updateIntervalDescription')),
              trailing: DropdownButton<int>(
                value: _securityProvider.getUpdateInterval(),
                items: [1, 6, 12, 24, 48, 72].map((hours) {
                  return DropdownMenuItem<int>(
                    value: hours,
                    child: Text('$hours ${tr('hours')}'),
                  );
                }).toList(),
                onChanged: (value) async {
                  if (value != null) {
                    await _securityProvider.setUpdateInterval(value);
                    setState(() {});
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildThreatLevelSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('threatLevelFilter'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              tr('threatLevelFilterDescription'),
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const SizedBox(height: 8),
            RadioListTile<int>(
              title: Text(tr('level1')),
              subtitle: Text(tr('lowThreat')),
              value: 1,
              groupValue: _securityProvider.getThreatLevelFilter(),
              onChanged: (value) async {
                if (value != null) {
                  await _securityProvider.setThreatLevelFilter(value);
                  setState(() {});
                }
              },
            ),
            RadioListTile<int>(
              title: Text(tr('level2')),
              subtitle: Text(tr('mediumThreat')),
              value: 2,
              groupValue: _securityProvider.getThreatLevelFilter(),
              onChanged: (value) async {
                if (value != null) {
                  await _securityProvider.setThreatLevelFilter(value);
                  setState(() {});
                }
              },
            ),
            RadioListTile<int>(
              title: Text(tr('level3')),
              subtitle: Text(tr('highThreat')),
              value: 3,
              groupValue: _securityProvider.getThreatLevelFilter(),
              onChanged: (value) async {
                if (value != null) {
                  await _securityProvider.setThreatLevelFilter(value);
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildQuarantineSection() {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('quarantineSettings'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            SwitchListTile(
              title: Text(tr('quarantineInfected')),
              subtitle: Text(tr('quarantineInfectedDescription')),
              value: _securityProvider.getQuarantineInfected(),
              onChanged: (value) async {
                await _securityProvider.setQuarantineInfected(value);
                setState(() {});
              },
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text(tr('viewQuarantine')),
              subtitle: Text(tr('viewQuarantineDescription')),
              trailing: const Icon(Icons.folder),
              onTap: () {
                // TODO: Navigate to quarantine view
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(tr('quarantineViewComingSoon'))),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUpdateSection() {
    final lastUpdate = _securityProvider.getLastUpdate();
    final rulesVersion = _securityProvider.getRulesVersion();
    
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              tr('databaseInformation'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            ListTile(
              title: Text(tr('lastUpdate')),
              subtitle: lastUpdate != null 
                  ? Text(lastUpdate.toString())
                  : Text(tr('never')),
              trailing: const Icon(Icons.update),
            ),
            ListTile(
              title: Text(tr('rulesVersion')),
              subtitle: Text(rulesVersion ?? tr('unknown')),
              trailing: const Icon(Icons.code),
            ),
            const SizedBox(height: 8),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _isLoading ? null : _updateRules,
                icon: _isLoading 
                    ? const SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(strokeWidth: 2),
                      )
                    : const Icon(Icons.download),
                label: Text(_isLoading ? tr('updating') : tr('updateNow')),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _updateRules() async {
    setState(() {
      _isLoading = true;
    });

    try {
      await _securityProvider.updateRules();
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(tr('rulesUpdatedSuccessfully'))),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(tr('rulesUpdateFailed'))),
        );
      }
    } finally {
      if (mounted) {
        setState(() {
          _isLoading = false;
        });
      }
    }
  }

  @override
  void dispose() {
    _securityProvider.dispose();
    super.dispose();
  }
}
