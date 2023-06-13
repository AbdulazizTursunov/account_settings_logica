import 'package:account_settings_logica/ui/study_screen/study_screen.dart';
import 'package:account_settings_logica/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.C_DBE4EC,
      body: StudyScreen(),
    );
  }
}
