import 'package:flutter/material.dart';
import 'package:oldies/features/layout/cubit.dart';
import 'package:oldies/utils/styles.dart';

class ItemsCounter extends StatelessWidget {
  const ItemsCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 58,
      height: 112,
      decoration: ShapeDecoration(
        color: Colors.deepOrange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Column(
        children: [
          IconButton(onPressed: (){
            CounterCubit.get(context).plus();
          },
            icon:Icon( Icons.add,
              color: Colors.white,),

          ),
          Text(
            ' ${CounterCubit.get(context).counter}',
            style: Styles.style14,
            textAlign: TextAlign.center,
          ),
          IconButton(onPressed: ()
          {
            CounterCubit.get(context).minus();
          },
            icon:Icon( Icons.remove,
              color: Colors.white,),

          ),

        ],
      ),
    );
  }
}