import 'package:flutter/material.dart';

import '../theme/app_colors.dart';

class BackGroundWidget extends StatelessWidget {
  const BackGroundWidget({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppColors.lightViolet,
            AppColors.violet,
          ],
        ),
      ),
      child: child,
    );
  }
}
