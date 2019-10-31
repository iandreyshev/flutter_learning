import 'package:flutter/material.dart';
import 'package:refactoring_guru/skills/course_circle_mini.dart';

class MainSkillsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16, bottom: 42, right: 16),
        itemBuilder: (context, index) {
          switch (index) {
            case 0:
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
            case 1:
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
            case 2:
              return _buildSkillContent(
                  List.of([
                    CourseCircleMini.illustrations(),
                  ]),
                  'ИЛЛЮСТРАЦИЯ /\nКРЕАТИВ',
                  '5 ТРЕКОВ');
            case 3:
              return _buildSkillContent(
                  List.of([
                    CourseCircleMini.branding(),
                  ]),
                  'БРЕНДИНГ /\nАНАЛИТИКА',
                  '5 ТРЕКОВ');
          }

          return null;
        },
        itemCount: 4,
        scrollDirection: Axis.horizontal,
      ),
    );
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
      margin: EdgeInsets.only(right: 16),
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
