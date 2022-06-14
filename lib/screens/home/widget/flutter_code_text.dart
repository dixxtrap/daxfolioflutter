import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';

class FlutterCodeText extends StatelessWidget {
  const FlutterCodeText({Key? key, this.isEnd}) : super(key: key);
  final bool? isEnd;
  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: isEnd == true ? "</" : "<", children: [
      TextSpan(text: "flutter", style: TextStyle(color: primaryColor)),
      TextSpan(text: ">")
    ]));
  }
}
