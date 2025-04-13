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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children:
            List.generate(rainbowColor.length, (index) {
              return Expanded(child : GestureDetector(onTap: () {
               print('이건 ${colorNames[index]}이에요!') 
              },)
                child: Container(color: rainbowColor[index]));
            }).toList(),
      ),
    );
  }
}
