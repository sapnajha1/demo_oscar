import 'package:flutter/material.dart';

class MyHOme extends StatefulWidget {
  const MyHOme({super.key});

  @override
  State<MyHOme> createState() => _MyHOmeState();
}

class _MyHOmeState extends State<MyHOme> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("HOme"),),
    );
  }
}
