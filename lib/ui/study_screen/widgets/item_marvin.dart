import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:account_settings_logica/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class GetItemMarvin extends StatelessWidget {
  const GetItemMarvin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(AppImage.marvin,height: height * (58/812),width: width * (58/375),),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text("Welcome",style: Theme.of(context).textTheme.titleSmall!.copyWith(color: AppColors.C_0F172A.withOpacity(0.4),),
            ),
    SizedBox(height: 4,),
    Text("Marvin McKinney",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 17),),],
        ),
        SizedBox(width: width * (90/375),),
       Container(
         padding: EdgeInsets.all(12),
         width: width * (40/375),
         height:  height * (40/812),
         decoration: BoxDecoration(
           shape: BoxShape.circle,
           color: AppColors.C_F1F5F9
         ),child:  SvgPicture.asset(AppImage.singOut,width: width * (16/375),height:  height *(16/812),),
       ),

      ],
    );
  }
}
