import 'package:flutter/material.dart';

import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class TabSettings extends StatelessWidget {
  const TabSettings({
    super.key,
    required this.settingsTab,
  });
  final String settingsTab;
  @override
  Widget build(BuildContext context) {
    return Text(
      settingsTab,
      style: AppFonts.w400s14.copyWith(color: AppColors.white),
    );
  }
}