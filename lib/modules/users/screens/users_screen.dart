import 'package:demo/modules/users/controllers/user_controller.dart';
import 'package:demo/modules/users/widgets/user_list_content.dart';
import 'package:demo/utils/navigation_utils/navigation.dart';
import 'package:demo/utils/navigation_utils/routes.dart';
import 'package:demo/utils/size_utils.dart';
import 'package:demo/utils/strings_utils.dart';
import 'package:demo/utils/utils.dart';
import 'package:demo/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({Key? key}) : super(key: key);
  final UserController _userController = Get.put(UserController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: AppString.usersList,
        actions: [
          Padding(
            padding: EdgeInsets.all(SizeUtils.horizontalBlockSize * 2),
            child: const InkWell(
              child: Icon(
                Icons.edit_note_outlined,
                size: 35,
              ),
            ),
          )
        ],
      ),
      body: Obx(
        () => ListView.separated(
            controller: _userController.scrollController,
            padding: EdgeInsets.symmetric(
                horizontal: SizeUtils.horizontalBlockSize * 2.6,
                vertical: SizeUtils.verticalBlockSize),
            itemBuilder: (context, index) {
              if (index >= _userController.userListModel.length) {
                return SizedBox(
                  height: _userController.page.value == 1
                      ? SizeUtils.screenHeight
                      : 60,
                  child: const Center(child: CircularProgressIndicator()),
                );
              } else {
                var user = _userController.userListModel[index];
                return UserListContent(
                  image: user.picture?.medium ?? '',
                  name: user.name?.first ?? "",
                  email: user.email ?? "",
                  country: user.location?.country ?? "",
                  date: Utils.timeSinceDate(user.registered?.date),
                  callback: () {
                    _userController.userListModelIndex =
                        _userController.userListModel[index];
                    Navigation.pushNamed(Routes.userDetailScreen);
                  },
                );
              }
            },
            separatorBuilder: (context, index) {
              return Divider(
                thickness: 2,
                color: Colors.grey[400],
              );
            },
            itemCount: _userController.userListModel.length + 1),
      ),
    );
  }
}
