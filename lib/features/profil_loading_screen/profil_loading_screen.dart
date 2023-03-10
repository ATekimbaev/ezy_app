import 'package:ezy_app/core_data/ui/common_widgets/app_button.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:ezy_app/features/applications_screen/applications_screen.dart';
import 'package:ezy_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core_data/ui/common_widgets/back_gorund_widget.dart';
import '../catalog_screen/catalog_screen.dart';

class ProfilLoadingScreen extends StatelessWidget {
  const ProfilLoadingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Images.avatarProfil,
              width: 154,
              height: 154,
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              'Иван Иванов',
              style: AppFonts.w400s16.copyWith(color: AppColors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '(+996) 500 000 000',
              style: AppFonts.w400s16.copyWith(color: AppColors.white),
            ),
            const SizedBox(
              height: 50,
            ),
            AppButton(
                isTransparent: false,
                backGroundColor: AppColors.lightViolet,
                width: 375,
                title: 'Продолжить',
                onPressed: () async {
                  // ignore: use_build_context_synchronously
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CatalogScreen(),
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
