import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../styles/colors.dart';

class SideBarDesktop extends StatelessWidget {
  const SideBarDesktop({super.key});

  @override
  Widget build(Object context) {
    return Container(
        decoration: BoxDecoration(
            border: Border.all(color: sideBarColor), color: sideBarColor),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(
              "file.svg",
              width: 35,
              // ignore: deprecated_member_use
              color: Colors.white,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(
              "search.svg",
              width: 35,
              // ignore: deprecated_member_use
              color: Colors.grey[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(
              "branch.svg",
              width: 35,
              // ignore: deprecated_member_use
              color: Colors.grey[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(
              "bug.svg",
              width: 35,
              // ignore: deprecated_member_use
              color: Colors.grey[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(
              "grid.svg",
              width: 35,
              // ignore: deprecated_member_use
              color: Colors.grey[400],
            ),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(
              "user.svg",
              width: 35,
              // ignore: deprecated_member_use
              color: Colors.grey[400],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            // ignore: deprecated_member_use
            child: SvgPicture.asset(
              "gear.svg",
              width: 35,
              // ignore: deprecated_member_use
              color: Colors.grey[400],
            ),
          ),
        ]));
  }
}
