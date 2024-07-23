import 'package:flutter/material.dart';
import 'package:trainingcenter/utils/constant.dart';

class LevelIconsUnlock extends StatelessWidget {
  final String level;
  final VoidCallback onPressed;

  const LevelIconsUnlock({
    super.key,
    required this.level,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(0),
      ),
      onPressed: () => onPressed(),
      child: Column(
        children: [
          Image.asset(
            AssetsImages.unlock,
            width: 100,
          ),
          const SizedBox(height: 10),
          Text(
            "Level $level",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.purple,
            ),
          )
        ],
      ),
    );
  }
}

class LevelIconsLock extends StatelessWidget {
  final String level;
  final VoidCallback onPressed;

  const LevelIconsLock({
    super.key,
    required this.level,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        padding: const EdgeInsets.all(0),
      ),
      onPressed: () => onPressed(),
      child: Column(
        children: [
          Image.asset(
            AssetsImages.lock,
            width: 100,
          ),
          const SizedBox(height: 10),
          Text(
            "Level $level",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}