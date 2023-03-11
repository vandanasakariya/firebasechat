import 'package:firebasechat/login_page/login_page.dart';
import 'package:firebasechat/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      getPages: Routes.pages,

    );
  }
}

