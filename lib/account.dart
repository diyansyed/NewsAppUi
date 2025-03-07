import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.trending_up), label: "Trending"),
          BottomNavigationBarItem(icon: Icon(Icons.play_circle_outline), label: "Video"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz_outlined), label: "More"),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Account", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold,),
                        ),
              const SizedBox(height: 12),

              Card(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.blue[200],
                    child: const Icon(Icons.person, color: Colors.white, size: 32),
                  ),
                  title: const Text(
                    "Hussain ali",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  subtitle: const Text("Hussain123@example.com"),
                  trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue, size: 18),
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 16),
              // Menu Options
              Expanded(
                child: ListView(
                  children: [
                    buildMenuItem(Icons.notifications, "Notifications"),
                    buildMenuItem(Icons.brightness_6, "Theme"),
                    buildMenuItem(Icons.bookmark_border, "My Bookmark"),
                    buildMenuItem(Icons.store_mall_directory, "My Publisher"),
                    buildMenuItem(Icons.language, "My Language"),
                    buildMenuItem(Icons.category, "My Category"),
                    buildMenuItem(Icons.info_outline, "About"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildMenuItem(IconData icon, String text) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(
          text,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        onTap: () {},
      ),
    );
  }
}

