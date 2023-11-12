import 'package:basketball_counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit(initialState) : super(CounterAIncrementState());

  int teamAPoints = 0;

  int teamBPoints = 0;

  void teamIncrement(String team, int buttonNumber) {
    if (team == 'A') {
      teamAPoints += buttonNumber;
      emit(CounterAIncrementState());
    }
    if (team == 'B') {
      teamBPoints += buttonNumber;
      emit(CounterBIncrementState());
    }
  }
  void reset(){
    teamAPoints = 0;
    teamBPoints = 0;
    emit(CounterAIncrementState());
  }
}
