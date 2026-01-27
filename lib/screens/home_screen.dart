import 'package:flutter/material.dart';
import '../widgets/profile_section.dart';
import '../widgets/skills_section.dart';  // Uncommented!
import '../utils/constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // App Bar
            AppBar(
              title: const Text('My Portfolio'),
              centerTitle: true,
              elevation: 0,
              backgroundColor: AppColors.background,
              foregroundColor: Colors.lightBlue,
            ),

            // Profile Section
            const ProfileSection(),

            const SizedBox(height: 20),

            // Skills Section
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: SkillsSection(),  // Using our new widget
            ),

            // More sections coming soon...
            _buildComingSoonSection('Projects', Icons.work),
            const SizedBox(height: 16),
            _buildComingSoonSection('Experience', Icons.history_edu),
            const SizedBox(height: 16),
            _buildComingSoonSection('Contact', Icons.contact_mail),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildComingSoonSection(String title, IconData icon) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),  // Fixed: using .shade200
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.grey,  // Fixed: using Colors.grey instead of Colors.grey[400]
            size: 24,
          ),
          const SizedBox(width: 16),
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,  // Fixed: constant color
            ),
          ),
          const Spacer(),
          const Text(
            'Coming Soon',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey,  // Fixed: constant color
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }
}