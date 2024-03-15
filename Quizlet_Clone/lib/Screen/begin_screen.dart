
import 'package:flutter/material.dart';
import 'package:quizlet_clone/login_form.dart';
import 'package:quizlet_clone/register_form.dart';

void main() {
  runApp(BeginScreen());
}

class BeginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quizlet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BeginPage(),
    );
  }
}

class BeginPage extends StatefulWidget {
  @override
  _BeginPage createState() => _BeginPage();
}

class _BeginPage extends State<BeginPage> {

  int _currentIndex = 0;
  final List<Flashcard> flashcards = [
    Flashcard(
      imagePath: 'images/anh1.png',
      description: 'Hơn 90% học sinh sử dụng Quizlet cho biết họ đã cải thiện được điểm số.',
    ),
    Flashcard(
      imagePath: 'images/anh2.png',
      description: 'Tìm kiếm hàng triệu bộ thẻ ghi nhớ.',
    ),
    Flashcard(
      imagePath: 'images/anh3.png',
      description: 'Học bằng bốn cách khác nhau.',
    ),
    Flashcard(
      imagePath: 'images/anh1.png',
      description: 'Tùy chỉnh thẻ ghi nhớ theo nhu cầu của bạn.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quizlet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: flashcards.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  return FlashcardWidget(flashcard: flashcards[index]);
                },
              ),
            ),
            const SizedBox(width: 100, height: 100,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (int i = 0; i < flashcards.length; i++)
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 4.0),
                    width: 8.0,
                    height: 8.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentIndex == i ? Colors.blue : Colors.grey,
                    ),
                  ),
              ],
            ),
            const SizedBox(width: 100, height: 20,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegistrationForm()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, backgroundColor: Colors.deepPurple,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 45,
                        vertical: 20,
                      ),
                      textStyle: const TextStyle(
                        fontSize: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )
                  ),
                  child: const Text('Đăng ký miễn phí'),
                ),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => login_form()),
                    );
                  },
                  child: const Text('Hoặc đăng nhập',
                    style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 20
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FlashcardWidget extends StatelessWidget{
  final Flashcard flashcard;
  FlashcardWidget({required this.flashcard});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(25),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                flashcard.imagePath,
                height: 300,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 100),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                flashcard.description,
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          )
        ],
      ),
    );
  }
}
class Flashcard {
  final String imagePath;
  final String description;

  Flashcard({required this.imagePath, required this.description});
}