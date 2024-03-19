import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 24,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              Text(
                'Đăng nhập nhanh bằng',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  'images/logo_facebook.png',
                  width: 50,
                  height: 50,
                ),
                label: Text(
                  'Tiếp tục với Facebook',
                  style: TextStyle(color: Colors.grey[600],
                  fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
                  width: 50,
                  height: 50,
                ),
                label: Text(
                  'Tiếp tục với Google',
                  style: TextStyle(color: Colors.grey[600],
                  fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
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
                  width: 50,
                  height: 50,
                ),
                label: Text(
                  'Tiếp tục với Apple',
                  style: TextStyle(color: Colors.grey[600],
                  fontSize: 16),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: Colors.grey, width: 1.5),
                  ),
                  backgroundColor: Colors.white,
                ),
              ),
              const SizedBox(height: 16.0),
              Text(
                'hoặc đăng nhập bằng email hoặc tên người dùng của bạn',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                controller: _usernameController,
                decoration:
                InputDecoration(hintText: 'Nhập tên người dùng của bạn',
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey[400])),
              ),
              Text('Email hoặc tên người dùng'),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: InputDecoration(hintText: 'Nhập mật khẩu của bạn',
                hintStyle: TextStyle(fontSize: 18, color: Colors.grey[400])),
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
                  style: TextStyle(fontSize: 14),
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
      )
    );
  }
}
