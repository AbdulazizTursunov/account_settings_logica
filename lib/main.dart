import 'package:account_settings_logica/home/home_screen.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(AccountAndSettings());
}

class AccountAndSettings extends StatelessWidget {
  const AccountAndSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
