import 'package:cropvana/components/TextFormField.dart';
import 'package:cropvana/components/loginPageText.dart';
import 'package:cropvana/pages/bottomnav.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green.shade400, Colors.green.shade700],
          ),
        ),
        child: SingleChildScrollView(
          child: Container(
            //color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 60),
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                  height: 200,
                ),
                const LoginPageText(text: "Sign in"),
                const SizedBox(height: 30),
                const LogintextField(LabelText: 'Email'),
                const SizedBox(height: 20),
                const LogintextField(LabelText: 'Password'),
                const SizedBox(height: 8),
                TextButton(
                  onPressed: () {},
                  child: const Text("Reset Password"),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainNavigation()),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                const Center(
                    child: Text(
                  "Not Registered Yet?",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                )),
                const SizedBox(height: 10),
                SizedBox(
                  height: 50,
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.transparent,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.zero),
                      ),
                    ),
                    child: const Text(
                      'Create an Account',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
