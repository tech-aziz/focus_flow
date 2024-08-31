import 'package:flutter/material.dart';

import '../utils/style/color.dart';

PreferredSizeWidget customAppBar(
    {double? leadingWidth, Widget? leading, String ? title, bool? centerTitle, List<Widget>? actions,TextStyle? style, double? appBarHeight}) {
  return AppBar(
    leadingWidth: leadingWidth,
    toolbarHeight:appBarHeight,
    elevation: 0,
    leading: leading,
    backgroundColor: AppColors.primaryColor,
    title: Text(
      title.toString(),
      style: style,
    ),
    centerTitle: centerTitle,
    actions: actions,
  );
}


