import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:pet_pal/screen/authenticaton/home_screen.dart';
import 'package:pet_pal/screen/authenticaton/login_screen.dart';
import 'package:pet_pal/widgets/button.dart';

import '../../widgets/text_feild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _passwordContoler = TextEditingController();
  final TextEditingController _userNameContoler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                ),
                Image.asset(
                  'assets/paw1.png',
                  height: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: const NetworkImage(
                          'https://images.unsplash.com/photo-1557495235-340eb888a9fb?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8cGV0JTIwb3duZXJ8ZW58MHx8MHx8fDA%3D'),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: Colors.white70,
                            borderRadius: BorderRadius.circular(30)),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add_a_photo,
                            color: Colors.purple.shade600,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    //email
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputFeild(
                  controller: _emailControler,
                  hintText: "Enter Email",
                  isPassword: false,
                  inputKeybordType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputFeild(
                  controller: _passwordContoler,
                  hintText: "Enter a Password",
                  isPassword: true,
                  inputKeybordType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputFeild(
                  controller: _userNameContoler,
                  hintText: "Enter a Username",
                  isPassword: false,
                  inputKeybordType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 30,
                ),
                SubmitButton(
                  onPressed: () {
                    FirebaseAuth.instance
                        .createUserWithEmailAndPassword(
                            email: _emailControler.text,
                            password: _passwordContoler.text)
                        .then((value) {
                      print("Created new account");
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  },
                  text: "Register",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
                      style: TextStyle(color: Colors.purple),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                        child: const Text(
                          "Log in",
                          style: TextStyle(
                              color: Colors.purple,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
