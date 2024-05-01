import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/views/favourite.dart';
import 'package:oldies/views/login_screen.dart';
import 'package:oldies/views/mycart.dart';
import 'package:oldies/views/notification.dart';
import 'package:oldies/widgets/myDivider.dart';
import 'package:oldies/widgets/nav.dart';
import 'package:oldies/widgets/setting_list.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.deepOrange,
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40,

              ),
              child: Container(
                width: 96,
                height: 96,
                child: CircleAvatar(

                  backgroundColor:Color(0xFFF6F6F8) ,
                  child: Image.asset('assets/images/new.png',
                    fit: BoxFit.fill,
                  ),

                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'samy khalil',
              style: Styles.style20,
            ),
            SizedBox(height: 20,),
            SettingList(icon: Icons.person_outline,
                function: () {  }, iconName: 'Profile'),
            SettingList(icon: Icons.shopping_bag_outlined,
                function: () { navigateTo(context, MyCart()); }, iconName: 'My Cart'),
            SettingList(icon: Icons.favorite_outline_outlined,
                function: () {  navigateTo(context, FavoritesScreen());}, iconName: 'Favorite'),
            SettingList(icon: CupertinoIcons.cart,
                function: () {  }, iconName: 'Orders'),
            SettingList(icon: Icons.notifications_outlined,
                function: () { navigateTo(context, NotificationScreen()); }, iconName: 'Notifications'),
            SizedBox(
              height: 40,
            ),
            myDivider(),
            SizedBox(
              height: 40,
            ),
            SettingList(icon: Icons.output_outlined,
                function: () {
                  navigateAndFinish(context, Login_Screen());
                }, iconName: 'Sign Out'),



          ],
        ),
      ),
    );
  }
}