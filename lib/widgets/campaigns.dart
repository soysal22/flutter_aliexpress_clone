import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

class AliexpressCampaigns extends StatelessWidget {
  const AliexpressCampaigns(
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 3.2,
            width: MediaQuery.of(context).size.width / 2.4,
            decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: AliexpressConst.colorLightGrey,
                    blurRadius: 1.0,
                    spreadRadius: 0.0,
                    offset: Offset(2.0, 2.0),
                  )
                ],
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: AliexpressConst.colorWhite),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Center(
                    child: Stack(
                      children: [
                        Image.asset(
                          image,
                          height: MediaQuery.of(context).size.height / 5,
                          width: MediaQuery.of(context).size.width / 2.3,
                          fit: BoxFit.fill,
                        ),
                        Positioned(
                            right: 115,
                            bottom: 125,
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: AliexpressConst.radiusCircular20),
                                child: Container(
                                  width: 48,
                                  height: 35,
                                  color: AliexpressConst.colorRed,
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(text,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5
                                            ?.copyWith(
                                                fontSize: 13,
                                                color:
                                                    AliexpressConst.colorWhite,
                                                fontWeight: FontWeight.bold)),
                                  ),
                                )))
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          textone,
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
                    ),
                  )
                ])),
      ],
    );
  }
}
