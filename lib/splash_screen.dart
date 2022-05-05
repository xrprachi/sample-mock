import 'package:demo/utils/navigation_utils/navigation.dart';
import 'package:demo/utils/navigation_utils/routes.dart';
import 'package:demo/utils/size_utils.dart';
import 'package:demo/utils/strings_utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    Future.delayed(const Duration(seconds: 2), () {
      navigateFurther(context);
    });
    return const Scaffold(
      body: SizedBox(
        width: double.maxFinite,
        child: Center(
            child: Text(
          AppString.appName,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
        )),
      ),
    );
  }

  void navigateFurther(BuildContext context) {
    Navigation.replace(Routes.userListScreen);
  }
}
