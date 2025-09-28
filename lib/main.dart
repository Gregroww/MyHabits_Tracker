import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Habits Tracker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //Header
      appBar: AppBar(
        title: Text('Habits Tracker', 
          style: TextStyle(
            color: Color.fromARGB(255, 0, 0, 0),
            fontWeight: FontWeight.bold,
            fontSize: 20, 
            ),
        ),
        foregroundColor: Color.fromARGB(255, 0, 0, 0),
        backgroundColor: Color.fromARGB(255, 207, 207, 207),
        
      ),

      //Body
      body: Column(
        children: [
          //Bulan dan Tahun
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Juni, 2024',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //Hari dalam minggu
          Container(
            margin: EdgeInsets.only(top: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text('1', style: TextStyle(fontSize: 16)), 
                      Text('Min', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)), 
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[100],
                    ),
                    child: Column(
                      children: [
                        Text('2', style: TextStyle(fontSize: 16)),
                        Text('Sen', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('3', style: TextStyle(fontSize: 16)),
                      Text('Sel', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('4', style: TextStyle(fontSize: 16)),
                      Text('Rab', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('5', style: TextStyle(fontSize: 16)),
                      Text('Kam', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('6', style: TextStyle(fontSize: 16)),
                      Text('Jum', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text('7', style: TextStyle(fontSize: 16)),
                      Text('Sab', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
              ],
            ),
          ),
          //List Habits
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(bottom: 200),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 221, 221, 221),
              borderRadius: BorderRadius.circular(8),
              ),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.check_box_outline_blank),
                  title: Text('Olahraga'),
                ),
                ListTile(
                  leading: Icon(Icons.check_box_outline_blank),
                  title: Text('Membaca Buku'),
                ),
                ListTile(
                  leading: Icon(Icons.check_box_outline_blank),
                  title: Text('Meditasi'),
                ),
                ListTile(
                  leading: Icon(Icons.check_box_outline_blank),
                  title: Text('Belajar Pemrograman'),
                ),
              ],
            ),
          ),
          //Button Tambah Habits
          Container(
            margin: EdgeInsets.only(top: 100),
            child: ElevatedButton(
              onPressed: () {
                //efek di tekan
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(20),
                backgroundColor: Colors.grey,
              ),
              child: Icon(Icons.add),
            ),
          ),
        ],
        ),
    );
  }
}