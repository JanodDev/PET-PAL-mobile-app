import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pet_pal/screen/authenticaton/register_screen.dart';

import '../../widgets/button.dart';
import '../../widgets/text_feild.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _passwordControler = TextEditingController();
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                Image.asset(
                  'assets/paw1.png',
                  height: 100,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputFeild(
                  controller: _emailControler,
                  hintText: "Enter email",
                  inputKeybordType: TextInputType.emailAddress,
                  isPassword: false,
                ),
                const SizedBox(
                  height: 30,
                ),
                TextInputFeild(
                  controller: _passwordControler,
                  hintText: "Enter Password",
                  inputKeybordType: TextInputType.emailAddress,
                  isPassword: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                SubmitButton(
                  onPressed: () {
                    FirebaseAuth.instance
                        .signInWithEmailAndPassword(
                            email: _emailControler.text,
                            password: _passwordControler.text)
                        .then((value) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }).onError((error, stackTrace) {
                      print("Error ${error.toString()}");
                    });
                  },
                  text: "Log in",
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account?",
                      style: TextStyle(color: Colors.purple),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (conext) => const RegisterScreen(),
                          ),
                        );
                      },
                      child: const Text("Register",
                          style: TextStyle(
                              color: Color.fromARGB(255, 202, 89, 255),
                              fontWeight: FontWeight.bold)),
                    ),
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
