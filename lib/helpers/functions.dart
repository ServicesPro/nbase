import 'package:flutter/material.dart';

void _pushPage(BuildContext context, Widget page) {
  Navigator.of(context) /*!*/ .push(
    MaterialPageRoute<void>(builder: (_) => page),
  );
}