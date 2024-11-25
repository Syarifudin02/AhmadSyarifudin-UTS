import 'package:aplikasi_data_desa/pages/desa_jambelaer.dart';
import 'package:flutter/material.dart';

class DataListPage extends StatelessWidget {
  final List<Map<String, String>> dataDesa = [
    {'Nama': 'Desa Jambelaer', 'Lokasi': 'Kecamatan Dawuan'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 131, 231),
        title: Text('Data Desa'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue,
            elevation: 10,
            shadowColor: Colors.black12,
            child: ListTile(
              title: Text(
                dataDesa[index]['Nama']!,
                style: TextStyle(fontSize: 20),
              ),
              subtitle: Text(dataDesa[index]['Lokasi']!),
              leading: CircleAvatar(),
              trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ListKampung(),
                      ));
                },
                icon: Icon(Icons.search),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            height: 1,
          );
        },
        itemCount: dataDesa.length,
      ),
    );
  }
}
