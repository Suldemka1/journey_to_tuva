import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:journey_to_tuva/src/ui/BottomNavbar.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _ProfileScreen();
}

class _ProfileScreen extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("profile"),
      bottomNavigationBar: BottomNavbar(selectedIndex: 2,),
    );
  }
}
