import 'package:flutter/material.dart';

class CommonFunctios {
  static blankSpace(double? height, double? width) {
    return SizedBox(
      height: height ?? 0,
      width: width ?? 0,
    );
  }
}
