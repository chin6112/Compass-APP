import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const apiBaseUrl = 'http://localhost:8000/api';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Backend 1 Client',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.teal)),
      home: Scaffold(
        appBar: AppBar(title: const Text('Backend 1 Client')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'JWT authentication',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 16),
                const Text('Token endpoint'),
                const SelectableText('$apiBaseUrl/token/'),
                const SizedBox(height: 12),
                const Text('Refresh endpoint'),
                const SelectableText('$apiBaseUrl/token/refresh/'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}