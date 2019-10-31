import 'package:flutter/material.dart';
import 'colors.dart';

class MainTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: Text(
        'Курсы в Йошкар-Оле',
        textAlign: TextAlign.left,
        overflow: TextOverflow.ellipsis,
        maxLines: 10,
        style: TextStyle(
          color: AppColors.fontPrimary,
          fontSize: 32,
        ),
      ),
    );
  }
}
