import 'package:flutter/material.dart';
import 'package:oldies/utils/styles.dart';
import 'package:oldies/views/mycart.dart';
import 'package:oldies/widgets/nav.dart';

Widget HomeAppBar(context)=> AppBar(
  backgroundColor:  Colors.deepOrange,
  leading:
  Image.asset('assets/images/actions.png',
    width: 20,
    height: 18,
  ),


  title: Center(
    child: Text(
      'Oldies',
      style: Styles.style32,
      textAlign: TextAlign.center,
    ),
  ),
  actions: [
    IconButton( onPressed: () {
      navigateTo(context, MyCart()); },
      icon:Icon(Icons.shopping_bag_outlined,
        size: 35,) ,)
  ],



);