import 'package:flutter/material.dart';
import 'package:oldies/widgets/food_list.dart';

class FoodListView extends StatefulWidget {
  const FoodListView({super.key});

  @override
  State<FoodListView> createState() => _FoodListViewState();
}

class _FoodListViewState extends State<FoodListView> {

  final List<String>shoesList =
  [
    'chicken burger',
    'beef burger',
    'sides',
  ];
  int activeIndex = 0;
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Center(
        child: ListView.builder(
            itemCount: shoesList.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: GestureDetector(
                  onTap: () {
                    activeIndex = index;
                    setState(() {});
                  },
                  child: FoodList(
                      isActive: activeIndex == index,
                      text:shoesList[index] ),
                ),
              );
            }),
      ),
    );
  }
}