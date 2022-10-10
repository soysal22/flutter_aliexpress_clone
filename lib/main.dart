import 'package:flutter/material.dart';
import 'package:flutter_aliexpress/view/aliexpress_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          //  primarySwatch: AliexpressConst.colorGrey,
          ),
      home: AliepressInfo(),
    );
  }
}
