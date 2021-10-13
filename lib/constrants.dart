import 'package:flutter/material.dart';

const kprimary = Color(0xfffd6a02);
const secondpimary = Color(0xfff4150C);

class CompanyColors {
  CompanyColors._(); // this basically makes it so you can instantiate this class

  static const _blackPrimaryValue = 0xfffd6a02;

  static const MaterialColor blackPrimaryValue = const MaterialColor(
    _blackPrimaryValue,
    const <int, Color>{
      50: const Color(0xfffd6a02),
      100: const Color(0xfffd6a02),
      200: const Color(0xfffd6a02),
      300: const Color(0xFF4d4d4d),
      400: const Color(0xFF262626),
      500: const Color(_blackPrimaryValue),
      600: const Color(0xFF262626),
      700: const Color(0xFF262626),
      800: const Color(0xFF262626),
      900: const Color(0xFF262626),
    },
  );
}
