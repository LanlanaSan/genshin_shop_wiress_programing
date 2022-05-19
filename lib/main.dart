import 'package:authentification_test/screen/Home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'dart:async';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genshin_Shop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SecondScreen())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E2429),
      body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF504BFF), Color(0xFF0175FF), Color(0xFF26D8F4)],
              stops: [0, 0.4, 1],
              begin: AlignmentDirectional(1, -1),
              end: AlignmentDirectional(-1, 1),
            ),
          ),
          child: Column(children: const [
            Padding(
              padding: EdgeInsets.only(top: 250),
            ),
            Image(
              image: AssetImage('assets/Splashscreen.png'),
              width: 200,
              height: 200,
              fit: BoxFit.fitHeight,
            ),
            Text("GENSHIN SHOP",
                style: TextStyle(
                  fontSize: 28,
                  fontFamily: 'Lexend Deca',
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ))
          ])),
    );
  }
}

///////////////////////////////////////////////////////////
class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Genshin_Shop',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Homescreen());
  }
}
