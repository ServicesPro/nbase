import 'package:flutter/material.dart';

void pushPage(BuildContext context, Widget page) {
  Navigator.of(context) /*!*/ .push(
    MaterialPageRoute<void>(builder: (_) => page),
  );
}

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}