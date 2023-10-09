import 'package:flutter/material.dart';
import 'package:xo/main.dart';

import 'package:xo/welcome.dart';
import 'package:xo/xo.dart';

class Next extends StatefulWidget {
  const Next({super.key});

  @override
  State<Next> createState() => _nextState();
}

// ignore: camel_case_types
class _nextState extends State<Next> {
  //key dyal form
  GlobalKey<FormState> formstate = GlobalKey();

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
                Container(
                  margin: EdgeInsets.only(right: 350),
                  child: IconButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Welcome()));
                    },
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(vertical: 100),
                    child: Column(children: [
                      Container(
                        padding: EdgeInsets.all(30),
                        child: Form(
                          key: formstate,
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Player 1 :",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              TextFormField(
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "il est vide ";
                                  }
                                  if (value.length > 10) {
                                    return " maximum 10 caractere";
                                  }
                                  if (value.length < 4) {
                                    return " minimum 4 caractere";
                                  }
                                },
                                onSaved: (val) {
                                  player1 = val;
                                },
                                decoration: InputDecoration(
                                  hintText: "write name ",
                                  hintStyle: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 131, 129, 129)),
                                  fillColor: Color.fromARGB(235, 178, 210, 236),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(235, 170, 209, 241),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.all(10),
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Player 2 :",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                              ),
                              TextFormField(
                                //ila kan khawi yktb vide
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "il est vide ";
                                  }
                                  if (value.length > 10) {
                                    return " maximum 10 caractere";
                                  }
                                  if (value.length < 4) {
                                    return " minimum 4 caractere";
                                  }
                                },

                                ///ytafficha f text
                                onSaved: (val) {
                                  player2 = val;
                                },

                                decoration: InputDecoration(
                                  hintText: "write name ",
                                  hintStyle: TextStyle(
                                      color:
                                          Color.fromARGB(255, 131, 129, 129)),
                                  fillColor:
                                      const Color.fromARGB(235, 172, 211, 243),
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(235, 170, 209, 241),
                                    ),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          255, 179, 161, 2),
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
                                      Color(0xFFC072A0),
                                      Color(0xFFD16A91),
                                      Color(0xFF6D49C2),
                                    ]),
                                    border: Border.all(
                                      color:
                                          const Color.fromARGB(0, 179, 161, 2),
                                      width: 3,
                                    ),
                                    borderRadius: BorderRadius.circular(25),
                                  ),
                                  child: InkWell(
                                    onTap: () {
                                      if (formstate.currentState!.validate()) {
                                        formstate.currentState!.save();
                                        print("valider");
                                        print(player1);
                                        print(player2);
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Xo()));
                                      } else {
                                        print("not valid");
                                      }
                                    },
                                    child: const Text(
                                      "Next ",
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
                      )
                    ]))
              ],
            )));
  }
}
