import 'package:ezy_app/core_data/ui/common_widgets/app_button.dart';
import 'package:ezy_app/core_data/ui/common_widgets/back_gorund_widget.dart';
import 'package:ezy_app/core_data/ui/common_widgets/circle_button.dart';
import 'package:ezy_app/core_data/ui/common_widgets/custom_textfield_passwors_widget.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core_data/ui/common_widgets/custom_textfield_widget.dart';

class DriverRegistrationScreen extends StatefulWidget {
  const DriverRegistrationScreen({super.key});

  @override
  State<DriverRegistrationScreen> createState() =>
      _DriverRegistrationScreenState();
}

class _DriverRegistrationScreenState extends State<DriverRegistrationScreen> {
  void openFiles() async {
    FilePickerResult? resultFile = await FilePicker.platform.pickFiles();
    if (resultFile != null) {
      PlatformFile file = resultFile.files.first;
      print(file.name);
      print(file.bytes);
      // print(file.extension);
      print(file.path);
    } else {
      //false
    }
  }

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
                  contant(),
              const SizedBox(
                height: 30,
              ),
              AppButton(
                title: 'Зарегистрироваться',
                fontColor: AppColors.violet,
                onPressed: () {},
                isTransparent: false,
                backGroundColor: AppColors.white,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget contant() {
    return Container(
      width: 340,
      height: 60,
      decoration: BoxDecoration(
          color: AppColors.violet,
          border: Border.all(color: AppColors.white),
          borderRadius: BorderRadius.circular(25)),
      child: Row(
        children: [
          const SizedBox(
            width: 14,
          ),
          Text(
            'Загрузить права',
            style: AppFonts.w400s16.copyWith(color: AppColors.white),
          ),
          const SizedBox(
            width: 155,
          ),
          IconButton(
              onPressed: () {
                openFiles();
              },
              icon: const Icon(
                Icons.cloud_upload_outlined,
                color: AppColors.white,
              ))
        ],
      ),
    );
  }
}
