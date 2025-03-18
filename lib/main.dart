import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TodoList.dart';

void main(){
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "Add And remove product",
      home: MyHomePage(),
    );
  }
}