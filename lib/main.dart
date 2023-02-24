import 'package:flutter/material.dart';
import 'package:flutter_portifolio/desktop/home.dart';
import 'package:flutter_portifolio/responsive_configuration.dart';

void main() {
  runApp(const AppPortifolio());
}

class AppPortifolio extends StatelessWidget {
  const AppPortifolio({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ScreenProportion(),
      debugShowCheckedModeBanner: false,
      title: 'Igor Lacivita - Portifolio',
      theme: ThemeData(),
    );
  }
}

class ScreenProportion extends StatefulWidget {
  const ScreenProportion({super.key});

  @override
  State<ScreenProportion> createState() => _ScreenProportionState();
}

class _ScreenProportionState extends State<ScreenProportion> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Responsive(
            desktop: const DesktopHome(),
            tablet: Row(
              children: [
                Expanded(
                    flex: size.width > 1340 ? 8 : 10,
                    child: Container(color: Colors.blue)),
              ],
            ),
            mobile: Row(
              children: [
                Expanded(
                    flex: size.width < 1340 ? 3 : 5,
                    child: Container(color: Colors.purple))
              ],
            )));
  }
}
