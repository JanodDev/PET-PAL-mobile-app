import 'package:flutter/material.dart';

class ContactUsPage extends StatefulWidget {
  @override
  _ContactUsPageState createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String email = '';
  String message = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: Text('Contact Us'),
        backgroundColor: Color.fromARGB(255, 202, 89, 255),
// Feel free to adjust the color
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              Text(
                'We love to hear from you!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  name = value!;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  email = value!;
                },
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Message',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your message';
                  }
                  return null;
                },
                onSaved: (value) {
                  message = value!;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Here, you can implement the logic to send the message to your backend or email service
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: Text(
                                'Thank you, $name! Your message has been sent.'),
                          );
                        });
                  }
                },
                child: Text('Submit'),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 202, 89, 255)),
              ),
              SizedBox(height: 20),
              Text(
                'Alternatively, you can reach us at:',
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              Text(
                'Email: petpal@gmail.com\nPhone: +113 456 7890',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
              // Include social media links or other contact options here
            ],
          ),
        ),
      ),
    );
  }
}
