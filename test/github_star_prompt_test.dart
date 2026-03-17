import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:updatium/services/github_star_prompt.dart';
import 'package:updatium/generated/app_localizations.dart';

void main() {
  group('GitHubStarPrompt Tests', () {
    setUp(() async {
      // Clear SharedPreferences before each test
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('should set first launch date on first initialization', (tester) async {
      // Create a mock widget tree for context
      final testWidget = MaterialApp(home: Container());
      await tester.pumpWidget(testWidget);

      final context = tester.element(find.byType(Container));
      await GitHubStarPrompt.initializeAndCheck(context);

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.containsKey('first_launch_date'), isTrue);
    });

    testWidgets('should not show prompt before 7 days', (tester) async {
      // Set a first launch date 3 days ago
      final prefs = await SharedPreferences.getInstance();
      final threeDaysAgo = DateTime.now().subtract(const Duration(days: 3));
      await prefs.setInt(
        'first_launch_date',
        threeDaysAgo.millisecondsSinceEpoch,
      );

      final testWidget = MaterialApp(home: Container());
      await tester.pumpWidget(testWidget);

      final context = tester.element(find.byType(Container));
      await GitHubStarPrompt.initializeAndCheck(context);
      await tester.pump();

      // Dialog should not appear
      expect(find.byType(AlertDialog), findsNothing);
    });

    testWidgets('should mark prompt as shown when user dismisses', (tester) async {
      // Set first launch date 8 days ago
      final prefs = await SharedPreferences.getInstance();
      final eightDaysAgo = DateTime.now().subtract(const Duration(days: 8));
      await prefs.setInt(
        'first_launch_date',
        eightDaysAgo.millisecondsSinceEpoch,
      );

      final testWidget = MaterialApp(home: Container());
      await tester.pumpWidget(testWidget);

      final context = tester.element(find.byType(Container));
      await GitHubStarPrompt.initializeAndCheck(context);
      await tester.pumpAndSettle();

      // Dialog should appear
      expect(find.byType(AlertDialog), findsOneWidget);
      expect(find.text(AppLocalizations.of(context)!.githubStarPromptTitle), findsOneWidget);

      // Tap "Don't show again" button
      final dontShowButton = find.text(AppLocalizations.of(context)!.githubStarPromptDontShowAgain);
      expect(dontShowButton, findsOneWidget);
      await tester.tap(dontShowButton);
      await tester.pumpAndSettle();

      // Dialog should be dismissed
      expect(find.byType(AlertDialog), findsNothing);

      // Prompt should be marked as shown
      expect(prefs.getBool('has_shown_star_prompt'), isTrue);
    });

    testWidgets('should reset correctly', (tester) async {
      // Set some values
      final prefs = await SharedPreferences.getInstance();
      await prefs.setInt(
        'first_launch_date',
        DateTime.now().millisecondsSinceEpoch,
      );
      await prefs.setBool('has_shown_star_prompt', true);

      // Reset
      await GitHubStarPrompt.reset();

      // Values should be cleared
      expect(prefs.containsKey('first_launch_date'), isFalse);
      expect(prefs.containsKey('has_shown_star_prompt'), isFalse);
    });
  });
}
