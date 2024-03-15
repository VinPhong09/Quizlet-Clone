import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login_form extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<login_form> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 24,
                onPressed: () {},
              ),
            ),
            Text(
              'Đăng nhập nhanh bằng',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'images/logo_facebook.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'Tiếp tục với Facebook',
                style: TextStyle(color: Colors.grey),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.grey, width: 1.5),
                ),
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'images/logo_google.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'Tiếp tục với Google',
                style: TextStyle(color: Colors.grey),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.grey, width: 1.5),
                ),
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: Image.asset(
                'images/logo_apple.png',
                width: 30,
                height: 30,
              ),
              label: const Text(
                'Tiếp tục với Apple',
                style: TextStyle(color: Colors.grey),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                  side: BorderSide(color: Colors.grey, width: 1.5),
                ),
                backgroundColor: Colors.white,
              ),
            ),
            const SizedBox(height: 16.0),
            Text(
              'hoặc đăng nhập bằng email hoặc tên người dùng của bạn',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: _usernameController,
              decoration:
                  InputDecoration(hintText: 'Nhập tên người dùng của bạn'),
            ),
            Text('Email hoặc tên người dùng'),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(hintText: 'Nhập mật khẩu của bạn'),
            ),
            Text('Mật khẩu'),
            SizedBox(height: 16.0),
            Center(
              child: Text('Quên tên người dùng hoặc mật khẩu?'),
            ),
            SizedBox(height: 16.0),
            Center(
              child: Text(
                'Bằng việc đăng nhập, bạn chấp thuận Điều khoản dịch vụ và Chính sách quyền riêng tư của Quizlet',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
                backgroundColor: Colors.blue,
              ),
              child: Text(
                'Đăng nhập',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
