import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'core/router/router.dart';

Future<void> main() async {
  setPathUrlStrategy();

  CustomNavigationHelper.instance;
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: CustomNavigationHelper.router,
      title: 'ID Generator',
      supportedLocales: const [
        Locale('en'), // English
      ],
    );
  }
}
