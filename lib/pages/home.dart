import 'package:flutter/material.dart';
import 'data_desa.dart';
import 'profile.dart';
import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WELCOME $username', style: TextStyle(fontSize: 15)),
        backgroundColor: const Color.fromARGB(255, 65, 131, 231),
      ),
      drawer: CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Images/Gambar1.webp"),
           // fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
