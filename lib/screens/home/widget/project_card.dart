import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/model/projet_model.dart';
import 'package:port_folio/responsive.dart';

class ProjectCard extends StatelessWidget {
  final Project project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: secondarColor,
      padding: EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.subtitle2,
            maxLines: 2,
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Spacer(),
          Text(
            project.description,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(height: 1.5),
            maxLines: Responsive.isDesktop(context) ? 4 : 3,
          ),
          Spacer(),
          TextButton(
            onPressed: () {},
            child: Text("read more >>"),
            style: TextButton.styleFrom(primary: primaryColor),
          )
        ],
      ),
    );
  }
}
