import 'package:flutter/material.dart';

class Custom_Form_Feild extends StatelessWidget {
  final String? label_Text;
  final Icon? icon;
  final Icon? icon_label;
  final double o_border_radius;
  final Color bordersidecolor;
  final String? hint_text;
  final bool obscureText;

  const Custom_Form_Feild(
      {this.label_Text,
      this.hint_text,
      this.icon,
      this.icon_label,
      required this.o_border_radius,
      required this.obscureText,
      required this.bordersidecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        obscureText: obscureText,
        autovalidateMode: AutovalidateMode.always,
        decoration: InputDecoration(
            hintText: hint_text,
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: bordersidecolor,
              ),
              borderRadius: BorderRadius.circular(o_border_radius),
            ),
            labelText: label_Text,
            label: icon_label,
            icon: icon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(o_border_radius))),
      ),
    );
  }
}
