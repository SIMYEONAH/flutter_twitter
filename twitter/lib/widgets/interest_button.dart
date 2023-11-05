import 'package:flutter/material.dart';

class InterestButton extends StatefulWidget {
  final String interest;
  final List interestList;

  const InterestButton({
    super.key,
    required this.interest,
    required this.interestList,
  });

  @override
  State<InterestButton> createState() => _InterestButtonState();
}

class _InterestButtonState extends State<InterestButton> {
  bool _isSelected = false;

  void _onTap() {
    _isSelected = !_isSelected;
    if (_isSelected == true) {
      widget.interestList.add(widget.interestList);
    } else {
      widget.interestList.remove(widget.interest);
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 200,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 12,
        ),
        decoration: BoxDecoration(
          color: _isSelected ? const Color(0xff657786) : Colors.white,
          borderRadius: BorderRadius.circular(
            10,
          ),
          border: Border.all(
            color: Colors.black.withOpacity(0.1),
          ),
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.black.withOpacity(0.05),
          //     blurRadius: 1,
          //     spreadRadius: 1,
          //   ),
          // ],
        ),
        child: Text(
          widget.interest,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: _isSelected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
