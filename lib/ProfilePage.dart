import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile Page",
          style: TextStyle(
            color: Colors.white, // ← AppBar text white
          ),
        ),
        backgroundColor: Colors.blueGrey,
      ),

      body: Center(
        child: SizedBox(
          width: 330,
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: const Color.fromARGB(255, 210, 230, 240),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Profile Icon
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.blueGrey,
                    child: Icon(Icons.person, size: 50, color: Colors.white),
                  ),

                  const SizedBox(height: 20),

                  // Full Name Field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Full Name",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Email Field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15),

                  // Phone Number Field
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // Save Profile Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Save Profile",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white, // ← button text white
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
