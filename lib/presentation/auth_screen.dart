import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatelessWidget {

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(hintText: 'email'),
                autofocus: true,
                controller: _emailController,
              ),
              TextField(
                decoration: const InputDecoration(hintText: 'password'),
                autofocus: true,
                controller: _passwordController,
              ),
              ElevatedButton.icon(
                onPressed: signIn,
                label: const Text("Sign In"),
                icon: const Icon(Icons.lock_open),
              )
            ],
          )),
        ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text.trim(), password: _passwordController.text,);
  }
}
