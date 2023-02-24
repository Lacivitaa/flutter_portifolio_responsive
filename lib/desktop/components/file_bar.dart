import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../styles/colors.dart';
import '../../styles/scales.dart';
import '../../styles/text_styles.dart';

class FileBarDesktop extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Container(
      decoration: BoxDecoration(boxShadow: <BoxShadow>[
        BoxShadow(
          color: shadowColor,
          spreadRadius: 2,
          blurRadius: 2,
          offset: const Offset(0, 3), // changes position of shadow
        ),
      ], border: Border.all(color: fileBarColor), color: fileBarColor),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: mainFileBarPadding,
          child: Text(
            "EXPLORER",
            style: fileBarTextStyle,
          ),
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: sideBarColor), color: sideBarColor),
          child: Padding(
            padding: topicFileBarPadding,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
                Text(
                  "PORTIFOLIO",
                  style: fileBarTextStyle,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: secondaryFileBarPadding,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  "html5.svg",
                  color: Colors.red,
                  width: 20,
                ),
              ),
              Text(
                "home.html",
                style: fileBarTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: secondaryFileBarPadding,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  "dart.svg",
                  color: Colors.blue,
                  width: 20,
                ),
              ),
              Text(
                "about.dart",
                style: fileBarTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: secondaryFileBarPadding,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  "javascript.svg",
                  color: Colors.yellowAccent,
                  width: 20,
                ),
              ),
              Text(
                "projects.js",
                style: fileBarTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: secondaryFileBarPadding,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  "css3.svg",
                  color: Colors.blue,
                  width: 20,
                ),
              ),
              Text(
                "contact.css",
                style: fileBarTextStyle,
              ),
            ],
          ),
        ),
        Padding(
          padding: secondaryFileBarPadding,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: SvgPicture.asset(
                  "json.svg",
                  color: Colors.yellow,
                  width: 20,
                ),
              ),
              Text(
                "github.md",
                style: fileBarTextStyle,
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
