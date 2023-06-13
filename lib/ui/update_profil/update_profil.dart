import 'package:account_settings_logica/ui/update_profil/widgets/marvin.dart';
import 'package:account_settings_logica/ui/update_profil/widgets/widget_global.dart';
import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:account_settings_logica/widgets/global_appbar.dart';
import 'package:account_settings_logica/widgets/update_profil_widget.dart';
import 'package:flutter/material.dart';
import '../../widgets/global_adres_name.dart';
import '../../widgets/global_text_field.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({Key? key}) : super(key: key);

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  Color color = Color(0xFFFFFFFF);
  bool male = true;
  bool famela = false;


  @override
  void initState() {
    male = true;
    famela = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: AppColors.C_DBE4EC,
      appBar:const GlobalAppBar(title: "Profil",),
      body: Container(
        margin:const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
            children: [
              SizedBox(height: height * (53/812),),
             const Center(child: MarvinImage()),
              SizedBox(height:  height * (20/812),),
              GlobalAdressEmail(title: "Name"),
              FieldWidget(type: TextInputType.name, hintText: "Marvin McKinney"),
              SizedBox(height:  height * (10/812),),

              GlobalAdressEmail(title: "Email"),
              FieldWidget(type: TextInputType.emailAddress, hintText: "marvin@email.com"),
              SizedBox(height:  height * (10/812),),
              GlobalAdressEmail(title: "Date of birth"),
              FieldWidget(type: TextInputType.number, hintText: "11/08/1997"),
              SizedBox(height:  height * (10/812),),
              GlobalAdressEmail(title: "Phone Number"),
              FieldWidget(type: TextInputType.phone, hintText: "702-889-5347"),
              SizedBox(height:  height * (10/812),),
              GlobalAdressEmail(title: "Student ID"),
              FieldWidget(type: TextInputType.phone, hintText: "#87654"),
              SizedBox(height:  height * (10/812),),
              GlobalAdressEmail(title: "Gender",),
              SizedBox(height:  height * (8/812),),
             Row(
               children: [
                 SelectWidget(title: "Male", number: 2),
                 SizedBox(width: width * (15/375),),
                 SelectWidget(title: "Female", number: 1),

               ],
             ),
              SizedBox(height: height * (15/375),),
              GlobalAdressEmail(title: "Address"),
              SizedBox(width: width * (8/375),),
             FieldWidget(type: TextInputType.streetAddress, hintText: "1106 Sunrise Road Las Vegas, NV 89102"),
              SizedBox(height: height * (24/375),),
             UpdateProfilWidget(title: "Update Profil"),
              SizedBox(height: height * (24/375),),

            ],
          ),

      ),
    );
  }
}
