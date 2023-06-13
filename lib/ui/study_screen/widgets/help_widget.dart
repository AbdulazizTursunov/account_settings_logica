import 'package:account_settings_logica/ui/study_screen/widgets/dod_widget.dart';
import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:account_settings_logica/utils/app_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HelpWidget extends StatelessWidget {
  const HelpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(children: [
      Container(
        width: width * (327 / 375),
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 13),
        height: height * (85 / 812),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: AppColors.C_52B6DF),
        child: Row(
          children: [
            SvgPicture.asset(
              AppImage.naushnik,
              width: width * (58 / 375),
              height: height * (58 / 812),
            ),
            SizedBox(
              width: width * (23 / 375),
            ),
            Text(
              "How can we help you?",
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontSize: 17, color: AppColors.C_FFFFFF),),],),),
      DodWidget(width: 6, height: 6, top: 22, left: 20, bottom: 58, right: 298),
      DodWidget(width: 3, height: 3, top: 69, left: 26, bottom: 13, right: 298),
      DodWidget(width: 4, height: 4, top: 13, left: 92, bottom: 68, right: 231),
      DodWidget(width: 3, height: 3, top: 73, left: 78, bottom: 9, right: 246),

      SizedBox(height: height * (63/812),),

    ]);
  }
}
// Positioned(
//   left: 270,bottom: 10,
//   child: Stack(children: [
//     Container(
//       width: width * (92/375),
//       height:  height * (92/812),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         gradient: LinearGradient(
//           end: Alignment.topRight,
//           begin: Alignment.topLeft,
//           colors: [
//             AppColors.C_52B6DF.withOpacity(0.1),
//             AppColors.C_FFFFFF,
//           ]
//         ),
//       ),
//     ),  Positioned(
//       top: 30,left: 260 ,
//       child: Container(
//         width: width * (50/375),
//         height:  height * (50/812),
//         decoration: BoxDecoration(
//           shape: BoxShape.circle,
//           border: Border.all(color: AppColors.C_FFFFFF.withOpacity(0.1),width: 5),
//           gradient: LinearGradient(
//               end: Alignment.centerLeft,
//               begin: Alignment.centerLeft,
//               colors: [
//                 AppColors.C_52B6DF,
//                 AppColors.C_FFFFFF
//               ]
//           ),
//         ),
//       ),
//     )
//   ],),
// )