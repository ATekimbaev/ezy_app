import 'dart:async';

import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core_data/ui/common_widgets/back_gorund_widget.dart';
import '../profil_loading_screen/profil_loading_screen.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 4),
        (() => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const ProfilLoadingScreen()))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 154,
              height: 154,
              child: TweenAnimationBuilder<double>(
                tween: Tween<double>(begin: 0.0, end: 1),
                duration: const Duration(milliseconds: 3500),
                builder: (context, value, _) => CircularProgressIndicator(
                    // backgroundColor: AppColors.white,
                    color: AppColors.white,
                    value: value),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              'Загружаем ваш профиль',
              style: AppFonts.w400s16.copyWith(color: AppColors.white),
            )
          ],
        ),
      ),
    );
  }
}
