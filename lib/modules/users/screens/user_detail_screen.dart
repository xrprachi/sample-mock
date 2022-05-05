import 'package:demo/modules/users/controllers/user_controller.dart';
import 'package:demo/modules/users/widgets/dimond_shape.dart';
import 'package:demo/modules/users/widgets/user_detail_content.dart';
import 'package:demo/utils/app_colors.dart';
import 'package:demo/utils/size_utils.dart';
import 'package:demo/utils/utils.dart';
import 'package:demo/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserDetailScreen extends StatelessWidget {
  UserDetailScreen({Key? key}) : super(key: key);
  final UserController _userController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: _userController.userListModelIndex?.name?.first ?? "",
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: SizeUtils.horizontalBlockSize * 6,
            horizontal: SizeUtils.horizontalBlockSize * 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _userImage(),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 3,
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[600],
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize,
            ),
            UserDetailContent(
                title: "Email: ",
                subTitle: "${_userController.userListModelIndex?.email}"),
            SizedBox(
              height: SizeUtils.verticalBlockSize,
            ),
            UserDetailContent(
                title: "Date joined: ",
                subTitle: Utils.timeSinceDate(
                    _userController.userListModelIndex?.registered?.date)),
            SizedBox(
              height: SizeUtils.verticalBlockSize,
            ),
            UserDetailContent(
                title: "DOB: ",
                subTitle: Utils.convertMillisecondsToFormatDate(
                    _userController.userListModelIndex?.dob?.date)),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 2.5,
            ),
            Text(
              "LOCATION",
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: SizeUtils.fSize_14(),
                  fontWeight: FontWeight.w600),
            ),
            Divider(
              thickness: 2,
              color: Colors.grey[600],
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 0.5,
            ),
            UserDetailContent(
                title: "City: ",
                subTitle:
                    "${_userController.userListModelIndex?.location?.city}"),
            UserDetailContent(
                title: "State: ",
                subTitle:
                    "${_userController.userListModelIndex?.location?.state}"),
            UserDetailContent(
                title: "Country: ",
                subTitle:
                    "${_userController.userListModelIndex?.location?.country}"),
            UserDetailContent(
                title: "Postcode: ",
                subTitle:
                    "${_userController.userListModelIndex?.location?.postcode}"),
          ],
        ),
      ),
    );
  }

  Widget _userImage() {
    return Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: Stack(
          children: [
            SizedBox(
              height: 190,
              width: 190,
              child: Image.network(
                _userController.userListModelIndex?.picture?.large ?? "",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                right: 2,
                bottom: 2,
                child: DiamondShape(
                    title: (_userController.userListModelIndex?.dob?.age ?? "")
                        .toString())),
          ],
        ),
      ),
    );
  }
}
