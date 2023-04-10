import 'package:bloc/bloc.dart';
import './counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  int init;
  CounterBloc({this.init = 0}) : super(init) {
    // on using class
    on<DecrementCounter>((event, emit) {
      // ini proses event decrement
      emit(state - event.value);
    });
    on<IncrementCounter>((event, emit) {
      // ini proses event increment
      emit(state + event.value);
    });

    // on using enum
    // on<CounterEvent>((event, emit) {
    //   if (event == CounterEvent.decrement) {
    //     emit(state - 1);
    //   } else {
    //     emit(state + 1);
    //   }
    // });
  }

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    print(change);
    super.onChange(change);
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    // TODO: implement onError
    super.onError(error, stackTrace);
  }

  // Penggunaan transition ini untuk memantau perubahan pada event
  // onTrasition hanya ada di penggunaan bloc
  @override
  void onTransition(Transition<CounterEvent, int> transition) {
    // TODO: implement onTransition
    print(transition);
    super.onTransition(transition);
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
