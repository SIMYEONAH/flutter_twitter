import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VerifyTextField extends StatefulWidget {
  const VerifyTextField({super.key});

  @override
  State<VerifyTextField> createState() => _VerifyTextFieldState();
}

class _VerifyTextFieldState extends State<VerifyTextField> {
  final TextEditingController _VerifyController = TextEditingController();

  String code = "";

  @override
  void initState() {
    super.initState();
    _VerifyController.addListener(() {
      code = _VerifyController.text;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.shortestSide * 0.13,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(5),
        color: Colors.white,
        shape: BoxShape.rectangle,
      ),
      child: AspectRatio(
        aspectRatio: 1,
        child: TextField(
          controller: _VerifyController,
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
              FocusScope.of(context).nextFocus();
            }
          },
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly
          ],
        ),
      ),
    );
  }
}
