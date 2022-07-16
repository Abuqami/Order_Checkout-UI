

import 'package:flutter/material.dart';
import 'package:interface_test/utlities/constants.dart';

class FoodImage_Structure   extends StatelessWidget  {
  const FoodImage_Structure({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(image: NetworkImage(
            "https://www.bbcgoodfoodme.com/wp-content/uploads/2022/04/Myrra-Food-photography33079-768x512.jpg"
        ),
          height: 125,
          width: 85,
        ),

        SizedBox(
          width: 15,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Crispy Chicken San",
              style: kAllmaintextStyle
            ),
            Text(
              "2x tuna, 3x vegetables, 1 noodle",
              style: kAlldescriptions_style.copyWith(fontSize: 14,fontWeight: FontWeight.normal),
            ),
            Text(
              "\$29.50",
              style: kAllmaintextStyle.copyWith(color: Colors.red),
            ),
          ],
        )
      ],
    );
  }
}