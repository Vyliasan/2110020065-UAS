import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 99, 249, 142),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Profile Developer',
                style: TextStyle(
                  fontSize: 40.0,
                  color: Color.fromARGB(255, 252, 138, 126),
                  fontWeight: FontWeight.bold,
                ),
              ),
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('asset/sandi.jpg'),
              ),
              Text(
                'SANDI',
                style: TextStyle(
                  fontSize: 30.0,
                  color: Color.fromARGB(255, 196, 157, 98),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'NPM : 2210020065',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 196, 157, 98),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kelas : 5A Sistem Informasi',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 196, 157, 98),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Alamat : Jl. Berlian No 91',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 196, 157, 98),
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+62 887 0511 7360',
                    style: TextStyle(
                      color: Color.fromARGB(255, 196, 157, 98),
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
