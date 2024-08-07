import 'package:flutter/material.dart';
import 'package:flutter_demo/ui/screens/description_screen.dart';
import 'package:flutter_demo/ui/screens/edit_profile_screen.dart';
import 'package:flutter_demo/ui/screens/electric_screen.dart';
import 'package:flutter_demo/ui/screens/environmental_screen.dart';
import 'package:flutter_demo/ui/screens/forget_password_screen.dart';
import 'package:flutter_demo/ui/screens/hello_screen.dart';
import 'package:flutter_demo/ui/screens/home_screen.dart';
import 'package:flutter_demo/ui/screens/location_screen.dart';
import 'package:flutter_demo/ui/screens/login_screen.dart';
import 'package:flutter_demo/ui/screens/main_screen.dart';
import 'package:flutter_demo/ui/screens/notification_settings_screen.dart';
import 'package:flutter_demo/ui/screens/notifications_screen.dart';
import 'package:flutter_demo/ui/screens/password_settings_screen.dart';
import 'package:flutter_demo/ui/screens/progress_screen.dart';
import 'package:flutter_demo/ui/screens/ready_screen.dart';
import 'package:flutter_demo/ui/screens/recent_screen.dart';
import 'package:flutter_demo/ui/screens/report_screen.dart';
import 'package:flutter_demo/ui/screens/reset_password_screen.dart';
import 'package:flutter_demo/ui/screens/road_screen.dart';
import 'package:flutter_demo/ui/screens/settings_screen.dart';
import 'package:flutter_demo/ui/screens/signup_screen.dart';
import 'package:flutter_demo/ui/screens/splash_screen.dart';
import 'package:flutter_demo/ui/screens/stay_screen.dart';
import 'package:flutter_demo/ui/screens/verify_code_screen.dart';

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
        fontFamily: 'Poppins',
      ),
      routes: {
        '/': (context) => const MyReportScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/home': (context) => const HomeScreen(),
        '/verify': (context) => const VerifyCodeScreen(),
        '/forget': (context) => const ForgetPasswordScreen(),
        '/progress': (context) => const ProgressScreen(),
        '/recent': (context) => const RecentScreen(),
        '/report': (context) => const MyReportScreen(),
        '/main': (context) => const MainScreen(),
        '/description': (context) => DescriptionScreen(),
        '/location': (context) => const LocationScreen(),
        '/hello': (context) => const HelloScreen(),
        '/stay': (context) => const StayScreen(),
        '/ready': (context) => const ReadyScreen(),
        '/notifications': (context) => const NotificationsScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/notification-settings': (context) => const NotificationSettingsScreen(),
        '/password-settings': (context) => const PasswordSettingsScreen(),
        '/electric': (context) => const ElectricScreen(),
        '/environmental': (context) => const EnvironmentalScreen(),
        '/road': (context) => const RoadScreen(),
        '/reset-password': (context) => const ResetPasswordScreen(),
        '/edit-profile': (context) => const EditProfileScreen(),
      },
    );
  }
}
