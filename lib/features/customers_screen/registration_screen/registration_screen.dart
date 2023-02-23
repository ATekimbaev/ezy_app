import 'package:ezy_app/core_data/ui/common_widgets/back_gorund_widget.dart';
import 'package:ezy_app/core_data/ui/common_widgets/circle_button.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CustomersRegistrationScreen extends StatelessWidget {
  const CustomersRegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackGroundWidget(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  CircleButtonWidget(onTap: () {}),
                  const Spacer(),
                  Text('Регистрация',
                      style: AppFonts.w600s20.copyWith(color: AppColors.white)),
                  const Spacer(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
