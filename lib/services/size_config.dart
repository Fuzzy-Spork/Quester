import 'package:flutter/material.dart';

MediaQueryData displayData(BuildContext context) {
  //debugPrint('Size = ' + MediaQuery.of(context).size.toString());
  return MediaQuery.of(context);
}

double displaySafeHeightBlocks(BuildContext context) {
  //debugPrint('Height = ' + displayData(context).size.height.toString());
  return (displayData(context).size.height -
          displayData(context).padding.top -
          displayData(context).padding.bottom) /
      100;
}

double displaySafeWidthBlocks(BuildContext context) {
  //debugPrint('Width = ' + displayData(context).size.height.toString());
  return (displayData(context).size.width -
          displayData(context).padding.left -
          displayData(context).padding.right) /
      100;
}
