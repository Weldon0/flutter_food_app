import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/home/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food App",
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          color: kPrimaryColor,
          elevation: 0,
        ),
        // navBar颜色
        scaffoldBackgroundColor: Colors.white, // 标识背景颜色，不是主题颜色
        textTheme: const TextTheme(
            bodyLarge: TextStyle(color: kSecondaryColor),
            bodyMedium: TextStyle(color: kSecondaryColor)),
      ),
      home: const HomeDart(),
    );
  }
}
