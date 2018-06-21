import 'package:flutter/material.dart';

 Widget Content(){
  return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image(image: AssetImage("assets/images/bg_home.jpg"),
        fit: BoxFit.fill,),
      ],

    
  );
}