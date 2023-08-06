import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int solJakKubik = 2;
  int onJakKubik = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:const Text(
          'Тапшырма 5',
          style: TextStyle(
          color: Colors.black
        ),
        ),
        centerTitle: true,
        elevation: 0,
      ),

      backgroundColor: const Color(0xffFFE93B),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child:Padding(
                padding: const EdgeInsets.all(16.0),
                child: InkWell(
                  onTap: () {
                    setState(() {
                      
                    });
                    onJakKubik = Random().nextInt(4);
                    print('onJakKubik: $onJakKubik');
                  },
                  child: Image.asset('assets/dice${ onJakKubik== 0? onJakKubik = 1: onJakKubik}.png'),
              ),
              ),
            ),
             Expanded(
              child: Padding(
               padding: const EdgeInsets.all(16.0),
            
              child:GestureDetector(
                onTap: () {
                  setState(() {
                     solJakKubik = Random().nextInt(4);
                  });
              
                },
                 child:
                  Image.asset(
              'assets/dice${solJakKubik == 0? solJakKubik = 1: solJakKubik}.png'),
              ),
            ),
             ),
        ],
        ),
      ),

    );
  }
} 


 