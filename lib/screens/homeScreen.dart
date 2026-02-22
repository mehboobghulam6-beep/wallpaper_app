import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List cList = [
    'Nature',
    'Sky',
    "Flowers",
    'Animals',
    'Abstract',
    '3D',
    'Space',
    'Fashion',
    'Fitness',
    "Travel",
    'Cars',
    'Festivals',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Row(
          children: [
            CircleAvatar(
              radius: 22,
              backgroundImage: AssetImage("assets/images/logo2.png"),
            ),
            SizedBox(width: 6),
            Text('WallPalette', style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Row(
              children: [
                Card(
                  elevation: 5,
                  child: SizedBox(
                    width: 280,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(10),
                        hint: Text('Search Here'),
                        border: InputBorder.none,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                          color: Colors.orange,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 5),
                Card(color: Colors.orange,
                  elevation: 5,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search, color: Colors.black),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            SizedBox(
              height: 50,
              child: ListView.builder(
                itemCount: cList.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      Container(height: 45,
                        width: 90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 3),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            cList[index],
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(width: 6),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
