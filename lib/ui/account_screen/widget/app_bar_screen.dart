import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../study_screen/study_screen.dart';



class AppBarScreen extends StatelessWidget  implements PreferredSize{
  const AppBarScreen({Key? key, required this.title,}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return  AppBar(
      backgroundColor: AppColors.C_DBE4EC,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => StudyScreen(),
              ));
        },
      ),
      title: Text(
        title,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 17, color: Colors.black, fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
    );
  }

  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size(double.infinity,56)
  ;
}
