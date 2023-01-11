import 'package:flutter/material.dart';
import 'package:journey_to_tuva/src/ui/BottomNavbar.dart';
import 'package:journey_to_tuva/src/ui/levelCard.dart';
import 'package:sliver_tools/sliver_tools.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavbar(selectedIndex: 0,),
    );

    //   SliverStack(
    //   insetOnOverlap: false, // defaults to false
    //   children: <Widget>[
    //     SliverPositioned.fill(
    //       child: Container(
    //         decoration: BoxDecoration(
    //           color: Colors.white,
    //           boxShadow: const <BoxShadow>[
    //             BoxShadow(
    //               offset: Offset(0, 4),
    //               blurRadius: 8,
    //               color: Colors.black26,
    //             )
    //           ],
    //           borderRadius: BorderRadius.circular(8),
    //         ),
    //       ),
    //     ),
    //     SliverList(
    //       delegate: SliverChildListDelegate([
    //         for (var i = 0; i < 100; i++)
    //           ListTile(
    //             title: Text('asd #${i}'),
    //           ),
    //       ]),
    //     )
    //   ],
    // );
  }
}

// CustomScrollView(
// slivers: [
// SliverList(
// delegate: SliverChildListDelegate([
// for (var i = 0; i < 100; i++)
// ListTile(
// title: Text('asd #${i}'),
// ),
// ]),
// ),
// ],
// ),
