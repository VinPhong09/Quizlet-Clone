import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart'
    as picker;

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  bool _isTeacher = false;
  bool _obscureText = true;
  TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
             const Text(
              'Đăng ký nhanh bằng',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.facebook),
              label: const Text('Đăng ký với Facebook'),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.g_mobiledata),
              label: const Text('Đăng ký với Google'),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.apple),
              label: const Text('Đăng ký với Apple'),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'hoặc tạo một tài khoản mới',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16.0),
            TextField(
            controller: _dateController,
            decoration: InputDecoration(
              labelText: 'Ngày sinh',
              suffixIcon: Icon(Icons.calendar_today),
            ),
            onTap: () {
              _selectDate(context);
            },
            readOnly: true,
          ),
            const SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            const SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                    _obscureText ? Icons.visibility_off : Icons.visibility,
                    color: Colors.black,
                  ),
                ),
              ),
              obscureText: _obscureText,
            ),
            const SizedBox(height: 16.0),
            Row(
              children: [
                const Text('Bạn có phải là giáo viên không?'),
                const SizedBox(width: 8.0),
                Expanded(
                  child: Row(
                    children: [
                      Radio<bool>(
                        value: true,
                        groupValue: _isTeacher,
                        onChanged: (value) {
                          setState(() {
                            _isTeacher = value!;
                          });
                        },
                      ),
                      const Text('Có'),
                      Radio<bool>(
                        value: false,
                        groupValue: _isTeacher,
                        onChanged: (value) {
                          setState(() {
                            _isTeacher = value!;
                          });
                        },
                      ),
                      const Text('Không'),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
    _selectDate(BuildContext context) async {
    DateTime now = DateTime.now();
    int nowYear = now.year;
    picker.DatePicker.showDatePicker(context,
      showTitleActions: true,
      minTime: DateTime(1900, 1, 1),
      maxTime: DateTime(nowYear, 12, 31),
      theme: picker.DatePickerTheme(
          headerColor: Color.fromARGB(255, 108, 101, 88),
          backgroundColor: Colors.blue,
          itemStyle: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18),
          doneStyle:
              TextStyle(color: Colors.white, fontSize: 16)),
      onChanged: (date) {
    print('change $date in time zone ' +
        date.timeZoneOffset.inHours.toString());
      },
      onConfirm: (date) {
        print('confirm $date');
        // Set nội dung của TextField thành ngày được chọn
        _dateController.text = date.year.toString() + '-' + date.month.toString() + '-' +  date.day.toString();
      },
      currentTime: DateTime.now(),
      locale: picker.LocaleType.vi,
    );
  }
}

class CustomPicker extends picker.CommonPickerModel {
  String digits(int value, int length) {
    return '$value'.padLeft(length, "0");
  }

  CustomPicker({DateTime? currentTime, picker.LocaleType? locale})
      : super(locale: locale) {
    this.currentTime = currentTime ?? DateTime.now();
    this.setLeftIndex(this.currentTime.hour);
    this.setMiddleIndex(this.currentTime.minute);
    this.setRightIndex(this.currentTime.second);
  }

  @override
  String? leftStringAtIndex(int index) {
    if (index >= 0 && index < 24) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? middleStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String? rightStringAtIndex(int index) {
    if (index >= 0 && index < 60) {
      return this.digits(index, 2);
    } else {
      return null;
    }
  }

  @override
  String leftDivider() {
    return "|";
  }

  @override
  String rightDivider() {
    return "|";
  }

  @override
  List<int> layoutProportions() {
    return [1, 2, 1];
  }

  @override
  DateTime finalTime() {
    return currentTime.isUtc
        ? DateTime.utc(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex())
        : DateTime(
            currentTime.year,
            currentTime.month,
            currentTime.day,
            this.currentLeftIndex(),
            this.currentMiddleIndex(),
            this.currentRightIndex());
  }
}