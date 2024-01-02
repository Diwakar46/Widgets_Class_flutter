import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
  final Text? my_title;
  final Icon? my_icon;
   double? my_elevation;
   CustomAppBar({ this.my_elevation,required this.my_icon,required this.my_title});
  Widget build(BuildContext context){
    return AppBar(
      title: my_title,
      leading: my_icon,
      elevation:my_elevation ,
      actions: [


      ],
    );
  }
}