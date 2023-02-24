import 'package:flutter/material.dart';
import 'package:flutter_portifolio/styles/colors.dart';
import 'package:flutter_portifolio/styles/scales.dart';
import 'package:flutter_portifolio/styles/text_styles.dart';
import 'package:flutter_svg/svg.dart';

class TopBarDesktop extends StatelessWidget {
  const TopBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: topBarColor), color: topBarColor),
      child: Padding(
        padding: topBarHeightPadding,
        child: Row(children: [
          Padding(
            padding: topBarTextPadding,
            child: SvgPicture.asset(
              "vscode_logo.svg",
              height: 18,
            ),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Arquivo', style: topBarTextStyle),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Editar', style: topBarTextStyle),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Seleção', style: topBarTextStyle),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Ver', style: topBarTextStyle),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Acessar', style: topBarTextStyle),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Executar', style: topBarTextStyle),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Terminal', style: topBarTextStyle),
          ),
          Padding(
            padding: topBarTextPadding,
            child: Text('Ajuda', style: topBarTextStyle),
          ),
          const Spacer(flex: 1),
          Padding(
            padding: topBarTextPadding,
            child: Text('Igor Lacivita - Front-end Developer',
                style: topBarTextStyle),
          ),
          const Spacer(flex: 2),
        ]),
      ),
    );
  }
}
