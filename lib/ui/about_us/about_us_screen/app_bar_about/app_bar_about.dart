import 'package:account_settings_logica/ui/about_us/about_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../utils/app_colors.dart';



class AppBarAbout extends StatelessWidget  implements PreferredSize{
  const AppBarAbout({Key? key, required this.title,}) : super(key: key);
  final String title;


  @override
  Widget build(BuildContext context) {
    return  AppBar(
      systemOverlayStyle:const SystemUiOverlayStyle(
        statusBarColor:  AppColors.C_DBE4EC,
      ),
      backgroundColor: AppColors.C_DBE4EC,
      elevation: 0,
      leading: IconButton(
        icon:const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>const AboutScreen(),
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
  Size get preferredSize =>const Size(double.infinity,56)
  ;
}
