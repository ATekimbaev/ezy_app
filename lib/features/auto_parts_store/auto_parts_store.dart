import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:ezy_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../core_data/ui/common_widgets/app_button.dart';

class AutoPartsStore extends StatelessWidget {
  const AutoPartsStore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 186,
          ),
          Image.asset(
            Images.frame,
            width: 143,
            height: 141,
          ),
          const SizedBox(
            height: 18,
          ),
          Center(
            child: Text(
              'Страница находиться\n       в разработке',
              style: AppFonts.w700s30.copyWith(color: AppColors.black),
            ),
          ),
          const SizedBox(
            height: 283,
          ),
          SizedBox(
              height: 34,
              width: 117,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: AppColors.violet,
                      ),
                      borderRadius: BorderRadius.circular(39),
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Назад',
                    style: AppFonts.w700s12.copyWith(color: AppColors.black),
                  ))),
          // AppButton(
          //   // width: 117,
          //   onPressed: () {  }, title: 'Назад',)
        ],
      ),
    );
  }
}
