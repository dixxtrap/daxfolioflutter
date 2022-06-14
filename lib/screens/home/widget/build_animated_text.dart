import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/responsive.dart';
import 'package:port_folio/screens/home/widget/flutter_code_text.dart';

class BuildAnimatedText extends StatelessWidget {
  const BuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Responsive.isMobileLarge(context)
          ? Theme.of(context).textTheme.subtitle2!
          : Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) ...[
            FlutterCodeText(),
            SizedBox(
              width: defaultPadding / 2,
            ),
          ],
          Text("I build "),
          AnimatedTextKit(repeatForever: true, animatedTexts: [
            TyperAnimatedText("Responsive web and mobile  app ",
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText("Complete e-commerce app ui ",
                speed: Duration(milliseconds: 60)),
            TyperAnimatedText("Streaming App clone  ",
                speed: Duration(milliseconds: 60)),
          ]),
          if (!Responsive.isMobileLarge(context)) ...[
            SizedBox(
              width: defaultPadding / 2,
            ),
            FlutterCodeText(
              isEnd: true,
            )
          ],
        ],
      ),
    );
  }
}
