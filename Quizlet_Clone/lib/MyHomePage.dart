import 'package:flutter/material.dart';
import 'package:quizlet_clone/my_library.dart';

class my_home_page extends StatefulWidget {
  @override
  my_home_pageState createState() => my_home_pageState();
}

class my_home_pageState extends State<my_home_page> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Center(child: Text('Trang chủ')),
    Center(child: Text('Lời giải')),
    Center(child: Text('Add')),
    my_library(),
    Center(child: Text('Hồ sơ')),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.search, color: _currentIndex == 0 ? Colors.blue : Colors.black),
              label: 'Trang chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.lightbulb, color: _currentIndex == 1 ? Colors.blue : Colors.black),
              label: 'Lời giải',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, color: _currentIndex == 2 ? Colors.blue : Colors.black),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: _currentIndex == 3 ? Colors.blue : Colors.black),
              label: 'Thư viện',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: _currentIndex == 4 ? Colors.blue : Colors.black),
              label: 'Hồ sơ',
            ),
          ],
        ),
      ),
    );
  }
}

