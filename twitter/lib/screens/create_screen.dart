import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter/screens/info_screen.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  DateTime initialDate = DateTime.now();
  final TextEditingController _NameController = TextEditingController();
  final TextEditingController _InfoController = TextEditingController();
  final TextEditingController _BirthController = TextEditingController();

  String name = "";
  String info = "";
  String birth = "";

  @override
  void initState() {
    super.initState();
    _NameController.addListener(() {
      name = _NameController.text;
      setState(() {});
    });
    _InfoController.addListener(() {
      info = _InfoController.text;
      setState(() {});
    });
    _BirthController.addListener(() {
      birth = _BirthController.text;
      setState(() {});
    });
  }

  bool isNameValid() {
    return name.isNotEmpty;
  }

  bool isInfoValid() {
    return info.isNotEmpty;
  }

  bool isBirthValid() {
    return birth.isNotEmpty;
  }

  void _setTextFieldDate(DateTime date) {
    final textDate = date.toString().split(" ").first;
    _BirthController.value = TextEditingValue(text: textDate);
  }

  @override
  void dispose() {
    super.dispose();
    _NameController.dispose();
    _InfoController.dispose();
    _BirthController.dispose();
  }

  Map<String, String> data = {};

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
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
                key: _formkey,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Text(
                      "Create Your Account",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      controller: _NameController,
                      onSaved: (newValue) {
                        data['Name'] = newValue!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please write your name!!";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Name",
                        suffixIcon: isNameValid()
                            ? const Icon(
                                FontAwesomeIcons.circleCheck,
                                color: Colors.green,
                              )
                            : const Icon(
                                FontAwesomeIcons.circleMinus,
                                color: Colors.red,
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: _InfoController,
                      onSaved: (newValue) {
                        data['Info'] = newValue!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please write your Phone number or Email address!!";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Phone number or Email address",
                        suffixIcon: isInfoValid()
                            ? const Icon(
                                FontAwesomeIcons.circleCheck,
                                color: Colors.green,
                              )
                            : const Icon(
                                FontAwesomeIcons.circleMinus,
                                color: Colors.red,
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      enabled: false,
                      controller: _BirthController,
                      onSaved: (newValue) {
                        data['BirthDay'] = newValue!;
                      },
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        labelText: "Date of Birth",
                        suffixIcon: isBirthValid()
                            ? const Icon(
                                FontAwesomeIcons.circleCheck,
                                color: Colors.green,
                              )
                            : const Icon(
                                FontAwesomeIcons.circleMinus,
                                color: Colors.red,
                              ),
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    CupertinoButton(
                      onPressed: () {
                        if (_formkey.currentState != null) {
                          if (_formkey.currentState!.validate()) {
                            _formkey.currentState!.save();
                            if (data["Name"]!.isNotEmpty &&
                                data["Info"]!.isNotEmpty &&
                                data["BirthDay"]!.isNotEmpty) {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => InfoScreen(
                                    name: _NameController.text,
                                    info: data["Info"]!,
                                    birth: data["BirthDay"]!,
                                  ),
                                ),
                              );
                            } else {
                              return;
                            }
                          }
                          return;
                        }
                      },
                      color:
                          name.isNotEmpty && info.isNotEmpty && birth.isNotEmpty
                              ? const Color(0xff1DA1F2)
                              : Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                      child: const Text("Next"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: _setTextFieldDate,
                mode: CupertinoDatePickerMode.date,
                maximumDate: initialDate,
                initialDateTime: initialDate,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
