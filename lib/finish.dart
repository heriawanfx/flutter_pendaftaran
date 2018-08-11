import 'package:flutter/material.dart';

class Finish extends StatefulWidget {
  @override
  _FinishState createState() => _FinishState();
}

class _FinishState extends State<Finish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Finish"),),
      body: Container(
        child: Center(
          child: Text("Finish"),
        ),
      ),
    );
  }
}