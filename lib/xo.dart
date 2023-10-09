import 'package:flutter/material.dart';

import 'package:xo/main.dart';
import 'package:xo/start.dart';
import 'package:xo/winlost.dart';
 bool x1 =true;
 bool x2 =true;
 bool x3 =true;
 bool x4 =true;
 bool x5 =true;
 bool x6 =true;
 bool x7 =true;
 bool x8 =true;
 bool x9 =true;
 int con=1;
   onChange(bool c){
   if(c==true){ c=false;}else{ c=true;};
   return c;
   
 }
class Xo extends StatefulWidget {
 
  const Xo({super.key});

  @override
  State<Xo> createState() => _XoState();
}

class _XoState extends State<Xo> {
  
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
              margin:const EdgeInsets.only(right: 350),
              child: IconButton(
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) =>const Start()));
                },
                icon:const Icon(Icons.arrow_back),
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 40,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        child: Text(
                          "Player 1 : $player1 ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ])),
            Container(
                padding:const EdgeInsets.all(10),
                margin:const EdgeInsets.symmetric(horizontal: 50),
                width: 250,
                height: 280,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(50, 158, 158, 158),
                  border: Border.all(
                      color:const Color.fromARGB(69, 231, 228, 228), width: 2),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                           InkWell(onTap: () {setState(() {
                           x1= onChange(x1);
                           }
                               
                            );},
                            child: Container(
                              color: Colors.grey,
                              height: 80,
                              width: 80,
                              child: x1==true?Icon(Icons.circle_outlined):null,
                            ),
                          ),
                          InkWell(onTap: () {setState(() {
                           x2= onChange(x2);});
                            print(x2);
                            },
                            child: Container(
                              color: Colors.grey,
                              height: 80,
                              width: 80,
                              child: x2==true?Icon(Icons.circle_outlined):null,
                            ),
                          ),
                          InkWell(onTap: () {setState(() {x3= onChange(x3);});},
                            child: Container(
                              color: Colors.grey,
                              height: 80,
                              width: 80,
                              child: x3==true?Icon(Icons.circle_outlined):null,
                            ),
                          ),
                          
                       
                      ],
                    ),
                    
                  ],
                )),
            Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 60,
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.all(7),
                        child: Text(
                          "Player 2 : $player2 ",
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ),
                    ])),
            IconButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) =>const Winlost()));
                },
                icon: Icon(
                  Icons.arrow_right_alt_sharp,
                  size: 40,
                  color: Colors.white,
                )),
          ],
        ),
      ),
    );
  }
}
