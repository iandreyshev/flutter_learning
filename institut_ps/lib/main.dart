import 'package:flutter/material.dart';
import 'package:refactoring_guru/colors.dart';
import 'package:refactoring_guru/fonts.dart';
import 'package:refactoring_guru/main_experts.dart';
import 'package:refactoring_guru/main_skills_list.dart';
import 'package:refactoring_guru/main_subtitle.dart';
import 'package:refactoring_guru/main_title.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Курсы',
      theme: ThemeData(primarySwatch: Colors.blue, fontFamily: AppFonts.main),
      home: Scaffold(
        backgroundColor: AppColors.primary,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MainTitle(),
                  MainSubtitle('НАВЫКИ', subtext: '+ 12 ТРЕКОВ'),
                  MainSkillsList(),
                  MainSubtitle('НАСТАВНИКИ'),
                  MainExperts(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
