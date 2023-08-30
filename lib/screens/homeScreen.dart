import 'package:flutter/material.dart';
import 'package:loginapp/screens/LoginScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("home page")),
      drawer: SafeArea(
          child: Drawer(
        backgroundColor: Colors.red.shade200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
                onPressed: () {
                  // action
                },
                child: Text("contect Us",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
              color: Colors.black,
              height: 3,
              width: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  // action
                },
                child: Text("about",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ))),
            Container(
              color: Colors.black,
              height: 3,
              width: double.infinity,
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  Navigator.pop(context,
                      MaterialPageRoute(builder: ((context) => LoginScreen())));
                },
                child: Text(
                  "Logout",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ))
          ],
        ),
      )),
      body: SafeArea(
          child: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.red.shade200,
            height: double.infinity,
            width: double.infinity,
          ),
          //Image.asset(""),
          Column(
            children: [],
          ),
        ],
      )),
    );
  }
}
