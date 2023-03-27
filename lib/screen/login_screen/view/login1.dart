import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/login_provider.dart';

class Login_1 extends StatefulWidget {
  const Login_1({Key? key}) : super(key: key);

  @override
  State<Login_1> createState() => _Login_1State();
}

class _Login_1State extends State<Login_1> {
  Login_provider? ProviderT;
  Login_provider? ProviderF;
  TextEditingController Txtemail = TextEditingController();
  TextEditingController Txtpassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Login_provider>(context, listen: true);
    ProviderF = Provider.of<Login_provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Container(
                height: 300,
                child: Stack(
                  children: [
                    Positioned(
                      top: -240,
                      left: -90,
                      child: Container(
                        height: 420,
                        width: 590,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff38B4FE),
                        ),
                      ),
                    ),
                    Positioned(
                      top: -120,
                      left: -50,
                      child: Container(
                        height: 335,
                        width: 350,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle, color: Color(0xff2E92F4)),
                      ),
                    ),
                    Positioned(
                      top: -100,
                      left: -60,
                      child: Container(
                        height: 270,
                        width: 300,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff1F6AC7),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 100,
                      left: 150,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/images/arro.jpg",
                          fit: BoxFit.cover,
                          width: 130,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Create",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent.shade700,
                    fontSize: 70),
              ),
              Text(
                "account",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.blueAccent.shade200,
                    fontSize: 30),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  controller: Txtemail,
                  decoration: InputDecoration(
                    hintText: "E-mail",
                    suffixIcon: Icon(
                      Icons.email,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  controller: Txtpassword,
                  decoration: InputDecoration(
                    hintText: "password",
                    suffixIcon: Icon(
                      Icons.lock,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: Container(
                  height: 50,
                  width: 280,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.blueAccent,
                    gradient: LinearGradient(
                      colors: [
                        Colors.blue.shade800,
                        Colors.blue.shade400,
                      ],
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 75,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "already have account? ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  Text(
                    "Sing in",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blue.shade400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
