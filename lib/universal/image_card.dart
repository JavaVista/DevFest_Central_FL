import 'package:devfestfl/config/config_bloc.dart';
import 'package:devfestfl/utils/tools.dart';
import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final String img;

  const ImageCard({super.key, required this.img});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(14),
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: ConfigBloc().darkModeOn
          ? Tools.hexToColor("#1f2124")
          : Colors.white,
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Image.asset(
        img,
        fit: BoxFit.cover,
        filterQuality: FilterQuality.high,
      ),
    );
  }
}
