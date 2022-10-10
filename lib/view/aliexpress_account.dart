import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';
import 'package:flutter_aliexpress/widgets/aliexpress_home_order.dart';

class AliexpressAccount extends StatefulWidget {
  const AliexpressAccount({super.key});

  @override
  State<AliexpressAccount> createState() => _AliexpressAccountState();
}

class _AliexpressAccountState extends State<AliexpressAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AliexpressConst.colorWhitegrey,
        appBar: _appBarIcons(context),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                _loginIconElevatedButtonText(context),
                AliexpressConst.sizedBoxHeight10,
                _iconFavoriteStarTimesCoupon(context),
                AliexpressConst.sizedBoxHeight10,
                _containerRowOpportunities(context),
                AliexpressConst.sizedBoxHeight10,
                Container(
                    decoration: BoxDecoration(
                        borderRadius: AliexpressConst.borderRadiusCircular10,
                        color: AliexpressConst.colorWhite),
                    height: MediaQuery.of(context).size.height / 6,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AliexpressConst.sizedBoxHeight10,
                              _textIconOrder(context),
                              AliexpressConst.sizedBoxHeight15,
                              Row(children: [
                                _columnIconPaymentText(context),
                                AliexpressConst.sizedBoxWidth10,
                                _columnIconSentText(context),
                                AliexpressConst.sizedBoxWidth10,
                                _columnIconToSentText(context),
                                AliexpressConst.sizedBoxWidth10,
                                _columnIconExaminationText(context),
                              ]),
                            ]))),
                AliexpressConst.sizedBoxHeight15,
                _containerPlayIcontext(context),
                AliexpressConst.sizedBoxHeight20,
                Container(
                  decoration: BoxDecoration(
                      borderRadius: AliexpressConst.borderRadiusCircular10,
                      color: AliexpressConst.colorWhite),
                  height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              _containerIconTextPurse(context),
                              AliexpressConst.sizedBoxWidth30,
                              _containerIconTextLocation(context),
                              AliexpressConst.sizedBoxWidth30,
                              _containerIconTextHead(context),
                              AliexpressConst.sizedBoxWidth30,
                              _containerIconTextQuestion(context)
                            ],
                          ),
                          AliexpressConst.sizedBoxHeight15,
                          Column(children: [
                            Container(
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                gradient: RadialGradient(
                                  colors: [
                                    AliexpressConst.colorRed,
                                    AliexpressConst.colorOrange
                                  ],
                                ),
                              ),
                              child: Icon(Icons.mode_edit_outline_rounded,
                                  color: AliexpressConst.colorLightPink,
                                  size: 32),
                              height: MediaQuery.of(context).size.height / 16,
                              width: MediaQuery.of(context).size.width / 8,
                            ),
                            AliexpressConst.sizedBoxHeight15,
                            Text(AliexpressConst.accountiproposal,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    ?.copyWith(fontSize: 15)),
                            AliexpressConst.sizedBoxWidth10,
                          ])
                        ]),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  Container _containerRowOpportunities(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: AliexpressConst.borderRadiusCircular10,
            color: AliexpressConst.colorLightPink),
        child: Padding(
          padding: const EdgeInsets.all(6),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AliexpressConst.homeOrder,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: AliexpressConst.colorBlack,
                        fontWeight: FontWeight.bold)),
                Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: AliexpressConst.colorRed,
                )
              ],
            ),
            AliexpressConst.sizedBoxHeight5,
            Text(AliexpressConst.homesubtitle,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(color: AliexpressConst.colorGrey, fontSize: 15)),
            AliexpressConst.sizedBoxHeight5,
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AliexpressHomeOrder(
                      image: AliexpressConst.imageHomeAirpods,
                      text: AliexpressConst.accountiOrder99,
                      textone: AliexpressConst.homeBag),
                  AliexpressConst.sizedBoxWidth5,
                  AliexpressHomeOrder(
                      image: AliexpressConst.imageAccountScissors,
                      text: AliexpressConst.accountiOrder99,
                      textone: AliexpressConst.homeGlasses),
                  AliexpressConst.sizedBoxWidth5,
                  AliexpressHomeOrder(
                      image: AliexpressConst.imageAccountFaucet,
                      text: AliexpressConst.accountiOrder95,
                      textone: AliexpressConst.accountiMoney)
                ],
              ),
            )
          ]),
        ));
  }

  Padding _iconFavoriteStarTimesCoupon(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _iconsFavoriteText(context),
            AliexpressConst.sizedBoxWidth10,
            _iconStarText(context),
            AliexpressConst.sizedBoxWidth10,
            _iconTimesText(context),
            AliexpressConst.sizedBoxWidth15,
            _iconCouponText(context)
          ],
        ));
  }

  Column _containerIconTextQuestion(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [AliexpressConst.colorRed, AliexpressConst.colorOrange],
          ),
        ),
        child: Icon(Icons.question_mark,
            color: AliexpressConst.colorLightPink, size: 32),
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width / 8,
      ),
      AliexpressConst.sizedBoxHeight15,
      Text(AliexpressConst.accounticonhelp,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
      AliexpressConst.sizedBoxWidth10,
    ]);
  }

  Column _containerIconTextHead(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(
            colors: [
              AliexpressConst.colorDarkPink,
              AliexpressConst.colorOrangecanli
            ],
            stops: [0.6, 2.0],
          ),
        ),
        child: Icon(Icons.headset_mic,
            color: AliexpressConst.colorLightPink, size: 32),
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width / 8,
      ),
      AliexpressConst.sizedBoxHeight15,
      Text(AliexpressConst.accounticonhelp,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
      AliexpressConst.sizedBoxWidth10,
    ]);
  }

  Column _containerIconTextLocation(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          gradient: RadialGradient(colors: [
            AliexpressConst.colorDarkBlue,
            AliexpressConst.colorBlue
          ]),
        ),
        child: Icon(Icons.location_on,
            color: AliexpressConst.colorWhite, size: 32),
        height: MediaQuery.of(context).size.height / 16,
        width: MediaQuery.of(context).size.width / 8,
      ),
      AliexpressConst.sizedBoxHeight15,
      Text(AliexpressConst.accounticoncargo,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
      AliexpressConst.sizedBoxWidth10,
    ]);
  }

  Column _containerIconTextPurse(BuildContext context) {
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
          child: Icon(Icons.account_balance_wallet,
              color: AliexpressConst.colorLightPink, size: 32),
          height: MediaQuery.of(context).size.height / 16,
          width: MediaQuery.of(context).size.width / 8,
        ),
        AliexpressConst.sizedBoxHeight15,
        Text(AliexpressConst.accounticonpurse,
            style:
                Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
        AliexpressConst.sizedBoxWidth10,
      ],
    );
  }

  Container _containerPlayIcontext(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: AliexpressConst.borderRadiusCircular10,
          color: AliexpressConst.colorWhite),
      height: MediaQuery.of(context).size.height / 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(AliexpressConst.accountplay,
                  style: Theme.of(context)
                      .textTheme
                      .headline6
                      ?.copyWith(fontWeight: FontWeight.bold, fontSize: 25)),
              AliexpressConst.sizedBoxHeight10,
              Row(
                children: [
                  _columnIconTextOne(context),
                  AliexpressConst.sizedBoxWidth10,
                  _columnIconTextTwo(context)
                ],
              )
            ]),
      ),
    );
  }

  Column _columnIconTextTwo(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: AliexpressConst.colorOrange,
          child: Image.asset(AliexpressConst.imageAccountPlayTwo,
              height: MediaQuery.of(context).size.height / 25,
              fit: BoxFit.contain),
        ),
        AliexpressConst.sizedBoxHeight15,
        Text(AliexpressConst.accountplayiconTwo,
            style:
                Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
        AliexpressConst.sizedBoxWidth10,
      ],
    );
  }

  Column _columnIconTextOne(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
            backgroundColor: AliexpressConst.colorYellow,
            child: Image.asset(
              AliexpressConst.imageAccountPlayOne,
              height: MediaQuery.of(context).size.height / 15,
            )),
        AliexpressConst.sizedBoxHeight15,
        Text(AliexpressConst.accountplayiconOne,
            style:
                Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15)),
        AliexpressConst.sizedBoxWidth10,
      ],
    );
  }

  Column _columnIconExaminationText(BuildContext context) {
    return Column(children: [
      Icon(Icons.library_add_check, color: AliexpressConst.colorRed, size: 30),
      AliexpressConst.sizedBoxHeight10,
      Text(AliexpressConst.accounticonexamination,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15))
    ]);
  }

  Column _columnIconToSentText(BuildContext context) {
    return Column(children: [
      Icon(Icons.fire_truck_rounded, color: AliexpressConst.colorRed, size: 30),
      AliexpressConst.sizedBoxHeight10,
      Text(AliexpressConst.accounticontosent,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15))
    ]);
  }

  Column _columnIconSentText(BuildContext context) {
    return Column(children: [
      Icon(Icons.bookmark_added_rounded,
          color: AliexpressConst.colorRed, size: 30),
      AliexpressConst.sizedBoxHeight10,
      Text(AliexpressConst.accounticonsent,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15))
    ]);
  }

  Column _columnIconPaymentText(BuildContext context) {
    return Column(children: [
      Icon(Icons.account_balance_wallet,
          color: AliexpressConst.colorRed, size: 30),
      AliexpressConst.sizedBoxHeight10,
      Text(AliexpressConst.accounticonpayment,
          style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15))
    ]);
  }

  Row _textIconOrder(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AliexpressConst.accounttitle,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 25)),
        Row(
          children: [
            Text(AliexpressConst.accountsubtitle,
                style: Theme.of(context)
                    .textTheme
                    .headline6
                    ?.copyWith(fontSize: 15)),
            AliexpressConst.sizedBoxWidth5,
            Icon(
              Icons.arrow_forward_ios,
              size: 20,
            )
          ],
        ),
      ],
    );
  }
}

