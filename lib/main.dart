import 'package:flutter/material.dart';

void main() => runApp(MaterialAppExample());

class Contact {
  final String name;
  final String phoneNumber;
  final String avatarImagePath;

  Contact(this.name, this.phoneNumber, this.avatarImagePath);
}

class MaterialAppExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Contact> contacts = [
    Contact("Kontak 1", "123-456-7890", ""),
    Contact("Kontak 2", "123-456-7890", ""),
    Contact("Kontak 3", "123-456-7890", ""),
    Contact("Kontak 4", "123-456-7890", ""),
    Contact("Kontak 5", "123-456-7890", ""),
    Contact("Kontak 6", "123-456-7890", ""),
    Contact("Kontak 7", "123-456-7890", ""),
    Contact("Kontak 8", "123-456-7890", ""),
    Contact("Kontak 9", "123-456-7890", ""),
    Contact("Kontak 10", "123-456-7890", ""),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MaterialApp", style: TextStyle(color: Colors.white)),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.white),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
        backgroundColor: Color(0xFF303030),
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(contacts[index].avatarImagePath),
            ),
            title: Text(
              contacts[index].name,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            subtitle: Text(
              contacts[index].phoneNumber,
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.white),
            label: "Settings",
          ),
        ],
        backgroundColor: Color(0xFF303030),
      ),
      backgroundColor: Color(0xFF303030),
    );
  }
}
