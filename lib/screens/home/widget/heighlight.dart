import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';

import '../../../responsive.dart';

class HeightLight extends StatelessWidget {
  final Widget couter;
  final String label;
  const HeightLight({Key? key, required this.couter, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobileLarge(context)
        ? Column(
            children: [
              couter,
              SizedBox(
                width: Responsive.isMobileLarge(context)
                    ? defaultPadding / 4
                    : defaultPadding / 2,
              ),
              Text(
                label,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Responsive.isMobileLarge(context)
                    ? Theme.of(context).textTheme.bodySmall
                    : Theme.of(context).textTheme.subtitle2,
              ),
            ],
          )
        : Row(
            children: [
              couter,
              SizedBox(
                width: Responsive.isMobileLarge(context)
                    ? defaultPadding / 4
                    : defaultPadding / 2,
              ),
              Text(
                label,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                style: Responsive.isMobileLarge(context)
                    ? Theme.of(context).textTheme.bodySmall
                    : Theme.of(context).textTheme.subtitle2,
              ),
            ],
          );
  }
}
