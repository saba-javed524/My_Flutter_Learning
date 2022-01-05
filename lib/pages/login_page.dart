import 'dart:ui';
import 'package:flutter_project_1/utils/routes.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,

      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              "assets/images/login_screen.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter User Name", labelText: "Full Name:"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password:"),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: Text("Login"),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        textStyle: TextStyle(fontSize: 20),
                        minimumSize: Size(150, 50)),
                  )
                ],
              ),
            )
          ],
        ),
      ),

      // child: Text(
      //   "Login Page",
      //   style: TextStyle(
      //     fontSize: 20,
      //     color: Colors.blueGrey,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    );
  }
}
