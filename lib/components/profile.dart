import 'package:flutter/material.dart';

class UserPoints extends StatelessWidget {
  final String userNames;
  final int userPoints;

  const UserPoints({
    super.key,
    required this.userNames,
    required this.userPoints,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '$userNames ',
        style: const TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        children: [
          TextSpan(
            text: '($userPoints points)',
            style: const TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          ),
        ],
      ),
    );
  }
}