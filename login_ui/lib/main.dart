import 'package:flutter/material.dart';
import 'package:login_ui/screens/login/login_screen.dart';
import 'package:login_ui/screens/onboarding/welcome_screen.dart';
import 'package:login_ui/screens/register/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const RegisterScreen(),
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/welcome': (context) => const WelcomeScreen(),
      },
    );
  }
}