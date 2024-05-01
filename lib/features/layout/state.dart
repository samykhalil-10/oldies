abstract class OldiesStates{}

class OldiesInitialState extends OldiesStates {}

class OldiesChangeBottomState extends OldiesStates {}

class OldiesChangeModeState extends OldiesStates {}

class SwitchPasswordVisibilityState extends  OldiesStates{}

class FavSuccessState extends OldiesStates{}
class FavErrorState extends OldiesStates{}
//...........................................................
abstract class CounterStates{}
class CounterInitialState extends CounterStates{}
class CounterPlusState extends CounterStates{
  final int counter;

  CounterPlusState(this.counter);
}
class CounterMinusState extends CounterStates{
  final int counter;

  CounterMinusState(this.counter);

}
class ClearValidationMessageState extends OldiesStates {}