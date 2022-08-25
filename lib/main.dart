import 'package:flutter/material.dart';
import 'package:tasmik/constant.dart';
import 'package:tasmik/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization(null);

  runApp(const MyApp());
}

Future initialization(BuildContext? context) async {
  await Future.delayed(const Duration(microseconds: 30));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
        backgroundColor: aksen2Color,
      ),
      title: 'Tasmik',
      home: const Home(),
    );
  }
}
