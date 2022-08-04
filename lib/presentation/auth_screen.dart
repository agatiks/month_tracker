import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:month_tracker/design_values.dart';
import 'package:month_tracker/presentation/sign_up_screen.dart';
import 'package:month_tracker/widgets/button_widget.dart';
import 'package:month_tracker/widgets/field_widget.dart';

class AuthScreen extends StatelessWidget {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  AuthScreen({Key? key}) : super(key: key);

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
                      hint: 'password',
                      controller: _passwordController,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ButtonWidget(
                          backgroundColor: Colors.white,
                          text: "Sign up",
                          onPressed: () => signUp(context),
                        ),
                        ButtonWidget(
                          backgroundColor: DesignValues.mainColor,
                          text: "Sign in",
                          onPressed: signIn,
                        ),
                      ],
                    ),
                    ButtonWidget(
                      backgroundColor: Colors.white,
                      text: "Sign in with Google",
                      onPressed: signInGoogle,
                      icon: "assets/images/google.png",
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future signIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: _emailController.text.trim(),
      password: _passwordController.text,
    );
  }

  void signUp(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(
      builder: (_) => SignUpScreen(),
    ));
  }

  signInGoogle() {
    print("1");
  }
}
