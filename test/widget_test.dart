// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tasmik/main.dart';
import 'package:tasmik/models/awwaliyah_model.dart';

void main() {
  var index;
  final TajwidList tajwidlist = tajwidList[index];

  int expansionTileLength = tajwidList.length;
  int expansionTileContentLength =
      tajwidlist.listisi != null ? tajwidlist.listisi!.length : 0;

  print(
    expansionTileLength,
  );
}
