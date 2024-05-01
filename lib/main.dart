import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldies/features/fav/fav_cubit.dart';
import 'package:oldies/features/layout/cubit.dart';
import 'package:oldies/features/layout/state.dart';
import 'package:oldies/views/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(

          create: (BuildContext context) => OldiesCubit(),),
        BlocProvider(create:(context)=> FavCubit()

        )
      ],

      child: BlocConsumer<OldiesCubit,OldiesStates>(

        listener: (BuildContext context, OldiesStates state) {  },
        builder: (BuildContext context, OldiesStates state)=>
            MaterialApp(
                debugShowCheckedModeBanner: false,
                home: OnBoardingScreen()),
      ),

    );
  }
}