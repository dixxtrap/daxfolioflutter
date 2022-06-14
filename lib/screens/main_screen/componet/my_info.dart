import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
          color: const Color(0xFF242430),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Spacer(
                  flex: 2,
                ),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/image/im3.jpg"),
                ),
                const Spacer(),
                Text(
                  "Djiga Salane",
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                const Text(
                  "Developpeur Flutter & Former \n Section Mathematique et informatique de l'UCAD",
                  style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontFamily: "Poppins",
                      height: 1.5),
                  textAlign: TextAlign.center,
                ),
                const Spacer(
                  flex: 2,
                ),
              ])),
    );
  }
}
