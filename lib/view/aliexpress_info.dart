import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';
import 'package:flutter_aliexpress/view/aliexpress_bottom_bar.dart';

class AliepressInfo extends StatefulWidget {
  const AliepressInfo({super.key});

  @override
  State<AliepressInfo> createState() => _AliepressInfoState();
}

class _AliepressInfoState extends State<AliepressInfo> {
  final dropdownCountryList = [
    'Türkiye',
    'America',
    'Avustralia',
    'Colombia',
    'South Korea',
  ];

  final dropdownImageList = [
    AliexpressConst.imageInfoFlagTurkey,
    AliexpressConst.imageInfoFlagAmerica,
    AliexpressConst.imageInfoFlagAvustralia,
    AliexpressConst.imageInfoFlagColombia,
    AliexpressConst.imageInfoFlagSouthKorea,
  ];

  int selcetedImage = 0;
  String? selectedText = 'Türkiye';

  final double dropDownIconSize = 30;
  final double imageHeight1 = 1.6;
  final double sizedBoxHeight18 = 18;
  final double fontSize20 = 20;
  final double fontSize25 = 25;
  final double width12 = 12;
  final int elevation0 = 0;
  @override
  void initState() {
    selcetedImage = (dropdownCountryList.length).toInt();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AliexpressConst.colorWhite,
      body: Column(
        children: [
          _imageAssetHeight(context),
          Expanded(
            child: Padding(
              padding: AliexpressConst.paddingInfo,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _textTitle(context),
                      AliexpressConst.sizedBoxHeight10,
                      _textContext(context),
                    ],
                  ),
                  _centerContainerDropDownButton(),
                  AliexpressConst.sizedBoxHeight10,
                  _sizedBoxElevatedButtonHeight(context),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Center _centerContainerDropDownButton() {
    return Center(
      child: Container(
        padding: AliexpressConst.paddingInfoDropDownButton,
        decoration: BoxDecoration(
            borderRadius: AliexpressConst.borderRadiusCircular10,
            border: Border.all(
              color: AliexpressConst.colorGrey,
            )),
        child: DropdownButtonHideUnderline(
          child: DropdownButton(
            elevation: elevation0,
            iconSize: dropDownIconSize,
            icon: Icon(Icons.keyboard_arrow_down_outlined),
            value: selectedText,
            isExpanded: true,
            items: dropdownCountryList.map(builMenuItem).toList(),
            onChanged: (value) => setState(() => this.selectedText = value),
          ),
        ),
      ),
    );
  }

  Text _textContext(BuildContext context) {
    return Text(AliexpressConst.infocontext,
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: AliexpressConst.colorDarkGrey,
            ));
  }

  Text _textTitle(BuildContext context) {
    return Text(AliexpressConst.infoTitle,
        style: Theme.of(context).textTheme.displayMedium?.copyWith(
            color: AliexpressConst.colorBlack,
            fontWeight: FontWeight.w900,
            fontSize: fontSize25));
  }

  SizedBox _sizedBoxElevatedButtonHeight(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / sizedBoxHeight18,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor:
                  AliexpressConst.colorSizedBoxElevatedButtonHeight,
              shape: RoundedRectangleBorder(
                  borderRadius: AliexpressConst.borderRadiusCircular20)),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => AliexpressBottomBar()));
          },
          child: Center(
              child: Text(AliexpressConst.infoElevatedButtonText,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: AliexpressConst.colorWhite,
                      )))),
    );
  }

  Image _imageAssetHeight(BuildContext context) {
    return Image.asset(
      AliexpressConst.imageInfoMan,
      fit: BoxFit.cover,
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / imageHeight1,
    );
  }

  DropdownMenuItem<String> builMenuItem(String item) => DropdownMenuItem(
        value: item,
        child: Row(
          children: [
            Image.asset(
              dropdownImageList[0],
              fit: BoxFit.contain,
              width: MediaQuery.of(context).size.width / width12,
            ),
            AliexpressConst.sizedBoxWidth10,
            Text(
              item,
              style:
                  TextStyle(fontSize: fontSize20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
