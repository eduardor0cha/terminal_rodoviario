import 'package:flutter/material.dart';
import 'package:terminal_rodoviario/utils/app_colors.dart';

class PageData {
  final Widget widget;
  final String title;
  Color appbarColor;
  Color titleColor;
  double titleFontSize;

  PageData({
    required this.widget,
    required this.title,
    this.appbarColor = Colors.transparent,
    this.titleColor = Colors.black,
    this.titleFontSize = 14,
  });
}
