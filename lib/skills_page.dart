import 'package:flutter/material.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  Widget skillItem(IconData icon, String skill, double level, Color color) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Row(
          children: [
            Icon(icon, color: color, size: 20),
            const SizedBox(width: 8),
            Expanded(
              child: Text(
                skill,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),

        const SizedBox(height: 5),

        LinearProgressIndicator(
          value: level,
          color: color,
          backgroundColor: Colors.grey[300],
          minHeight: 8,
          borderRadius: BorderRadius.circular(10),
        ),

        const SizedBox(height: 15),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Skills"),
        backgroundColor: Colors.blueAccent,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "My Technical Skills",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Here are the technologies and tools I work with as a Mobile App Developer, Web Designer, and Software Developer.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                height: 1.4,
              ),
            ),

            const SizedBox(height: 20),

            skillItem(Icons.phone_android, "Mobile App Development (Flutter, Dart)", 0.9, Colors.blue),

            skillItem(Icons.language, "Website Development (HTML, CSS, JS, WordPress, Next.js)", 0.9, Colors.orange),

            skillItem(Icons.web, "Frontend Development (React / UI)", 0.85, Colors.purple),

            skillItem(Icons.storage, "Backend Development (APIs / Server, Laravel, Node.js, Express.js)", 0.85, Colors.green),

            skillItem(Icons.storage_outlined, "Database (Firebase / SQL, MongoDB, MySQL, PostgreSQL)", 0.8, Colors.red),

            skillItem(Icons.code, "Full Stack Development", 0.8, Colors.teal),

            skillItem(Icons.account_tree, "Git & GitHub", 0.75, Colors.black),
          ],
        ),
      ),
    );
  }
}