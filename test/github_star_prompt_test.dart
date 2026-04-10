import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:updatium/services/github_star_prompt.dart';
import 'package:easy_localization/easy_localization.dart';

void main() {
  group('GitHubStarPrompt Tests', () {
    setUp(() async {
      // Clear SharedPreferences before each test
      SharedPreferences.setMockInitialValues({});
    });

    testWidgets('should set first launch date on first initialization', (WidgetTester tester) async {
      // Create a mock widget tree for context
      final testWidget = MaterialApp(home: Container());
      await tester.pumpWidget(testWidget);

      await GitHubStarPrompt.initializeAndCheck(tester.element(find.byType(MaterialApp)));

      final prefs = await SharedPreferences.getInstance();
      expect(prefs.containsKey('first_launch_date'), isTrue);
    });

    testWidgets('should not show prompt before 7 days', (WidgetTester tester) async {
      // Set a first launch date 3 days ago
      final prefs = await SharedPreferences.getInstance();
      final threeDaysAgo = DateTime.now().subtract(const Duration(days: 3));
      await prefs.setInt(
        'first_launch_date',
        threeDaysAgo.millisecondsSinceEpoch,
      );

      final testWidget = MaterialApp(home: Container());
      await tester.pumpWidget(testWidget);

      await GitHubStarPrompt.initializeAndCheck(tester.element(find.byType(MaterialApp)));
      await tester.pump();

      // Dialog should not appear
      expect(find.byType(AlertDialog), findsNothing);
    });

    testWidgets('should mark prompt as shown when user dismisses', (WidgetTester tester) async {
      // Set first launch date 8 days ago
      final prefs = await SharedPreferences.getInstance();
      final eightDaysAgo = DateTime.now().subtract(const Duration(days: 8));
      await prefs.setInt(
        'first_launch_date',
        eightDaysAgo.millisecondsSinceEpoch,
      );

      final testWidget = MaterialApp(home: Container());
      await tester.pumpWidget(testWidget);

      await GitHubStarPrompt.initializeAndCheck(tester.element(find.byType(MaterialApp)));
      await tester.pumpAndSettle();

      // Dialog should appear
      expect(find.byType(AlertDialog), findsOneWidget);
      expect(find.text('githubStarPromptTitle'.tr()), findsOneWidget);

      // Tap "Don't show again" button
      final dontShowButton = find.text('githubStarPromptDontShowAgain'.tr());
      expect(dontShowButton, findsOneWidget);
      await tester.tap(dontShowButton);
      await tester.pumpAndSettle();

      // Dialog should be dismissed
      expect(find.byType(AlertDialog), findsNothing);

      // Prompt should be marked as shown
      expect(prefs.getBool('has_shown_star_prompt'), isTrue);
    });

    testWidgets('should reset correctly', (WidgetTester tester) async {
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
