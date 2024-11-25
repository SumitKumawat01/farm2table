import 'package:farm2table/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:farm2table/pages/login_page.dart';
import 'package:farm2table/utils/routes.dart';
import 'package:farm2table/pages/home_page.dart';

import '../pages/home_page.dart';
import 'pages/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          "/": (context) => LoginPage(),
         // MyRoutes.homeRoute: (context) => HomePages(),
          MyRoutes.loginRoute: (context) => LoginPage(),
          MyRoutes.homeRoute: (context) => OnboardingPage(),
        });
  }
}
