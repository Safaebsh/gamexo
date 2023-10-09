import 'package:flutter/material.dart';
import 'package:xo/finish.dart';
import 'package:xo/main.dart';

class Winlost extends StatefulWidget {
  const Winlost({super.key});

  @override
  State<Winlost> createState() => _winlostState();
}

class _winlostState extends State<Winlost> {
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
        child: ListView(
          children: [
            /*Container(
              margin: EdgeInsets.only(right: 350),
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => start()));
                },
                icon: Icon(Icons.arrow_back),
              ),
            ),*/
            Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(vertical: 100, horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        "images/yes.png",
                        height: 40,
                        width: 40,
                      ),
                      GradientText(
                        " WINNER IS  :  $player1 ",
                        style: const TextStyle(fontSize: 30),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 104, 230, 21),
                          Color.fromARGB(255, 224, 186, 17),
                          Color.fromARGB(255, 223, 223, 217),
                        ]),
                      ),
                    ],
                  ),
                  Image.asset(
                    "images/win1.png",
                    fit: BoxFit.cover,
                    width: 300,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "images/no.png",
                        height: 40,
                        width: 40,
                      ),
                      GradientText(
                        "LOSER IS  :  $player2 ",
                        style: TextStyle(fontSize: 30),
                        gradient: LinearGradient(colors: [
                          Color.fromARGB(255, 247, 2, 2),
                          Color.fromARGB(255, 223, 59, 100),
                          Color.fromARGB(255, 223, 223, 217),
                        ]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Finish()));
                },
                icon: const Icon(
                  Icons.arrow_right_alt_sharp,
                  size: 60,
                  color: Color.fromARGB(255, 254, 255, 254),
                ))
          ],
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
