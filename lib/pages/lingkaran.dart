import 'package:flutter/material.dart';
import 'package:uas_2210020065/componnent/hasillingkaran.dart';

class LuasLingkaran extends StatefulWidget {
  @override
  _LuasLingkaran createState() => new _LuasLingkaran();
}

class _LuasLingkaran extends State<LuasLingkaran>{
  int jari = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghitung Luas Lingkaran'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 96, 247, 118),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20.0),),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      jari = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    labelText: "Jari-Jari Lingkaran",
                    suffix: Text('cm'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Jari-Jari',
                  ),
                ),
              ),
            ],
          ),
           Padding(padding: EdgeInsets.only(top: 20.0)),
           Container(
            margin: EdgeInsets.only(
              left: 10,
              right: 10,
              bottom: 20,
            ),
            decoration: BoxDecoration(color: Color.fromARGB(255, 3, 115, 149)),
            child: TextButton(
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext) => new HasilLingkaran(jari_lingkaran: jari),
                );
                Navigator.of(context).push(route);
              },
              child: Center(
                child: Text(
                  'Hitung Luas',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}