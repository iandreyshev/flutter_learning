import 'package:flutter/material.dart';
import 'package:refactoring_guru/colors.dart';

class CoursesList extends StatefulWidget {
  @override
  _CoursesListState createState() => _CoursesListState();
}

class _CoursesListState extends State<CoursesList> {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        width: double.infinity,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, position) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                color: AppColors.primaryDark,
                elevation: 8,
                child: Container(
                  width: 240,
                  child: Text('$position'),
                ),
              ),
            );
          },
          itemCount: 12,
        ),
      ),
    );
  }
}
