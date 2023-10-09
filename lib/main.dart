import 'package:flutter/material.dart';
import 'package:xo/finish.dart';
import 'package:xo/next.dart';
import 'package:xo/start.dart';
import 'package:xo/welcome.dart';
import 'package:xo/winlost.dart';
import 'package:xo/xo.dart';

// string bach yafficher text
String? player1;
String? player2;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Welcome(),
      theme: ThemeData(
        fontFamily: "YoungSerif",
        textTheme: const TextTheme(
          bodyLarge: TextStyle(
              color: Color.fromARGB(255, 234, 238, 14),
              fontSize: 30,
              fontWeight: FontWeight.bold),
          bodySmall: TextStyle(
            color: Color.fromARGB(255, 247, 246, 246),
            fontSize: 18,
          ),
          bodyMedium: TextStyle(
              color: Colors.red, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      routes: {
        "welcome": (context) => const Welcome(),
        "next": (context) => const Next(),
        "start": (context) => const Start(),
        "xo": (context) => const Xo(),
        "winlost": (context) => const Winlost(),
        "finish": (context) => const Finish(),
      },
    );
  }
}
