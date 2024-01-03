import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Color? appbar_bg;
  final Text? my_title;
  final Icon? my_icon;
   double? my_elevation;

   CustomAppBar({ this.my_elevation,this.my_icon,required this.my_title,required this.appbar_bg});
   @override
   Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context){
    return AppBar(
      backgroundColor:appbar_bg ,
      title: my_title,
      leading: my_icon,
      elevation:my_elevation ,
      actions: [

      ],
    );
  }
}