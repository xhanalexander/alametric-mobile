import 'package:flutter/material.dart';
import 'package:trainingcenter/data/candidates_model.dart';

List<Candidate> candidatesDummy() {
  return [
    Candidate(
      name: 'Rahmat',
      points: 250,
      color: Colors.teal,
    ),
    Candidate(
      name: 'Siti Nur',
      points: 240,
      color: Colors.red,
    ),
    Candidate(
      name: 'Susi Similikti',
      points: 200,
      color: const Color(0xFFBF83FF),
    ),
    Candidate(
      name: 'Bagus',
      points: 235,
      color: Colors.blue,
    ),
    Candidate(
      name: 'Subagia',
      points: 205,
      color: Colors.purple,
    ),
    Candidate(
      name: 'Fitri',
      points: 205,
      color: Colors.purple,
    ),
  ];
}
