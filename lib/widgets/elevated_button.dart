import 'package:flutter/material.dart';

class Custom_Elevated_Button extends StatelessWidget {
  final String button_text;
   final Color button_Color;
  const Custom_Elevated_Button({required this.button_text,required this.button_Color});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(button_Color)),
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.only(left: 8, top: 15),
            child: Text(button_text),
            height: 45,
            width: 50,
          )),
    );
  }
}
