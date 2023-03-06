import 'package:ezy_app/core_data/ui/theme/app_fonts.dart';
import 'package:ezy_app/resources/resources.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../core_data/ui/common_widgets/drawer_widget.dart';
import '../../core_data/ui/common_widgets/gridview_container_widget.dart';
import '../../core_data/ui/theme/app_colors.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      drawer: const DrawerWidget(),
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
                    child: CircleAvatar(
                      backgroundColor: AppColors.white,
                      maxRadius: 25,
                      // minRadius: 25,
                      child: Center(
                          child: Image.asset(
                        Images.profile,
                        width: 24,
                        height: 24,
                      )),
                    ),
                  );
                }),
                const SizedBox(
                  width: 90,
                ),
                Text(
                  'Каталог',
                  style: AppFonts.w600s20.copyWith(color: AppColors.black),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
                decoration: InputDecoration(
              prefixIconColor: AppColors.grey,
              prefixIcon: const Icon(Icons.search),
              label: const Text(
                'Я ищу',
                style: TextStyle(color: AppColors.grey),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: AppColors.violet),
                borderRadius: BorderRadius.circular(10),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: AppColors.violet),
                borderRadius: BorderRadius.circular(10),
              ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: AppColors.violet),
                borderRadius: BorderRadius.circular(10),
              ),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Категории',
              style: AppFonts.w600s20.copyWith(color: AppColors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 106,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                InkWell(
                  onTap: () {
                    
                  },
                  child: Image.asset(
                    Images.allCars,
                    width: 108,
                    height: 105,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  Images.truckCrane,
                  width: 108,
                  height: 105,
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  Images.excavator,
                  width: 108,
                  height: 105,
                ),
                const SizedBox(
                  width: 4,
                ),
                Image.asset(
                  Images.dumpTruck,
                  width: 108,
                  height: 105,
                )
              ]),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Автокраны',
              style: AppFonts.w600s20.copyWith(color: AppColors.black),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16, bottom: 20, right: 16),
              child: GridView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 6,
                      crossAxisCount: 2,
                      mainAxisSpacing: 8),
                  itemBuilder: (context, index) => GridViewContainer(
                        onTap: () {
                          // print('404');
                        },
                      )
                  // Text('ds'),
                  ),
            ),
          )
        ],
      ),
    );
  }
}
