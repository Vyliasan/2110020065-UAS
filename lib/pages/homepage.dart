import 'package:flutter/material.dart';
import 'package:uas_2210020065/componnent/persegibutton.dart';
import 'package:uas_2210020065/componnent/lingkaranbutton.dart';
import 'package:uas_2210020065/componnent/profilebutton.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ujian Akhir Semester'),
          backgroundColor: Color.fromARGB(255, 96, 247, 118),
          centerTitle: true,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children : [
              const SizedBox(height: 50),
              //Luas Persegi Button
              const ButtonPersegi(),

              const SizedBox(height: 50),
              //Luas Lingkaran Button
              const ButtonLingkaran(),

              const SizedBox(height: 50),
              //Profile Developer
              const ButtonProfile(),
              ]
            ),
          ),
        ),
      ),
    );
  }
}
