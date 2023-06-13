import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:flutter/material.dart';

class GlobalAdressEmail extends StatelessWidget {
  const GlobalAdressEmail({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Text(title,style: TextStyle(
          color: AppColors.C_0F172A,fontWeight: FontWeight.w400,fontSize: 15,letterSpacing: 0.2
      )),
    );
  }
}
