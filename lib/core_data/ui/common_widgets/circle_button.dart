import 'package:ezy_app/resources/resources.dart';
import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class CircleButtonWidget extends StatelessWidget {
  const CircleButtonWidget({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: AppColors.white,
        maxRadius: 25,
        // minRadius: 25,
        child: Center(
          child: Image.asset(
            Images.icons,
            width: 40,
            height: 25,
          ),
        ),
      ),
    );
  }
}
