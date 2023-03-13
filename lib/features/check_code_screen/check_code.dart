import 'package:ezy_app/core_data/ui/common_widgets/back_gorund_widget.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:ezy_app/features/loading_screen/loading_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CheckCodeScreen extends StatefulWidget {
  const CheckCodeScreen({super.key});

  @override
  State<CheckCodeScreen> createState() => _CheckCodeScreenState();
}

class _CheckCodeScreenState extends State<CheckCodeScreen> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BackGroundWidget(
          child: Column(
            children: [
              const SizedBox(height: 35),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text(
                  'Регистрация',
                  style: AppFonts.w600s20.copyWith(
                    color: AppColors.white,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.85,
                decoration: const BoxDecoration(
                  color: AppColors.lightGrey,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Проверочный код',
                        style: AppFonts.w500s30.copyWith(color: AppColors.grey),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Введите код из сообщения\n(+996) 500 000 000',
                        style: AppFonts.w400s16.copyWith(color: AppColors.grey),
                      ),
                      const SizedBox(height: 32),
                      PinCodeTextField(
                        cursorColor: AppColors.grey,
                        length: 4,
                        obscureText: false,
                        animationType: AnimationType.fade,
                        pinTheme: PinTheme(
                          borderWidth: 1,
                          activeColor: AppColors.pinTextFieldBorderColor,
                          selectedColor: AppColors.pinTextFieldBorderColor,
                          inactiveColor: AppColors.pinTextFieldBorderColor,
                          selectedFillColor: AppColors.lightGrey,
                          disabledColor: AppColors.lightGrey,
                          inactiveFillColor: AppColors.lightGrey,
                          shape: PinCodeFieldShape.box,
                          borderRadius: BorderRadius.circular(10),
                          fieldHeight: 66,
                          fieldWidth: 66,
                          activeFillColor: Colors.white,
                        ),
                        animationDuration: const Duration(milliseconds: 300),
                        backgroundColor: AppColors.lightGrey,
                        enableActiveFill: true,
                        controller: textEditingController,
                        onCompleted: (v) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoadingScreen(),
                            ),
                          );
                        },
                        onChanged: (value) {
                          debugPrint(value);
                          setState(() {
                            currentText = value;
                          });
                        },
                        beforeTextPaste: (text) {
                          return true;
                        },
                        appContext: context,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
