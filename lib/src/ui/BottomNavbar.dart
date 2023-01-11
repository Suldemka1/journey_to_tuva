import 'package:flutter/material.dart';

class BottomNavbar extends StatefulWidget {
  final int selectedIndex;

  BottomNavbar({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavbar();
}

class _BottomNavbar extends State<BottomNavbar> {
  int? _selectedIndex;

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (_selectedIndex) {
      case 0:
        Navigator.popAndPushNamed(context, '/');
        break;
      case 1:
        Navigator.popAndPushNamed(context, '/games');
        break;
      case 2:
        Navigator.popAndPushNamed(context, '/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.play_circle_fill), label: 'Уроки',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.gamepad), label: 'Игры'),
        BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Настройки'),
      ],
      currentIndex: widget.selectedIndex!,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black54,
      onTap: _onItemTapped,
    );
  }
}
