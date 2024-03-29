import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarListView(),
    );
  }
}

class BelajarListView extends StatelessWidget {
  final List bulan = [
    "Januari",
    "Fabruari",
    "Maret",
    "April",
    "Mei",
    "Juni",
    "Juli",
    "Agustus",
    "September",
    "Oktober",
    "November",
    "Desember"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alta"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
                title: Text(
                    bulan[index],
                    style: TextStyle(fontSize: 30)
                ),
                subtitle: Text('ini subtitle dari ' + bulan[index]),
                leading: CircleAvatar(
                  child: Text(
                      bulan[index][0], // ambil karakter pertama text
                      style: TextStyle(fontSize: 20)
                    ),
                  )
              ),
            );
          },
        itemCount: bulan.length,
      ),
    );
  }
}