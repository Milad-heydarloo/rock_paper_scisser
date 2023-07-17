import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(app_state_full());
}

//dar in state mitonim mohtava ro taqir bedim
class app_state_full extends StatefulWidget {
  const app_state_full({super.key});

  @override
  State<app_state_full> createState() => _app_state_fullState();
}

class _app_state_fullState extends State<app_state_full> {
  int a = 2;
  int b = 2;
  //setstate in method ro dobare load mikoneh
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'sang',
          ),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 100,
                width: 100,
                child: Image(
                  image: AssetImage(
                    'images/$a.png',
                  ),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                    side: BorderSide(width: 2, color: Colors.white)),
                onPressed: () {
                  //in method ye bar dige fullwidget ro seda mizaneh va maqadir ro update mikoneh
                  setState(() {
                    a = 1;
                    b = 3;
                  });
                },
                child: Text('Start'),
              ),
              Container(
                height: 100,
                width: 100,
                child: Image(
                  image: AssetImage(
                    'images/$b.png',
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
