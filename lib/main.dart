import 'package:flutter/material.dart';
import 'package:halal_sip/home.dart';

import 'resources/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Halal Sip',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: AppColors.whiteMaterialColor,
        scaffoldBackgroundColor: AppColors.white,
      ),
      home: Home(),
    );
  }
}
