import 'package:flutter/material.dart';
class duyurular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text("Duyurular"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        backgroundColor: Colors.white,
        body:Center( child:Text("Duyuru ekranı"))
    );
  }
}