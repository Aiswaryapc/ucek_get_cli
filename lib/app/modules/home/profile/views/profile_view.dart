import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'package:get/get.dart';

import '../../../../widget/theme/colors.dart';
import '../../../../widget/theme/string_const.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppStrings.profile,
          style: TextStyle(color: AppColors.black),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.microwave_outlined,
            color: AppColors.black,
          )
        ],
      ),
      body: SafeArea(
        child: Material(
          child: Expanded(
            child: Container(
              color: AppColors.darkSilver,
              child: Stack(children: [
                Positioned(
                  top: Get.height * 0.05,
                  child: Stack(children: [
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 150),
                      child: Container(
                        height: Get.height * 0.5,
                        width: Get.width * 0.8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.white,
                          boxShadow: [
                            BoxShadow(
                              color: AppColors.eerieBlack,
                              offset: const Offset(
                                5.0,
                                5.0,
                              ),
                              blurRadius: 10.0,
                              spreadRadius: 2.0,
                            ), //BoxShadow
                            BoxShadow(
                              color: Colors.white,
                              offset: const Offset(0.0, 0.0),
                              blurRadius: 0.0,
                              spreadRadius: 0.0,
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: AppColors.black,
                                  borderRadius: BorderRadius.circular(25)),
                              height: Get.height * 0.15,
                              width: Get.height * 0.15,
                            ),
                            Text(
                              AppStrings.fname,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: Get.textScaleFactor * 20),
                            ),
                            Text(
                              AppStrings.sclass,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: Get.textScaleFactor * 20),
                            ),
                            Text(
                              AppStrings.srno,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: Get.textScaleFactor * 20),
                            ),
                            Text(
                              AppStrings.sadmi_date,
                              textAlign: TextAlign.center,
                              style:
                                  TextStyle(fontSize: Get.textScaleFactor * 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      color: AppColors.chineseSilver,
                      height: Get.height * 0.1,
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          AppStrings.fname,
                          style: TextStyle(
                            fontSize: Get.textScaleFactor * 32,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ]),
                ),
              ]),
            ),
          ),
        ),
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
