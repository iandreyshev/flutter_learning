import 'package:flutter/material.dart';

class MainSubtitle extends StatelessWidget {
  final String text;
  final String subtext;

  MainSubtitle(this.text, {this.subtext = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, bottom: 12),
      child: Row(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 24.0,
              ),
              child: Text(
                text,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(subtext, style: TextStyle(fontSize: 24)),
        ],
      ),
    );
  }
}
