// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/BMI_Caculator/screens/bmi_caculator_page.dart';

import 'package:flutter_application_1/page/ListView_GridView/ListViewWSpace.dart';
import 'package:flutter_application_1/page/ListView_GridView/gridview.dart';
import 'package:flutter_application_1/page/login.dart';
import 'package:go_router/go_router.dart';

import 'page/BMI_Caculator/_input_page.dart';
import 'page/ListView_GridView/ListViewItem.dart';
import 'page/ListView_GridView/NavigateAndRouting.dart';
import 'page/ListView_GridView/listview_horizontal.dart';
import 'page/NavigationAndRouting/FirstRoute.dart';
import 'page/NavigationAndRouting/ReturnDataFromAScreen.dart';

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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            verticalDirection: VerticalDirection.down,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 100),
              Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(children: <Widget>[
                    SizedBox(width: 10.0),
                    Expanded(
                        child: Text('MaxPense',
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Color(0xFF575DFB),
                                fontWeight: FontWeight.bold)))
                  ])),
              Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(children: <Widget>[
                    SizedBox(width: 10.0),
                    Expanded(
                        child: Text(
                            'A place where you can track \nall your expenses and incomes...',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            )))
                  ])),
              SizedBox(height: 60.0),
              Container(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Row(children: <Widget>[
                    SizedBox(width: 10.0),
                    Text('Let’s Get Started...',
                        style: TextStyle(
                          fontSize: 17.32,
                        ))
                  ])),
              LoginGoogle(),
              LoginEmail(),
              HaveAccount(),
              ListViewWSpace(),
              NavigateAndRouting(),
              NavigationAndBackWithData(),
              BMI_Healthy_App()
            ]),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ListViewWSpace extends StatelessWidget {
  const ListViewWSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.0),
        child: Row(children: <Widget>[
          SizedBox(width: 10.0),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      // ignore: unnecessary_new
                      builder: (context) => new ListViewWSpacePage()),
                );
              },
              child: Text('ListView With Space', //title
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF575DFB),
                      fontWeight: FontWeight.bold) //aligment
                  ))
        ]));
  }
}

class HaveAccount extends StatelessWidget {
  const HaveAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Row(children: <Widget>[
          SizedBox(width: 10.0),
          Text('Already have an account?',
              style: TextStyle(fontSize: 20.0, color: Colors.teal.shade900)),
          SizedBox(width: 10.0),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: unnecessary_new
                    builder: (context) => new ListViewItemPage(
                      items: List<ListItem>.generate(
                        1000,
                        (i) => i % 6 == 0
                            ? HeadingItem('Heading $i')
                            : MessageItem('Sender $i', 'Message body $i'),
                      ),
                    ),
                  ),
                );
              },
              child: Text('Login', //title
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF575DFB),
                      fontWeight: FontWeight.bold) //aligment
                  )),
        ]));
  }
}

class ListViewWithoutSpace extends StatelessWidget {
  const ListViewWithoutSpace({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left: 10.0),
        child: Row(children: <Widget>[
          SizedBox(width: 10.0),
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      // ignore: unnecessary_new
                      builder: (context) => new ListViewWSpacePage()),
                );
              },
              child: Text('ListView With Space', //title
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF575DFB),
                      fontWeight: FontWeight.bold) //aligment
                  ))
        ]));
  }
}

class NavigateAndRouting extends StatelessWidget {
  const NavigateAndRouting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Row(children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: unnecessary_new
                    builder: (context) => new FirstRoute(),
                  ),
                );
              },
              child: Text('Navigate and Routing', //title
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF575DFB),
                      fontWeight: FontWeight.bold) //aligment
                  )),
        ]));
  }
}

class LoginEmail extends StatelessWidget {
  const LoginEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
            color: Colors.black, //                   <--- border color
            width: 1.0,
          ),
        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Row(children: <Widget>[
          SizedBox(width: 10.0),
          Align(
            alignment: Alignment.center,
            child: Text('Continue with Email',
                style: TextStyle(fontSize: 20.0, color: Colors.teal.shade900)),
          ),
          SizedBox(width: 10.0),
          Text('@',
              style: TextStyle(
                  fontSize: 20.0,
                  color: Color(0xFF575DFB),
                  fontWeight: FontWeight.bold))
        ]));
  }
}

class LoginGoogle extends StatelessWidget {
  const LoginGoogle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          border: Border.all(
            color: Colors.black, //                   <--- border color
            width: 1.0,
          ),
        ),
        padding: EdgeInsets.all(10.0),
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
        child: Row(children: <Widget>[
          SizedBox(width: 10.0),
          ImageIcon(
            AssetImage("images/icons8-google-48.png"),
            size: 24,
          ),
          SizedBox(width: 10.0),
          Text('Continue with Google',
              style: TextStyle(fontSize: 20.0, color: Colors.teal.shade900))
        ]));
  }
}

class NavigationAndBackWithData extends StatelessWidget {
  const NavigationAndBackWithData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Row(children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: unnecessary_new
                    builder: (context) => new HomeScreen(),
                  ),
                );
              },
              child: Text('Navigate and Back with Data',
               //title
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF575DFB),
                      fontWeight: FontWeight.bold) //aligment
                  )),
        ]));
  }
}


class BMI_Healthy_App extends StatelessWidget {
  const BMI_Healthy_App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(10.0),
        child: Row(children: <Widget>[
          TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    // ignore: unnecessary_new
                    builder: (context) =>new BMI_Caculator(),
                  ),
                );
              }, child: Text('BMI Calculator',
               //title
                  textAlign: TextAlign.end,
                  style: TextStyle(
                      fontSize: 20.0,
                      color: Color(0xFF575DFB),
                      fontWeight: FontWeight.bold) //aligment
                  )),
              
      ]));
  }
}
