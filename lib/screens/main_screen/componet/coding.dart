import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/screens/main_screen/componet/animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          label: "Python",
          poucentage: 0.8,
        ),
        const AnimatedLinearProgressIndicator(
          label: "Dart",
          poucentage: 0.68,
        ),
        const AnimatedLinearProgressIndicator(
          label: "JavaScript",
          poucentage: 0.57,
        ),
        const AnimatedLinearProgressIndicator(
          label: "HTML",
          poucentage: 0.95,
        ),
        const AnimatedLinearProgressIndicator(
          label: "CSS",
          poucentage: 0.75,
        ),
      ],
    );
  }
}
