import 'package:flutter/material.dart';
import 'package:flutter_portifolio/desktop/components/file_bar.dart';
import 'package:flutter_portifolio/desktop/components/side_bar.dart';
import 'package:flutter_portifolio/desktop/components/top_bar.dart';
import 'package:flutter_portifolio/styles/colors.dart';
import 'package:flutter_portifolio/styles/scales.dart';
import 'package:flutter_portifolio/styles/text_styles.dart';
import 'package:flutter_svg/svg.dart';

class DesktopHome extends StatelessWidget {
  const DesktopHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const TopBarDesktop(),
      Expanded(
          flex: 1,
          child: Row(
            children: [
              const Expanded(flex: 1, child: SideBarDesktop()),
              Expanded(flex: 6, child: FileBarDesktop()),
              Expanded(
                  flex: 40,
                  child: Container(
                    decoration: BoxDecoration(
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                            color: shadowColor,
                            spreadRadius: 2,
                            blurRadius: 2,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        border: Border.all(color: backgroundColor),
                        color: backgroundColor),
                  )),
            ],
          )),
    ]);
  }
}
