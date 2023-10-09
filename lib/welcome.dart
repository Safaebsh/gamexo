import 'package:flutter/material.dart';
import 'package:xo/next.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _welcomeState();
}

class _welcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
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
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 130),
          child: Column(
            children: [
              GradientText(
                "WELCOME TO ",
                style: const TextStyle(fontSize: 40),
                gradient: LinearGradient(colors: [
                  const Color.fromARGB(255, 24, 84, 133),
                  Color.fromARGB(255, 180, 131, 187),
                  Color.fromARGB(255, 223, 220, 59),
                ]),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: Image.asset(
                  "images/logo1.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 179, 161, 2), width: 3),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xFFC072A0),
                      Color(0xFFD16A91),
                      Color(0xFF6D49C2),
                    ]),
                    border: Border.all(
                      color: const Color.fromARGB(0, 179, 161, 2),
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: InkWell(
                    onTap: () {
                      print("click true");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Next()));
                    },
                    child: const Text(
                      "WELCOME ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
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
