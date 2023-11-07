import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'interest_screen.dart';

class PasswordScreen extends StatefulWidget {
  const PasswordScreen({super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final TextEditingController _passwordController = TextEditingController();
  bool _obscureText = true;
  String _password = "";

  @override
  void initState() {
    super.initState();
    _passwordController.addListener(() {
      setState(() {
        _password = _passwordController.text;
      });
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  void _onObscure() {
    _obscureText = !_obscureText;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0.0,
            title: Icon(
              FontAwesomeIcons.twitter,
              color: Theme.of(context).primaryColor,
              size: 40,
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "You'll need your password.",
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 32,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Make sure it's 8 characters or more.",
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  TextField(
                    obscureText: _obscureText,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Password",
                      suffixIcon: GestureDetector(
                        onTap: _onObscure,
                        child: _obscureText == true
                            ? const Icon(
                                FontAwesomeIcons.eyeSlash,
                                color: Colors.grey,
                              )
                            : const Icon(
                                FontAwesomeIcons.eye,
                                color: Colors.grey,
                              ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 300,
                        height: 55,
                        child: CupertinoButton(
                          onPressed: () {
                            if (_password.length >= 8) {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => InterestScreen()));
                            } else {
                              return;
                            }
                          },
                          borderRadius: BorderRadius.circular(20),
                          color: _password.length >= 8
                              ? Colors.black
                              : Colors.grey,
                          child: const Text(
                            "Next",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
