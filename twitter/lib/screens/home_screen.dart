import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/screens/create_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Theme.of(context).primaryColor,
                  size: 40,
                ),
                const SizedBox(
                  height: 160,
                ),
                const Text(
                  "See what's happening in the world right now.",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 160,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black38),
                      borderRadius: BorderRadius.circular(30)),
                  child: CupertinoButton(
                    color: const Color(0xFFF5F8FA),
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {},
                    child: const Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            FontAwesomeIcons.google,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Continue with Google",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black38),
                      borderRadius: BorderRadius.circular(30)),
                  child: CupertinoButton(
                    color: const Color(0xFFF5F8FA),
                    borderRadius: BorderRadius.circular(30),
                    onPressed: () {},
                    child: const Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(
                            FontAwesomeIcons.apple,
                            size: 28,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "Continue with Apple",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 1.0,
                      width: 150.0,
                      color: Colors.grey[350],
                    ),
                    const Text("    or    "),
                    Container(
                      height: 1.0,
                      width: 150.0,
                      color: Colors.grey[350],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CupertinoButton(
                  color: const Color(0xFF14171A),
                  borderRadius: BorderRadius.circular(30),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CreateScreen(),
                      ),
                    );
                  },
                  child: const Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Color(0xFFF5F8FA),
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "By signing up, you agree to our Terms, Privacy Policy, and Cookie Use.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Have an account already?",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                "Log in",
                style: TextStyle(fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
