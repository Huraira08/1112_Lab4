import 'package:flutter/material.dart';

void main() {
  runApp(design());
}

class design extends StatelessWidget {
  const design({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.blue,
                  width: 200,
                ),
                flex: 1,
              ),
              Expanded(
                child: Container(
                  color: Colors.yellow,
                  width: 200,
                ),
                flex: 2,
              ),
              Expanded(
                child: Container(
                  color: Colors.blue,
                  width: 200,
                ),
                flex: 1,
              ),
              Container(
                width: double.infinity,
              )
            ]),
      )),
    );
  }
}
