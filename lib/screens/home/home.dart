import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/model/projet_model.dart';
import 'package:port_folio/model/recommendations.dart';
import 'package:port_folio/screens/home/widget/heigh_lights.dart';
import 'package:port_folio/screens/home/widget/home_banner.dart';
import 'package:port_folio/screens/home/widget/project.dart';
import 'package:port_folio/screens/home/widget/recommendation.dart';
import 'package:port_folio/screens/main_screen/main_screen.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        HighLightInfo(),
        Projects(),
        Recommendations(),
      ],
    );
  }
}
