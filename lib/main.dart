import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Rainbow());
  }
}

class Rainbow extends StatelessWidget {
  final List<Color> rainbowColor = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple,
  ];

  final List<String> colorNames = [
    '빨간색',
    '주황색',
    '노란색',
    '초록색',
    '파란색',
    '남색',
    '보라색',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:
            List.generate(rainbowColor.length, (index) {
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    print('${colorNames[index]}을 선택하셨습니다.');
                  },
                  child: Container(color: rainbowColor[index]),
                ),
              );
            }).toList(),
      ),
    );
  }
}
