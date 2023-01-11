import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journey_to_tuva/src/ui/BottomNavbar.dart';
import 'package:journey_to_tuva/src/ui/levelCard.dart';
import 'package:sliver_tools/sliver_tools.dart';

class Games extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Игры'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverStack(insetOnOverlap: true, children: [
            SliverPositioned.fill(
                child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      "assets/images/wallpaper.jpeg",
                    ),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.bottomCenter,
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.colorBurn),
                    opacity: 0.7),
              ),
            )
                //     Container(
                //   constraints: BoxConstraints.expand(
                //     height: 5000,
                //     width: MediaQuery.of(context).size.width * 2,
                //   ),
                //   height: 5000,
                //   width: MediaQuery.of(context).size.width,
                //   decoration: BoxDecoration(
                //       image: DecorationImage(
                //           repeat: ImageRepeat.noRepeat,
                //           alignment: Alignment.bottomCenter,
                //           image: AssetImage('assets/images/wallpaper.jpeg'),
                //           fit: BoxFit.cover)),
                // )
                ),
            SliverList(
              delegate: SliverChildListDelegate([
                for (var i = 0; i < 38; i++)
                  if (i % 2 == 0)
                    LevelCard(
                      levelName: 'Level #${i}',
                      alignment: Alignment.topLeft,
                    )
                  else
                    LevelCard(
                      levelName: 'Level #${i}',
                      alignment: Alignment.topRight,
                    )
              ]),
            ),
          ]),
        ],
      ),
      bottomNavigationBar: BottomNavbar(
        selectedIndex: 0,
      ),
    );
  }
}
