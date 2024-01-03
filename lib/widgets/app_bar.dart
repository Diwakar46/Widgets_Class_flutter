import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color? appbar_bg;
  final Text? my_title;
  final Icon? leading_icon;
  double? my_elevation;
  final IconData trailing_icon;

  CustomAppBar(
      {this.my_elevation,
      required this.trailing_icon,
      required this.my_title,
      required this.appbar_bg,
      required this.leading_icon});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: appbar_bg,
      title: my_title,
      leading: leading_icon,
      elevation: my_elevation,
      actions: [IconButton(onPressed: () {}, icon: Icon(trailing_icon))],
    );
  }
}
