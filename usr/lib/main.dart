import 'package:flutter/material.dart';
import 'package:couldai_user_app/screens/splash_screen.dart';
import 'package:couldai_user_app/screens/home_screen.dart';
import 'package:couldai_user_app/screens/login_screen.dart';

void main() {
  runApp(const KingApp());
}

class KingApp extends StatelessWidget {
  const KingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'King App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFD700), // Gold
          brightness: Brightness.light,
          primary: const Color(0xFFFFD700),
          secondary: const Color(0xFF4B0082), // Indigo/Royal Purple
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Color(0xFF4B0082),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}
