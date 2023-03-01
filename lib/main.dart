import 'package:flutter/material.dart';

import 'features/welcome_screen/welcome_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SFProDisplay'),
      // home: const EntranceScreen(),
      // home: CustomersRegistrationScreen(),
      // home: AutoPartsStore(),
      home: const WelcomeScreen(),
    );
  }
}
