import 'package:flutter/material.dart';
import 'package:refactoring_guru/colors.dart';
import 'package:refactoring_guru/fonts.dart';

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
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40,
                      bottom: 8,
                      left: 16,
                      right: 16,
                    ),
                    child: Text(
                      'ИПС Творческий',
                      style: TextStyle(
                        color: AppColors.fontPrimary,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 16, right: 16, bottom: 32),
                    child: Text(
                      'Здесь учатся сотрудники, студенты и ребята, которые живо интересуются темой digital-профессий.',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 12),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 12.0,
                              horizontal: 24.0,
                            ),
                            child: Text(
                              'НАВЫКИ',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text('+ 12 ТРЕКОВ', style: TextStyle(fontSize: 24)),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 450,
                    child: ListView.builder(
                      padding: EdgeInsets.only(left: 16, bottom: 42, right: 16),
                      itemBuilder: (context, index) {
                        return Container(
                          width: 250,
                          child: Card(
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            color: Colors.red,
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.computer),
                                  Text('ДИЗАЙН / ПРОЕКТИРОВАНИЕ'),
                                  Text('5 ТРЕКОВ')
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(width: 2),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 8.0,
                              horizontal: 12.0,
                            ),
                            child: Text(
                              'НАСТАВНИКИ',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 16,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 500,
                      child: GridView.count(
                        padding:
                            EdgeInsets.only(left: 16, bottom: 24, right: 16),
                        crossAxisCount: 3,
                        scrollDirection: Axis.horizontal,
                        children: List.generate(100, (index) {
                          return Card(
                            color: Colors.amber,
                            child: Text(
                              'Item $index',
                              style: Theme.of(context).textTheme.headline,
                            ),
                          );
                        }),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
