import 'package:flutter/material.dart';

import '../utils/styles.dart';

class FoodList extends StatelessWidget {
  const FoodList({super.key, required this.isActive, required this.text});
  final bool isActive ;
  final String text ;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        width: 108,
        height: 40,
        decoration: ShapeDecoration(
            color:isActive ? Colors.deepOrange:  Colors.white,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            shadows: [
              BoxShadow(
                color: Color(0x0A000000),
                blurRadius: 48,
                offset: Offset(0, 2),
                spreadRadius: 0,
              )
            ]
        ),
        //color: Colors.grey,
        duration: Duration(
            milliseconds: 300
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.style14black,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
