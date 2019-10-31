import 'package:flutter/material.dart';
import 'package:refactoring_guru/main_subtitle.dart';
import 'package:refactoring_guru/main_title.dart';
import 'package:refactoring_guru/resources/colors.dart';
import 'package:refactoring_guru/resources/fonts.dart';
import 'package:refactoring_guru/skills/main_skills_list.dart';

import 'experts/main_experts_list.dart';

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
                  MainExpertsList(() {
                    _onExpertTap(context);
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onExpertTap(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: new Wrap(
              children: <Widget>[
                new ListTile(
                    leading: new Icon(Icons.music_note),
                    title: new Text('Music'),
                    onTap: () => {}),
                new ListTile(
                  leading: new Icon(Icons.videocam),
                  title: new Text('Video'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }
}
