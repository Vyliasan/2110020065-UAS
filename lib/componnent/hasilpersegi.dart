import 'package:flutter/material.dart';

class HasilPersegi extends StatelessWidget {
  HasilPersegi(
      {super.key, required this.panjang_persegi, required this.lebar_persegi});
  final int panjang_persegi;
  final int lebar_persegi;
  // int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (panjang_persegi * lebar_persegi * 1.0);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL LUAS PERSEGI'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              'Luas Persegi Adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            Text(
              '$hasil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
