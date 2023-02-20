import 'package:ezy_app/core%20/ui/theme/app_colors.dart';
import 'package:ezy_app/core%20/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'core /ui/common_widgets/back_gorund_widget.dart';
import 'core /ui/common_widgets/custom_sliding_toggle.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SFProDisplay'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomSlidingToggle(
                  leftLabel: 'leftLabel',
                  rightLabel: 'rightLabel',
                  onChange: (value) {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
