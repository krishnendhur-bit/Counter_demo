import 'package:flutter/material.dart';
import 'package:counterday7/pages/counter.dart';


void main()
{
  runApp(MainScreen());
}
class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: MyCounter(),

      ),
    );
  }
}


