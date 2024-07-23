import 'package:flutter/material.dart';
import 'package:trainingcenter/screen/login_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
      },
      theme: ThemeData(
        useMaterial3: true,
      ),
    );
  }
}