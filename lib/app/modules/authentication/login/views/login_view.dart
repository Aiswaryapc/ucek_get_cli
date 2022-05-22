import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:ucek/app/widget/theme/colors.dart';
import 'package:ucek/app/widget/theme/string_const.dart';
import 'package:ucek/app/widget/theme/text_field.dart';
import 'package:ucek/app/widget/theme/text_theme.dart';

import '../controllers/login_controller.dart';
final _emailController = TextEditingController();
final _passwordController = TextEditingController();
class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Material(
            child: Container(
              color: AppColors.white,
              child: Padding(
                padding: EdgeInsets.only(top: 25, left: 16, bottom: 36.9),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 70,),
                      Text(
                        AppStrings.signinCaption1,
                        style: AppTextTheme.theme.headline3?.copyWith(
                          color: AppColors.richBlack,
                          fontSize: 22,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        AppStrings.signinCaption2,
                        style: AppTextTheme.theme.headline3?.copyWith(
                          color: AppColors.richBlack,
                          fontSize: 18,
                          letterSpacing: 1,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 100,),
                      Padding(
                        padding: EdgeInsets.only(top: 16.0, right: 15),
                        child: AuthenticationTextField(
                          hintText: AppStrings.userId,
                          isObscure: false,
                          keyboardType: KeyboardType.email,
                          didEndTextEdit: () {},
                          textInputAction: TextInputAction.done,
                          controller: _emailController,
                          borderColor: AppColors.white,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15.0, right: 15),
                        child: AuthenticationTextField(
                          hintText: AppStrings.password,
                          isObscure: true,
                          keyboardType: KeyboardType.password,
                          didEndTextEdit: () {},
                          textInputAction: TextInputAction.done,
                          controller: _passwordController,
                          borderColor: AppColors.white,
                        ),
                      ),
                      Padding(
                        padding:
                        EdgeInsets.only(left: 28.0, right: 15.0, top: 14.0),
                        child: Text(
                          AppStrings.forgotpass,
                          style: AppTextTheme.theme.headline3?.copyWith(
                            color: AppColors.white,
                            fontSize: 16,
                            letterSpacing: 1,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(right:15.0,top: 15.0),
                              child: ElevatedButton(
                                onPressed: () {
                                },
                                child: const Text(
                                  AppStrings.signin,
                                  style: TextStyle(
                                      fontSize: 17, fontWeight: FontWeight.w500),
                                ),
                                style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(vertical: 14),
                                    primary: AppColors.selectiveYellow ,
                                    shape: const StadiumBorder()),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          top: 15,
                          right: 19,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              AppStrings.signinCaption3,
                              style: AppTextTheme.theme.headline3?.copyWith(
                                color: AppColors.richBlack,
                                fontSize: 16,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            InkWell(
                              onTap: () {

                              },
                              child: Text(
                                AppStrings.createAccount,
                                style: AppTextTheme.theme.headline3?.copyWith(
                                  color: AppColors.selectiveYellow ,
                                  fontSize: 16,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
