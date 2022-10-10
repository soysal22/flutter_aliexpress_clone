import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

class ContainerIconText extends StatelessWidget {
  const ContainerIconText(
      {super.key, required this.text, required this.icon, this.colorone});

  final String text;
  final dynamic icon;
  final colorone;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: RadialGradient(colors: [
              AliexpressConst.colorRed,
              AliexpressConst.colorOrange
            ]),
          ),
          child: Icon(icon, color: colorone, size: 32),
          height: MediaQuery.of(context).size.height / 16,
          width: MediaQuery.of(context).size.width / 8,
        ),
        AliexpressConst.sizedBoxHeight15,
        Text(text,
            style:
                Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
        AliexpressConst.sizedBoxWidth10,
      ],
    );
  }
}
