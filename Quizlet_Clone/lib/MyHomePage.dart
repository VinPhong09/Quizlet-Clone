import 'package:flutter/material.dart';
import 'package:quizlet_clone/MyLibrary.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    Center(child: Text('Trang chủ')),
    Center(child: Text('Lời giải')),
    Center(child: Text('Add')),
    MyLibrary(),
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

