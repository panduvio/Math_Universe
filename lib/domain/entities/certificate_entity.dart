import 'package:flutter/material.dart';

class CertificateEntity {
  final int id;
  final String category;
  final Text achievement;
  final bool isAchieved;

  CertificateEntity({
    required this.id,
    required this.category,
    required this.achievement,
    this.isAchieved = false,
  });
}

List<CertificateEntity> certificateList = [
  CertificateEntity(
    id: 0,
    category: 'Video',
    achievement: const Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'You have achieved '),
          TextSpan(text: '150', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' Learning Video'),
        ],
      ),
    ),
    isAchieved: true,
  ),
  CertificateEntity(
    id: 1,
    category: 'Question Bank',
    achievement: const Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'You have done '),
          TextSpan(text: '500', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' Question on Question Bank'),
        ],
      ),
    ),
    isAchieved: true,
  ),
  CertificateEntity(
    id: 2,
    category: 'Try Out',
    achievement: const Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'You have achieved '),
          TextSpan(
              text: 'Perfect', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' Score on Weekly OSK Try Out'),
        ],
      ),
    ),
    isAchieved: true,
  ),
  CertificateEntity(
    id: 3,
    category: 'Ranking',
    achievement: const Text.rich(
      TextSpan(
        children: [
          TextSpan(text: 'You have achieved '),
          TextSpan(
              text: '1st Rank', style: TextStyle(fontWeight: FontWeight.bold)),
          TextSpan(text: ' on Weekly OSK Try Out Preparation'),
        ],
      ),
    ),
    isAchieved: true,
  ),
];
