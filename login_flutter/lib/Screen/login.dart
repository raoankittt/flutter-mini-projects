import 'package:flutter/material.dart';
import "package:firebase_auth/firebase_auth.dart";
import 'package:login_flutter/Screen/register.dart';

import 'profile.dart';

void main() {
  runApp(const Login());
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginPage();
}

class _LoginPage extends State<Login> {
  // login function
  static Future<User?> loginUsingEmailPassword(
      {required String email,
      required String password,
      required BuildContext context}) async {
    FirebaseAuth auth = FirebaseAuth.instance;
    User? user;
    try {
      UserCredential userCredential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = userCredential.user;
    } on FirebaseAuthException catch (error) {
      if (error.code == "user-not-found") {
        print("No user fount for that email and password");
      }
    }
    return user;
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              "Flutter Dev",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Welcome Dev Login To Your App",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 44.0,
          ),
          TextField(
            controller: emailController,
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              hintText: "Enter Your Email",
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 26.0,
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              hintText: "Enter Your Password",
              prefixIcon: Icon(
                Icons.lock_outlined,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              "Don't Remember your Password",
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          ),
          const SizedBox(
            height: 50.0,
          ),
          SizedBox(
            width: double.infinity,
            child: RawMaterialButton(
              onPressed: () async {
                // login
                User? user = await loginUsingEmailPassword(
                    email: emailController.text,
                    password: passwordController.text,
                    context: context);
                print(user);
                if (user != null) {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (context) => Profile(
                            user: user,
                          )));
                }
              },
              fillColor: Colors.blueAccent,
              elevation: 0,
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("If You Don't Have a Account "),
                RawMaterialButton(
                  padding: const EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Register()),
                    );
                  },
                  child: const Text(
                    "Create an Account",
                    style: TextStyle(color: Colors.blue),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
