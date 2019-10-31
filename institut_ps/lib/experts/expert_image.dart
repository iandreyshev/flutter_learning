import 'package:flutter/material.dart';

class ExpertImage extends StatelessWidget {
  static denisKorablev(Function onTap) => ExpertImage(
        'https://sun9-29.userapi.com/c848532/v848532061/18339a/-U8IFXpQ29o.jpg',
        onTap: onTap,
      );
  static annaTsaregorodceva(Function onTap) => ExpertImage(
        'https://sun9-72.userapi.com/c848532/v848532061/1833a3/LG_8O7mz968.jpg',
        onTap: onTap,
      );
  static sergeyLapin(Function onTap) => ExpertImage(
        'https://sun9-32.userapi.com/c848532/v848532061/1833ab/v_g8l6hiWbM.jpg',
        onTap: onTap,
      );
  static michailMorjanaev(Function onTap) => ExpertImage(
        'https://sun9-6.userapi.com/c848532/v848532061/1833b3/O6-aWsXt9pc.jpg',
        onTap: onTap,
      );
  static pavelHramkin(Function onTap) => ExpertImage(
        'https://sun9-60.userapi.com/c848532/v848532061/1833bb/viDoT_L3EbI.jpg',
        onTap: onTap,
      );
  static konstantinTihomirov(Function onTap) => ExpertImage(
        'https://sun9-34.userapi.com/c848532/v848532061/1833c4/ztwNZZFWpVQ.jpg',
        onTap: onTap,
      );
  static vladKonovalov(Function onTap) => ExpertImage(
        'https://sun9-33.userapi.com/c848532/v848532061/1833d4/P01Nha8-gXc.jpg',
        onTap: onTap,
      );
  static dmitryFedotov(Function onTap) => ExpertImage(
        'https://sun9-5.userapi.com/c848532/v848532061/1833dc/5C-tqX-fM4U.jpg',
        onTap: onTap,
      );

  final String url;
  final Function onTap;

  ExpertImage(this.url, {this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        height: 100,
        child: Image.network(url),
      ),
    );
  }
}
