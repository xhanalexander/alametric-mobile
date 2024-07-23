import 'package:flutter/material.dart';

class Reminders extends StatelessWidget {
  final String levels;
  final String time;

  const Reminders({
    super.key,
    required this.levels,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 204, 213),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              levels,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(
                  Icons.access_time_outlined,
                  color: Color.fromARGB(255, 139, 0, 0),
                ),
                const SizedBox(width: 10),
                Text(
                  'Berakhir dalam $time',
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color:  Color.fromARGB(255, 139, 0, 0),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
  }
}