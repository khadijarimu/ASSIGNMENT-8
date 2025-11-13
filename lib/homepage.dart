import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        title: const Text("Welcome to my project"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.save)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Add",
        elevation: 10,
        child: const Icon(Icons.add),
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.lightBlueAccent),
              accountName: Text("Name"),
              accountEmail: Text("Email"),
            ),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.home),
              title: const Text("Home"),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.person),
              title: const Text("Profile"),
            ),
            const Divider(),
            ListTile(
              onTap: () {},
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Center(
          child: Container(
            height: 800,
            width: 350,
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.brown, Colors.brown.shade200],
              ),
              border: Border.all(color: Colors.red, width: 5),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Welcome to homepage",
                  style: GoogleFonts.lobster(
                    textStyle: const TextStyle(fontSize: 30),
                  ),
                ),
                const SizedBox(height: 10),
                Image.asset('assets/images/flutter.png', height: 50),
                const SizedBox(height: 10),
                Image.asset(
                  'assets/images/images.jpeg',
                  height: 200,
                  fit: BoxFit.fill,
                ),
                const SizedBox(height: 10),
                Image.network(
                  'https://images.unsplash.com/photo-1575936123452-b67c3203c357'
                  '?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8fDA%3D'
                  '&auto=format&fit=crop&q=60&w=500',
                  height: 200,
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text("Elevated"),
                    ),
                    const SizedBox(width: 10),
                    TextButton(onPressed: () {}, child: const Text("Texted")),
                    const SizedBox(width: 10),
                    OutlinedButton(
                      onPressed: () {},
                      child: const Text("Outlined"),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Container(height: 100, width: 100, color: Colors.blueGrey),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
