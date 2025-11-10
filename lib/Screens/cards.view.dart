import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});


  @override
  Widget build(BuildContext context) {
   return Center(
      child: Image.asset(
        'images/maps.jpg',
        fit: BoxFit.contain,
        errorBuilder: (c, e, s) => Container(
          color: Colors.grey.shade300,
          alignment: Alignment.center,
          child: const Icon(Icons.broken_image, size: 64),
        ),
      ),
    );
}
}