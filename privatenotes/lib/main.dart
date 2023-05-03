import "package:flutter/material.dart";
import 'package:privatenotes/pages/home_page.dart';
import 'package:privatenotes/pages/login_page.dart';
import 'package:privatenotes/utils/routes.dart';
import 'package:privatenotes/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: const HomePage(),
      themeMode: ThemeMode.light,
      theme: MyThemes.lightTheme(context),
      darkTheme: MyThemes.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: "/home",
      routes: {
        MyRoutes.LoginRoute: (context) => const LoginPage(),
        MyRoutes.HomeRoute: (context) => const HomePage(),
      },
    );
  }
}