AppBar _appBarIcons(BuildContext context) {
  return AppBar(
    backgroundColor: AliexpressConst.colorWhitegrey,
    elevation: 0,
    actions: [
      CircleAvatar(
        child: Image.asset(
          AliexpressConst.imageAccountTc,
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width / 10,
          fit: BoxFit.contain,
        ),
      ),
      AliexpressConst.sizedBoxWidth5,
      IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.settings_outlined,
            color: AliexpressConst.colorBlack,
            size: 30,
          ))
    ],
  );
}

Row _iconFavoriteStarTimesCoupon(BuildContext context) {
  return Row(
    children: [
      _iconsFavoriteText(context),
      AliexpressConst.sizedBoxWidth10,
      _iconStarText(context),
      AliexpressConst.sizedBoxWidth10,
      _iconTimesText(context),
      AliexpressConst.sizedBoxWidth15,
      _iconCouponText(context)
    ],
  );
}

Column _iconCouponText(BuildContext context) {
  return Column(
    children: [
      Icon(Icons.credit_card, size: 30),
      Text(
        AliexpressConst.accounticoncoupon,
        style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15),
      )
    ],
  );
}

Column _iconTimesText(BuildContext context) {
  return Column(
    children: [
      Icon(Icons.access_time_sharp, size: 30),
      Text(
        AliexpressConst.accounticontime,
        style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15),
      )
    ],
  );
}

