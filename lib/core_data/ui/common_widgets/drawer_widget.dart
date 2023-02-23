import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../resources/resources.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';
import 'custom_sliding_toggle.dart';
import 'drawer_tab_settings.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
//*GG
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 60,
            ),
            Row(
              children: [
                Image.asset(
                  Images.avatar,
                  width: 19,
                  height: 24,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Иван Иванов',
                      style:
                          AppFonts.w600s20.copyWith(color: AppColors.grey),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '(+996) 500 000 000',
                      style: AppFonts.w400s16
                          .copyWith(color: AppColors.lightgrey),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 45,
            ),
            Text(
              'Каталог',
              style: AppFonts.w400s16.copyWith(color: AppColors.grey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'История',
              style: AppFonts.w400s16.copyWith(color: AppColors.grey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Настройки',
              style: AppFonts.w400s16.copyWith(color: AppColors.grey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Информация',
              style: AppFonts.w400s16.copyWith(color: AppColors.grey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Поддержка',
              style: AppFonts.w400s16.copyWith(color: AppColors.grey),
            ),
            const SizedBox(
              height: 300,
            ),
            CustomSlidingToggle(
              leftLabel: 'Заказчик',
              onChange: (int value) {},
              rightLabel: 'Исполнитель',
            )
          ],
        ),
      ),
    );
  }
}
