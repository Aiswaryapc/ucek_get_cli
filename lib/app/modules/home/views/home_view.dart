import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:ucek/app/widget/theme/colors.dart';
import 'package:ucek/app/widget/theme/string_const.dart';
import 'package:ucek/app/widget/theme/text_theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "hi " + AppStrings.fname,
          style: TextStyle(color: AppColors.black),
        ),
        actions: [
          Row(
            children: [
              Icon(
                Icons.microwave_outlined,
                color: AppColors.black,
              ),
            ],
          )
        ],
      ),
      body: SafeArea(
        child: Material(
            child: Expanded(
          child: Padding(
            padding: EdgeInsets.only(
                top: Get.height * 0.1,
                left: Get.width * 0.05,
                right: Get.width * 0.05,
                bottom: Get.height * 0.2),
            child: Container(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: Get.height * 0.04,
                mainAxisSpacing: Get.height * 0.04,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.slimyGreen,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.buttonBlue,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.fireOpalRed,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.selectiveYellow,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: AppColors.white,
        selectedItemColor: AppColors.chineseSilver,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.edit_calendar_outlined,
              //color: AppColors.buttonBlue,
            ),
            label: AppStrings.attendence,
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.edit_calendar_outlined,
                //color: AppColors.buttonBlue,
              ),
              label: AppStrings.studlist),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.edit_calendar_outlined,
                // color: AppColors.white,
              ),
              label: AppStrings.schedule)
        ],
        backgroundColor: AppColors.mediumElectricBlue,
      ),
    );
  }
}
