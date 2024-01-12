import 'package:flutter/material.dart';


import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter_todo_app/features/user_auth/pages1/login_page.dart';
import 'package:flutter_todo_app/features/user_auth/pages1/sign_up_page.dart';
import 'package:flutter_todo_app/pages/HomePage.dart';

import 'package:flutter_todo_app/pages/SplashScreen.dart';



Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
         apiKey: "AIzaSyDeYPgEplRNkmDU_tdSPITNV8TnoXRfJWo",
          projectId: "todo-4b51f",
          messagingSenderId: "74934232482",
          appId: "1:74934232482:web:20dfbc81f83682b8787efb",
 
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'todo',
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(
          seconds: 60,
          navigateAfterSeconds: LoginPage(),
          child: Container(), // Add a dummy child widget
        ),
        "/login": (context) => LoginPage(),
        "/singUp": (context) => SignUpPage(),
        "/homePage": (context) => HomePage(),
        
      },
    );
  }
}
