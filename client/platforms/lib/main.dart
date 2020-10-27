import 'package:flutter/material.dart';

import 'NameCardDetail.dart';
import 'NameCardList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NameCard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NameCardList(),
    );
  }
}
