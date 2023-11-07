import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/screens/password_screen.dart';

class VerifyScreen extends StatefulWidget {
  const VerifyScreen({
    super.key,
  });

  @override
  State<VerifyScreen> createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final TextEditingController _VerifyController1 = TextEditingController();
  final TextEditingController _VerifyController2 = TextEditingController();
  final TextEditingController _VerifyController3 = TextEditingController();
  final TextEditingController _VerifyController4 = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  List codeList = [];

  @override
  initState() {
    super.initState();
    _VerifyController1.addListener(() {});
    _VerifyController2.addListener(() {});
    _VerifyController3.addListener(() {});
    _VerifyController4.addListener(() {});
    setState(() {});
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _VerifyController1.dispose();
    _VerifyController2.dispose();
    _VerifyController3.dispose();
    _VerifyController4.dispose();
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
                    "We sent you a code",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.w900),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Enter it below to verify",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const Text(
                    "jhon.mobbin@gmail.com.",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.shortestSide * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Form(
                            child: TextFormField(
                              controller: _VerifyController1,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(),
                              obscureText: true,
                              maxLines: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty && value.length == 1) {
                                  codeList.add(value);

                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.shortestSide * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Form(
                            child: TextFormField(
                              controller: _VerifyController2,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(),
                              obscureText: true,
                              maxLines: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty && value.length == 1) {
                                  codeList.add(value);

                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.shortestSide * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Form(
                            child: TextFormField(
                              controller: _VerifyController3,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(),
                              obscureText: true,
                              maxLines: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty && value.length == 1) {
                                  codeList.add(value);

                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.shortestSide * 0.13,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                        ),
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Form(
                            child: TextFormField(
                              controller: _VerifyController4,
                              onSaved: (newValue) {},
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                              ),
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              style: const TextStyle(),
                              obscureText: true,
                              maxLines: 1,
                              onChanged: (value) {
                                if (value.isNotEmpty && value.length == 1) {
                                  codeList.add(value);
                                  FocusScope.of(context).nextFocus();
                                }
                              },
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.digitsOnly
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Didn't receive email?",
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 350,
                        height: 55,
                        child: CupertinoButton(
                          onPressed: () {
                            if (codeList.length == 4) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: ((context) =>
                                      const PasswordScreen()),
                                ),
                              );
                            } else {
                              return;
                            }
                          },
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
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
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      codeList.length == 4
                          ? const Icon(
                              FontAwesomeIcons.circleCheck,
                              color: Colors.green,
                            )
                          : const Icon(
                              FontAwesomeIcons.circleCheck,
                              color: Colors.red,
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
