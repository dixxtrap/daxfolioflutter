import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/screens/home/widget/animated_counter.dart';
import 'package:port_folio/screens/home/widget/heighlight.dart';

class HighLightInfo extends StatelessWidget {
  const HighLightInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          HeightLight(
            label: "Subscribers",
            couter: AnimatedCounter(
              value: 80,
              text: "+K",
            ),
          ),
          HeightLight(
            label: "Github Projet",
            couter: AnimatedCounter(
              value: 13,
              text: "+",
            ),
          ),
          HeightLight(
            label: "Video",
            couter: AnimatedCounter(
              value: 8,
              text: "+",
            ),
          ),
        ],
      ),
    );
  }
}
