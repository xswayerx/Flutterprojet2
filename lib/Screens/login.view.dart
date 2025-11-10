import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});


  @override
  Widget build(BuildContext context) {
    return Center(
        child: Icon(
          Icons.login,
          color: Colors.amberAccent,
          size: 300,
        )
    );
  }
}
