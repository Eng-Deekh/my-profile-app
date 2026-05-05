import 'package:flutter/material.dart';
import 'skills_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  Widget infoRow(IconData icon, String text, Color color) {
    return Row(
      children: [
        Icon(icon, color: color),
        const SizedBox(width: 10),
        Expanded(child: Text(text)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.width > 600;

    return Scaffold(
      backgroundColor: Colors.blueGrey[50],

      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Profile"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Center(
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 700),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Column(
                  children: [

                    // HEADER
                    Container(
                      height: isTablet ? 240 : 180,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30),
                        ),
                      ),
                      child: const Center(
                        child: CircleAvatar(
                          radius: 50,
                          backgroundImage:
                              AssetImage("assets/images/profile.jpeg"),
                        ),
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Mohamed Ahmed Ali",
                      style: TextStyle(
                        fontSize: isTablet ? 26 : 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 5),

                    const Text(
                      "Mobile App Developer, Web Designer, and Software Developer.",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey),
                    ),

                    const SizedBox(height: 10),

                    // CARD
                    Container(
                      margin: EdgeInsets.all(isTablet ? 30 : 20),
                      padding: EdgeInsets.all(isTablet ? 25 : 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(color: Colors.black12, blurRadius: 10)
                        ],
                      ),
                      child: Column(
                        children: [
                          infoRow(Icons.phone, "+252 61 8067080", Colors.blueAccent),
                          const SizedBox(height: 15),
                          infoRow(Icons.email, "deekhdev@gmail.com", Colors.orange),
                          const SizedBox(height: 15),
                          infoRow(Icons.location_on, "Mogadishu, Somalia", Colors.redAccent),
                          const SizedBox(height: 15),
                          infoRow(Icons.language, "www.deekhdev.com", Colors.green),
                          const SizedBox(height: 15),
                          infoRow(Icons.code, "github.com/Eng-Deekh", Colors.black),
                          const SizedBox(height: 15),
                          infoRow(Icons.work, "Huud Technology", Colors.indigo),
                          const SizedBox(height: 15),
                          infoRow(Icons.school, "Jamhuriya University", Colors.deepPurple),
                          const SizedBox(height: 15),
                          infoRow(Icons.menu_book, "Al-Imra Primary & Secondary School", Colors.brown),
                          const SizedBox(height: 15),
                          infoRow(Icons.cake, "Age: 22", Colors.pink),
                        ],
                      ),
                    ),

                    // BUTTON
                    Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SkillsPage(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.bar_chart, color: Colors.white),
                          label: const Text(
                            "View My Skills",
                            style: TextStyle(color: Colors.white),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blueAccent,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}