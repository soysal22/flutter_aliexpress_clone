import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

class AliexpressHomeOrder extends StatelessWidget {
  const AliexpressHomeOrder(
      {super.key,
      required this.image,
      required this.text,
      required this.textone});
  final String image;
  final String text;
  final String textone;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          ClipRRect(
            borderRadius: AliexpressConst.borderRadiusCircular10,
            child: Image.asset(
              image,
              height: MediaQuery.of(context).size.height / 6.5,
              width: MediaQuery.of(context).size.width / 3,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              right: 83,
              bottom: 89,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: AliexpressConst.radiusCircular10,
                    bottomRight: AliexpressConst.radiusCircular10),
                child: Container(
                  width: 48,
                  height: 35,
                  color: AliexpressConst.colorRed,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(text,
                        style: Theme.of(context).textTheme.headline5?.copyWith(
                            fontSize: 13,
                            color: AliexpressConst.colorWhite,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ))
        ],
      ),
      AliexpressConst.sizedBoxHeight5,
      ElevatedButton(
        onPressed: () {},
        child: Text(
          textone,
          style: Theme.of(context)
              .textTheme
              .headline6
              ?.copyWith(color: AliexpressConst.colorWhite, fontSize: 18),
        ),
        style: ElevatedButton.styleFrom(
            maximumSize: Size(120, 36),
            backgroundColor: AliexpressConst.colorRed),
      ),
      AliexpressConst.sizedBoxHeight5,
      Text(
        AliexpressConst.accountiOrder,
        style: Theme.of(context)
            .textTheme
            .headline6
            ?.copyWith(color: AliexpressConst.colorRed, fontSize: 15),
      )
    ]);
  }
}
