import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';


class FieldWidget extends StatelessWidget {
  const FieldWidget({Key? key, required this.type, required this.hintText}) : super(key: key);
  final TextInputType type;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),
            keyboardType: type,
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: TextStyle(color: AppColors.C_CBD5E1),
              enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide: BorderSide(color: AppColors.C_CBD5E1)),
              focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10),borderSide:BorderSide(color:AppColors.C_CBD5E1 )),
              fillColor: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
