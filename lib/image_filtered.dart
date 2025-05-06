import 'dart:ui';
import 'package:flutter/material.dart';

class PantallaSeis extends StatelessWidget {
  const PantallaSeis({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ImageFiltered')),
      body: ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 8),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
            'https://images.stockcake.com/public/7/9/e/79ea7fa0-e580-45c1-82b4-adc4436b035e_large/sunrise-mountain-view-stockcake.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
