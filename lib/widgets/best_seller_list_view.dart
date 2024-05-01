import 'package:flutter/material.dart';
import 'package:oldies/widgets/bestseller.dart';

class BestSellerListView extends StatefulWidget {
  const BestSellerListView({super.key});

  @override
  State<BestSellerListView> createState() => _BestSellerListViewState();
}

class _BestSellerListViewState extends State<BestSellerListView> {
  final List<String> bestSeller = [
    'assets/images/angry bird.png',
    'assets/images/juicy lucy.png'
  ];
  final List<String> bestSellerText =
  [
    'Angry Bird',
    'Juicy Lucy',
  ];
  final List <String> bestSellerCoast=[
    '\$99.00',
    '\$115.00'
  ];
  int activeIndex = 0;

  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
          itemCount: bestSeller.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  activeIndex = index;
                  setState(() {});
                },
                child: BestSeller(
                  image: bestSeller[index],
                  typeText: bestSellerText[index],
                  typeCoast: bestSellerCoast[index],

                ),
              ),
            );
          }),
    );

  }
}