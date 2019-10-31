import 'package:flutter/material.dart';

class CourseCircleMini extends StatelessWidget {
  final String url;

  CourseCircleMini(this.url);

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
