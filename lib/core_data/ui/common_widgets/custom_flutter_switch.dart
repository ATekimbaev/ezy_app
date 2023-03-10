import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theme/app_colors.dart';

class CustomSwitch extends StatefulWidget {
  const CustomSwitch({super.key});

  @override
  State<CustomSwitch> createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  bool isSwitchOn = false;
  bool status = false;
  @override
  Widget build(BuildContext context) {
    return FlutterSwitch(
      width: 44,
      height: 24,
      activeColor: AppColors.green,
      value: isSwitchOn,
      onToggle: (value) {
        setState(() {
          isSwitchOn = value;
        });
      },
    );
  }
}
