import 'package:ezy_app/core_data/ui/common_widgets/app_button.dart';
import 'package:ezy_app/features/applications_screen/widget/application_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import '../../core_data/ui/common_widgets/circle_drawer_button.dart';
import '../../core_data/ui/common_widgets/custom_flutter_switch.dart';
import '../../core_data/ui/common_widgets/driver_drawer_widget.dart';
import '../../core_data/ui/theme/app_colors.dart';
import '../../core_data/ui/theme/app_fonts.dart';
import '../../resources/resources.dart';

class ApplicationsScreen extends StatefulWidget {
  const ApplicationsScreen({super.key});

  @override
  State<ApplicationsScreen> createState() => _ApplicationsScreenState();
}

class _ApplicationsScreenState extends State<ApplicationsScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DriverDrawerWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Builder(builder: (context) {
                    return InkWell(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: CirlceDrawerButton(),
                    );
                  }),
                  const SizedBox(
                    width: 90,
                  ),
                  Text(
                    'Заявки',
                    style: AppFonts.w600s20.copyWith(color: AppColors.black),
                  ),
                  const SizedBox(
                    width: 90,
                  ),
                const  CustomSwitch()
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
         const   ApplicationCard(
                truck: 'Автокран',
                publicNumber: '01KG100ABC',
                price: 1000,
                street: 'ул. Байтик Баатыра 100',
                time: '10:00, 10 февраля, сегодня ',
                callTime: 'сейчас',
                freightCar: Images.card),
                 const SizedBox(
              height: 16,
            ),
            const ApplicationCard(
                truck: 'Автокран',
                publicNumber: '01KG100ABC',
                price: 1000,
                street: '11 мкр, дом 10',
                time: '10:00, 10 февраля, сегодня ',
                callTime: '5 мин. назад',
                freightCar: Images.card),
                 const SizedBox(
              height: 16,
            ),
            // const ApplicationCard(
            //     truck: 'Автокран',
            //     publicNumber: '01KG100ABC',
            //     price: 1000,
            //     street: '11 мкр, дом 10',
            //     time: '10:00, 10 февраля, сегодня ',
            //     callTime: '1 час. назад',
            //     freightCar: Images.card),
            //      const SizedBox(
            //   height: 16,
            // ),
          ],
        ),
      ),
    );
  }
}
