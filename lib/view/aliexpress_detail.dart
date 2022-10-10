import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/Widgets/advert_detail_list.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

class AliexpressDetail extends StatefulWidget {
  const AliexpressDetail({super.key});

  @override
  State<AliexpressDetail> createState() => _AliexpressDetailState();
}

class _AliexpressDetailState extends State<AliexpressDetail> {
  var controller = PageController();
  int currentpage = 0;

  final double divideHeight2 = 2;
  final double iconSize18 = 18;
  final double bottomBariconSize30 = 30;
  final double height22 = 22;
  final double width70 = 70;
  final double bottomBarContainerheight22 = 22;
  final double thickness10 = 10;
  final double elevation0 = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        currentpage = controller.page!.toInt();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      bottomNavigationBar: _bottomBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _advertImages(context),
            Padding(
              padding: AliexpressConst.paddingAll10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _price(context),
                  AliexpressConst.sizedBoxHeight10,
                  _priceInformationText(context),
                  AliexpressConst.sizedBoxHeight10,
                  _discountText(context),
                  AliexpressConst.sizedBoxHeight10,
                  _productInfoText(context),
                  AliexpressConst.sizedBoxHeight10,
                  _starsAndRate(),
                  AliexpressConst.sizedBoxHeight20,
                  _dividerBlackHeight(),
                  AliexpressConst.sizedBoxHeight20,
                  _colorOptionsText(),
                  AliexpressConst.sizedBoxHeight10,
                  _productColorImage(),
                  AliexpressConst.sizedBoxHeight20,
                  _dividerGreyHeight(),
                  AliexpressConst.sizedBoxHeight20,
                  _settingTextAndIcon(context),
                ],
              ),
            ),
            _dividerTicknesHeightGrey(),
            Padding(
              padding: AliexpressConst.paddingAll10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _reviewsAndRate(context),
                  AliexpressConst.sizedBoxHeight20,
                  _reviewsImagesAndIcon(),
                  AliexpressConst.sizedBoxHeight20,
                  _votesContainerText(),
                  AliexpressConst.sizedBoxHeight20,
                  _screetUserNameOne(context),
                  AliexpressConst.sizedBoxHeight10,
                  _fiveStar(),
                  AliexpressConst.sizedBoxHeight10,
                  _customerReviewOne(context),
                  AliexpressConst.sizedBoxHeight30,
                  __screetUserNameTwo(context),
                  AliexpressConst.sizedBoxHeight10,
                  _fiveStar(),
                  AliexpressConst.sizedBoxHeight10,
                  _customerReviewTwo(context),
                  AliexpressConst.sizedBoxHeight10,
                  Text(
                    AliexpressConst.detailPageViewAll,
                    style: TextStyle(color: AliexpressConst.colorBluee),
                  ),
                  AliexpressConst.sizedBoxHeight20,
                  _dividerGreyHeight(),
                  AliexpressConst.sizedBoxHeight20,
                  Text(
                    AliexpressConst.detailPageQuestions,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  AliexpressConst.sizedBoxHeight20,
                  Row(
                    children: [
                      Icon(Icons.chat_bubble_outline),
                      Text(
                        AliexpressConst.detailPageCustemerQuestions,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Divider _dividerTicknesHeightGrey() => Divider(
      thickness: thickness10, height: bottomBarContainerheight22, color: Colors.grey.shade300);

  Divider _dividerGreyHeight() =>
      Divider(height: divideHeight2, color: AliexpressConst.colorGrey);

  Divider _dividerBlackHeight() =>
      Divider(height: divideHeight2, color: AliexpressConst.colorBlack);

  BottomNavigationBar _bottomBar(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AliexpressConst.colorRed,
      unselectedItemColor: AliexpressConst.colorBlack,
      //currentIndex: _selectedIndex,
      iconSize: bottomBariconSize30,
      elevation: elevation0,
      backgroundColor: AliexpressConst.colorWhite,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: AliexpressConst.textDetailBottomBarHome),
        BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined),
            label: AliexpressConst.textDetailBottomBarMessage),
        BottomNavigationBarItem(
            icon: Container(
              height: MediaQuery.of(context).size.height / bottomBarContainerheight22,
              decoration: BoxDecoration(
                  color: AliexpressConst.colorAmber,
                  borderRadius: BorderRadius.only(
                      topLeft: AliexpressConst.radiusCircular20,
                      bottomLeft: AliexpressConst.radiusCircular20)),
              child: Center(
                  child: Text(AliexpressConst.textDetailBottomBarShopping)),
            ),
            
            label: ''),
        BottomNavigationBarItem(
            icon: Container(
              height: MediaQuery.of(context).size.height / bottomBarContainerheight22,
              decoration: BoxDecoration(
                  color: AliexpressConst.colorRed,
                  borderRadius: BorderRadius.only(
                      topRight: AliexpressConst.radiusCircular20,
                      bottomRight: AliexpressConst.radiusCircular20)),
              child:
                  Center(child: Text(AliexpressConst.textDetailBottomBarBuy)),
            ),
            label: ''),
      ],
    );
  }

  Text _customerReviewTwo(BuildContext context) {
    return Text(
      AliexpressConst.detailPageCommentOne,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  Text _customerReviewOne(BuildContext context) {
    return Text(
      AliexpressConst.detailPageCommentTwo,
      style: Theme.of(context).textTheme.labelMedium,
    );
  }

  Row __screetUserNameTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(AliexpressConst.detailPageCustomerNameOne),
            AliexpressConst.sizedBoxWidth10,
            CircleAvatar(
              radius: 7,
              child: Image.asset(
                AliexpressConst.turkishFlag,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
        Text(
          AliexpressConst.detailPageCommentDate,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AliexpressConst.colorGrey),
        ),
      ],
    );
  }

  Row _screetUserNameOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(AliexpressConst.detailPageCustomerNameTwo),
            AliexpressConst.sizedBoxWidth10,
            CircleAvatar(
              radius: 7,
              child: Image.asset(
                AliexpressConst.turkishFlag,
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
        Text(
          AliexpressConst.detailPageCommentDate,
          style: Theme.of(context)
              .textTheme
              .bodySmall
              ?.copyWith(color: AliexpressConst.colorGrey),
        ),
      ],
    );
  }

  Column _votesContainerText() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GreyContainerText(
                text: AliexpressConst.detailPageCommentCatagories1),
            GreyContainerText(
                text: AliexpressConst.detailPageCommentCatagories2),
            GreyContainerText(
                text: AliexpressConst.detailPageCommentCatagories3),
          ],
        ),
        Padding(
          padding: AliexpressConst.paddingAll8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GreyContainerText(
                  text: AliexpressConst.detailPageCommentCatagories4),
            ],
          ),
        )
      ],
    );
  }

  Widget _reviewsImagesAndIcon() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ReviewImage(image: AliexpressConst.dPageReviewImageOne),
        AliexpressConst.sizedBoxWidth10,
        ReviewImage(image: AliexpressConst.dPageReviewImageTwo),
        AliexpressConst.sizedBoxWidth5,
        ReviewImage(image: AliexpressConst.dPageReviewImageThree),
        AliexpressConst.sizedBoxWidth10,
        ReviewImage(image: AliexpressConst.dPageReviewImageFour),
        AliexpressConst.sizedBoxWidth10,
        ReviewImage(image: AliexpressConst.dPageReviewImageFive),
        AliexpressConst.sizedBoxWidth10,
        Icon(
          Icons.more_horiz,
          size: 21,
          color: AliexpressConst.colorGrey,
        ),
      ],
    );
  }

  Row _reviewsAndRate(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AliexpressConst.detailPageProductReview,
          style: Theme.of(context)
              .textTheme
              .titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        Row(
          children: [
            _fiveStar(),
            Text(AliexpressConst.detailPageProductRate),
            Icon(
              Icons.chevron_right_outlined,
              color: AliexpressConst.colorGrey,
            )
          ],
        ),
      ],
    );
  }

  Row _settingTextAndIcon(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          AliexpressConst.detailPageOptions,
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Icon(
          Icons.chevron_right_sharp,
          color: AliexpressConst.colorGrey,
        )
      ],
    );
  }

  Row _productColorImage() {
    return Row(
      children: [
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: AliexpressConst.colorRed),
            borderRadius: AliexpressConst.borderRadiusCircular10,
          ),
          child: ClipRRect(
              borderRadius: AliexpressConst.borderRadiusCircular20,
              child: Image.asset(
                AliexpressConst.advertImageOne,
                fit: BoxFit.cover,
              )),
        ),
        AliexpressConst.sizedBoxWidth20,
        Container(
          height: 65,
          width: 65,
          decoration: BoxDecoration(
            borderRadius: AliexpressConst.borderRadiusCircular10,
          ),
          child: ClipRRect(
              borderRadius: AliexpressConst.borderRadiusCircular20,
              child: Image.asset(
                AliexpressConst.advertImageTwo,
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }

  Text _colorOptionsText() => Text(
        AliexpressConst.detailPageColorOptions,
        style: TextStyle(fontWeight: FontWeight.bold),
      );

  Row _starsAndRate() {
    return Row(
      children: [
        _fiveStar(),
        Text(AliexpressConst.detailPageProductRate,
            style: TextStyle(fontSize: 12)),
        AliexpressConst.sizedBoxWidth5,
        Text(AliexpressConst.detailPageProductOrder,
            style: TextStyle(fontSize: 12)),
      ],
    );
  }

  Row _fiveStar() {
    return Row(
      children: [
        Icon(Icons.star, size: 15),
        Icon(Icons.star, size: 15),
        Icon(Icons.star, size: 15),
        Icon(Icons.star, size: 15),
        Icon(Icons.star, size: 15),
        AliexpressConst.sizedBoxWidth5,
      ],
    );
  }

  Text _productInfoText(BuildContext context) => Text(
        AliexpressConst.detailPageProductName,
        style: Theme.of(context)
            .textTheme
            .titleMedium
            ?.copyWith(fontWeight: FontWeight.bold),
      );

  Row _discountText(BuildContext context) => Row(
        children: [
          Icon(
            Icons.stars_rounded,
            color: AliexpressConst.colorAmber,
            size: 20,
          ),
          AliexpressConst.sizedBoxWidth5,
          Text(
            'Ekstra %2 İndirim',
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                color: AliexpressConst.colorRed,
                fontWeight: FontWeight.bold,
                fontSize: 15),
          )
        ],
      );

  Text _priceInformationText(BuildContext context) {
    return Text(
      'Vergiden önce gösterilen fiyat, Ücretsiz Gönderim',
      style: Theme.of(context)
          .textTheme
          .labelMedium
          ?.copyWith(color: AliexpressConst.colorGrey),
    );
  }

  Row _price(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          'TRY 7.246,23',
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        AliexpressConst.sizedBoxWidth10,
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'TRY 8.000,00',
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      toolbarHeight: MediaQuery.of(context).size.height / 18,
      title: Container(
        height: 30,
        child: TextField(
            maxLines: 1,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              fillColor: AliexpressConst.colorWhite,
              labelStyle: TextStyle(color: AliexpressConst.colorWhite),
              filled: true,
              // hoverColor: AliexpressConst.colorGrey,
              border: OutlineInputBorder(
                  borderRadius: AliexpressConst.borderRadiusCircular40,
                  borderSide: BorderSide.none),
              prefixIcon: const Icon(
                Icons.search,
                color: AliexpressConst.colorGrey,
              ),
              hintText: 'Akıllı Saat, Saat',
              hintStyle: TextStyle(
                color: AliexpressConst.colorBlack45,
              ),
            )),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Row(
            children: [
              Icon(Icons.turn_right_outlined),
              AliexpressConst.sizedBoxWidth10,
              Icon(Icons.shopping_cart_outlined),
              AliexpressConst.sizedBoxWidth5,
              Padding(
                padding: AliexpressConst.paddingAll8,
                child: Icon(
                  Icons.more_horiz,
                  size: 21,
                ),
              )
            ],
          ),
        )
      ],
      backgroundColor: AliexpressConst.colorGrey.withOpacity(0.1),
      elevation: 0,
    );
  }

  SizedBox _advertImages(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 2,
      child: PageView.builder(
        controller: controller,
        itemCount: listofvalue.length,
        itemBuilder: (context, index) {
          return Container(
            color: AliexpressConst.colorWhite,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(listofvalue[index].imagepath))),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 22,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: AliexpressConst.borderRadiusCircular40,
                          color: AliexpressConst.colorWhite.withOpacity(0.5),
                        ),
                        child: Center(
                          child: Text('${currentpage + 1}/' +
                              listofvalue.length.toString()),
                        )),
                    Container(
                        height: height22,
                        width: width70,
                        decoration: BoxDecoration(
                          borderRadius: AliexpressConst.borderRadiusCircular40,
                          color: AliexpressConst.colorWhite.withOpacity(0.5),
                        ),
                        child: Center(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite_border_sharp,
                              size: iconSize18,
                            ),
                            AliexpressConst.sizedBoxWidth3,
                            Text(AliexpressConst.detailTextSixteen)
                          ],
                        ))),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class GreyContainerText extends StatelessWidget {
  const GreyContainerText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  final double fontSize13 = 13;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: AliexpressConst.paddingAll5,
        child: Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize13),
        ),
      ),
      color: AliexpressConst.colorGrey.withOpacity(0.2),
    );
  }
}

class ReviewImage extends StatelessWidget {
  const ReviewImage({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;
  final double height60 = 60;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: height60,
          width: height60,
          decoration: BoxDecoration(
            borderRadius: AliexpressConst.borderRadiusCircular10,
          ),
          child: ClipRRect(
              borderRadius: AliexpressConst.borderRadiusCircular10,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
