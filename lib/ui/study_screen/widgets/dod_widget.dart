import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class DodWidget extends StatelessWidget {
  const DodWidget({Key? key, required this.width, required this.height, required this.top, required this.left, required this.bottom, required this.right}) : super(key: key);
  final double width;
  final double height;
  final double top;
  final double left;
  final double bottom;
  final double right;

  @override
  Widget build(BuildContext context) {
    return  Positioned(
        top: top,left: left,bottom: bottom,right: right,
        child: Container(
          width: width,
          height: height,
          decoration:
          BoxDecoration(color: AppColors.C_FFFFFF, shape: BoxShape.circle),
        ));
  }
}
