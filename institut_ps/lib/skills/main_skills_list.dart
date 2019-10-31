import 'package:flutter/material.dart';
import 'package:refactoring_guru/skill_card.dart';

class MainSkillsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      child: ListView.builder(
        padding: EdgeInsets.only(left: 16, bottom: 42, right: 16),
        itemBuilder: (context, index) => SkillCard(index),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
