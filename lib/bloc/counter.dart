import 'package:bloc/bloc.dart';
import './counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  int init;
  CounterBloc({this.init = 0}) : super(init) {
    on<CounterEvent>((event, emit) {
      if (event == CounterEvent.decrement) {
        emit(state - 1);
      } else {
        emit(state + 1);
      }
    });
  }
}

//   @override
//   void onError(Object error, StackTrace stackTrace) {
//     // TODO: implement onError
//     super.onError(error, stackTrace);
//     print(error);
//   }
// }


// Using Cubit
// class CounterBloc extends Cubit<int> {
//   int init;

//   CounterBloc({this.init = 0}) : super(init);

//   void increment() => emit(state + 1);
//   void decrement() => emit(state - 1);

//   @override
//   void onChange(Change<int> change) {
//     // TODO: implement onChange
//     super.onChange(change);
//     print(change);
//   }

//   @override
//   void onError(Object error, StackTrace stackTrace) {
//     // TODO: implement onError
//     super.onError(error, stackTrace);
//     print(error);
//   }
// }
