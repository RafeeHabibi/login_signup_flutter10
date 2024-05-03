import 'package:flutter/material.dart';
import '../components/kConst.dart';


class WelcomeScreen extends StatefulWidget {

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text('Welcome', style: kwelcomeTS,),
                  SizedBox(height: 20,),
                  Text('My Ready Login and Sign Up Template for Project')
                ],
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/welcome.jpeg'),
                  ),
                ),
              ),
              Column(
                children: [
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    onPressed: (){
                      Navigator.pushNamed(context, '/LoginScreen');
                    },
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: kblackColor,
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text(
                      'Login',
                      style: kLoginTS,
                    ),
                  ),
                  SizedBox(height: 20),
                  MaterialButton(
                    minWidth: double.infinity,
                    height: 60,
                    color: kblueColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child:Text(
                      'Sign Up',
                      style: kSignUpTS,
                    ),
                    onPressed: (){
                      Navigator.pushNamed(context, '/SignupScreen');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        backgroundColor: kwhiteColor,
      ),
    );
  }
}
