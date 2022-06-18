// ignore_for_file: file_names, avoid_print, use_build_context_synchronously, non_constant_identifier_names, must_be_immutable

import 'package:flutter/material.dart';
import 'package:muslumanproject/userpage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE6E6E6),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              const SizedBox(height: 30),
              Image.asset('assets/images/LOGIN.png'),
              const SizedBox(height: 30),
              Form(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            hintText: 'Username'),
                      ),
                      TextField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                            hintText: 'Password'),
                      ),
                    ],
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const UserPage()),
                  );
                },
                child: const Text('Login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
