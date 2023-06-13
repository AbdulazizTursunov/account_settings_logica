import 'package:account_settings_logica/ui/about_us/about_us_screen/app_bar_about/app_bar_about.dart';
import 'package:account_settings_logica/widgets/global_appbar.dart';
import 'package:flutter/material.dart';

class AboutUsScreen extends StatefulWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  State<AboutUsScreen> createState() => _AboutUsScreenState();
}

class _AboutUsScreenState extends State<AboutUsScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return
      Scaffold(
        appBar: AppBarAbout(title: "",),
        body: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: height * (47/812),),
             Expanded(child: ListView(
               children: [
                 Text("About Us?",style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 17),),
                 SizedBox(height: height * (47/812),),
                 Text('''Study is a  Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit. Morbi tellus ut \nsagittis libero augue interdum. ''',style: Theme.of(context).textTheme.bodyLarge,),
                 SizedBox(height: height * (24/812),),
                 Container(
                     width: width * (327 / 375),
                     child: Divider(
                       thickness: 1,
                     )),
                 Text("Lorem Ipsum",style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 15),),
                 SizedBox(height: height * (18/812),),
                 Text('''Lorem ipsum dolor sit amet, consectetur \nadipiscing elit. Morbi tellus ut sagittis libero \naugue interdum.  ''',style: Theme.of(context).textTheme.bodyLarge,),
                 SizedBox(height: height * (18/812),),
                 Text(''' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tellus ut sagittis libero augue interdum. ''',style: Theme.of(context).textTheme.bodyLarge,),
                 SizedBox(height: height * (18/812),),
                 Text(''' Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tellus ut sagittis libero augue interdum. ''',style: Theme.of(context).textTheme.bodyLarge,),


               ],
             ))


            ],
          ),
        ),
      );
  }
}
