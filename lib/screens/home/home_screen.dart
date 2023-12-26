import 'package:flutter/material.dart';
import 'package:plant_app/components/my_bottom_navbar.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/body.dart';
import 'package:flutter_svg/svg.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppbar(),
        body:Body(),
        bottomNavigationBar: MyBottomNavBar(),
    );
  }

  AppBar buildAppbar() {
    return AppBar(backgroundColor: kPrimaryColor,
          elevation: 0,
          leading: IconButton(
              icon:SvgPicture.asset('assets/icons/menu.svg'),
              onPressed: (){},
          ),
      );
  }
}

