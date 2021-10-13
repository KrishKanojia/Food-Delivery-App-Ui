import 'package:flutter/material.dart';

import '../constrants.dart';

class MyTextformfield extends StatelessWidget {
  late final Icon icon;
  late String hintname;
  MyTextformfield({
    required this.icon,
    required this.hintname,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: hintname,
        ),
        style: TextStyle(
          color: kprimary,
        ),
      ),
    );
  }
}
