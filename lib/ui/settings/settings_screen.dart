import 'package:account_settings_logica/ui/settings/choose_your_language/widget/search_field.dart';
import 'package:account_settings_logica/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';
import 'choose_your_language/choose_your_language.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_DBE4EC,
      appBar: GlobalAppBar(title: "Settings",),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height:  height * (36/812),),
           GestureDetector(child: Text("App language",style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15),),onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SearchYourLanguage(),));
           },),

            SizedBox(height:  height * (24/812),),
            Container(
                width: width * (327/375),
                child: Divider(thickness: 1,)),
            SizedBox(height:  height * (24/812),),
            Text("Notification",style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15),),
            SizedBox(height:  height * (24/812),),
            Container(
                width: width * (327/375),
                child: Divider(thickness: 1,)),
            SizedBox(height:  height * (24/812),),
            Text("Notification",style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 15),),

          ],
        ),
      ),
    );
  }
}
