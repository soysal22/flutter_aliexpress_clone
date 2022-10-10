import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

class AliexpressCategory extends StatelessWidget {
  const AliexpressCategory(
      {super.key,
      required this.image,
      required this.text,
      required this.textone,
      required this.texttwo});
  final String image;
  final String text;
  final String textone;
  final String texttwo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: MediaQuery.of(context).size.height / 3.9,
              width: MediaQuery.of(context).size.width / 2.5,
              decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 1.0,
                      spreadRadius: 0.0,
                      offset: Offset(2.0, 2.0),
                    )
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.white),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: SizedBox.fromSize(
                            child: Image.asset(
                          image,
                          fit: BoxFit.cover,
                          height: MediaQuery.of(context).size.height / 6.5,
                          width: MediaQuery.of(context).size.width,
                        )),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          text,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: AliexpressConst.colorRed,
                                  fontSize: 20),
                        ),
                        AliexpressConst.sizedBoxHeight5,
                        RichText(
                          text: const TextSpan(children: <TextSpan>[
                            TextSpan(
                                text: AliexpressConst.homeGlassesMoney,
                                style: TextStyle(
                                    color: Colors.grey,
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 15))
                          ]),
                        ),
                        AliexpressConst.sizedBoxHeight5,
                        FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              texttwo,
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge
                                  ?.copyWith(fontSize: 15),
                            )),
                      ],
                    )
                  ])),
        ],
      ),
    );
  }
}
