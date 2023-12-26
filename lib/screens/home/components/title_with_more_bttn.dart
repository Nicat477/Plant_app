import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
class TitleWithMoreButton extends StatelessWidget {
  const TitleWithMoreButton({
    super.key,this.title,this.press
  });
  final String? title;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleCustomerWithUnderline(text:title),
          Spacer(),
          TextButton(onPressed: press, child: Text("More",style: TextStyle(color:Colors.white),),style:ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),shape: MaterialStateProperty.all<OutlinedBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0), // Set your desired border radius
            ),
          ),
          ))
        ],
      ),
    );
  }
}

class TitleCustomerWithUnderline extends StatelessWidget {
  
  TitleCustomerWithUnderline({this.text});
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height:24,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: kDefaultPadding/4),
          child: Text(text ?? '',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
        ),
        Positioned(
          bottom:0,
          left:0,
          right: 0,
          child: Container(
            height:7,
            margin:EdgeInsets.only(right: kDefaultPadding/4),
            color:kPrimaryColor.withOpacity(0.2)
          ),
        )
    
      ],),
    );
  }
}