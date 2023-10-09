import 'package:flutter/material.dart';
import 'package:xo/next.dart';
import 'package:xo/xo.dart';

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _welcomeState();
}

class _welcomeState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 30, 29, 88),
              Color(0xff001F3F),
              Color.fromARGB(255, 20, 40, 83)
            ],
          ),
        ),
        child: ListView(children: [
          Container(
            margin: EdgeInsets.only(right: 350),
            child: IconButton(
              color: Colors.white,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Next()));
              },
              icon: const Icon(Icons.arrow_back),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 100),
            child: Column(
              children: [
                GradientText(
                  "Press button to play ",
                  style: const TextStyle(fontSize: 30),
                  gradient: LinearGradient(colors: [
                    Color.fromARGB(255, 233, 142, 39),
                    Color.fromARGB(255, 155, 165, 22),
                    Color.fromARGB(255, 223, 220, 59),
                  ]),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: 300,
                  child: Image.asset(
                    "images/logo1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: const EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 179, 161, 2),
                        width: 3),
                    borderRadius: BorderRadius.circular(28),
                  ),
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(10),
                    width: 250,
                    height: 50,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(colors: [
                        Color(0xFFFFD700),
                        Color(0xFFFF7777),
                      ]),
                      border: Border.all(
                        color: const Color.fromARGB(0, 179, 161, 2),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Xo()));
                      },
                      child: const Text(
                        "Start ",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
