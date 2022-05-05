import 'dart:math' as math;

import 'package:demo/utils/app_colors.dart';
import 'package:demo/utils/size_utils.dart';
import 'package:flutter/material.dart';

class DiamondShape extends StatelessWidget {
  const DiamondShape({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(
        math.pi / 4,
      ),
      child: Container(
        width: 45,
        height: 45,
        decoration: BoxDecoration(
          color: Colors.orange.shade200,
          border: Border.all(
            width: 3,
            color: Colors.yellow,
          ),
        ),
        child: Center(
          child: Transform(
            alignment: Alignment.center,
            transform: Matrix4.rotationZ(
              -math.pi / 4,
            ),
            child: Text(
              title,
              style: TextStyle(
                  color: AppColors.textColor,
                  fontSize: SizeUtils.fSize_14(),
                  fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ),
    );
  }
}
