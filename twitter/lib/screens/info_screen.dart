import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InfoScreen extends StatelessWidget {
  final String name, info, birth;
  final bool _isChecked = false;
  const InfoScreen({
    super.key,
    required this.name,
    required this.info,
    required this.birth,
  });

  @override
  Widget build(BuildContext context) {
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
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Customize your experience",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Track where you see Twittter content across the web",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
