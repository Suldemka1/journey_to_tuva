import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LevelCard extends StatefulWidget {
  final String? backgroundImage;
  final String? levelName;
  final bool? isCompleted;
  final Alignment? alignment;

  LevelCard({Key? key, this.backgroundImage, this.levelName, this.isCompleted, this.alignment})
      : super(key: key);

  @override
  _LevelCard createState() => _LevelCard();
}

class _LevelCard extends State<LevelCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: widget.alignment!,
      child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width, maxHeight: 100),
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image(image: AssetImage('assets/images/anime_1.png')),
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 0),
                  height: 30,
                  width: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                      child: Text(
                        widget.levelName!,
                        style: const TextStyle(
                          color: Colors.black54,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
