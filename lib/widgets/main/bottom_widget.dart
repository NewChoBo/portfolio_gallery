import 'package:flutter/material.dart';

class BottomWidget extends StatefulWidget {
  const BottomWidget({
    super.key,
  });

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    // HomePage(),
    // SettingsPage(),
    // ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed, // Fixed
      backgroundColor: Colors.black,
      currentIndex: _selectedIndex,
      onTap: (int index) {
        setState(() {
          _selectedIndex = index;
        });
      }, // 배경 색상
      selectedItemColor: Colors.white, // 선택된 아이콘과 텍스트 색상
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.question_mark_rounded),
          label: 'Q&A',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_rounded),
          label: 'Message',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
