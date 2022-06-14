import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.pourcentage,
    required this.label,
  }) : super(key: key);
  final double pourcentage;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: pourcentage),
            duration: defaulDuration,
            builder: (_, double value, __) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: primaryColor,
                  backgroundColor: darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toStringAsFixed(0) + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: defaultPadding / 2,
        ),
        Text(label,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2)
      ],
    );
  }
}
