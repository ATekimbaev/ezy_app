import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../resources/resources.dart';
import '../theme/app_colors.dart';

class CirlceDrawerButton extends StatelessWidget {
  const CirlceDrawerButton({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColors.white,
      maxRadius: 25,
      // minRadius: 25,
      child: Center(
          child: Image.asset(
        Images.profile,
        width: 24,
        height: 24,
      )),
    );
  }
}
