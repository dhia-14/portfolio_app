import 'package:flutter/material.dart';
import '../widgets/profile_section.dart';
import '../widgets/skills_section.dart';
import '../widgets/projects_section.dart';  // Add this import
import '../models/skill_model.dart';
import '../models/project_model.dart';      // Add this import

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Get sample data
    final skills = getSampleSkills();
    final projects = getSampleProjects();  // Add this line

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // App Bar
            AppBar(
              title: const Text('My Portfolio'),
              centerTitle: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black87,
            ),

            // Profile Section
            const ProfileSection(),

            const SizedBox(height: 20),

            // Skills Section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SkillsSection(skills: skills),
            ),

            const SizedBox(height: 40),

            // Projects Section - ADD THIS
            ProjectsSection(projects: projects),

            const SizedBox(height: 40),

            // Experience Section (Coming Soon)
            _buildComingSoonSection('Experience', Icons.work_history),
            const SizedBox(height: 16),

            // Contact Section (Coming Soon)
            _buildComingSoonSection('Contact', Icons.email),

            const SizedBox(height: 40),

            // Footer
            _buildFooter(),
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
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.grey.shade400, size: 24),
          const SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey.shade600,
            ),
          ),
          const Spacer(),
          Text(
            'Coming Soon',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade400,
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooter() {
    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.blue.shade900,
      child: Column(
        children: [
          const Text(
            '© 2024 My Portfolio',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Built with Flutter 💙',
            style: TextStyle(
              color: Colors.white70,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () => print('Email'),
                icon: const Icon(Icons.email, color: Colors.white),
              ),
              IconButton(
                onPressed: () => print('GitHub'),
                icon: const Icon(Icons.code, color: Colors.white),
              ),
              IconButton(
                onPressed: () => print('LinkedIn'),
                icon: const Icon(Icons.work, color: Colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}