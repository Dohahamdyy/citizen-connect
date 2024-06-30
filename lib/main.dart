import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/screens/description_screen.dart';
import 'package:flutter_demo/ui/screens/forget_password_screen.dart';
import 'package:flutter_demo/ui/screens/home_screen.dart';
import 'package:flutter_demo/ui/screens/location_screen.dart';
import 'package:flutter_demo/ui/screens/login_screen.dart';
import 'package:flutter_demo/ui/screens/main_screen.dart';
import 'package:flutter_demo/ui/screens/progress_screen.dart';
import 'package:flutter_demo/ui/screens/recent_screen.dart';
import 'package:flutter_demo/ui/screens/report_screen.dart';
import 'package:flutter_demo/ui/screens/signup_screen.dart';
import 'package:flutter_demo/ui/screens/splash_screen.dart';
import 'package:flutter_demo/ui/screens/verify_code_screen.dart';
import 'package:flutter_demo/ui/screens/welcome_screen.dart';

void main() {
  runApp(
    GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        '/verify': (context) => const VerifyCodeScreen(),
        '/forget': (context) => const ForgetPasswordScreen(),
        '/progress': (context) => const ProgressScreen(),
        '/recent': (context) => const RecentScreen(),
        '/welcome': (context) => const WelcomeScreen(),
        '/report': (context) => const MyReportScreen(),
        '/main': (context) => const MainScreen(),
        '/description': (context) => DescriptionScreen(),
        '/location': (context) => const LocationScreen(),
      },
    );
  }
}
