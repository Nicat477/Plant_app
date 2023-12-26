import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/details/components/icon_card.dart';
import 'package:plant_app/screens/details/components/image_and_icons.dart';
import 'package:plant_app/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        ImageAndIcons(size: size),
        TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kPrimaryColor),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ), // Set your desired border radius
                    ),
                  ),
                ),
                child: Text(
                  'Buy Now',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {},
              ),
            ),
            Expanded(child: TextButton(child: Text('Description',style: TextStyle(color: kPrimaryColor),),onPressed: (){},)
            )
          ],
        ),
        
      ]),
    );
  }
}
