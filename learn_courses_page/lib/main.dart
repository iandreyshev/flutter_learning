import 'package:flutter/material.dart';
import 'package:hello_world/app_list.dart';
import 'package:hello_world/app_title.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: SafeArea(
          child: Container(
            width: double.infinity,
            child: Column(
              children: <Widget>[
                AppTitle(),
                Expanded(
                  child: AppList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
