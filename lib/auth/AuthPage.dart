import 'package:flutter/material.dart';
import 'package:ny_times/CONSTANTS.dart';
import 'package:ny_times/utils/button.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Log in",
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(right: 3),
              child: Text(
                'Cancel',
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(color: Colors.grey, fontFamily: BODY_FONT),
                children: [
                  TextSpan(text: 'By continuing, you agree to the'),
                  TextSpan(
                    text: ' Terms of Services ',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                  TextSpan(text: 'and acknowledge our'),
                  TextSpan(
                    text: ' Privacy Policy.',
                    style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ),
          createOutlineButton('Continue With Google', 5, null),
          createOutlineButton('Continue With Facebook', 10, null),
          createOutlineButton('Continue With Apple', 5, null),
          SizedBox(height: 20),
          Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Container(
                height: 1,
                color: Colors.grey,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    color: Colors.white,
                    child: Text(
                      'OR',
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              )
            ],
          )
        ]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 0.5, color: Colors.black26),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.black, fontFamily: BODY_FONT),
                text: 'Don\'t have an account yet?',
                children: [TextSpan(text: ' Create one')],
              ),
            )
          ],
        ),
      ),
    );
  }
}
