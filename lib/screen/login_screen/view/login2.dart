import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/login_provider.dart';

class Login_2 extends StatefulWidget {
  const Login_2({Key? key}) : super(key: key);

  @override
  State<Login_2> createState() => _Login_2State();
}

class _Login_2State extends State<Login_2> {
  Login_provider? ProviderT;
  Login_provider? ProviderF;
  TextEditingController Txtusername = TextEditingController();
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
              SizedBox(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40, right: 40),
                child: TextField(
                  controller: Txtusername,
                  decoration: InputDecoration(
                    hintText: "Username",
                    suffixIcon: Icon(
                      Icons.account_box_outlined,
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
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 18),
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
                    "Don't have account? ",
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
