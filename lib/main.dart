import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  Widget infoRow(IconData icon, String text, Color color) {
    return Row(
      children: [
        Icon(icon, color: color),
        SizedBox(width: 10),
        Expanded(child: Text(text)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      body: SingleChildScrollView(
        child: Column(
          children: [

            // 🔵 HEADER
            Container(
              height: 200,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage:
                          AssetImage("assets/images/profile.jpeg"),
                    ),

                    // 📷 camera icon
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.camera_alt,
                            size: 20, color: Colors.blueAccent),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // 🧑 NAME
            Text(
              "Mohamed Ahmed Ali",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 5),

            Text(
              "Mobile App Developer",
              style: TextStyle(color: Colors.grey),
            ),

            SizedBox(height: 20),

            // 📦 CARD INFO
            Container(
              margin: EdgeInsets.all(20),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(color: Colors.black12, blurRadius: 10)
                ],
              ),
              child: Column(
                children: [

                  infoRow(Icons.phone, "+252 61 8067080",
                      Colors.blueAccent),

                  SizedBox(height: 15),

                  infoRow(Icons.email, "deekhdev@gmail.com",
                      Colors.orange),

                  SizedBox(height: 15),

                  infoRow(Icons.location_on, "Mogadishu, Somalia",
                      Colors.redAccent),

                  SizedBox(height: 15),

                  infoRow(Icons.language, "www.deekhdev.com",
                      Colors.green),
                ],
              ),
            ),

            // 🔘 BUTTONS
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.edit,color: Colors.white),
                  label: Text("Edit",  style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                  ),
                ),

                SizedBox(width: 15),

                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.share),
                  label: Text("Share"),
                ),
              ],
            ),

            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}