import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_lanjutan/general_observer.dart';
import 'package:flutter_bloc_lanjutan/screens/home_screen.dart';

void main() {
  Bloc.observer = MyObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
