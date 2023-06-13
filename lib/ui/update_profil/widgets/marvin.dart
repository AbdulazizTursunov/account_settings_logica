import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/app_image.dart';

class MarvinImage extends StatelessWidget {
  const MarvinImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children:[ Container(
        width: width * (100/375),
        height:  height * (100/812),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            boxShadow:[
              BoxShadow(
                offset: Offset(0,7),
                spreadRadius: -25,
                blurRadius: 20,
                color: Colors.blueAccent,
              )
            ]
        ),child:
      Image.asset(AppImage.marvin),
      ),

        Positioned(
          left: 65,
            child: SvgPicture.asset(AppImage.camera)),
    ]);
  }
}
