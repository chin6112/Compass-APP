import 'package:flutter_test/flutter_test.dart';

import 'package:frontend2/main.dart';

void main() {
  testWidgets('shows OpenID Connect discovery endpoint', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Backend 2 Client'), findsOneWidget);
    expect(
      find.text('http://localhost:8001/oidc/.well-known/openid-configuration/'),
      findsOneWidget,
    );
  });
}