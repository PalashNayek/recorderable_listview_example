import 'package:flutter/material.dart';
import 'package:recorderable_listview_example/di/setup_locator.dart';
import 'package:recorderable_listview_example/screens/reorderable_list_screen.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reorderable List Example',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ReorderableListScreen(),
    );
  }
}
