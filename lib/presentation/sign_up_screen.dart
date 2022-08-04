import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../design_values.dart';
import '../widgets/button_widget.dart';
import '../widgets/field_widget.dart';

class SignUpScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: DesignValues.regularPadding,
            child: Wrap(
              children: [
                Column(
                  children: [
                    FieldWidget(
                      hint: 'e-mail',
                      controller: _emailController,
                    ),
                    const SizedBox(
                      height: DesignValues.paddingSmall,
                    ),
                    FieldWidget(
                      hint: 'create password',
                      controller: _passwordController,
                    ),
                    const SizedBox(
                      height: DesignValues.paddingSmall,
                    ),
                    FieldWidget(
                      hint: 'confirm password',
                      controller: _confirmPasswordController,
                    ),
                    ButtonWidget(
                      backgroundColor: Colors.white,
                      text: "Sign up",
                      onPressed: () => signUpWithFirebase(context),
                    ),
                    /*Text(
                      "We will send your just one e-mail to confirm creation of your account.",
                      style: DesignValues.bodyPlayfair16(),
                      textAlign: TextAlign.center,
                    )*/
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signUpWithFirebase(BuildContext context) async {
    if (_passwordController.text == _confirmPasswordController.text) {
      try {
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
            email: _emailController.text.trim(),
            password: _passwordController.text);
        Navigator.pop(context);
      } on FirebaseAuthException catch (e) {
        print(e); // TODO handle Exceptions
      } catch (e) {
        print(e);
      }
    }
    //TODO handle what if not
  }
}
