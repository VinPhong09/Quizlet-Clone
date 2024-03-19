import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SearchBar(),
          // Body tạm thời để trống
          SliverFillRemaining(
            child: Container(
              color: Color(0xFF0a082d), 
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 8.0),
                    child: Text(
                    'Các học phần',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  )
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        'Quizlet',
        style: TextStyle(
          color: Colors.white, 
        ),
      ),
      actions: [
        ElevatedButton(
          onPressed: () {},
          child: Text(
            'Dùng thử miễn phí',
            style: TextStyle(
              color: Color(0xFF242f40),
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xffffcd20), 
          ),
        ),
        IconButton(
          icon: Icon(Icons.notifications, color: Colors.white), 
          onPressed: () {
            // Xử lý khi nhấn vào nút thông báo
          },
        ),
      ],
      floating: true,
      snap: true,
      pinned: true,
      backgroundColor: Color(0xff2e3756), 
      elevation: 0, // Loại bỏ đường viền
      // shape: RoundedRectangleBorder(
      //   borderRadius: BorderRadius.vertical(
      //     bottom: Radius.circular(20),
      //   ),
      // ),
      // Thanh tìm kiếm vào app bar
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Padding(
          padding: EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0), // Thêm padding bottom để tránh che phần nội dung
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: Icon(Icons.search, color: Colors.grey),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    onChanged: (value) {
                      // Xử lý khi giá trị thay đổi
                    },
                    decoration: InputDecoration(
                      hintText: 'Học phần, sách giáo khoa, câu hỏi',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8.0),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(Icons.camera_alt_rounded, color: Colors.grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
