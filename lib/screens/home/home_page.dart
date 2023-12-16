import 'package:flutter/material.dart';
import 'package:flutter_application_2/components/bottom_navbar.dart';
import 'package:flutter_application_2/screens/home/components/app_bar.dart';
import 'package:flutter_application_2/screens/home/components/body.dart';

class HomeDart extends StatelessWidget {
  const HomeDart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBavBar(),
      appBar: appbar(context),
      body: const Body(),
    );
  }
}
