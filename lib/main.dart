import 'package:flutter/material.dart';

void main() {
  runApp(run_run());
}

class run_run extends StatelessWidget {
  const run_run({super.key});

  @override
  Widget build(BuildContext context) {
    int a = 3;
    int b = 2;
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
                onPressed: () {},
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
