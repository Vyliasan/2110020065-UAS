import 'package:flutter/material.dart';

class HasilLingkaran extends StatelessWidget {
  HasilLingkaran(
      {super.key, required this.jari_lingkaran});
  final int jari_lingkaran;
  // int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (3.14 * jari_lingkaran * jari_lingkaran);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('HASIL LUAS LINGKARAN'),
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
              'Luas Lingkaran Adalah :',
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
