import 'package:flutter/material.dart';
import 'package:flutter_application_2/constants.dart';
import 'package:flutter_application_2/screens/details/components/body.dart';
import 'package:flutter_application_2/screens/home/components/detail_app_bar.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        appBar: detailAppbar(context),
        body: const Body());
  }
}
