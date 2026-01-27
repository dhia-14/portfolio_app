import 'package:flutter/material.dart';
import '../models/project_model.dart';
import '../utils/constants.dart';

class ProjectsSection extends StatelessWidget {
  final List<Project> projects;

  const ProjectsSection({
    super.key,
    required this.projects,
  });

  @override
  Widget build(BuildContext context) {
    // Sort projects by priority
    final sortedProjects = List<Project>.from(projects)
      ..sort((a, b) => a.priority.compareTo(b.priority));

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 32,
        horizontal: AppSettings.defaultPadding,
      ),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Section Header
          Row(
            children: [
              Container(
                width: 4,
                height: 24,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Featured Projects',
                style: AppTextStyles.heading2,
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            'Some of my recent work',
            style: AppTextStyles.caption,
          ),
          const SizedBox(height: 32),

          // Projects Grid
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20,
              childAspectRatio: 0.8,
            ),
            itemCount: sortedProjects.length,
            itemBuilder: (context, index) {
              return _buildProjectCard(sortedProjects[index]);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProjectCard(Project project) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
        border: Border.all(
          color: Colors.grey.shade100,
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Project Image/Header
          Container(
            height: 140,
            decoration: BoxDecoration(
              color: _getProjectColor(project.priority),
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
            child: Center(
              child: Icon(
                _getProjectIcon(project.title),
                size: 48,
                color: Colors.white.withOpacity(0.9),
              ),
            ),
          ),

          // Content
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    project.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      height: 1.3,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 8),

                  // Description
                  Expanded(
                    child: Text(
                      project.description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                        height: 1.5,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  const SizedBox(height: 12),

                  // Technologies
                  Wrap(
                    spacing: 6,
                    runSpacing: 6,
                    children: project.technologies
                        .take(3) // Show only first 3
                        .map((tech) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: _getProjectColor(project.priority)
                            .withOpacity(0.1),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        tech,
                        style: TextStyle(
                          fontSize: 11,
                          color: _getProjectColor(project.priority),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ))
                        .toList(),
                  ),
                  const SizedBox(height: 16),

                  // Buttons
                  Row(
                    children: [
                      if (project.githubUrl != null)
                        Expanded(
                          child: OutlinedButton.icon(
                            onPressed: () {
                              print('GitHub: ${project.githubUrl}');
                            },
                            icon: const Icon(Icons.code, size: 16),
                            label: const Text('Code'),
                            style: OutlinedButton.styleFrom(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ),
                      if (project.githubUrl != null && project.demoUrl != null)
                        const SizedBox(width: 8),
                      if (project.demoUrl != null)
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              print('Demo: ${project.demoUrl}');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: _getProjectColor(project.priority),
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                            child: const Text('Live Demo'),
                          ),
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Color _getProjectColor(int priority) {
    switch (priority) {
      case 1:
        return const Color(0xFF4361EE); // Blue
      case 2:
        return const Color(0xFF4CC9F0); // Light Blue
      case 3:
        return const Color(0xFF7209B7); // Purple
      default:
        return AppColors.primary;
    }
  }

  IconData _getProjectIcon(String title) {
    if (title.toLowerCase().contains('e-commerce')) {
      return Icons.shopping_cart;
    } else if (title.toLowerCase().contains('weather')) {
      return Icons.cloud;
    } else if (title.toLowerCase().contains('task')) {
      return Icons.check_circle;
    } else if (title.toLowerCase().contains('fitness')) {
      return Icons.fitness_center;
    }
    return Icons.code;
  }
}