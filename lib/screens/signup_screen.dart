import 'package:flutter/material.dart';
import 'package:login_sign_up_page/components/kConst.dart';
import 'package:login_sign_up_page/components/input_field.dart';

class SignupScreen extends StatefulWidget {

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: kwhiteColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kwhiteColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, size: 20, color: kblackColor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Text(
                    'Sign Up',
                    style: kLogin1TS,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Create an Account to your self!',
                    style: kLogin2TS,
                  )
                ],
              ),
              Column(
                children: [
                  inputField(label: 'Username'),
                  inputField(label: 'Email'),
                  inputField(label: 'Password', obscureText: true),
                  inputField(label: 'Confirm Password', obscureText: true)
                ],
              ),
              Container(
                padding: EdgeInsets.only(top: 2, left: 2),
                decoration: BoxDecoration(
                  border: Border.all(color: kblackColor),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: MaterialButton(
                  minWidth: double.infinity,
                  height: 60,
                  color: kblueColor,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text(
                    'Sign Up',
                    style: kSignUpTS,
                  ),
                  onPressed: () {},
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an Account?',
                    style: kLogin2TS
                  ),
                  Text(
                    'Login',
                    style: kLogin3TS
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
