import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text('XYLOPHONE'),
          backgroundColor: Colors.blue[900],
        ),
        body: XylophoneApp(),
      )),
    );

class XylophoneApp extends StatelessWidget {
  void playsound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  //
  // Expanded buildkey({required Color color, required int num}) {
  //   return Expanded(
  //     child: FlatButton(
  //         color: color,
  //         onPressed: () {
  //           playsound(num);
  //         },
  //         child: Text('')),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //this is how we write fn
              // buildkey(color: Colors.pink[100], num: 1)
              Expanded(
                child: FlatButton(
                    color: Colors.lightBlue[200],
                    onPressed: () {
                      playsound(1);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightBlue[300],
                    onPressed: () {
                      playsound(2);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightBlue[400],
                    onPressed: () {
                      playsound(3);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightBlue,
                    onPressed: () {
                      playsound(4);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightBlue[600],
                    onPressed: () {
                      playsound(5);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightBlue[700],
                    onPressed: () {
                      playsound(6);
                    },
                    child: Text('')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightBlue[800],
                    onPressed: () {
                      playsound(7);
                    },
                    child: Text('')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
