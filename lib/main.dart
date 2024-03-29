import 'package:flutter/material.dart';
import 'package:flutter_sliver_app/appbar/fourth_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // context : 모든 정보
    return Scaffold(
      body: FourthAppbar(),
    );
  }
}
