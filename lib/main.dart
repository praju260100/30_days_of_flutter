import 'package:flutter/material.dart';

import 'package:flutter_catalog/pages/homepage.dart';
import 'package:flutter_catalog/pages/loginpage.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widget/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: mytheme.lightTheme(context),
      darkTheme: mytheme.lightTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => const homepage(),
        MyRoutes.loginRoute: ((context) => LoginPage())
      },
    );
    // home: const homepage());
  }
}
