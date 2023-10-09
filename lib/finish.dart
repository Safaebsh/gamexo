import 'package:flutter/material.dart';
import 'package:xo/next.dart';
import 'package:xo/xo.dart';

class Finish extends StatefulWidget {
  const Finish({super.key});

  @override
  State<Finish> createState() => _finishState();
}

class _finishState extends State<Finish> {
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
              Color.fromARGB(255, 20, 40, 83),
              Color(0xFF072341),
              Color.fromARGB(255, 20, 40, 83)
            ],
          ),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 130),
          child: Column(
            children: [
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Xo()));
                    },
                    child: const Text(
                      "Replay ",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(3),
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFFFFD700), width: 3),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(10),
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(colors: [
                      Color(0xFFFF797A),
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
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Next()));
                    },
                    child: const Text(
                      "Change player ",
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
