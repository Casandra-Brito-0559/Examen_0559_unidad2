import 'package:flutter/material.dart';
import 'circle.dart';
import 'square.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({Key? key}) : super(key: key);

  static const List<String> _post = [
    'post 1',
    'post 2',
    'post 3',
    'post 4',
    'post 5',
  ];

  static const List<String> _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
      ),
      body: Column(
        children: [
          // instagram stories
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: (BuildContext context, int index) {
                return MyCircle(
                  child: _stories[index],
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (BuildContext context, int index) {
                return MySquare(child: _post[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
