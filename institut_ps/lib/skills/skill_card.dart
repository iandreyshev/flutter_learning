import 'package:flutter/material.dart';

import 'course_circle_mini.dart';

class SkillCard extends StatelessWidget {
  static final skillsCount = 4;
  final skillNumber;

  SkillCard(this.skillNumber);

  @override
  Widget build(BuildContext context) {
    Widget skillContent;
    switch (skillNumber) {
      case 0:
        skillContent = _buildSkill(
            List.of([
              CourseCircleMini.designTools(),
              CourseCircleMini.webDesign(),
              CourseCircleMini.webDev(),
              CourseCircleMini.uxUiDesign(),
              CourseCircleMini.uiDesign(),
            ]),
            'ДИЗАЙН /\nПРОЕКТИРОВАНИЕ',
            '5 ТРЕКОВ');
        break;
      case 1:
        skillContent = _buildSkill(
            List.of([
              CourseCircleMini.marketing(),
              CourseCircleMini.ads(),
              CourseCircleMini.copywriting(),
              CourseCircleMini.seo(),
              CourseCircleMini.sales(),
            ]),
            'МАКРЕТИНГ /\nПРОДАЖИ',
            '5 ТРЕКОВ');
        break;
      case 2:
        skillContent = _buildSkill(
            List.of([
              CourseCircleMini.illustrations(),
            ]),
            'ИЛЛЮСТРАЦИЯ /\nКРЕАТИВ',
            '5 ТРЕКОВ');
        break;
      case 3:
        skillContent = _buildSkill(
            List.of([
              CourseCircleMini.branding(),
            ]),
            'БРЕНДИНГ /\nАНАЛИТИКА',
            '5 ТРЕКОВ');
        break;
    }

    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Color(0xff1a1921),
      child: skillContent,
    );
  }

  Widget _buildSkill(List<Widget> icons, String title, String subtitle) {
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

    return Container(
      width: 200,
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
    );
  }
}
