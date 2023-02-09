import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("My Counter")),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              child: const Text(
                "MyHomePage",
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
             CounterAt(
              counter: _counter,
              increment: _incrementCounter,
            ),
            const SizedBox(
              height: 20,
            ),
             Middle(
              counter: _counter,
            )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class CounterAt extends StatelessWidget {
  final int counter;
  final void Function() increment;

  const CounterAt({
    super.key,
    required this.counter,
    required this.increment,
  }) ;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
           Text(
            "$counter",
            style: TextStyle(fontSize: 48),
          ),
          ElevatedButton(
              onPressed: increment,
              child: const Text(
                'Increment',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}

class Middle extends StatelessWidget {
  final int counter;
  const Middle({super.key,required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CounterB(counter:counter),
          SizedBox(width: 20),
          Sibling(),
        ],
      ),
    );
  }
}

class CounterB extends StatelessWidget {
  final int counter;
  const CounterB({super.key,required this.counter});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      padding: const EdgeInsets.all(20),
      child:  Text(
        '$counter',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class Sibling extends StatelessWidget {
  const Sibling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      padding: const EdgeInsets.all(20),
      child: const Text(
        'Sibling',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
