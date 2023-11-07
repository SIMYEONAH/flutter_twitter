import 'package:flutter/material.dart';

class EndScreen extends StatelessWidget {
  const EndScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "DONE!!!",
              style: TextStyle(
                color: Theme.of(context).primaryColor,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "CONGGRATURATION!!!",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
