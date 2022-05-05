import 'package:demo/utils/app_colors.dart';
import 'package:demo/utils/strings_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/navigation_utils/routes.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      debugShowCheckedModeBanner: false,
      title: AppString.appName,
      theme: ThemeData(
        brightness: Brightness.light,
        backgroundColor: AppColors.backgroundColor,
        appBarTheme: AppBarTheme(
          color: AppColors.appBarColor,
          iconTheme: IconThemeData(
            color: AppColors.textColor,
          ),
        ),
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        disabledColor: Colors.transparent,
        buttonBarTheme:
            const ButtonBarThemeData(alignment: MainAxisAlignment.center),
      ),
      initialRoute: Routes.splash,
      getPages: Routes.pages,
      builder: (context, child) {
        return Scaffold(
          body: child,
        );
      },
    );
  }
}
