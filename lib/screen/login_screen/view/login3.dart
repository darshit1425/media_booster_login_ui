import 'package:flutter/material.dart';

class Login_3 extends StatefulWidget {
  const Login_3({Key? key}) : super(key: key);

  @override
  State<Login_3> createState() => _Login_3State();
}

class _Login_3State extends State<Login_3> {
  @override
  Widget build(BuildContext context) {
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
                      top: -10,
                      left: -10,
                      right: -250,
                      // bottom: 0,
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
                "Welcome",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent.shade700,
                    fontSize: 70),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "          back",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.blueAccent.shade200,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 180,
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
                      "Login as Maria",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 65,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Delate account ",
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.underline,
                        color: Colors.black,
                        fontSize: 20),
                  ),
                  // Text(
                  //   "Sing in",
                  //   style: TextStyle(
                  //     decoration: TextDecoration.underline,
                  //     color: Colors.blue.shade400,
                  //   ),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
