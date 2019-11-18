import 'dart:math';

import 'package:flutter/material.dart';
import 'package:refactoring_guru/skills/course_circle_mini.dart';

class MainSkillsList extends StatelessWidget {
  static final pagesCount = 4;

  var currentPage;
  var padding = 20.0;
  var verticalInset = 20.0;

  MainSkillsList(this.currentPage);

  @override
  Widget build(BuildContext context) {
    var cardAspectRatio = 3.0 / 4.0;

    return Container(
      width: double.infinity,
      height: 420,
      child: LayoutBuilder(
        builder: (context, constaints) {
          var width = constaints.maxWidth;
          var height = constaints.maxHeight;

          var safeWidth = width - 2 * padding;
          var safeHeight = height - 2 * padding;

          var heightOfPrimaryCard = safeHeight;
          var widthOfPrimaryCard = heightOfPrimaryCard * cardAspectRatio;

          var primaryCardLeft = safeWidth - widthOfPrimaryCard;
          var horizontalInset = primaryCardLeft / 2;

          List<Widget> cardList = List();

          for (var i = 0; i < pagesCount; i++) {
            var delta = i - currentPage;
            bool isOnRight = delta > 0;

            var start = padding +
                max(
                    primaryCardLeft -
                        horizontalInset * -delta * (isOnRight ? 15 : 1),
                    0);

            var cardItem = Positioned.directional(
              top: padding + verticalInset * max(-delta, 0),
              bottom: padding + verticalInset * max(-delta, 0),
              start: start,
              textDirection: TextDirection.rtl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: _buildSkillsCardAt(i),
              ),
            );

            cardList.add(cardItem);
          }

          return Stack(
            children: cardList,
          );
        },
      ),
    );
  }

  Widget _buildSkillsCardAt(int position) {
    switch (position) {
      case 3:
        return _buildSkillContent(
            List.of([
              CourseCircleMini.designTools(),
              CourseCircleMini.webDesign(),
              CourseCircleMini.webDev(),
              CourseCircleMini.uxUiDesign(),
              CourseCircleMini.uiDesign(),
            ]),
            'ДИЗАЙН /\nПРОЕКТИРОВАНИЕ',
            '5 ТРЕКОВ');
      case 2:
        return _buildSkillContent(
            List.of([
              CourseCircleMini.marketing(),
              CourseCircleMini.ads(),
              CourseCircleMini.copywriting(),
              CourseCircleMini.seo(),
              CourseCircleMini.sales(),
            ]),
            'МАКРЕТИНГ /\nПРОДАЖИ',
            '5 ТРЕКОВ');
      case 1:
        return _buildSkillContent(
            List.of([
              CourseCircleMini.illustrations(),
            ]),
            'ИЛЛЮСТРАЦИЯ /\nКРЕАТИВ',
            '5 ТРЕКОВ');
      case 0:
        return _buildSkillContent(
            List.of([
              CourseCircleMini.branding(),
            ]),
            'БРЕНДИНГ /\nАНАЛИТИКА',
            '5 ТРЕКОВ');
    }

    return null;
  }

  Widget _buildSkillContent(List<Widget> icons, String title, String subtitle) {
    var i = 0;
    var offsetStep = 25;
    var iconsWithOffset = icons
        .map<Widget>((icon) {
          return Padding(
            padding: EdgeInsets.only(left: (i++ * offsetStep).toDouble()),
            child: icon,
          );
        })
        .toList()
        .reversed
        .toList();

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Color(0xff1a1921),
      margin: EdgeInsets.zero,
      child: Container(
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Stack(
              children: iconsWithOffset,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 25,
                left: 16,
                right: 16,
              ),
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
              child: Text(
                subtitle,
                style: TextStyle(
                  color: Color(0xffffffff),
                  fontSize: 24,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
