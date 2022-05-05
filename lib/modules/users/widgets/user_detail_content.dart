import 'package:demo/utils/app_colors.dart';
import 'package:demo/utils/size_utils.dart';
import 'package:flutter/material.dart';

class UserDetailContent extends StatelessWidget {
  const UserDetailContent({
    Key? key,
    required this.title,
    required this.subTitle,
  }) : super(key: key);

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
              color: AppColors.textColor,
              fontSize: SizeUtils.fSize_14(),
              fontWeight: FontWeight.w600),
        ),
        Text(
          subTitle,
          style: TextStyle(
              color: AppColors.textColor,
              fontSize: SizeUtils.fSize_14(),
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
