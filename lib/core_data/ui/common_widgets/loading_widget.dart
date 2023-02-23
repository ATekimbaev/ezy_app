import 'package:ezy_app/core_data/ui/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 154,
      height: 154,
      child: TweenAnimationBuilder<double>(
        tween: Tween<double>(begin: 0.0, end: 1),
        duration: const Duration(milliseconds: 3500),
        builder: (context, value, _) => CircularProgressIndicator(
            // backgroundColor: AppColors.white,
            color: AppColors.white,
            value: value),
      ),
    );
  }
}
