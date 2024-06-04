import 'package:flutter/material.dart';

class aboutus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('About Us'),
        backgroundColor: Color.fromARGB(255, 202, 89, 255),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            Text(
              'About Our Pet Care App',
              style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 202, 89, 255)),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Mission:',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 202, 89, 255)),
            ),
            SizedBox(height: 10.0),
            Text(
              'To provide comprehensive and compassionate care for pets through our innovative app. We strive to enhance the bond between pets and their owners by offering convenient and reliable pet care services.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Our Team:',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 202, 89, 255)),
            ),
            SizedBox(height: 10.0),
            Text(
              'Our team consists of experienced veterinarians, animal behaviorists, and technology enthusiasts who are passionate about improving the lives of pets. We work tirelessly to ensure that our app meets the needs of both pets and their owners.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Features:',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 202, 89, 255)),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Schedule appointments with veterinarians\n- Access pet health records\n- Find nearby pet-friendly places\n- Receive personalized pet care tips\n- Connect with other pet owners',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Contact Us:',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 202, 89, 255)),
            ),
            SizedBox(height: 10.0),
            Text(
              'Email: info@petpal.com\nPhone: 123-456-7890\nAddress: 123 PetpalStreet, colombo, Sri lanka',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 10.0),
            Text(
              'Team members',
              style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 202, 89, 255)),
            ),
          ],
        ),
      ),
    );
  }
}
