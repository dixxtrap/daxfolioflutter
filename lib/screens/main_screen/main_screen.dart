import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/responsive.dart';
import 'package:port_folio/screens/main_screen/componet/side_menu.dart';

class MainScreen extends StatelessWidget {
  final List<Widget> children;

  const MainScreen({Key? key, required this.children}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScrollController sc = ScrollController();

    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              automaticallyImplyLeading: true,
              backgroundColor: darkColor,
              toolbarHeight: 50,
            ),
      drawer: Responsive.isDesktop(context) ? null : SideMenu(),
      body: Center(
        child: Container(
          // constraints: const BoxConstraints(maxWidth: maxWidth),
          child: Row(
            children: [
              if (Responsive.isDesktop(context))
                const Expanded(flex: 2, child: SideMenu()),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    controller: sc,
                    child: Column(
                      children: [
                        ...children,
                        // After childreen we can make the footer
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
