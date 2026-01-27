import 'package:flutter/material.dart';
import '../models/skill_model.dart';

// Temporary simple SkillsSection
class SkillsSection extends StatelessWidget {
  final List<Skill> skills;
  const SkillsSection({
    super.key,
    required this.skills,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Skills & Expertise',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            'Flutter: 75%',
            style: TextStyle(fontSize: 16),
          ),
          LinearProgressIndicator(
            value: 0.75,
            backgroundColor: Colors.grey.shade200,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
          ),
          const SizedBox(height: 12),
          const Text(
            'Python: 80%',
            style: TextStyle(fontSize: 16),
          ),
          LinearProgressIndicator(
            value: 0.8,
            backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(height: 12),
          const Text(
            'SQL: 90%',
            style: TextStyle(fontSize: 16),
          ),
          LinearProgressIndicator(
            value: 0.9 ,
            backgroundColor: Colors.grey.shade200,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.green),
          ),
        ],
      ),
    );
  }
}