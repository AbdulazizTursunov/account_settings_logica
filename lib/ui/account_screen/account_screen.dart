import 'package:account_settings_logica/ui/account_screen/widget/app_bar_screen.dart';
import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:account_settings_logica/widgets/global_appbar.dart';
import 'package:account_settings_logica/widgets/update_profil_widget.dart';
import 'package:flutter/material.dart';

import '../../widgets/global_adres_name.dart';
import '../../widgets/global_text_field.dart';


class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_DBE4EC,
      appBar:GlobalAppBar(title: "Account",),

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [SizedBox(height: height * (36/812),),
            GlobalAdressEmail(title: "Old Password"),
            FieldWidget(type: TextInputType.visiblePassword, hintText: "Old password"),
            SizedBox(height:  height * (16/812),),
            GlobalAdressEmail(title: "New Password"),

            FieldWidget(type: TextInputType.visiblePassword, hintText: "New password"),
            SizedBox(height:  height * (16/812),),
            GlobalAdressEmail(title: "Confirm Password"),
            FieldWidget(type: TextInputType.visiblePassword, hintText: "Confirm Password"),
            SizedBox(height:  height * (24/812),),
            UpdateProfilWidget(title: "Update Password")



          ],
        ),
      ),
    );
  }
}
