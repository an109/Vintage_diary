import 'dart:async';

import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(
        seconds: 3
    ),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Mylogin()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            height: MediaQuery
                .of(context)
                .size
                .height,
            child:
            Image.asset('assets/Vintage.jpg'),
          ),
          SizedBox(height:
          MediaQuery.of(context).size.height*.4),
          Padding(
            padding: const EdgeInsets.only(bottom:20 ),
            child: Align(alignment:            Alignment.bottomCenter,
              child: CircularProgressIndicator(
                color: Colors.black26,
              ),
            ),
          ),
        ],

      ),
    );

  }
}