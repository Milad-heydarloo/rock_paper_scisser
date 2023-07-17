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

PreferredSizeWidget _app_bar() {
  return AppBar(
    backgroundColor: Colors.black,
    centerTitle: true,
    titleTextStyle: TextStyle(color: Colors.white),
    title: Text(
      'بازی سنگ کاغذ قیچی',
      style: TextStyle(fontSize: 25, fontFamily: 'vazir'),
    ),
  );
}

class _app_state_fullState extends State<app_state_full> {
  int a = 2;
  int b = 2;
  bool t = false;
  //setstate in method ro dobare load mikoneh
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _app_bar(),
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
              Container(
                width: 200,
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  TextButton(
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.black,
                    ),
                    onPressed: () {
                      for (var i = 0; i < 100; i++) {
                        setState(() {
                          setState(() {
                            a = Random().nextInt(3) + 1;
                            b = Random().nextInt(3) + 1;
                          });
                        });
                      }
                    },
                    onLongPress: () {
                      for (var i = 0; i < 2; i++) {
                        setState(() {
                          a = Random().nextInt(3) + 1;
                          b = Random().nextInt(3) + 1;
                        });
                      }
                    },
                    child: Text(
                      textDirection: TextDirection.rtl,
                      'شروع بازی',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ]),
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
