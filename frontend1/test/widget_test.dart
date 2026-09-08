import 'package:flutter_test/flutter_test.dart';

import 'package:frontend1/main.dart';

void main() {
  testWidgets('shows JWT backend endpoints', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Backend 1 Client'), findsOneWidget);
    expect(find.text('http://localhost:8000/api/token/'), findsOneWidget);
    expect(find.text('http://localhost:8000/api/token/refresh/'), findsOneWidget);
  });
}