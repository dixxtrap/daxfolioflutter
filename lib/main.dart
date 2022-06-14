import 'package:flutter/material.dart';
import 'package:port_folio/constante.dart';
import 'package:port_folio/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          primaryColor: primaryColor,
          brightness: Brightness.dark,
          fontFamily: "Poppins",
          scaffoldBackgroundColor: bgColor,
          canvasColor: bgColor,
          splashColor: Colors.cyan,
          textTheme: const TextTheme(
              subtitle1: TextStyle(fontFamily: "Poppins"),
              subtitle2: TextStyle(fontFamily: "Poppins"),
              bodyText1: TextStyle(color: bodyTextColor, fontFamily: "Poppins"),
              bodyText2: TextStyle(color: bodyTextColor))),
      home: const Home(),
    );
  }
}
