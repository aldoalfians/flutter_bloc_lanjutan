import 'package:flutter_bloc/flutter_bloc.dart';

class MyObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange
    print("$bloc => $change");
    super.onChange(bloc, change);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    print("$bloc => $error");
    print("$bloc => $stackTrace");
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    print("$bloc => $transition");
    super.onTransition(bloc, transition);
  }
}
