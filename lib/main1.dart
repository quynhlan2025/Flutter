import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  get backgroundCollor => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Color backgroundColor = const Color(0x009688);
    Color whiteColor = const Color(0xF5F5F5);

    return MaterialApp(
        title: 'Lan makes Flutter App',
        theme: ThemeData(),
        home: const MyHomePage(
          title: 'My APP',
        ));
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
      backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/larrie.png'),
            ),
            Text(
              'Larrie Nguyen',
              style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text("FLUTTER  DEVELOPER",
                style: TextStyle(
                    fontFamily: 'Trajan Pro',
                    fontSize: 40.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
            Container(
                color:Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                child: Row(children: <Widget>[
                  Icon(Icons.phone, color: Colors.teal),
                  SizedBox(width: 10.0),
                  Text('+84-11111111111',
                      style: TextStyle(
                          fontSize: 20.0, color: Colors.teal.shade900))
                ])),
            Container(
                color:Colors.white,
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                child: Row(children: <Widget>[
                
                  Icon(Icons.email, color: Colors.teal),
                  SizedBox(width: 10.0),
                  Text('larrie@gmail.com',
                      style: TextStyle(
                          fontSize: 20.0, color: Colors.teal.shade900))
                ]))
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
