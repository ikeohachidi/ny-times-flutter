import 'package:flutter/material.dart';
import 'package:ny_times/CONSTANTS.dart';

class AuthSplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Column(
              children: [
                Image.asset('images/nytimes-logo.png'),
                SizedBox(height: 10),
                Text(
                  "1500+ Journalists \n 50 news bureaues \n 127 Pulitzer Prizes. ",
                  textAlign: TextAlign.center,
                  style: TextStyle(height: 2, fontFamily: HEADER_FONT),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: null,
                    child: Text(
                      "Subscribe for unlimited access",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15)),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () => {Navigator.pushNamed(context, '/auth')},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.black),
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                        BorderSide(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                          EdgeInsets.symmetric(vertical: 15)),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  child: Text("Not Now", textAlign: TextAlign.center),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
