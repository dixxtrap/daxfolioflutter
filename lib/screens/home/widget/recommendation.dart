import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/model/recommendations.dart';
import 'package:port_folio/screens/home/widget/recommendation_card.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: defaultPadding,
          ),
          Text(
            "Recommandation",
            style: Theme.of(context).textTheme.headline6,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    demoListRecommendations.length,
                    (idx) => Padding(
                          padding: const EdgeInsets.only(right: defaultPadding),
                          child: RecommendationCard(
                              recommendation: demoListRecommendations[idx]),
                        )),
              ))
        ],
      ),
    );
  }
}
