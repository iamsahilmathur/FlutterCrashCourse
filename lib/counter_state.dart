import 'package:equatable/equatable.dart';

class CounterState extends Equatable{
   int counter;
   CounterState({required this.counter});


   CounterState copyWith({int? counter}) {
     return CounterState(
       counter: counter ?? this.counter,
     );
   }

  @override
  List<Object?> get props => [counter];
}

//At least We have to create initial for the Bloc initilization
class CounterInitialState extends CounterState{
  CounterInitialState({required super.counter});
}

