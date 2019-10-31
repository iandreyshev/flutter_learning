import 'package:flutter/material.dart';
import 'package:refactoring_guru/resources/colors.dart';

class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          )
        ],
      ),
    );
  }
}
