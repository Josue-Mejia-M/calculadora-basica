import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // MyApp({super.key});
  int contador = 10;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app', // solo para android
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            // centerTitle: false,
            title: const Align(
              alignment: Alignment.center,
              child: Text('Calculadora Basica'),
            ),
          ),
          body: Center(
            // color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Contador 2.0',
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
                Text(
                  '$contador',
                  style: TextStyle(fontSize: 28.0, color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.blueAccent,
                child: const Icon(Icons.exposure_plus_2),
                onPressed: () {
                  contador = contador + 2;

                  //redibuja todos los widgets
                  //que sufrieron cambios
                  setState(() {});
                },
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                backgroundColor: Colors.redAccent,
                child: const Icon(Icons.exposure_minus_2),
                onPressed: () {
                  contador = contador - 2;

                  //redibuja todos los widgets
                  //que sufrieron cambios
                  setState(() {});
                },
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                backgroundColor: Colors.yellowAccent,
                child: const Text('X2', style: TextStyle(fontSize: 22)),
                onPressed: () {
                  contador = contador * 2;

                  //redibuja todos los widgets
                  //que sufrieron cambios
                  setState(() {});
                },
              ),
              const SizedBox(
                width: 20,
              ),
              FloatingActionButton(
                backgroundColor: Colors.greenAccent,
                child: const Text('÷2', style: TextStyle(fontSize: 22)),
                onPressed: () {
                  contador = contador ~/ 2;

                  //redibuja todos los widgets
                  //que sufrieron cambios
                  setState(() {});
                },
              ),
            ],
          )),
    );
  }
}
