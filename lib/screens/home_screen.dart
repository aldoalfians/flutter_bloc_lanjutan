import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_lanjutan/bloc/counter.dart';
import 'package:flutter_bloc_lanjutan/bloc/counter_event.dart';

class HomeScreen extends StatelessWidget {
  final CounterBloc counterBloc = CounterBloc();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enum Class"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                color: Colors.blue,
                child: InkWell(
                  onTap: () {
                    counterBloc.add(CounterEvent.decrement);
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 200,
                color: Colors.red,
                child: Center(
                  child: BlocBuilder<CounterBloc, int>(
                    bloc: counterBloc,
                    builder: (context, state) {
                      return Text(
                        "$state",
                        style:
                            const TextStyle(fontSize: 50, color: Colors.white),
                      );
                    },
                  ),
                ),
              ),
              Material(
                color: Colors.blue,
                child: InkWell(
                  onTap: () {
                    counterBloc.add(CounterEvent.increment);
                  },
                  child: const SizedBox(
                    height: 100,
                    width: 70,
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
