import 'package:flutter/material.dart';

class AreaInfoText extends StatelessWidget {
  final String text;

  final String title;

  const AreaInfoText({
    Key? key,
    required this.text,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(color: Colors.white),
        ),
        Text(
          text,
        )
      ],
    );
  }
}
