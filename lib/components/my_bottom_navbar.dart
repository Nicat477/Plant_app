import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:EdgeInsets.only(left:kDefaultPadding*2,right: kDefaultPadding*2,bottom: kDefaultPadding),
        height:80,
        decoration: BoxDecoration(
            color:Colors.white,
            boxShadow: [
                BoxShadow(
                    offset: Offset(0,-10),
                    blurRadius: 35,
                    color: kPrimaryColor.withOpacity(0.38)
                )
            ]
        ),
        child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                IconButton(onPressed: null, icon: SvgPicture.asset('assets/icons/flower.svg')),
                IconButton(onPressed: null, icon: SvgPicture.asset('assets/icons/heart-icon.svg')),
                IconButton(onPressed: null, icon: SvgPicture.asset('assets/icons/user-icon.svg')),
            ],
        )
    );
  }
}