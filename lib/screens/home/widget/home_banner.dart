import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/responsive.dart';
import 'package:port_folio/screens/home/widget/build_animated_text.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/image/im2.jpg",
            fit: BoxFit.fill,
          ),
          Container(color: darkColor.withOpacity(.66)),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi I'm Djiga Salane \n Someone Cool me Dax",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold)
                        : Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  BuildAnimatedText(),
                  if (Responsive.isMobileLarge == true)
                    SizedBox(
                      height: defaultPadding,
                    )
                  else
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                  if (!Responsive.isMobileLarge(context))
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                vertical: Responsive.isTablet(context)
                                    ? defaultPadding / 2
                                    : defaultPadding,
                                horizontal: defaultPadding),
                            primary: primaryColor,
                            onPrimary: darkColor),
                        onPressed: () {},
                        child: Text("Explore Kangam School"))
                ],
              ))
        ],
      ),
    );
  }
}
