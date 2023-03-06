import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../resources/resources.dart';
import '../theme/app_colors.dart';
import '../theme/app_fonts.dart';

class GridViewContainer extends StatelessWidget {
  const GridViewContainer({super.key, this.onTap});
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 168,
      height: 176,
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(9)),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              Images.card,
              width: 156,
              height: 111,
            ),
            const SizedBox(
              height: 6,
            ),
            Row(
              children: [
                // const Spacer(),
                Text(
                  'КАМАЗ 53605',
                  style: AppFonts.w400s16.copyWith(color: AppColors.grey),
                ),
                const SizedBox(
                  width: 26,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: InkWell(
                    onTap: onTap,
                    child: Image.asset(
                      Images.arrowUp,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
                const Spacer(),
                const SizedBox(
                  height: 0.96,
                ),
              ],
            ),
            Text(
              '16 тонн',
              style: AppFonts.w400s16.copyWith(color: AppColors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
