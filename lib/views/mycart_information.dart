import 'package:flutter/material.dart';
import 'package:oldies/main_layout/main_layout.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/widgets/card_information.dart';
import 'package:oldies/widgets/det_button.dart';
import 'package:oldies/widgets/mydashed_line.dart';
import 'package:oldies/widgets/nav.dart';
import 'package:oldies/widgets/total_coast.dart';

class MyCartInformation extends StatelessWidget {
  const MyCartInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F8),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Padding(
          padding: const EdgeInsets.all(90.0),
          child: Text(
            'My Cart',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 370,
              height: 745,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact Information',
                    style: Styles.style14black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CardInformation(
                    icon: Icons.email_outlined,
                    info: 'samykhlfllh@gmail.com',
                    infoName: 'Email',
                  ),
                  CardInformation(
                    icon: Icons.phone_outlined,
                    info: '01272429091',
                    infoName: 'Phone',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address',
                    style: Styles.style14black,
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'port fouad,port said',
                    style: Styles.style12,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      width: 295,
                      height: 101,
                      decoration: ShapeDecoration(
                        color: Colors.black.withOpacity(0.33000001311302185),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Image.asset(
                        'assets/images/map.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  Text(
                    'Payment Method',
                    style: Styles.style14black,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/images/paypal.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Visa Card',
                            style: Styles.style14black,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            '******0696 4629',
                            style: Styles.style14gray,
                          )
                        ],
                      ),
                    ],
                  ),
                  Spacer(),
                  TotalCoast(
                    text: 'Subtotal',
                    coast: '\$233.00',
                  ),
                  TotalCoast(text: 'Delivery', coast: '\$20.00'),
                  CustomDashedLine(),
                  SizedBox(
                    height: 25,
                  ),
                  FinalTotalCoast(
                    text: 'Total Coast',
                    coast: '\$253.00',
                  ),
                  defaultButton(
                      function: () {
                        ShowBackToShop(context);
                      },
                      text: 'Checkout')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void ShowBackToShop(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          width: 335,
          height: 375,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Container(
            color: Colors.white,
            child: AlertDialog(
              icon: Image.asset('assets/images/cel.png'),

              title: Text(
                'Your Payment Is \n Successful',
                style: Styles.style20black,
                // textAlign: TextAlign.center,
              ),
              actions: [
                Center(
                  child: Container(
                    width: 199,
                    height: 51,

                    decoration: ShapeDecoration(
                      color: Colors.deepOrange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: MaterialButton(
                      //  color: Colors.blue,
                      onPressed: () {
                        navigateTo(context, MainLayout()); // Close the dialog
                      },
                      child: Text('Back To Shopping'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}