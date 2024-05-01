import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oldies/features/layout/state.dart';
import 'package:oldies/views/favourite.dart';
import 'package:oldies/views/home-screen.dart';
import 'package:oldies/views/notification.dart';
import 'package:oldies/views/profile_body_screen.dart';

class OldiesCubit extends Cubit<OldiesStates> {
  OldiesCubit() : super(OldiesInitialState());

  static OldiesCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> BottomScreens =
  [
    HomeScreen(),
    FavoritesScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  void changeBottomScreen(int index)
  {
    currentIndex = index;
    emit(OldiesChangeBottomState());
  }

  bool showPassword = true;
  //bool showPassword = false;
  String validationMessage = ''; // Assume you have a validation message in your state

  void clearValidationMessage()
  {
    // Clear the validation message and emit the state
    validationMessage = '';
    emit(ClearValidationMessageState());
  }

  void switchPasswordVisibility()
  {
    showPassword = !showPassword;
    emit(SwitchPasswordVisibilityState());
  }

  void toggleFavorite()
  {
    emit(FavSuccessState());
  }


}
class CounterCubit extends Cubit<CounterStates>
{
  CounterCubit(): super(CounterInitialState());
  static CounterCubit get(context)=>BlocProvider.of(context);// 3l4an a3ml object we 2kdr ast5dmh f ay makan
  int counter =1;

  void minus()
  {
    counter--;
    emit(CounterMinusState(counter));
  }
  void plus()
  {
    counter++;
    emit(CounterPlusState(counter));
  }

}