import 'package:flutter/material.dart';

class RoundedGreenButton extends StatelessWidget {
  final double size;
  final VoidCallback onPressed;
  final String buttonText;

  const RoundedGreenButton({super.key, required this.size, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: 40,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(size/2),
        border: Border.all(
          color: Colors.green,
          width: 2,
        ),
      ),
      child: Stack(
        children: [
          Center(
            child: Text(
              buttonText,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: IconButton(
              onPressed: onPressed,
              icon: const Icon(Icons.add, color: Colors.green),
            ),
          ),
        ],
      ),
    );
  }
}
