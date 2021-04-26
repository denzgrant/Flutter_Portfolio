import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_port/themeColors.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:velocity_x/velocity_x.dart';

class HeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var nameWidget = "Denzell\nGrant"
        .text
        .white
        .xl6
        .lineHeight(1)
        .size(context.isMobile ? 15 : 20)
        .bold
        .make()
        .shimmer();
    return SafeArea(
        child: VxBox(
      child: VStack([
        ZStack([
          PictureWidget(),
          Row(
            children: [
              VStack([
                CustomAppBar().shimmer(
                  primaryColor: themeColors.primaryColor,
                ),
                30.heightBox,
                nameWidget,
                20.heightBox,
                VxBox()
                    .color(themeColors.accentColor)
                    .size(60, 10)
                    .make()
                    .shimmer(primaryColor: themeColors.accentColor),
                30.heightBox,
                SocialAccounts()
              ]).pSymmetric(
                h: context.percentWidth * 10,
                v: 32,
              ),
              Expanded(
                  child: VStack([
                " - Introduction".text.gray500.widest.sm.make(),
                10.heightBox,
                "Software Developer. \nJavaScript, \nDart & Flutter, \nReact.js"
                    .text
                    .white
                    .xl3
                    .maxLines(5)
                    .make(),
                20.heightBox,
              ]))
            ],
          )
        ]),
      ]),
    ).make());
  }
}

class PictureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.rotationY(pi),
      child: Image.asset(
        "assets/name.png",
        fit: BoxFit.cover,
        height: context.percentHeight * 60,
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      AntDesign.codesquare,
      size: 50,
      color: themeColors.accentColor,
    );
  }
}

class SocialAccounts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return [
      Icon(
        AntDesign.github,
        color: Colors.white,
      ).mdClick(() {
        launch("https://github.com/denzgrant");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.twitter,
        color: Colors.white,
      ).mdClick(() {
        launch("https://twitter.com/denzcodergrant");
      }).make(),
      20.widthBox,
      Icon(
        AntDesign.linkedin_square,
        color: Colors.white,
      ).mdClick(() {
        launch("https://www.linkedin.com/in/denzell-grant-he-his-10175574/");
      }).make(),
      20.widthBox,
    ].hStack();
  }
}
