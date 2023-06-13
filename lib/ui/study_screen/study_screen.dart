import 'package:account_settings_logica/ui/account_screen/account_screen.dart';
import 'package:account_settings_logica/ui/settings/settings_screen.dart';
import 'package:account_settings_logica/ui/study_screen/widgets/help_widget.dart';
import 'package:account_settings_logica/ui/study_screen/widgets/item_marvin.dart';
import 'package:account_settings_logica/ui/study_screen/widgets/row_menu.dart';
import 'package:account_settings_logica/ui/study_screen/widgets/text_widget.dart';
import 'package:account_settings_logica/ui/study_screen/widgets/widget_settings.dart';
import 'package:account_settings_logica/ui/update_profil/update_profil.dart';
import 'package:account_settings_logica/utils/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../about_us/about_screen.dart';

class StudyScreen extends StatefulWidget {
  StudyScreen({Key? key}) : super(key: key);

  @override
  State<StudyScreen> createState() => _StudyScreenState();
}

class _StudyScreenState extends State<StudyScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImage.ellipse,
                  width: width * (24 / 375),
                  height: height * (24 / 812),
                ),
                SizedBox(
                  width: width * (8 / 375),
                ),
                Text(
                  "Study",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: height * (16 / 812),
            ),
            Container(
                width: width * (327 / 375),
                child: Divider(
                  thickness: 1,
                )),
            GetItemMarvin(),
            Container(
                width: width * (327 / 375),
                child: Divider(
                  thickness: 1,
                )),
            SizedBox(
              height: height * (40 / 812),
            ),
            GestureDetector(
              child: SettingsWidget(
                icon: AppImage.contact,
                title: "Profile",
                widthIcon: 211,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpdateProfile(),
                    ));
              },
            ),
            SizedBox(
              height: height * (25 / 812),
            ),
            GestureDetector(
              child: SettingsWidget(
                icon: AppImage.success,
                title: "Account",
                widthIcon: 198.7,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AccountScreen(),
                    ));
              },
            ),
            SizedBox(
              height: height * (25 / 812),
            ),
            GestureDetector(
              child: SettingsWidget(
                icon: AppImage.settings,
                title: "Setting",
                widthIcon: 208,
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SettingsScreen(),
                    ));
              },
            ),
            SizedBox(
              height: height * (25 / 812),
            ),
            GestureDetector(
              child: SettingsWidget(
                icon: AppImage.about,
                title: "About",
                widthIcon: 216,
              ),
              onTap: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AboutScreen(),
                    ));
              },
            ),
            SizedBox(
              height: height * (40 / 812),
            ),
            HelpWidget(),
            SizedBox(
              height: height * (40 / 812),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: TextWidget(),
            ),
            SizedBox(
              height: height * (45 / 812),
            ),
            MenuSettings(),
          ],
        ),
      ),
    );
  }
}
