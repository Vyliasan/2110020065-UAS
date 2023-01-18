import 'package:flutter/material.dart';
import 'package:uas_2210020065/componnent/hasilpersegi.dart';

class LuasPersegi extends StatefulWidget {
  @override
  _LuasPersegi createState() => new _LuasPersegi();
}

class _LuasPersegi extends State<LuasPersegi> {
  int panjang = 0;
  int lebar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghitung Luas Persegi'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 96, 247, 118),
      ),
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 20.0)),
          Row(
            children: <Widget>[
              Expanded(
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      panjang = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    labelText: "Panjang Persegi",
                    suffix: Text('cm'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Panjang',
                  ),
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: TextField(
                  onChanged: (txt) {
                    setState(() {
                      lebar = int.parse(txt);
                    });
                  },
                  keyboardType: TextInputType.number,
                  maxLength: 5,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  decoration: InputDecoration(
                    labelText: "Lebar Persegi",
                    suffix: Text('cm'),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    hintText: 'Lebar',
                  ),
                ),
              ),
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 20.0)),

          Container(
            margin: EdgeInsets.only(left: 10, right: 10, bottom: 20,),
            decoration: BoxDecoration(color: Color.fromARGB(255, 3, 115, 149)),
            child: TextButton(
              onPressed: () {
                var route = MaterialPageRoute(
                  builder: (BuildContext) =>
                  new HasilPersegi(panjang_persegi: panjang, lebar_persegi: lebar), 
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
