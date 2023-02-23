import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

bool isPasswors = true;
bool obscureText = false;

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget(
      {super.key,
      required this.label,
      this.onChanged,
      this.controller,
      this.suffixIcon,
      this.obscureText,
      this.keyboardType,
      this.hintText,
      this.df});
  final String label;
  final Function(String)? onChanged;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? hintText;
  final Function()? df;

  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: keyboardType, // TextInputType.phone,
        controller: controller,
        onChanged: onChanged,
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: suffixIcon, //IconButton()
          prefixIconColor: AppColors.white,
          label: Text(
            label,
            style: const TextStyle(color: AppColors.white),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppColors.white),
              borderRadius: BorderRadius.circular(25)),
          border: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: AppColors.white),
              borderRadius: BorderRadius.circular(25)),
        ));
  }
  
}

//IconButton(
//onPressed: () {
//isPasswors = !isPasswors;
//setState(() {});
//},
//icon: Icon(isPasswors
// ? Icons.remove_red_eye
// : Icons.energy_savings_leaf)),
