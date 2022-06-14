import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/model/recommendations.dart';

class RecommendationCard extends StatelessWidget {
  final Recommendation recommendation;

  const RecommendationCard({Key? key, required this.recommendation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        padding: EdgeInsets.all(defaultPadding),
        color: secondarColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              recommendation.name,
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(recommendation.source),
            Text(
              recommendation.text,
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            )
          ],
        )
        // color: Colors.blue,
        );
  }
}