Column _iconStarText(BuildContext context) {
  return Column(
    children: [
      Icon(Icons.star_border, size: 30),
      Text(
        AliexpressConst.accounticonstar,
        style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15),
      )
    ],
  );
}

Column _iconsFavoriteText(BuildContext context) {
  return Column(
    children: [
      Icon(Icons.favorite_border, size: 30),
      Text(
        AliexpressConst.accountfavorite,
        style: Theme.of(context).textTheme.headline6?.copyWith(fontSize: 15),
      )
    ],
  );
}

Row _loginIconElevatedButtonText(BuildContext context) {
  return Row(children: [
    CircleAvatar(
      child: Image.asset(
        AliexpressConst.imageAccountProfile,
        color: AliexpressConst.colorLightGrey,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      ),
      backgroundColor: AliexpressConst.colorWhite,
    ),
    AliexpressConst.sizedBoxWidth10,
    ElevatedButton(
      onPressed: () {},
      child: Text(
        AliexpressConst.accountelevatedbutton,
        style: Theme.of(context).textTheme.headline6?.copyWith(
            color: AliexpressConst.colorBlack,
            fontWeight: FontWeight.bold,
            fontSize: 25),
      ),
      style: ElevatedButton.styleFrom(
          backgroundColor: AliexpressConst.colorWhite,
          fixedSize: Size(180, 50),
          shape: RoundedRectangleBorder(
              borderRadius: AliexpressConst.borderRadiusCircular30)),
    )
  ]);
}
