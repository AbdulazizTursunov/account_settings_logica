import 'package:account_settings_logica/ui/about_us/about_us_screen/about_us_screen.dart';
import 'package:account_settings_logica/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_DBE4EC,
      appBar: GlobalAppBar(
        title: "About Us",
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                GestureDetector(
                  child: Text(
                    "About Us",
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 15),
                  ),onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AboutUsScreen(),));
                },
                ),
                SizedBox(
                  height: height * (16 / 812),
                ),
                Container(
                    width: width * (327 / 375),
                    child: Divider(
                      thickness: 1,
                    )),
                Text(
                  "Help",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15),
                ),
                SizedBox(
                  height: height * (16 / 812),
                ),
                Container(
                    width: width * (327 / 375),
                    child: Divider(
                      thickness: 1,
                    )),
                Text(
                  "Term and Condition",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15),
                ),
                SizedBox(
                  height: height * (16 / 812),
                ),
                Container(
                    width: width * (327 / 375),
                    child: Divider(
                      thickness: 1,
                    )),
                Text(
                  "Data Protection",
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium!
                      .copyWith(fontSize: 15),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
