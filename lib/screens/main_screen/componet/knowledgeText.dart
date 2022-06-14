import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';

class KnowLedgeText extends StatelessWidget {
  const KnowLedgeText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          Icon(
            Icons.check,
            color: primaryColor,
          ),
          SizedBox(
            width: defaultPadding / 2,
          ),
          Text(text)
        ],
      ),
    );
  }
}
