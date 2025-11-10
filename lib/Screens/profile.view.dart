import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
  return Center(
      child: ClipOval(
        child: Image.asset(
          'images/profile.png',
          width: 160,
          height: 160,
          fit: BoxFit.cover,
          errorBuilder: (c, e, s) => Container(
            width: 160,
            height: 160,
            color: Colors.grey.shade300,
            alignment: Alignment.center,
            child: const Icon(Icons.person_off, size: 64),
          ),
        ),
      ),
    );
  }
}




