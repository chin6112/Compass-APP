import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const discoveryUrl =
      'http://localhost:8001/oidc/.well-known/openid-configuration/';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Backend 2 Client',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.indigo)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Backend 2 Client')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'OpenID Connect',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                const Text('Discovery endpoint'),
                const SelectableText(discoveryUrl),
                const SizedBox(height: 12),
                const Text('Authorization and token routes are under /oidc/.'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}