import 'package:flutter/material.dart';

class MainExperts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: Container(
        width: double.infinity,
        height: 500,
        child: GridView.count(
          padding: EdgeInsets.only(left: 16, bottom: 24, right: 16),
          crossAxisCount: 3,
          scrollDirection: Axis.horizontal,
          children: List.generate(100, (index) {
            return Card(
              color: Colors.amber,
              child: Text(
                'Item $index',
                style: Theme.of(context).textTheme.headline,
              ),
            );
          }),
        ),
      ),
    );
  }
}
