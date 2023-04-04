import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ListViewItem extends StatelessWidget {
  final int no;
  const ListViewItem({super.key, required this.no});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, right: 10),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: 2, color: Colors.black12),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(5),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(33, 150, 243, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          const CircleAvatar(
            radius: 30,
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text('Person $no'),
            Text('item $no'),
          ]),
          const Spacer(flex: 1),
          const FaIcon(FontAwesomeIcons.ellipsisVertical),
        ]),
      ),
    );
  }
}
