import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tasmik/landing.dart';
import 'package:tasmik/settings/data/font_size.dart';
import '../constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await initialization(null);

  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => LTRSize()),
    ], child: const MyApp()),
  );
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
      home: const Landing(),
    );
  }
}
