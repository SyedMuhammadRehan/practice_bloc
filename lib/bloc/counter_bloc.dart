import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterEvent>((event, emit) {
      if (event is CounterIncrementPressed) {
        emit(state + 1);
      } else if (event is CounterDecrementPressed) {
        emit(state - 1);
      }

      // TODO: implement event handler
    });
  }
}
