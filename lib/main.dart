import 'package:ezy_app/core_data/ui/common_widgets/drawer_widget.dart';
import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import 'core_data/ui/common_widgets/back_gorund_widget.dart';
import 'core_data/ui/common_widgets/custom_textfield_widget.dart';
import 'core_data/ui/common_widgets/driver_drawer_widget.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'SFProDisplay'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingController = TextEditingController();
  String currentText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: 
      // DrawerWidget(),
       DriverDrawerWidget(),
      appBar: AppBar(
        // title: const Text('KindaCode'),
      ),
      body: BackGroundWidget(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                TextFieldWidget(
                  label: 'Имя',
                ),
                // CircleAvatarWidget(),
               
              ],
            ),
          ),
        ),
      ),
      // body: Padding(
      //   padding: const EdgeInsets.all(30),
      //   child: Center(
      //     child: PinCodeTextField(
      //       keyboardType: TextInputType.number,
      //       length: 4,
      //       obscureText: false,
      //       animationType: AnimationType.fade,
      //       pinTheme: PinTheme(
      //         activeColor: AppColors.pinTextFieldBorderColor,
      //         inactiveColor: AppColors.pinTextFieldBorderColor,
      //         selectedColor: AppColors.pinTextFieldBorderColor,
      //         borderWidth: 1,
      //         shape: PinCodeFieldShape.box,
      //         borderRadius: BorderRadius.circular(10),
      //         fieldHeight: 66,
      //         fieldWidth: 66,
      //         inactiveFillColor: AppColors.white,
      //         selectedFillColor: AppColors.white,
      //         activeFillColor: AppColors.white,
      //       ),
      //       animationDuration: const Duration(milliseconds: 300),
      //       backgroundColor: AppColors.lightGrey,
      //       enableActiveFill: true,
      //       controller: textEditingController,
      //       onCompleted: (v) {
      //         debugPrint("Completed");
      //       },
      //       onChanged: (value) {
      //         debugPrint(value);
      //         setState(() {
      //           currentText = value;
      //         });
      //       },
      //       beforeTextPaste: (text) {
      //         return true;
      //       },
      //       appContext: context,
      //     ),
      //   ),
      // ),
    );
  }
}
