import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/Widgets/advert_card_type_two.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

import '../Widgets/advert_card_type_one.dart';

class AliexpressShopping extends StatelessWidget {
  const AliexpressShopping({super.key});

   final int flex5 = 5;

  final double toolbarHeight18=18;
  final double height24 = 24;
  final double height5 = 5;
  final double iconSize15 = 15;
    final double iconSize21 = 21;
  final double elvation0 = 0;
  final double elvation01 = 0.1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Padding(
        padding: AliexpressConst.paddingShopping,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _shoppingCart(context),
              AliexpressConst.sizedBoxHeight30,
              _textTitle(context),
              AliexpressConst.sizedBoxHeight20,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: flex5,
                    child: Column(
                      children: [
                        AdvertCardTypeOne(),
                        AliexpressConst.sizedBoxHeight5,
                        AdvertCardTypeTwo(),
                        AliexpressConst.sizedBoxHeight5,
                        AdvertCardTypeOne(),
                        AliexpressConst.sizedBoxHeight5,
                        AdvertCardTypeTwo(),
                      ],
                    ),
                  ),
                  AliexpressConst.sizedBoxHeight5,
                  Expanded(
                    flex: flex5,
                    child: Column(
                      children: [
                        AdvertCardTypeTwo(),
                        AliexpressConst.sizedBoxHeight5,
                        AdvertCardTypeOne(),
                        AliexpressConst.sizedBoxHeight5,
                        AdvertCardTypeTwo(),
                        AliexpressConst.sizedBoxHeight5,
                        AdvertCardTypeOne(),
                        AliexpressConst.sizedBoxHeight5,
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(
              AliexpressConst.textShoppingTitle,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: Colors.black, fontWeight: FontWeight.bold),
            );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height / toolbarHeight18,
      title: Text(
        AliexpressConst.textBasket,
        style: TextStyle(
            fontWeight: FontWeight.w800, color: AliexpressConst.colorBlack),
      ),
      actions: [
        Row(
          children: [
            SizedBox(
              height: height24,
              child: ElevatedButton.icon(
                icon: Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                  size: iconSize15,
                ),
                label: Text(AliexpressConst.textElevatedButton,
                    style: Theme.of(context).textTheme.labelSmall?.copyWith(
                        color: Colors.black54, fontWeight: FontWeight.bold)),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white.withOpacity(0.6),
                  elevation: elvation01,
                  shape: RoundedRectangleBorder(
                    borderRadius: AliexpressConst.borderRadiusCircular30,
                  ),
                ),
              ),
            ),
            AliexpressConst.sizedBoxWidth10,
            Icon(
              Icons.delete_outline_outlined,
              color: AliexpressConst.colorBlack,
            ),
            AliexpressConst.sizedBoxWidth5,
            Padding(
              padding: AliexpressConst.paddingAll8,
              child: Icon(
                Icons.chat_bubble_outline,
                size: iconSize21,
                color: AliexpressConst.colorBlack,
              ),
            )
          ],
        )
      ],
      backgroundColor: Colors.white,
      elevation:elvation0,
      shadowColor: Colors.white,
    );
  }

  Center _shoppingCart(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Icon(
              size: MediaQuery.of(context).size.height / height5,
              Icons.shopping_cart_outlined,
              color: Colors.black12),
          Text(
            AliexpressConst.textShoppingContext,
            style: TextStyle(color: Colors.black38),
          )
        ],
      ),
    );
  }
}
