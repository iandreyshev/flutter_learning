import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        itemBuilder: (context, index) =>
            index == 0 ? _buildFirstCard() : _buildCard(index),
        itemCount: 42,
      ),
    );
  }

  Widget _buildFirstCard() {
    return Card(
      elevation: 10,
      margin: EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
      ),
      clipBehavior: Clip.antiAliasWithSaveLayer,
      color: Colors.white,
      child: Container(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Container(
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0xffD35601), Color(0xff471D04)],
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 18, bottom: 20),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.play_circle_outline,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: Text(
                            'Продолжить обучение',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(height: 8, color: Color(0xff4c98e1))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      'Главред',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.outlined_flag, color: Color(0xffacb2b8)),
                      Text(
                        'Завершить до 1.03.2019',
                        style: TextStyle(
                          fontSize: 13,
                          color: Color(0xff666e75),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildCard(int index) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 18),
      child: Container(
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 90,
              height: 72,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xff3384BE), Color(0xff8BB4D5)]),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'UX Crash Course: Fundamentals',
                      overflow: TextOverflow.clip,
                      softWrap: true,
                      maxLines: 2,
                      style: TextStyle(
                        color: Color(0xff2e343b),
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8, bottom: 8),
                      child: Container(
                        height: 3,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xff4c98e1), Color(0xff4fc0e9)],
                          ),
                        ),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Icon(
                            Icons.outlined_flag,
                            color: Color(0xffacb2b8),
                            size: 16,
                          ),
                        ),
                        Text(
                          'Завершить до 1.03.2019',
                          style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff666e75),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
