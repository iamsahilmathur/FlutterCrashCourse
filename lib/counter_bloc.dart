import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'package:flutter_catalog/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent,CounterState>{

  CounterBloc(super.initialState){
    on<IncrementEvent>(_mapIncrementEventToState);
  }


  void _mapIncrementEventToState(IncrementEvent event, Emitter<CounterState> emit) {
    emit(state.copyWith(counter: state.counter+1));
  }
}