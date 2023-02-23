import 'package:flutter/material.dart';

class AppbarHome extends StatefulWidget implements PreferredSizeWidget {
  const AppbarHome({Key? key}) : super(key: key);

  @override
  _AppbarHomeState createState() => _AppbarHomeState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppbarHomeState extends State<AppbarHome> {
  late String _selectedOption;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'NewChoBo',
      ),
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // 검색 버튼 클릭 시 동작
          },
        ),
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // 검색 버튼 클릭 시 동작
          },
        ),
        PopupMenuButton<String>(
          onSelected: (String result) {
            setState(() {
              _selectedOption = result;
            });
          },
          icon: const Icon(Icons.person),
          itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
            const PopupMenuItem<String>(
              value: 'option1',
              child: Text('Option 1'),
            ),
            const PopupMenuItem<String>(
              value: 'option2',
              child: Text('Option 2'),
            ),
            const PopupMenuItem<String>(
              value: 'option3',
              child: Text('Option 3'),
            ),
          ],
        ),
      ],
    );
  }
}
