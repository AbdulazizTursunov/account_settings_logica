import 'package:account_settings_logica/ui/settings/choose_your_language/widget/app_bar.dart';
import 'package:account_settings_logica/ui/settings/choose_your_language/widget/language_widget.dart';
import 'package:account_settings_logica/ui/settings/choose_your_language/widget/search_field.dart';
import 'package:account_settings_logica/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_colors.dart';

class SearchYourLanguage extends StatefulWidget {
  const SearchYourLanguage({Key? key}) : super(key: key);

  @override
  State<SearchYourLanguage> createState() => _SearchYourLanguageState();
}

class _SearchYourLanguageState extends State<SearchYourLanguage> {
  Color color = Color(0xFFFFFFFF);
  bool mail= true;
  bool fameal = false;

  @override
  void initState() {

    mail = true;
    fameal = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Scaffold(
        backgroundColor: AppColors.C_DBE4EC,
        appBar: AppBarLanguage(title: "Choose your language",),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
         SearchField(type: TextInputType.name, hintText: "Search"),
                  SizedBox(height:  height*(32/812),),
               Expanded(
                 child: ListView(
                   children: [
                     Language(image: AppImage.indonesia, title: "Indonesia", icon: AppImage.oval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.phillips, title: "Philippines", icon: AppImage.noOval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.italy, title: "Italy", icon: AppImage.noOval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.ireland, title: "Ireland", icon: AppImage.noOval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.german, title: "German", icon: AppImage.noOval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.malasia, title: "Malaysia", icon: AppImage.noOval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.america, title: "America", icon: AppImage.noOval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.belgia, title: "Belgia", icon: AppImage.noOval),
                     SizedBox(height:  height*(24/812),),
                     Language(image: AppImage.newZeland, title: "New Zeland", icon: AppImage.noOval),

                   ],
                 ),
               )





            ],
          ),
        ),
      );
  }
}
