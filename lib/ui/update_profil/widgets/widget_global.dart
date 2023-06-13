import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:account_settings_logica/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectWidget extends StatelessWidget {
  const SelectWidget({Key? key, required this.title, required this.number}) : super(key: key);
  final String title;

  final int number;


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30),
      width: width * (156/375),
      height:  height *(48/812),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.C_CBD5E1.withOpacity(0.4),
      ),child:
      Row(
        children: [
          number == 1? SvgPicture.asset(AppImage.select):SvgPicture.asset(AppImage.noSelect),
          SizedBox(width: width * (10/375),),
          Text(title,style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15),),
        ],
      ),
    );
  }
}
