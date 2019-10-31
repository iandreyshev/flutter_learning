import 'package:flutter/material.dart';
import 'package:refactoring_guru/experts/expert_image.dart';

class MainExpertsList extends StatelessWidget {
  final Function onTap;

  MainExpertsList(this.onTap);

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
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          scrollDirection: Axis.horizontal,
          children: List.of([
            ExpertImage.denisKorablev(onTap),
            ExpertImage.annaTsaregorodceva(onTap),
            ExpertImage.sergeyLapin(onTap),
            ExpertImage.michailMorjanaev(onTap),
            ExpertImage.pavelHramkin(onTap),
            ExpertImage.konstantinTihomirov(onTap),
            ExpertImage.vladKonovalov(onTap),
            ExpertImage.dmitryFedotov(onTap),
          ]),
        ),
      ),
    );
  }
}
