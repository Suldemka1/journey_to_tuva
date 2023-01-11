import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journey_to_tuva/src/ui/BottomNavbar.dart';
import 'package:journey_to_tuva/src/ui/levelCard.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Авторизация"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            child: SingleChildScrollView(
              child: Stack(children: [
                Container(
                  constraints: BoxConstraints.expand(
                      height: MediaQuery.of(context).size.height * 4.6),
                  width: constraints.maxWidth,
                  height: constraints.maxHeight,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/wallpaper.jpeg"),
                        fit: BoxFit.fitWidth),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavbar(selectedIndex: 2,)
    );
  }
}
