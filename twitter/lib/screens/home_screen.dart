import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Icon(
                  FontAwesomeIcons.twitter,
                  color: Color(0xff1DA1F2),
                  size: 40,
                ),
                const SizedBox(
                  height: 170,
                ),
                const Text(
                  "See what's happening in the world right now.",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(
                  height: 170,
                ),
                CupertinoButton(
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
                const SizedBox(
                  height: 15,
                ),
                CupertinoButton(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
