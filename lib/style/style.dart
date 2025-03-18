import 'package:flutter/material.dart';

InputDecoration InputDesign(label){
  return InputDecoration(
     focusedBorder: OutlineInputBorder(
       borderRadius: BorderRadius.circular(11),
       borderSide: BorderSide(
         color: Colors.blue
       )
     ),
         fillColor: Colors.white,
         filled: true,
     enabledBorder: OutlineInputBorder(
       borderRadius: BorderRadius.circular(11),
       borderSide: BorderSide(
         color: Colors.blue,
       )
     ),
      labelText: label,
  );
}

ButtonStyle Button(){
  return ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(11),

    ),
    backgroundColor: Colors.green,
    padding: EdgeInsets.fromLTRB(10, 20, 10, 20),


  );
}

SizedBox Listitem(child){
  return SizedBox(
    height: 60,
    width: double.infinity,
    child: Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,

      child: child,
    ),
  );
}