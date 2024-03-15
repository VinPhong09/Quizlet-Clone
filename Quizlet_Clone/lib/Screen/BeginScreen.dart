
import 'package:flutter/material.dart';

void main() {
  runApp( BeginScreen());
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
      description: 'Mô tả hình ảnh 1',
    ),
    Flashcard(
      imagePath: 'images/anh2.png',
      description: 'Mô tả hình ảnh 2',
    ),
    Flashcard(
      imagePath: 'assets/image3.jpg',
      description: 'Mô tả hình ảnh 3',
    ),
    Flashcard(
      imagePath: 'assets/image4.jpg',
      description: 'Mô tả hình ảnh 4',
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
      margin: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            flashcard.imagePath,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              flashcard.description,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
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