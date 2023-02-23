import 'package:ezy_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';
import 'drawer_tab_settings.dart';

class DriverDrawerWidget extends StatefulWidget {
  const DriverDrawerWidget({super.key});

  @override
  State<DriverDrawerWidget> createState() => _DriverDrawerWidgetState();
}

bool isSwitchOn = false;
bool status = false;

class _DriverDrawerWidgetState extends State<DriverDrawerWidget> {
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
                  width: 41,
                  height: 41,
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
                          AppFonts.w600s20.copyWith(color: AppColors.blackGrey),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      '(+996) 500 000 000',
                      style: AppFonts.w400s16
                          .copyWith(color: AppColors.greynumber),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              width: 260,
              height: 1,
              color: AppColors.container1px,
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Image.asset(
                  Images.list,
                  width: 19,
                  height: 24,
                ),
                const SizedBox(
                  width: 22,
                ),
                Text(
                  '12 заказов',
                  style: AppFonts.w400s16.copyWith(color: AppColors.greynumber),
                )
              ],
            ),
            const SizedBox(
              height: 21,
            ),
            Row(
              children: [
                FlutterSwitch(
                  width: 44,
                  height: 24,
                  activeColor: AppColors.green,
                  value: isSwitchOn,
                  onToggle: (value) {
                    setState(() {
                      isSwitchOn = value;
                    });
                  },
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Онлайн',
                  style: AppFonts.w400s16.copyWith(color: AppColors.blackGrey),
                )
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Container(
              width: 260,
              height: 1,
              color: AppColors.container1px,
            ),
            const SizedBox(
              height: 21,
            ),
            Text(
              'Заявки',
              style: AppFonts.w400s16.copyWith(color: AppColors.blackGrey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Моя техника',
              style: AppFonts.w400s16.copyWith(color: AppColors.blackGrey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'История заказов',
              style: AppFonts.w400s16.copyWith(color: AppColors.blackGrey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Настройки',
              style: AppFonts.w400s16.copyWith(color: AppColors.blackGrey),
            ),
            const SizedBox(
              height: 36,
            ),
            Text(
              'Поддержка',
              style: AppFonts.w400s16.copyWith(color: AppColors.blackGrey),
            ),
          ],
        ),
      ),
    );
  }
}
