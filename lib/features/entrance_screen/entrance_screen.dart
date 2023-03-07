import 'package:ezy_app/core_data/ui/common_widgets/circle_button.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';

import '../../core_data/ui/common_widgets/app_button.dart';
import '../../core_data/ui/common_widgets/back_gorund_widget.dart';
import '../../core_data/ui/common_widgets/custom_textfield_passwors_widget.dart';
import '../../core_data/ui/common_widgets/custom_textfield_widget.dart';
import '../loading_screen/loading_screen.dart';

bool isPasswors = true;
bool obscureText = false;

class EntranceScreen extends StatefulWidget {
  const EntranceScreen({super.key});

  @override
  State<EntranceScreen> createState() => _EntranceScreenState();
}

class _EntranceScreenState extends State<EntranceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
        child: Column(
          children: [
            const SizedBox(
              height: 53,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                children: [
                  const CircleButtonWidget(),
                  const SizedBox(
                    width: 103,
                  ),
                  Text(
                    'Вход',
                    style: AppFonts.w600s20.copyWith(color: AppColors.white),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12, right: 13),
              child: TextFieldWidget(
                label: 'Номер телефона',
                keyboardType: TextInputType.phone,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12, right: 13),
              child: CustomTextFieldPassworsWidget(
                lable: 'Пароль',
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            AppButton(
              isTransparent: false,
              width: 345,
              backGroundColor: AppColors.white,
              // borderColor: AppColors.white,
              fontColor: AppColors.violet,
              title: 'Войти',
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LoadingScreen()));
              },
            ),
            const SizedBox(
              height: 24,
            ),
            RichText(
              text: TextSpan(
                text: 'Нет аккаунта? ',
                style: AppFonts.w700s16,
                children: <TextSpan>[
                  TextSpan(
                    text: ' Создать',
                    style: AppFonts.w700s18.copyWith(color: AppColors.white),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

// IconButton(
// onPressed: () {
// isPasswors = !isPasswors;
// setState(() {});
// },
// icon: Icon(isPasswors
// ? Icons.remove_red_eye
// : Icons.energy_savings_leaf)),