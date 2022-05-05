import 'package:demo/utils/app_colors.dart';
import 'package:demo/utils/navigation_utils/navigation.dart';
import 'package:demo/utils/size_utils.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({Key? key, required this.title, this.leading, this.actions})
      : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  final Size preferredSize;
  final Widget? leading;
  final String title;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      leading: leading ??
          InkWell(
            onTap: () {
              Navigation.pop();
            },
            child: const Icon(
              Icons.keyboard_arrow_left,
              size: 35,
            ),
          ),
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.textColor,
          fontWeight: FontWeight.w500,
          fontSize: SizeUtils.fSize_16(),
        ),
      ),
      actions: actions,
    );
  }
}
