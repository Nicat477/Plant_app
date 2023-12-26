import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plants.dart';
import 'package:plant_app/screens/home/components/header_with_searchedbox.dart';
import 'package:plant_app/screens/home/components/recommends_plant.dart';
import 'package:plant_app/screens/home/components/title_with_more_bttn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderwithSearchedBox(size: size),
          TitleWithMoreButton(
            title:'Recommended',
            press:(){},
          ),
          RecommendsPlants(),
          TitleWithMoreButton(
            title: 'Featured Plants',
            press: (){}
          ),
          FeaturePlants(),
          SizedBox(height:kDefaultPadding)
        ],
      ),
    );
  }
}




  

