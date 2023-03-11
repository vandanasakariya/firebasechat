import 'dart:async';
import 'package:flutter/material.dart';

import '../utils/navigation.dart';
import '../utils/routes.dart';
import '../utils/sizeutils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(
      const Duration(seconds: 3),
          () {
        // final credential = GoogleSign().signInWithGoogle();
        //log("credential-------${credential}");
         Navigation.pushNamed(Routes.loginPage);
        // Navigation.pushNamed(Routes.bottomPage);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(

            child: Image.asset(
              "asset/image/sp.png",
              fit: BoxFit.cover,
              alignment: Alignment.center,
              // height: SizeUtils.verticalBlockSize * 100,
            ),
          ),
        ),
      ),
    );
  }
}