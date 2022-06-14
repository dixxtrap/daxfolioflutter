import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/screens/main_screen/componet/area_text_info.dart';
import 'package:port_folio/screens/main_screen/componet/coding.dart';
import 'package:port_folio/screens/main_screen/componet/knowledge.dart';
import 'package:port_folio/screens/main_screen/componet/my_info.dart';
import 'package:port_folio/screens/main_screen/componet/skill.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController sc1 = ScrollController();
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
            child: SingleChildScrollView(
                controller: sc1,
                padding: EdgeInsets.all(defaultPadding),
                child: Column(
                  children: [
                    AreaInfoText(
                      title: "Region",
                      text: "Dakar",
                    ),
                    AreaInfoText(
                      title: "ville",
                      text: "Pikine",
                    ),
                    AreaInfoText(
                      title: "Age",
                      text: "26 ans ",
                    ),
                    Divider(),
                    Skills(),
                    Coding(),
                    Knowledge(),
                    Divider(),
                    TextButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text("DownLoad CV",
                                style: TextStyle(
                                    color: Theme.of(context)
                                        .textTheme
                                        .bodyText1!
                                        .color)),
                            SizedBox(
                              width: defaultPadding / 2,
                            ),
                            Icon(
                              Icons.downloading_sharp,
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color,
                            )
                          ],
                        )),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding),
                      decoration: const BoxDecoration(
                        color: Color(0xFF24242E),
                      ),
                      child: Row(
                        children: [
                          Spacer(),
                          IconButtonFooter(
                            child: Image.asset(
                              "assets/image/link.png",
                              height: 25,
                              width: 25,
                            ),
                            onPressed: () {
                              print("presses");
                            },
                          ),
                          IconButtonFooter(
                            child: Image.asset(
                              "assets/image/face.png",
                              height: 25,
                              width: 25,
                            ),
                            onPressed: () {
                              print("presses");
                            },
                          ),
                          IconButtonFooter(
                            child: Image.asset(
                              "assets/image/inst.png",
                              height: 25,
                              width: 25,
                            ),
                            onPressed: () {
                              print("presses");
                            },
                          ),
                          IconButtonFooter(
                            child: Image.asset(
                              "assets/image/slak.png",
                              height: 25,
                              width: 25,
                            ),
                            onPressed: () {
                              print("presses");
                            },
                          ),
                          Spacer()
                        ],
                      ),
                    )
                  ],
                )),
          )
        ],
      ),
    );
  }
}

class IconButtonFooter extends StatelessWidget {
  const IconButtonFooter(
      {Key? key, required this.child, required this.onPressed})
      : super(key: key);
  final Widget child;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              padding: EdgeInsets.all(0),
              primary: Colors.transparent,
              maximumSize: Size(50, 50),
              minimumSize: Size(35, 35)),
          onPressed: () => onPressed,
          child: child),
    );
  }
}
