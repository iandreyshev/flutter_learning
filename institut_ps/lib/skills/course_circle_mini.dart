import 'package:flutter/material.dart';

class CourseCircleMini extends StatelessWidget {
  final String url;

  CourseCircleMini(this.url);

  static designTools() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/IpnTQXXsEjc.jpg');
  static webDesign() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/XEQximMncL0.jpg');
  static webDev() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/ea1JgpxyrVM.jpg');
  static uxUiDesign() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/liD796klY3s.jpg');
  static uiDesign() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/gCjKkyDHai8.jpg');

  static marketing() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/i_PUGn8qAKc.jpg');
  static ads() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/dV6gNBcY7FQ.jpg');
  static copywriting() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/KPN_eVpT1c8.jpg');
  static seo() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/WxBY2LNN_Lk.jpg');
  static sales() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/D01RsvClq4.jpg');

  static illustrations() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/PlB9yb6uBC4.jpg');

  static branding() => CourseCircleMini(
      'https://godesign.school/wp-content/uploads/2019/08/VWGf2DeRCCw.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 2, color: Colors.white),
        image: DecorationImage(
          image: NetworkImage(url),
        ),
      ),
    );
  }
}
