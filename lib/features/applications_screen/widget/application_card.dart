import 'package:flutter/material.dart';

import '../../../core_data/ui/common_widgets/app_button.dart';
import '../../../core_data/ui/theme/app_colors.dart';
import '../../../core_data/ui/theme/app_fonts.dart';
import '../../../resources/resources.dart';

class ApplicationCard extends StatelessWidget {
  const ApplicationCard(
      {super.key,
      required this.truck,
      required this.publicNumber,
      required this.price,
      required this.street,
      required this.time,
      required this.callTime,
      required this.freightCar});
  final String truck;
  final String publicNumber;
  final int price;
  final String street;
  final String time;
  final String callTime;
  final String freightCar;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343,
      height: 264,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const SizedBox(
            //   height: 4,
            // ),
            Row(
              children: [
                // const SizedBox(
                // width: 14,
                // ),
                Expanded(
                  child: Text(
                    '$callTime          ',
                    style: AppFonts.w400s16.copyWith(color: AppColors.grey),
                    // overflow: TextOverflow.ellipsis,
                    softWrap: false, 
                      //  maxLines: 8,
                  ),
                ),
                // const SizedBox(
                  // width: ,
                // ),/
                Text(
                  '${price}c',
                  style: AppFonts.w400s16.copyWith(color: AppColors.grey),
                  // softWrap: false,
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Container(
              width: 315,
              height: 1,
              color: AppColors.grey,
            ),
            const SizedBox(
              height: 19,
            ),
            Row(
              children: [
                Image.asset(
                  freightCar,
                  width: 77,
                  height: 51,
                ),
                const SizedBox(
                  width: 25,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      truck,
                      style: AppFonts.w600s20.copyWith(color: AppColors.grey),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      publicNumber,
                      style: AppFonts.w400s18
                          .copyWith(color: AppColors.grey.withOpacity(0.5)),
                    )
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 22,
            ),
            Row(
              children: [
                Image.asset(
                  Images.pointIcon,
                  width: 15,
                  height: 19,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  street,
                  style: AppFonts.w400s16.copyWith(color: AppColors.blackText),
                )
              ],
            ),
            const SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Image.asset(
                  Images.timeIcon,
                  width: 15,
                  height: 19,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  time,
                  style: AppFonts.w400s16.copyWith(color: AppColors.blackText),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            AppButton(
                width: 315,
                isTransparent: false,
                backGroundColor: AppColors.violet,
                borderColor: AppColors.violet,
                title: 'Принять',
                onPressed: () {})
          ],
        ),
      ),
    );
  }
}
