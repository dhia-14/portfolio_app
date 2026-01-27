// This file defines what a "Skill" looks like
class Skill {
  final String name;
  final int level; // 0-100 percentage
  final String icon; // Optional: icon name

  Skill({
    required this.name,
    required this.level,
    this.icon = 'code',
  });
}

// Helper function to get sample skills
List<Skill> getSampleSkills() {
  return [
    Skill(name: 'Flutter', level: 90, icon: 'flutter'),
    Skill(name: 'Dart', level: 85, icon: 'dart'),
    Skill(name: 'Firebase', level: 80, icon: 'firebase'),
    Skill(name: 'Kotlin', level: 75, icon: 'kotlin'),
    Skill(name: 'Python', level: 90, icon: 'python'),
    Skill(name: 'Sql', level: 70, icon: 'database'),
  ];
}