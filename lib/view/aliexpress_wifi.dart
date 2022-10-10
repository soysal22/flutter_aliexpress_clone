import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/const/aliepress_const.dart';

class AliexpressWifi extends StatelessWidget {
  const AliexpressWifi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(AliexpressConst.wifiText),
            Icon(Icons.smart_toy_rounded)
          ],
        ),
      ),
    );
  }
}
