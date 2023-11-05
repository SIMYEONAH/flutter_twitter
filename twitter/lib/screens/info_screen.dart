import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/screens/sign_up_screen.dart';

class InfoScreen extends StatelessWidget {
  final String name, info, birth;

  const InfoScreen({
    super.key,
    required this.name,
    required this.info,
    required this.birth,
  });

  @override
  Widget build(BuildContext context) {
    bool switchValue = true;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Icon(
          FontAwesomeIcons.twitter,
          color: Color(0xff1DA1F2),
          size: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Customize your experience",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Track where you see Twittter content across the web",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Wrap(
              children: [
                const Text(
                  "Twitter uses this data to personalize your experience. This web browsing history will never be stored with your name, email, or phone number.",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                CupertinoSwitch(value: switchValue, onChanged: (bool? value) {})
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "By signing up, you agree to our Terms, Privacy Policy, and Cookie Use, Twitter may use your contact information, including your email address and phone number for purposes outlined in our Privacy Policy. Learn more",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xff657786),
              ),
            ),
            const SizedBox(
              height: 220,
            ),
            SizedBox(
              width: 350,
              height: 55,
              child: CupertinoButton(
                borderRadius: BorderRadius.circular(30),
                color: const Color(0xff14171A),
                child: const Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          SignUpScreen(name: name, info: info, birth: birth),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
