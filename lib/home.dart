import 'package:flutter/material.dart';
import 'package:flutter_port/themeColors.dart';
import 'package:velocity_x/velocity_x.dart';

import 'headers.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: themeColors.primaryColor,
      child: VStack([
        HeaderScreen(),
      ]).scrollVertical(),
    );
  }
}
