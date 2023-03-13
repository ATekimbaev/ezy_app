import 'package:ezy_app/core_data/ui/common_widgets/app_button.dart';
import 'package:ezy_app/core_data/ui/common_widgets/back_gorund_widget.dart';
import 'package:ezy_app/core_data/ui/common_widgets/circle_button.dart';
import 'package:ezy_app/core_data/ui/common_widgets/custom_textfield_passwors_widget.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core_data/ui/common_widgets/custom_textfield_widget.dart';
import '../../check_code_screen/check_code.dart';

class CustomersRegistrationScreen extends StatelessWidget {
  const CustomersRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BackGroundWidget(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 45,
              ),
              Row(
                children: [
                  CircleButtonWidget(onTap: () {
                    Navigator.pop(context);
                  }),
                  const Spacer(),
                  Text('Регистрация',
                      style: AppFonts.w600s20.copyWith(color: AppColors.white)),
                  const Spacer(),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextFieldWidget(
                  label: 'Фамилия',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextFieldWidget(
                  label: 'Имя',
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(13.0),
                child: TextFieldWidget(
                  label: 'Номер телефона',
                  keyboardType: TextInputType.phone,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.all(13.0),
                  child: CustomTextFieldPassworsWidget(
                    lable: 'Пароль',
                  )),
              const SizedBox(
                height: 30,
              ),
              AppButton(
                title: 'Зарегистрироваться',
                fontColor: AppColors.violet,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckCodeScreen(),
                    ),
                  );
                },
                isTransparent: false,
                backGroundColor: AppColors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
