import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_booster_login_ui/screen/login_screen/view/login3.dart';
import 'package:provider/provider.dart';

import 'screen/login_screen/provider/login_provider.dart';
import 'screen/login_screen/view/login1.dart';
import 'screen/login_screen/view/login2.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Login_provider(),
        ),

      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => Login_1(),
          'two': (context) => Login_2(),
          'three': (context) => Login_3(),


        },
      ),
    ),
  );
}