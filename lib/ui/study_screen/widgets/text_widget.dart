import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:account_settings_logica/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Text("Privacy Policy",style: Theme.of(context).textTheme.bodyLarge!.copyWith(letterSpacing: 0.2,color: AppColors.C_64748B.withOpacity(0.4))),
        SizedBox(width: width * (14/375),),
        GestureDetector(child: SvgPicture.asset(AppImage.arrow,color: AppColors.C_64748B.withOpacity(0.4),),onTap: (){
        },),
        SizedBox(width: width * (33/375),),
        Text("Terms",style: Theme.of(context).textTheme.bodyLarge!.copyWith(letterSpacing: 0.2,color: AppColors.C_64748B.withOpacity(0.4))),
        SizedBox(width: width * (14/375),),
        GestureDetector(child: SvgPicture.asset(AppImage.arrow,color: AppColors.C_64748B.withOpacity(0.4),),onTap: (){},),
        SizedBox(width: width * (33/375),),
        Text("English",style: Theme.of(context).textTheme.bodyLarge!.copyWith(letterSpacing: 0.2,color: AppColors.C_64748B.withOpacity(0.4))),
        SizedBox(width: width * (14/375),),
        GestureDetector(child: SvgPicture.asset(AppImage.arrowBottom,color: AppColors.C_64748B.withOpacity(0.4),),onTap: (){},),

      ],
    );
  }
}
