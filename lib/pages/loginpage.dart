import 'package:cropvana/pages/signinpage.dart';
import 'package:cropvana/pages/signuppage.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.green.shade400, Colors.green.shade700],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 60),
            Image.asset(
              'assets/images/logo.png',
              width: 200,
              height: 200,
            ),
            const SizedBox(height: 16),
            const Text(
              'Welcome\nto CropVana',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Sign In to continue',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SigninPage()),
                  );
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                child: const Text(
                  'Login with email',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'or',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                child: const Text(
                  'Login with Google',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Center(child: Text("Not Registered Yet?", style: TextStyle(color: Colors.white,),)),
            const SizedBox(height: 10),
            SizedBox(
              height: 50,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SignUpPage()),
                  );
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, backgroundColor: Colors.transparent,
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
    );
  }
}
