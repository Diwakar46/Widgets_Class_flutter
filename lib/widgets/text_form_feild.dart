import 'package:flutter/material.dart';

class Custom_Form_Feild extends StatelessWidget{
  final String? labelText;
  final Icon? icon;
  final Icon? icon_label;
  final double o_border_radius;
  final Color color;

  const Custom_Form_Feild({this.labelText,this.icon,this.icon_label,required this.o_border_radius,required this.color});

  @override
  Widget build(BuildContext context){
    return TextFormField(
      autovalidateMode: AutovalidateMode.always,
     decoration: InputDecoration(
       focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(
           color: color,
         ),
         borderRadius: BorderRadius.circular(o_border_radius),
       ),
       labelText: labelText,
       label: icon_label,
       icon: icon,
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(o_border_radius)

       )
     ),
    );
  }

}