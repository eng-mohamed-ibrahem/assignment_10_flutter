import 'package:flutter/material.dart';

import '../screens/my_home_page.dart';

class  MyApp extends StatelessWidget{
 const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage(),);
  }

}