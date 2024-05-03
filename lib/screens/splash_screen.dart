import 'dart:async';
import 'package:flutter/material.dart';
import 'package:login_sign_up_page/components/kConst.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    super.initState();
    StartTime();
  }

  void StartTime() {
    var duration = Duration(seconds: 2);
    Timer(duration, Navigation);
  }

  void Navigation() {
    Navigator.pushNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  child: FlutterLogo(),
                ),
                SizedBox(height: 20),
                Text(
                  'Login and Sign Up Template',
                  style: kSplashScreenTS,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 30),
            child: Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(
                  color: kblueColor,
                )
            ),
          ),
        ],
      ),
      backgroundColor: kwhiteColor, // Make sure kwhiteColor is defined.
    );
  }
}
