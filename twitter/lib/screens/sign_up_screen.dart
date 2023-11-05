import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/screens/verify_screen.dart';

class SignUpScreen extends StatelessWidget {
  final String name, info, birth;
  const SignUpScreen({
    super.key,
    required this.name,
    required this.info,
    required this.birth,
  });

  @override
  Widget build(BuildContext context) {
    void _TapSingUp() {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const VerifyScreen()));
    }

    return SafeArea(
      child: GestureDetector(
        child: Scaffold(
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
            child: SingleChildScrollView(
              child: Form(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Create your account",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Name",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                          initialValue: name,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              FontAwesomeIcons.solidCircleCheck,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Email",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                          initialValue: info,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              FontAwesomeIcons.solidCircleCheck,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Date of Birth",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        TextFormField(
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.start,
                          initialValue: birth,
                          decoration: const InputDecoration(
                            suffixIcon: Icon(
                              FontAwesomeIcons.solidCircleCheck,
                              color: Colors.green,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "By signing up, you agree to the Terms of Service and Privacy Policy, including Cookie Use. Twitter may use your contact information, including your email address and phone number for purposes outlined in our Privacy Policy, like keeping your account secure and personalizing our services, including ads. Learn more. Others wii be able to find you by email or phone number, when provided, unless you choose otherwies here.",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    SizedBox(
                      width: 350,
                      height: 55,
                      child: CupertinoButton(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color(0xff1DA1F2),
                        onPressed: _TapSingUp,
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
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
        ),
      ),
    );
  }
}
