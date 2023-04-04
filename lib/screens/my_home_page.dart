import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../custom_app_bar.dart';
import '../custom_widgets/list_view_item.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(context: context),
      body: Container(
        color: Colors.white70,
        child: ListView.builder(
          itemBuilder: (_, index) => ListViewItem(
            no: index + 1,
          ),
          itemCount: 20,
        ),
      ),
    );
  }

// --------------------------------  Suggestion ---------------------------------

  // AppBar(
  //         backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
  //         leading: const Center(
  //             child: FaIcon(
  //           FontAwesomeIcons.arrowLeft,
  //           color: Color.fromRGBO(19, 19, 19, 1),
  //         )),
  //         title: const Text(
  //           "List View Widget",
  //           style: TextStyle(color: Colors.black),
  //         ),
  //         centerTitle: true,
  //         actions: [
  //           Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
  //             FaIcon(FontAwesomeIcons.angleLeft,
  //                 color: Color.fromRGBO(19, 19, 19, 1)),
  //             SizedBox(
  //               width: 5,
  //             ),
  //             FaIcon(FontAwesomeIcons.angleRight,
  //                 color: Color.fromRGBO(19, 19, 19, 1)),
  //           ])
  //         ])

  // ---------- trying out to use ListView.builder() inside Column but i get error with nested scrollable  ------------

  // return Scaffold(
  //   body: Column(
  //       mainAxisAlignment: MainAxisAlignment.start,
  //       // mainAxisSize: MainAxisSize.max,
  //       children: [
  //         Container(
  //           padding: const EdgeInsets.all(20),
  //           decoration: const BoxDecoration(
  //             border: Border(
  //               bottom: BorderSide(color: Colors.black12, width: 2),
  //             ),
  //           ),
  //           child: Row(
  //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //               mainAxisSize: MainAxisSize.max,
  //               children: [
  //                 const FaIcon(
  //                   FontAwesomeIcons.arrowLeft,
  //                 ),
  //                 const Text('List View Widget',
  //                     style: TextStyle(
  //                         color: Colors.black, fontWeight: FontWeight.bold)),
  //                 Row(children: const [
  //                   FaIcon(FontAwesomeIcons.angleLeft),
  //                   FaIcon(FontAwesomeIcons.angleRight),
  //                 ]),
  //               ]),
  //         ),
  //         ListView.builder(
  //           itemBuilder: (_, index) => ListViewItem(
  //             no: index + 1,
  //           ),
  //           itemCount: 20,
  //         )
  //       ]),
  // );
}
