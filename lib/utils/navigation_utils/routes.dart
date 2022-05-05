import 'package:demo/modules/users/screens/user_detail_screen.dart';
import 'package:demo/modules/users/screens/users_screen.dart';
import 'package:demo/splash_screen.dart';
import 'package:get/get.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;

  // get started
  static const String splash = '/splash';
  static const String userListScreen = '/userList';
  static const String userDetailScreen = '/userDetail';

  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: splash,
      page: () => const SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: userListScreen,
      page: () => UsersScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: userDetailScreen,
      page: () => UserDetailScreen(),
      transition: defaultTransition,
    ),
  ];
}
