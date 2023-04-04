import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  
  final Widget leading = const Center(
      child: FaIcon(
    FontAwesomeIcons.arrowLeft,
    color: Color.fromRGBO(19, 19, 19, 1),
  ));

  final Widget title = const Text(
    "List View Widget",
    style: TextStyle(color: Colors.black),
  );

  final Color backgroundColor = const Color.fromRGBO(255, 255, 255, 1);

  final List<Widget> actions = <Widget>[
    Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
      FaIcon(FontAwesomeIcons.angleLeft, color: Color.fromRGBO(19, 19, 19, 1)),
      SizedBox(
        width: 5,
      ),
      FaIcon(FontAwesomeIcons.angleRight, color: Color.fromRGBO(19, 19, 19, 1)),
    ])
  ];

  final bool centerTitle = true;

  final BuildContext context;

  CustomAppBar({super.key, required this.context});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: title,
      centerTitle: centerTitle,
      leading: leading,
      actions: actions,
      backgroundColor: backgroundColor,
    );
  }

  @override
  Size get preferredSize => Size(MediaQuery.of(context).size.width, 56);
}
