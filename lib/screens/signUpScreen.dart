import 'package:flutter/material.dart';
import 'package:loginapp/helper/assest_parth.dart';
import 'package:loginapp/helper/textfield.dart';
import 'package:loginapp/screens/homeScreen.dart';
import 'package:loginapp/screens/loginScreen.dart';

class signUpScreen extends StatefulWidget {
  const signUpScreen({super.key});

  @override
  State<signUpScreen> createState() => _signUpScreenState();
}

class _signUpScreenState extends State<signUpScreen> {
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController mobileNumber = TextEditingController();
  final TextEditingController age = TextEditingController();
  final TextEditingController password = TextEditingController();
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
              SizedBox(
                height: 70,
              ),
              Text(
                "Welcome to loging app",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Textfield(
                      hintText: "enter name",
                      labelText: "Name",
                      controller: name)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Textfield(
                    hintText: "enter email address",
                    labelText: "Email address",
                    controller: mobileNumber),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Textfield(
                    hintText: "enter age", labelText: "Age", controller: age),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Textfield(
                    hintText: "enter password",
                    labelText: "password",
                    controller: password),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                    child: ElevatedButton(
                  onPressed: () {
                    //String message = "Name: ${name.text}\n" +
                    //  "Mobile Number: ${email.text}\n" +
                    //"Email Address: ${mobileNumber.text}\n" +
                    //"Age: ${age.text}";
                    // _showAlertDialog(message);
                    if (true) {
                      Navigator.push(
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
                height: 80,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have an account",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => LoginScreen())));
                      },
                      child: Text(
                        "Login",
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
      )),
    );
  }
}
