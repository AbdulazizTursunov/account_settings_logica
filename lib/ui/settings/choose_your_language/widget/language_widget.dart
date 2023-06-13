import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class Language extends StatelessWidget {
  const Language({Key? key, required this.image, required this.title, required this.icon}) : super(key: key);
final String image;
final String title;
final String icon;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child:
      Row(
        children: [
          Container(width: width * (40/375),height: height * (40/812),
              decoration: BoxDecoration(shape: BoxShape.circle),
              child: Image.asset(image,width: width * (40/375),height:  height * (40/812),)),
          SizedBox(width:  width * (12/375),),
          Container(
            width: width * (213/375),height:  height * (24/812),
              child: Text(title, style: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 17),)),
          SizedBox(width:  width * (22/375),),
          GestureDetector(child: SvgPicture.asset(icon),onTap: (){},)
        ],
      ),
    );
  }
}
