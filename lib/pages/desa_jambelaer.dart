import 'package:flutter/material.dart';

class ListKampung extends StatelessWidget {
  ListKampung({super.key});

  final List<Map<String, String>> dataKampung = [
    {'Kampung': 'Sindangcai', 'RW': 'RW 04'},
    {'Kampung': 'Melong', 'RW': 'RW 06'},
    {'Kampung': 'Gardu', 'RW': 'RW 07'},
    {'Kampung': 'Cihuni', 'RW': 'RW 08'},
    {'Kampung': 'Sadang', 'RW': 'RW 09'},
    {'Kampung': 'Cirupa', 'RW': 'RW 10'},
    {'Kampung': 'Ciwiru', 'RW': 'RW 011'},
    {'Kampung': 'Cisaat', 'RW': 'RW 05'},
    {'Kampung': 'Cirata', 'RW': 'RW 01'},
    {'Kampung': 'Waru Doyong', 'RW': 'RW 02'},
    {'Kampung': 'Kupa', 'RW': 'RW 03'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 65, 131, 231),
        title: Text('Data Kampung'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return Card(
            color: Colors.blue,
            elevation: 10,
            shadowColor: Colors.black12,
            child: ListTile(
              title: Text(
                dataKampung[index]['Kampung']!,
                style: TextStyle(fontSize: 15),
              ),
              subtitle: Text(dataKampung[index]['RW']!),
              leading: CircleAvatar(),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            color: Colors.grey,
            height: 1,
          );
        },
        itemCount: dataKampung.length,
      ),
    );
  }
}
