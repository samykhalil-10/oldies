import 'package:flutter/material.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/widgets/best_seller_list_view.dart';
import 'package:oldies/widgets/food_list_view.dart';
import 'package:oldies/widgets/home_bottom.dart';
import 'package:oldies/widgets/project_app_bar.dart';
import 'package:oldies/widgets/search_form.dart';
import 'package:oldies/widgets/see-all.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF6F6F8),
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: HomeAppBar(context)),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsetsDirectional.only(
                top: 60,
                start: 20,
                end: 20,
                bottom: 60
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchForm(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Select type',
                  style: Styles.style16,
                ),
                SizedBox(
                  height: 20,
                ),
                FoodListView(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Popular food',
                  style: Styles.style16,
                ),
                SizedBox(
                  height: 20,
                ),
                BestSellerListView(),
                SizedBox(
                  height: 20,
                ),
                SeeAll(),
                SizedBox(
                  height: 20,
                ),
                HomeBottom(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}