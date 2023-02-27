import 'package:ezy_app/core_data/ui/common_widgets/app_button.dart';
import 'package:ezy_app/core_data/ui/common_widgets/back_gorund_widget.dart';
import 'package:ezy_app/core_data/ui/common_widgets/custom_sliding_toggle.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:ezy_app/features/customers_screen/registration_screen/registration_screen.dart';
import 'package:ezy_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../auto_parts_store/auto_parts_store.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomSlidingToggle(
                leftLabel: 'Заказчик',
                rightLabel: 'Исполнитель',
                onChange: (val) {},
              ),
              const SizedBox(height: 100),
              Image.asset(Images.logo, height: 150),
              const SizedBox(height: 111),
              Text(
                'Добро пожаловать!',
                style: AppFonts.w700s30.copyWith(color: AppColors.white),
              ),
              const SizedBox(height: 20),
              Text(
                'Приветствуем вас на площадке аренды \nстроительной техники',
                style: AppFonts.w400s16.copyWith(
                  color: AppColors.white,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 75),
              AppButton(
                isTransparent: false,
                backGroundColor: AppColors.lightViolet,
                title: 'Регистрация',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CustomersRegistrationScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 25),
              TextButton(
                onPressed: () {},
                child: Text(
                  'У меня уже есть аккаунт',
                  style: AppFonts.w400s16.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
              // const SizedBox(height: 100)
              SizedBox(
                  height: 34,
                  width: 168,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        backgroundColor: AppColors.lightViolet,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 2,
                            color: AppColors.white,
                          ),
                          borderRadius: BorderRadius.circular(39),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>const AutoPartsStore()));
                      },
                      child: Text(
                        'Магазин автозапчастей',
                        style:
                            AppFonts.w700s12.copyWith(color: AppColors.white),
                      ))),
            ],
          ),
        ),
      ),
    );
  }
}
