import 'package:flutter/material.dart';
import 'package:oldies/views/mycart_information.dart';
import 'package:oldies/widgets/det_button.dart';
import 'package:oldies/widgets/mydashed_line.dart';
import 'package:oldies/widgets/nav.dart';
import 'package:oldies/widgets/total_coast.dart';

class MYCartTotalPrice extends StatelessWidget {
  const MYCartTotalPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration(color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 36,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            TotalCoast(
              text: 'Subtotal',
              coast: '\$233.00',
            ),
            TotalCoast(
                text: 'Delivery',
                coast: '\$20.00'),
            CustomDashedLine(),
            SizedBox(
              height: 25,
            ),
            FinalTotalCoast(
              text: 'Total Coast',
              coast: '\$253.0',

            ),
            defaultButton(function: (){
              navigateTo(context, MyCartInformation());
            },
                text: 'Checkout')

          ],
        ),
      ),
    );
  }
}