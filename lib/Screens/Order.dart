import 'package:flutter/material.dart';
import 'package:interface_test/utlities/constants.dart';
import 'package:interface_test/Widgets/FoodImage_Structure.dart';
import 'package:interface_test/Screens/Checkout.dart';
const Alignment topleft = Alignment.topLeft;



class Order extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackgroundColor,
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                    alignment: topleft,
                    child: Text(
                      "Order",
                      style: kalignText_Style.copyWith(fontSize: 25),
                    ),
                  ),
                  Align(
                    alignment: topleft,
                    child: Text("Cancel",
                        style: kalignText_Style.copyWith(fontSize: 15)),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(15),
                width: 300,
                height: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: kAll_CardsColors),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Subtotal",
                          style: kAllmaintextStyle,
                        ),
                        Text(
                          "\$49.50",
                          style: kAlldescriptions_style,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Tax & Fees",
                          style: kAllmaintextStyle,
                        ),
                        Text(
                          "\$2.75",
                          style: kAlldescriptions_style,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Delivery",
                          style: kAllmaintextStyle,
                        ),
                        Text(
                          "free",
                          style: kAlldescriptions_style,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Divider(
                      color: Colors.black,
                      height: 15,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Total",
                          style: kAllmaintextStyle.copyWith(fontSize: 24),
                        ),
                        Text("\$ 52.25",
                            style: kAllmaintextStyle.copyWith(fontSize: 24)),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 10,
                child: Container(
                  margin: EdgeInsets.all(25),
                  padding: EdgeInsets.all(15),
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        FoodImage_Structure(),
                        FoodImage_Structure(),
                        FoodImage_Structure(),
                        FoodImage_Structure(),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kAll_CardsColors),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Checkout()));
                      },
                      child: Text(
                        "Checkout",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
