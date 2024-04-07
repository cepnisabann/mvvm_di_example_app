import 'package:empty_di_page/pages/examplepage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'di/locator.dart';

bool isLogged = false;
Future<void> main() async {
  setupDI();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/empty': (context) => const ExamplePage(),
      },
      home: const ExamplePage(),
    );
  }
}
