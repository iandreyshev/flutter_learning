import 'package:flutter/material.dart';

class AppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        child: _buildMainTitle(),
      ),
    );
  }

  Widget _buildMainTitle() {
    return Text(
      'Мои курсы',
      maxLines: 10,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Color(0xff2e343b),
      ),
    );
  }
}
