import 'package:flutter/material.dart';
import 'package:oldies/widgets/mycart_type.dart';

class MyCartTypeDelete extends StatelessWidget {
  const MyCartTypeDelete({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MyCartType(
            image: 'assets/images/oldies2.png',
            typeName: 'cobana chicken',
            typeCoast: '\$94'),
        SizedBox(
          width: 15,
        ),
        Container(
          width: 58,
          height: 104,

          decoration: ShapeDecoration(
              color: Color(0xFFFF1900),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8))),
          child: IconButton(onPressed: () {  }, icon: Icon(Icons.delete_outlined,
            size: 30,),
            color: Colors.white,
          ),
        )
      ],
    );
  }
}