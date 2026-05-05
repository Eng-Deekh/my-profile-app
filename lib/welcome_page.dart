import 'package:flutter/material.dart';
import 'profile_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Icon(Icons.person, size: 100, color: Colors.white),

              const SizedBox(height: 20),

              const Text(
                "Welcome to My Profile",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 10),

      const Text(
  "Hi, I'm Mohamed Ahmed Ali, a Mobile App Developer, Web Designer, and Software Developer. "
  "I build clean and modern apps. "
  "View my profile to see my skills, experience, and background.",
  textAlign: TextAlign.center,
  style: TextStyle(
    color: Colors.white70,
    fontSize: 16,
    height: 1.4,
    fontWeight: FontWeight.w500,
  ),
),
              const SizedBox(height: 40),

              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ProfilePage(),
                    ),
                  );
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.blueAccent),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}