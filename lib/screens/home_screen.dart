import 'package:activitat2/providers/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var prov = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Comptador amb Shared Preferences', 
          textAlign: TextAlign.center,
        ),
      ),
        body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
            '${prov.counter}',
            style: const TextStyle(fontSize: 50),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(child: SizedBox()),
              ElevatedButton(onPressed: () => prov.addCounter(), child: Text('+', style: TextStyle(fontSize: 30))),
              Expanded(child: SizedBox()),
              ElevatedButton(onPressed: () => prov.removeCounter(), child: Text('-', style: TextStyle(fontSize: 30))),
              Expanded(child: SizedBox()),
            ],
          )
              ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => prov.resetCounter(),
          child: const Icon(Icons.restart_alt),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}