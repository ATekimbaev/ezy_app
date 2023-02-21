import 'package:flutter/material.dart';

import '../theme/app_colors.dart';


bool isPasswors = true;
bool obscureText = false;

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget(
      {super.key,
      required this.label,
      this.onChanged,
      required this.controller,
      this.suffixIcon,
      this.obscureText,
      this.keyboardType,
      this.hintText});
  final String label;
  final Function(String)? onChanged;
  final TextEditingController controller;
  final Widget? suffixIcon;
  final bool? obscureText;
  final TextInputType? keyboardType;
  final String? hintText;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
        keyboardType: widget.keyboardType, // TextInputType.phone,
        controller: widget.controller,
        onChanged: widget.onChanged,
        obscureText: obscureText, //isPasswors
        style: const TextStyle(color: AppColors.white),
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: widget.suffixIcon, //IconButton()
          prefixIconColor: AppColors.white,
          label: Text(
            widget.label,
            style: TextStyle(color: AppColors.white),
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



// IconButton(
//               onPressed: () {
//                 isPasswors = !isPasswors;
//                 setState(() {});
//               },
//               icon: Icon(isPasswors
//                   ? Icons.remove_red_eye
//                   : Icons.energy_savings_leaf)),