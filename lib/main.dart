import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/screens/Forget_password_screen.dart';
import 'package:flutter_demo/ui/screens/home_screen.dart';
import 'package:flutter_demo/ui/screens/login_screen.dart';
import 'package:flutter_demo/ui/screens/main_screen.dart';
import 'package:flutter_demo/ui/screens/profile_screen.dart';
import 'package:flutter_demo/ui/screens/progress_screen.dart';
import 'package:flutter_demo/ui/screens/recent_screen.dart';
import 'package:flutter_demo/ui/screens/report_screen.dart';
import 'package:flutter_demo/ui/screens/signup_screen.dart';
import 'package:flutter_demo/ui/screens/verify_code_screen.dart';
import 'package:flutter_demo/ui/screens/welcome_screen.dart';
import 'package:flutter_demo/ui/screens/main_screen.dart';

void main()
{ runApp(MyApp()) ;
}
class MyApp extends StatelessWidget
{

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const RecentScreen(),
        '/login': (context) =>  LoginScreen (),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        '/verify': (context) => const VerifyCodeScreen(),
        '/forget' : (context) => const Forgetpasswordscreen(),

      },
    );

  }
}
