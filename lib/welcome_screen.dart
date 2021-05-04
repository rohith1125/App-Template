import 'package:flutter/material.dart';

import 'login_screen.dart';
import 'registration_screen.dart';
import 'rounded_button.dart';

class WelcomeScreen extends StatefulWidget {
  static String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            RoundedButton(
              onPressed: () =>
                  Navigator.of(context).pushReplacementNamed(LoginScreen.id),
              title: 'Login',
              colour: Colors.blue,
            ),
            RoundedButton(
              onPressed: () => Navigator.of(context)
                  .pushReplacementNamed(RegistrationScreen.id),
              title: 'Register',
              colour: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
