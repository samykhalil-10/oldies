import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldies/features/layout/cubit.dart';
import 'package:oldies/features/layout/state.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/widgets/item_counter.dart';
import 'package:oldies/widgets/mycart_total_price.dart';
import 'package:oldies/widgets/mycart_type.dart';
import 'package:oldies/widgets/mycart_type_delete.dart';

class MyCart extends StatelessWidget {
  const MyCart({
    super.key,
  });

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
      body: BlocProvider(
        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (BuildContext context, CounterStates state) {},
          builder: (BuildContext context, CounterStates state) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, bottom: 10),
                child: Text(
                  '3 Item',
                  style: Styles.style16,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    ItemsCounter(),
                    SizedBox(
                      width: 15,
                    ),
                    MyCartType(
                        image: 'assets/images/oldies2.png',
                        typeName: 'cobana chicken',
                        typeCoast: '\$94.00'),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 20),
                child: MyCartTypeDelete(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Container(
                  width: 355,
                  child: MyCartType(
                      image: 'assets/images/notification3.png',
                      typeName: 'ًWild Lucy',
                      typeCoast: '\$139.00'),
                ),
              ),
              SizedBox(
                height: 74,
              ),
              MYCartTotalPrice(),
            ],
          ),
        ),
      ),
    );
  }
}