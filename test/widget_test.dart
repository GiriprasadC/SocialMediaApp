import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import 'package:social_media_app/ui/pages/profile_page.dart';

void main() {
  testWidgets('ProfilePage displays username', (WidgetTester tester) async {
    await mockNetworkImagesFor(() async {
      await tester.pumpWidget(
        const MaterialApp(
          home: ProfilePage(),
        ),
      );

      // Let async tasks (like images) complete
      await tester.pumpAndSettle();

      // Verify username is shown
      expect(find.text('@Toa_Heftiba'), findsOneWidget);
    });
  });
}
