import 'package:ezy_app/features/catalog_screen/catalog_screen.dart';
import 'package:flutter/material.dart';
import 'features/auto_parts_store/auto_parts_store.dart';
import 'features/customers_screen/registration_screen/registration_screen.dart';
import 'features/entrance_screen/entrance_screen.dart';
import 'features/map_screen/map_screen.dart';
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
      // home: DriverRegistrationScreen(),
      // home: AutoPartsStore(),
      home: MapScreen(),
      // home: CatalogScreen(),
    );
  }
}
