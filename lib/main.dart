import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 1;
  void tekantombol() {
    setState(() {
      number = number + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan StatefullWidget"),),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("MuhammadDena-21552011440"),
              Text(number.toString()),
              MaterialButton(
                  color: Colors.blue[100],
                  height: 50,
                  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                  onPressed: tekantombol,
                  child: Text("Tambah"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
