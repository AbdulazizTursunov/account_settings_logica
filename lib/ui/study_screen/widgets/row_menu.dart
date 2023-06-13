import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:account_settings_logica/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class MenuSettings extends StatelessWidget {
  const MenuSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
    height: height * (85/812),
    color: AppColors.C_DBE4EC,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      SvgPicture.asset(AppImage.apps,width: 30,height: 30,),
      SvgPicture.asset(AppImage.korzin,width: 30,height: 30,),
      SvgPicture.asset(AppImage.email,width: 30,height: 30,),
      SvgPicture.asset(AppImage.contactRow,width: 30,height: 30,),
    ],
    ),
    );
  }
}
