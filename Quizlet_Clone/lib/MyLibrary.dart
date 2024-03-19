import 'package:flutter/material.dart';

// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _currentIndex = 0;
//
//   final List<Widget> _children = [
//     Center(child: Text('Trang chủ')),
//     Center(child: Text('Lời giải')),
//     Center(child: Text('Add')),
//     MyLibrary(),
//     Center(child: Text('Hồ sơ')),
//   ];
//
//   void onTabTapped(int index) {
//     setState(() {
//       _currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//
//       length: 5, // Số lượng tab
//       child: Scaffold(
//         backgroundColor: Colors.deepPurple[700],
//         body: _children[_currentIndex],
//         bottomNavigationBar: BottomNavigationBar(
//           onTap: onTabTapped,
//           currentIndex: _currentIndex,
//           items: [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home, color: Colors.black),
//               label: 'Trang chủ',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.lightbulb, color: Colors.black),
//               label: 'Lời giải',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.add, color: Colors.black),
//               label: 'Add',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.library_books, color: Colors.black),
//               label: 'Thư viện',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person, color: Colors.black),
//               label: 'Hồ sơ',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class MyLibrary extends StatefulWidget {
  @override
  _MyLibraryState createState() => _MyLibraryState();
}

class _MyLibraryState extends State<MyLibrary>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Thư viện',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[100],
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ))
        ],
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          tabs: [
            Tab(
              text: 'Học phần',
            ),
            Tab(text: 'Lớp học'),
            Tab(text: 'Thư mục'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10.0)),
                      height: 50,
                      width: 120,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Tất cả',
                            style: TextStyle(fontSize: 20),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.menu_open,
                              size: 30,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  'tháng 7 năm 2023',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'English 2-SYNONYM 1',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '59 thuật ngữ',
                            style: TextStyle(fontSize: 18),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Image.asset(
                                'images/logo_facebook.png',
                                width: 30,
                                height: 30,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'nguyen_thi_minh_vien',
                                style: TextStyle(fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(width: 20),
                      Image.asset(
                        'images/image_library.png',
                        width: 150,
                        height: 150,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            color: Colors.lightBlueAccent,
          ),
          Container(
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
