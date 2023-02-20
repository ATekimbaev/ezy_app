import 'package:ezy_app/core%20/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';

import '../theme/app_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.width = double.infinity,
    required this.title,
    required this.onPressed,
    this.backGroundColor = AppColors.violet,
    this.isTransparent = true,
    this.fontColor = AppColors.white,
    this.borderColor = AppColors.white,
  });

  final double width;

  final String title;
  final Function() onPressed;
  final Color backGroundColor;
  final bool isTransparent;
  final Color fontColor;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isTransparent ? Colors.transparent : backGroundColor,
          shadowColor: isTransparent ? Colors.transparent : AppColors.black,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 2,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          title,
          style: AppFonts.w700s18.copyWith(
            color: fontColor,
          ),
        ),
      ),
    );
  }
}
