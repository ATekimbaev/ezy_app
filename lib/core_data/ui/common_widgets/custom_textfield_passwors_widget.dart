import 'package:flutter/material.dart';

import '../../../resources/resources.dart';
import '../theme/app_colors.dart';

bool isPasswors = true;
bool obscureText = false;

class CustomTextFieldPassworsWidget extends StatefulWidget {
  const CustomTextFieldPassworsWidget(
      {super.key, required this.lable, this.controller, this.onChanged});
  final String lable;
  final TextEditingController? controller;
  final Function(String)? onChanged;
  @override
  State<CustomTextFieldPassworsWidget> createState() =>
      _CustomTextFieldPassworsWidgetState();
}

class _CustomTextFieldPassworsWidgetState
    extends State<CustomTextFieldPassworsWidget> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      onChanged: widget.onChanged,
      obscureText: isPasswors,
      // keyboardType: TextInputType.phone,
      decoration: InputDecoration(
        label: Text(
          widget.lable,
          style: const TextStyle(color: AppColors.white),
        ),
        prefixIconColor: AppColors.white,
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppColors.white),
            borderRadius: BorderRadius.circular(25)),
        border: OutlineInputBorder(
            borderSide: const BorderSide(width: 1, color: AppColors.white),
            borderRadius: BorderRadius.circular(25)),
        suffixIcon: IconButton(
          onPressed: () {
            isPasswors = !isPasswors;
            setState(() {});
          },
          icon: isPasswors
              ? const Icon(
                  Icons.remove_red_eye_outlined,
                  color: AppColors.white,
                )
              // Image.asset(Images.iconexRemove)
              : Image.asset(Images.iconex),
        ),
      ),
    );
  }
}
