import 'package:flutter/material.dart';
import 'package:uas_2210020065/pages/profile.dart';

class ButtonProfile extends StatelessWidget {
  const ButtonProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Route route =
            MaterialPageRoute(builder: (context) => ProfileView());
        Navigator.push(context, route);
      },
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(color: Color.fromARGB(255, 85, 209, 247)),
        child: Center(
          child: const Text(
            'PROFILE DEVELOPER',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
