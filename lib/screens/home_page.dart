import 'package:calculator/widgets/home_page_bottom_section.dart';
import 'package:calculator/widgets/home_page_top_section.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: const [
          HomePageTopSection(),
          HomePageBottomSection(),
        ],
      ),
    );
  }
}
