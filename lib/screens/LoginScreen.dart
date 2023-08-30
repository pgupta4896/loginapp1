import 'package:flutter/material.dart';
import 'package:loginapp/helper/assest_parth.dart';
import 'package:loginapp/screens/homeScreen.dart';
import 'package:loginapp/screens/signUpScreen.dart';

import '../helper/textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController email = TextEditingController();
  final TextEditingController pass = TextEditingController();
  AssestPart assestPart = AssestPart();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          assestPart.backgrounImage,
          fit: BoxFit.cover,
        ),
        Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => signUpScreen())));
                  },
                  icon: Icon(Icons.arrow_back_rounded),
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              "Login page",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Textfield(
                    hintText: "enter email",
                    labelText: "email",
                    controller: email)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Textfield(
                  hintText: "enter password",
                  labelText: "password",
                  controller: pass),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                  child: ElevatedButton(
                onPressed: () {
                  if (true) {
                  Navigator.push (
                        context,
                        MaterialPageRoute(
                            builder: ((context) => HomeScreen())));
                  // ignore: dead_code
                  } else {
                    //
                  }
                },
                child: Text("Done"),
                style: ElevatedButton.styleFrom(
                    side: BorderSide(
                        color: Colors.black), // Set button border color
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(80, 50)),
              )),
            ),
            SizedBox(
              height: 80,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        //google button click
                      },
                      icon: Image.asset(
                        assestPart.googleIcon,
                        height: 50,
                        width: 50,
                        alignment: Alignment.center,
                      ),
                      label: Text(""),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: Size(60, 60))),
                  SizedBox(
                    width: 50,
                  ),
                  ElevatedButton.icon(
                      onPressed: () {
                        // fb action
                      },
                      icon: Image.asset(
                        assestPart.fbIcon,
                        height: 50,
                        width: 50,
                      ),
                      label: Text(""),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          side: BorderSide(color: Colors.black),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          minimumSize: Size(60, 60)))
                ],
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "create an account",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pop(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => signUpScreen())));
                    },
                    child: Text(
                      "signup",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ),
      ],
    )));
  }
}
