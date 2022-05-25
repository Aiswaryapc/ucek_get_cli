import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ucek/app/widget/theme/colors.dart';
import 'package:ucek/app/widget/theme/text_theme.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final List<String> entries = <String>['Class A', 'Class B', 'Class C', 'Class D', 'Class E', 'Class F'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Padding(
        padding: EdgeInsets.only(
            top: Get.height * 0.07,
            left: Get.height * 0.02,
            right: Get.height * 0.02),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '12/12/20022',
                  style: AppTextTheme.theme.bodyText2?.copyWith(
                      color: AppColors.richBlack, fontSize: 16, letterSpacing: 1),
                ),
                Expanded(child: Container()),
                Text(
                  'Total Classes :',
                  style: AppTextTheme.theme.bodyText2?.copyWith(
                      color: AppColors.richBlack, fontSize: 16, letterSpacing: 1),
                ),
                Text(
                  '5',
                  style: AppTextTheme.theme.bodyText2?.copyWith(
                      color: AppColors.richBlack, fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
            SizedBox(height: Get.height*0.04,),
            Text(
              'Ms Shijidha Shain',
              style: AppTextTheme.theme.bodyText2?.copyWith(
                  color: AppColors.richBlack, fontSize: 22, letterSpacing: 1),
            ),
        SizedBox(height: Get.height*0.02,),
        Container(
          height: Get.height*0.6,
          child: ListView.builder(

              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.only(bottom: Get.height*0.02),
                  child: Container(
                    height: Get.height*0.15,
                    color: Colors.amber,
                    child: Center(child: Text(entries[index])),
                  ),
                );
              }
          ),
        ),
            SizedBox(height: Get.height*0.05,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.richBlack,// background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: Container(
                    color: AppColors.richBlack,
                    width: Get.height*0.15,
                    height: Get.height*0.12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("Mark Attendance"), Icon(Icons.event_note_outlined)],
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {  },
                  style: ElevatedButton.styleFrom(
                    primary: AppColors.richBlack,// background
                    onPrimary: Colors.white, // foreground
                  ),
                  child: Container(
                    color: AppColors.richBlack,
                    width: Get.height*0.15,
                    height: Get.height*0.12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("View Attendance"), Icon(Icons.history)],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
