import 'package:flutter/material.dart';

void main() {
  runApp(Buttons());
}

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body: Column(children: <Widget>[
            Container(
              height: 10,
              width: double.infinity,
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Enabled"),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white)),
            ),
            TextButton(
              onPressed: null,
              child: Text('Enabled'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
            ),
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.volume_up,
                color: Colors.black,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
