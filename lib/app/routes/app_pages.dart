import 'package:get/get.dart';

import '../modules/authentication/bindings/authentication_binding.dart';
import '../modules/authentication/login/bindings/login_binding.dart';
import '../modules/authentication/login/views/login_view.dart';
import '../modules/authentication/sign_up/bindings/sign_up_binding.dart';
import '../modules/authentication/sign_up/views/sign_up_view.dart';
import '../modules/authentication/views/authentication_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.AUTHENTICATION,
      page: () => AuthenticationView(),
      binding: AuthenticationBinding(),
      children: [
        GetPage(
          name: _Paths.LOGIN,
          page: () => LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: _Paths.SIGN_UP,
          page: () => SignUpView(),
          binding: SignUpBinding(),
        ),
      ],
    ),
  ];
}
