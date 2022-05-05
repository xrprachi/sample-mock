import 'package:demo/utils/app_colors.dart';
import 'package:demo/utils/size_utils.dart';
import 'package:flutter/material.dart';

class UserListContent extends StatelessWidget {
  const UserListContent(
      {Key? key,
      required this.name,
      required this.image,
      required this.date,
      required this.email,
      required this.country,
      this.callback})
      : super(key: key);

  final String name;
  final String image;
  final String date;
  final String email;
  final String country;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: callback,
      child: Padding(
        padding: EdgeInsets.all(SizeUtils.horizontalBlockSize),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    left: SizeUtils.horizontalBlockSize,
                    top: SizeUtils.horizontalBlockSize,
                    bottom: SizeUtils.horizontalBlockSize),
                child: Row(
                  children: [
                    Image.network(
                      image,
                      height: SizeUtils.horizontalBlockSize * 14,
                      width: SizeUtils.horizontalBlockSize * 14,
                    ),
                    SizedBox(
                      width: SizeUtils.horizontalBlockSize * 2,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                color: AppColors.textColor,
                                fontSize: SizeUtils.fSize_14(),
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: SizeUtils.horizontalBlockSize * 1.5,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                email,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: AppColors.textColor,
                                    fontSize: SizeUtils.fSize_12(),
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Country | ",
                                    style: TextStyle(
                                        color: AppColors.textColor,
                                        fontSize: SizeUtils.fSize_12(),
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    country,
                                    style: TextStyle(
                                        color: AppColors.textColor,
                                        fontSize: SizeUtils.fSize_12(),
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Text(
              date,
              style: TextStyle(
                  color: AppColors.textColorSubString,
                  fontSize: SizeUtils.fSize_10(),
                  fontWeight: FontWeight.w600),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              size: SizeUtils.horizontalBlockSize * 4,
              color: Colors.grey.shade500,
            )
          ],
        ),
      ),
    );
  }
}
