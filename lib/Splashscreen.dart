import 'dart:async';
import 'package:flutter/material.dart';
import 'package:projecthome/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder:
              (context) => Mylogin(),
          )
      );
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
          Align(alignment:
          Alignment.center,
            child: CircularProgressIndicator(
              color: Colors.black26,
            ),
          ),
        ],

      ),
    );

  }
}
