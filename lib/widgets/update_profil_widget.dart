import 'package:flutter/material.dart';

import '../utils/app_colors.dart';


class UpdateProfilWidget extends StatelessWidget {
  const UpdateProfilWidget({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return  Container(
      width: width * (345/375),
      height:height * (56/812),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.C_52B6DF
      ),child: Center(child: Text(title,style: Theme.of(context).textTheme.titleMedium!.copyWith(color: AppColors.C_FFFFFF,fontSize: 17),)),
    );
  }
}
