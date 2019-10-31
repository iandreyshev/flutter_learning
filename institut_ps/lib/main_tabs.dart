import 'package:flutter/material.dart';

class MainTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(40),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2),
          borderRadius: BorderRadius.circular(20.0),
        ),
        width: double.infinity,
        child: Text('Курсы'),
      ),
    );
  }

}
