import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FA),
      body: Center(
        child: Container(
          width: 350,
          padding: const EdgeInsets.all(25),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 20,
                spreadRadius: 5,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                  "https://scontent.fmnl17-4.fna.fbcdn.net/v/t39.30808-6/487863059_2430092623994562_4395136042447045021_n.jpg?stp=cp6_dst-jpg_tt6&_nc_cat=105&ccb=1-7&_nc_sid=1d70fc&_nc_eui2=AeFaM1uDOxa71xBPbSoIHCCakEQgGMMSWAuQRCAYwxJYC59JB4PrhwjV8hx-StHlFYi2xLO8U4vP-lHUU4Xcg8_x&_nc_ohc=wsUsTZlNGq0Q7kNvwHbZ5TP&_nc_oc=AdnJi9WL6ZgimYDjfgVUp4mLAT2htwCtVuj_WLK9wpvA3UHCyrzBC_9Gzq2u73VmRVQ&_nc_zt=23&_nc_ht=scontent.fmnl17-4.fna&_nc_gid=F9gfHplX8V_6ljf_vbzHMQ&oh=00_AftSsWaPELDLx-4aDzANUYvoefjTP7TLE5LQ-i0L-MqBcw&oe=699B6A23",
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Angel Cutora",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                "BSIT 3.6",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  letterSpacing: 1,
                ),
              ),
              const SizedBox(height: 20),
              const Divider(),
              const SizedBox(height: 15),
              const Text(
                "LAB 2",
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),

              // CONTACT BUTTON
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Show SnackBar
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text("Opening Contact Page..."),
                        duration: Duration(seconds: 1),
                      ),
                    );

                    // Navigate to Contact Page
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ContactPage(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    "Contact Me",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Page"),
        backgroundColor: const Color.fromARGB(255, 239, 237, 237),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Show Dialog
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                title: const Text("Contact Information"),
                content: const Text(
                  "Email: angelcutora1@email.com\nPhone: 09068386889",
                ),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text("Close"),
                  ),
                ],
              ),
            );
          },
          child: const Text("Show Contact Info"),
        ),
      ),
    );
  }
}
