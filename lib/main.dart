import 'package:flutter/material.dart';
import 'package:rainbow/ui/pages/blue/blue.dart';
import 'package:rainbow/ui/pages/green/green.dart';
import 'package:rainbow/ui/pages/indigo/indigo.dart';
import 'package:rainbow/ui/pages/orange/orange.dart';
import 'package:rainbow/ui/pages/purple/purple.dart';
import 'package:rainbow/ui/pages/red/red.dart';
import 'package:rainbow/ui/pages/yellow/yellow.dart';

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

  final List<Widget> pages = [
    Red(),
    Orange(),
    Yellow(),
    Green(),
    Blue(),
    Indigo(),
    Purple(),
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return pages[index];
                        },
                      ),
                    );
                  },
                  child: Container(color: rainbowColor[index]),
                ),
              );
            }).toList(),
      ),
    );
  }
}
