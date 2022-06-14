import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/model/projet_model.dart';
import 'package:port_folio/responsive.dart';
import 'package:port_folio/screens/home/widget/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Projet",
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        const Responsive(
            mobile: ResponsiveProject(
              crossAxisCount: 1,
              childAspectRatio: 1.5,
            ),
            mobileLarge: ResponsiveProject(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            tablet: ResponsiveProject(
              crossAxisCount: 3,
              childAspectRatio: 1,
            ),
            desktop: ResponsiveProject(
              crossAxisCount: 3,
              childAspectRatio: 1.1,
            ))
      ],
    );
  }
}

class ResponsiveProject extends StatelessWidget {
  final double? childAspectRatio;

  final int crossAxisCount;

  final double? padding;

  const ResponsiveProject(
      {Key? key,
      required this.crossAxisCount,
      this.childAspectRatio,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: defaulListProjet.length,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio ?? 1.3,
            crossAxisSpacing: padding ?? defaultPadding,
            mainAxisSpacing: defaultPadding),
        itemBuilder: (_, idx) => ProjectCard(
              project: defaulListProjet[idx],
            ));
  }
}
