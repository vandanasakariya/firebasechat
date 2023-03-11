import 'package:firebasechat/splash_screen/splash_screen.dart';
import 'package:get/get.dart';

import '../first-page/first_page.dart';
import '../login_page/login_page.dart';



mixin Routes {
  static const defaultTransition = Transition.rightToLeft;
  static const firstPage = "/FirstPage";
  static const loginPage = "/LoginPage";
  static const splashScreen = "/SplashScreen";


  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: splashScreen,
      page: () => SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: loginPage,
      page: () => LoginPage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: firstPage,
      page: () => FirstPage(),
      transition: defaultTransition,
    ),

  ];
}