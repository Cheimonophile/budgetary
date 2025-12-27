import 'package:flutter_bloc/flutter_bloc.dart';
import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterIncrementPressed>(_onIncrementPressed);
  }

  void _onIncrementPressed(
    CounterIncrementPressed event,
    Emitter<CounterState> emit,
  ) {
    emit(state.copyWith(counter: state.counter + 1));
  }
}
