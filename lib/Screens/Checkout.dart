import 'package:flutter/material.dart';
import 'package:interface_test/utlities/constants.dart';
import 'package:interface_test/Widgets/FoodImage_Structure.dart';
import 'package:interface_test/Widgets/Payment_Methods_Icons.dart';
import 'package:interface_test/Screens/Order.dart';
const Alignment topleft = Alignment.topLeft;



class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackgroundColor,
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Align(
                alignment: topleft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Order()));
                  },
                  child: Text(
                    "< Back",
                    style: kalignText_Style.copyWith(
                        fontSize: 18, fontWeight: FontWeight.normal),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: topleft,
                child: Text("Checkout",
                    style: kalignText_Style.copyWith(fontSize: 35)),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                      margin: EdgeInsets.all(25),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kAll_CardsColors,
                      ),
                      child: Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Align(
                              alignment: topleft,
                              child: Text(
                                "DELIVERY ADDRESS",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'ADDRESS #1',
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Align(
                              alignment: topleft,
                              child: Text(
                                "PAYMENT METHOD",
                                style: kCheckout_Titles,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'Enter Your Paypal ',
                                suffixIcon: Payment_Methods_Icons(methodIcon: Icons.paypal_sharp,iconColor: Colors.blue),
                              ),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            const TextField(
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText:
                                'Use your account balance, Enter Your password',
                                suffixIcon: Payment_Methods_Icons(methodIcon: Icons.account_balance_wallet,iconColor: Colors.black),
                              ),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "Enter Your Credit Card",
                                  suffixIcon: Payment_Methods_Icons(methodIcon: Icons.credit_card,iconColor: Colors.black)
                              ),
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 75,
                            ),
                            Container(
                              width: 275,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                color: kbackgroundColor,
                              ),
                              child: Center(
                                child: Text(
                                  "Payment",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ),
                            )
                          ],
                        ),
                      )),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 26),
                height: 100,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 16,
                      ),
                      Icon(
                        Icons.fingerprint_rounded,
                        size: 48,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Pay with Touch ID',
                        style: TextStyle(
                            fontWeight: FontWeight.w600, color: Colors.white),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}