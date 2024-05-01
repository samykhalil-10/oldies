import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldies/features/layout/cubit.dart';
import 'package:oldies/features/layout/state.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => OldiesCubit(),
      child: BlocConsumer<OldiesCubit, OldiesStates>(
        listener: (BuildContext context, OldiesStates state) {},
        builder: (BuildContext context, OldiesStates state) {
          var appCubit = OldiesCubit.get(context);
          return Scaffold(
              body: appCubit.BottomScreens[appCubit.currentIndex],
              bottomNavigationBar: CurvedNavigationBar(
                index: 0,
                height: 50,
                items: const <Widget>[
                  Icon(Icons.home_outlined,
                      color: Colors.deepOrange, size: 30),
                  Icon(Icons.favorite_outline_outlined,
                      color: Colors.deepOrange, size: 30),
                  // Padding(
                  //   padding: EdgeInsetsDirectional.only(
                  //     bottom: 30
                  //   ),
                  //   child: Container(
                  //     width: 56,
                  //     height: 56,
                  //
                  //     child: CircleAvatar(
                  //       backgroundColor: Colors.blue,
                  //       child: Icon(Icons.shopping_bag_outlined,
                  //       color: Colors.white,
                  //       size: 30,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                  Icon(Icons.notifications_outlined,
                      color: Colors.deepOrange, size: 30),
                  Icon(Icons.person_outline,
                      color: Colors.deepOrange, size: 30),
                ],
                color: Colors.white,
                backgroundColor: Colors.white,
                animationCurve: Curves.easeInOut,
                animationDuration: const Duration(milliseconds: 300),
                onTap: (index) {
                  setState(() {
                    appCubit.currentIndex = index;
                  });
                },
              ));
        },
      ),
    );
  }
}