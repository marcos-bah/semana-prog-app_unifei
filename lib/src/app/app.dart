import 'package:app_unifei/src/app/theme.dart';
import 'package:app_unifei/src/login/login.view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../home/home.view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Random Numbers',
      theme: ThemeData(
        primarySwatch: AppTheme.primary,
        fontFamily: GoogleFonts.manrope().fontFamily,
      ),
      routes: {
        '/': (context) => const LoginView(),
        '/home': (context) => const HomeView(),
      },
    );
  }
}
