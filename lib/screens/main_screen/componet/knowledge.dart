import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/screens/main_screen/componet/knowledgeText.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledge",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowLedgeText(text: "flutter, Dart"),
        const KnowLedgeText(text: "ReactJs, Angular"),
        const KnowLedgeText(text: "Stylus, Sass, css,"),
        const KnowLedgeText(text: "BootStrap, TailwindCss"),
        const KnowLedgeText(text: "Git knowledge"),
      ],
    );
  }
}
