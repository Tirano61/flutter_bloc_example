

import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit{
  CounterCubit(): super(5);


  void incrementBy(int value){
    emit( state + value );
  }

  

}