import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_image.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({Key? key, required this.title, required this.icon, required this.widthIcon}) : super(key: key);
  final String title;
  final String icon;
  final double widthIcon;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          padding: EdgeInsets.all(10),
          width: width * (40/375),
          height:  height * (40/812),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.C_F1F5F9
          ),child:  Center(child: SvgPicture.asset(icon,width: width * (16/375),height:  height *(20/812),)),
        ),
        SizedBox(width: width * (14/375),),
        Text(title, style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 17,),),
        SizedBox(width: width * (widthIcon/375),),
        SvgPicture.asset(AppImage.arrow),
      ],
    );

  }
}
