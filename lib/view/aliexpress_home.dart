import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';
import 'package:flutter_aliexpress/view/aliexpress_plus.dart';
import 'package:flutter_aliexpress/widgets/aliexpress_container.dart';
import 'package:flutter_aliexpress/widgets/campaigns.dart';

class AliexpressHome extends StatefulWidget {
  AliexpressHome({super.key});

  @override
  State<AliexpressHome> createState() => _AliexpressHomeState();
}

class _AliexpressHomeState extends State<AliexpressHome>
    with TickerProviderStateMixin {
  late final TabController _tabController;
  final List<Tab> tabbarList = [
    Tab(
      child: Text(
        AliexpressConst.homeExplore,
      ),
    ),
    Tab(
      child: Text(
        AliexpressConst.HomePlus,
        style: TextStyle(color: AliexpressConst.colorOrangecanli),
      ),
    ),
  ];

  final List<Widget> tabbarView = [AliexpressPlus(), AliexpressPlus()];

  late bool selected = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: tabbarList.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabbarList.length,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              backgroundColor: selected == true
                  ? AliexpressConst.colorWhite
                  : AliexpressConst.colorBlack,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TabBar(
                    onTap: (value) {
                      setState(() {
                        selected = !selected;
                      });
                    },
                    controller: _tabController,
                    isScrollable: true,
                    indicatorColor: selected == true
                        ? AliexpressConst.colorBlack
                        : AliexpressConst.colorBlack,
                    labelColor: AliexpressConst.colorBlack,
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    unselectedLabelColor: AliexpressConst.colorWhite,
                    tabs: tabbarList,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on_outlined,
                        color: selected == true
                            ? AliexpressConst.colorBlack
                            : AliexpressConst.colorWhite,
                        size: 30,
                      ),
                      AliexpressConst.sizedBoxWidth20,
                      Icon(
                        Icons.message_outlined,
                        color: selected == true
                            ? AliexpressConst.colorBlack
                            : AliexpressConst.colorWhite,
                        size: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
            floatingActionButton: Padding(
              padding: AliexpressConst.paddingOnlyBottom0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 13,
                color: Colors.black54,
                child: Padding(
                  padding: AliexpressConst.paddingOnly,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(AliexpressConst.Homeadvertisement,
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    color: AliexpressConst.colorWhite,
                                  )),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      AliexpressConst.borderRadiusCircular30),
                              backgroundColor: AliexpressConst.colorGrey),
                          onPressed: () {},
                          child: Center(
                              child: Text(
                                  AliexpressConst.HomeadvertisementButton)))
                    ],
                  ),
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  _textfieldIcon(context),
                  AliexpressConst.sizedBoxHeight10,
                  _containerImage(context),
                  AliexpressConst.sizedBoxHeight15,
                  _columunRowTextIcon(context),
                  AliexpressConst.sizedBoxHeight10,
                  _rowCategory(),
                  AliexpressConst.sizedBoxHeight10,
                  _columunRowOfferIconText(context),
                  AliexpressConst.sizedBoxHeight15,
                  _rowOfferTextImage(),
                ],
              ),
            )));
  }

  SingleChildScrollView _rowOfferTextImage() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          AliexpressCampaigns(
              image: AliexpressConst.imageHomewatch,
              text: AliexpressConst.homediscount,
              textone: AliexpressConst.homePhone,
              texttwo: AliexpressConst.homeGlassesMoneyone),
          AliexpressConst.sizedBoxWidth5,
          AliexpressCampaigns(
              image: AliexpressConst.imageHomeAirpods,
              text: AliexpressConst.HomeAirpods,
              textone: AliexpressConst.homeGlasses,
              texttwo: AliexpressConst.homePhoneMoneyOne),
          AliexpressConst.sizedBoxWidth5,
          AliexpressCampaigns(
              image: AliexpressConst.imageHomewriswatch,
              text: AliexpressConst.Homewriswatch,
              textone: AliexpressConst.homeGlasses,
              texttwo: AliexpressConst.homeGlassesMoneyone)
        ],
      ),
    );
  }

  Padding _columunRowOfferIconText(BuildContext context) {
    return Padding(
      padding: AliexpressConst.padding8,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(AliexpressConst.homeSuper,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AliexpressConst.colorBlack,
                    fontWeight: FontWeight.bold)),
            Text(AliexpressConst.homeSuperone,
                style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AliexpressConst.colorRed,
                    fontWeight: FontWeight.bold)),
            AliexpressConst.sizedBoxWidth5,
            Icon(Icons.arrow_forward_rounded)
          ]),
          AliexpressConst.sizedBoxHeight5,
          Text(AliexpressConst.homesubtitle,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: AliexpressConst.colorGrey, fontSize: 20)),
        ],
      ),
    );
  }

  SingleChildScrollView _rowCategory() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: AliexpressConst.padding8,
        child: Row(
          children: [
            AliexpressCategory(
                image: AliexpressConst.imageHomeGlasses,
                text: AliexpressConst.homeGlasses,
                textone: AliexpressConst.homeGlassesMoney,
                texttwo: AliexpressConst.homeGlassesMoneyone),
            AliexpressConst.sizedBoxWidth10,
            AliexpressCategory(
                image: AliexpressConst.imageHomeBag,
                text: AliexpressConst.homeBag,
                textone: AliexpressConst.homeBagMoney,
                texttwo: AliexpressConst.homeBagMoneyOne),
            AliexpressConst.sizedBoxWidth10,
            AliexpressCategory(
                image: AliexpressConst.imageHomephone,
                text: AliexpressConst.homePhone,
                textone: AliexpressConst.homePhoneMoney,
                texttwo: AliexpressConst.homePhoneMoneyOne)
          ],
        ),
      ),
    );
  }

  Padding _columunRowTextIcon(BuildContext context) {
    return Padding(
      padding: AliexpressConst.padding20,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(children: [
            Text(
              AliexpressConst.homeOrder,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                  color: AliexpressConst.colorBlack,
                  fontWeight: FontWeight.bold),
            ),
            AliexpressConst.sizedBoxWidth5,
            Icon(Icons.arrow_forward_rounded)
          ]),
          AliexpressConst.sizedBoxHeight5,
          Text(AliexpressConst.homesubtitle,
              style: Theme.of(context).textTheme.headline6?.copyWith(
                    color: AliexpressConst.colorGrey,
                  )),
        ],
      ),
    );
  }

  Container _containerImage(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 6.9,
      child: Image.asset(
        AliexpressConst.imageAccountAdverdsiment,
        fit: BoxFit.cover,
      ),
    );
  }

  SizedBox _textfieldIcon(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width / 1.1,
      child: TextField(
          decoration: InputDecoration(
        prefixIcon: Icon(Icons.camera_alt_outlined, color: Colors.black),
        hintText: AliexpressConst.HomeHinttext,
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
            borderRadius: AliexpressConst.borderRadiusCircular40),
        suffixIcon: Padding(
          padding: AliexpressConst.padding8,
          child: Container(
              width: MediaQuery.of(context).size.width / 8,
              height: MediaQuery.of(context).size.height / 40,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(50)),
              child: Icon(
                Icons.search,
                color: Colors.white,
              )),
        ),
      )),
    );
  }
}
