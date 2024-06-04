import 'package:flutter/material.dart';

class UserProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('User Profile'),
        backgroundColor:
            Color.fromARGB(255, 202, 89, 255), // Feel free to adjust the color
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage('assets/man.png'), // Placeholder image
                backgroundColor: Colors.grey.shade800,
              ),
              SizedBox(height: 20),
              Text(
                'user123',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'user123@gmail.com', // Placeholder email
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                leading: Icon(Icons.pets),
                title: Text('My Pets'),
                onTap: () {
                  // Navigate to user's pets page
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
                onTap: () {
                  // Navigate to settings page
                },
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Help & Feedback'),
                onTap: () {
                  // Navigate to help and feedback page
                },
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text('Log Out'),
                onTap: () {
                  // Implement log out functionality
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
