import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

class AliexpressCategories extends StatefulWidget {
  AliexpressCategories({super.key});

  @override
  State<AliexpressCategories> createState() => _AliexpressCategoriesState();
}

class _AliexpressCategoriesState extends State<AliexpressCategories> {
  final double iconSize18 = 18;

  final double iconSize25 = 25;

  final double iconSize30 = 30;

  final double containerWidth8 = 8;

  final double containerAppBarWidth = 1.25;

  final double containerHeight20 = 20;

  final double width4 = 4;

  int checkIndex = 0;

  final List categoryList = [
    'Sizin İçin Önerilir',
    'Kadın Kıyafetleri',
    'Kol Saatleri',
    'Çantalar',
    'Erkek Kıyafetleri',
    'Eğitim ve Ofis malzemeleri ',
    'Spor ve Dış Mekan',
    'Ev aletleri',
    'Otomotiv ve Motorsiklet',
    'Takı ve Aksesuarlar',
    'Ayakkabılar',
    'Oyuncaklar ve Hobi Ürünleri ',
    'Cadılar Bayramı',
    'Peruklar',
    'Mobilya',
    'İç Çamaşırları ve Ev Kıyafetleri ',
    'Bebekler ve Oyuncaklar',
    'Lambalar',
    'Temel Ev Eşyaları',
    'Elektronik Aletler ve Aksesuarlar',
  ];
  @override
  void initState() {
    checkIndex = categoryList.length - 1;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _rowAppBar(context),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Row(
          children: [
            _containerPaddingColumnList(context),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 15, right: 10),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textTitle(context),
                      AliexpressConst.sizedBoxHeight5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          stackImageText(
                              image: AliexpressConst.imageCategoryPhone,
                              title: AliexpressConst.textPhones),
                          stackImageText(
                              image: AliexpressConst.imageCategorySporShoes,
                              title: AliexpressConst.textSportShoes),
                          stackImageText(
                              image: AliexpressConst.imageCategoryShoes,
                              title: AliexpressConst.textShoes),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          stackImageText(
                              image: AliexpressConst.imageCategoryBasketball,
                              title: AliexpressConst.textBasketball),
                          stackImageText(
                              image: AliexpressConst.imageCategoryTablet,
                              title: AliexpressConst.textTablets),
                          stackImageText(
                              image: AliexpressConst.imageCategoryLaptop,
                              title: AliexpressConst.textLaptop),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          stackImageText(
                              image: AliexpressConst.imageCategoryLaptopGaming,
                              title: AliexpressConst.textGamingLaptop),
                          stackImageText(
                              image: AliexpressConst.imageCategoryPhoneCase,
                              title: AliexpressConst.textPhoneCase),
                          stackImageText(
                              image: AliexpressConst.imageCategoryRefrigerator,
                              title: AliexpressConst.textRefrigerator),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          stackImageText(
                              image: AliexpressConst.imageCategoryIphones,
                              title: AliexpressConst.textIphones),
                          stackImageText(
                              image:
                                  AliexpressConst.imageCategoryWirelesCharging,
                              title: AliexpressConst.textWirelesCharching),
                          stackImageText(
                              image: AliexpressConst.imageCategoryPowerbank,
                              title: AliexpressConst.textPowerbank),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          stackImageText(
                              image: AliexpressConst.imageCategoryAirPods,
                              title: AliexpressConst.textAirPods),
                          stackImageText(
                              image: AliexpressConst.imageTickets,
                              title: AliexpressConst.textTickets),
                          stackImageText(
                              image: AliexpressConst.imageCategoryPencil,
                              title: AliexpressConst.textPencil),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          stackImageText(
                              image: AliexpressConst.imageCategoryLaptopGaming,
                              title: AliexpressConst.textGamingLaptop),
                          stackImageText(
                              image: AliexpressConst.imageCategoryPhoneCase,
                              title: AliexpressConst.textPhoneCase),
                          stackImageText(
                              image: AliexpressConst.imageCategoryRefrigerator,
                              title: AliexpressConst.textRefrigerator),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Text _textTitle(BuildContext context) {
    return Text(AliexpressConst.textSuggestion,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: AliexpressConst.colorBlack, fontWeight: FontWeight.bold));
  }

  _containerPaddingColumnList(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / width4,
      height: MediaQuery.of(context).size.height,
      color: AliexpressConst.colorBottomBarBackground,
      child: Padding(
        padding: AliexpressConst.paddingCategoryLeftContainer,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildList(),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildList() {
    List<Widget> _widgetList = [];

    for (int i = 0; i < categoryList.length; i++) {
      _widgetList.add(GestureDetector(
        onTap: () {
          indexChecked(i);
        },
        child: Padding(
          padding: AliexpressConst.paddingCategoryLeftContainerText,
          child: textContainerList(
              categoryList: categoryList,
              i: i,
              context: context,
              checked: checkIndex == i),
        ),
      ));
    }
    return _widgetList;
  }

  void indexChecked(int i) {
    if (checkIndex == i) return;

    setState(() {
      checkIndex = i;
    });
  }

  AppBar _rowAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AliexpressConst.colorTransparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.arrow_back_outlined,
            color: AliexpressConst.colorBlack,
            size: iconSize30,
          ),
          _containerAppBar(context),
        ],
      ),
    );
  }

  Container _containerAppBar(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / containerAppBarWidth,
      height: MediaQuery.of(context).size.height / containerHeight20,
      decoration: BoxDecoration(
          borderRadius: AliexpressConst.borderRadiusCircular20,
          color: AliexpressConst.colorCategoryAppBarBackgorun),
      child: Padding(
        padding: AliexpressConst.paddingCategoryAppBar,
        child: Row(
          children: [
            Expanded(
              child: _appBarTextField(),
            ),
            _iconCamera(),
            AliexpressConst.sizedBoxWidth20,
            _sizedBoxElevatedButton(context),
          ],
        ),
      ),
    );
  }

  TextField _appBarTextField() {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: AliexpressConst.borderRadiusCircular20),
        labelText: AliexpressConst.textAppBarTexfield,
        labelStyle: TextStyle(
            color: AliexpressConst.colorBlack, fontWeight: FontWeight.w500),
      ),
    );
  }

  Icon _iconCamera() {
    return Icon(
      Icons.camera_alt_outlined,
      color: AliexpressConst.colorGrey,
      size: iconSize30,
    );
  }

  SizedBox _sizedBoxElevatedButton(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: AliexpressConst.colorBlack,
              shape: RoundedRectangleBorder(
                  borderRadius: AliexpressConst.borderRadiusCircular20)),
          onPressed: () {},
          child: Icon(Icons.search,
              color: AliexpressConst.colorWhite, size: iconSize18)),
    );
  }
}

class stackImageText extends StatelessWidget {
  const stackImageText({
    Key? key,
    required this.image,
    required this.title,
  }) : super(key: key);

  final double width5 = 5;
  final double height6 = 6;
  final double fontSize11 = 11;
  final double bottom15 = 15;

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          image,
          fit: BoxFit.contain,
          width: MediaQuery.of(context).size.width / width5,
          height: MediaQuery.of(context).size.height / height6,
        ),
        Positioned(
          bottom: bottom15,
          child: Text(title,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle2?.copyWith(
                  color: AliexpressConst.colorBlack,
                  //fontWeight: FontWeight.w500,
                  fontSize: fontSize11)),
        )
      ],
    );
  }
}

class textContainerList extends StatelessWidget {
  const textContainerList({
    Key? key,
    required this.categoryList,
    required this.i,
    required this.context,
    required this.checked,
  }) : super(key: key);

  final List categoryList;
  final int i;
  final BuildContext context;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: checked == true
          ? AliexpressConst.colorWhite
          : AliexpressConst.colorTransparent,
      child: Text(categoryList[i],
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: checked
                    ? AliexpressConst.colorRed
                    : AliexpressConst.colorBlack,
              )),
    );
  }
}
